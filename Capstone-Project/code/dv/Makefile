# Seed for RTL simulation
SEED		:= $(shell date +%y%m%d%H%M)

# This is the top-level output directory. Everything we generate goes in here. This allows us to run multiple times without deleting existing results.
OUT		:= out
SIM_LOGS	:= sim_logs
OUT_SEED	:= $(OUT)/seed-$(SEED)
OUT_DIR	:= $(dir $(OUT)/)
OUT_SEED_LIB	:= $(OUT_SEED)/INCA_libs
OUT_SEED_TEST	:= $(OUT_SEED)/test
OUT_LOGS	:= $(SIM_LOGS)

UVMHOME		:= /usr/synopsys/vcs-L-2016.06/bin/vcs

#Directories
RTL		:= rtl
VERIF		:= verif
TESTS		:= tests
INSTR_UVC	:= verif/UVCs/instr_UVC
DATA_UVC	:= verif/UVCs/data_UVC
ENV_UVC		:= verif/UVCs/env_UVC

RTL_TOP		:= rtl/ibex_top_tracing.sv
TB_TOP		:= verif/tb_top.sv
DATA_INTF	:= verif/data_mem_intf.sv
INSTR_INTF	:= verif/instr_mem_intf.sv

#######################################
#######		Packages	#######
BUS_PKG		:= verif/bus_params_pkg.sv
MEM_PKG		:= verif/mem_model_pkg.sv
RISCV_PKG	:= verif/riscv_signature_pkg.sv
INSTR_PKG	:= verif/UVCs/instr_UVC/instr_mem_pkg.sv
DATA_PKG	:= verif/UVCs/data_UVC/data_mem_pkg.sv
IBEX_PKG	:= rtl/ibex_pkg.sv


#######################################
##############	VCS	###############	
VCS		:= vcs
bin		?=
BIN_NAME	= $(patsubst %.bin, %, $(notdir $(bin)))

BINARY		:= $(OUT_SEED_TEST)/$(ASM_TEST).bin
ASM_TEST	:= example

ISA		:= rv32imcb
MABI		:= ilp32

BOOT_ADDR	:= 0xFFFFFF80

#change this according to your toolchain installation path
RISCV_TOOLCHAIN:= /home/xe-user106/RISCV64/riscv64-unknown-elf-toolchain/riscv/riscv64-unknown-elf
RISCV_GCC	:= $(RISCV_TOOLCHAIN)/bin/riscv32-unknown-elf-gcc
RISCV_OBJCOPY	:= $(RISCV_TOOLCHAIN)/bin/riscv32-unknown-elf-objcopy
RISCV_OBJDUMP	:= $(RISCV_TOOLCHAIN)/bin/riscv32-unknown-elf-objdump

# This is a list of directories that are automatically generated
gen-dirs	:= $(OUT_DIR) $(OUT_SEED) $(OUT_SEED_LIB) $(OUT_SEED_TEST) $(OUT_LOGS)

all:

$(gen-dirs): %:
	mkdir -p $@

#test compilation only
test-compile: $(gen-dirs)
ifndef RISCV_TOOLCHAIN
	$(error "Please set environment variable RISCV_TOOLCHAIN")
endif
	cp $(TESTS)/$(ASM_TEST).S $(OUT_SEED_TEST)
	$(RISCV_GCC) -static -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles $(OUT_SEED_TEST)/$(ASM_TEST).S -Ttext 0x80000000 -mno-strict-align -o $(OUT_SEED_TEST)/$(ASM_TEST).o -march=rv32imcb -mabi=ilp32
	$(RISCV_OBJDUMP) -D $(OUT_SEED_TEST)/$(ASM_TEST).o > $(OUT_SEED_TEST)/$(ASM_TEST).dump
	$(RISCV_OBJCOPY) -O binary $(OUT_SEED_TEST)/$(ASM_TEST).o $(OUT_SEED_TEST)/$(ASM_TEST).bin

#rtl compilation only
rtl-compile: $(gen-dirs)
ifndef VCS
	$(error "vcs command not found")
endif
	vcs \
		-sverilog \
		-elaborate \
		$(RTL_TOP) \
		+incdir+$(RTL) \
		-nclibdirname $(OUT_SEED_LIB)
	mv csrc simv *.daidir $(OUT_SEED)

#tb+rtl compilation
tb-compile: $(gen-dirs)
ifndef VCS
	$(error "vcs command not found")
endif
	vcs \
		-sverilog \
		-ntb_opts uvm-1.2 \
		-debug_access+all \
		-cm line+cond+tgl+branch+assert \
		$(BUS_PKG) \
		$(RISCV_PKG) \
		$(MEM_PKG) \
		+incdir+$(VERIF) \
		$(INSTR_INTF) \
		$(DATA_INTF) \
		$(INSTR_PKG) \
		+incdir+$(INSTR_UVC) \
		$(DATA_PKG) \
		+incdir+$(DATA_UVC) \
		+incdir+$(ENV_UVC) \
		$(RTL_TOP) \
		+incdir+$(RTL) \
		$(TB_TOP) \
		+incdir+$(VERIF)

#tb+rtl simulation
sim: $(gen-dirs)
ifndef VCS
	$(error "vcs command not found")
endif
	./simv +bin=$(bin) -cm line+cond+tgl+branch+assert \
	./simv +bin=$(bin) > $(BIN_NAME).log \
	# +UVM_VERBOSITY=UVM_DEBUG -gui & \
	dve -covdir simv.vdb/ -full64
	urg -dir simv.vdb -format text -group show_bin_values
	cp -r *.vcd *.key csrc simv *.h *.daidir $(OUT_SEED_TEST)
	cp -r $(OUT_SEED) $(OUT_LOGS)
	
.PHONY: clean

clean:
	rm -rf $(OUT_DIR) *.vcd *.key csrc simv *.h *.daidir *.log DVEfiles
