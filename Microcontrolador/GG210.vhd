library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity GG210 is 
	port
	(
	clk:in std_logic;
	cin: in std_logic_vector(7 downto 0);
	cout: out std_logic_vector(7 downto 0)
	);
end GG210;
architecture behavioral of GG210 is
begin
	process(clk)
	begin
		
	end process;
end behavioral;