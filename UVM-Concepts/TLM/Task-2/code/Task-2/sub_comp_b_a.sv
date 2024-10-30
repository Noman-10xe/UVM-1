
//--------------------------------------- 
// SubComponent
//---------------------------------------
class sub_comp_b_a extends uvm_component;
  
  uvm_blocking_put_imp #(transaction,sub_comp_b_a) trans_end;  

  `uvm_component_utils(sub_comp_b_a)
  
  //--------------------------------------- 
  // Constructor
  //---------------------------------------
  function new(string name, uvm_component parent);
    super.new(name, parent);
    trans_end = new("trans_end", this);
  endfunction : new
  
  //---------------------------------------
  // Imp port put method
  //---------------------------------------
  virtual task put(transaction trans);
    
    `uvm_info(get_type_name(),$sformatf(" Received trans on IMP Port"),UVM_LOW)
    `uvm_info(get_type_name(),$sformatf(" Printing trans, \n %s",trans.sprint()),UVM_LOW)
  endtask 
  
endclass: sub_comp_b_a
