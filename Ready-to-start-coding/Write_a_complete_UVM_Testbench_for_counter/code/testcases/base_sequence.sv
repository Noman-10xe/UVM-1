`include "transaction.sv"

class base_sequence extends uvm_sequence #(transaction);
  
  // Registration
  `uvm_object_utils(base_sequence);
  
  // Constructor
  function new(string name = "base_sequence");
    super.new(name);
  endfunction: new
  
  // Stimulus Generation
  virtual task body();
    
    transaction t;
    
    repeat(20) begin
    t	= transaction :: type_id :: create("t");
    
   	start_item(t);  
    assert(t.randomize());
    finish_item(t);
    end
  endtask

endclass
