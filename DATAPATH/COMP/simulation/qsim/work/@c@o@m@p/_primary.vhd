library verilog;
use verilog.vl_types.all;
entity COMP is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        aeqb            : out    vl_logic;
        agtb            : out    vl_logic;
        altb            : out    vl_logic
    );
end COMP;
