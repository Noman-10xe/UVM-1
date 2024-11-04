import uvm_pkg::*;

`include "uvm_macros.svh"
`include "environment.sv"
`include "reset_sequence.sv"
`include "wrap_sequence.sv"
`include "priority_sequence.sv"

class test_top extends uvm_test;
  
  // Registration
  `uvm_component_utils(test_top);
  
  // Constructor
  function new(string name = "test_top", uvm_component parent);
    super.new(name, parent);
  endfunction: new
  
  // Declarations
  environment env;
  base_sequence base_seq;
  
  // Build Phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    ////////////////////////////////////////////////////////////////////////
    //                                                                      
    // Sequence Overrides        											
    //																		

    // 1. Reset Sequence
//     uvm_factory::get().set_type_override_by_type(base_sequence::get_type(), reset_sequence::get_type());
    
    // 2. Wrap Sequence
//     uvm_factory::get().set_type_override_by_type(base_sequence::get_type(), wrap_sequence::get_type());
    
    // 3. Priority Sequence
//    uvm_factory::get().set_type_override_by_type(base_sequence::get_type(), priority_sequence::get_type());

    
    // Factory creation
    env			= environment 		:: type_id :: create("env", this);
    base_seq	        = base_sequence		:: type_id :: create("base_seq", this);
    
    uvm_factory::get().print();
    
  endfunction: build_phase
  
  // End of Elaboration Phase
  function void end_of_elaboration_phase(uvm_phase phase);
    uvm_top.print_topology();
  endfunction
  
  
  // Run Phase
  virtual task run_phase(uvm_phase phase);
    super.run_phase(phase);
    
    phase.raise_objection(this);
    base_seq.start(env.agt.counter_seq);
    phase.drop_objection(this);
    
  endtask
  
endclass
