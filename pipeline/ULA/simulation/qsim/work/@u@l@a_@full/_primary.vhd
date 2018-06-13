library verilog;
use verilog.vl_types.all;
entity ULA_Full is
    port(
        Overflow        : out    vl_logic;
        A_inv           : in     vl_logic;
        B_inv           : in     vl_logic;
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        Op              : in     vl_logic_vector(2 downto 0);
        Zero            : out    vl_logic;
        High            : out    vl_logic_vector(31 downto 0);
        Low             : out    vl_logic_vector(31 downto 0);
        result          : out    vl_logic_vector(31 downto 0);
        Shift           : in     vl_logic;
        Direction       : in     vl_logic;
        Shamt           : in     vl_logic_vector(4 downto 0)
    );
end ULA_Full;
