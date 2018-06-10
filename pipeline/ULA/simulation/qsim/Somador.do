onerror {quit -f}
vlib work
vlog -work work Somador.vo
vlog -work work Somador.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Somador_vlg_vec_tst
vcd file -direction Somador.msim.vcd
vcd add -internal Somador_vlg_vec_tst/*
vcd add -internal Somador_vlg_vec_tst/i1/*
add wave /*
run -all
