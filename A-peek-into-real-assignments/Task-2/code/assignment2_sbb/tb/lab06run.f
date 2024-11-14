/*-----------------------------------------------------------------
File name     : lab06run.f
Developers    : Kathleen Meade, Brian Dickinson
Created       : 01/04/11
Description   : lab06_vif simulator run file
Notes         : From the Cadence "SystemVerilog Accelerated Verification with UVM" training
-------------------------------------------------------------------
Copyright Cadence Design Systems (c)2019
-----------------------------------------------------------------*/
// 64 bit option required for AWS labs 
//-full64

-sverilog

// include directories, starting with UVM src directory


// options
//+UVM_VERBOSITY=UVM_HIGH
//+UVM_TESTNAME=base_test
//+UVM_TESTNAME=short_yapp_012
//+UVM_TESTNAME=incr_payload_test
//+UVM_TESTNAME=short_packet_test
//+UVM_TESTNAME=exhaustive_seq_test
//+SVSEED=random 

// uncomment for gui
//-gui
//+access+rwc

// default timescale
-timescale=1ns/1ns

// compile files
// UVC packages
../../channel/sv/channel_pkg.sv
+incdir+../../channel/sv/

../../clock_and_reset/sv/clock_and_reset_pkg.sv
+incdir+../../clock_and_reset/sv/

../../hbus/sv/hbus_pkg.sv
+incdir+../../hbus/sv/

../sv/yapp_pkg.sv
../../router_rtl/tb/router_module.sv +incdir+../../router_rtl/tb +incdir+../../channel/sv/ +incdir+../../hbus/sv/ +incdir+../sv/

// UVC interfaces
../../channel/sv/channel_if.sv
../../clock_and_reset/sv/clock_and_reset_if.sv
../../hbus/sv/hbus_if.sv
../sv/yapp_if.sv

// clock generator module
clkgen.sv
// top module for UVM test environment
tb_top.sv

// accelerated top module for interface instance
//hw_top_no_dut.sv
hw_top_dut.sv
// router RTL
../../router_rtl/sv/yapp_router.sv
