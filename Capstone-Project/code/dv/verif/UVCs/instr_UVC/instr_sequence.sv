/////////////////////////////////////////////////////////////////////
//   							           //
//   		  	Instruction Sequence			   //
//                                                                 //
/////////////////////////////////////////////////////////////////////
//                                                                 //
//             Copyright (C) 2024 10xEngineers 	                   //
//             www.10xengineers.ai                                 //
//                                                                 //
/////////////////////////////////////////////////////////////////////
// FILE NAME      : instr_sequence.sv
// AUTHOR         : Noman Rafiq
// AUTHOR'S EMAIL : noman.rafiq@10xengineers.ai
// ------------------------------------------------------------------
// RELEASE HISTORY													 
// ------------------------------------------------------------------
// VERSION DATE        	AUTHOR         								 
// 1.0     2024-Nov-19  Noman Rafiq 						 		 
// ------------------------------------------------------------------

// Import Memory Model Package
import mem_model_pkg::*; 

class instr_sequence extends uvm_sequence #(instr_seq_item);
    
    `uvm_object_utils(instr_sequence)
    `uvm_declare_p_sequencer(instr_sequencer);
    
    mem_model instr_mem;	// Instruction Memory
    instr_seq_item req;		// request item
    instr_seq_item res;		// response item
    
    function new(string name = "instr_sequence");
       super.new(name);
    endfunction : new
    
    // Sequence Body
    virtual task body();
        forever begin
            `uvm_info(get_full_name(), "Instruction SEQ started", UVM_NONE)
            
            p_sequencer.FIFO.get(req);
            `uvm_info("DBG", "INSTR REQ retrieved from VSEQR FIFO", UVM_DEBUG);
            res = instr_seq_item::type_id::create ("res");

            start_item(res);
            res.instr_req_o	= req.instr_req_o;
            res.instr_addr_o 	= req.instr_addr_o;          
            res.instr_rdata_i 	= instr_mem.read(req.instr_addr_o);
            finish_item(res);
            `uvm_info("DBG", "Sending Response", UVM_DEBUG);
        end
    endtask
 
 endclass : instr_sequence
