// Author : Noman Rafiq
// Dated  : Nov 14, 2024

class config_class extends uvm_object;

   `uvm_object_utils(config_class)
  
 /////// Constructor ////////
 function new (string name = "config_class");

   super.new(name);

 endfunction: new

 /////// Different Variables Declaration ////////
 int num_trans = 20;
 bit check_enable = 1;
 
endclass: config_class