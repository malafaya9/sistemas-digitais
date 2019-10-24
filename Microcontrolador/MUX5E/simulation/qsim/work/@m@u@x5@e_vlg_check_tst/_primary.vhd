library verilog;
use verilog.vl_types.all;
entity MUX5E_vlg_check_tst is
    port(
        out_mux         : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end MUX5E_vlg_check_tst;
