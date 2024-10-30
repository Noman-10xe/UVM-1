class component_b extends uvm_component;
  
  transaction trans;
  uvm_blocking_get_port #(transaction,component_b) trans_in;  

  `uvm_component_utils(component_b)
  
  //--------------------------------------- 
  // Constructor
  //---------------------------------------
  function new(string name, uvm_component parent);
    super.new(name, parent);
    trans_in = new("trans_in", this);
  endfunction : new
  
  
  //---------------------------------------
  // run phase
  //---------------------------------------
  virtual task run_phase(uvm_phase phase);
    phase.raise_objection(this);
    
    trans_in.get(trans);
    `uvm_info(get_type_name(),$sformatf(" Received Transaction from FIFO"),UVM_LOW);
    trans.print;
    
    phase.drop_objection(this);
  endtask : run_phase
  
endclass : component_b
