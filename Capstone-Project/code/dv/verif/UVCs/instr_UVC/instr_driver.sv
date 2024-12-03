/////////////////////////////////////////////////////////////////////
//   							           //
//   		 Instruction Interface Driver			   //
//                                                                 //
/////////////////////////////////////////////////////////////////////
//                                                                 //
//             Copyright (C) 2024 10xEngineers 	                   //
//             www.10xengineers.ai                                 //
//                                                                 //
/////////////////////////////////////////////////////////////////////
// FILE NAME      : instr_driver.sv
// AUTHOR         : Noman Rafiq
// AUTHOR'S EMAIL : noman.rafiq@10xengineers.ai
// ------------------------------------------------------------------
// RELEASE HISTORY													 
// ------------------------------------------------------------------
// VERSION DATE        	AUTHOR         								 
// 1.0     2024-Nov-18  Noman Rafiq 						 		 
// ------------------------------------------------------------------					 
// PURPOSE  : For Driving Instructions to DUT					 
// ------------------------------------------------------------------

`define DRIV_IF vif.instr_driver
class instr_driver extends uvm_driver #(instr_seq_item);

  `uvm_component_utils(instr_driver)
    
  virtual instr_mem_intf vif;
  
  protected instr_seq_item req;
  
  // Constructor  
  function new(string name = "instr_driver", uvm_component parent);
  	super.new(name, parent);
  endfunction : new
  
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if ( !uvm_config_db #( virtual instr_mem_intf )::get(this, get_full_name(), "instr_intf", vif) )
    	`uvm_fatal("NOVIF", {"virtual interface must be set for: ", get_full_name(), ".vif"});
  endfunction : build_phase
  
  // run_phase
  virtual task run_phase(uvm_phase phase);
    forever begin
    	`uvm_info(get_full_name(), "Instruction Driver Started", UVM_NONE)
    	
    	seq_item_port.get_next_item(req);
       	`uvm_info(get_full_name(), "Received Empty Sequence", UVM_DEBUG)
       	if(req.instr_req_o) begin
		`DRIV_IF.instr_gnt_i	<= 1'b1;
		
		vif.wait_clks(1);
		`DRIV_IF.instr_gnt_i 	<= 1'b0;		// De-assert Grant at the next clock       
		`DRIV_IF.instr_rvalid_i <= 1'b1;
		`DRIV_IF.instr_rdata_i 	<= req.instr_rdata_i;
		`DRIV_IF.instr_err_i 	<= 0;
		       
		vif.wait_clks(1);
		`DRIV_IF.instr_rvalid_i	<= 1'b0;
        end else begin
                `DRIV_IF.instr_gnt_i 	<= 1'b0; 
                `DRIV_IF.instr_rvalid_i <= 1'b0;
        end
        
        seq_item_port.item_done();
        `uvm_info(get_full_name(), "Instruction Driver done", UVM_NONE)
    end
  endtask : run_phase

  
endclass : instr_driver
