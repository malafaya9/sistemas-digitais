library verilog;
use verilog.vl_types.all;
entity CTL2000_vlg_check_tst is
    port(
        pinout          : in     vl_logic_vector(7 downto 0);
        teste           : in     vl_logic_vector(7 downto 0);
        teste2          : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end CTL2000_vlg_check_tst;
