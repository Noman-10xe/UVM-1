class sequence_item extends uvm_sequence_item;

  	`uvm_object_utils(sequence_item)
  
  function new(string name= "sequence_item");
    super.new(name);
  endfunction
  
  rand logic [FIFO_DATA_WIDTH-1:0] wdata;
  logic [FIFO_DATA_WIDTH-1:0] rdata;
  
  constraint data {wdata dist {8'h00:=1, [8'h01:8'hFE]:=1, 8'hFF:=1};}
  
endclass