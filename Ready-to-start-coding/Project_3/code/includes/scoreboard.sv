// `include "config_class.sv"
class scoreboard extends uvm_subscriber #(sequence_item);
	`uvm_component_utils(scoreboard)
  
  uvm_tlm_analysis_fifo #(sequence_item) input_flow_f;
  config_class m_cfg;
  
  function new(string name, uvm_component parent);
    super.new(name, parent);
    endfunction
  
  function void build_phase(uvm_phase phase);
    input_flow_f = new("input_flow_f", this);
    
    if(!uvm_config_db #(config_class)::get(this, "*", "m_cfg", m_cfg))
      `uvm_fatal("FATAL MSG", "Configuration object is not set properly");
  endfunction
  
  virtual function void write(sequence_item t);
    sequence_item expected_data;
    input_flow_f.try_get(expected_data);
    $display("expected data", expected_data.wdata);
    $display("actual data", t.rdata);
    if (m_cfg.check_enable) begin // Only perform Checks if Chekers are enabled
      if(expected_data.wdata === t.rdata)
        `uvm_info("Sb", "comparison Passed", UVM_NONE)
      else
        `uvm_info("Sb", "comparison Failed", UVM_NONE)
    end
  endfunction
endclass
