onerror {quit -f}
vlib work
vlog -work work ULA_Full.vo
vlog -work work ULA_Full.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ULA_Full_vlg_vec_tst
vcd file -direction ULA_Full.msim.vcd
vcd add -internal ULA_Full_vlg_vec_tst/*
vcd add -internal ULA_Full_vlg_vec_tst/i1/*
add wave /*
run -all
