
class base_sequence extends uvm_sequence #(sequence_item);
  `uvm_object_utils(base_sequence);
    
    sequence_item fifo_push;
  	config_class m_cfg;
    
    function new(string name ="base_sequence");
      super.new(name);
      m_cfg = new();
    endfunction
    
  task body();
    repeat (m_cfg.num_trans) begin
      fifo_push = sequence_item::type_id::create("fifo_push");
      start_item(fifo_push);
      assert(fifo_push.randomize());
      `uvm_info("Sequence","Randomized wdata",UVM_NONE)
      $display(fifo_push.wdata);
      finish_item(fifo_push); 
      end
      
    endtask: body
  
endclass
