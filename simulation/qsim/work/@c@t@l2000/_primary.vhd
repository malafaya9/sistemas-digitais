library verilog;
use verilog.vl_types.all;
entity CTL2000 is
    port(
        teste           : out    vl_logic_vector(7 downto 0);
        teste2          : out    vl_logic_vector(15 downto 0);
        pinin           : in     vl_logic_vector(7 downto 0);
        pinout          : out    vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic
    );
end CTL2000;
