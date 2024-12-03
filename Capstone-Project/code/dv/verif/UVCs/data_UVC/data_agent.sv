/////////////////////////////////////////////////////////////////////
//   							           //
//   		     	Data Memory Agent			   //
//                                                                 //
/////////////////////////////////////////////////////////////////////
//                                                                 //
//             Copyright (C) 2024 10xEngineers 	                   //
//             www.10xengineers.ai                                 //
//                                                                 //
/////////////////////////////////////////////////////////////////////
// FILE NAME      : data_agent.sv
// AUTHOR         : Noman Rafiq
// AUTHOR'S EMAIL : noman.rafiq@10xengineers.ai
// ------------------------------------------------------------------
// RELEASE HISTORY													 
// ------------------------------------------------------------------
// VERSION DATE        	AUTHOR         								 
// 1.0     2024-Nov-20  Noman Rafiq 						 		 
// ------------------------------------------------------------------					 
// PURPOSE  : For Managing Data Side Interface						 
// ------------------------------------------------------------------

class data_agent extends uvm_agent;

  data_sequencer	sequencer;
  data_driver		driver;
  data_monitor 		monitor;

  `uvm_component_utils(data_agent)
  
  function new(string name = "data_agent", uvm_component parent);
  	super.new(name, parent);
  endfunction : new

  virtual function void build_phase(uvm_phase phase);
  	super.build_phase(phase);
	driver		= data_driver::type_id::create("driver", this);
	monitor 	= data_monitor::type_id::create("monitor", this);
	sequencer	= data_sequencer::type_id::create("sequencer", this);
  endfunction : build_phase
  
  virtual function void connect_phase(uvm_phase phase);
  	driver.seq_item_port.connect(sequencer.seq_item_export);
  endfunction : connect_phase

endclass : data_agent
