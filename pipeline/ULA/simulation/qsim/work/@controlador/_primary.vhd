library verilog;
use verilog.vl_types.all;
entity Controlador is
    port(
        RegWrite        : out    vl_logic;
        OpCode          : in     vl_logic_vector(5 downto 0);
        ReadMem         : out    vl_logic;
        WriteMem        : out    vl_logic;
        ALUSrc          : out    vl_logic_vector(1 downto 0);
        Branch          : out    vl_logic_vector(1 downto 0);
        MemToReg        : out    vl_logic_vector(1 downto 0);
        OpALU           : out    vl_logic_vector(2 downto 0);
        RegDST          : out    vl_logic_vector(1 downto 0)
    );
end Controlador;
