///////////////////////////////////////////////////////////////////////////////////
//										 //
//										 //
//										 //
//				router_module_env.sv				 //
//				  					 	 //
//										 //
//										 //
///////////////////////////////////////////////////////////////////////////////////
//
// AUTHOR: Noman Rafiq
// Dated: Nov 13, 2024
//
/////////////////////////

class router_module_env extends uvm_env;
	`uvm_component_utils(router_module_env)
  	
  	// Constructor
	function new(string name = "router_module_env", uvm_component parent);
	  	super.new(name, parent);
	endfunction : new
	
	// Declaration
	router_scoreboard scb;
	router_reference router_ref;
	
	
	/////////////////////////////////////////////////////////////////////
    	//
    	// Instances Creation
    	//
	function void build_phase(uvm_phase phase);
    		// Scoreboard
    		scb = router_scoreboard::type_id::create("scb", this);
    		
    		// Router Reference
    		router_ref = router_reference::type_id::create("router_ref", this);
  	endfunction: build_phase
	
	
	function void connect_phase(uvm_phase phase);
	     
	     /////////////////////////////////////////////////////////////////////
	     //
	     // Analysis Port Connections for Scoreboard and Reference
	     //
	     router_ref.yapp_vld.connect(scb.yapp_port);
     
 	endfunction : connect_phase
	
	
endclass : router_module_env
