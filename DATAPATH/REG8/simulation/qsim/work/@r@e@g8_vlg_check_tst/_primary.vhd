library verilog;
use verilog.vl_types.all;
entity REG8_vlg_check_tst is
    port(
        data_out        : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end REG8_vlg_check_tst;
