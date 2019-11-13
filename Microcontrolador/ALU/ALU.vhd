library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity ALU is 
	port (
		op_sel: in std_logic_vector(3 downto 0);
		val1    : in std_logic_vector(7 downto 0);
		val2    : in std_logic_vector(7 downto 0);
		op_out: out std_logic_vector(7 downto 0)
		--flag: out std_logic_vector(3 downto 0)
	);
end ALU;
architecture behavioral of ALU is
signal result : std_logic_vector(7 downto 0);
signal in1 : signed(7 downto 0) := (others => '0');
signal in2 : signed(7 downto 0) := (others => '0');
begin 
	process (val1,val2,op_sel)
	begin 
		in1 <= signed(val1);
		in2 <= signed(val2);
		case(op_sel) is 
			when "0000" => result <= std_logic_vector(in1 + in2);
			when "0001" => result <= std_logic_vector(in1 - in2);
			when "0010" => result <= val1;--store,move, a UP que vai carregar o resultado da ALU na memória, a alu só passa adiante.
			when "0011" => result <= val1 AND val2;		--AND,IAND
			when "0100" => result <= val1 OR val2;		--OR,IOR
			when "0101" => result <= NOT 	val1;		--NOT,INOT
			when "0111" => result <= val1 XOR val2	;	--XOR,IXOR
			when others =>
		end case;
		op_out <= result;
					
	end process;
end behavioral;