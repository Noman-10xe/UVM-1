///////////////////////////////////////////////////////////////////////////////////
//										 //
//										 //
//										 //
//				router_module.sv				 //
//				  					 	 //
//										 //
//										 //
///////////////////////////////////////////////////////////////////////////////////
//
// AUTHOR: Noman Rafiq
// Dated: Nov 13, 2024
//
/////////////////////////

package router_pkg;
import uvm_pkg::*;
`include "uvm_macros.svh"


  // import the YAPP UVC package
  import yapp_pkg::*;
  
  // channel_pkg
  import channel_pkg::*;
  
  // clock_and_reset_pkg
  import clock_and_reset_pkg::*;
  
  // hbus_pkg
  import hbus_pkg::*;

`include "router_scoreboard.sv"
`include "router_reference.sv"
`include "router_module_env.sv"

endpackage
