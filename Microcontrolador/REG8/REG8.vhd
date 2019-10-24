library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity REG8 is 
	port
	(
	clk:in std_logic;
	load:in std_logic;
	clr:in std_logic;
	data_in: in std_logic_vector(7 downto 0);
	data_out: out std_logic_vector(7 downto 0)
	);
end REG8;
architecture behavioral of REG8 is
begin
	process(clk, clr)
	begin
		if(clr='1') then
			data_out <= "00000000";
		else
			if (rising_edge(clk) and (load)='1') then
				data_out<=data_in;
			end if;
		end if;
	end process;
end behavioral;