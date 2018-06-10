library verilog;
use verilog.vl_types.all;
entity reg32_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        W_EN            : in     vl_logic;
        WRITE           : in     vl_logic_vector(31 downto 0);
        sampler_tx      : out    vl_logic
    );
end reg32_vlg_sample_tst;
