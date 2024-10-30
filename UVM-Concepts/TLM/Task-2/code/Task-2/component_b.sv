`include "sub_comp_b_a.sv"

class component_b extends uvm_component;
  

  `uvm_component_utils(component_b)
  
  transaction trans;
  uvm_blocking_put_export #(transaction, component_b) trans_mid;
  sub_comp_b_a subComp_b;
  
  //--------------------------------------- 
  // Constructor
  //---------------------------------------
  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction : new
  
  //---------------------------------------
  // build_phase - Create the components
  //---------------------------------------
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    trans_mid = new("trans_mid", this);
    subComp_b  = sub_comp_b_a::type_id::create("subComp_b", this);
    
  endfunction : build_phase
  
  
  //---------------------------------------
  // Connect_phase 
  //---------------------------------------
  function void connect_phase(uvm_phase phase);
    trans_mid.connect(subComp_b.trans_end);    
  endfunction : connect_phase
    
endclass : component_b
