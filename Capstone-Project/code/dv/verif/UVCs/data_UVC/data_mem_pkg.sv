/////////////////////////////////////////////////////////////////////
//   							           //
//   		  	Data Memory Side UVC			   //
//                                                                 //
/////////////////////////////////////////////////////////////////////
//                                                                 //
//             Copyright (C) 2024 10xEngineers 	                   //
//             www.10xengineers.ai                                 //
//                                                                 //
/////////////////////////////////////////////////////////////////////
// FILE NAME      : data_mem_pkg.sv
// AUTHOR         : Noman Rafiq
// AUTHOR'S EMAIL : noman.rafiq@10xengineers.ai
// ------------------------------------------------------------------
// RELEASE HISTORY													 
// ------------------------------------------------------------------
// VERSION DATE        	AUTHOR         								 
// 1.0     2024-Nov-20  Noman Rafiq 						 		 
// ------------------------------------------------------------------
// PURPOSE : A UVC for Data Side Memory
// ------------------------------------------------------------------

package data_mem_pkg;
import uvm_pkg::*;
`include "uvm_macros.svh"

`include "data_seq_item.sv"
`include "data_sequencer.sv"
`include "data_sequence.sv"
`include "data_driver.sv"
`include "data_monitor.sv"
`include "data_agent.sv"

endpackage : data_mem_pkg
