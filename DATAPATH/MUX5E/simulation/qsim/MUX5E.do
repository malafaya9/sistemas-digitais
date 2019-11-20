onerror {quit -f}
vlib work
vlog -work work MUX5E.vo
vlog -work work MUX5E.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MUX5E_vlg_vec_tst
vcd file -direction MUX5E.msim.vcd
vcd add -internal MUX5E_vlg_vec_tst/*
vcd add -internal MUX5E_vlg_vec_tst/i1/*
add wave /*
run -all
