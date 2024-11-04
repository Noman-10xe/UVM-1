// Author: Noman Rafiq
// Dated: Oct 31, 2024

`include "interface.sv"
`include "test_top.sv"

module tb_top;
  
  bit clk;
  
  intf dut_intf(.clk(clk));
  
  always #5 clk = ~clk;
  
  // DUT Instantiation
  counter dut(.clk(clk),
              .enable(dut_intf.enable),
              .rstn(dut_intf.rstn),
              .out(dut_intf.out)
             );
  
  initial begin
    // Set the virtual interface in database
    uvm_config_db #(virtual intf) :: set(null, "uvm_test_top.env.agt.*", "intf", dut_intf);
    run_test("test_top");
  end
  
  initial begin
    $dumpvars;
    $dumpfile("dump.vcd");
  end
  
endmodule
