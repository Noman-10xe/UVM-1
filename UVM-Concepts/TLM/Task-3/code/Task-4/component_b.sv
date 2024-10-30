class component_b extends uvm_component;
  
  transaction trans;
  uvm_tlm_analysis_fifo #(transaction,component_b) FIFO;  

  `uvm_component_utils(component_b)
  
  //--------------------------------------- 
  // Constructor
  //---------------------------------------
  function new(string name, uvm_component parent);
    super.new(name, parent);
    FIFO = new("FIFO", this);
  endfunction : new
  
  //---------------------------------------
  // run phase
  //---------------------------------------
  virtual task run_phase(uvm_phase phase);
    phase.raise_objection(this);
    
    FIFO.get(trans);
    `uvm_info(get_type_name(),$sformatf("Received Transaction from Analysis_FIFO"),UVM_LOW)
    trans.print;
    
    phase.drop_objection(this);
  endtask

endclass : component_b
