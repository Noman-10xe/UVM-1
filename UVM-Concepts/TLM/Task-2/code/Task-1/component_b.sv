class component_b extends uvm_component;
  
  transaction trans;
  uvm_blocking_put_imp#(transaction,component_b) trans_in;  

  `uvm_component_utils(component_b)
  
  //--------------------------------------- 
  // Constructor
  //---------------------------------------
  function new(string name, uvm_component parent);
    super.new(name, parent);
    trans_in = new("trans_in", this);
  endfunction : new
  
  //---------------------------------------
  // Imp port put method
  //---------------------------------------
  virtual task put(transaction trans);
    #40;
    `uvm_info(get_type_name(),$sformatf(" Received trans on IMP Port"),UVM_LOW)
    `uvm_info(get_type_name(),$sformatf(" Printing trans, \n %s",trans.sprint()),UVM_LOW)
  endtask 

endclass : component_b
