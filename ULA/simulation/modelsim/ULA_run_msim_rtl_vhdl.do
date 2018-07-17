transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/alunoic/Downloads/SDigitais-master/ULA/ADDER.vhd}
vcom -93 -work work {/home/alunoic/Downloads/SDigitais-master/ULA/AND.vhd}
vcom -93 -work work {/home/alunoic/Downloads/SDigitais-master/ULA/OR.vhd}
vcom -93 -work work {/home/alunoic/Downloads/SDigitais-master/ULA/SUB.vhd}
vcom -93 -work work {/home/alunoic/Downloads/SDigitais-master/ULA/ULA.vhd}

