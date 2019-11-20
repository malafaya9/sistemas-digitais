library verilog;
use verilog.vl_types.all;
entity MUX5E_vlg_sample_tst is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        c               : in     vl_logic_vector(7 downto 0);
        d               : in     vl_logic_vector(7 downto 0);
        e               : in     vl_logic_vector(7 downto 0);
        sel             : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end MUX5E_vlg_sample_tst;
