///////////////////////////////////////////////////////////////////////////////////
//										 //
//										 //
//										 //
//				router_mcseqs_lib.sv			  	 //
//										 //
//										 //
//										 //
///////////////////////////////////////////////////////////////////////////////////
//
// AUTHOR: Noman Rafiq
// Dated: Nov 08, 2024
//
/////////////////////////

class router_simple_mcseq extends uvm_sequence;
  
  // Required macro for sequences automation
  `uvm_object_utils(router_simple_mcseq)

  // Constructor
  function new(string name="router_simple_mcseq");
    super.new(name);
  endfunction
  
  `uvm_declare_p_sequencer(router_mcsequencer);
  
  hbus_small_packet_seq small_pkt_seq;
  hbus_read_max_pkt_seq read_max_pkt;
  hbus_set_default_regs_seq large_pkt_seq;
  yapp_012_seq yapp_012;
  yapp_rnd_seq yapp_rand;
  
  
  task pre_body();
    uvm_phase phase;
    `ifdef UVM_VERSION_1_2
      // in UVM1.2, get starting phase from method
      phase = get_starting_phase();
    `else
      phase = starting_phase;
    `endif
    if (phase != null) begin
      phase.raise_objection(this, get_type_name());
      `uvm_info(get_type_name(), "raise objection", UVM_MEDIUM)
    end
  endtask : pre_body  
  
  task body();
  
  	`uvm_info(get_type_name(), "Starting router_simple_mcseq body", UVM_MEDIUM)
  	
  	// Configuring for small packets
  	small_pkt_seq = hbus_small_packet_seq::type_id::create("small_pkt_seq");
  	`uvm_do_on(small_pkt_seq, p_sequencer.hbus_master_seq);
  	
  	// Read MAXPKTSIZE
  	read_max_pkt = hbus_read_max_pkt_seq::type_id::create("read_max_pkt");
  	`uvm_do_on(read_max_pkt, p_sequencer.hbus_master_seq);
  	
  	#50;
  	// 6 consecutive packets to 0, 1, 2 channels
  	repeat(6) begin
  	yapp_012 = yapp_012_seq::type_id::create("yapp_012");
  	`uvm_do_on(yapp_012, p_sequencer.yapp_seq);
  	end
  	
  	#50;
  	// Configuring for large packets
  	large_pkt_seq = hbus_set_default_regs_seq::type_id::create("large_pkt_seq");
  	`uvm_do_on(small_pkt_seq, p_sequencer.hbus_master_seq);
  	
  	// Read MAXPKTSIZE
  	read_max_pkt = hbus_read_max_pkt_seq::type_id::create("read_max_pkt");
  	`uvm_do_on(read_max_pkt, p_sequencer.hbus_master_seq);
  	
  	#50;
  	// 6 consecutive packets to 0, 1, 2 channels
  	repeat(6) begin
  	yapp_rand = yapp_rnd_seq::type_id::create("yapp_rand");
  	`uvm_do_on(yapp_rand, p_sequencer.yapp_seq);
  	end
  	  	
  endtask
  
    task post_body();
    uvm_phase phase;
    `ifdef UVM_VERSION_1_2
      // in UVM1.2, get starting phase from method
      phase = get_starting_phase();
    `else
      phase = starting_phase;
    `endif
    if (phase != null) begin
      phase.drop_objection(this, get_type_name());
      `uvm_info(get_type_name(), "drop objection", UVM_MEDIUM)
    end
  endtask : post_body

endclass : router_simple_mcseq

