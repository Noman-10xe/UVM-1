class driver extends uvm_driver #(transaction);
  
  // Registration
  `uvm_component_utils(driver);
  
  // Constructor
  function new(string name = "driver", uvm_component parent);
    super.new(name, parent);
  endfunction: new
  
  virtual intf vif;
  
  // Build Phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    // get virtual interface handle from config_db
    if(!uvm_config_db #(virtual intf) :: get(this, "", "intf", vif))
    `uvm_fatal("FATAL", "uvm_config_db :: get failed for vif()"); 
    
  endfunction: build_phase
  
  // Run Phase
  virtual task run_phase(uvm_phase phase);
     
    forever begin
      transaction t;
      t	= transaction :: type_id :: create("t", this);
      
      seq_item_port.get_next_item(t);
      
      // Driver Signals to DUT
      @(posedge vif.clk) begin
      vif.rstn		<= t.rstn;
      vif.enable	<= t.enable;
      end
      seq_item_port.item_done();	
    end
    
  endtask: run_phase
  
endclass
