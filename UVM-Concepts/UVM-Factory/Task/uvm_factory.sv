import uvm_pkg::*;
`include "uvm_macros.svh"

class animal extends uvm_component;
	// Component Factory registration
	`uvm_component_utils(animal)

	// new constructor
	function new(string name, uvm_component parent);
		super.new(name, parent);
	endfunction

	virtual function void whoami();
			`uvm_info(get_type_name(), "I am an animal" , UVM_NONE);
	endfunction: whoami
	
endclass: animal


class lion extends animal;
	// Component Factory registration here
	`uvm_component_utils(lion)
	
	// new constructor here
	function new(string name, uvm_component parent);
	        super.new(name, parent);
	endfunction

	// whoami function here
	virtual function void whoami();
	        `uvm_info(get_type_name(), "I am a Lion", UVM_NONE);
	endfunction
	
endclass: lion


class test extends uvm_test;
	// Component Factory registration
	`uvm_component_utils(test)

	// creation of 2 animal type handles
	animal animal_h1;
	animal animal_h2;

	// new constructor
	function new(string name = "test", uvm_component parent = null);
		super.new(name, parent);
	endfunction

	// build phase
 	function void build_phase(uvm_phase phase);
		uvm_factory factory = uvm_factory::get();
		super.build_phase(phase);
		
		if($test$plusargs("set_type_override_by_type")) begin

			// Add code here for step number 4
                        factory.set_type_override_by_type(animal::get_type(), lion::get_type());
			animal_h1 = animal::type_id::create("animal_h1", this);
			animal_h2 = animal::type_id::create("animal_h2", this);
		end
		
		if($test$plusargs("set_type_override_by_name")) begin

			// Add code here for step number 3
			factory.set_type_override_by_name("animal", "lion", {get_full_name(),".animal"});
			animal_h1 = animal::type_id::create("animal_h1", this);
			animal_h2 = animal::type_id::create("animal_h2", this);
		end
		
		if($test$plusargs("set_inst_override_by_type")) begin

			// Add code here for step number 2
			factory.set_inst_override_by_type(animal::get_type(), lion::get_type(), {get_full_name(), ".animal_h1"});
			animal_h1 = animal::type_id::create("animal_h1", this);
			animal_h2 = animal::type_id::create("animal_h2", this);
		end
		
		if($test$plusargs("set_inst_override_by_name")) begin

		    // Modify this line for step number 1
			//factory.set_inst_override_by_name("animal", "lion", {get_full_name(),".animal_h1"});
			factory.set_inst_override_by_name("animal", "lion", {get_full_name(),".animal_h2"});
			animal_h1 = animal::type_id::create("animal_h1", this);
			animal_h2 = animal::type_id::create("animal_h2", this);
		end
		
		factory.print();
	endfunction: build_phase

	task run_phase(uvm_phase phase);

		super.run_phase(phase);
		animal_h1.whoami();
		animal_h2.whoami();

	endtask: run_phase

endclass: test


module top;

	initial begin
		run_test("test");
	end
endmodule
