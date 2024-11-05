// Code your testbench here
// or browse Examples

import uvm_pkg::*;
`include "uvm_macros.svh"

parameter FIFO_DATA_WIDTH = 8;
parameter FIFO_MEM_ADDR_WIDTH = 4;
parameter TEST_FLOW_LENGTH = 50;

`include "sequence_item.sv"

typedef uvm_sequencer #(sequence_item) sequencer;

`include "sequence.sv"
`include "char_sequence.sv"
`include "ascii_char_sequence.sv"
`include "numbers_sequence.sv"

`include "driver.sv"
`include "input_flow_monitor.sv"
`include "output_flow_monitor.sv"
`include "scoreboard.sv"
`include "env.sv"
`include "async_fifo_base_test.sv"
`include "async_fifo_bfm.sv"


program test_prog(interface bfm);
  initial begin
    uvm_config_db #(virtual async_fifo_bfm)::set(null, "*" , "bfm", bfm);
    run_test("async_fifo_base_test");
  end
endprogram

module top;
 
  async_fifo_bfm bfm();
  
  async_fifo #(FIFO_DATA_WIDTH, FIFO_MEM_ADDR_WIDTH) DUT
  (.winc(bfm.winc),
   .wclk(bfm.wclk),
   .wrst_n(bfm.wrst_n),
   .rinc(bfm.rinc),
   .rclk(bfm.rclk),
   .rrst_n(bfm.rrst_n),
   .wdata(bfm.wdata),
   .rdata(bfm.rdata),
   .wfull(bfm.wfull),
   .rempty(bfm.rempty));

  
  test_prog tb_prog(bfm);
  
  initial begin
    $dumpfile("fifo_waveform.vcd");
    $dumpvars();
  end
  
endmodule 
  