/////////////////////////////////////////////////////////////////////
//   							           //
//   		 	Data Interface Monitor			   //
//                                                                 //
/////////////////////////////////////////////////////////////////////
//                                                                 //
//             Copyright (C) 2024 10xEngineers 	                   //
//             www.10xengineers.ai                                 //
//                                                                 //
/////////////////////////////////////////////////////////////////////
// FILE NAME      : data_monitor.sv
// AUTHOR         : Noman Rafiq
// AUTHOR'S EMAIL : noman.rafiq@10xengineers.ai
// ------------------------------------------------------------------
// RELEASE HISTORY													 
// ------------------------------------------------------------------
// VERSION DATE        	AUTHOR         								 
// 1.0     2024-Nov-20  Noman Rafiq 						 		 
// ------------------------------------------------------------------					 
// PURPOSE  : For Monitoring Signals From LSU						 
// ------------------------------------------------------------------

`define MON_DATA vif.data_monitor
class data_monitor extends uvm_monitor;

  `uvm_component_utils(data_monitor)
  
  uvm_analysis_port #(data_seq_item) ap;
  
  virtual data_mem_intf vif;
  
  //  Current monitored transaction  
  protected data_seq_item seq;
  
  function new(string name = "data_monitor", uvm_component parent);
  	super.new(name, parent);
  	ap = new("ap", this);
  endfunction : new

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if ( !uvm_config_db #( virtual data_mem_intf )::get(this, get_full_name(), "data_intf", vif) )
    	`uvm_fatal("NOVIF",{"virtual interface must be set for: ",get_full_name(),".vif"})
  endfunction : build_phase
  
  // run_phase
  virtual task run_phase(uvm_phase phase);
    fork
      collect_transactions();
    join
  endtask : run_phase

  // Collect transactions
  virtual protected task collect_transactions();
   // Create Transaction
   seq = data_seq_item::type_id::create("seq", this);
   forever begin 
      	// collect transaction
      	vif.wait_clks(2);
        seq.data_req_o			<= `MON_DATA.data_req_o;
        seq.data_addr_o 		<= `MON_DATA.data_addr_o;
        seq.data_we_o			<= `MON_DATA.data_we_o;
        seq.data_be_o			<= `MON_DATA.data_be_o;
        seq.data_wdata_o		<= `MON_DATA.data_wdata_o;
        seq.data_gnt_i			<= `MON_DATA.data_gnt_i;
        seq.data_rvalid_i		<= `MON_DATA.data_rvalid_i;
        seq.data_err_i			<= `MON_DATA.data_err_i;
        seq.data_rdata_i		<= `MON_DATA.data_rdata_i;
        
      `uvm_info(get_type_name(), $sformatf("Transaction Collected :\n%s",seq.sprint()), UVM_LOW)
      
      	// Broadcast transaction to the rest of the environment
      	ap.write(seq);
  end
  endtask : collect_transactions
  
endclass : data_monitor
