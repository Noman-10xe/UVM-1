/* DESCRIPTION: This sequence tests the reset functionality of the DUT 
*  by asserting and de-asserting 'rstn' and checking the reset state   
*  scoreboard.
*/

class reset_sequence extends base_sequence;

  `uvm_object_utils(reset_sequence)

  // Constructor
  function new(string name = "reset_sequence");
    super.new(name);
  endfunction

  // Body
  virtual task body();
    transaction t;
    
    // Apply reset at the beginning
    `uvm_info(get_type_name(), "Applying reset", UVM_LOW)
        
    repeat(10) begin
    t	= transaction :: type_id :: create("t");
    
    // Turn off randomization for rstn
    t.rstn.rand_mode(0);
    t.rstn = 0; 				// rstn asserted
    
    start_item(t);
    assert(t.randomize());
    finish_item(t);
    
    #10;						// Wait for 10 timeunits
    end
    
    repeat (10) begin
    t	= transaction :: type_id :: create("t");
    
    // Turn off randomization for rstn
    t.rstn.rand_mode(0);
    t.rstn = 1;					// rstn de-asserted
    start_item(t);
    assert(t.randomize());
    finish_item(t);
   	#10;
    end    
  endtask
endclass
