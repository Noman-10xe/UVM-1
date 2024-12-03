/////////////////////////////////////////////////////////////////////
//   							           //
//   		  Instruction Memory Side UVC			   //
//                                                                 //
/////////////////////////////////////////////////////////////////////
//                                                                 //
//             Copyright (C) 2024 10xEngineers 	                   //
//             www.10xengineers.ai                                 //
//                                                                 //
/////////////////////////////////////////////////////////////////////
// FILE NAME      : instr_mem_pkg.sv
// AUTHOR         : Noman Rafiq
// AUTHOR'S EMAIL : noman.rafiq@10xengineers.ai
// ------------------------------------------------------------------
// RELEASE HISTORY													 
// ------------------------------------------------------------------
// VERSION DATE        	AUTHOR         								 
// 1.0     2024-Nov-19  Noman Rafiq 						 		 
// ------------------------------------------------------------------
// PURPOSE : A UVC for Instruction Side Memory
// ------------------------------------------------------------------

package instr_mem_pkg;
import uvm_pkg::*;
`include "uvm_macros.svh"

`include "instr_seq_item.sv"
`include "instr_sequencer.sv"
`include "instr_sequence.sv"
`include "instr_driver.sv"
`include "instr_monitor.sv"
`include "instr_agent.sv"

endpackage : instr_mem_pkg
