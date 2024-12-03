/////////////////////////////////////////////////////////////////////
//   							           //
//   		 Instruction Interface Monitor			   //
//                                                                 //
/////////////////////////////////////////////////////////////////////
//                                                                 //
//             Copyright (C) 2024 10xEngineers 	                   //
//             www.10xengineers.ai                                 //
//                                                                 //
/////////////////////////////////////////////////////////////////////
// FILE NAME      : instr_monitor.sv
// AUTHOR         : Noman Rafiq
// AUTHOR'S EMAIL : noman.rafiq@10xengineers.ai
// ------------------------------------------------------------------
// RELEASE HISTORY													 
// ------------------------------------------------------------------
// VERSION DATE        	AUTHOR         								 
// 1.0     2024-Nov-18  Noman Rafiq 						 		 
// ------------------------------------------------------------------					 
// PURPOSE  : For Monitoring Requests to Instruction Memory				 		 
// ------------------------------------------------------------------

`define MON_IF vif.instr_monitor
class instr_monitor extends uvm_monitor;

  `uvm_component_utils(instr_monitor)
  
  uvm_analysis_port #(instr_seq_item) ap;
  
  virtual instr_mem_intf vif;
  
  //  Current monitored transaction  
  protected instr_seq_item req;
  
  function new(string name = "instr_monitor", uvm_component parent);
  	super.new(name, parent);
  	ap = new("ap", this);
  endfunction : new

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if ( !uvm_config_db #( virtual instr_mem_intf )::get(this, get_full_name(), "instr_intf", vif) )
    	`uvm_fatal("NOVIF",{"virtual interface must be set for: ",get_full_name(),".vif"});
  endfunction : build_phase
  
  // run_phase
  virtual task run_phase(uvm_phase phase);
  	`uvm_info(get_type_name(), "Inside run_phase", UVM_DEBUG)
      collect_transactions();
      `uvm_info(get_type_name(), "Back from Collect_trans()", UVM_DEBUG)
  endtask : run_phase

  // Collect transactions
  virtual protected task collect_transactions();
   // Create Transaction
   req = instr_seq_item::type_id::create("req", this);
   forever begin 
      	// collect transaction
      	vif.wait_clks(2);
        req.instr_req_o		<= `MON_IF.instr_req_o;
        req.instr_addr_o 	<= `MON_IF.instr_addr_o;
        req.instr_gnt_i		<= `MON_IF.instr_gnt_i;
        req.instr_rvalid_i 	<= `MON_IF.instr_rvalid_i;
        req.instr_rdata_i	<= `MON_IF.instr_rdata_i;
        req.instr_err_i 	<= `MON_IF.instr_err_i;
        
      `uvm_info(get_type_name(), $sformatf("Transaction Collected :\n%s",req.sprint()), UVM_LOW)
      
      	// Broadcast transaction to the rest of the environment
      	ap.write(req);
  end
  endtask : collect_transactions
  
endclass : instr_monitor
