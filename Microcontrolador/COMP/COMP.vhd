library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity COMP is 
	port (a,b: in std_logic_vector(7 downto 0);
			aeqb,agtb,altb: out std_logic);
end COMP;
architecture behavior of COMP is
begin	
	aeqb <='1' when a=b else '0';
	agtb <='1' when a>b else '0';
	altb <='1' when a<b else '0';
end behavior;