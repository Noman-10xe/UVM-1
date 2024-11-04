/* DESCRIPTION: This sequence tests the full counter loop functionality 
*  of the Design by keeping reset de-asserted and keep incrementing the 
*  the counter until it wraps back to 0 again.
*/

class wrap_sequence extends base_sequence;

  `uvm_object_utils(wrap_sequence)

  // Constructor
  function new(string name = "wrap_sequence");
    super.new(name);
  endfunction

  // Body
  virtual task body();
    transaction t;
    
    repeat(1) begin
    t	= transaction :: type_id :: create("t");
    
    // Turn off randomization for rstn
    t.rstn.rand_mode(0);
    t.enable.rand_mode(0);
    t.rstn = 0; 				// rstn asserted
    
    start_item(t);
    assert(t.randomize());
    finish_item(t);
    
    #10;						// Wait for 10 timeunits
    end
    
    repeat(19) begin
    t	= transaction :: type_id :: create("t");
    
    // Turn off randomization for rstn
    t.rstn.rand_mode(0);
    t.enable.rand_mode(0);
    t.rstn = 1; 				// rstn de-asserted
    t.enable = 1;					// Counter Enabled
      
    start_item(t);
    assert(t.randomize());
    finish_item(t);
    
    #10;						// Wait for 10 timeunits
    end    
  endtask
endclass
