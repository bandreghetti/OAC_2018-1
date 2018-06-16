library verilog;
use verilog.vl_types.all;
entity Controlador_vlg_sample_tst is
    port(
        OpCode          : in     vl_logic_vector(5 downto 0);
        sampler_tx      : out    vl_logic
    );
end Controlador_vlg_sample_tst;
