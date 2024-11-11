class router_mcsequencer extends uvm_sequencer;

   // Registration
  `uvm_component_utils(router_mcsequencer)
  
  // Constructor - required syntax for UVM automation and utilities
  function new (string name, uvm_component parent);
    super.new(name, parent);
  endfunction : new
  
  // References
  yapp_tx_sequencer yapp_seq;
  hbus_master_sequencer hbus_master_seq;
  
    
  // start_of_simulation
  function void start_of_simulation_phase(uvm_phase phase);
    `uvm_info(get_type_name(), {"start of simulation for ", get_full_name()}, UVM_HIGH)
  endfunction : start_of_simulation_phase
  
  
  function void end_of_elaboration_phase(uvm_phase phase);
    /////////////////////////////////////////////////////////////////////
    //
    // Multi-Channel Router Connections
    //
    
    if(!uvm_config_db #(hbus_master_sequencer)::get(null, "uvm_test_top.tb.mc_seq.*", "sequencer", hbus_master_seq))
    `uvm_fatal("FATAL", "Get Failed for hbus_master_seq in mc_seq");
    
    if(!uvm_config_db #(yapp_tx_sequencer)::get(null, "uvm_test_top.tb.mc_seq.*", "yapp_seq", yapp_seq))
    `uvm_fatal("FATAL", "Get Failed for yapp_seq in mc_seq");
    
  endfunction : end_of_elaboration_phase
  
endclass : router_mcsequencer
