/////////////////////////////////////////////////////////////////////
//   							           //
//   		  	   Virtual Sequence			   //
//                                                                 //
/////////////////////////////////////////////////////////////////////
//                                                                 //
//             Copyright (C) 2024 10xEngineers 	                   //
//             www.10xengineers.ai                                 //
//                                                                 //
/////////////////////////////////////////////////////////////////////
// FILE NAME      : virtual_sequence.sv
// AUTHOR         : Noman Rafiq
// AUTHOR'S EMAIL : noman.rafiq@10xengineers.ai
// ------------------------------------------------------------------
// RELEASE HISTORY													 
// ------------------------------------------------------------------
// VERSION DATE        	AUTHOR         								 
// 1.0     2024-Nov-20  Noman Rafiq 						 		 
// ------------------------------------------------------------------

class virtual_sequence extends uvm_sequence;
    
    `uvm_object_utils(virtual_sequence)
    
    // p_sequencer declaration
    `uvm_declare_p_sequencer(virtual_sequencer)
    
    mem_model uni_mem;		// Unified Memory
    
    instr_sequence instr_seq;
    data_sequence data_seq;
    
    function new(string name = "virtual_sequence");
       super.new(name);
    endfunction : new
    
    // Sequence pre-body()
    virtual task pre_body();
    	instr_seq	= instr_sequence::type_id::create("instr_seq");
    	data_seq	= data_sequence::type_id::create("data_seq");
    endtask
    
    // Sequence Body
    virtual task body();
    		instr_seq.instr_mem	= uni_mem;
    		data_seq.data_mem 	= uni_mem;
    	fork
    		instr_seq.start(p_sequencer.instr_seqr);
    		data_seq.start(p_sequencer.data_seqr);
    	join
    endtask
 
 endclass : virtual_sequence
