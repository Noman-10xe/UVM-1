// Author: Noman Rafiq
// Dated: Oct 30, 2024

`include "basic_test.sv"

module tlm_tb;

  //---------------------------------------
  // Calling TestCase
  //---------------------------------------
  initial begin
    run_test("basic_test");  
  end  
  
endmodule
