library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity REG0 is 
	port
	(
	clk:in std_logic;
	data_in: in std_logic_vector(7 downto 0);
	data_out: out std_logic_vector(7 downto 0)
	);
end REG0;
architecture behavioral of REG0 is
begin
	process(clk)
	begin
		data_out <= "00000000";
	end process;
end behavioral;