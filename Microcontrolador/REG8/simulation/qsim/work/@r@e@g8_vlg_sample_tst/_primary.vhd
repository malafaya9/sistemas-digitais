library verilog;
use verilog.vl_types.all;
entity REG8_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        clr             : in     vl_logic;
        data_in         : in     vl_logic_vector(7 downto 0);
        load            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end REG8_vlg_sample_tst;
