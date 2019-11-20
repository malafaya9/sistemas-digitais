library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        op_sel          : in     vl_logic_vector(3 downto 0);
        val1            : in     vl_logic_vector(7 downto 0);
        val2            : in     vl_logic_vector(7 downto 0);
        op_out          : out    vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        clr             : in     vl_logic
    );
end ALU;
