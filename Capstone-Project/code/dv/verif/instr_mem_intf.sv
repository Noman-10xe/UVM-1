/////////////////////////////////////////////////////////////////////
//   							           //
//   		   Instruction Memory Interface               	   //
//                                                                 //
/////////////////////////////////////////////////////////////////////
//                                                                 //
//             Copyright (C) 2024 10xEngineers 	                   //
//             www.10xengineers.ai                                 //
//                                                                 //
/////////////////////////////////////////////////////////////////////
// FILE NAME      : instr_mem_intf.sv
// AUTHOR         : Noman Rafiq
// AUTHOR'S EMAIL : noman.rafiq@10xengineers.ai
// ------------------------------------------------------------------
// RELEASE HISTORY													 
// ------------------------------------------------------------------
// VERSION DATE        	AUTHOR         								 
// 1.0     2024-Nov-18  Noman Rafiq 						 		 
// ------------------------------------------------------------------					 
// PURPOSE  : Monitoring Requests for Instruction Memory						 
// ------------------------------------------------------------------

interface instr_mem_intf 	#(	int AddrWidth = bus_params_pkg::BUS_AW,
                  			int DataWidth = bus_params_pkg::BUS_DW
                  		) ( 
                  			input clk, rst_n 
                  		);
	
	// SIGNALS Declaration
	logic 				instr_req_o;
	logic	[AddrWidth-1	:0]	instr_addr_o;
	logic				instr_gnt_i;
	logic				instr_rvalid_i;
	logic	[DataWidth-1	:0]	instr_rdata_i;
	logic				instr_err_i;
	///////////////////////////////////////////////////////////////
	//
	// Drive signals back to DUT
	//
	clocking instr_driver @(posedge clk);
	input 		instr_req_o;
	input 		instr_addr_o;
	output		instr_gnt_i;
	output		instr_rvalid_i;
	output		instr_rdata_i;
	output		instr_err_i;
	endclocking : instr_driver
	///////////////////////////////////////////////////////////////
	//
	// Monitor Requests clocking block for instruction memory
	//
	clocking instr_monitor @(posedge clk);
	input 		instr_req_o;
	input 		instr_addr_o;
	input		instr_gnt_i;
	input		instr_rvalid_i;
	input		instr_rdata_i;
	input		instr_err_i;
	endclocking : instr_monitor
	///////////////////////////////////////////////////////////////
	//
	// Wait Clocks
	//
	task automatic wait_clks(input int num);
    	repeat (num) @(posedge clk);
  	endtask
  	///////////////////////////////////////////////////////////////
  	task automatic wait_neg_clks(input int num);
    	repeat (num) @(negedge clk);
  	endtask
endinterface : instr_mem_intf
