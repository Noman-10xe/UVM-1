/////////////////////////////////////////////////////////////////////
//   							           //
//   		  	Instruction Sequencer			   //
//                                                                 //
/////////////////////////////////////////////////////////////////////
//                                                                 //
//             Copyright (C) 2024 10xEngineers 	                   //
//             www.10xengineers.ai                                 //
//                                                                 //
/////////////////////////////////////////////////////////////////////
// FILE NAME      : instr_sequencer.sv
// AUTHOR         : Noman Rafiq
// AUTHOR'S EMAIL : noman.rafiq@10xengineers.ai
// ------------------------------------------------------------------
// RELEASE HISTORY													 
// ------------------------------------------------------------------
// VERSION DATE        	AUTHOR         								 
// 1.0     2024-Nov-19  Noman Rafiq 						 		 
// ------------------------------------------------------------------
class instr_sequencer extends uvm_sequencer #(instr_seq_item);
    
    `uvm_component_utils(instr_sequencer)
    
    //analysis fifo
    uvm_tlm_analysis_fifo #(instr_seq_item) FIFO;

    function new(string name = "instr_sequencer", uvm_component parent);
       super.new(name, parent);
       FIFO = new("FIFO", this);
    endfunction : new
 
 endclass : instr_sequencer
