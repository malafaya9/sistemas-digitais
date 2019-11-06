onerror {quit -f}
vlib work
vlog -work work COMP.vo
vlog -work work COMP.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.COMP_vlg_vec_tst
vcd file -direction COMP.msim.vcd
vcd add -internal COMP_vlg_vec_tst/*
vcd add -internal COMP_vlg_vec_tst/i1/*
add wave /*
run -all
