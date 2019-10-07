library ieee;
use ieee.std_logic_1164.all;

entity mux2e is
  port(
    sel : in std_logic;                      
    a   : in std_logic_vector(9 downto 0);   
    b   : in std_logic_vector(9 downto 0);  
	 out_mux2e : in std_logic_vector(9 downto 0) 
    
  );
end mux2e;


architecture dataflow of mux2e is

begin
  process(sel, a, b)
  begin
    if (sel = '0') then
      y <= a;
    else
      y <= b;
    end if;
  end process;

end dataflow;