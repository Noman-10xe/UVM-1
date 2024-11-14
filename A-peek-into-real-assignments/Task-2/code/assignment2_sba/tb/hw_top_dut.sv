/*-----------------------------------------------------------------
File name     : hw_top_dut.sv
Developers    : Kathleen Meade, Brian Dickinson
Created       : 01/04/11
Description   : lab06_vif hardware top module for acceleration
              : instantiates clock generator, interfaces and DUT
Notes         : From the Cadence "SystemVerilog Accelerated Verification with UVM" training
-------------------------------------------------------------------
Copyright Cadence Design Systems (c)2015
-----------------------------------------------------------------*/

module hw_top;

  // Clock and reset signals
  logic [31:0]  clock_period;
  logic         run_clock;
  logic         clock;
  logic         reset;
  
  
  /////////////////////////////////////////////////////////////////////
  //
  // Interface instantiations
  //

  // Clock and Resset interface
  clock_and_reset_if clk_n_rst_intf(.clock(clock),
  			  	    .reset(reset),
  			  	    .run_clock(run_clock),
  			  	    .clock_period(clock_period)
  			  	    );
  			  
  // Channel interfaces
  channel_if chan0_intf(.clock(clock), .reset(reset));
  channel_if chan1_intf(.clock(clock), .reset(reset));
  channel_if chan2_intf(.clock(clock), .reset(reset));
  
  
  // HBUS interface
  hbus_if hbus_intf(.clock(clock), .reset(reset));
  			  			  
  

  // YAPP Interface to the DUT
  yapp_if in0(clock, reset);

  // CLKGEN module generates clock
  clkgen clkgen (
    .clock(clock ),
    .run_clock(run_clock),
    .clock_period(clock_period)
  );


  yapp_router dut(
    .reset(reset),
    .clock(clock),
    .error(),
    // YAPP interface signals connection
    .in_data(in0.in_data),
    .in_data_vld(in0.in_data_vld),
    .in_suspend(in0.in_suspend),
    // Output Channels
    //Channel 0   
    .data_0(chan0_intf.data),
    .data_vld_0(chan0_intf.data_vld),
    .suspend_0(chan0_intf.suspend),
    //Channel 1   
    .data_1(chan1_intf.data),
    .data_vld_1(chan1_intf.data_vld),
    .suspend_1(chan1_intf.suspend),
    //Channel 2   
    .data_2(chan2_intf.data),  
    .data_vld_2(chan2_intf.data_vld),
    .suspend_2(chan2_intf.suspend),
    // Host Interface Signals
    .haddr(hbus_intf.haddr),
    .hdata(hbus_intf.hdata_w),
    .hen(hbus_intf.hen),
    .hwr_rd(hbus_intf.hwr_rd));


endmodule
