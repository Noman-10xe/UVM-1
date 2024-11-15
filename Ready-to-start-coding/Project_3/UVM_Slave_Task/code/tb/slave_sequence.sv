`ifndef SLAVE_SEQ_LIB_SV
`define SLAVE_SEQ_LIB_SV

class slave_default_seq extends uvm_sequence #(slave_item);

  `uvm_object_utils(slave_default_seq)
  
  // Slave Req and Slave Res objects
  slave_item req;
  slave_item res;

  extern function new(string name = "");
  extern task body();


endclass : slave_default_seq


function slave_default_seq::new(string name = "");
  super.new(name);
endfunction : new


task slave_default_seq::body();
  `uvm_info(get_type_name(), "Default sequence starting", UVM_HIGH)
  
  req = slave_item::type_id::create("req");
  res = slave_item::type_id::create("res");
  
  repeat(100) begin
  	
  	// Slave Request
  	start_item(req);
  	finish_item(req);
  	
  	repeat(10) begin
  		// Slave Response
  		start_item(res);
  		assert(res.randomize() with { res.valid == 1; });
  		finish_item(res);
  	end
  end
  `uvm_info(get_type_name(), "Default sequence completed", UVM_HIGH)
endtask : body



`endif // SLAVE_SEQ_LIB_SV

