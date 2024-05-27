onerror {exit -code 1}
vlib work
vcom -work work ALU_2BITS.vho
vcom -work work ALU_2BITS.vwf.vht
vsim -novopt -c -t 1ps -L maxii -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.ALU_2BITS_vhd_vec_tst
vcd file -direction ALU_2BITS.msim.vcd
vcd add -internal ALU_2BITS_vhd_vec_tst/*
vcd add -internal ALU_2BITS_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

