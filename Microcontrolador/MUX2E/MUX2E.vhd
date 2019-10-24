library ieee;
use ieee.std_logic_1164.all;

entity MUX2E is
  port(
    sel : in std_logic;                      
    a   : in std_logic_vector(9 downto 0);   
    b   : in std_logic_vector(9 downto 0);
	 --y   : in std_logic_vector(9 downto 0);	 
	 out_mux : out std_logic_vector(9 downto 0) 
    
  );
end MUX2E;


architecture dataflow of MUX2E is

begin
  process(sel, a, b)
  begin
    if (sel = '0') then
      out_mux <= a;
    else
      out_mux <= b;
    end if;
  end process;

end dataflow;