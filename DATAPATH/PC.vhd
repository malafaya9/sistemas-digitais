library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PC is 
	port
	(
	clk:in std_logic;
	pc_ld:in std_logic;
	pc_clr:in std_logic;
	addr_in: in std_logic_vector(9 downto 0);
	addr_out: out std_logic_vector(9 downto 0)
	);
end PC;
architecture behavioral of PC is
		
begin
			process(rising_edge(clk))
			begin
					--if ((pc_ld)=="1") then
						--	addr_out<=addr_in;
					--end if;
			end process;
end behavioral;