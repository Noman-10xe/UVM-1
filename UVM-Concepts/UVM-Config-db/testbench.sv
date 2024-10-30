
`include "uvm_macros.svh"

package my_pkg;

  import uvm_pkg::*;

  class my_env1 extends uvm_env;
    
    integer value;
    bit [4	:0] bit_value;

    `uvm_component_utils(my_env1)
    
    function new(string name, uvm_component parent);
      super.new(name, parent);
    endfunction
 
  function void end_of_elaboration_phase(uvm_phase phase);
    
    
    // Retrive the bit with field_name "parameter2" that was set in config_db from the my_test class
    // use uvm_info to display the value
    // add your code here
    if (uvm_config_db #(bit [4:0]) :: get (null, "uvm_test_top.m_env2.m_env1", "Parameter-2", bit_value))
      `uvm_info("Parameter-2", $sformatf("Found Bit: %0b", bit_value), UVM_MEDIUM);
    
    
    // Retrive the integer with field_name "parameter1" that was set in config_db from the my_test class
    // use uvm_info to display the value
    // add your code here  
    if (uvm_config_db #(integer) :: get (null, "uvm_test_top.*", "Parameter-1", value))
      `uvm_info("Parameter-1", $sformatf("Found Integer: %0d", value), UVM_MEDIUM);


  endfunction : end_of_elaboration_phase


  endclass: my_env1
  
  class my_env2 extends uvm_env;

    `uvm_component_utils(my_env2)
    
    my_env1 m_env1;
    integer value;

    function new(string name, uvm_component parent);
      super.new(name, parent);
    endfunction
 
    function void build_phase(uvm_phase phase);
     
      m_env1 = my_env1::type_id::create("m_env1", this);
      
      // Retrive the integer with field_name "parameter3" that was set in config_db from the my_test class
      // use uvm_info to display the value
      //add your code here
      if (uvm_config_db #(integer) :: get (null, "uvm_test_top.m_env2", "Parameter-3", value))
        `uvm_info("Parameter-3", $sformatf("Found Integer: %0d", value), UVM_MEDIUM);
    endfunction
  endclass: my_env2
  
  
  class my_test extends uvm_test;
  
    `uvm_component_utils(my_test)
    
    my_env2 m_env2;
    
    function new(string name, uvm_component parent);
      super.new(name, parent);
    endfunction
    
    function void build_phase(uvm_phase phase);
      
      m_env2 = my_env2::type_id::create("m_env2", this);
     
      // Set an integer datatype in my_test class using uvm_config_db set method available for both m_env1/m_env2
      // Set the given field_name to "parameter1" with value 15 
      //add your code here
      uvm_config_db #(integer) :: set(null, "uvm_test_top.*", "Parameter-1", 15);
      
      // Set an bit datatype in my_test class using uvm_config_db set method only for m_env1 class
      // Set the given field_name to "parameter2" with value 20 
      //add your code here
      uvm_config_db #(bit [4:0]) :: set(null, "uvm_test_top.m_env2.m_env1", "Parameter-2", 20);
      
      // Set an integer datatype in my_test class using uvm_config_db set method only for m_env2 class
      // Set the given field_name to "parameter3" with value 10 
      //add your code here
      uvm_config_db #(integer) :: set(null, "uvm_test_top.m_env2", "Parameter-3", 10);
    
    endfunction
   
    task run_phase(uvm_phase phase);
      phase.raise_objection(this);
      #10;
      `uvm_info("", "UVM_CONFIG_DB", UVM_MEDIUM)
      phase.drop_objection(this);
    endtask
     
  endclass: my_test
  
  
endpackage: my_pkg


module top;

  import uvm_pkg::*;
  import my_pkg::*;
  
  initial
  begin
      run_test("my_test");
  end

endmodule: top
