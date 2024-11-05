class char_sequence extends base_sequence;
  `uvm_object_utils(char_sequence)

  function new(string name = "char_sequence");
    super.new(name);
  endfunction

  task body();

    repeat (30) begin
      fifo_push = sequence_item::type_id::create("fifo_push");
      
      start_item(fifo_push);
      assert(fifo_push.randomize() with { 
        fifo_push.wdata inside { [8'h00:8'hFF] }; 
      });

      `uvm_info("[Random Characters]", $sformatf("Generated character: %c", fifo_push.wdata), UVM_NONE)
      finish_item(fifo_push);
    end
  endtask: body
endclass
