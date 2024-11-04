function void reference_model(transaction t, ref bit[3:0] expected_out);
  
    // Comparison with DUT output
  if (expected_out == t.out) begin
    `uvm_info("SBD - CHECK", $sformatf("TEST PASSED :: Expected = %0d, Actual = %0d", expected_out, t.out), UVM_MEDIUM)
  end 
  
  else begin
    `uvm_error("SBD - CHECK", $sformatf("TEST FAILED :: Expected = %0d, Actual = %0d", expected_out, t.out))
  end
  
  
  // Reference Model
  if (t.rstn == 0)
    expected_out = 0;
  
  else if (t.enable == 1 && expected_out != 15)
    expected_out += 1;
  
  else if (t.enable == 0)
    expected_out = expected_out;
  else
    expected_out = 0;
 
endfunction
