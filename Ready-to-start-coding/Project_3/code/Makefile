# variables
VCS = vcs -sverilog +incdir+./includes +incdir+./testcases ./testbench/testbench.sv ./rtl/design.sv -ntb_opts uvm-1.2 -o simv
SIMV = ./simv
DVE = dve -vpd dump.vcd

# Default targets
all: compile run

# Compile the design
compile:
	$(VCS)

# Run simulation and log output
run:
	@if [ -f simv ]; then \
	$(SIMV) > log.txt; \
	$(DVE) & \
	else \
	echo "Compilation Failed"; \
	fi

# Clean up generated files and directory
clean:
	rm -f simv log.txt dump.vcd dump.vcd.vpd opendatabase.log tr_db.log ucli.key vc_hdrs.h dump_vpd*.do *.setup
	rm -rf DVEfiles csrc simv.daidir ACCELLERA_OVL_VHDL_LIB work

