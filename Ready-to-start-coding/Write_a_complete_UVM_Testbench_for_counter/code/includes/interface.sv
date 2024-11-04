interface intf(input logic clk);
  
  // Signal Declaration
  logic	enable;
  logic [3:0] out;
  logic rstn;
  
  //////////////////////////////////////////////////
  // 
  // Cloking Blocks
  //
  
  // Driver
  clocking cb_driver @(posedge clk);
    output enable;
    output rstn;
    input out;
  endclocking: cb_driver
  
  // Monitor
  clocking cb_monitor @(posedge clk);
    input enable;
    input out;
    input rstn;
  endclocking: cb_monitor
  
  
  //////////////////////////////////////////////////
  // 
  // Modports
  //
  
  modport DRIVER	(input clk, clocking cb_driver);
  modport MONITOR	(input clk, clocking cb_monitor);
  
endinterface
