library verilog;
use verilog.vl_types.all;
entity MUX2E is
    port(
        sel             : in     vl_logic;
        a               : in     vl_logic_vector(9 downto 0);
        b               : in     vl_logic_vector(9 downto 0);
        out_mux         : out    vl_logic_vector(9 downto 0)
    );
end MUX2E;
