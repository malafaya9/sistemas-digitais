library ieee;
use ieee.std_logic_1164.all;

entity MUX6E is
  port(
    sel : in std_logic_vector(2 downto 0);                      
    a   : in std_logic_vector(7 downto 0);   
    b   : in std_logic_vector(7 downto 0);
	 c   : in std_logic_vector(7 downto 0);
	 d   : in std_logic_vector(7 downto 0);
	 e   : in std_logic_vector(7 downto 0);
	 f   : in std_logic_vector(7 downto 0);
	 --y   : in std_logic_vector(9 downto 0);	 
	 out_mux : out std_logic_vector(7 downto 0) 
    
  );
end MUX6E;


architecture dataflow of MUX6E is

begin
  process(sel, a, b, c, d, e,f)
  begin
	case sel is
		when "000" =>
			out_mux <= a;
		when "001" =>
			out_mux <= b;
		when "010" =>
			out_mux <= c;
		when "011" =>
			out_mux <= d;
		when "100" =>
			out_mux <= e;
		when "101" =>
			out_mux <= f;
		when others =>
			out_mux <= "00000000";
	end case;
  end process;

end dataflow;