class scoreboard extends uvm_subscriber #(sequence_item);
	`uvm_component_utils(scoreboard)
  
  uvm_tlm_analysis_fifo #(sequence_item) input_flow_f;
  
  function new(string name, uvm_component parent);
    super.new(name, parent);
    endfunction
  
  function void build_phase(uvm_phase phase);
    input_flow_f = new("input_flow_f", this);
  endfunction
  
  virtual function void write(sequence_item t);
    sequence_item expected_data;
    input_flow_f.try_get(expected_data);
    $display("expected data", expected_data.wdata);
    $display("actual data", t.rdata);
    if(expected_data.wdata === t.rdata)
      `uvm_info("Sb", "comparison Passed", UVM_NONE)
    else
      `uvm_info("Sb", "comparison Failed", UVM_NONE)
      
      endfunction
      
      endclass
    