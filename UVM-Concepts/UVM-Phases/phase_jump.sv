import uvm_pkg::*;
`include "uvm_macros.svh"

class my_test extends uvm_test;

	// Factory Registration
	`uvm_component_utils(my_test)

	function new(string name, uvm_component parent);
		super.new(name, parent);
	endfunction
	

	// The build_phase method
	function void build_phase(uvm_phase phase);
                $display("Inside the build phase");
                
		// we wish to jump to end_of_elaboration_phase
		phase.jump(uvm_end_of_elaboration_phase::get());

	endfunction

	// The connect_phase method
	function void connect_phase(uvm_phase phase);
		$display("Inside the connect phase");
	endfunction

	// The end_of_elaboration_phase method
	function void end_of_elaboration_phase(uvm_phase phase);
		$display("Inside the end of elaboration phase");
		uvm_top.print_topology();
	endfunction
endclass: my_test


module top;

	initial begin
	run_test("my_test");
	end

endmodule: top

