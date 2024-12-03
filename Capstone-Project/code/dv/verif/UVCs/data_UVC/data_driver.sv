/////////////////////////////////////////////////////////////////////
//   							           //
//   		 	Data Interface Driver			   //
//                                                                 //
/////////////////////////////////////////////////////////////////////
//                                                                 //
//             Copyright (C) 2024 10xEngineers 	                   //
//             www.10xengineers.ai                                 //
//                                                                 //
/////////////////////////////////////////////////////////////////////
// FILE NAME      : data_driver.sv
// AUTHOR         : Noman Rafiq
// AUTHOR'S EMAIL : noman.rafiq@10xengineers.ai
// ------------------------------------------------------------------
// RELEASE HISTORY													 
// ------------------------------------------------------------------
// VERSION DATE        	AUTHOR         								 
// 1.0     2024-Nov-20  Noman Rafiq 						 		 
// ------------------------------------------------------------------					 
// PURPOSE  : For Driving DATA to DUT					 
// ------------------------------------------------------------------
`define DRIV_DATA vif.data_driver
class data_driver extends uvm_driver #(data_seq_item);

  `uvm_component_utils(data_driver)
    
  virtual data_mem_intf vif;
  
  protected data_seq_item req, res;
  
  // Constructor  
  function new(string name = "data_driver", uvm_component parent);
  	super.new(name, parent);
  endfunction : new
  
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if ( !uvm_config_db #( virtual data_mem_intf )::get(this, get_full_name(), "data_intf", vif) )
    	`uvm_fatal("NOVIF",{"virtual interface must be set for: ",get_full_name(),".vif"});
  endfunction : build_phase
  
  
  // run_phase
  virtual task run_phase(uvm_phase phase);
    // Wait for Reset to be de-asserted
    //wait(vif.rst_n == 1'b1);
    forever begin
    	`uvm_info(get_full_name(), "Data Driver Started", UVM_NONE)

    	/*	SIGNALS to Lookout for	
         *	data_req_o;
	 *	data_addr_o;
	 *	data_we_o;
	 *	data_be_o;
	 *	data_wdata_o;
	 *	data_gnt_i;
	 *	data_rvalid_i;
	 *	data_err_i;
	 *	data_rdata_i;
	 */
	 
    	// Request Sequence
    	seq_item_port.get_next_item(req);
    	`uvm_info(get_full_name(), "Received Empty Sequence", UVM_DEBUG)
    		// Get req from Interface
    		vif.wait_clks(1);
    		req.data_req_o		<= `DRIV_DATA.data_req_o;
    		req.data_addr_o		<= `DRIV_DATA.data_addr_o;
    		req.data_we_o		<= `DRIV_DATA.data_we_o;
    		req.data_be_o		<= `DRIV_DATA.data_be_o;
    		req.data_wdata_o	<= `DRIV_DATA.data_wdata_o;
    		req.data_be_o		<= `DRIV_DATA.data_be_o;
    		
       	seq_item_port.item_done();
       	
       	
       	// Response Sequence
       	seq_item_port.get_next_item(res);
    		if(res.data_req_o) begin
		`DRIV_DATA.data_gnt_i		<= 1'b1;
		
		vif.wait_clks(1);				// Wait for 1 cycle       
		`DRIV_DATA.data_rvalid_i 	<= 1'b1;
		`DRIV_DATA.data_rdata_i 	<= res.data_rdata_i;
		`DRIV_DATA.data_err_i 		<= 0;
		       
		vif.wait_clks(1);				// Wait Cycle
		`DRIV_DATA.data_rvalid_i	<= 1'b0;
        end else begin						// If there are no requests, there will be no grants 
                `DRIV_DATA.data_gnt_i 		<= 1'b0; 
                `DRIV_DATA.data_rvalid_i 	<= 1'b0;
        end
       	seq_item_port.item_done();
       	
        `uvm_info(get_full_name(), "Data Driver done", UVM_NONE)
    end
  endtask : run_phase

  
endclass : data_driver
