///////////////////////////////////////////////////////////////////////////////////
//										 //
//										 //
//										 //
//				router_scoreboard.sv			  	 //
//										 //
//										 //
//										 //
///////////////////////////////////////////////////////////////////////////////////
//
// AUTHOR: Noman Rafiq
// Dated: Nov 12, 2024
//
/////////////////////////

`include "packet_compare.sv"
//`include "uvm_comparer.sv"

// Global Counters
int packets_received 	= 0;
int wrong_packets 	= 0;
int matched_packets 	= 0;
int packets_in_queues	= 0;

class router_scoreboard extends uvm_scoreboard;
   
   // component macro
   `uvm_component_utils(router_scoreboard)
   
   // Imp Declarations
   `uvm_analysis_imp_decl(_ch0);
   `uvm_analysis_imp_decl(_ch1);
   `uvm_analysis_imp_decl(_ch2);
   `uvm_analysis_imp_decl(_yapp);
   
   // Analysis Imp Ports
   uvm_analysis_imp_ch0 #(channel_packet, router_scoreboard) ch0_port;
   uvm_analysis_imp_ch1 #(channel_packet, router_scoreboard) ch1_port;
   uvm_analysis_imp_ch2 #(channel_packet, router_scoreboard) ch2_port;
   uvm_analysis_imp_yapp #(yapp_packet, router_scoreboard) yapp_port;
   
   // Queues for storing/retrieving packets
   yapp_packet ch0_queue[$];
   yapp_packet ch1_queue[$];
   yapp_packet ch2_queue[$];
   
   // Constructor
   function new(string name = "router_scoreboard", uvm_component parent);
   	super.new(name, parent);
   	
   	// Creation of Port Instances
   	ch0_port = new("ch0_port", this);
   	ch1_port = new("ch1_port", this);
   	ch2_port = new("ch2_port", this);
   	yapp_port = new("yapp_port", this);
   endfunction : new
   
   ///////////////////////////////////////////////////////////////////////////////////
   //
   // Write Methods
   // 
   
   // write_yapp
   function void write_yapp(yapp_packet yp);
   	if ( yp.addr == 0 ) ch0_queue.push_back(yp.clone());
   	else if ( yp.addr == 1 ) ch1_queue.push_back(yp.clone());
   	else if ( yp.addr == 2 ) ch2_queue.push_back(yp.clone());
   	
   endfunction
  
   
   // write_ch0
   function void write_ch0(channel_packet cp);
   	yapp_packet yp;
   	if ( cp.addr == 0 ) begin 
   		yp = ch0_queue.pop_front();
   		if (comp_equal(yp, cp)) begin 
   			`uvm_info("COMPARISON::Ch0",$sformatf("TEST PASSED"), UVM_LOW)
   			matched_packets++;
   		end else begin 
   			`uvm_error("COMPARISON::Ch0",$sformatf("TEST FAILED"))
   			wrong_packets++;
   		end
   	end
   	packets_received++;
   endfunction : write_ch0
   
   
   // write_ch1
   function void write_ch1(channel_packet cp);
   	yapp_packet yp;
   	if ( cp.addr == 1 ) begin 
   		yp = ch1_queue.pop_front();
   		if (comp_equal(yp, cp)) begin 
   			`uvm_info("COMPARISON::Ch1",$sformatf("TEST PASSED"), UVM_LOW)
   			matched_packets++;
   		end else  begin 
   			`uvm_error("COMPARISON::Ch1",$sformatf("TEST FAILED"))
   			wrong_packets++;
   		end
   	end
   	packets_received++;
   endfunction : write_ch1
   
   
   // write_ch2
   function void write_ch2(channel_packet cp);
   	yapp_packet yp;
   	if ( cp.addr == 2 ) begin 
   		yp = ch2_queue.pop_front();
   		if (comp_equal(yp, cp)) begin 
   			`uvm_info("COMPARISON::Ch2",$sformatf("TEST PASSED"), UVM_LOW)
   			matched_packets++;
   		end else  begin 
   			`uvm_error("COMPARISON::Ch2",$sformatf("TEST FAILED"))
   			wrong_packets++;
   		end
   	end
   	packets_received++;
   endfunction : write_ch2
   
   ///////////////////////////////////////////////////////////////////////////////////
   //
   // Report Phase
   //
   function void report_phase(uvm_phase phase);
   	super.report_phase(phase);
  	packets_in_queues = ch0_queue.size() + ch1_queue.size() + ch2_queue.size();
   	`uvm_info(get_type_name(), $sformatf("PACKETS Received = %0d", packets_received), UVM_MEDIUM);
   	`uvm_info(get_type_name(), $sformatf("PACKETS Matched = %0d", matched_packets), UVM_MEDIUM);
   	`uvm_info(get_type_name(), $sformatf("PACKETS Mismatched = %0d", wrong_packets), UVM_MEDIUM);
   	`uvm_info(get_type_name(), $sformatf("PACKETS Left in Queues = %0d", packets_in_queues), UVM_MEDIUM);
   endfunction
   
endclass
