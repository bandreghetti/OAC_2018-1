library verilog;
use verilog.vl_types.all;
entity ULA_1bit_vlg_sample_tst is
    port(
        A               : in     vl_logic;
        A_inv           : in     vl_logic;
        B               : in     vl_logic;
        B_inv           : in     vl_logic;
        C_in            : in     vl_logic;
        Operacao        : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end ULA_1bit_vlg_sample_tst;
