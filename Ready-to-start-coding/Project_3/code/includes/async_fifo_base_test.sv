class async_fifo_base_test extends uvm_test;
  `uvm_component_utils(async_fifo_base_test)
  
  base_sequence seq;
  env env_h;
  
  // Configuration Class
  config_class m_cfg;
  
  function new(string name, uvm_component parent);
    super.new(name, parent);
    m_cfg = new();
  endfunction
  
  function void build_phase(uvm_phase phase);
    uvm_factory factory = uvm_factory::get();
    super.build_phase(phase);
    
    uvm_config_db #(config_class)::set(this, "*", "m_cfg", m_cfg);
    env_h = env::type_id::create("env_h",this);
    seq	  = base_sequence::type_id::create("seq", this);
    factory.print();
  endfunction
  
  function void end_of_elaboration_phase(uvm_phase phase);
    uvm_top.print_topology();
  endfunction
  
  task run_phase(uvm_phase phase);
    phase.raise_objection(this);
    seq.start(env_h.sequencer_h);
    phase.drop_objection(this);   
  endtask
  
endclass
