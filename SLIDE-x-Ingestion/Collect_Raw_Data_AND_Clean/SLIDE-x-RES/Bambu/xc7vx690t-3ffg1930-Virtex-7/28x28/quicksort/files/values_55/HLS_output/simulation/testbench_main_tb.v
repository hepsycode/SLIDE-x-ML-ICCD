// verilator lint_off BLKANDNBLK
// verilator lint_off BLKSEQ
`timescale 1ns / 1ps
// CONSTANTS DECLARATION
`define EOF 32'hFFFF_FFFF
`define NULL 0
`define MAX_COMMENT_LENGTH 1000
`define SIMULATION_LENGTH 200000000

`define HALF_CLOCK_PERIOD 2.5

`define CLOCK_PERIOD (2*`HALF_CLOCK_PERIOD)

`define MEM_DELAY_READ 2

`define MEM_DELAY_WRITE 1

// MODULE DECLARATION
module main_tb(clock);

  function real bits32_to_real64;
    input [31:0] in1;
    reg [7:0] exponent1;
    reg is_exp_zero;
    reg is_all_ones;
    reg [10:0] exp_tmp;
    reg [63:0] out1;
  begin
    exponent1 = in1[30:23];
    is_exp_zero = exponent1 == 8'd0;
    is_all_ones = exponent1 == {8{1'b1}};
    exp_tmp = {3'd0, exponent1} + 11'd896;
    out1[63] = in1[31];
    out1[62:52] = is_exp_zero ? 11'd0 : (is_all_ones ? {11{1'b1}} : exp_tmp);
    out1[51:29] = in1[22:0];
    out1[28:0] = 29'd0;
    bits32_to_real64 = $bitstoreal(out1);
  end
  endfunction
  function real compute_ulp32;
    input [31:0] computed;
    input [31:0] expected;
    real computedR;
    real expectedR;
    real diffR;
    reg [31:0] denom;
    real denomR;
  begin
    if (expected[30:23] == {8{1'b1}} ||computed[30:23] == {8{1'b1}})
      compute_ulp32 = computed != expected && (computed[22:0] == 23'd0 || expected[22:0] == 23'd0) ? {1'b0,({8{1'b1}}-8'd1),{23'b1} } : 32'd0;
    else
    begin
      denom = 32'd0;
      if (expected[30:0] == 31'd0)
        denom[30:23] = 8'd104;
      else
        denom[30:23] = expected[30:23]-8'd23;
      computedR = bits32_to_real64({1'b0, computed[30:0]});
      expectedR = bits32_to_real64({1'b0, expected[30:0]});
      denomR = bits32_to_real64(denom);
      diffR = computedR - expectedR;
      if(diffR < 0.0)
        diffR = - diffR;
      if (expected[30:0] == 31'd0 && computed[30:0] == 31'd0  && expected[31] != computed[31] )
        compute_ulp32 = 1.0;
      else
        compute_ulp32 = diffR / denomR;
    end
  end
  endfunction
  
  function real compute_ulp64;
    input [63:0] computed;
    input [63:0] expected;
    real computedR;
    real expectedR;
    real diffR;
    reg [63:0] denom;
    real denomR;
  begin
    if (expected[62:52] == {11{1'b1}} ||computed[62:52] == {11{1'b1}})
      compute_ulp64 = computed != expected && (computed[51:0] == 52'd0 || expected[51:0] == 52'd0) ? {1'b0,({11{1'b1}}-11'd1),{52'b1} } : 64'd0;
    else
    begin
      denom = 64'd0;
      if (expected[62:0] == 63'd0)
        denom[62:52] = 11'd971;
      else
        denom[62:52] = expected[62:52]-11'd52;
      computedR = $bitstoreal({1'b0, computed[62:0]});
      expectedR = $bitstoreal({1'b0, expected[62:0]});
      denomR = $bitstoreal(denom);
      diffR = computedR - expectedR;
      if(diffR < 0.0)
        diffR = - diffR;
      if (expected[62:0] == 63'd0 && computed[62:0] == 63'd0  && expected[63] != computed[63] )
        compute_ulp64 = 1.0;
      else
        compute_ulp64 = diffR / denomR;
    end
  end
  endfunction
  parameter MEMSIZE = 1, MEM_var_28860_28869=32, MEM_var_29135_28866=32;
  // AUXILIARY VARIABLES DECLARATION
  time startTime, endTime, sim_time;
  integer res_file, file, _r_, _n_, _i_, _addr_i_;
  integer _ch_;
  reg compare_outputs, success; // Flag: True if input vector specifies expected outputs
  reg [8*`MAX_COMMENT_LENGTH:0] line; // Comment line read from file
  
  reg [31:0] addr, base_addr;
  reg [7:0] _bambu_testbench_mem_ [0:MEMSIZE-1];
  
  reg [7:0] _bambu_databyte_;
  
  reg [3:0] __state, __next_state;
  reg start_results_comparison;
  reg next_start_port;
  // INPUT SIGNALS
  input clock;
  reg reset;
  reg start_port;
  wire [1:0] S_oe_ram;
  wire [1:0] S_we_ram;
  wire [13:0] S_addr_ram;
  wire [15:0] S_Wdata_ram;
  wire [7:0] S_data_ram_size;
  wire [15:0] M_Rdata_ram;
  wire [1:0] M_DataRdy;
  
  reg start_next_sim;
  // OUTPUT SIGNALS
  wire done_port;
  wire [15:0] Sout_Rdata_ram;
  wire [1:0] Sout_DataRdy;
  wire [1:0] Mout_oe_ram;
  wire [1:0] Mout_we_ram;
  wire [13:0] Mout_addr_ram;
  wire [15:0] Mout_Wdata_ram;
  wire [7:0] Mout_data_ram_size;
  
  reg signed [31:0] reg_DataReady[1:0];
  wire [15:0] mask;
  
  wire [15:0] M_Rdata_ram_delayed_temporary;
  
  reg [15:0] M_Rdata_ram_delayed [`MEM_DELAY_READ-2:0];
  
  // MODULE INSTANTIATION AND PORTS BINDING
  main #(.MEM_var_28860_28869(32), .MEM_var_29135_28866(32)) main (.clock(clock), .reset(reset), .start_port(start_port), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .done_port(done_port), .Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size));
  
  // Operation to be executed just one time
  initial
  begin
    // OPEN FILE WITH VALUES FOR SIMULATION
    file = $fopen("HLS_output//simulation/values.txt","r");
    // Error in file open
    if (file == `NULL)
    begin
      $display("ERROR - Error opening the file");
      $finish;// Terminate
          end
    // OPEN FILE WHERE results will be written
    res_file = $fopen("results.txt","w");
    
    // Error in file open
    if (res_file == `NULL)
    begin
      $display("ERROR - Error opening the res_file");
      $fclose(file);
      $finish;// Terminate
          end
    // Variables initialization
    sim_time = 0;
    startTime = 0;
    endTime = 0;
    _ch_ = 0;
    _n_ = 0;
    _r_ = 0;
    line = 0;
    _i_ = 0;
    _addr_i_ = 0;
    compare_outputs = 0;
    start_next_sim = 0;
    __next_state = 0;
    reset = 0;
    next_start_port = 0;
    success = 1;
    
    
    reg_DataReady[0] = 0;
    
    reg_DataReady[1] = 0;
    
    for (addr = 0; addr < MEMSIZE; addr = addr + 1)
    begin
      _bambu_testbench_mem_[addr] = 8'b0;
    end
  end
  
  // Assigning values
  always @ (posedge clock)
  begin
    if (next_start_port == 1'b1)
    begin
      // reading base address memory --------------------------------------------------------------
      _ch_ = $fgetc(file);
      if ($feof(file))
      begin
        $display("No more values found. Simulation(s) executed: %d.\n", _n_);
        $fclose(res_file);
        $fclose(file);
        $finish;
      end
      while (_ch_ == "/" || _ch_ == "\n" || _ch_ == "b")
      begin
        if (_ch_ == "b")
        begin
          _r_ = $fscanf(file,"%b\n", base_addr); end
        else
        begin
          _r_ = $fgets(line, file);
        end
        _ch_ = $fgetc(file);
      end
      // initializing memory --------------------------------------------------------------
      while (_ch_ == "/" || _ch_ == "\n" || _ch_ == "m")
      begin
        if (_ch_ == "m")
        begin
          _r_ = $fscanf(file,"%b\n", _bambu_databyte_);
          _bambu_testbench_mem_[_addr_i_] = _bambu_databyte_;
          _addr_i_ = _addr_i_ + 1;
        end
        else
        begin
          _r_ = $fgets(line, file);
        end
        _ch_ = $fgetc(file);
      end
      // Simulation start
      startTime = $time;
      $display("Reading of vector values from input file completed. Simulation started.");
    end
  end
  
  assign mask[7:0] = (1 << Mout_data_ram_size[3:0]) -1;
  assign mask[15:8] = (1 << Mout_data_ram_size[7:4]) -1;
  // OffChip Memory write
  always @(posedge clock)
  begin
    if (Mout_we_ram[0] === 1'b1 && base_addr <= Mout_addr_ram[6:0] && Mout_addr_ram[6:0] < (base_addr + MEMSIZE))
    begin
      {_bambu_testbench_mem_[Mout_addr_ram[6:0] + 0 - base_addr]} = (Mout_Wdata_ram[7:0] & mask[7:0]) | ({_bambu_testbench_mem_[Mout_addr_ram[6:0] + 0 - base_addr]} & ~(mask[7:0]));
    end
    if (Mout_we_ram[1] === 1'b1 && base_addr <= Mout_addr_ram[13:7] && Mout_addr_ram[13:7] < (base_addr + MEMSIZE))
    begin
      {_bambu_testbench_mem_[Mout_addr_ram[13:7] + 0 - base_addr]} = (Mout_Wdata_ram[15:8] & mask[15:8]) | ({_bambu_testbench_mem_[Mout_addr_ram[13:7] + 0 - base_addr]} & ~(mask[15:8]));
    end
  end
  
  assign M_Rdata_ram_delayed_temporary[7:0] = ((base_addr <= Mout_addr_ram[6:0] && Mout_addr_ram[6:0] < (base_addr + MEMSIZE))) ? {_bambu_testbench_mem_[Mout_addr_ram[6:0] + 0 - base_addr]} : 8'b0;
  always @(posedge clock)
  begin
    for (_i_=0; _i_<`MEM_DELAY_READ-1; _i_=_i_+1)
      if(_i_ == `MEM_DELAY_READ-2)
        M_Rdata_ram_delayed[_i_][7:0] <= M_Rdata_ram_delayed_temporary[7:0];
      else
        M_Rdata_ram_delayed[_i_][7:0] <= M_Rdata_ram_delayed[_i_+1][7:0];
  
  end
  assign M_Rdata_ram[7:0] = M_Rdata_ram_delayed[0][7:0]|Sout_Rdata_ram[7:0] ;
  
  assign M_Rdata_ram_delayed_temporary[15:8] = ((base_addr <= Mout_addr_ram[13:7] && Mout_addr_ram[13:7] < (base_addr + MEMSIZE))) ? {_bambu_testbench_mem_[Mout_addr_ram[13:7] + 0 - base_addr]} : 8'b0;
  always @(posedge clock)
  begin
    for (_i_=0; _i_<`MEM_DELAY_READ-1; _i_=_i_+1)
      if(_i_ == `MEM_DELAY_READ-2)
        M_Rdata_ram_delayed[_i_][15:8] <= M_Rdata_ram_delayed_temporary[15:8];
      else
        M_Rdata_ram_delayed[_i_][15:8] <= M_Rdata_ram_delayed[_i_+1][15:8];
  
  end
  assign M_Rdata_ram[15:8] = M_Rdata_ram_delayed[0][15:8]|Sout_Rdata_ram[15:8] ;
  
  assign S_Wdata_ram = Mout_Wdata_ram;
  always @(posedge clock)
  begin
    if ((Mout_oe_ram[0]===1'b1 && base_addr <= Mout_addr_ram[6:0] && Mout_addr_ram[6:0] < (base_addr + MEMSIZE)))
    begin
      if (reg_DataReady[0] >= 0 && reg_DataReady[0] < `MEM_DELAY_READ-1)
        reg_DataReady[0] <= 1 + reg_DataReady[0];
      else
        reg_DataReady[0] <= 0;
      end
    
    else if ((Mout_we_ram[0]===1'b1 && base_addr <= Mout_addr_ram[6:0] && Mout_addr_ram[6:0] < (base_addr + MEMSIZE)))
    begin
      if (reg_DataReady[0] >= 0 && reg_DataReady[0] < `MEM_DELAY_WRITE-1)
        reg_DataReady[0] <= 1 + reg_DataReady[0];
      else
        reg_DataReady[0] <= 0;
      end
    
    else
      reg_DataReady[0] <= 0;
    if ((Mout_oe_ram[1]===1'b1 && base_addr <= Mout_addr_ram[13:7] && Mout_addr_ram[13:7] < (base_addr + MEMSIZE)))
    begin
      if (reg_DataReady[1] >= 0 && reg_DataReady[1] < `MEM_DELAY_READ-1)
        reg_DataReady[1] <= 1 + reg_DataReady[1];
      else
        reg_DataReady[1] <= 0;
      end
    
    else if ((Mout_we_ram[1]===1'b1 && base_addr <= Mout_addr_ram[13:7] && Mout_addr_ram[13:7] < (base_addr + MEMSIZE)))
    begin
      if (reg_DataReady[1] >= 0 && reg_DataReady[1] < `MEM_DELAY_WRITE-1)
        reg_DataReady[1] <= 1 + reg_DataReady[1];
      else
        reg_DataReady[1] <= 0;
      end
    
    else
      reg_DataReady[1] <= 0;
  
  end
  
  assign M_DataRdy[0] = Sout_DataRdy[0] | ((base_addr <= Mout_addr_ram[6:0] && Mout_addr_ram[6:0] < (base_addr + MEMSIZE)) && (((reg_DataReady[0] == `MEM_DELAY_READ-1)) || (Mout_we_ram[0]===1'b1 && (reg_DataReady[0] == `MEM_DELAY_WRITE-1))));
  assign M_DataRdy[1] = Sout_DataRdy[1] | ((base_addr <= Mout_addr_ram[13:7] && Mout_addr_ram[13:7] < (base_addr + MEMSIZE)) && (((reg_DataReady[1] == `MEM_DELAY_READ-1)) || (Mout_we_ram[1]===1'b1 && (reg_DataReady[1] == `MEM_DELAY_WRITE-1))));
  assign S_oe_ram = Mout_oe_ram;
  assign S_we_ram = Mout_we_ram;
  assign S_addr_ram = Mout_addr_ram;
  assign S_data_ram_size = Mout_data_ram_size;
  always @(posedge clock)
  begin
    if (Mout_we_ram[0]===1'b1 && Mout_oe_ram[0]===1'b1)
    begin
    // error
      $display("ERROR - Mout_we_ram and Mout_oe_ram both enabled");
      $fclose(res_file);
      $fclose(file);
      $finish;
    end
    if (Mout_we_ram[1]===1'b1 && Mout_oe_ram[1]===1'b1)
    begin
    // error
      $display("ERROR - Mout_we_ram and Mout_oe_ram both enabled");
      $fclose(res_file);
      $fclose(file);
      $finish;
    end
  
  end
  
  always @(negedge clock)
  begin
  if (done_port == 1)
    begin
    end
    end
  always @(negedge clock)
  begin
    if (start_results_comparison == 1)
    begin
      // Compare output with expected output (if given)
      if (compare_outputs == 1)
      begin
        $display("Simulation ended after %d cycles.\n", sim_time);
        if (success == 1)
        begin
          $display("Simulation completed with success\n");
          $fwrite(res_file, "1\t");
        end
        else
        begin
          $display("Simulation FAILED\n");
          $fwrite(res_file, "0\t");
        end
      end
      else
      begin
        $display("Simulation ended after %d cycles (no expected outputs specified).\n", sim_time);
        $fwrite(res_file, "-\t");
      end
      $fwrite(res_file, "%d\n", sim_time);
    end
  end
  
  always @(*)
    begin
       start_results_comparison = 0;
       reset = 1;
       start_next_sim = 0;
       next_start_port = 0;
       case (__state)
         0:
           begin
              reset = 0;
              __next_state = 1;
           end
         1:
           begin
              reset = 0;
              __next_state = 2;
           end
         2:
           begin
              next_start_port = 1;
              if (done_port == 1'b1)
                begin
                  __next_state = 4;
                end
              else
                __next_state = 3;
           end
         3:
           if (done_port == 1'b1)
             begin
                __next_state = 4;
             end
           else
             __next_state = 3;
         4:
           begin
              start_results_comparison = 1;
              __next_state = 5;
           end
         5:
           begin
  // wait a cycle (needed for a correct simulation)
              $fclose(res_file);
              $fclose(file);
              $finish;
           end
         default:
           begin
              __next_state = 0;
           end
       endcase // case (__state)
    end // always @ (*)
  always @(posedge clock)
    begin
    __state <= __next_state;
    start_port <= next_start_port;
    end
  // Check done_port signal
  always @(negedge clock)
  begin
    if (done_port == 1)
    begin
      endTime = $time;
      
      // Simulation time (clock cycles) = 1+(time elapsed (seconds) / clock cycle (seconds per cycle)) (until done is 1)
      sim_time = $rtoi((endTime + `HALF_CLOCK_PERIOD - startTime)/`CLOCK_PERIOD);
      
      success = 1;
      compare_outputs = 0;
    end
  end
  always @(posedge clock)
  begin
    if (($time - startTime)/`CLOCK_PERIOD > `SIMULATION_LENGTH)
    begin
      $display("Simulation not completed into %d cycles", `SIMULATION_LENGTH);
      $fwrite(res_file, "X\t");
      $fwrite(res_file, "%d\n", `SIMULATION_LENGTH);
      $fclose(res_file);
      $fclose(file);
      $finish;
    end
  end
  
endmodule

// verilator lint_on BLKANDNBLK
// verilator lint_on BLKSEQ

