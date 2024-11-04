`include "reference_model.sv"

class scoreboard extends uvm_scoreboard;
  
  // Registration
  `uvm_component_utils(scoreboard);
  
  // Expected Result
  bit[3:0] expected_out;
  transaction t;
  
  // Constructor
  function new(string name = "scoreboard", uvm_component parent);
    super.new(name, parent);
  endfunction: new
  
  // Declarations
  uvm_analysis_imp #(transaction, scoreboard) sco_port;
  
  
  // Build Phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    sco_port	= new("sco_port", this);
  endfunction: build_phase
  
  // write() method implementation
  virtual function void write(transaction t);
    `uvm_info("IMP_PORT", $sformatf("Transacion Received"), UVM_MEDIUM);
    t.print;
    reference_model(t, expected_out);
  endfunction
endclass
