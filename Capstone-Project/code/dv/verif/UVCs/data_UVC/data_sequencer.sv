/////////////////////////////////////////////////////////////////////
//   							           //
//   		  	   Data Sequencer			   //
//                                                                 //
/////////////////////////////////////////////////////////////////////
//                                                                 //
//             Copyright (C) 2024 10xEngineers 	                   //
//             www.10xengineers.ai                                 //
//                                                                 //
/////////////////////////////////////////////////////////////////////
// FILE NAME      : data_sequencer.sv
// AUTHOR         : Noman Rafiq
// AUTHOR'S EMAIL : noman.rafiq@10xengineers.ai
// ------------------------------------------------------------------
// RELEASE HISTORY													 
// ------------------------------------------------------------------
// VERSION DATE        	AUTHOR         								 
// 1.0     2024-Nov-20  Noman Rafiq 						 		 
// ------------------------------------------------------------------
class data_sequencer extends uvm_sequencer #(data_seq_item);
    
    `uvm_component_utils(data_sequencer)

    function new(string name = "data_sequencer", uvm_component parent);
       super.new(name, parent);
    endfunction : new
 
 endclass : data_sequencer
