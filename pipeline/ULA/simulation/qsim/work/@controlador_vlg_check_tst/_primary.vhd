library verilog;
use verilog.vl_types.all;
entity Controlador_vlg_check_tst is
    port(
        ALUSrc          : in     vl_logic_vector(1 downto 0);
        Branch          : in     vl_logic_vector(1 downto 0);
        MemToReg        : in     vl_logic_vector(1 downto 0);
        OpALU           : in     vl_logic_vector(2 downto 0);
        ReadMem         : in     vl_logic;
        RegDST          : in     vl_logic_vector(1 downto 0);
        RegWrite        : in     vl_logic;
        WriteMem        : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Controlador_vlg_check_tst;
