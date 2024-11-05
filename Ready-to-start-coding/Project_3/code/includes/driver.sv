class driver extends uvm_driver#(sequence_item);
  `uvm_component_utils(driver);
  
	virtual async_fifo_bfm bfm;  
  
  function new(string name, uvm_component parent);
    super.new(name, parent);
    endfunction
  
  function void build_phase(uvm_phase phase);
    if(!uvm_config_db #(virtual async_fifo_bfm):: get(null, "*", "bfm", bfm))
      `uvm_fatal("DRIVER", "driver::Failed to get bfm")
      
      endfunction
      
   task push(); begin
    sequence_item push;
    integer i =0;
    forever begin 
      if(i < TEST_FLOW_LENGTH - 2) begin
          seq_item_port.get_next_item(push);
          bfm.push(push.wdata, 1'b0);
          seq_item_port.item_done();
        
      end else begin
        seq_item_port.get_next_item(push);
        bfm.push(push.wdata, 1'b1);
    	seq_item_port.item_done();
      end 
      i = i+1;
      if(i > TEST_FLOW_LENGTH-1) 
        i = 0;
    	end
      end
    endtask
    
    task pop();
      begin
        
       integer i = 0;
        forever begin
          if(i < TEST_FLOW_LENGTH - 2) begin
            bfm.pop(1'b0);
          end
          else 
            bfm.pop(1'b1);
          i++;
          if(i > TEST_FLOW_LENGTH-1) 
       		 i = 0;
        end
      end    
    endtask
    
    task run_phase(uvm_phase phase);
      
      bfm.reset_rdwr();
      $display("design is reset");
      
      fork
        push();
        pop();
      join_none      
    endtask
    
endclass
      
    
    
      