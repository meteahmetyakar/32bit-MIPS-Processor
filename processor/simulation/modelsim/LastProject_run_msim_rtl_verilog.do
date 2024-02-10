transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/amete/OneDrive/Belgeler/LastProject/processor {C:/Users/amete/OneDrive/Belgeler/LastProject/processor/sign_extend.v}
vlog -vlog01compat -work work +incdir+C:/Users/amete/OneDrive/Belgeler/LastProject/processor {C:/Users/amete/OneDrive/Belgeler/LastProject/processor/shift_left_2.v}
vlog -vlog01compat -work work +incdir+C:/Users/amete/OneDrive/Belgeler/LastProject/processor {C:/Users/amete/OneDrive/Belgeler/LastProject/processor/mips.v}
vlog -vlog01compat -work work +incdir+C:/Users/amete/OneDrive/Belgeler/LastProject/processor {C:/Users/amete/OneDrive/Belgeler/LastProject/processor/control_unit.v}
vlog -vlog01compat -work work +incdir+C:/Users/amete/OneDrive/Belgeler/LastProject/processor {C:/Users/amete/OneDrive/Belgeler/LastProject/processor/alu_control.v}
vlog -vlog01compat -work work +incdir+C:/Users/amete/OneDrive/Belgeler/LastProject/processor {C:/Users/amete/OneDrive/Belgeler/LastProject/processor/alu.v}
vlog -vlog01compat -work work +incdir+C:/Users/amete/OneDrive/Belgeler/LastProject/32bits {C:/Users/amete/OneDrive/Belgeler/LastProject/32bits/zerobit_32bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/amete/OneDrive/Belgeler/LastProject/32bits {C:/Users/amete/OneDrive/Belgeler/LastProject/32bits/sub_32bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/amete/OneDrive/Belgeler/LastProject/32bits {C:/Users/amete/OneDrive/Belgeler/LastProject/32bits/or_32bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/amete/OneDrive/Belgeler/LastProject/32bits {C:/Users/amete/OneDrive/Belgeler/LastProject/32bits/not_32bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/amete/OneDrive/Belgeler/LastProject/32bits {C:/Users/amete/OneDrive/Belgeler/LastProject/32bits/mux_8x1.v}
vlog -vlog01compat -work work +incdir+C:/Users/amete/OneDrive/Belgeler/LastProject/32bits {C:/Users/amete/OneDrive/Belgeler/LastProject/32bits/mux_2x1.v}
vlog -vlog01compat -work work +incdir+C:/Users/amete/OneDrive/Belgeler/LastProject/32bits {C:/Users/amete/OneDrive/Belgeler/LastProject/32bits/lessthan_32bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/amete/OneDrive/Belgeler/LastProject/32bits {C:/Users/amete/OneDrive/Belgeler/LastProject/32bits/fulladder_cla_32bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/amete/OneDrive/Belgeler/LastProject/32bits {C:/Users/amete/OneDrive/Belgeler/LastProject/32bits/and_32bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/amete/OneDrive/Belgeler/LastProject/4bits {C:/Users/amete/OneDrive/Belgeler/LastProject/4bits/fulladder_cla_4bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/amete/OneDrive/Belgeler/LastProject/1bits {C:/Users/amete/OneDrive/Belgeler/LastProject/1bits/xor_1bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/amete/OneDrive/Belgeler/LastProject/1bits {C:/Users/amete/OneDrive/Belgeler/LastProject/1bits/or_1bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/amete/OneDrive/Belgeler/LastProject/1bits {C:/Users/amete/OneDrive/Belgeler/LastProject/1bits/not_1bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/amete/OneDrive/Belgeler/LastProject/1bits {C:/Users/amete/OneDrive/Belgeler/LastProject/1bits/fulladder_cla_1bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/amete/OneDrive/Belgeler/LastProject/1bits {C:/Users/amete/OneDrive/Belgeler/LastProject/1bits/and_1bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/amete/OneDrive/Belgeler/LastProject/processor {C:/Users/amete/OneDrive/Belgeler/LastProject/processor/register_block.v}
vlog -vlog01compat -work work +incdir+C:/Users/amete/OneDrive/Belgeler/LastProject/processor {C:/Users/amete/OneDrive/Belgeler/LastProject/processor/memory_block.v}
vlog -vlog01compat -work work +incdir+C:/Users/amete/OneDrive/Belgeler/LastProject/processor {C:/Users/amete/OneDrive/Belgeler/LastProject/processor/instruction_block.v}

vlog -vlog01compat -work work +incdir+C:/Users/amete/OneDrive/Belgeler/LastProject/testbench {C:/Users/amete/OneDrive/Belgeler/LastProject/testbench/testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
