library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CTL2000 is 
	port
	(
	teste : out std_LOGIC_VECTOR(7 downto 0);
	tester1ld : out std_LOGIC;
	teste4 : out std_LOGIC_VECTOR(7 downto 0);
	teste5 : out std_LOGIC_VECTOR(7 downto 0);
	teste2 : out std_LOGIC_VECTOR(15 downto 0);
	teste3 : out std_LOGIC_VECTOR(2 downto 0);
	pinin: in std_LOGIC_VECTOR(7 downto 0);
	pinout: out std_LOGIC_VECTOR(7 downto 0);
	clk:in std_logic;
	rst:in std_LOGIC
	);
end CTL2000;
architecture behavioral of CTL2000 is
	component CU is
		port 
		(
		teste2 : out std_LOGIC_VECTOR(15 downto 0);
		teste3 : out std_LOGIC_VECTOR(2 downto 0);
		clk : in std_logic;
		rst :in std_logic;
		ctrl_reset : out std_logic;
		alu_sel: out std_logic_vector(3 downto 0);
		sel_mux5 : out	std_LOGIC_VECTOR(1 downto 0);
		pc_ld : out std_LOGIC;
		R1_ld :out std_LOGIC ;
		R2_ld :out std_LOGIC ;
		R3_ld :out std_LOGIC ;
		Rin_ld :out std_LOGIC ;
		Rout_ld :out std_LOGIC ;
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
	end component;
	component GG210 is 
		port
		(
		teste : out std_LOGIC_VECTOR(7 downto 0);
		tester1ld : out std_LOGIC;
		teste4 : out std_LOGIC_VECTOR(7 downto 0);
		teste5 : out std_LOGIC_VECTOR(7 downto 0);
		clr:in std_logic;
		pinin: in std_LOGIC_VECTOR(7 downto 0);
		pinout: out std_LOGIC_VECTOR(7 downto 0);
		clk:in std_logic;
		alu_sel: in std_logic_vector(3 downto 0);
		sel_mux5 : in std_LOGIC_VECTOR(1 downto 0);
		pc_ld : in std_LOGIC;
		R1_ld :in std_LOGIC ;
		R2_ld :in std_LOGIC ;
		R3_ld :in std_LOGIC ;
		Rin_ld :in std_LOGIC ;
		Rout_ld :in std_LOGIC ;
		IR_out:out std_LOGIC_VECTOR(15 downto 0);
		sel_5e1 : in std_LOGIC_VECTOR(2 downto 0);
		sel_5e2 : in std_LOGIC_VECTOR(2 downto 0);
		mux2_in1 : in std_LOGIC_VECTOR(9 downto 0);
		mem_adr : in std_LOGIC_VECTOR(7 downto 0);
		sel_mux_pc : in std_LOGIC;
		IR_ld : in std_LOGIC;
		wren : in std_LOGIC;
		comp_out : out std_logic_vector(2 downto 0)
		);
	end component;
--Signals
	signal alu_sel: std_logic_vector(3 downto 0) := (others => '0');
	signal sel_mux5 : std_LOGIC_VECTOR(1 downto 0) := (others => '0');
	signal pc_ld : std_LOGIC := '0';
	signal R1_ld : std_LOGIC := '0';
	signal R2_ld : std_LOGIC := '0';
	signal R3_ld : std_LOGIC := '0';
	signal rin_ld : std_LOGIC := '0';
	signal rout_ld : std_LOGIC := '0';
	signal IR_out : std_LOGIC_VECTOR(15 downto 0) := (others => '0');
	signal sel_5e1 : std_LOGIC_VECTOR(2 downto 0) := (others => '0');
	signal sel_5e2 : std_LOGIC_VECTOR(2 downto 0) := (others => '0');
	signal mux2_in1 : std_LOGIC_VECTOR(9 downto 0) := (others => '0');
	signal mem_adr : std_LOGIC_VECTOR(7 downto 0) := (others => '0');
	signal sel_mux_pc : std_LOGIC := '0';
	signal IR_ld : std_LOGIC := '0';
	signal wren : std_LOGIC := '0';
	signal signal_rst : std_LOGIC := '0';
	signal ctrl_reset : std_LOGIC := '0';
	signal comp_out : std_logic_vector(2 downto 0) := (others => '0');
begin
	--pcounter : pc port map (clk, pc_ld, pc_clr, pc_in, pc_out);
	control : cu port map(teste2,teste3, clk, signal_rst, ctrl_reset, alu_sel, sel_mux5, pc_ld, r1_ld, r2_ld, r3_ld, rin_ld, rout_ld, ir_out, sel_5e1, sel_5e2, mux2_in1, mem_adr, sel_mux_pc, ir_ld, wren, comp_out);
	datapath : gg210 port map(teste,tester1ld,teste4,teste5,signal_rst, pinin, pinout, clk, alu_sel, sel_mux5, pc_ld, r1_ld, r2_ld, r3_ld, rin_ld, rout_ld, ir_out, sel_5e1, sel_5e2, mux2_in1, mem_adr, sel_mux_pc, ir_ld, wren, comp_out);
	process(clk)
	begin
	end process;
	signal_rst <= rst or ctrl_reset;
end behavioral;