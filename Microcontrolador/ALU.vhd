library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ALU is 
	port (
		op_sel: in std_logic_vector(4 downto 0);
		d1    : in std_logic_vector(1 downto 0);
		d2    : in std_logic_vector(1 downto 0);
		op_out: in std_logic_vector(4 downto 0);
		clk: in std_logic;
		
	)
architecture behavioral of ALU is
begin 
	process (clk)
		begin 
			case(op_sel) is 
				when "000000" => op_out <= unsigned(d1) + unsigned(d2);
				when "000001" => op_out  <= unsigned(d1) - unsigned(d2);
				
				
					
		end process
end behavioral