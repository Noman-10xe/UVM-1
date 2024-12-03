/////////////////////////////////////////////////////////////////////
//   							           //
//   		  	   Base Test				   //
//                                                                 //
/////////////////////////////////////////////////////////////////////
//                                                                 //
//             Copyright (C) 2024 10xEngineers 	                   //
//             www.10xengineers.ai                                 //
//                                                                 //
/////////////////////////////////////////////////////////////////////
// FILE NAME      : base_test.sv
// AUTHOR         : Noman Rafiq
// AUTHOR'S EMAIL : noman.rafiq@10xengineers.ai
// ------------------------------------------------------------------
// RELEASE HISTORY													 
// ------------------------------------------------------------------
// VERSION DATE        	AUTHOR         								 
// 1.0     2024-Nov-21  Noman Rafiq 						 		 
// ------------------------------------------------------------------

class base_test extends uvm_test;
    
    `uvm_component_utils(base_test)
    
    ///////////////////////////////////////////////////////////////////
    //
    // declarations 
    // 
    environment env;
    mem_model uni_mem;
    virtual_sequence vseq;
    ///////////////////////////////////////////////////////////////////
    //
    // interfaces
    //
    virtual instr_mem_intf instr_vif;
    virtual data_mem_intf data_vif;
    virtual dut_probe_intf dut_vif;
    
    // Command-Line Processor
    uvm_cmdline_processor clp;
    string bin; 
    string clp_bin_path;


    function new(string name = "base_test", uvm_component parent = null);
       super.new(name, parent);
    endfunction : new
    
    
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
 
        if(!uvm_config_db #(virtual instr_mem_intf)::get(null, "*", "instr_intf", instr_vif) )
         `uvm_fatal(`gfn, "Cannot get instr_intf");
         
         if(!uvm_config_db #(virtual data_mem_intf)::get(null, "*", "data_intf", data_vif) )
         `uvm_fatal(`gfn, "Cannot get data_vif");
         
         if(!uvm_config_db #(virtual dut_probe_intf)::get(null, "*", "dut_intf", dut_vif) )
         `uvm_fatal(`gfn, "Cannot get dut_probe_intf");
       
        env 		= environment::type_id::create("env",this);
        uni_mem		= mem_model_pkg::mem_model#()::type_id::create("uni_mem");
        vseq		= virtual_sequence::type_id::create("vseq");
        
        // clp instance
        clp		= uvm_cmdline_processor::get_inst();
    endfunction : build_phase
    
    
    function void end_of_elaboration_phase(uvm_phase phase);
    	super.end_of_elaboration_phase(phase);
    	uvm_top.print_topology();
    endfunction : end_of_elaboration_phase
    
    
    virtual task run_phase(uvm_phase phase);
    	phase.raise_objection(this);
    	wait(dut_vif.rst_n);
    	
    	// Setting fetch_enable_i & Boot Address
    	dut_vif.dut_cb.fetch_enable_i	<= 1;
    	dut_vif.dut_cb.boot_addr_i	<= 32'h0;    	
    	`uvm_info("BASE TEST", "fetch_enable has been set. Starting Sequences...", UVM_LOW)
    	
    	// get binary path
    	bin	= ( clp.get_arg_value("+bin=", bin) ? bin : 0 );
    	`uvm_info("LOAD_BIN", "Loading Binary File...", UVM_LOW)
    	load_bin(bin);
    	
    	// Pass Memory to Sequence
    	vseq.uni_mem	= uni_mem;
    	
    	fork
    		vseq.start(env.vseqr);
    		ecall_encountered();
    	join_any				// Join forks when any one of the threads complete 
    	
    	`uvm_info("BASE_TEST", "Shutting down the Test", UVM_LOW)
    	phase.drop_objection(this);
    endtask : run_phase
    
    
    //////////////////////////////////////////////////////////////////////////////////////////////
    //
    // Loading Binary File into memory_model
    //
    function void load_bin(string filepath);
	  int file;
	  bit [7:0] read_byte;
	  int read_status;
	  int addr = 32'h80; // Start at address 0x0 after reset
	  
	  file = $fopen(filepath, "rb");
	  
	  if (file == 0) begin
	    `uvm_fatal("FILE_ERROR", "Unable to open file")
	    return;
	  end

	  // Loop to read bytes from the file
	  while (!$feof(file)) begin
	    read_status = $fread(read_byte, file);
	    if ( read_status != 0 ) begin
		uni_mem.write_byte(addr, read_byte);
	      	addr++;
	    end
	    else begin
	    	`uvm_info("FILE_READ", $sformatf("Reached the END of File."), UVM_DEBUG)
	      	break;
	    end
	  end
	  $fclose(file);
	  `uvm_info("LOAD_BIN", $sformatf("Binary file %s loaded successfully into memory", filepath), UVM_LOW)
    endfunction : load_bin
    
    
    ///////////////////////////////////////////////////////////////////
    //
    // dectecting ecall
    //
    task ecall_encountered();
    	while(1) begin 
    		@(posedge instr_vif.clk);
	    	if ( instr_vif.instr_monitor.instr_rdata_i == 32'h00000073 ) begin	// Ecall encountered
	    		dut_vif.dut_cb.fetch_enable_i <= 0;
	    		`uvm_info("ECALL", "Ecall instruction detected. Exiting loop.", UVM_NONE)
	    		break;
	    	end
	end
    endtask : ecall_encountered
    
    
 endclass : base_test
