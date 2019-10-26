library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
entity ADD1 is
  port(                     
    D_in   : in std_logic_vector(9 downto 0);   
    D_out   : out std_logic_vector(9 downto 0)
	 --y   : in std_logic_vector(9 downto 0);	 
    
  );
end ADD1;


architecture dataflow of ADD1 is

begin
  process(D_in)
  begin
    D_out <= D_in + '1';
  end process;

end dataflow;