///////////////////////////////////////////////////////////////////////////////////
//										 //
//										 //
//										 //
//				router_reference.sv				 //
//				  					 	 //
//										 //
//										 //
///////////////////////////////////////////////////////////////////////////////////
//
// AUTHOR: Noman Rafiq
// Dated: Nov 13, 2024
//
/////////////////////////

import hbus_pkg::hbus_transaction;

class router_reference extends uvm_component;
	`uvm_component_utils(router_reference)
  	
  	// Constructor
	function new(string name = "router_reference", uvm_component parent);
	  	super.new(name, parent);
	   	
	   	// Creation of Port Instances
	   	yapp_port = new("yapp_port", this);
	   	hbus_port = new("hbus_port", this);
	   	yapp_vld = new("yapp_vld", this);
	endfunction : new
  
  	
  	// Imp Declarations
   	`uvm_analysis_imp_decl(_yapp);
   	`uvm_analysis_imp_decl(_hbus);
   
   	// Analysis Imp Ports
   	uvm_analysis_imp_yapp #(yapp_packet, router_reference) yapp_port;
   	uvm_analysis_imp_hbus #(hbus_transaction, router_reference) hbus_port;
   	
   	// Analysis Port for Scoreboard
   	uvm_analysis_port #(yapp_packet) yapp_vld;
   	
   	// Variables
   	int MAXPKTSIZE, ROUTER_EN;
   	int invalid_packets = 0;
   	
   	   	
   	///////////////////////////////////////////////////////////////////////////////////
   	//
   	// Write Methods
   	// 
   
   	// write_yapp
   	function void write_yapp(yapp_packet yp);
   		`uvm_info("WRITE_YAPP", "Inside write_yapp function", UVM_LOW);
   			if ( ROUTER_EN && ( yp.length <= MAXPKTSIZE ) && (yp.addr != 3) ) yapp_vld.write(yp);	
   			else invalid_packets++;	// Keep Track of dropped Packets
   	endfunction : write_yapp
   	
   	// write_hbus
   	function void write_hbus(hbus_transaction h_tr);
   		`uvm_info("WRITE_HBUS", "Inside write_hbus function", UVM_LOW);
   		
   		if ( h_tr.haddr == 16'h1000 ) MAXPKTSIZE = h_tr.hdata;
   		else if ( h_tr.haddr == 16'h1001 ) ROUTER_EN	= (h_tr.hdata & 1'h1);
   	endfunction : write_hbus

   ///////////////////////////////////////////////////////////////////////////////////
   //
   // Report Phase
   //
   function void report_phase(uvm_phase phase);
   	super.report_phase(phase);
   	`uvm_info(get_type_name(), $sformatf("PACKETS DROPPED BY ROUTER = %0d", invalid_packets), UVM_MEDIUM);
   endfunction : report_phase
  	
endclass
