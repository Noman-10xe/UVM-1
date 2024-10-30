`uvm_analysis_imp_decl(_port_a)
`uvm_analysis_imp_decl(_port_b)

class component_b extends uvm_component;
  
  transaction trans;
  
  // Declarations
  uvm_analysis_imp_port_a #(transaction,component_b) port_a;
  uvm_analysis_imp_port_b #(transaction,component_b) port_b;
  

  `uvm_component_utils(component_b)
  
  //--------------------------------------- 
  // Constructor
  //---------------------------------------
  function new(string name, uvm_component parent);
    super.new(name, parent);
    port_a = new("port_a", this);
    port_b = new("port_b", this);
  endfunction : new
  
  //---------------------------------------
  // Analysis Imp port write methods
  //---------------------------------------
  virtual function void write_port_a(transaction trans);
    `uvm_info(get_type_name(),$sformatf(" Inside write_port_a method. Received trans on Analysis Imp Port"),UVM_LOW)
    `uvm_info(get_type_name(),$sformatf(" Printing trans, \n %s",trans.sprint()),UVM_LOW)
  endfunction
  
  virtual function void write_port_b(transaction trans);
    `uvm_info(get_type_name(),$sformatf(" Inside write_port_b method. Received trans on Analysis Imp Port"),UVM_LOW)
    `uvm_info(get_type_name(),$sformatf(" Printing trans, \n %s",trans.sprint()),UVM_LOW)
  endfunction

endclass : component_b
