onerror {quit -f}
vlib work
vlog -work work Controlador.vo
vlog -work work Controlador.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Controlador_vlg_vec_tst
vcd file -direction Controlador.msim.vcd
vcd add -internal Controlador_vlg_vec_tst/*
vcd add -internal Controlador_vlg_vec_tst/i1/*
add wave /*
run -all
