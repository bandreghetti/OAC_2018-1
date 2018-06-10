library verilog;
use verilog.vl_types.all;
entity RegBank is
    port(
        Aout            : out    vl_logic_vector(31 downto 0);
        CLK             : in     vl_logic;
        WB_EN           : in     vl_logic;
        WriteAddr       : in     vl_logic_vector(4 downto 0);
        WRITE_VAL       : in     vl_logic_vector(31 downto 0);
        ARegAddr        : in     vl_logic_vector(4 downto 0);
        Bout            : out    vl_logic_vector(31 downto 0);
        BRegAddr        : in     vl_logic_vector(4 downto 0)
    );
end RegBank;
