interface async_fifo_bfm;
  
    bit winc, wclk, wrst_n;
    bit rinc, rclk, rrst_n;
    logic [FIFO_DATA_WIDTH-1:0] wdata;

   logic [FIFO_DATA_WIDTH-1:0] rdata;
   logic wfull;
   logic rempty;
  
    bit  rdDone;
  
    bit wrDone;
  
  
  
  task reset_rdwr();
    begin
      winc=0;
      wrst_n=0;
      
      rinc=0;
      rrst_n=0;
      
      repeat(6) @(posedge wclk);
        wrst_n= 1'b1;
      
      repeat(6) @(posedge rclk);
        rrst_n =1'b1;
    end
  endtask

   task push(input bit [FIFO_DATA_WIDTH-1:0] data , input bit last);
      
      begin
        @(posedge wclk);
        while (wfull == 1'b1) begin
          winc = 1'b0;
          wdata = {(FIFO_DATA_WIDTH){1'b0}};
          @(posedge wclk);
      end
        winc = 1'b1;
        wdata = data;
        if(last) begin
          @(posedge wclk)
          winc = 1'b0;
          wdata = {(FIFO_DATA_WIDTH){1'b0}};
          
          repeat(10) @(posedge wclk)
            wrDone = 1;
        end
      end
      
    endtask : push
    
    task pop(input bit last);
      begin
        @(posedge rclk);
        $display("DV: %0t, rempty: %0b, rinc: %0b, rdata:%0b\n", $time, bfm.rempty, bfm.rinc, bfm.rdata);
        while (rempty == 1'b1) begin
          rinc = 1'b0;
          @(posedge rclk);
          $display("DV: %0t, rempty: %0b, rinc: %0b, rdata:%0b\n", $time, bfm.rempty, bfm.rinc, bfm.rdata);
        end
        rinc = 1'b1;
        
        if(last) begin
          @(posedge rclk);
          rinc = 1'b0;
          repeat (10) @ (posedge rclk);
          rdDone = 1;
          
        end
      end
    endtask : pop
    
    initial begin
      wclk = 1'b0;
      rclk = 1'b0;
      
      fork
        forever #10ns wclk = ~wclk;
        forever #35ns rclk = ~rclk;     
      join     
    end
    
 
endinterface