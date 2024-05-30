onerror {exit -code 1}
vlib work
vcom -work work PROCESADOR.vho
vcom -work work PROCESADOR.vwf.vht
vsim -novopt -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.PROCESADOR_vhd_vec_tst
vcd file -direction PROCESADOR.msim.vcd
vcd add -internal PROCESADOR_vhd_vec_tst/*
vcd add -internal PROCESADOR_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

