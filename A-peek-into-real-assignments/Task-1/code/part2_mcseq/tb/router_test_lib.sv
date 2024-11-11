/*-----------------------------------------------------------------
File name     : router_test_lib.sv
Developers    : Kathleen Meade, Brian Dickinson
Created       : 01/04/11
Description   : lab06_vif router test library
Notes         : From the Cadence "SystemVerilog Accelerated Verification with UVM" training
-------------------------------------------------------------------
Copyright Cadence Design Systems (c)2015
-----------------------------------------------------------------*/


class base_test extends uvm_test;

  // component macro
  `uvm_component_utils(base_test)

  // Components of the environment
  router_tb tb;

  // component constructor
  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction : new

  // UVM build_phase()
  function void build_phase(uvm_phase phase);
    uvm_config_int::set( this, "*", "recording_detail", 1);
    super.build_phase(phase);
    tb = router_tb::type_id::create("tb",this);
  endfunction : build_phase
  
  function void end_of_elaboration_phase(uvm_phase phase);
    uvm_top.print_topology();
  endfunction : end_of_elaboration_phase

  function void start_of_simulation_phase(uvm_phase phase);
    `uvm_info(get_type_name(), {"start of simulation for ", get_full_name()}, UVM_HIGH);
  endfunction : start_of_simulation_phase

  task run_phase(uvm_phase phase);
    uvm_objection obj = phase.get_objection();
    obj.set_drain_time(this, 200ns);
  endtask : run_phase

  function void check_phase(uvm_phase phase);
    // configuration checker
    check_config_usage();
  endfunction

endclass : base_test


///////////////////////////////////////////////////////////////////////////////////////
//
// Simple Test
//

class simple_test extends base_test;

  // component macro
  `uvm_component_utils(simple_test)

  // component constructor
  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction : new

  function void build_phase(uvm_phase phase);
   yapp_packet::type_id::set_type_override(short_yapp_packet::get_type()); 
    uvm_config_wrapper::set(this, "tb.yapp.tx_agent.sequencer.run_phase",
                            "default_sequence",
                            yapp_012_seq::get_type());
   
   // Channel UVC                         
   uvm_config_wrapper::set(this, "tb.channel*.rx_agent.sequencer.run_phase",
                            "default_sequence",
                            channel_rx_resp_seq::get_type());
   // Clock & Reset UVC           
   uvm_config_wrapper::set(this, "tb.clk_n_rst.agent.sequencer.run_phase",
                            "default_sequence",
                            clk10_rst5_seq::get_type());
   super.build_phase(phase);
  endfunction : build_phase

endclass : simple_test


   
/////////////////////////////////////////////////////////////////////
// 				OPTIONAL
// test_uvc_integration
//

class test_uvc_integration extends base_test;

  // component macro
  `uvm_component_utils(test_uvc_integration)

  // component constructor
  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction : new

  function void build_phase(uvm_phase phase);

   uvm_config_wrapper::set(this, "tb.yapp.tx_agent.sequencer.run_phase", 
   				"default_sequence",
                            	yapp_all_channels_seq::get_type());
                            	
   // hbus UVC
   uvm_config_wrapper::set(this, "tb.hbus.masters[0].sequencer.run_phase", 
   				"default_sequence",
                            	hbus_small_packet_seq::get_type());
   
   
   // Channel UVC                         
   uvm_config_wrapper::set(this, "tb.channel*.rx_agent.sequencer.run_phase",
                            "default_sequence",
                            channel_rx_resp_seq::get_type());
   // Clock & Reset UVC           
   uvm_config_wrapper::set(this, "tb.clk_n_rst.agent.sequencer.run_phase",
                            "default_sequence",
                            clk10_rst5_seq::get_type());
                            
   super.build_phase(phase);
  endfunction : build_phase

endclass : test_uvc_integration



///////////////////////////////////////////////////////////////////////////////////////
//
// Multi-Channel Router Test
//

class mc_router_test extends base_test;

  // component macro
  `uvm_component_utils(mc_router_test)

  // component constructor
  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction : new
  
  function void build_phase(uvm_phase phase);
   yapp_packet::type_id::set_type_override(short_yapp_packet::get_type()); 
    
   // Channel UVC                         
   uvm_config_wrapper::set(this, "tb.channel*.rx_agent.sequencer.run_phase",
                            "default_sequence",
                            channel_rx_resp_seq::get_type());
   // Clock & Reset UVC           
   uvm_config_wrapper::set(this, "tb.clk_n_rst.agent.sequencer.run_phase",
                            "default_sequence",
                            clk10_rst5_seq::get_type());
                            
   uvm_config_wrapper::set(this, "tb.mc_seq.run_phase",
                            "default_sequence",
                            router_simple_mcseq::get_type());
   super.build_phase(phase);
  endfunction : build_phase  

endclass : mc_router_test

