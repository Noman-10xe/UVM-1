/////////////////////////////////////////////////////////////////////
//   							           //
//   		   	Data Memory Interface               	   //
//                                                                 //
/////////////////////////////////////////////////////////////////////
//                                                                 //
//             Copyright (C) 2024 10xEngineers 	                   //
//             www.10xengineers.ai                                 //
//                                                                 //
/////////////////////////////////////////////////////////////////////
// FILE NAME      : data_mem_intf.sv
// AUTHOR         : Noman Rafiq
// AUTHOR'S EMAIL : noman.rafiq@10xengineers.ai
// ------------------------------------------------------------------
// RELEASE HISTORY													 
// ------------------------------------------------------------------
// VERSION DATE        	AUTHOR         								 
// 1.0     2024-Nov-18  Noman Rafiq 						 		 
// ------------------------------------------------------------------					 
// PURPOSE  : Monitoring and Driving signals for LSU						 
// ------------------------------------------------------------------

interface data_mem_intf 	#(	int AddrWidth = bus_params_pkg::BUS_AW,
                  			int DataWidth = bus_params_pkg::BUS_DW
                  		) ( 
                  			input clk, rst_n 
                  		);
                  		
	logic				data_req_o;
	logic	[DataWidth-1	:0]	data_addr_o;
	logic				data_we_o;
	logic	[	3  	:0]	data_be_o;
	logic	[DataWidth-1	:0]	data_wdata_o;
	logic				data_gnt_i;
	logic				data_rvalid_i;
	logic				data_err_i;
	logic	[DataWidth-1	:0]	data_rdata_i;
	///////////////////////////////////////////////////////////////
	//
	// Driver clocking block for LSU
	//
	clocking data_driver @(posedge clk);
	input		data_req_o;
	input		data_addr_o;
	input		data_we_o;
	input		data_be_o;
	input		data_wdata_o;
	output		data_gnt_i;
	output		data_rvalid_i;
	output		data_err_i;
	output		data_rdata_i;
	endclocking : data_driver
	///////////////////////////////////////////////////////////////
	//
	// Monitor clocking block for LSU
	//
	clocking data_monitor @(posedge clk);
	input		data_req_o;
	input		data_addr_o;
	input		data_we_o;
	input		data_be_o;
	input		data_wdata_o;
	input		data_gnt_i;
	input		data_rvalid_i;
	input		data_err_i;
	input		data_rdata_i;
	endclocking : data_monitor
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
endinterface : data_mem_intf
