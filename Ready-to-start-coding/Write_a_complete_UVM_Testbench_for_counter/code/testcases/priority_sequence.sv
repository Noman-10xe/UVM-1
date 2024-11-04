/* DESCRIPTION: This sequence tests the priority of	
*  enable and rstn signals. The sequence will try  	
*  all possible combinations of enable & rstn and	
*  test if the design is functioning as expected	
*  with rstn having a higher priority.				
* 													
*		-------------------------					
*		|	rstn	|	Enable	|					
*		-------------------------					
*       |	  0		|	  0		|  					
*		-------------------------					
*       |	  0		|	  1		|  					
*		-------------------------					
*       |	  1		|	  0		|  					
*		-------------------------					
*       |	  1		|	  1		|  					
*		-------------------------					
*/

class priority_sequence extends base_sequence;

  `uvm_object_utils(priority_sequence)

  // Constructor
  function new(string name = "priority_sequence");
    super.new(name);
  endfunction

  // Body
  virtual task body();
    transaction t;
    
    
    // Case: 00
    repeat(5) begin
    t	= transaction :: type_id :: create("t");
    
    // Turn off randomization for rstn
    t.rstn.rand_mode(0);
    t.enable.rand_mode(0);
    
    t.rstn 		= 0; 			// rstn asserted
    t.enable	= 0;
    
    start_item(t);
    assert(t.randomize());
    finish_item(t);
    
    #10;						// Wait for 10 timeunits
    end
    
    
    // Case: 01
    repeat(5) begin
    t	= transaction :: type_id :: create("t");
    
    // Turn off randomization for rstn
    t.rstn.rand_mode(0);
    t.enable.rand_mode(0);
    
    t.rstn 		= 0;
    t.enable	= 1;			// Enabled with rstn asserted
    
    start_item(t);
    assert(t.randomize());
    finish_item(t);
    
    #10;						// Wait for 10 timeunits
    end
    
    
    // Case: 10
    repeat(5) begin
    t	= transaction :: type_id :: create("t");
    
    // Turn off randomization for rstn
    t.rstn.rand_mode(0);
    t.enable.rand_mode(0);
    
    t.rstn 		= 1;
    t.enable	= 0;			// Disbaled with rstn de-asserted
    
    start_item(t);
    assert(t.randomize());
    finish_item(t);
    
    #10;						// Wait for 10 timeunits
    end
    
    
    // Case: 11
    repeat(5) begin
    t	= transaction :: type_id :: create("t");
    
    // Turn off randomization for rstn
    t.rstn.rand_mode(0);
    t.enable.rand_mode(0);
    
    t.rstn 		= 1;
    t.enable	= 1;			// Enabled with rstn de-asserted
    
    start_item(t);
    assert(t.randomize());
    finish_item(t);
    
    #10;						// Wait for 10 timeunits
    end
    
  endtask
endclass
