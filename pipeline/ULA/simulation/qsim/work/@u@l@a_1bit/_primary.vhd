library verilog;
use verilog.vl_types.all;
entity ULA_1bit is
    port(
        C_out           : out    vl_logic;
        A               : in     vl_logic;
        A_inv           : in     vl_logic;
        B               : in     vl_logic;
        B_inv           : in     vl_logic;
        C_in            : in     vl_logic;
        Sa              : out    vl_logic;
        Operacao        : in     vl_logic_vector(1 downto 0)
    );
end ULA_1bit;
