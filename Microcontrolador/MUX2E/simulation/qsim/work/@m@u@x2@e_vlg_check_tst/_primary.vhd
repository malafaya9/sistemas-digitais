library verilog;
use verilog.vl_types.all;
entity MUX2E_vlg_check_tst is
    port(
        out_mux         : in     vl_logic_vector(9 downto 0);
        sampler_rx      : in     vl_logic
    );
end MUX2E_vlg_check_tst;
