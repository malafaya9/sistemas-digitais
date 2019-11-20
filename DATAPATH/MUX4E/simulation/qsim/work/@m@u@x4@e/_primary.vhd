library verilog;
use verilog.vl_types.all;
entity MUX4E is
    port(
        sel             : in     vl_logic_vector(1 downto 0);
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        c               : in     vl_logic_vector(7 downto 0);
        d               : in     vl_logic_vector(7 downto 0);
        out_mux         : out    vl_logic_vector(7 downto 0)
    );
end MUX4E;
