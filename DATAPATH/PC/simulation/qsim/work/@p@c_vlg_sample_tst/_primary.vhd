library verilog;
use verilog.vl_types.all;
entity PC_vlg_sample_tst is
    port(
        addr_in         : in     vl_logic_vector(9 downto 0);
        clk             : in     vl_logic;
        pc_clr          : in     vl_logic;
        pc_ld           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end PC_vlg_sample_tst;
