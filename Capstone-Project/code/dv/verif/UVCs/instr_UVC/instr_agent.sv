/////////////////////////////////////////////////////////////////////
//   							           //
//   		     Instruction Memory Agent			   //
//                                                                 //
/////////////////////////////////////////////////////////////////////
//                                                                 //
//             Copyright (C) 2024 10xEngineers 	                   //
//             www.10xengineers.ai                                 //
//                                                                 //
/////////////////////////////////////////////////////////////////////
// FILE NAME      : instr_agent.sv
// AUTHOR         : Noman Rafiq
// AUTHOR'S EMAIL : noman.rafiq@10xengineers.ai
// ------------------------------------------------------------------
// RELEASE HISTORY													 
// ------------------------------------------------------------------
// VERSION DATE        	AUTHOR         								 
// 1.0     2024-Nov-19  Noman Rafiq 						 		 
// ------------------------------------------------------------------					 
// PURPOSE  : For Managing Instruction Side Interface						 
// ------------------------------------------------------------------

class instr_agent extends uvm_agent;

  instr_sequencer sequencer;
  instr_driver	driver;
  instr_monitor monitor;
 
  `uvm_component_utils(instr_agent)
  
  function new(string name = "instr_agent", uvm_component parent);
  	super.new(name, parent);
  endfunction : new

  virtual function void build_phase(uvm_phase phase);
  	super.build_phase(phase);
	driver		= instr_driver::type_id::create("driver", this);
	monitor 	= instr_monitor::type_id::create("monitor", this);
	sequencer	= instr_sequencer::type_id::create("sequencer", this);
  endfunction : build_phase
  
  virtual function void connect_phase(uvm_phase phase);
  	driver.seq_item_port.connect(sequencer.seq_item_export);
        monitor.ap.connect(sequencer.FIFO.analysis_export);
  endfunction : connect_phase

endclass : instr_agent
