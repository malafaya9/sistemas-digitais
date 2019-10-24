library verilog;
use verilog.vl_types.all;
entity PC is
    port(
        clk             : in     vl_logic;
        pc_ld           : in     vl_logic;
        pc_clr          : in     vl_logic;
        addr_in         : in     vl_logic_vector(9 downto 0);
        addr_out        : out    vl_logic_vector(9 downto 0)
    );
end PC;
