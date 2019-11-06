library ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all ;

entity COMP0 is
  port(                      
    a   : in std_logic_vector(7 downto 0);	 
	 out_comp : out std_logic 
    
  );
end COMP0;


architecture dataflow of COMP0 is

begin
  process(a)
  begin
  case a is
		when "00000000" =>
			out_comp <= '1';
		when others =>
			out_comp <= '0';
		
	end case;
  end process;

end dataflow;