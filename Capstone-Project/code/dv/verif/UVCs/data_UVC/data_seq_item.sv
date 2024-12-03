/////////////////////////////////////////////////////////////////////
//   							           //
//   		 	Data Sequence Item			   //
//                                                                 //
/////////////////////////////////////////////////////////////////////
//                                                                 //
//             Copyright (C) 2024 10xEngineers 	                   //
//             www.10xengineers.ai                                 //
//                                                                 //
/////////////////////////////////////////////////////////////////////
// FILE NAME      : data_seq_item.sv
// AUTHOR         : Noman Rafiq
// AUTHOR'S EMAIL : noman.rafiq@10xengineers.ai
// ------------------------------------------------------------------
// RELEASE HISTORY													 
// ------------------------------------------------------------------
// VERSION DATE        	AUTHOR         								 
// 1.0     2024-Nov-20  Noman Rafiq 						 		 
// ------------------------------------------------------------------

class data_seq_item extends uvm_sequence_item;
	
	bit				data_req_o;
	bit	[	31	:0]	data_addr_o;
	bit				data_we_o;
	bit	[	3  	:0]	data_be_o;
	bit	[	31	:0]	data_wdata_o;
	bit	[	6  	:0]	data_wdata_intg_o;
	bit				data_gnt_i;
	bit				data_rvalid_i;
	bit				data_err_i;
	bit	[	31	:0]	data_rdata_i;
	bit	[	6  	:0]	data_rdata_intg_i;
	
	// Constructor
	function new ( string name = "data_seq_item" );
		super.new(name);
	endfunction : new
	
	`uvm_object_utils_begin(data_seq_item)
	    	`uvm_field_int      (data_addr_o,	UVM_DEFAULT)
	    	`uvm_field_int      (data_req_o,	UVM_DEFAULT)
	    	`uvm_field_int      (data_we_o,		UVM_DEFAULT)
	    	`uvm_field_int      (data_be_o,		UVM_DEFAULT)
	    	`uvm_field_int      (data_wdata_o,	UVM_DEFAULT)
	    	`uvm_field_int      (data_wdata_intg_o,	UVM_DEFAULT)
	    	`uvm_field_int      (data_gnt_i,	UVM_DEFAULT)
	    	`uvm_field_int      (data_rvalid_i,	UVM_DEFAULT)
	    	`uvm_field_int      (data_err_i,	UVM_DEFAULT)
	    	`uvm_field_int      (data_rdata_i,	UVM_DEFAULT)
	    	`uvm_field_int      (data_rdata_intg_i,	UVM_DEFAULT)
  	`uvm_object_utils_end
	
	
endclass : data_seq_item
