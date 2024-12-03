/////////////////////////////////////////////////////////////////////
//   							           //
//   		  	   Data Sequence			   //
//                                                                 //
/////////////////////////////////////////////////////////////////////
//                                                                 //
//             Copyright (C) 2024 10xEngineers 	                   //
//             www.10xengineers.ai                                 //
//                                                                 //
/////////////////////////////////////////////////////////////////////
// FILE NAME      : data_sequence.sv
// AUTHOR         : Noman Rafiq
// AUTHOR'S EMAIL : noman.rafiq@10xengineers.ai
// ------------------------------------------------------------------
// RELEASE HISTORY													 
// ------------------------------------------------------------------
// VERSION DATE        	AUTHOR         								 
// 1.0     2024-Nov-20  Noman Rafiq 						 		 
// ------------------------------------------------------------------

// Import Memory Model Package
import mem_model_pkg::*; 

class data_sequence extends uvm_sequence #(data_seq_item);
    
    `uvm_object_utils(data_sequence)
    
    mem_model data_mem;		// Data Memory
    data_seq_item req;		// request item
    data_seq_item res;		// response item
    
    function new(string name = "data_sequence");
       super.new(name);
    endfunction : new
 
   
    // Sequence Body
    virtual task body();
    	//wait(uvm_test_top.clk_rst_vif.rst_n);
    	req = data_seq_item::type_id::create("req");
  	res = data_seq_item::type_id::create("res");
        forever begin
            `uvm_info(get_full_name(), "DATA SEQ started", UVM_NONE)
            
            // Slave Request
            start_item(req);
            finish_item(req);
             `uvm_info("DBG", "DATA REQ SENT to DRIVER", UVM_DEBUG);
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
            // Store Item
            if ( req.data_we_o ) begin					// If Write_enable
            	data_mem.write(req.data_addr_o, req.data_wdata_o);	// Update System Memory
            end
            // else Load Item
            else begin
            	req.data_rdata_i= data_mem.read(req.data_addr_o);
            end
            
            start_item(res);
            	res.copy(req);
            finish_item(res);
            `uvm_info(get_type_name(), "DATA SEQ completed", UVM_HIGH)
        end
    endtask
 
 endclass : data_sequence
