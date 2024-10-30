//------------------------------------------
// Including UVM Macros, Pkg and base_test
//------------------------------------------
`include "uvm_macros.svh"
import uvm_pkg::*;

`include "transaction.sv"
`include "component_a.sv"
`include "component_b.sv"

class basic_test extends uvm_test;

  //---------------------------------------
  // Components Instantiation
  //---------------------------------------
  component_a comp_a;
  component_b comp_b;

  `uvm_component_utils(basic_test)


  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "basic_test",uvm_component parent=null);
    super.new(name,parent);
  endfunction : new


  //---------------------------------------
  // build_phase - Create the components
  //---------------------------------------
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    comp_a = component_a::type_id::create("comp_a", this);
    comp_b = component_b::type_id::create("comp_b", this);
  endfunction : build_phase
  
  //---------------------------------------
  // Connect_phase 
  //---------------------------------------
  function void connect_phase(uvm_phase phase);
    comp_a.analysis_port.connect(comp_b.port_a);
    comp_a.analysis_port.connect(comp_b.port_b);
  endfunction : connect_phase

  //---------------------------------------
  // end_of_elobaration phase
  //---------------------------------------  
  virtual function void end_of_elaboration();
    //print's the topology
    print();  
  endfunction 
endclass : basic_test
