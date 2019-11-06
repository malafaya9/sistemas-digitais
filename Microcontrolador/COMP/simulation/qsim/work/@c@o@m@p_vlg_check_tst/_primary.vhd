library verilog;
use verilog.vl_types.all;
entity COMP_vlg_check_tst is
    port(
        aeqb            : in     vl_logic;
        agtb            : in     vl_logic;
        altb            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end COMP_vlg_check_tst;
