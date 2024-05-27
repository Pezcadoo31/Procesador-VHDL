onerror {exit -code 1}
vlib work
vcom -work work BIT_SLICE.vho
vcom -work work BIT_SLICE.vwf.vht
vsim -novopt -c -t 1ps -L maxii -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.BIT_SLICE_vhd_vec_tst
vcd file -direction BIT_SLICE.msim.vcd
vcd add -internal BIT_SLICE_vhd_vec_tst/*
vcd add -internal BIT_SLICE_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f


