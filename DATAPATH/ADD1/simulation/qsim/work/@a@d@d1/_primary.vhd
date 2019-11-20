library verilog;
use verilog.vl_types.all;
entity ADD1 is
    port(
        D_in            : in     vl_logic_vector(9 downto 0);
        D_out           : out    vl_logic_vector(9 downto 0)
    );
end ADD1;
