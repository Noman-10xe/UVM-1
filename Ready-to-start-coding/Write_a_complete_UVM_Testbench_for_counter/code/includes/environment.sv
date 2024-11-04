`include "agent.sv"
`include "scoreboard.sv"

class environment extends uvm_env;
  
  // Registration
  `uvm_component_utils(environment);
  
  // Constructor
  function new(string name = "environment", uvm_component parent);
    super.new(name, parent);
  endfunction: new
  
  // Declarations
  agent agt;
  scoreboard sco;
  
  // Build Phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    // Factory creation
    agt			= agent 		:: type_id :: create("agt", this);
    sco			= scoreboard 	:: type_id :: create("sco", this);
    
  endfunction: build_phase
  
  // Connect Phase
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    agt.mon.mon_port.connect(sco.sco_port);
  endfunction: connect_phase
  
endclass
