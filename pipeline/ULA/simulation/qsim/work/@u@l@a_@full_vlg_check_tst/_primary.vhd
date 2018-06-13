library verilog;
use verilog.vl_types.all;
entity ULA_Full_vlg_check_tst is
    port(
        High            : in     vl_logic_vector(31 downto 0);
        Low             : in     vl_logic_vector(31 downto 0);
        Overflow        : in     vl_logic;
        result          : in     vl_logic_vector(31 downto 0);
        Zero            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ULA_Full_vlg_check_tst;
