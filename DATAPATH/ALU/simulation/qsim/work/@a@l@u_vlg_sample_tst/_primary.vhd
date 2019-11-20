library verilog;
use verilog.vl_types.all;
entity ALU_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        clr             : in     vl_logic;
        op_sel          : in     vl_logic_vector(3 downto 0);
        val1            : in     vl_logic_vector(7 downto 0);
        val2            : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end ALU_vlg_sample_tst;
