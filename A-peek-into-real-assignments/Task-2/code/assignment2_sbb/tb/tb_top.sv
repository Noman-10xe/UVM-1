/*-----------------------------------------------------------------
File name     : tb_top.sv
Developers    : Kathleen Meade, Brian Dickinson
Created       : 01/04/11
Description   : lab06_vif UVM top module for acceleration
              : Instantiates UVM test environment
Notes         : From the Cadence "SystemVerilog Accelerated Verification with UVM" training
-------------------------------------------------------------------
Copyright Cadence Design Systems (c)2015
-----------------------------------------------------------------*/

module tb_top;

  // import the UVM library
  import uvm_pkg::*;

  // include the UVM macros
  `include "uvm_macros.svh"
  
  // import the YAPP UVC package
  import yapp_pkg::*;
  
  // channel_pkg
  import channel_pkg::*;
  
  // clock_and_reset_pkg
  import clock_and_reset_pkg::*;
  
  // hbus_pkg
  import hbus_pkg::*;
  
  // Router Package
  import router_pkg::*;
  
  // multi-channel sequencer
  `include "router_mcsequencer.sv"
  
  // include the router testbench file
  `include "router_tb.sv"
  
  // multi-channel sequence library
  `include "router_mcseqs_lib.sv"

  // include the test_lib.sv file
  `include "router_test_lib.sv"

  initial begin
    //////////////////////////////////////////////////////////////////////////////////////////
    //
    // Setting Configurations
    //
    
    // clock and reset intf
    clock_and_reset_vif_config::set(null,"*.tb.clk_n_rst.*","vif", hw_top.clk_n_rst_intf);
    
    // hbus intf
    hbus_vif_config::set(null,"*.tb.hbus.*","vif", hw_top.hbus_intf);
    
    // channel interfaces
    channel_vif_config::set(null,"*.tb.channel0.*","vif", hw_top.chan0_intf);
    channel_vif_config::set(null,"*.tb.channel1.*","vif", hw_top.chan1_intf);
    channel_vif_config::set(null,"*.tb.channel2.*","vif", hw_top.chan2_intf);
        
    yapp_vif_config::set(null,"*.tb.yapp.tx_agent.*","vif", hw_top.in0);
    run_test("mc_router_test");
  end
  
  initial begin
  $dumpvars;
  $dumpfile("dump.vcd");
  end

endmodule
