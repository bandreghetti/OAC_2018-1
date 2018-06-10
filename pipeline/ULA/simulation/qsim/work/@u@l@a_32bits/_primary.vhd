library verilog;
use verilog.vl_types.all;
entity ULA_32bits is
    port(
        Overflow        : out    vl_logic;
        Op              : in     vl_logic_vector(2 downto 0);
        A_inv           : in     vl_logic;
        A               : in     vl_logic_vector(31 downto 0);
        B_inv           : in     vl_logic;
        B               : in     vl_logic_vector(31 downto 0);
        Equal           : out    vl_logic;
        Output          : out    vl_logic_vector(31 downto 0)
    );
end ULA_32bits;
