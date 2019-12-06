library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity COMP is 
	port (
		a,b: in std_logic_vector(7 downto 0);
		comp_out: out std_logic_vector(2 downto 0) := "000"
	);
end COMP;
architecture behavior of COMP is
begin	
	comp_out(0) <='1' when a=b else '0';
	comp_out(1) <='1' when a>b else '0';
	comp_out(2) <='1' when a<b else '0';
end behavior;