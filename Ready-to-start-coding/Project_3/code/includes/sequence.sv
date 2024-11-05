class base_sequence extends uvm_sequence #(sequence_item);
  `uvm_object_utils(base_sequence);
    
    sequence_item fifo_push;
    
    function new(string name ="base_sequence");
      super.new(name);
    endfunction
    
  task body();
    repeat (30) begin
      fifo_push = sequence_item::type_id::create("fifo_push");
      start_item(fifo_push);
      assert(fifo_push.randomize());
      `uvm_info("Sequence","Randomized wdata",UVM_NONE)
      $display(fifo_push.wdata);
      finish_item(fifo_push); 
      end
      
    endtask: body
  
endclass