library verilog;
use verilog.vl_types.all;
entity ADD1_vlg_sample_tst is
    port(
        D_in            : in     vl_logic_vector(9 downto 0);
        sampler_tx      : out    vl_logic
    );
end ADD1_vlg_sample_tst;
