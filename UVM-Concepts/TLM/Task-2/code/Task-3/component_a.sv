class component_a extends uvm_component;
  
  transaction trans;
  uvm_blocking_put_port#(transaction) trans_out; 
  
  `uvm_component_utils(component_a)
  
  //--------------------------------------- 
  // Constructor
  //---------------------------------------
  function new(string name, uvm_component parent);
    super.new(name, parent);
    trans_out = new("trans_out", this); 
  endfunction : new

  //---------------------------------------
  // run_phase 
  //---------------------------------------
  virtual task run_phase(uvm_phase phase);
    phase.raise_objection(this);
    
    trans = transaction::type_id::create("trans", this);

    void'(trans.randomize());
    `uvm_info(get_type_name(),$sformatf(" tranaction randomized"),UVM_LOW)
    trans.print();
    
    `uvm_info(get_type_name(),$sformatf(" Before calling port put method"),UVM_LOW)
    trans_out.put(trans);
    `uvm_info(get_type_name(),$sformatf(" After  calling port put method"),UVM_LOW)
    
    phase.drop_objection(this);
  endtask : run_phase

endclass : component_a
