library verilog;
use verilog.vl_types.all;
entity CTL2000_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        pinin           : in     vl_logic_vector(7 downto 0);
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end CTL2000_vlg_sample_tst;
