library verilog;
use verilog.vl_types.all;
entity Subtrator is
    port(
        S               : out    vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        C_in            : in     vl_logic;
        C_out           : out    vl_logic
    );
end Subtrator;
