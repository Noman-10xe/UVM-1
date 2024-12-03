/////////////////////////////////////////////////////////////////////
//   							           //
//   		  	   Virtual Sequencer			   //
//                                                                 //
/////////////////////////////////////////////////////////////////////
//                                                                 //
//             Copyright (C) 2024 10xEngineers 	                   //
//             www.10xengineers.ai                                 //
//                                                                 //
/////////////////////////////////////////////////////////////////////
// FILE NAME      : virtual_sequencer.sv
// AUTHOR         : Noman Rafiq
// AUTHOR'S EMAIL : noman.rafiq@10xengineers.ai
// ------------------------------------------------------------------
// RELEASE HISTORY													 
// ------------------------------------------------------------------
// VERSION DATE        	AUTHOR         								 
// 1.0     2024-Nov-20  Noman Rafiq 						 		 
// ------------------------------------------------------------------
class virtual_sequencer extends uvm_sequencer;
    
    `uvm_component_utils(virtual_sequencer)

    function new(string name = "virtual_sequencer", uvm_component parent);
       super.new(name, parent);
    endfunction
    
    instr_sequencer instr_seqr;
    data_sequencer data_seqr;

endclass : virtual_sequencer
