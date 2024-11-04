`include "sequencer.sv"
`include "driver.sv"
`include "monitor.sv"

class agent extends uvm_agent;
  
  // Registration
  `uvm_component_utils(agent);
  
  // Constructor
  function new(string name = "agent", uvm_component parent);
    super.new(name, parent);
  endfunction: new
  
  // Declarations
  sequencer #(transaction) counter_seq;
  monitor mon;
  driver drv;
  
  // Build Phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    // Factory creation
    counter_seq	= sequencer #(transaction) :: type_id :: create("counter_seq", this);
    mon			= monitor :: type_id :: create("mon", this);
    drv			= driver :: type_id :: create("drv", this);
    
  endfunction: build_phase
  
  // Connect Phase
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    
    drv.seq_item_port.connect(counter_seq.seq_item_export);
        
  endfunction: connect_phase
  
endclass
