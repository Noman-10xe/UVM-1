/////////////////////////////////////////////////////////////////////
//   							           //
//   		  	   TB Top				   //
//                                                                 //
/////////////////////////////////////////////////////////////////////
//                                                                 //
//             Copyright (C) 2024 10xEngineers 	                   //
//             www.10xengineers.ai                                 //
//                                                                 //
/////////////////////////////////////////////////////////////////////
// FILE NAME      : tb_top.sv
// AUTHOR         : Noman Rafiq
// AUTHOR'S EMAIL : noman.rafiq@10xengineers.ai
// ------------------------------------------------------------------
// RELEASE HISTORY													 
// ------------------------------------------------------------------
// VERSION DATE        	AUTHOR         								 
// 1.0     2024-Nov-22  Noman Rafiq 						 		 
// ------------------------------------------------------------------
`include "dut_probe_intf.sv"


/////////////////////////////////////////////////////////////
//
// Coverage
//
`include "core_ibex_fcov_if.sv"
`include "core_ibex_fcov_bind.sv"

module tb_top;

	/////////////////////////////////////////////////////////////
	//
	// includes
	import uvm_pkg::*;
	`include "uvm_macros.svh"
	/////////////////////////////////////////////////////////////
	import bus_params_pkg::*;
	import mem_model_pkg::*;
	import riscv_signature_pkg::*;
	/////////////////////////////////////////////////////////////
	import instr_mem_pkg::*;
	import data_mem_pkg::*;
	/////////////////////////////////////////////////////////////
	`include "virtual_sequencer.sv"
	`include "virtual_sequence.sv"
	`include "environment.sv"
	`include "base_test.sv"
	/////////////////////////////////////////////////////////////
	bit clk, rst_n;
	/////////////////////////////////////////////////////////////
	//
	// interfaces
	//
	instr_mem_intf instr_intf (.clk(clk), .rst_n(rst_n) );
	data_mem_intf data_intf (.clk(clk), .rst_n(rst_n) );
	dut_probe_intf dut_intf (.clk(clk), .rst_n(rst_n));
	/////////////////////////////////////////////////////////////
	//
	// DUT Instantiation
	//
	ibex_top_tracing #(
	    .PMPEnable        	(	0			),
	    .PMPGranularity   	(	0			),
	    .PMPNumRegions    	(	4			),
	    .MHPMCounterNum   	(	0			),
	    .MHPMCounterWidth 	(	40			),
	    .RV32E            	(	0			),
	    .RV32M            	(	ibex_pkg::RV32MFast	),
	    .RV32B            	(	ibex_pkg::RV32BNone	),
	    .RegFile          	(	ibex_pkg::RegFileFF	),
	    .BranchTargetALU  	(	0			),
	    .WritebackStage   	(	0			),
	    .ICache           	(	0			),
	    .ICacheECC        	(	0			),
	    .BranchPredictor  	(	0			),
	    .DbgTriggerEn     	(	0			),
	    .DbgHwBreakNum    	(	1			),
	    .SecureIbex       	(	0			),
	    .DmHaltAddr       	(	32'h1A110800		),
	    .DmExceptionAddr  	(	32'h1A110808		)
	) DUT (
	    // Clock and Reset
	    .clk_i		(	clk			),
	    .rst_ni		(	rst_n			),
	    .test_en_i		(				),     // enable all clock gates for testing
	    .scan_rst_ni	(				),
	    .ram_cfg_i		(				),
	    .hart_id_i		(				),
	    .boot_addr_i	(	dut_intf.boot_addr_i	),
	    //////////////////////////////////////////////////////
	    //
	    // Instruction memory interface
	    .instr_req_o	(	instr_intf.instr_req_o	),
	    .instr_gnt_i	(	instr_intf.instr_gnt_i	),
	    .instr_rvalid_i	(	instr_intf.instr_rvalid_i),
	    .instr_addr_o	(	instr_intf.instr_addr_o	),
	    .instr_rdata_i	(	instr_intf.instr_rdata_i),
	    .instr_err_i	(	instr_intf.instr_err_i	),
	    //////////////////////////////////////////////////////
	    //
	    // Data memory interface
	    .data_req_o		(	data_intf.data_req_o	),
	    .data_gnt_i		(	data_intf.data_gnt_i	),
	    .data_rvalid_i	(	data_intf.data_rvalid_i	),
	    .data_we_o		(	data_intf.data_we_o	),
	    .data_be_o		(	data_intf.data_be_o	),
	    .data_addr_o	(	data_intf.data_addr_o	),
	    .data_wdata_o	(	data_intf.data_wdata_o	),
	    .data_rdata_i	(	data_intf.data_rdata_i	),
	    .data_err_i		(	data_intf.data_err_i	),
	    //////////////////////////////////////////////////////
	    //
	    // Interrupt inputs
	    .irq_software_i	(				),
	    .irq_timer_i	(				),
	    .irq_external_i	(				),
	    .irq_fast_i		(				),
	    .irq_nm_i		(				),       // non-maskeable interrupt
	    //////////////////////////////////////////////////////
	    //
	    // Debug Interface
	    .debug_req_i	(	0			),
	    .crash_dump_o	(	0			),
	    //////////////////////////////////////////////////////
	    //
	    // CPU Control Signals
	    .fetch_enable_i	(	dut_intf.fetch_enable_i	),
	    .alert_minor_o	(	dut_intf.alert_minor_o	),
	    .alert_major_o	(	dut_intf.alert_major_o	),
	    .core_sleep_o	(	dut_intf.core_sleep_o	)
	);
	/////////////////////////////////////////////////////////
	initial begin
		$dumpvars;
		$dumpfile("waveform.vcd");
		run_test("base_test");
	end
	/////////////////////////////////////////////////////////
	always #5 clk = ~clk;
	
	initial begin
		rst_n = 0;
		#30;
		rst_n = 1;
	end
	
	initial begin
		////////////////////////////////////////////////////////////////////////////////////////
		//
		// Set Interfaces down the hierarchy
		//
		uvm_config_db #(virtual instr_mem_intf)	::set(null, "*", "instr_intf", instr_intf);
		uvm_config_db #(virtual data_mem_intf)	::set(null, "*", "data_intf", data_intf);
		uvm_config_db #(virtual dut_probe_intf)	::set(null, "*", "dut_intf", dut_intf);
	end
endmodule : tb_top
