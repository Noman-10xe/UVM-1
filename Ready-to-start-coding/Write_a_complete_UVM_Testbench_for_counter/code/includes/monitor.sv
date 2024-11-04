class monitor extends uvm_monitor;
  
  // Registration
  `uvm_component_utils(monitor);
  
  // Constructor
  function new(string name = "monitor", uvm_component parent);
    super.new(name, parent);
  endfunction: new
  
  virtual intf vif;
  uvm_analysis_port #(transaction)	mon_port;
  
  // Build Phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    mon_port	= new("mon_port", this);
    
    // get virtual interface handle from config_db
    if(!uvm_config_db #(virtual intf) :: get(this, "", "intf", vif))
    `uvm_fatal("FATAL", "uvm_config_db :: get failed for vif()"); 
    
  endfunction: build_phase
  
  // Run Phase
  virtual task run_phase(uvm_phase phase);
     
    forever begin
      transaction t;
      t	= transaction :: type_id :: create("t", this);
      
      @(posedge vif.clk) begin
        
        t.rstn		= vif.rstn;
        t.enable	= vif.enable;
        t.out		= vif.out;
        
        // Send transaction to Scoreboard
        mon_port.write(t);
        
      end
    end
    
  endtask: run_phase
    
endclass
