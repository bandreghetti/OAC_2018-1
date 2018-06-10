library verilog;
use verilog.vl_types.all;
entity reg32 is
    port(
        READ            : out    vl_logic_vector(31 downto 0);
        WRITE           : in     vl_logic_vector(31 downto 0);
        CLK             : in     vl_logic;
        W_EN            : in     vl_logic
    );
end reg32;
