class output_flow_monitor extends uvm_monitor;
  `uvm_component_utils(output_flow_monitor);
  
  uvm_analysis_port #(sequence_item) ap;
  
  virtual async_fifo_bfm bfm;
  
   function new(string name, uvm_component parent);
    super.new(name, parent);
    endfunction
  
  function void build_phase(uvm_phase phase);
    if(!uvm_config_db #(virtual async_fifo_bfm):: get(null, "*", "bfm", bfm))
      `uvm_fatal("DRIVER", "driver::Failed to get bfm")
      ap = new("ap", this);
      
      endfunction
  
  task run_phase(uvm_phase phase);
      forever begin
        sequence_item pop;
        pop = new("pop");
        @(negedge bfm.rclk iff bfm.rinc);
        @(posedge bfm.rclk);
        pop.rdata = bfm.rdata;
        ap.write(pop);
      end
  endtask
  
endclass