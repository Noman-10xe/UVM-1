exec vcs -sverilog +incdir+./includes +incdir+./testcases ./testbench/testbench.sv ./rtl/up_counter.sv -ntb_opts uvm-1.2 -o simv

if { [file exists simv] } {
	exec ./simv     > log.txt
	
	exec dve -vpd dump.vcd &
	
} else {
	puts "Compilation Failed"
}
