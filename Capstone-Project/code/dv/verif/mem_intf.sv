/////////////////////////////////////////////////////////////////////
//   							           //
//   		   IBEX Core Memory Interface                 	   //
//                                                                 //
/////////////////////////////////////////////////////////////////////
//                                                                 //
//             Copyright (C) 2024 10xEngineers 	                   //
//             www.10xengineers.ai                                 //
//                                                                 //
/////////////////////////////////////////////////////////////////////
// FILE NAME      : mem_intf.sv
// AUTHOR         : Noman Rafiq
// AUTHOR'S EMAIL : noman.rafiq@10xengineers.ai
// ------------------------------------------------------------------
// RELEASE HISTORY													 
// ------------------------------------------------------------------
// VERSION DATE        	AUTHOR         								 
// 1.0     2024-Nov-16  Noman Rafiq 						 		 
// ------------------------------------------------------------------					 
// PURPOSE  : Monitoring Signals						 
// ------------------------------------------------------------------

interface mem_intf #(	int AddrWidth = bus_params_pkg::BUS_AW,
                  	int DataWidth = bus_params_pkg::BUS_DW
                  	) ( 
                  	input clk 
                  	);
	
	// SIGNALS Declaration
	logic 		instr_req_o;
	logic 		instr_addr_o		[	AddWidth-1:0];
	logic		instr_gnt_i;
	logic		instr_rvalid_i;
	logic		instr_rdata_i		[	DataWidth-1:0];
	logic		instr_rdata_intg_i	[		6  :0];
	logic		instr_err_i;
	///////////////////////////////////////////////////////////////
	logic		data_req_o;
	logic		data_addr_o		[	DataWidth-1:0];
	logic		data_we_o;
	logic		data_be_o		[		3  :0];
	logic		data_wdata_o		[	DataWidth-1:0];
	logic		data_wdata_intg_o	[		6  :0];
	logic		data_gnt_i;
	logic		data_rvalid_i;
	logic		data_err_i;
	logic		data_rdata_i		[	DataWidth-1:0];
	logic		data_rdata_intg_i	[		6  :0];
	
	
	///////////////////////////////////////////////////////////////
	//
	//
	// Request clocking block for instruction memory
	//
	clocking request_driver_cb @(posedge clk);
	output 		instr_req_o;
	output 		instr_addr_o;
	input		instr_gnt_i;
	input		instr_rvalid_i;
	input		instr_rdata_i;
	input		instr_rdata_intg_i;
	input		instr_err_i;
	endclocking : request_driver_cb
	
	
	///////////////////////////////////////////////////////////////
	//
	//
	// Response clocking block for data memory
	//
	clocking response_driver_cb @(posedge clk);
	output		data_req_o;
	output		data_addr_o;
	output		data_we_o;
	output		data_be_o;
	output		data_wdata_o;
	output		data_wdata_intg_o;
	input		data_gnt_i;
	input		data_rvalid_i;
	input		data_err_i;
	input		data_rdata_i;
	input		data_rdata_intg_i;
	endclocking : response_driver_cb
	
	
	///////////////////////////////////////////////////////////////
	//
	//
	// Monitor Clocking Block
	//
	clocking monitor_cb @(posedge clk);
	input 		instr_req_o;
	input 		instr_addr_o;
	input		instr_gnt_i;
	input		instr_rvalid_i;
	input		instr_rdata_i;
	input		instr_rdata_intg_i;
	input		instr_err_i;
	input		data_req_o;
	input		data_addr_o;
	input		data_we_o;
	input		data_be_o;
	input		data_wdata_o;
	input		data_wdata_intg_o;
	input		data_gnt_i;
	input		data_rvalid_i;
	input		data_err_i;
	input		data_rdata_i;
	input		data_rdata_intg_i;
	endclocking : monitor_cb

endinterface : mem_intf
