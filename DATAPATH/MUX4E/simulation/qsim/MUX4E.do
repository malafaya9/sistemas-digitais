onerror {quit -f}
vlib work
vlog -work work MUX4E.vo
vlog -work work MUX4E.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MUX4E_vlg_vec_tst
vcd file -direction MUX4E.msim.vcd
vcd add -internal MUX4E_vlg_vec_tst/*
vcd add -internal MUX4E_vlg_vec_tst/i1/*
add wave /*
run -all
