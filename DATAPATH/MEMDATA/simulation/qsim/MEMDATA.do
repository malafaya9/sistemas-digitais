onerror {quit -f}
vlib work
vlog -work work MEMDATA.vo
vlog -work work MEMDATA.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MEMDATA_vlg_vec_tst
vcd file -direction MEMDATA.msim.vcd
vcd add -internal MEMDATA_vlg_vec_tst/*
vcd add -internal MEMDATA_vlg_vec_tst/i1/*
add wave /*
run -all
