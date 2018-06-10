library verilog;
use verilog.vl_types.all;
entity ULA_32bits_vlg_check_tst is
    port(
        Equal           : in     vl_logic;
        Output          : in     vl_logic_vector(31 downto 0);
        Overflow        : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ULA_32bits_vlg_check_tst;
