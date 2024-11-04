class transaction extends uvm_sequence_item;
    
  // Constructor
  function new(string name = "transaction");
    super.new(name);
  endfunction
  
  // Signals
  rand bit enable;
  rand bit rstn;
  bit [3:0] out;
  
  `uvm_object_utils_begin(transaction)
  `uvm_field_int(enable,UVM_ALL_ON)
  `uvm_field_int(rstn,UVM_ALL_ON)
  `uvm_field_int(out,UVM_ALL_ON)
  `uvm_object_utils_end
  
endclass
