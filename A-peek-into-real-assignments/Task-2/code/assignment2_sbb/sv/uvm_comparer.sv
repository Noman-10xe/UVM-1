///////////////////////////////////////////////////////////////////////////////////
//										 //
//										 //
//										 //
//				uvm_comparer.sv				  	 //
//				  ( optional )				 	 //
//										 //
//										 //
///////////////////////////////////////////////////////////////////////////////////
//
// AUTHOR: Noman Rafiq
// Dated: Nov 12, 2024
//
/////////////////////////

function bit comp_equal ( input yapp_packet yp, input channel_packet cp);
	
	uvm_comparer comp = new();
	
	// Compare addresses
	if (!comp.compare_field("addr", yp.addr, cp.addr, 2)) begin
		`uvm_error("UVM COMPARER", "TEST FAILED");
		return(0);
	end
	
	// Compare lengths
	if (!comp.compare_field("length", yp.length, cp.length, 8)) begin
		`uvm_error("UVM COMPARER", "TEST FAILED");
		return(0);
	end
	
	// Compare payloads
	foreach( yp.payload[i] ) begin
		if (!comp.compare_field("payload[]", yp.payload[i], cp.payload[i], 8)) begin
			`uvm_error("UVM COMPARER", "TEST FAILED");
			return(0);
		end
	end
	
	// Compare parity
	if (!comp.compare_field("payload[]", yp.parity, cp.parity, 8)) begin
		`uvm_error("UVM COMPARER", "TEST FAILED");
		return(0);
	end
	return(1);

	
endfunction
