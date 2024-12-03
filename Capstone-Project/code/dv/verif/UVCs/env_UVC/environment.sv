/////////////////////////////////////////////////////////////////////
//   							           //
//   		  	   Environment				   //
//                                                                 //
/////////////////////////////////////////////////////////////////////
//                                                                 //
//             Copyright (C) 2024 10xEngineers 	                   //
//             www.10xengineers.ai                                 //
//                                                                 //
/////////////////////////////////////////////////////////////////////
// FILE NAME      : environment.sv
// AUTHOR         : Noman Rafiq
// AUTHOR'S EMAIL : noman.rafiq@10xengineers.ai
// ------------------------------------------------------------------
// RELEASE HISTORY													 
// ------------------------------------------------------------------
// VERSION DATE        	AUTHOR         								 
// 1.0     2024-Nov-20  Noman Rafiq 						 		 
// ------------------------------------------------------------------

class environment extends uvm_env;
    
    `uvm_component_utils(environment)
      
    instr_agent instr_agt;
    data_agent data_agt;
     
    virtual_sequencer vseqr;
    
    function new(string name = "environment", uvm_component parent = null);
       super.new(name, parent);
    endfunction : new
    
    virtual function void build_phase(uvm_phase phase); 
        super.build_phase(phase);
        instr_agt = instr_agent::type_id::create("instr_agt",this);
        data_agt = data_agent::type_id::create("data_agt",this);
        vseqr = virtual_sequencer::type_id::create("vseqr",this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        vseqr.instr_seqr = instr_agt.sequencer;
        vseqr.data_seqr = data_agt.sequencer;
    endfunction
   
 endclass : environment
