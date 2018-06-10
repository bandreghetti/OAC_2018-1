onerror {exit -code 1}
vlib work
vlog -work work MIPSpipeline.vo
vlog -work work regbank_testwave.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.RegBank_vlg_vec_tst -voptargs="+acc"
vcd file -direction MIPSpipeline.msim.vcd
vcd add -internal RegBank_vlg_vec_tst/*
vcd add -internal RegBank_vlg_vec_tst/i1/*
run -all
quit -f
