library verilog;
use verilog.vl_types.all;
entity COMP0 is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        out_comp        : out    vl_logic
    );
end COMP0;
