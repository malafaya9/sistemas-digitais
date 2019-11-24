onerror {quit -f}
vlib work
vlog -work work CTL2000.vo
vlog -work work CTL2000.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.CTL2000_vlg_vec_tst
vcd file -direction CTL2000.msim.vcd
vcd add -internal CTL2000_vlg_vec_tst/*
vcd add -internal CTL2000_vlg_vec_tst/i1/*
add wave /*
run -all
