/////////////////////////////////////////////////////////////////////
//   							           //
//   		 Instruction Sequence Item			   //
//                                                                 //
/////////////////////////////////////////////////////////////////////
//                                                                 //
//             Copyright (C) 2024 10xEngineers 	                   //
//             www.10xengineers.ai                                 //
//                                                                 //
/////////////////////////////////////////////////////////////////////
// FILE NAME      : instr_seq_item.sv
// AUTHOR         : Noman Rafiq
// AUTHOR'S EMAIL : noman.rafiq@10xengineers.ai
// ------------------------------------------------------------------
// RELEASE HISTORY													 
// ------------------------------------------------------------------
// VERSION DATE        	AUTHOR         								 
// 1.0     2024-Nov-19  Noman Rafiq 						 		 
// ------------------------------------------------------------------

class instr_seq_item extends uvm_sequence_item;
	
	bit 				instr_req_o;
	bit	[	31	:0]	instr_addr_o;
	bit				instr_gnt_i;
	bit				instr_rvalid_i;
	bit	[	31	:0]	instr_rdata_i;
	bit				instr_err_i;
	
	// Constructor
	function new ( string name = "instr_seq_item" );
		super.new(name);
	endfunction
	
	`uvm_object_utils_begin(instr_seq_item)
	    	`uvm_field_int      (instr_req_o,	UVM_DEFAULT)
	    	`uvm_field_int      (instr_addr_o,	UVM_DEFAULT)
	    	`uvm_field_int      (instr_gnt_i,	UVM_DEFAULT)
	    	`uvm_field_int      (instr_rvalid_i,	UVM_DEFAULT)
	    	`uvm_field_int      (instr_rdata_i,	UVM_DEFAULT)
	    	`uvm_field_int      (instr_err_i,	UVM_DEFAULT)
  	`uvm_object_utils_end
	
endclass : instr_seq_item
