library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CU is 
	port 
	(
	teste2 : out std_LOGIC_VECTOR(15 downto 0);
	clk : in std_logic;
	rst :in std_logic;
	alu_sel: out std_logic_vector(3 downto 0);
	sel_mux5 : out	std_LOGIC_VECTOR(2 downto 0);
	pc_ld : out std_LOGIC;
	R1_ld :out std_LOGIC ;
	R2_ld :out std_LOGIC ;
	R3_ld :out std_LOGIC ;
	Rin_ld :out std_LOGIC;
	Rout_ld :out std_LOGIC;
	IR_out:in std_LOGIC_VECTOR(15 downto 0);
	sel_5e1 : out std_LOGIC_VECTOR(2 downto 0);
	sel_5e2 : out std_LOGIC_VECTOR(2 downto 0);
	mux2_in1 : out std_LOGIC_VECTOR(9 downto 0);
	mem_adr : out std_LOGIC_VECTOR(7 downto 0);
	sel_mux_pc : out std_LOGIC;
	IR_ld : out std_LOGIC;
	wren : out std_LOGIC;
	comp_out : in std_logic_vector(2 downto 0)

	);
end CU;
architecture behavioral of CU is 
type state_type is(
reset, fetch, decode, exe_ld, exe_st, exe_mov, exe_pinin, exe_pinout,
exe_addi, exe_subi, exe_iand, exe_ior, exe_inot, exe_ixor,
exe_movi, exe_goto, exe_cjmp, exe_cmp, exe_jmpl, exe_jmph
);
SIGNAL pstate: STATE_TYPE;
SIGNAL state: STATE_TYPE := fetch;
begin

	teste2(15 downto 0) <=ir_out(15 downto 0);
	process (clk, rst)
	begin
		if rst = '1' then
			pstate <= reset;
		elsif (rising_edge(clk)) then
			pstate <= state;
		end if;
	end process;

	-- Output depends solely on the current state
	process (pstate)
	begin
		case pstate is
			when reset =>
				state <= fetch;
				r1_ld<='0';
				r2_ld<='0';
				r3_ld<='0';
				ir_ld<='0';
				pc_ld<='0';
			when fetch =>
				state<=decode;
				R1_ld<='0';
				R2_ld<='0';
				R3_ld<='0';
				sel_mux_pc <= '1';
			when decode =>
				if ir_out(15 downto 11) = "00000" then
						state <= exe_ld;
					elsif ir_out(15 downto 11) = "00001" then
						state <= exe_st;
					elsif ir_out(15 downto 11) = "00010" then
						state <= exe_mov;
					elsif ir_out(15 downto 11) = "00011" then
						state <= exe_pinin;
					elsif ir_out(15 downto 11) = "00100" then
						state <= exe_pinout;
					elsif ir_out(15 downto 11) = "01000" then
						state <= exe_addi;
					elsif ir_out(15 downto 11) = "01001" then
						state <= exe_subi;
					elsif ir_out(15 downto 11) = "01010" then
						state <= exe_iand;
					elsif ir_out(15 downto 11) = "01011" then
						state <= exe_ior;
					elsif ir_out(15 downto 11) = "01100" then
						state <= exe_inot;
					elsif ir_out(15 downto 11) = "01101" then
						state <= exe_ixor;
					elsif ir_out(15 downto 11) = "01110" then
						state <= exe_movi;
					elsif ir_out(15 downto 11) = "10000" then
						state <= exe_goto;
					elsif ir_out(15 downto 11) = "10001" then
						state <= exe_cjmp;
					elsif ir_out(15 downto 11) = "10010" then 
						state <= exe_jmph;
					elsif ir_out(15 downto 11) = "10011" then 
						state <= exe_jmpl;
					elsif ir_out(15 downto 11) = "01111" then 
						state <= exe_cmp;
					else
						state <= fetch;
					end if;
				ir_ld <= '0';
				pc_ld <= '0';
			when exe_ld =>
				state <= fetch;
				mem_adr <= ir_out(8 downto 1 );
				wren<='0';
				sel_mux5 <= "001";
				if ir_out(10 downto 9) = "00" then 
				elsif ir_out(10 downto 9) = "01" then
					R1_ld<='1';
				elsif ir_out(10 downto 9) = "10" then
					R2_ld<='1';
				elsif ir_out(10 downto 9) = "11" then
					R3_ld<='1';
				end if;
			when exe_st =>
				state <= fetch;
				if ir_out(10 downto 9) = "00" then 
				elsif ir_out(10 downto 9) = "01" then
					sel_5e2 <= "001";
				elsif ir_out(10 downto 9) = "10" then
					sel_5e2 <= "010";
				elsif ir_out(10 downto 9) = "11" then
					sel_5e2 <= "011";
				end if;
				mem_adr <= ir_out(8 downto 1 );
				wren <= '1';
			when exe_mov =>
				state <= fetch;
				if ir_out(10 downto 9) = "00" then 
				elsif ir_out(10 downto 9) = "01" then
					sel_5e2 <= "001";
					sel_mux5 <="010";
					if ir_out(8 downto 7) = "00" then
					elsif ir_out(8 downto 7) = "01" then
						R1_ld <= '1';
					elsif ir_out(8 downto 7) = "10" then
						R2_ld <= '1';
					elsif ir_out(8 downto 7) = "11" then
						R3_ld <= '1';
					end if;
				end if;
			when exe_addi =>
				state <= fetch;
				if ir_out(10 downto 9) = "00" then 
				elsif ir_out(10 downto 9) = "01" then
					sel_mux5 <= "000";
					sel_5e1<="001";
					sel_5e2 <="111";
					alu_sel <="0000";
					sel_mux5 <= "011";
					r1_ld <= '1';
				elsif ir_out(10 downto 9) = "10" then
					sel_mux5 <= "000";
					sel_5e1<="010";
					sel_5e2 <="111";
					alu_sel <="0000";
					sel_mux5 <= "011";
					R2_ld<='1';
				elsif ir_out(10 downto 9) = "11" then
					sel_mux5 <= "000";
					sel_5e1<="011";
					sel_5e2 <="111";
					alu_sel <="0000";
					sel_mux5 <= "011";
					R3_ld<='1';
				end if;
			when exe_subi =>
				state <= fetch;
				if ir_out(10 downto 9) = "00" then 
				elsif ir_out(10 downto 9) = "01" then
					sel_mux5 <= "000";
					sel_5e1<="001";
					sel_5e2 <="111";
					alu_sel <="0001";
					sel_mux5 <= "011";
					r1_ld <= '1';
				elsif ir_out(10 downto 9) = "10" then
					sel_mux5 <= "000";
					sel_5e1<="010";
					sel_5e2 <="111";
					alu_sel <="0001";
					sel_mux5 <= "011";
					R2_ld<='1';
				elsif ir_out(10 downto 9) = "11" then
					sel_mux5 <= "000";
					sel_5e1<="011";
					sel_5e2 <="111";
					alu_sel <="0001";
					sel_mux5 <= "011";
					R3_ld<='1';
				end if;
			when exe_iand =>
				state <= fetch;
				if ir_out(10 downto 9) = "00" then 
				elsif ir_out(10 downto 9) = "01" then
					sel_mux5 <= "000";
					sel_5e1<="001";
					sel_5e2 <="111";
					alu_sel <="0011";
					sel_mux5 <= "011";
					r1_ld <= '1';
				elsif ir_out(10 downto 9) = "10" then
					sel_mux5 <= "000";
					sel_5e1<="010";
					sel_5e2 <="111";
					alu_sel <="0011";
					sel_mux5 <= "011";
					R2_ld<='1';
				elsif ir_out(10 downto 9) = "11" then
					sel_mux5 <= "000";
					sel_5e1<="011";
					sel_5e2 <="111";
					alu_sel <="0011";
					sel_mux5 <= "011";
					R3_ld<='1';
				end if;
			when exe_ior =>
				state <= fetch;
				if ir_out(10 downto 9) = "00" then 
				elsif ir_out(10 downto 9) = "01" then
					sel_mux5 <= "000";
					sel_5e1<="001";
					sel_5e2 <="111";
					alu_sel <="0100";
					sel_mux5 <= "011";
					r1_ld <= '1';
				elsif ir_out(10 downto 9) = "10" then
					sel_mux5 <= "000";
					sel_5e1<="010";
					sel_5e2 <="111";
					alu_sel <="0100";
					sel_mux5 <= "011";
					R2_ld<='1';
				elsif ir_out(10 downto 9) = "11" then
					sel_mux5 <= "000";
					sel_5e1<="011";
					sel_5e2 <="111";
					alu_sel <="0100";
					sel_mux5 <= "011";
					R3_ld<='1';
				end if;
			when exe_inot =>
				state <= fetch;
				if ir_out(10 downto 9) = "00" then 
				elsif ir_out(10 downto 9) = "01" then
					sel_mux5 <= "000";
					sel_5e1<="001";
					sel_5e2 <="111";
					alu_sel <="0101";
					sel_mux5 <= "011";
					r1_ld <= '1';
				elsif ir_out(10 downto 9) = "10" then
					sel_mux5 <= "000";
					sel_5e1<="010";
					sel_5e2 <="111";
					alu_sel <="0101";
					sel_mux5 <= "011";
					R2_ld<='1';
				elsif ir_out(10 downto 9) = "11" then
					sel_mux5 <= "000";
					sel_5e1<="011";
					sel_5e2 <="111";
					alu_sel <="0101";
					sel_mux5 <= "011";
					R3_ld<='1';
				end if;
			when exe_ixor =>
				state <= fetch;
				if ir_out(10 downto 9) = "00" then 
				elsif ir_out(10 downto 9) = "01" then
					sel_mux5 <= "000";
					sel_5e1<="001";
					sel_5e2 <="111";
					alu_sel <="0111";
					sel_mux5 <= "011";
					r1_ld <= '1';
				elsif ir_out(10 downto 9) = "10" then
					sel_mux5 <= "000";
					sel_5e1<="010";
					sel_5e2 <="111";
					alu_sel <="0111";
					sel_mux5 <= "011";
					R2_ld<='1';
				elsif ir_out(10 downto 9) = "11" then
					sel_mux5 <= "000";
					sel_5e1<="011";
					sel_5e2 <="111";
					alu_sel <="0111";
					sel_mux5 <= "011";
					R3_ld<='1';
				end if;
			when exe_goto =>
				state <= fetch;
				mux2_in1<=ir_out(10 downto 1);
				sel_mux_pc<='0';
				--pc_ld <= '1';
			when exe_cjmp =>
				state <= fetch;
				if comp_out = "100" then 
					mux2_in1<=ir_out(10 downto 1);
					sel_mux_pc<='0';
					--pc_ld <= '1';
				end if;
			when exe_jmph => 
				state <= fetch;
				if comp_out = "010" then 
					mux2_in1<=ir_out(10 downto 1);
					sel_mux_pc<='0';
					--pc_ld <= '1';
				end if;
			when exe_jmpl =>
				state <= fetch;
				if comp_out = "001" then 
					mux2_in1<=ir_out(10 downto 1);
					sel_mux_pc<='0';
					--pc_ld <= '1';
				end if;
			when exe_pinin =>
				state <= fetch;
			when exe_pinout =>
				state <= fetch;
			when exe_cmp =>
				state <= fetch;
			when exe_movi =>
				state <= fetch;
		end case;
		if state = fetch then
			pc_ld <= '1';
			ir_ld <= '1';
		else
			pc_ld <= '0';
			ir_ld <= '0';
		end if;
	end process;
end behavioral;