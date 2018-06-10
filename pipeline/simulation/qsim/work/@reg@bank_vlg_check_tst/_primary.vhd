library verilog;
use verilog.vl_types.all;
entity RegBank_vlg_check_tst is
    port(
        Aout            : in     vl_logic_vector(31 downto 0);
        Bout            : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end RegBank_vlg_check_tst;
