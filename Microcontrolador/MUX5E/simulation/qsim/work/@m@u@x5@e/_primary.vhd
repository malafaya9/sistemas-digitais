library verilog;
use verilog.vl_types.all;
entity MUX5E is
    port(
        sel             : in     vl_logic_vector(2 downto 0);
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        c               : in     vl_logic_vector(7 downto 0);
        d               : in     vl_logic_vector(7 downto 0);
        e               : in     vl_logic_vector(7 downto 0);
        out_mux         : out    vl_logic_vector(7 downto 0)
    );
end MUX5E;
