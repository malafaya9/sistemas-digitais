onerror {quit -f}
vlib work
vlog -work work MUX2E.vo
vlog -work work MUX2E.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MUX2E_vlg_vec_tst
vcd file -direction MUX2E.msim.vcd
vcd add -internal MUX2E_vlg_vec_tst/*
vcd add -internal MUX2E_vlg_vec_tst/i1/*
add wave /*
run -all
