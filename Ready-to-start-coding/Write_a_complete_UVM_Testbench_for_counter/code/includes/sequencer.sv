`include "base_sequence.sv"

class sequencer extends uvm_sequencer #(transaction);
  
  // Registration
  `uvm_component_utils(sequencer);
  
  // Constructor
  function new(string name = "sequencer", uvm_component parent);
    super.new(name, parent);
  endfunction: new
  
endclass
