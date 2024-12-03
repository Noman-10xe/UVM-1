/////////////////////////////////////////////////////////////////////
//   							           //
//   		 IBEX Core Internal Signals Interface		   //
//                                                                 //
/////////////////////////////////////////////////////////////////////
//                                                                 //
//             Copyright (C) 2024 10xEngineers 	                   //
//             www.10xengineers.ai                                 //
//                                                                 //
/////////////////////////////////////////////////////////////////////
// FILE NAME      : dut_probe_intf.sv
// AUTHOR         : Noman Rafiq
// AUTHOR'S EMAIL : noman.rafiq@10xengineers.ai
// ------------------------------------------------------------------
// RELEASE HISTORY													 
// ------------------------------------------------------------------
// VERSION DATE        	AUTHOR         								 
// 1.0     2024-Nov-18  Noman Rafiq 						 		 
// ------------------------------------------------------------------					 
// PURPOSE  : To Probe DUTs Internal Signals						 
// ------------------------------------------------------------------

interface dut_probe_intf ( input logic clk, rst_n );
     
    logic				fetch_enable_i;
    logic				alert_minor_o;
    logic				alert_major_o;
    logic				core_sleep_o;
    logic [	31	:0]             boot_addr_i;
    
    
    // Clocking Block
    clocking dut_cb @( posedge clk );
    output 				boot_addr_i;
    output				fetch_enable_i;
    ///////////////////////////////////////////////
    input				alert_minor_o;
    input        			alert_major_o;
    input				core_sleep_o;
    endclocking : dut_cb

endinterface : dut_probe_intf
