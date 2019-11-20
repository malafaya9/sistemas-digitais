library verilog;
use verilog.vl_types.all;
entity ADD1_vlg_check_tst is
    port(
        D_out           : in     vl_logic_vector(9 downto 0);
        sampler_rx      : in     vl_logic
    );
end ADD1_vlg_check_tst;
