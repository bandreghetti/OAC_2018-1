onerror {quit -f}
vlib work
vlog -work work Subtrator.vo
vlog -work work Subtrator.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Subtrator_vlg_vec_tst
vcd file -direction Subtrator.msim.vcd
vcd add -internal Subtrator_vlg_vec_tst/*
vcd add -internal Subtrator_vlg_vec_tst/i1/*
add wave /*
run -all
