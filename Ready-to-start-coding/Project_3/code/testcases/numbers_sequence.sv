class numbers_sequence extends base_sequence;
  
  `uvm_object_utils(numbers_sequence)

  function new(string name = "numbers_sequence");
    super.new(name);
  endfunction

  task body();

    repeat (30) begin
      fifo_push = sequence_item::type_id::create("fifo_push");
      
      start_item(fifo_push);
      
      // For numeric characters, values should be inside [8h'30:8h'39]
      assert(fifo_push.randomize() with { 
        fifo_push.wdata inside { [8'h30:8'h39] }; 
      });

      `uvm_info("[Numeric Characters]", $sformatf("Generated character: %c", fifo_push.wdata), UVM_NONE)
      finish_item(fifo_push);
    end
  endtask: body
endclass
