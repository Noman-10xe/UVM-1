/*-----------------------------------------------------------------
File name     : router_tb.sv
Developers    : Kathleen Meade, Brian Dickinson
Created       : 01/04/11
Description   : lab06_vif router testbench instantiates YAPP UVC
Notes         : From the Cadence "SystemVerilog Accelerated Verification with UVM" training
-------------------------------------------------------------------
Copyright Cadence Design Systems (c)2015
-----------------------------------------------------------------*/

//------------------------------------------------------------------------------
//
// CLASS: router_tb
//
//------------------------------------------------------------------------------

class router_tb extends uvm_env;

  // component macro
  `uvm_component_utils(router_tb)

  // yapp environment
  yapp_env yapp;
  
  // Channel UVCs
  channel_env channel0;
  channel_env channel1;
  channel_env channel2;
  
  // HBUS UVC
  hbus_env hbus;
  
  // Clock & Reset UVC
  clock_and_reset_env clk_n_rst;
  
  // Constructor - required syntax for UVM automation and utilities
  function new (string name, uvm_component parent=null);
    super.new(name, parent);
  endfunction : new

  // UVM build_phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    yapp = yapp_env::type_id::create("yapp", this);
    
    
    /////////////////////////////////////////////////////////////////////
    //
    // Instaces Creation
    //
    
    // Channel UVCS
    channel0 = channel_env::type_id::create("channel0", this);
    channel1 = channel_env::type_id::create("channel1", this);
    channel2 = channel_env::type_id::create("channel2", this);
    
    // hbus UVC instance
    hbus = hbus_env::type_id::create("hbus", this);
    
    // clock & reset UVC instance
    clk_n_rst = clock_and_reset_env::type_id::create("clk_n_rst", this);
    
    
    /////////////////////////////////////////////////////////////////////
    //
    // Configurations
    //
    
    // Setting Channel IDs
    uvm_config_int::set(this, "channel0", "channel_id", 0);
    uvm_config_int::set(this, "channel1", "channel_id", 1);
    uvm_config_int::set(this, "channel2", "channel_id", 2);
    
    // Setting num_masters & num_slaves
    uvm_config_int::set(this, "hbus", "num_masters", 1);
    uvm_config_int::set(this, "hbus", "num_slaves", 0);
     
  endfunction : build_phase

endclass : router_tb
