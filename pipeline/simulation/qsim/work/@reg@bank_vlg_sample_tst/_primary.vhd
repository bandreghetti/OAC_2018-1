library verilog;
use verilog.vl_types.all;
entity RegBank_vlg_sample_tst is
    port(
        ARegAddr        : in     vl_logic_vector(4 downto 0);
        BRegAddr        : in     vl_logic_vector(4 downto 0);
        CLK             : in     vl_logic;
        WB_EN           : in     vl_logic;
        WRITE_VAL       : in     vl_logic_vector(31 downto 0);
        WriteAddr       : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end RegBank_vlg_sample_tst;
