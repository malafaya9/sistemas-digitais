library verilog;
use verilog.vl_types.all;
entity REG16 is
    port(
        clk             : in     vl_logic;
        load            : in     vl_logic;
        clr             : in     vl_logic;
        data_in         : in     vl_logic_vector(15 downto 0);
        data_out        : out    vl_logic_vector(15 downto 0)
    );
end REG16;
