library verilog;
use verilog.vl_types.all;
entity ULA_Full_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        A_inv           : in     vl_logic;
        B               : in     vl_logic_vector(31 downto 0);
        B_inv           : in     vl_logic;
        Direction       : in     vl_logic;
        Op              : in     vl_logic_vector(2 downto 0);
        Shamt           : in     vl_logic_vector(4 downto 0);
        Shift           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ULA_Full_vlg_sample_tst;
