library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity GG210 is 
	port
	(
	clk:in std_logic;
	alu_sel: in std_logic_vector(3 downto 0)
	--cout: out std_logic_vector(7 downto 0)
	);
end GG210;
architecture behavioral of GG210 is
	COMPONENT MEMDATA IS
		PORT
		(
			address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			wren		: IN STD_LOGIC ;
			q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
	END COMPONENT;

	component PC is 
		port
		(
		clk:in std_logic;
		pc_ld:in std_logic;
		pc_clr:in std_logic;
		addr_in: in std_logic_vector(9 downto 0);
		addr_out: out std_logic_vector(9 downto 0)
		);
	end component;
	
	COMPONENT COMP0 is
	  port(                      
		 a   : in std_logic_vector(7 downto 0);	 
		 out_comp : out std_logic 
		 
	  );
	end COMPONENT;
	
	comPONENT COMP is 
		port (a,b: in std_logic_vector(7 downto 0);
				aeqb,agtb,altb: out std_logic);
	end COMPonENT;
	
	component REG16 is 
		port
		(
		clk:in std_logic;
		load:in std_logic;
		clr:in std_logic;
		data_in: in std_logic_vector(15 downto 0);
		data_out: out std_logic_vector(15 downto 0)
		);
	end component;
	
	component REG8 is 
		port
		(
		clk:in std_logic;
		load:in std_logic;
		clr:in std_logic;
		data_in: in std_logic_vector(7 downto 0);
		data_out: out std_logic_vector(7 downto 0)
		);
	end component;
	
	component REG0 is 
		port
		(
		clk:in std_logic;
		data_in: in std_logic_vector(7 downto 0);
		data_out: out std_logic_vector(7 downto 0)
		);
	end component;
	
	component MUX5E is
	  port(
		 sel : in std_logic_vector(2 downto 0);                      
		 a   : in std_logic_vector(7 downto 0);   
		 b   : in std_logic_vector(7 downto 0);
		 c   : in std_logic_vector(7 downto 0);
		 d   : in std_logic_vector(7 downto 0);
		 e   : in std_logic_vector(7 downto 0);
		 out_mux : out std_logic_vector(7 downto 0) 		 
	  );
	end component;

	component MUX4E is
	  port(
		 sel : in std_logic_vector(1 downto 0);                      
		 a   : in std_logic_vector(7 downto 0);   
		 b   : in std_logic_vector(7 downto 0);
		 c   : in std_logic_vector(7 downto 0);
		 d   : in std_logic_vector(7 downto 0);
		 --y   : in std_logic_vector(9 downto 0);	 
		 out_mux : out std_logic_vector(7 downto 0) 
	  );
	end component;

	component MUX2E is
	  port(
		 sel : in std_logic;                      
		 a   : in std_logic_vector(9 downto 0);   
		 b   : in std_logic_vector(9 downto 0);
		 --y   : in std_logic_vector(9 downto 0);	 
		 out_mux : out std_logic_vector(9 downto 0) 
	  );
	end component;

	component ALU is 
		port (
			op_sel: in std_logic_vector(3 downto 0);
			val1    : in std_logic_vector(7 downto 0);
			val2    : in std_logic_vector(7 downto 0);
			op_out: out std_logic_vector(7 downto 0)
			--flag: out std_logic_vector(3 downto 0)
		);
	end component;

	component DATA IS
		PORT
		(
			aclr		: IN STD_LOGIC  := '0';
			address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			wren		: IN STD_LOGIC ;
			q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
	END component;

	COMPONENT PRGDATA IS
		PORT
		(
			address		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
		);
	END COMPONENT;

COMPONENT ADD1 is
  port(                     
    D_in   : in std_logic_vector(9 downto 0);   
    D_out   : out std_logic_vector(9 downto 0)
  );
end COMPONENT;

--Signals
--ADD1
	signal add1_out : std_LOGIC_VECTOR(9 downto 0) := (others => '0');
--PC
	signal pc_ld : std_LOGIC := '0';
	
	signal pc_clr : std_LOGIC := '0';
	signal pc_in : std_LOGIC_VECTOR(9 downto 0) := (others => '0');
	
	signal pc_out : std_LOGIC_VECTOR(9 downto 0) := (others => '0');
--MUX2E
	signal mux2_in1 : std_LOGIC_VECTOR(9 downto 0) := (others => '0');
	signal sel_mux_pc : std_LOGIC := '1';
--MEMORIA DE PROG
	signal q: std_LOGIC_VECTOR(15 downto 0) := (others => '0');
--IR
	signal IR_ld : std_LOGIC := '0';
	signal IR_clr : std_LOGIC := '0';
	signal IR_out: std_LOGIC_VECTOR(15 downto 0) := (others => '0');
--MEMORIA DE DADO
	signal wren : std_LOGIC := '0';
	signal din : std_LOGIC_VECTOR(7 downto 0) := (others => '0');
	signal mem_out : std_LOGIC_VECTOR(7 downto 0) := (others => '0');
	signal mem_adr : std_LOGIC_VECTOR(7 downto 0) := (others => '0');
--MUX4E
	signal sel_mux4e : std_LOGIC_VECTOR(1 downto 0) := (others => '0');
	signal alu_out : std_LOGIC_VECTOR(7 downto 0) := (others => '0');
	--signal mux4e_in3 : std_LOGIC_VECTOR(7 downto 0) := (others => '0');
	signal mux4e_out : std_LOGIC_VECTOR(7 downto 0) := (others => '0');
--ERRES
	signal R0_out : std_LOGIC_VECTOR(7 downto 0) := (others => '0');
	signal R1_out : std_LOGIC_VECTOR(7 downto 0) := (others => '0');
	signal R2_out : std_LOGIC_VECTOR(7 downto 0) := (others => '0');
	signal R3_out : std_LOGIC_VECTOR(7 downto 0) := (others => '0');
	signal R1_ld : std_LOGIC := '0';
	signal R2_ld : std_LOGIC := '0';
	signal R3_ld : std_LOGIC := '0';
	signal R1_clr : std_LOGIC := '0';
	signal R2_clr : std_LOGIC := '0';
	signal R3_clr : std_LOGIC := '0';
	signal sel_5e1 : std_LOGIC_VECTOR(2 downto 0) := (others => '0');
	signal sel_5e2 : std_LOGIC_VECTOR(2 downto 0) := (others => '0');
	signal mux5e1_out : std_LOGIC_VECTOR(7 downto 0) := (others => '0');
	signal mux5e2_out : std_LOGIC_VECTOR(7 downto 0) := (others => '0');
begin
	pcounter : pc port map (clk, pc_ld, pc_clr, pc_in, pc_out);
	pmem : PRGDATA port map (pc_out, clk, q);
	ad1 : add1 port map(pc_out, add1_out);
	R0:REG0 PORT MAP (CLK,MUX4e_out,R0_OUT);
	R1:REG8 PORT MAP (CLK,r1_ld,r1_clr,MUX4e_out,R1_OUT);
	R2:REG8 PORT MAP (CLK,r2_ld,r2_clr,MUX4e_out,R2_OUT);
	R3:REG8 PORT MAP (CLK,r3_ld,r3_clr,MUX4e_out,R3_OUT);
	mux2 : mux2E port map(sel_mux_pc, mux2_in1, add1_out, pc_in);
	IR: REG16 port map (clk,IR_ld, IR_clr,q,IR_out);
	mem : memdata port map(mem_adr, clk, din, wren,mem_out);
	mux4 : mux4e port map(sel_mux4e, mem_adr, mem_out, mux5e2_out, alu_out, mux4e_out);
	mux5E1: mux5E port map(SEL_5E1,R0_OUT,R1_OUT,R2_OUT,R3_OUT,MUX4e_out,MUX5E1_OUT);
	mux5E2: mux5E port map(SEL_5E2,R0_OUT,R1_OUT,R2_OUT,R3_OUT,MUX4e_out,MUX5E2_OUT);
	ula: alu port map(alu_sel,mux5e1_out,mux5e2_out,alu_out);
	process(clk)
	begin
	end process;	
end behavioral;