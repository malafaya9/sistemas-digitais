library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CU is 
	port 
	(
	teste2 : out std_LOGIC_VECTOR(15 downto 0);
	clk : in std_logic;
	rst :in std_logic;
	ctrl_reset : out std_logic;
	alu_sel: out std_logic_vector(3 downto 0);
	sel_mux5 : out	std_LOGIC_VECTOR(1 downto 0);
	pc_ld : out std_LOGIC;
	r1_ld :out std_LOGIC ;
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
exe_movi, exe_goto, exe_cjmp, exe_cmp, exe_jmpl, exe_jmph, exe_nop, exe_rst,
exe_add,exe_sub,exe_and,exe_or,exe_xor,exe_not,exe_shl,exe_shr
);
SIGNAL pstate: STATE_TYPE;
SIGNAL state: STATE_TYPE := fetch;
begin

	
	teste2(15 downto 3) <=ir_out(15 downto 3);
	teste2(2 downto 0)<= comp_out;
	process (clk, rst)
	begin
		if rst = '1' then
			pstate <= reset;
		elsif (rising_edge(clk)) then
			pstate <= state;
		end if;
	end process;
	process (pstate)
	begin
		case pstate is
			when reset =>
				state <= fetch;
				ctrl_reset <= '0';
				r1_ld<='0';
				r2_ld<='0';
				r3_ld<='0';
				ir_ld<='0';
				rin_ld <= '0';
				rout_ld <= '0';
				mem_adr <= "00000000";
				pc_ld<='0';
			when fetch =>
				--alu_sel<="1111";
				state<=decode;
				wren <= '0';
				mem_adr <= "00000000";
				pc_ld <= '1';
				ir_ld <= '1';
				R1_ld<='0';
				R2_ld<='0';
				R3_ld<='0';
				rin_ld <= '0';
				rout_ld <= '0';
				if ir_out(15 downto 11)="10000" or ir_out(15 downto 11)="10001" or ir_out(15 downto 11)="10010" or ir_out(15 downto 11)="10011" then
					sel_mux_pc <= '0';
				else
					sel_mux_pc <= '1';
				end if;
			when decode =>
				pc_ld <= '0';
				ir_ld <= '0';
				R1_ld <= '0';
				R2_ld <= '0';
				R3_ld <= '0';
				if ir_out(15 downto 11) = "00000" then
					state <= exe_nop;
				elsif ir_out(15 downto 11) = "00001" then
					state <= exe_st;
				elsif ir_out(15 downto 11) = "00010" then
					state <= exe_mov;
				elsif ir_out(15 downto 11) = "00011" then
					state <= exe_pinin;
					rin_ld<='1';
				elsif ir_out(15 downto 11) = "00100" then
					state <= exe_pinout;
				elsif ir_out(15 downto 11) = "01000" then
					state <= exe_addi;
				elsif ir_out(15 downto 11) = "11000" then
					state <= exe_add;
				elsif ir_out(15 downto 11) = "01001" then
					state <= exe_subi;
				elsif ir_out(15 downto 11) = "11001" then
					state <= exe_sub;
				elsif ir_out(15 downto 11) = "01010" then
					state <= exe_iand;
				elsif ir_out(15 downto 11) = "11010" then
					state <= exe_and;
				elsif ir_out(15 downto 11) = "01011" then
					state <= exe_ior;
				elsif ir_out(15 downto 11) = "11011" then
					state <= exe_or;
				elsif ir_out(15 downto 11) = "01100" then
					state <= exe_inot;
				elsif ir_out(15 downto 11) = "11100" then
					state <= exe_not;
				elsif ir_out(15 downto 11) = "01101" then
					state <= exe_ixor;
				elsif ir_out(15 downto 11) = "11101" then
					state <= exe_xor;
				elsif ir_out(15 downto 11) = "01110" then
					state <= exe_movi;
				elsif ir_out(15 downto 11) = "10000" then
					state <= exe_goto;
					mux2_in1<=ir_out(10 downto 1);
					sel_mux_pc<='0';
					pc_ld <= '1';
					--ir_ld <= '1';
				elsif ir_out(15 downto 11) = "10001" then
					if comp_out = "001" then 
							state <= exe_cjmp;
						mux2_in1<=ir_out(10 downto 1);
						sel_mux_pc<='0';
						pc_ld <= '1';
						--ir_ld <= '1';
					end if;
					--state <= fetch;
				elsif ir_out(15 downto 11) = "10010" then 
					if comp_out = "010" then 
						state <= exe_jmph;
						mux2_in1<=ir_out(10 downto 1);
						sel_mux_pc<='0';
						pc_ld <= '1';
						--ir_ld <= '1';
					end if;
					state <= fetch;
				elsif ir_out(15 downto 11) = "10011" then 
					
					if comp_out = "100" then 
						state <= exe_jmpl;
						mux2_in1<=ir_out(10 downto 1);
						sel_mux_pc<='0';
						pc_ld <= '1';
						--ir_ld <= '1';
					end if;
					--state <= fetch;
				elsif ir_out(15 downto 11) = "01111" then 
					state <= exe_cmp;
				elsif ir_out(15 downto 11) = "00101" then
					state <= exe_ld;
				elsif ir_out(15 downto 11) = "00110" then
					state <= exe_rst;
				elsif ir_out(15 downto 11) = "11110" then
					state <= exe_shl;
				elsif ir_out(15 downto 11) = "11111" then
					state <= exe_shr;
				else
					state <= fetch;
				end if;
			when exe_ld =>
				state <= fetch;
				mem_adr <= ir_out(8 downto 1 );
				wren<='0';
				sel_mux5 <= "00";
				
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
				sel_5e2(2) <= '0';
				sel_5e2(1 downto 0) <= ir_out(10 downto 9);
				mem_adr <= ir_out(8 downto 1 );
				wren <= '1';
			when exe_mov =>
				state <= fetch;
				sel_5e2(2) <= '0';
				sel_5e2(1 downto 0) <= ir_out(10 downto 9);
				sel_mux5 <= "01";
				if ir_out(8 downto 7) = "00" then 
				elsif ir_out(8 downto 7) = "01" then
					R1_ld<='1';
				elsif ir_out(8 downto 7) = "10" then
					R2_ld<='1';
				elsif ir_out(8 downto 7) = "11" then
					R3_ld<='1';
				end if;
			when exe_addi =>
				state <= fetch;
				mem_adr <= ir_out(8 downto 1);
				if ir_out(10 downto 9) = "00" then 
				elsif ir_out(10 downto 9) = "01" then
					sel_5e2 <="101";
					sel_5e1<="001";
					alu_sel <="0000";
					sel_mux5 <= "11";
					r1_ld <= '1';
				elsif ir_out(10 downto 9) = "10" then
					sel_5e2 <="101";
					sel_5e1<="010";
					alu_sel <="0000";
					sel_mux5 <= "11";
					r2_ld <= '1';
				elsif ir_out(10 downto 9) = "11" then
					sel_5e2 <="101";
					sel_5e1<="011";
					alu_sel <="0000";
					sel_mux5 <= "11";
					r3_ld <= '1';
				end if;
			when exe_add =>
				state <= fetch;
				sel_5e2(2) <='0';
				sel_5e2(1 downto 0) <=ir_out(10 downto 9);
				sel_5e1(2) <='0';
				sel_5e1(1 downto 0) <=ir_out(8 downto 7);
				alu_sel <="0000";
				sel_mux5 <= "11";
				if ir_out(6 downto 5)="00" then
				
				elsif ir_out(6 downto 5) = "01" then
					r1_ld <= '1';
				elsif ir_out(6 downto 5) = "10" then
					r2_ld <= '1';
				elsif ir_out(6 downto 5) = "11" then
					r3_ld <= '1';
				end if;
			when exe_subi =>
				state <= fetch;
				mem_adr <= ir_out(8 downto 1);
				if ir_out(10 downto 9) = "00" then 
				elsif ir_out(10 downto 9) = "01" then
					sel_5e2 <="101";
					sel_5e1<="001";
					alu_sel <="0001";
					sel_mux5 <= "11";
					r1_ld <= '1';
				elsif ir_out(10 downto 9) = "10" then
					sel_5e2 <="101";
					sel_5e1<="010";
					alu_sel <="0001";
					sel_mux5 <= "11";
					r2_ld <= '1';
				elsif ir_out(10 downto 9) = "11" then
					sel_5e2 <="101";
					sel_5e1<="011";
					alu_sel <="0001";
					sel_mux5 <= "11";
					r3_ld <= '1';
				end if;
			when exe_sub =>
				state <= fetch;
				
				sel_5e1(2) <='0';
				sel_5e1(1 downto 0) <=ir_out(10 downto 9);
				sel_5e2(2) <='0';
				sel_5e2(1 downto 0) <=ir_out(8 downto 7);
				alu_sel <="0001";
				sel_mux5 <= "11";
				if ir_out(6 downto 5)="00" then
				
				elsif ir_out(6 downto 5) = "01" then
					r1_ld <= '1';
				elsif ir_out(6 downto 5) = "10" then
					r2_ld <= '1';
				elsif ir_out(6 downto 5) = "11" then
					r3_ld <= '1';
				end if;
			when exe_iand =>
				state <= fetch;
				mem_adr <= ir_out(8 downto 1);
				if ir_out(10 downto 9) = "00" then 
				elsif ir_out(10 downto 9) = "01" then
					--sel_5e2 <= "101";
					--sel_mux5 <= "00";
					sel_5e1<="001";
					sel_5e2 <="101";
					alu_sel <="0011";
					sel_mux5 <= "11";
					r1_ld <= '1';
				elsif ir_out(10 downto 9) = "10" then
					sel_mux5 <= "00";
					sel_5e1<="010";
					sel_5e2 <="111";
					alu_sel <="0011";
					R2_ld<='1';
				elsif ir_out(10 downto 9) = "11" then
					sel_mux5 <= "00";
					sel_5e1<="011";
					sel_5e2 <="111";
					alu_sel <="0011";
					R3_ld<='1';
				end if;
			when exe_and =>
				state <= fetch;
				sel_5e2(2) <='0';
				sel_5e2(1 downto 0) <=ir_out(10 downto 9);
				sel_5e1(2) <='0';
				sel_5e1(1 downto 0) <=ir_out(8 downto 7);
				alu_sel <="0011";
				sel_mux5 <= "11";
				if ir_out(6 downto 5)="00" then
				
				elsif ir_out(6 downto 5) = "01" then
					r1_ld <= '1';
				elsif ir_out(6 downto 5) = "10" then
					r2_ld <= '1';
				elsif ir_out(6 downto 5) = "11" then
					r3_ld <= '1';
				end if;
			when exe_ior =>
				state <= fetch;
				mem_adr <= ir_out(8 downto 1);
				if ir_out(10 downto 9) = "00" then 
				elsif ir_out(10 downto 9) = "01" then
					--sel_5e2 <= "101";
					--sel_mux5 <= "00";
					sel_5e1<="001";
					sel_5e2 <="101";
					alu_sel <="0100";
					sel_mux5 <= "11";
					r1_ld <= '1';
				elsif ir_out(10 downto 9) = "10" then
					sel_mux5 <= "00";
					sel_5e1<="010";
					sel_5e2 <="111";
					alu_sel <="0100";
					R2_ld<='1';
				elsif ir_out(10 downto 9) = "11" then
					sel_mux5 <= "00";
					sel_5e1<="011";
					sel_5e2 <="111";
					alu_sel <="0100";
					R3_ld<='1';
				end if;
			when exe_or =>
				state <= fetch;
				sel_5e2(2) <='0';
				sel_5e2(1 downto 0) <=ir_out(10 downto 9);
				sel_5e1(2) <='0';
				sel_5e1(1 downto 0) <=ir_out(8 downto 7);
				alu_sel <="0100";
				sel_mux5 <= "11";
				if ir_out(6 downto 5)="00" then
				
				elsif ir_out(6 downto 5) = "01" then
					r1_ld <= '1';
				elsif ir_out(6 downto 5) = "10" then
					r2_ld <= '1';
				elsif ir_out(6 downto 5) = "11" then
					r3_ld <= '1';
				end if;
			when exe_inot =>
				state <= fetch;
				mem_adr <= ir_out(8 downto 1);
				if ir_out(10 downto 9) = "00" then 
				elsif ir_out(10 downto 9) = "01" then
					--sel_5e2 <= "101";
					--sel_mux5 <= "00";
					sel_5e1<="001";
					sel_5e2 <="101";
					alu_sel <="0101";
					sel_mux5 <= "11";
					r1_ld <= '1';
				elsif ir_out(10 downto 9) = "10" then
					sel_mux5 <= "00";
					sel_5e1<="010";
					sel_5e2 <="111";
					alu_sel <="0101";
					R2_ld<='1';
				elsif ir_out(10 downto 9) = "11" then
					sel_mux5 <= "00";
					sel_5e1<="011";
					sel_5e2 <="111";
					alu_sel <="0101";
					R3_ld<='1';
				end if;
			when exe_not =>
				state <= fetch;
				sel_5e2(2) <='0';
				sel_5e2(1 downto 0) <=ir_out(10 downto 9);
				alu_sel <="0101";
				sel_mux5 <= "11";
				if ir_out(8 downto 7)="00" then
				elsif ir_out(8 downto 7) = "01" then
					r1_ld <= '1';
				elsif ir_out(8 downto 7) = "10" then
					r2_ld <= '1';
				elsif ir_out(8 downto 7) = "11" then
					r3_ld <= '1';
				end if;
			when exe_ixor =>
				state <= fetch;
				mem_adr <= ir_out(8 downto 1);
				if ir_out(10 downto 9) = "00" then 
				elsif ir_out(10 downto 9) = "01" then
					--sel_5e2 <= "101";
					--sel_mux5 <= "00";
					sel_5e1<="001";
					sel_5e2 <="101";
					alu_sel <="0111";
					sel_mux5 <= "11";
					r1_ld <= '1';
				elsif ir_out(10 downto 9) = "10" then
					sel_mux5 <= "00";
					sel_5e1<="010";
					sel_5e2 <="111";
					alu_sel <="0111";
					R2_ld<='1';
				elsif ir_out(10 downto 9) = "11" then
					sel_mux5 <= "00";
					sel_5e1<="011";
					sel_5e2 <="111";
					alu_sel <="0111";
					R3_ld<='1';
				end if;
			when exe_xor =>
				state <= fetch;
				sel_5e2(2) <='0';
				sel_5e2(1 downto 0) <=ir_out(10 downto 9);
				sel_5e1(2) <='0';
				sel_5e1(1 downto 0) <=ir_out(8 downto 7);
				alu_sel <="0111";
				sel_mux5 <= "11";
				if ir_out(6 downto 5)="00" then
				
				elsif ir_out(6 downto 5) = "01" then
					r1_ld <= '1';
				elsif ir_out(6 downto 5) = "10" then
					r2_ld <= '1';
				elsif ir_out(6 downto 5) = "11" then
					r3_ld <= '1';
				end if;
			when exe_goto =>
				state <= fetch;
				--mux2_in1<=ir_out(10 downto 1);
				sel_mux_pc<='1';
				--pc_ld<='0';
				--ir_ld<='1';
			when exe_cjmp =>
				state <= fetch;
				--mux2_in1<=ir_out(10 downto 1);
				sel_mux_pc<='1';
				--pc_ld<='0';
				--ir_ld<='1';
			when exe_jmph => 
				state <= fetch;
				--mux2_in1<=ir_out(10 downto 1);
				sel_mux_pc<='1';
				--pc_ld<='0';
				--ir_ld<='1';
			when exe_jmpl =>
				state <= fetch;
				--mux2_in1<=ir_out(10 downto 1);
				sel_mux_pc<='1';
				--pc_ld<='0';
				--ir_ld<='1';
			when exe_rst =>
				state <= fetch;
				ctrl_reset <= '1';
			when exe_pinin =>
				state <= fetch;
				rin_ld<='0';
				sel_mux5<="10";
				
				if ir_out(0) = '0' then					
					if ir_out(10 downto 9)="00" then
					
					elsif ir_out(10 downto 9) = "01" then
						r1_ld <= '1';
					elsif ir_out(10 downto 9) = "10" then
						r2_ld <= '1';
					elsif ir_out(10 downto 9) = "11" then
						r3_ld <= '1';
					end if;
				else
					sel_5e2<="100";
					mem_adr <= ir_out(8 downto 1);
					wren <= '1';
				end if;
			when exe_pinout =>
				state <= fetch;
				if ir_out(0) = '0' then
					sel_5e1(2) <='0';
					sel_5e1(1 downto 0) <=ir_out(10 downto 9);
				else
					sel_mux5 <= "00";
					sel_5e1 <= "100";
				end if;
				rout_ld<='1';
			when exe_cmp =>
			--###################################################################################
				state <= fetch;
				if ir_out(0)='0' then
					mem_adr <= ir_out(8 downto 1);
					sel_5e2 <="101";
				else
					sel_5e2(2) <='0';
					sel_5e2(1 downto 0) <=ir_out(8 downto 7);
				end if;
				sel_5e1(2) <='0';
				sel_5e1(1 downto 0) <=ir_out(10 downto 9);
				
				--alu_sel <="0100";
				--sel_mux5 <= "11";
			when exe_movi =>
				state <= fetch;
			when exe_nop =>
				state <= fetch;
			when exe_shr =>
				state <= fetch;
				mem_adr <= "00000000";
				mem_adr(2 downto 0) <= ir_out(8 downto 6);
				sel_5e2 <= "101";
				sel_5e1(2) <='0';
				sel_5e1(1 downto 0) <=ir_out(10 downto 9);
				alu_sel <="1000";
				sel_mux5 <= "11";
				if ir_out(8 downto 7)="00" then
				elsif ir_out(8 downto 7) = "01" then
					r1_ld <= '1';
				elsif ir_out(8 downto 7) = "10" then
					r2_ld <= '1';
				elsif ir_out(8 downto 7) = "11" then
					r3_ld <= '1';
				end if;
			when exe_shl =>
				state <= fetch;
				mem_adr <= "00000000";
				mem_adr(2 downto 0) <= ir_out(8 downto 6);
				sel_5e2 <= "101";
				sel_5e1(2) <='0';
				sel_5e1(1 downto 0) <=ir_out(10 downto 9);
				alu_sel <="0110";
				sel_mux5 <= "11";
				if ir_out(8 downto 7)="00" then
				elsif ir_out(8 downto 7) = "01" then
					r1_ld <= '1';
				elsif ir_out(8 downto 7) = "10" then
					r2_ld <= '1';
				elsif ir_out(8 downto 7) = "11" then
					r3_ld <= '1';
				end if;
		end case;
		--if state = fetch then
		--	pc_ld <= '1';
		--	ir_ld <= '1';
		--else
		--	pc_ld <= '0';
		--	ir_ld <= '0';
		--end if;
	end process;
end behavioral;