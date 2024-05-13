// 
// Politecnico di Milano
// Code created using PandA - Version: PandA 0.9.6 - Revision 891ec3caed502474cab0813cc4a9fc678deabaa5 - Date 2022-06-07T23:04:31
// bambu executed with: bambu -I/home/dews/Scrivania/bambu-hls/RESULTS/Bambu/xc7vx690t-3ffg1930-Virtex-7/28x28/shell_sort/includes/values_61 --simulate --simulator=VERILATOR --clock-period=5 --device-name=xc7vx690t-3ffg1930-VVD /home/dews/Scrivania/bambu-hls/cc4cs_bambu/benchmarkBasic/shell_sort/thrd.c 
// 
// Send any bug to: panda-info@polimi.it
// ************************************************************************
// The following text holds for all the components tagged with PANDA_LGPLv3.
// They are all part of the BAMBU/PANDA IP LIBRARY.
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 3 of the License, or (at your option) any later version.
// 
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public
// License along with the PandA framework; see the files COPYING.LIB
// If not, see <http://www.gnu.org/licenses/>.
// ************************************************************************

`ifdef __ICARUS__
  `define _SIM_HAVE_CLOG2
`endif
`ifdef VERILATOR
  `define _SIM_HAVE_CLOG2
`endif
`ifdef MODEL_TECH
  `define _SIM_HAVE_CLOG2
`endif
`ifdef VCS
  `define _SIM_HAVE_CLOG2
`endif
`ifdef NCVERILOG
  `define _SIM_HAVE_CLOG2
`endif
`ifdef XILINX_SIMULATOR
  `define _SIM_HAVE_CLOG2
`endif
`ifdef XILINX_ISIM
  `define _SIM_HAVE_CLOG2
`endif

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>, Christian Pilato <christian.pilato@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module constant_value(out1);
  parameter BITSIZE_out1=1, value=1'b0;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = value;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module register_SE(clock, reset, in1, wenable, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input clock;
  input reset;
  input [BITSIZE_in1-1:0] in1;
  input wenable;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  
  reg [BITSIZE_out1-1:0] reg_out1 =0;
  assign out1 = reg_out1;
  always @(posedge clock)
    if (wenable)
      reg_out1 <= in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ARRAY_1D_STD_BRAM_NN_SDS_BUS_BASE(clock, reset, in1, in2, in3, out1, sel_LOAD, sel_STORE, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, Sin_Rdata_ram, Sout_Rdata_ram, S_data_ram_size, Sin_DataRdy, Sout_DataRdy, proxy_in1, proxy_in2, proxy_in3, proxy_sel_LOAD, proxy_sel_STORE, proxy_out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_in2=1, PORTSIZE_in2=2, BITSIZE_in3=1, PORTSIZE_in3=2, BITSIZE_sel_LOAD=1, PORTSIZE_sel_LOAD=2, BITSIZE_sel_STORE=1, PORTSIZE_sel_STORE=2, BITSIZE_S_oe_ram=1, PORTSIZE_S_oe_ram=2, BITSIZE_S_we_ram=1, PORTSIZE_S_we_ram=2, BITSIZE_out1=1, PORTSIZE_out1=2, BITSIZE_S_addr_ram=1, PORTSIZE_S_addr_ram=2, BITSIZE_S_Wdata_ram=8, PORTSIZE_S_Wdata_ram=2, BITSIZE_Sin_Rdata_ram=8, PORTSIZE_Sin_Rdata_ram=2, BITSIZE_Sout_Rdata_ram=8, PORTSIZE_Sout_Rdata_ram=2, BITSIZE_S_data_ram_size=1, PORTSIZE_S_data_ram_size=2, BITSIZE_Sin_DataRdy=1, PORTSIZE_Sin_DataRdy=2, BITSIZE_Sout_DataRdy=1, PORTSIZE_Sout_DataRdy=2, MEMORY_INIT_file="array.mem", n_elements=1, data_size=32, address_space_begin=0, address_space_rangesize=4, BUS_PIPELINED=1, BRAM_BITSIZE=32, PRIVATE_MEMORY=0, USE_SPARSE_MEMORY=1, HIGH_LATENCY=0, BITSIZE_proxy_in1=1, PORTSIZE_proxy_in1=2, BITSIZE_proxy_in2=1, PORTSIZE_proxy_in2=2, BITSIZE_proxy_in3=1, PORTSIZE_proxy_in3=2, BITSIZE_proxy_sel_LOAD=1, PORTSIZE_proxy_sel_LOAD=2, BITSIZE_proxy_sel_STORE=1, PORTSIZE_proxy_sel_STORE=2, BITSIZE_proxy_out1=1, PORTSIZE_proxy_out1=2;
  // IN
  input clock;
  input reset;
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  input [(PORTSIZE_in2*BITSIZE_in2)+(-1):0] in2;
  input [(PORTSIZE_in3*BITSIZE_in3)+(-1):0] in3;
  input [PORTSIZE_sel_LOAD-1:0] sel_LOAD;
  input [PORTSIZE_sel_STORE-1:0] sel_STORE;
  input [PORTSIZE_S_oe_ram-1:0] S_oe_ram;
  input [PORTSIZE_S_we_ram-1:0] S_we_ram;
  input [(PORTSIZE_S_addr_ram*BITSIZE_S_addr_ram)+(-1):0] S_addr_ram;
  input [(PORTSIZE_S_Wdata_ram*BITSIZE_S_Wdata_ram)+(-1):0] S_Wdata_ram;
  input [(PORTSIZE_Sin_Rdata_ram*BITSIZE_Sin_Rdata_ram)+(-1):0] Sin_Rdata_ram;
  input [(PORTSIZE_S_data_ram_size*BITSIZE_S_data_ram_size)+(-1):0] S_data_ram_size;
  input [PORTSIZE_Sin_DataRdy-1:0] Sin_DataRdy;
  input [(PORTSIZE_proxy_in1*BITSIZE_proxy_in1)+(-1):0] proxy_in1;
  input [(PORTSIZE_proxy_in2*BITSIZE_proxy_in2)+(-1):0] proxy_in2;
  input [(PORTSIZE_proxy_in3*BITSIZE_proxy_in3)+(-1):0] proxy_in3;
  input [PORTSIZE_proxy_sel_LOAD-1:0] proxy_sel_LOAD;
  input [PORTSIZE_proxy_sel_STORE-1:0] proxy_sel_STORE;
  // OUT
  output [(PORTSIZE_out1*BITSIZE_out1)+(-1):0] out1;
  output [(PORTSIZE_Sout_Rdata_ram*BITSIZE_Sout_Rdata_ram)+(-1):0] Sout_Rdata_ram;
  output [PORTSIZE_Sout_DataRdy-1:0] Sout_DataRdy;
  output [(PORTSIZE_proxy_out1*BITSIZE_proxy_out1)+(-1):0] proxy_out1;
  
  `ifndef _SIM_HAVE_CLOG2
    function integer log2;
       input integer value;
       integer temp_value;
      begin
        temp_value = value-1;
        for (log2=0; temp_value>0; log2=log2+1)
          temp_value = temp_value>>1;
      end
    endfunction
  `endif
  parameter n_byte_data = BRAM_BITSIZE/8;
  parameter n_bytes = n_elements*n_byte_data;
  parameter n_byte_on_databus = BRAM_BITSIZE/8;
  parameter n_mem_elements = n_bytes/(n_byte_on_databus) + (n_bytes%(n_byte_on_databus) == 0 ? 0 : 1);
  parameter nbit_addr = BITSIZE_in2 > BITSIZE_proxy_in2 ? BITSIZE_in2 : BITSIZE_proxy_in2;
  `ifdef _SIM_HAVE_CLOG2
    parameter nbit_read_addr = n_mem_elements == 1 ? 1 : $clog2(n_mem_elements);
    parameter nbits_address_space_rangesize = $clog2(address_space_rangesize);
    parameter nbits_byte_offset = n_byte_on_databus==1 ? 0 : $clog2(n_byte_on_databus);
  `else
    parameter nbit_read_addr = n_mem_elements == 1 ? 1 : log2(n_mem_elements);
    parameter nbits_address_space_rangesize = log2(address_space_rangesize);
    parameter nbits_byte_offset = n_byte_on_databus==1 ? 0 : log2(n_byte_on_databus);
  `endif
  parameter max_n_writes = PORTSIZE_sel_STORE;
  parameter max_n_reads = PORTSIZE_sel_LOAD;
  parameter max_n_rw = max_n_writes > max_n_reads ? max_n_writes : max_n_reads;
  
  wire [max_n_writes-1:0] bram_write;
  wire [max_n_writes-1:0] bram_write_temp;
  
  wire [nbit_read_addr*max_n_rw-1:0] memory_addr_a;
  wire [nbit_read_addr*max_n_rw-1:0] memory_addr_a_temp;
  
  wire [PORTSIZE_S_addr_ram-1:0] cs;
  wire [PORTSIZE_S_oe_ram-1:0] oe_ram_cs;
  wire [PORTSIZE_S_we_ram-1:0] we_ram_cs;
  wire [data_size*PORTSIZE_S_Wdata_ram-1:0] S_Wdata_ram_int;
  wire [data_size*max_n_writes-1:0] din_value_aggregated;
  wire [data_size*max_n_writes-1:0] din_value_aggregated_temp;
  reg [data_size*max_n_reads-1:0] dout_a =0;
  reg [data_size*max_n_reads-1:0] dout_a_registered =0;
  reg [data_size-1:0] dout_a_registered_0 =0;
  reg [data_size-1:0] dout_a_registered_1 =0;
  wire [nbit_addr*max_n_rw-1:0] tmp_addr;
  wire [nbit_addr*max_n_rw-1:0] relative_addr;
  integer index2;
  reg [PORTSIZE_S_we_ram-1:0] we_ram_cs_delayed =0;
  reg [PORTSIZE_S_oe_ram-1:0] oe_ram_cs_delayed =0;
  reg [PORTSIZE_S_oe_ram-1:0] oe_ram_cs_delayed_registered =0;
  reg [PORTSIZE_S_oe_ram-1:0] oe_ram_cs_delayed_registered1 =0;
  
  reg [data_size-1:0] memory [0:n_mem_elements-1] /* synthesis syn_ramstyle = "no_rw_check" */;
  
  initial
  begin
    $readmemb(MEMORY_INIT_file, memory, 0, n_mem_elements-1);
  end
  
  generate
    if(HIGH_LATENCY==2)
    begin
      (* syn_keep=1 *)reg [nbit_read_addr*max_n_rw-1:0] memory_addr_a_reg =0;
      (* syn_keep=1 *)reg [data_size*max_n_writes-1:0] din_value_aggregated_reg =0;
      (* syn_keep=1 *)reg [max_n_writes-1:0] bram_write_reg =0;
      always @ (posedge clock)
      begin
         memory_addr_a_reg <= memory_addr_a;
         bram_write_reg <= bram_write;
         din_value_aggregated_reg <= din_value_aggregated;
      end
      assign memory_addr_a_temp = memory_addr_a_reg;
      assign bram_write_temp = bram_write_reg;
      assign din_value_aggregated_temp = din_value_aggregated_reg;
    end
    else
    begin
      assign memory_addr_a_temp = memory_addr_a;
      assign bram_write_temp = bram_write;
      assign din_value_aggregated_temp = din_value_aggregated;
    end
  endgenerate
  
  generate
  genvar ind2;
  for (ind2=0; ind2<max_n_rw; ind2=ind2+1)
    begin : Lind2
      assign tmp_addr[(ind2+1)*nbit_addr-1:ind2*nbit_addr] = (proxy_sel_LOAD[ind2]||proxy_sel_STORE[ind2]) ? proxy_in2[(ind2+1)*BITSIZE_proxy_in2-1:ind2*BITSIZE_proxy_in2] : in2[(ind2+1)*BITSIZE_in2-1:ind2*BITSIZE_in2];
    end
  endgenerate
  
  generate
  genvar i3;
    for (i3=0; i3<PORTSIZE_S_addr_ram; i3=i3+1)
    begin : L3
      if(PRIVATE_MEMORY==0 && USE_SPARSE_MEMORY==0)
        assign cs[i3] = (S_addr_ram[(i3+1)*BITSIZE_S_addr_ram-1:i3*BITSIZE_S_addr_ram] >= (address_space_begin)) && (S_addr_ram[(i3+1)*BITSIZE_S_addr_ram-1:i3*BITSIZE_S_addr_ram] < (address_space_begin+address_space_rangesize));
      else if(PRIVATE_MEMORY==0)
        assign cs[i3] = S_addr_ram[(i3+1)*BITSIZE_S_addr_ram-1:i3*BITSIZE_S_addr_ram+nbits_address_space_rangesize] == address_space_begin[nbit_addr-1:nbits_address_space_rangesize];
      else
        assign cs[i3] = 1'b0;
    end
  endgenerate
  
  generate
  genvar i4;
    for (i4=0; i4<PORTSIZE_S_oe_ram; i4=i4+1)
    begin : L4
      assign oe_ram_cs[i4] = S_oe_ram[i4] & cs[i4];
    end
  endgenerate
  
  generate
  genvar i5;
    for (i5=0; i5<PORTSIZE_S_we_ram; i5=i5+1)
    begin : L5
      assign we_ram_cs[i5] = S_we_ram[i5] & cs[i5];
    end
  endgenerate
  
  generate
  genvar i6;
    for (i6=0; i6<max_n_rw; i6=i6+1)
    begin : L6
      if(PRIVATE_MEMORY==0 && USE_SPARSE_MEMORY==0 && i6< PORTSIZE_S_addr_ram)
        assign relative_addr[(i6+1)*nbit_addr-1:i6*nbit_addr] = ((i6 < max_n_writes && (sel_STORE[i6]==1'b1 || proxy_sel_STORE[i6]==1'b1)) || (i6 < max_n_reads && (sel_LOAD[i6]==1'b1 || proxy_sel_LOAD[i6]==1'b1))) ? tmp_addr[(i6+1)*BITSIZE_in2-1:i6*BITSIZE_in2]-address_space_begin: S_addr_ram[(i6+1)*BITSIZE_S_addr_ram-1:i6*BITSIZE_S_addr_ram]-address_space_begin;
      else if(PRIVATE_MEMORY==0 && i6< PORTSIZE_S_addr_ram)
        assign relative_addr[(i6)*nbit_addr+nbits_address_space_rangesize-1:i6*nbit_addr] = ((i6 < max_n_writes && (sel_STORE[i6]==1'b1 || proxy_sel_STORE[i6]==1'b1)) || (i6 < max_n_reads && (sel_LOAD[i6]==1'b1 || proxy_sel_LOAD[i6]==1'b1))) ? tmp_addr[(i6)*BITSIZE_in2+nbits_address_space_rangesize-1:i6*BITSIZE_in2] : S_addr_ram[(i6)*BITSIZE_S_addr_ram+nbits_address_space_rangesize-1:i6*BITSIZE_S_addr_ram];
      else if(USE_SPARSE_MEMORY==1)
        assign relative_addr[(i6)*nbit_addr+nbits_address_space_rangesize-1:i6*nbit_addr] = tmp_addr[(i6)*BITSIZE_in2+nbits_address_space_rangesize-1:i6*BITSIZE_in2];
      else
        assign relative_addr[(i6+1)*nbit_addr-1:i6*nbit_addr] = tmp_addr[(i6+1)*BITSIZE_in2-1:i6*BITSIZE_in2]-address_space_begin;
    end
  endgenerate
  
  generate
  genvar i7;
    for (i7=0; i7<max_n_rw; i7=i7+1)
    begin : L7_A
      if (n_mem_elements==1)
        assign memory_addr_a[(i7+1)*nbit_read_addr-1:i7*nbit_read_addr] = {nbit_read_addr{1'b0}};
      else
        assign memory_addr_a[(i7+1)*nbit_read_addr-1:i7*nbit_read_addr] = relative_addr[nbit_read_addr+nbits_byte_offset-1+i7*nbit_addr:nbits_byte_offset+i7*nbit_addr];
    end
  endgenerate
    
  generate
  genvar i13;
    for (i13=0; i13<PORTSIZE_S_Wdata_ram; i13=i13+1)
    begin : L13
      if (BITSIZE_S_Wdata_ram < data_size)
        assign S_Wdata_ram_int[data_size*(i13+1)-1:data_size*i13] = {{data_size-BITSIZE_S_Wdata_ram{1'b0}}, S_Wdata_ram[(i13+1)*BITSIZE_S_Wdata_ram-1:BITSIZE_S_Wdata_ram*i13]};
      else
        assign S_Wdata_ram_int[data_size*(i13+1)-1:data_size*i13] = S_Wdata_ram[data_size+BITSIZE_S_Wdata_ram*i13-1:BITSIZE_S_Wdata_ram*i13];
    end
  endgenerate
  
  generate
  genvar i14;
    for (i14=0; i14<max_n_writes; i14=i14+1)
    begin : L14
      if(PRIVATE_MEMORY==0 && i14 < PORTSIZE_S_Wdata_ram)
        assign din_value_aggregated[(i14+1)*data_size-1:i14*data_size] = proxy_sel_STORE[i14] ? proxy_in1[(i14+1)*BITSIZE_proxy_in1-1:i14*BITSIZE_proxy_in1] : (sel_STORE[i14] ? in1[(i14+1)*BITSIZE_in1-1:i14*BITSIZE_in1] : S_Wdata_ram_int[data_size*(i14+1)-1:data_size*i14]);
      else
        assign din_value_aggregated[(i14+1)*data_size-1:i14*data_size] = proxy_sel_STORE[i14] ? proxy_in1[(i14+1)*BITSIZE_proxy_in1-1:i14*BITSIZE_proxy_in1] : in1[(i14+1)*BITSIZE_in1-1:i14*BITSIZE_in1];
    end
  endgenerate
  
  generate
  genvar i11, i12;
    if(n_mem_elements==1)
    begin : single_element
      always @(posedge clock)
      begin
        for (index2=0; index2<max_n_reads; index2=index2+1)
        begin : L12_single_read
          if(HIGH_LATENCY==0)
          begin
            dout_a[data_size*index2+:data_size] <= memory[memory_addr_a_temp[nbit_read_addr*index2+:nbit_read_addr]];
          end
          else
          begin
            dout_a_registered[data_size*index2+:data_size] <= memory[memory_addr_a_temp[nbit_read_addr*index2+:nbit_read_addr]];
            dout_a[data_size*index2+:data_size] <= dout_a_registered[data_size*index2+:data_size];
          end
        end
        for (index2=0; index2<max_n_writes; index2=index2+1)
        begin : L12_single_write
          if(bram_write_temp[index2])
          memory[memory_addr_a_temp[nbit_read_addr*index2+:nbit_read_addr]] <= din_value_aggregated_temp[data_size*index2+:data_size];
        end
      end
    end
    else
    begin : multiple_elements
      if(max_n_rw ==2)
      begin
        always @(posedge clock)
        begin
          if(bram_write_temp[0])
            memory[memory_addr_a_temp[nbit_read_addr*(0+1)-1:nbit_read_addr*0]] <= din_value_aggregated_temp[data_size*0+:data_size];
          if(HIGH_LATENCY==0)
          begin
            dout_a[data_size*(0+1)-1:data_size*0] <= memory[memory_addr_a_temp[nbit_read_addr*(0+1)-1:nbit_read_addr*0]];
          end
          else
          begin
            dout_a_registered_0 <= memory[memory_addr_a_temp[nbit_read_addr*(0+1)-1:nbit_read_addr*0]];
            dout_a[data_size*(0+1)-1:data_size*0] <= dout_a_registered_0;
          end
        end
        always @(posedge clock)
        begin
          if(bram_write_temp[1])
            memory[memory_addr_a_temp[nbit_read_addr*(1+1)-1:nbit_read_addr*1]] <= din_value_aggregated_temp[data_size*1+:data_size];
          if(HIGH_LATENCY==0)
          begin
            dout_a[data_size*(1+1)-1:data_size*1] <= memory[memory_addr_a_temp[nbit_read_addr*(1+1)-1:nbit_read_addr*1]];
          end
          else
          begin
            dout_a_registered_1 <= memory[memory_addr_a_temp[nbit_read_addr*(1+1)-1:nbit_read_addr*1]];
            dout_a[data_size*(1+1)-1:data_size*1] <= dout_a_registered_1;
          end
        end
      end
      else
      begin
        //not supported
      end
    end    
  endgenerate
    
  generate
  genvar i20;
    for (i20=0; i20<max_n_reads; i20=i20+1)
    begin : L20
      assign out1[(i20+1)*BITSIZE_out1-1:i20*BITSIZE_out1] = dout_a[(i20+1)*data_size-1:i20*data_size];
      assign proxy_out1[(i20+1)*BITSIZE_proxy_out1-1:i20*BITSIZE_proxy_out1] = dout_a[(i20+1)*data_size-1:i20*data_size];
    end
  endgenerate
  
  generate
  genvar i16;
    for (i16=0; i16<PORTSIZE_S_oe_ram; i16=i16+1)
    begin : L16
      always @(posedge clock )
      begin
        if(reset == 1'b0)
          begin
            oe_ram_cs_delayed[i16] <= 1'b0;
            if(HIGH_LATENCY!=0) oe_ram_cs_delayed_registered[i16] <= 1'b0;
            if(HIGH_LATENCY == 2) oe_ram_cs_delayed_registered1[i16] <= 1'b0;
          end
        else
          begin
            if(HIGH_LATENCY==0)
              oe_ram_cs_delayed[i16] <= oe_ram_cs[i16] & (!oe_ram_cs_delayed[i16] | BUS_PIPELINED);
            else if(HIGH_LATENCY==1)
            begin
              oe_ram_cs_delayed_registered[i16] <= oe_ram_cs[i16] & ((!oe_ram_cs_delayed_registered[i16] & !oe_ram_cs_delayed[i16]) | BUS_PIPELINED);
              oe_ram_cs_delayed[i16] <= oe_ram_cs_delayed_registered[i16];
            end
            else
            begin
              oe_ram_cs_delayed_registered1[i16] <= oe_ram_cs[i16] & ((!oe_ram_cs_delayed_registered1[i16] & !oe_ram_cs_delayed_registered[i16]) | BUS_PIPELINED);
              oe_ram_cs_delayed_registered[i16] <= oe_ram_cs_delayed_registered1[i16];
              oe_ram_cs_delayed[i16] <= oe_ram_cs_delayed_registered[i16];
            end
          end
      end
    end
  endgenerate
  
  generate
  genvar i17;
    for (i17=0; i17<PORTSIZE_S_we_ram; i17=i17+1)
    begin : L17
      always @(posedge clock )
      begin
        if(reset == 1'b0)
          we_ram_cs_delayed[i17] <= 1'b0;
        else
          we_ram_cs_delayed[i17] <= we_ram_cs[i17] & !we_ram_cs_delayed[i17];
      end
    end
  endgenerate
  
  generate
  genvar i18;
    for (i18=0; i18<PORTSIZE_Sout_Rdata_ram; i18=i18+1)
    begin : L18
      if(PRIVATE_MEMORY==1)
        assign Sout_Rdata_ram[(i18+1)*BITSIZE_Sout_Rdata_ram-1:i18*BITSIZE_Sout_Rdata_ram] = Sin_Rdata_ram[(i18+1)*BITSIZE_Sin_Rdata_ram-1:i18*BITSIZE_Sin_Rdata_ram];
      else if (BITSIZE_Sout_Rdata_ram <= data_size)
        assign Sout_Rdata_ram[(i18+1)*BITSIZE_Sout_Rdata_ram-1:i18*BITSIZE_Sout_Rdata_ram] = oe_ram_cs_delayed[i18] ? dout_a[BITSIZE_Sout_Rdata_ram+i18*data_size-1:i18*data_size] : Sin_Rdata_ram[(i18+1)*BITSIZE_Sin_Rdata_ram-1:i18*BITSIZE_Sin_Rdata_ram];
      else
        assign Sout_Rdata_ram[(i18+1)*BITSIZE_Sout_Rdata_ram-1:i18*BITSIZE_Sout_Rdata_ram] = oe_ram_cs_delayed[i18] ? {{BITSIZE_S_Wdata_ram-data_size{1'b0}}, dout_a[(i18+1)*data_size-1:i18*data_size]} : Sin_Rdata_ram[(i18+1)*BITSIZE_Sin_Rdata_ram-1:i18*BITSIZE_Sin_Rdata_ram];
    end
  endgenerate
  
  generate
  genvar i19;
    for (i19=0; i19<PORTSIZE_Sout_DataRdy; i19=i19+1)
    begin : L19
      if(PRIVATE_MEMORY==0)
        assign Sout_DataRdy[i19] = (i19 < PORTSIZE_S_oe_ram && oe_ram_cs_delayed[i19]) | Sin_DataRdy[i19] | (i19 < PORTSIZE_S_we_ram && we_ram_cs_delayed[i19]);
      else
        assign Sout_DataRdy[i19] = Sin_DataRdy[i19];
    end
  endgenerate
  
  generate
  genvar i21;
    for (i21=0; i21<max_n_writes; i21=i21+1)
    begin : L21
      if(i21 < PORTSIZE_S_we_ram)
        assign bram_write[i21] = (sel_STORE[i21] || proxy_sel_STORE[i21] || we_ram_cs[i21]);
      else
        assign bram_write[i21] = (sel_STORE[i21] || proxy_sel_STORE[i21]);
    end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ARRAY_1D_STD_BRAM_NN_SDS_BUS(clock, reset, in1, in2, in3, in4, out1, sel_LOAD, sel_STORE, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, Sin_Rdata_ram, Sout_Rdata_ram, S_data_ram_size, Sin_DataRdy, Sout_DataRdy, proxy_in1, proxy_in2, proxy_in3, proxy_sel_LOAD, proxy_sel_STORE, proxy_out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_in2=1, PORTSIZE_in2=2, BITSIZE_in3=1, PORTSIZE_in3=2, BITSIZE_in4=1, PORTSIZE_in4=2, BITSIZE_sel_LOAD=1, PORTSIZE_sel_LOAD=2, BITSIZE_sel_STORE=1, PORTSIZE_sel_STORE=2, BITSIZE_S_oe_ram=1, PORTSIZE_S_oe_ram=2, BITSIZE_S_we_ram=1, PORTSIZE_S_we_ram=2, BITSIZE_out1=1, PORTSIZE_out1=2, BITSIZE_S_addr_ram=1, PORTSIZE_S_addr_ram=2, BITSIZE_S_Wdata_ram=8, PORTSIZE_S_Wdata_ram=2, BITSIZE_Sin_Rdata_ram=8, PORTSIZE_Sin_Rdata_ram=2, BITSIZE_Sout_Rdata_ram=8, PORTSIZE_Sout_Rdata_ram=2, BITSIZE_S_data_ram_size=1, PORTSIZE_S_data_ram_size=2, BITSIZE_Sin_DataRdy=1, PORTSIZE_Sin_DataRdy=2, BITSIZE_Sout_DataRdy=1, PORTSIZE_Sout_DataRdy=2, MEMORY_INIT_file="array.mem", n_elements=1, data_size=32, address_space_begin=0, address_space_rangesize=4, BUS_PIPELINED=1, BRAM_BITSIZE=32, PRIVATE_MEMORY=0, USE_SPARSE_MEMORY=1, BITSIZE_proxy_in1=1, PORTSIZE_proxy_in1=2, BITSIZE_proxy_in2=1, PORTSIZE_proxy_in2=2, BITSIZE_proxy_in3=1, PORTSIZE_proxy_in3=2, BITSIZE_proxy_sel_LOAD=1, PORTSIZE_proxy_sel_LOAD=2, BITSIZE_proxy_sel_STORE=1, PORTSIZE_proxy_sel_STORE=2, BITSIZE_proxy_out1=1, PORTSIZE_proxy_out1=2;
  // IN
  input clock;
  input reset;
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  input [(PORTSIZE_in2*BITSIZE_in2)+(-1):0] in2;
  input [(PORTSIZE_in3*BITSIZE_in3)+(-1):0] in3;
  input [PORTSIZE_in4-1:0] in4;
  input [PORTSIZE_sel_LOAD-1:0] sel_LOAD;
  input [PORTSIZE_sel_STORE-1:0] sel_STORE;
  input [PORTSIZE_S_oe_ram-1:0] S_oe_ram;
  input [PORTSIZE_S_we_ram-1:0] S_we_ram;
  input [(PORTSIZE_S_addr_ram*BITSIZE_S_addr_ram)+(-1):0] S_addr_ram;
  input [(PORTSIZE_S_Wdata_ram*BITSIZE_S_Wdata_ram)+(-1):0] S_Wdata_ram;
  input [(PORTSIZE_Sin_Rdata_ram*BITSIZE_Sin_Rdata_ram)+(-1):0] Sin_Rdata_ram;
  input [(PORTSIZE_S_data_ram_size*BITSIZE_S_data_ram_size)+(-1):0] S_data_ram_size;
  input [PORTSIZE_Sin_DataRdy-1:0] Sin_DataRdy;
  input [(PORTSIZE_proxy_in1*BITSIZE_proxy_in1)+(-1):0] proxy_in1;
  input [(PORTSIZE_proxy_in2*BITSIZE_proxy_in2)+(-1):0] proxy_in2;
  input [(PORTSIZE_proxy_in3*BITSIZE_proxy_in3)+(-1):0] proxy_in3;
  input [PORTSIZE_proxy_sel_LOAD-1:0] proxy_sel_LOAD;
  input [PORTSIZE_proxy_sel_STORE-1:0] proxy_sel_STORE;
  // OUT
  output [(PORTSIZE_out1*BITSIZE_out1)+(-1):0] out1;
  output [(PORTSIZE_Sout_Rdata_ram*BITSIZE_Sout_Rdata_ram)+(-1):0] Sout_Rdata_ram;
  output [PORTSIZE_Sout_DataRdy-1:0] Sout_DataRdy;
  output [(PORTSIZE_proxy_out1*BITSIZE_proxy_out1)+(-1):0] proxy_out1;
  ARRAY_1D_STD_BRAM_NN_SDS_BUS_BASE #(.BITSIZE_in1(BITSIZE_in1), .PORTSIZE_in1(PORTSIZE_in1), .BITSIZE_in2(BITSIZE_in2), .PORTSIZE_in2(PORTSIZE_in2), .BITSIZE_in3(BITSIZE_in3), .PORTSIZE_in3(PORTSIZE_in3), .BITSIZE_sel_LOAD(BITSIZE_sel_LOAD), .PORTSIZE_sel_LOAD(PORTSIZE_sel_LOAD), .BITSIZE_sel_STORE(BITSIZE_sel_STORE), .PORTSIZE_sel_STORE(PORTSIZE_sel_STORE), .BITSIZE_S_oe_ram(BITSIZE_S_oe_ram), .PORTSIZE_S_oe_ram(PORTSIZE_S_oe_ram), .BITSIZE_S_we_ram(BITSIZE_S_we_ram), .PORTSIZE_S_we_ram(PORTSIZE_S_we_ram), .BITSIZE_out1(BITSIZE_out1), .PORTSIZE_out1(PORTSIZE_out1), .BITSIZE_S_addr_ram(BITSIZE_S_addr_ram), .PORTSIZE_S_addr_ram(PORTSIZE_S_addr_ram), .BITSIZE_S_Wdata_ram(BITSIZE_S_Wdata_ram), .PORTSIZE_S_Wdata_ram(PORTSIZE_S_Wdata_ram), .BITSIZE_Sin_Rdata_ram(BITSIZE_Sin_Rdata_ram), .PORTSIZE_Sin_Rdata_ram(PORTSIZE_Sin_Rdata_ram), .BITSIZE_Sout_Rdata_ram(BITSIZE_Sout_Rdata_ram), .PORTSIZE_Sout_Rdata_ram(PORTSIZE_Sout_Rdata_ram), .BITSIZE_S_data_ram_size(BITSIZE_S_data_ram_size), .PORTSIZE_S_data_ram_size(PORTSIZE_S_data_ram_size), .BITSIZE_Sin_DataRdy(BITSIZE_Sin_DataRdy), .PORTSIZE_Sin_DataRdy(PORTSIZE_Sin_DataRdy), .BITSIZE_Sout_DataRdy(BITSIZE_Sout_DataRdy), .PORTSIZE_Sout_DataRdy(PORTSIZE_Sout_DataRdy), .MEMORY_INIT_file(MEMORY_INIT_file), .n_elements(n_elements), .data_size(data_size), .address_space_begin(address_space_begin), .address_space_rangesize(address_space_rangesize), .BUS_PIPELINED(BUS_PIPELINED), .BRAM_BITSIZE(BRAM_BITSIZE), .PRIVATE_MEMORY(PRIVATE_MEMORY), .USE_SPARSE_MEMORY(USE_SPARSE_MEMORY), .HIGH_LATENCY(0), .BITSIZE_proxy_in1(BITSIZE_proxy_in1), .PORTSIZE_proxy_in1(PORTSIZE_proxy_in1), .BITSIZE_proxy_in2(BITSIZE_proxy_in2), .PORTSIZE_proxy_in2(PORTSIZE_proxy_in2), .BITSIZE_proxy_in3(BITSIZE_proxy_in3), .PORTSIZE_proxy_in3(PORTSIZE_proxy_in3), .BITSIZE_proxy_sel_LOAD(BITSIZE_proxy_sel_LOAD), .PORTSIZE_proxy_sel_LOAD(PORTSIZE_proxy_sel_LOAD), .BITSIZE_proxy_sel_STORE(BITSIZE_proxy_sel_STORE), .PORTSIZE_proxy_sel_STORE(PORTSIZE_proxy_sel_STORE), .BITSIZE_proxy_out1(BITSIZE_proxy_out1), .PORTSIZE_proxy_out1(PORTSIZE_proxy_out1)) ARRAY_1D_STD_BRAM_NN_instance (.out1(out1), .Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .proxy_out1(proxy_out1), .clock(clock), .reset(reset), .in1(in1), .in2(in2), .in3(in3), .sel_LOAD(sel_LOAD & in4), .sel_STORE(sel_STORE & in4), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size ), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(proxy_in1), .proxy_in2(proxy_in2), .proxy_in3(proxy_in3), .proxy_sel_LOAD(proxy_sel_LOAD), .proxy_sel_STORE(proxy_sel_STORE));
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module addr_expr_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module UUdata_converter_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  generate
  if (BITSIZE_out1 <= BITSIZE_in1)
  begin
    assign out1 = in1[BITSIZE_out1-1:0];
  end
  else
  begin
    assign out1 = {{(BITSIZE_out1-BITSIZE_in1){1'b0}},in1};
  end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module register_STD(clock, reset, in1, wenable, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input clock;
  input reset;
  input [BITSIZE_in1-1:0] in1;
  input wenable;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  reg [BITSIZE_out1-1:0] reg_out1 =0;
  assign out1 = reg_out1;
  always @(posedge clock)
    reg_out1 <= in1;

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module read_cond_FU(in1, out1);
  parameter BITSIZE_in1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output out1;
  assign out1 = in1 != {BITSIZE_in1{1'b0}};
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module IUconvert_expr_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  generate
  if (BITSIZE_out1 <= BITSIZE_in1)
  begin
    assign out1 = in1[BITSIZE_out1-1:0];
  end
  else
  begin
    assign out1 = {{(BITSIZE_out1-BITSIZE_in1){in1[BITSIZE_in1-1]}},in1};
  end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module IUdata_converter_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  generate
  if (BITSIZE_out1 <= BITSIZE_in1)
  begin
    assign out1 = in1[BITSIZE_out1-1:0];
  end
  else
  begin
    assign out1 = {{(BITSIZE_out1-BITSIZE_in1){in1[BITSIZE_in1-1]}},in1};
  end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module UIdata_converter_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  generate
  if (BITSIZE_out1 <= BITSIZE_in1)
  begin
    assign out1 = in1[BITSIZE_out1-1:0];
  end
  else
  begin
    assign out1 = {{(BITSIZE_out1-BITSIZE_in1){1'b0}},in1};
  end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module BMEMORY_CTRLN(clock, in1, in2, in3, in4, sel_LOAD, sel_STORE, out1, Min_oe_ram, Mout_oe_ram, Min_we_ram, Mout_we_ram, Min_addr_ram, Mout_addr_ram, M_Rdata_ram, Min_Wdata_ram, Mout_Wdata_ram, Min_data_ram_size, Mout_data_ram_size, M_DataRdy);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_in2=1, PORTSIZE_in2=2, BITSIZE_in3=1, PORTSIZE_in3=2, BITSIZE_in4=1, PORTSIZE_in4=2, BITSIZE_sel_LOAD=1, PORTSIZE_sel_LOAD=2, BITSIZE_sel_STORE=1, PORTSIZE_sel_STORE=2, BITSIZE_out1=1, PORTSIZE_out1=2, BITSIZE_Min_oe_ram=1, PORTSIZE_Min_oe_ram=2, BITSIZE_Min_we_ram=1, PORTSIZE_Min_we_ram=2, BITSIZE_Mout_oe_ram=1, PORTSIZE_Mout_oe_ram=2, BITSIZE_Mout_we_ram=1, PORTSIZE_Mout_we_ram=2, BITSIZE_M_DataRdy=1, PORTSIZE_M_DataRdy=2, BITSIZE_Min_addr_ram=1, PORTSIZE_Min_addr_ram=2, BITSIZE_Mout_addr_ram=1, PORTSIZE_Mout_addr_ram=2, BITSIZE_M_Rdata_ram=8, PORTSIZE_M_Rdata_ram=2, BITSIZE_Min_Wdata_ram=8, PORTSIZE_Min_Wdata_ram=2, BITSIZE_Mout_Wdata_ram=8, PORTSIZE_Mout_Wdata_ram=2, BITSIZE_Min_data_ram_size=1, PORTSIZE_Min_data_ram_size=2, BITSIZE_Mout_data_ram_size=1, PORTSIZE_Mout_data_ram_size=2;
  // IN
  input clock;
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  input [(PORTSIZE_in2*BITSIZE_in2)+(-1):0] in2;
  input [(PORTSIZE_in3*BITSIZE_in3)+(-1):0] in3;
  input [PORTSIZE_in4-1:0] in4;
  input [PORTSIZE_sel_LOAD-1:0] sel_LOAD;
  input [PORTSIZE_sel_STORE-1:0] sel_STORE;
  input [PORTSIZE_Min_oe_ram-1:0] Min_oe_ram;
  input [PORTSIZE_Min_we_ram-1:0] Min_we_ram;
  input [(PORTSIZE_Min_addr_ram*BITSIZE_Min_addr_ram)+(-1):0] Min_addr_ram;
  input [(PORTSIZE_M_Rdata_ram*BITSIZE_M_Rdata_ram)+(-1):0] M_Rdata_ram;
  input [(PORTSIZE_Min_Wdata_ram*BITSIZE_Min_Wdata_ram)+(-1):0] Min_Wdata_ram;
  input [(PORTSIZE_Min_data_ram_size*BITSIZE_Min_data_ram_size)+(-1):0] Min_data_ram_size;
  input [PORTSIZE_M_DataRdy-1:0] M_DataRdy;
  // OUT
  output [(PORTSIZE_out1*BITSIZE_out1)+(-1):0] out1;
  output [PORTSIZE_Mout_oe_ram-1:0] Mout_oe_ram;
  output [PORTSIZE_Mout_we_ram-1:0] Mout_we_ram;
  output [(PORTSIZE_Mout_addr_ram*BITSIZE_Mout_addr_ram)+(-1):0] Mout_addr_ram;
  output [(PORTSIZE_Mout_Wdata_ram*BITSIZE_Mout_Wdata_ram)+(-1):0] Mout_Wdata_ram;
  output [(PORTSIZE_Mout_data_ram_size*BITSIZE_Mout_data_ram_size)+(-1):0] Mout_data_ram_size;
  
  parameter max_n_writes = PORTSIZE_sel_STORE > PORTSIZE_Mout_we_ram ? PORTSIZE_sel_STORE : PORTSIZE_Mout_we_ram;
  parameter max_n_reads = PORTSIZE_sel_LOAD > PORTSIZE_Mout_oe_ram ? PORTSIZE_sel_STORE : PORTSIZE_Mout_oe_ram;
  parameter max_n_rw = max_n_writes > max_n_reads ? max_n_writes : max_n_reads;
  wire  [(PORTSIZE_in2*BITSIZE_in2)-1:0] tmp_addr;
  wire [PORTSIZE_sel_LOAD-1:0] int_sel_LOAD;
  wire [PORTSIZE_sel_STORE-1:0] int_sel_STORE;
  assign int_sel_LOAD = sel_LOAD & in4;
  assign int_sel_STORE = sel_STORE & in4;
  assign tmp_addr = in2;
  generate
  genvar i;
    for (i=0; i<max_n_rw; i=i+1)
    begin : L0
      assign Mout_addr_ram[(i+1)*BITSIZE_Mout_addr_ram-1:i*BITSIZE_Mout_addr_ram] = ((i < PORTSIZE_sel_LOAD && int_sel_LOAD[i]) || (i < PORTSIZE_sel_STORE && int_sel_STORE[i])) ? (tmp_addr[(i+1)*BITSIZE_in2-1:i*BITSIZE_in2]) : Min_addr_ram[(i+1)*BITSIZE_Min_addr_ram-1:i*BITSIZE_Min_addr_ram];
    end
    endgenerate
  assign Mout_oe_ram = int_sel_LOAD | Min_oe_ram;
  assign Mout_we_ram = int_sel_STORE | Min_we_ram;
  generate
    for (i=0; i<max_n_reads; i=i+1)
    begin : L1
      assign out1[(i+1)*BITSIZE_out1-1:i*BITSIZE_out1] = M_Rdata_ram[i*BITSIZE_M_Rdata_ram+BITSIZE_out1-1:i*BITSIZE_M_Rdata_ram];
  end
  endgenerate
  generate
    for (i=0; i<max_n_rw; i=i+1)
    begin : L2
      assign Mout_Wdata_ram[(i+1)*BITSIZE_Mout_Wdata_ram-1:i*BITSIZE_Mout_Wdata_ram] = int_sel_STORE[i] ? in1[(i+1)*BITSIZE_in1-1:i*BITSIZE_in1] : Min_Wdata_ram[(i+1)*BITSIZE_Min_Wdata_ram-1:i*BITSIZE_Min_Wdata_ram];
  end
  endgenerate
  generate
    for (i=0; i<max_n_rw; i=i+1)
    begin : L3
      assign Mout_data_ram_size[(i+1)*BITSIZE_Mout_data_ram_size-1:i*BITSIZE_Mout_data_ram_size] = ((i < PORTSIZE_sel_LOAD && int_sel_LOAD[i]) || (i < PORTSIZE_sel_STORE && int_sel_STORE[i])) ? (in3[(i+1)*BITSIZE_in3-1:i*BITSIZE_in3]) : Min_data_ram_size[(i+1)*BITSIZE_Min_data_ram_size-1:i*BITSIZE_Min_data_ram_size];
    end
    endgenerate

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module bit_and_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  assign out1 = in1 & in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2016-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module bit_ior_concat_expr_FU(in1, in2, in3, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_in3=1, BITSIZE_out1=1, OFFSET_PARAMETER=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  input signed [BITSIZE_in3-1:0] in3;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  
  parameter nbit_out = BITSIZE_out1 > OFFSET_PARAMETER ? BITSIZE_out1 : 1+OFFSET_PARAMETER;
  wire signed [nbit_out-1:0] tmp_in1;
  wire signed [OFFSET_PARAMETER-1:0] tmp_in2;
  generate
    if(BITSIZE_in1 >= nbit_out)
      assign tmp_in1=in1[nbit_out-1:0];
    else
      assign tmp_in1={{(nbit_out-BITSIZE_in1){in1[BITSIZE_in1-1]}},in1};
  endgenerate
  generate
    if(BITSIZE_in2 >= OFFSET_PARAMETER)
      assign tmp_in2=in2[OFFSET_PARAMETER-1:0];
    else
      assign tmp_in2={{(OFFSET_PARAMETER-BITSIZE_in2){in2[BITSIZE_in2-1]}},in2};
  endgenerate
  assign out1 = {tmp_in1[nbit_out-1:OFFSET_PARAMETER] , tmp_in2};
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module gt_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 > in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module le_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 <= in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module lshift_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1, PRECISION=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  `ifndef _SIM_HAVE_CLOG2
    function integer log2;
       input integer value;
       integer temp_value;
      begin
        temp_value = value-1;
        for (log2=0; temp_value>0; log2=log2+1)
          temp_value = temp_value>>1;
      end
    endfunction
  `endif
  `ifdef _SIM_HAVE_CLOG2
    parameter arg2_bitsize = $clog2(PRECISION);
  `else
    parameter arg2_bitsize = log2(PRECISION);
  `endif
  generate
    if(BITSIZE_in2 > arg2_bitsize)
      assign out1 = in1 <<< in2[arg2_bitsize-1:0];
    else
      assign out1 = in1 <<< in2;
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module lt_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 < in2;

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module minus_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  assign out1 = in1 - in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ne_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 != in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module plus_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  assign out1 = in1 + in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module rshift_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1, PRECISION=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  `ifndef _SIM_HAVE_CLOG2
    function integer log2;
       input integer value;
       integer temp_value;
      begin
        temp_value = value-1;
        for (log2=0; temp_value>0; log2=log2+1)
          temp_value = temp_value>>1;
      end
    endfunction
  `endif
  `ifdef _SIM_HAVE_CLOG2
    parameter arg2_bitsize = $clog2(PRECISION);
  `else
    parameter arg2_bitsize = log2(PRECISION);
  `endif
  generate
    if(BITSIZE_in2 > arg2_bitsize)
      assign out1 = in1 >>> (in2[arg2_bitsize-1:0]);
    else
      assign out1 = in1 >>> in2;
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ternary_mp_expr_FU(in1, in2, in3, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_in3=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  input signed [BITSIZE_in3-1:0] in3;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  assign out1 = in1 - in2 + in3;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ternary_plus_expr_FU(in1, in2, in3, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_in3=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  input signed [BITSIZE_in3-1:0] in3;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  assign out1 = in1 + in2 + in3;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_gt_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 > in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_minus_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 - in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_ne_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 != in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_plus_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 + in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_pointer_plus_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1, LSB_PARAMETER=-1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  wire [BITSIZE_out1-1:0] in1_tmp;
  wire [BITSIZE_out1-1:0] in2_tmp;
  assign in1_tmp = in1;
  assign in2_tmp = in2;generate if (BITSIZE_out1 > LSB_PARAMETER) assign out1[BITSIZE_out1-1:LSB_PARAMETER] = (in1_tmp[BITSIZE_out1-1:LSB_PARAMETER] + in2_tmp[BITSIZE_out1-1:LSB_PARAMETER]); else assign out1 = 0; endgenerate
  generate if (LSB_PARAMETER != 0 && BITSIZE_out1 > LSB_PARAMETER) assign out1[LSB_PARAMETER-1:0] = 0; endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2013-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module bus_merger(in1, out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_out1=1;
  // IN
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  
  function [BITSIZE_out1-1:0] merge;
    input [BITSIZE_in1*PORTSIZE_in1-1:0] m;
    reg [BITSIZE_out1-1:0] res;
    integer i1;
  begin
    res={BITSIZE_in1{1'b0}};
    for(i1 = 0; i1 < PORTSIZE_in1; i1 = i1 + 1)
    begin
      res = res | m[i1*BITSIZE_in1 +:BITSIZE_in1];
    end
    merge = res;
  end
  endfunction
  
  assign out1 = merge(in1);
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module join_signal(in1, out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_out1=1;
  // IN
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  
  generate
  genvar i1;
  for (i1=0; i1<PORTSIZE_in1; i1=i1+1)
    begin : L1
      assign out1[(i1+1)*(BITSIZE_out1/PORTSIZE_in1)-1:i1*(BITSIZE_out1/PORTSIZE_in1)] = in1[(i1+1)*BITSIZE_in1-1:i1*BITSIZE_in1];
    end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module split_signal(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1, PORTSIZE_out1=2;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [(PORTSIZE_out1*BITSIZE_out1)+(-1):0] out1;
  assign out1 = in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ASSIGN_SIGNED_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  assign out1 = in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>, Christian Pilato <christian.pilato@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module MUX_GATE(sel, in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input sel;
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = sel ? in1 : in2;
endmodule

// Datapath RTL description for shell_sort
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_shell_sort(clock, reset, in_port_size, in_port_arr, M_Rdata_ram, M_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, fuselector_BMEMORY_CTRLN_28_i0_LOAD, fuselector_BMEMORY_CTRLN_28_i0_STORE, selector_MUX_0_BMEMORY_CTRLN_28_i0_0_0_0, selector_MUX_199_reg_0_0_0_0, selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0, selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1, selector_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0, selector_MUX_200_reg_1_0_0_0, selector_MUX_206_reg_15_0_0_0, selector_MUX_206_reg_15_0_0_1, selector_MUX_210_reg_19_0_0_0, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_shell_sort_28861_28930, OUT_CONDITION_shell_sort_28861_28949, OUT_CONDITION_shell_sort_28861_29046, OUT_CONDITION_shell_sort_28861_29049, OUT_CONDITION_shell_sort_28861_29053, OUT_CONDITION_shell_sort_28861_29055);
  // IN
  input clock;
  input reset;
  input [7:0] in_port_size;
  input [31:0] in_port_arr;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [13:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  input fuselector_BMEMORY_CTRLN_28_i0_LOAD;
  input fuselector_BMEMORY_CTRLN_28_i0_STORE;
  input selector_MUX_0_BMEMORY_CTRLN_28_i0_0_0_0;
  input selector_MUX_199_reg_0_0_0_0;
  input selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0;
  input selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1;
  input selector_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0;
  input selector_MUX_200_reg_1_0_0_0;
  input selector_MUX_206_reg_15_0_0_0;
  input selector_MUX_206_reg_15_0_0_1;
  input selector_MUX_210_reg_19_0_0_0;
  input wrenable_reg_0;
  input wrenable_reg_1;
  input wrenable_reg_10;
  input wrenable_reg_11;
  input wrenable_reg_12;
  input wrenable_reg_13;
  input wrenable_reg_14;
  input wrenable_reg_15;
  input wrenable_reg_16;
  input wrenable_reg_17;
  input wrenable_reg_18;
  input wrenable_reg_19;
  input wrenable_reg_2;
  input wrenable_reg_3;
  input wrenable_reg_4;
  input wrenable_reg_5;
  input wrenable_reg_6;
  input wrenable_reg_7;
  input wrenable_reg_8;
  input wrenable_reg_9;
  // OUT
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [13:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  output OUT_CONDITION_shell_sort_28861_28930;
  output OUT_CONDITION_shell_sort_28861_28949;
  output OUT_CONDITION_shell_sort_28861_29046;
  output OUT_CONDITION_shell_sort_28861_29049;
  output OUT_CONDITION_shell_sort_28861_29053;
  output OUT_CONDITION_shell_sort_28861_29055;
  // Component and signal declarations
  wire [7:0] null_out_signal_BMEMORY_CTRLN_28_i0_out1_1;
  wire [7:0] out_BMEMORY_CTRLN_28_i0_BMEMORY_CTRLN_28_i0;
  wire [7:0] out_IUconvert_expr_FU_6_i0_fu_shell_sort_28861_28948;
  wire [7:0] out_IUdata_converter_FU_21_i0_fu_shell_sort_28861_29010;
  wire [7:0] out_IUdata_converter_FU_7_i0_fu_shell_sort_28861_29000;
  wire [7:0] out_MUX_0_BMEMORY_CTRLN_28_i0_0_0_0;
  wire [31:0] out_MUX_199_reg_0_0_0_0;
  wire [6:0] out_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0;
  wire [6:0] out_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1;
  wire [6:0] out_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0;
  wire [31:0] out_MUX_200_reg_1_0_0_0;
  wire [7:0] out_MUX_206_reg_15_0_0_0;
  wire [7:0] out_MUX_206_reg_15_0_0_1;
  wire [7:0] out_MUX_210_reg_19_0_0_0;
  wire signed [8:0] out_UIdata_converter_FU_20_i0_fu_shell_sort_28861_29018;
  wire signed [8:0] out_UIdata_converter_FU_23_i0_fu_shell_sort_28861_29048;
  wire [7:0] out_UUdata_converter_FU_14_i0_fu_shell_sort_28861_29038;
  wire [7:0] out_UUdata_converter_FU_22_i0_fu_shell_sort_28861_28976;
  wire [7:0] out_UUdata_converter_FU_26_i0_fu_shell_sort_28861_29027;
  wire signed [8:0] out_bit_and_expr_FU_16_0_16_29_i0_fu_shell_sort_28861_29485;
  wire signed [8:0] out_bit_and_expr_FU_16_0_16_29_i1_fu_shell_sort_28861_29531;
  wire signed [16:0] out_bit_and_expr_FU_32_0_32_30_i0_fu_shell_sort_28861_29089;
  wire signed [16:0] out_bit_and_expr_FU_32_0_32_30_i1_fu_shell_sort_28861_29102;
  wire signed [16:0] out_bit_and_expr_FU_32_0_32_30_i2_fu_shell_sort_28861_29111;
  wire signed [1:0] out_bit_and_expr_FU_8_0_8_31_i0_fu_shell_sort_28861_29273;
  wire signed [1:0] out_bit_and_expr_FU_8_0_8_31_i1_fu_shell_sort_28861_29339;
  wire signed [1:0] out_bit_and_expr_FU_8_0_8_31_i2_fu_shell_sort_28861_29403;
  wire signed [1:0] out_bit_and_expr_FU_8_0_8_31_i3_fu_shell_sort_28861_29435;
  wire signed [2:0] out_bit_and_expr_FU_8_0_8_32_i0_fu_shell_sort_28861_29297;
  wire signed [2:0] out_bit_and_expr_FU_8_0_8_32_i1_fu_shell_sort_28861_29371;
  wire signed [5:0] out_bit_and_expr_FU_8_0_8_33_i0_fu_shell_sort_28861_29317;
  wire signed [5:0] out_bit_and_expr_FU_8_0_8_33_i1_fu_shell_sort_28861_29388;
  wire signed [5:0] out_bit_and_expr_FU_8_0_8_33_i2_fu_shell_sort_28861_29420;
  wire signed [4:0] out_bit_and_expr_FU_8_0_8_34_i0_fu_shell_sort_28861_29466;
  wire signed [4:0] out_bit_and_expr_FU_8_0_8_34_i1_fu_shell_sort_28861_29516;
  wire signed [31:0] out_bit_ior_concat_expr_FU_35_i0_fu_shell_sort_28861_29084;
  wire signed [31:0] out_bit_ior_concat_expr_FU_35_i1_fu_shell_sort_28861_29108;
  wire signed [27:0] out_bit_ior_concat_expr_FU_35_i2_fu_shell_sort_28861_29158;
  wire signed [26:0] out_bit_ior_concat_expr_FU_35_i3_fu_shell_sort_28861_29185;
  wire signed [19:0] out_bit_ior_concat_expr_FU_36_i0_fu_shell_sort_28861_29145;
  wire signed [18:0] out_bit_ior_concat_expr_FU_36_i1_fu_shell_sort_28861_29173;
  wire signed [25:0] out_bit_ior_concat_expr_FU_37_i0_fu_shell_sort_28861_29152;
  wire signed [24:0] out_bit_ior_concat_expr_FU_37_i1_fu_shell_sort_28861_29179;
  wire signed [31:0] out_bit_ior_concat_expr_FU_37_i2_fu_shell_sort_28861_29191;
  wire signed [24:0] out_bit_ior_concat_expr_FU_38_i0_fu_shell_sort_28861_29207;
  wire signed [23:0] out_bit_ior_concat_expr_FU_38_i1_fu_shell_sort_28861_29226;
  wire signed [31:0] out_bit_ior_concat_expr_FU_39_i0_fu_shell_sort_28861_29214;
  wire signed [31:0] out_bit_ior_concat_expr_FU_39_i1_fu_shell_sort_28861_29232;
  wire [1:0] out_const_0;
  wire [2:0] out_const_1;
  wire [8:0] out_const_10;
  wire [16:0] out_const_11;
  wire out_const_12;
  wire [3:0] out_const_2;
  wire [4:0] out_const_3;
  wire [5:0] out_const_4;
  wire [3:0] out_const_5;
  wire [2:0] out_const_6;
  wire [4:0] out_const_7;
  wire [4:0] out_const_8;
  wire [5:0] out_const_9;
  wire [3:0] out_conv_in_port_size_8_4;
  wire [3:0] out_conv_out_const_3_5_4;
  wire [31:0] out_conv_out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0_I_2_32;
  wire [31:0] out_conv_out_i_assign_conn_obj_1_ASSIGN_SIGNED_FU_i_assign_1_I_31_32;
  wire out_gt_expr_FU_32_32_32_40_i0_fu_shell_sort_28861_29242;
  wire signed [1:0] out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0;
  wire signed [30:0] out_i_assign_conn_obj_1_ASSIGN_SIGNED_FU_i_assign_1;
  wire [7:0] out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_2;
  wire [7:0] out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_3;
  wire out_le_expr_FU_32_0_32_41_i0_fu_shell_sort_28861_29236;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_42_i0_fu_shell_sort_28861_29081;
  wire signed [26:0] out_lshift_expr_FU_32_0_32_42_i1_fu_shell_sort_28861_29155;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_42_i2_fu_shell_sort_28861_29167;
  wire signed [25:0] out_lshift_expr_FU_32_0_32_42_i3_fu_shell_sort_28861_29182;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_42_i4_fu_shell_sort_28861_29194;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_42_i5_fu_shell_sort_28861_29270;
  wire signed [27:0] out_lshift_expr_FU_32_0_32_42_i6_fu_shell_sort_28861_29334;
  wire signed [26:0] out_lshift_expr_FU_32_0_32_42_i7_fu_shell_sort_28861_29400;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_42_i8_fu_shell_sort_28861_29432;
  wire signed [18:0] out_lshift_expr_FU_32_0_32_43_i0_fu_shell_sort_28861_29142;
  wire signed [17:0] out_lshift_expr_FU_32_0_32_43_i1_fu_shell_sort_28861_29170;
  wire signed [19:0] out_lshift_expr_FU_32_0_32_43_i2_fu_shell_sort_28861_29291;
  wire signed [18:0] out_lshift_expr_FU_32_0_32_43_i3_fu_shell_sort_28861_29366;
  wire signed [24:0] out_lshift_expr_FU_32_0_32_44_i0_fu_shell_sort_28861_29149;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_44_i1_fu_shell_sort_28861_29161;
  wire signed [23:0] out_lshift_expr_FU_32_0_32_44_i2_fu_shell_sort_28861_29176;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_44_i3_fu_shell_sort_28861_29188;
  wire signed [25:0] out_lshift_expr_FU_32_0_32_44_i4_fu_shell_sort_28861_29312;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_44_i5_fu_shell_sort_28861_29353;
  wire signed [24:0] out_lshift_expr_FU_32_0_32_44_i6_fu_shell_sort_28861_29383;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_44_i7_fu_shell_sort_28861_29417;
  wire signed [23:0] out_lshift_expr_FU_32_0_32_45_i0_fu_shell_sort_28861_29204;
  wire signed [22:0] out_lshift_expr_FU_32_0_32_45_i1_fu_shell_sort_28861_29223;
  wire signed [24:0] out_lshift_expr_FU_32_0_32_45_i2_fu_shell_sort_28861_29462;
  wire signed [23:0] out_lshift_expr_FU_32_0_32_45_i3_fu_shell_sort_28861_29513;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_46_i0_fu_shell_sort_28861_29211;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_46_i1_fu_shell_sort_28861_29229;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_46_i2_fu_shell_sort_28861_29481;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_46_i3_fu_shell_sort_28861_29528;
  wire out_lt_expr_FU_8_8_8_47_i0_fu_shell_sort_28861_29244;
  wire signed [30:0] out_minus_expr_FU_32_32_32_48_i0_fu_shell_sort_28861_29013;
  wire out_ne_expr_FU_32_0_32_49_i0_fu_shell_sort_28861_29240;
  wire signed [16:0] out_plus_expr_FU_16_16_16_50_i0_fu_shell_sort_28861_29363;
  wire signed [31:0] out_plus_expr_FU_32_0_32_51_i0_fu_shell_sort_28861_28929;
  wire signed [31:0] out_plus_expr_FU_32_32_32_52_i0_fu_shell_sort_28861_29121;
  wire signed [20:0] out_plus_expr_FU_32_32_32_52_i10_fu_shell_sort_28861_29459;
  wire signed [23:0] out_plus_expr_FU_32_32_32_52_i11_fu_shell_sort_28861_29478;
  wire signed [19:0] out_plus_expr_FU_32_32_32_52_i12_fu_shell_sort_28861_29510;
  wire signed [23:0] out_plus_expr_FU_32_32_32_52_i13_fu_shell_sort_28861_29525;
  wire signed [30:0] out_plus_expr_FU_32_32_32_52_i1_fu_shell_sort_28861_29267;
  wire signed [17:0] out_plus_expr_FU_32_32_32_52_i2_fu_shell_sort_28861_29286;
  wire signed [20:0] out_plus_expr_FU_32_32_32_52_i3_fu_shell_sort_28861_29307;
  wire signed [26:0] out_plus_expr_FU_32_32_32_52_i4_fu_shell_sort_28861_29329;
  wire signed [26:0] out_plus_expr_FU_32_32_32_52_i5_fu_shell_sort_28861_29350;
  wire signed [19:0] out_plus_expr_FU_32_32_32_52_i6_fu_shell_sort_28861_29380;
  wire signed [25:0] out_plus_expr_FU_32_32_32_52_i7_fu_shell_sort_28861_29397;
  wire signed [26:0] out_plus_expr_FU_32_32_32_52_i8_fu_shell_sort_28861_29414;
  wire signed [30:0] out_plus_expr_FU_32_32_32_52_i9_fu_shell_sort_28861_29429;
  wire out_read_cond_FU_10_i0_fu_shell_sort_28861_29046;
  wire out_read_cond_FU_16_i0_fu_shell_sort_28861_29049;
  wire out_read_cond_FU_24_i0_fu_shell_sort_28861_29053;
  wire out_read_cond_FU_27_i0_fu_shell_sort_28861_29055;
  wire out_read_cond_FU_4_i0_fu_shell_sort_28861_28930;
  wire out_read_cond_FU_8_i0_fu_shell_sort_28861_28949;
  wire [31:0] out_reg_0_reg_0;
  wire [7:0] out_reg_10_reg_10;
  wire out_reg_11_reg_11;
  wire [7:0] out_reg_12_reg_12;
  wire out_reg_13_reg_13;
  wire [7:0] out_reg_14_reg_14;
  wire [7:0] out_reg_15_reg_15;
  wire [6:0] out_reg_16_reg_16;
  wire out_reg_17_reg_17;
  wire [7:0] out_reg_18_reg_18;
  wire [7:0] out_reg_19_reg_19;
  wire [31:0] out_reg_1_reg_1;
  wire [31:0] out_reg_2_reg_2;
  wire [31:0] out_reg_3_reg_3;
  wire [31:0] out_reg_4_reg_4;
  wire [15:0] out_reg_5_reg_5;
  wire [30:0] out_reg_6_reg_6;
  wire [1:0] out_reg_7_reg_7;
  wire [31:0] out_reg_8_reg_8;
  wire [30:0] out_reg_9_reg_9;
  wire signed [13:0] out_rshift_expr_FU_16_0_16_53_i0_fu_shell_sort_28861_29359;
  wire signed [14:0] out_rshift_expr_FU_16_0_16_54_i0_fu_shell_sort_28861_29395;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_55_i0_fu_shell_sort_28861_29092;
  wire signed [16:0] out_rshift_expr_FU_32_0_32_55_i1_fu_shell_sort_28861_29099;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_55_i2_fu_shell_sort_28861_29114;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_55_i3_fu_shell_sort_28861_29124;
  wire signed [31:0] out_rshift_expr_FU_32_0_32_56_i0_fu_shell_sort_28861_29137;
  wire signed [30:0] out_rshift_expr_FU_32_0_32_57_i0_fu_shell_sort_28861_29260;
  wire signed [30:0] out_rshift_expr_FU_32_0_32_57_i1_fu_shell_sort_28861_29265;
  wire signed [25:0] out_rshift_expr_FU_32_0_32_57_i2_fu_shell_sort_28861_29322;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_57_i3_fu_shell_sort_28861_29325;
  wire signed [24:0] out_rshift_expr_FU_32_0_32_57_i4_fu_shell_sort_28861_29392;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_57_i5_fu_shell_sort_28861_29424;
  wire signed [30:0] out_rshift_expr_FU_32_0_32_57_i6_fu_shell_sort_28861_29427;
  wire signed [16:0] out_rshift_expr_FU_32_0_32_58_i0_fu_shell_sort_28861_29278;
  wire signed [14:0] out_rshift_expr_FU_32_0_32_58_i1_fu_shell_sort_28861_29282;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_58_i2_fu_shell_sort_28861_29356;
  wire signed [14:0] out_rshift_expr_FU_32_0_32_59_i0_fu_shell_sort_28861_29302;
  wire signed [19:0] out_rshift_expr_FU_32_0_32_59_i1_fu_shell_sort_28861_29305;
  wire signed [22:0] out_rshift_expr_FU_32_0_32_59_i2_fu_shell_sort_28861_29343;
  wire signed [26:0] out_rshift_expr_FU_32_0_32_59_i3_fu_shell_sort_28861_29348;
  wire signed [13:0] out_rshift_expr_FU_32_0_32_59_i4_fu_shell_sort_28861_29375;
  wire signed [18:0] out_rshift_expr_FU_32_0_32_59_i5_fu_shell_sort_28861_29378;
  wire signed [21:0] out_rshift_expr_FU_32_0_32_59_i6_fu_shell_sort_28861_29407;
  wire signed [26:0] out_rshift_expr_FU_32_0_32_59_i7_fu_shell_sort_28861_29412;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_60_i0_fu_shell_sort_28861_29454;
  wire signed [19:0] out_rshift_expr_FU_32_0_32_60_i1_fu_shell_sort_28861_29457;
  wire signed [14:0] out_rshift_expr_FU_32_0_32_60_i2_fu_shell_sort_28861_29505;
  wire signed [18:0] out_rshift_expr_FU_32_0_32_60_i3_fu_shell_sort_28861_29508;
  wire signed [16:0] out_rshift_expr_FU_32_0_32_61_i0_fu_shell_sort_28861_29471;
  wire signed [23:0] out_rshift_expr_FU_32_0_32_61_i1_fu_shell_sort_28861_29474;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_61_i2_fu_shell_sort_28861_29520;
  wire signed [23:0] out_rshift_expr_FU_32_0_32_61_i3_fu_shell_sort_28861_29523;
  wire signed [30:0] out_ternary_mp_expr_FU_32_32_0_32_62_i0_fu_shell_sort_28861_28947;
  wire signed [31:0] out_ternary_plus_expr_FU_32_32_32_32_63_i0_fu_shell_sort_28861_29133;
  wire out_ui_gt_expr_FU_8_8_8_64_i0_fu_shell_sort_28861_29238;
  wire [7:0] out_ui_minus_expr_FU_8_8_8_65_i0_fu_shell_sort_28861_28996;
  wire out_ui_ne_expr_FU_8_8_8_66_i0_fu_shell_sort_28861_29246;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_67_i0_fu_shell_sort_28861_28993;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_8_8_68_i0_fu_shell_sort_28861_28971;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_8_8_68_i1_fu_shell_sort_28861_29007;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_8_8_68_i2_fu_shell_sort_28861_29024;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_8_8_68_i3_fu_shell_sort_28861_29035;
  wire [15:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [13:0] sig_in_bus_mergerMout_addr_ram1_0;
  wire [7:0] sig_in_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_bus_mergerMout_we_ram4_0;
  wire [15:0] sig_in_vector_bus_mergerMout_Wdata_ram0_0;
  wire [13:0] sig_in_vector_bus_mergerMout_addr_ram1_0;
  wire [7:0] sig_in_vector_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_vector_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_vector_bus_mergerMout_we_ram4_0;
  wire [15:0] sig_out_bus_mergerMout_Wdata_ram0_;
  wire [13:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [7:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire [1:0] sig_out_bus_mergerMout_oe_ram3_;
  wire [1:0] sig_out_bus_mergerMout_we_ram4_;
  
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) ASSIGN_SIGNED_FU_i_assign_0 (.out1(out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0), .in1(out_const_0));
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(31), .BITSIZE_out1(31)) ASSIGN_SIGNED_FU_i_assign_1 (.out1(out_i_assign_conn_obj_1_ASSIGN_SIGNED_FU_i_assign_1), .in1(out_reg_9_reg_9));
  BMEMORY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(7), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_Min_oe_ram(1), .PORTSIZE_Min_oe_ram(2), .BITSIZE_Min_we_ram(1), .PORTSIZE_Min_we_ram(2), .BITSIZE_Mout_oe_ram(1), .PORTSIZE_Mout_oe_ram(2), .BITSIZE_Mout_we_ram(1), .PORTSIZE_Mout_we_ram(2), .BITSIZE_M_DataRdy(1), .PORTSIZE_M_DataRdy(2), .BITSIZE_Min_addr_ram(7), .PORTSIZE_Min_addr_ram(2), .BITSIZE_Mout_addr_ram(7), .PORTSIZE_Mout_addr_ram(2), .BITSIZE_M_Rdata_ram(8), .PORTSIZE_M_Rdata_ram(2), .BITSIZE_Min_Wdata_ram(8), .PORTSIZE_Min_Wdata_ram(2), .BITSIZE_Mout_Wdata_ram(8), .PORTSIZE_Mout_Wdata_ram(2), .BITSIZE_Min_data_ram_size(4), .PORTSIZE_Min_data_ram_size(2), .BITSIZE_Mout_data_ram_size(4), .PORTSIZE_Mout_data_ram_size(2)) BMEMORY_CTRLN_28_i0 (.out1({null_out_signal_BMEMORY_CTRLN_28_i0_out1_1, out_BMEMORY_CTRLN_28_i0_BMEMORY_CTRLN_28_i0}), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .in1({8'b00000000, out_MUX_0_BMEMORY_CTRLN_28_i0_0_0_0}), .in2({7'b0000000, out_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0}), .in3({4'b0000, out_conv_out_const_3_5_4}), .in4({1'b0, out_const_12}), .sel_LOAD({1'b0, fuselector_BMEMORY_CTRLN_28_i0_LOAD}), .sel_STORE({1'b0, fuselector_BMEMORY_CTRLN_28_i0_STORE}), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .M_Rdata_ram(M_Rdata_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .M_DataRdy(M_DataRdy));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_2 (.out1(out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_2), .in1(out_reg_18_reg_18));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_3 (.out1(out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_3), .in1(out_reg_14_reg_14));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_0_BMEMORY_CTRLN_28_i0_0_0_0 (.out1(out_MUX_0_BMEMORY_CTRLN_28_i0_0_0_0), .sel(selector_MUX_0_BMEMORY_CTRLN_28_i0_0_0_0), .in1(out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_2), .in2(out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_3));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_199_reg_0_0_0_0 (.out1(out_MUX_199_reg_0_0_0_0), .sel(selector_MUX_199_reg_0_0_0_0), .in1(out_conv_out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0_I_2_32), .in2(out_plus_expr_FU_32_0_32_51_i0_fu_shell_sort_28861_28929));
  MUX_GATE #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(7)) MUX_1_BMEMORY_CTRLN_28_i0_1_0_0 (.out1(out_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0), .sel(selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0), .in1(out_reg_16_reg_16), .in2(out_ui_pointer_plus_expr_FU_8_8_8_68_i1_fu_shell_sort_28861_29007));
  MUX_GATE #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(7)) MUX_1_BMEMORY_CTRLN_28_i0_1_0_1 (.out1(out_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1), .sel(selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1), .in1(out_ui_pointer_plus_expr_FU_8_8_8_68_i2_fu_shell_sort_28861_29024), .in2(out_ui_pointer_plus_expr_FU_8_8_8_68_i3_fu_shell_sort_28861_29035));
  MUX_GATE #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(7)) MUX_1_BMEMORY_CTRLN_28_i0_1_1_0 (.out1(out_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0), .sel(selector_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0), .in1(out_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0), .in2(out_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_200_reg_1_0_0_0 (.out1(out_MUX_200_reg_1_0_0_0), .sel(selector_MUX_200_reg_1_0_0_0), .in1(out_conv_out_i_assign_conn_obj_1_ASSIGN_SIGNED_FU_i_assign_1_I_31_32), .in2(out_plus_expr_FU_32_0_32_51_i0_fu_shell_sort_28861_28929));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_206_reg_15_0_0_0 (.out1(out_MUX_206_reg_15_0_0_0), .sel(selector_MUX_206_reg_15_0_0_0), .in1(out_reg_19_reg_19), .in2(out_reg_12_reg_12));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_206_reg_15_0_0_1 (.out1(out_MUX_206_reg_15_0_0_1), .sel(selector_MUX_206_reg_15_0_0_1), .in1(out_IUconvert_expr_FU_6_i0_fu_shell_sort_28861_28948), .in2(out_MUX_206_reg_15_0_0_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_210_reg_19_0_0_0 (.out1(out_MUX_210_reg_19_0_0_0), .sel(selector_MUX_210_reg_19_0_0_0), .in1(out_reg_15_reg_15), .in2(out_ui_minus_expr_FU_8_8_8_65_i0_fu_shell_sort_28861_28996));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(14), .PORTSIZE_in1(1), .BITSIZE_out1(14)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  constant_value #(.BITSIZE_out1(2), .value(2'b01)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(3), .value(3'b010)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(9), .value(9'b011111111)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(17), .value(17'b01111111111111111)) const_11 (.out1(out_const_11));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_12 (.out1(out_const_12));
  constant_value #(.BITSIZE_out1(4), .value(4'b0100)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(6), .value(6'b010000)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(4), .value(4'b0101)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(3), .value(3'b011)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(5), .value(5'b01100)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(5), .value(5'b01111)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(6), .value(6'b011111)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(4)) conv_in_port_size_8_4 (.out1(out_conv_in_port_size_8_4), .in1(in_port_size));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_3_5_4 (.out1(out_conv_out_const_3_5_4), .in1(out_const_3));
  IUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(32)) conv_out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0_I_2_32 (.out1(out_conv_out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0_I_2_32), .in1(out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0));
  IUdata_converter_FU #(.BITSIZE_in1(31), .BITSIZE_out1(32)) conv_out_i_assign_conn_obj_1_ASSIGN_SIGNED_FU_i_assign_1_I_31_32 (.out1(out_conv_out_i_assign_conn_obj_1_ASSIGN_SIGNED_FU_i_assign_1_I_31_32), .in1(out_i_assign_conn_obj_1_ASSIGN_SIGNED_FU_i_assign_1));
  plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(32)) fu_shell_sort_28861_28929 (.out1(out_plus_expr_FU_32_0_32_51_i0_fu_shell_sort_28861_28929), .in1(out_bit_ior_concat_expr_FU_35_i0_fu_shell_sort_28861_29084), .in2(out_const_0));
  read_cond_FU #(.BITSIZE_in1(1)) fu_shell_sort_28861_28930 (.out1(out_read_cond_FU_4_i0_fu_shell_sort_28861_28930), .in1(out_le_expr_FU_32_0_32_41_i0_fu_shell_sort_28861_29236));
  ternary_mp_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_in3(2), .BITSIZE_out1(31)) fu_shell_sort_28861_28947 (.out1(out_ternary_mp_expr_FU_32_32_0_32_62_i0_fu_shell_sort_28861_28947), .in1(out_reg_8_reg_8), .in2(out_reg_2_reg_2), .in3(out_const_0));
  IUconvert_expr_FU #(.BITSIZE_in1(31), .BITSIZE_out1(8)) fu_shell_sort_28861_28948 (.out1(out_IUconvert_expr_FU_6_i0_fu_shell_sort_28861_28948), .in1(out_ternary_mp_expr_FU_32_32_0_32_62_i0_fu_shell_sort_28861_28947));
  read_cond_FU #(.BITSIZE_in1(1)) fu_shell_sort_28861_28949 (.out1(out_read_cond_FU_8_i0_fu_shell_sort_28861_28949), .in1(out_ui_gt_expr_FU_8_8_8_64_i0_fu_shell_sort_28861_29238));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_shell_sort_28861_28971 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_68_i0_fu_shell_sort_28861_28971), .in1(in_port_arr), .in2(out_UUdata_converter_FU_22_i0_fu_shell_sort_28861_28976));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_shell_sort_28861_28976 (.out1(out_UUdata_converter_FU_22_i0_fu_shell_sort_28861_28976), .in1(out_reg_15_reg_15));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_shell_sort_28861_28993 (.out1(out_ui_plus_expr_FU_8_0_8_67_i0_fu_shell_sort_28861_28993), .in1(out_reg_15_reg_15), .in2(out_const_12));
  ui_minus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) fu_shell_sort_28861_28996 (.out1(out_ui_minus_expr_FU_8_8_8_65_i0_fu_shell_sort_28861_28996), .in1(out_reg_15_reg_15), .in2(out_reg_10_reg_10));
  IUdata_converter_FU #(.BITSIZE_in1(31), .BITSIZE_out1(8)) fu_shell_sort_28861_29000 (.out1(out_IUdata_converter_FU_7_i0_fu_shell_sort_28861_29000), .in1(out_ternary_mp_expr_FU_32_32_0_32_62_i0_fu_shell_sort_28861_28947));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_shell_sort_28861_29007 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_68_i1_fu_shell_sort_28861_29007), .in1(in_port_arr), .in2(out_IUdata_converter_FU_21_i0_fu_shell_sort_28861_29010));
  IUdata_converter_FU #(.BITSIZE_in1(31), .BITSIZE_out1(8)) fu_shell_sort_28861_29010 (.out1(out_IUdata_converter_FU_21_i0_fu_shell_sort_28861_29010), .in1(out_minus_expr_FU_32_32_32_48_i0_fu_shell_sort_28861_29013));
  minus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(31), .BITSIZE_out1(31)) fu_shell_sort_28861_29013 (.out1(out_minus_expr_FU_32_32_32_48_i0_fu_shell_sort_28861_29013), .in1(out_UIdata_converter_FU_20_i0_fu_shell_sort_28861_29018), .in2(out_reg_9_reg_9));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_shell_sort_28861_29018 (.out1(out_UIdata_converter_FU_20_i0_fu_shell_sort_28861_29018), .in1(out_reg_15_reg_15));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_shell_sort_28861_29024 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_68_i2_fu_shell_sort_28861_29024), .in1(in_port_arr), .in2(out_UUdata_converter_FU_26_i0_fu_shell_sort_28861_29027));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_shell_sort_28861_29027 (.out1(out_UUdata_converter_FU_26_i0_fu_shell_sort_28861_29027), .in1(out_reg_19_reg_19));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_shell_sort_28861_29035 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_68_i3_fu_shell_sort_28861_29035), .in1(in_port_arr), .in2(out_UUdata_converter_FU_14_i0_fu_shell_sort_28861_29038));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_shell_sort_28861_29038 (.out1(out_UUdata_converter_FU_14_i0_fu_shell_sort_28861_29038), .in1(out_reg_15_reg_15));
  read_cond_FU #(.BITSIZE_in1(1)) fu_shell_sort_28861_29046 (.out1(out_read_cond_FU_10_i0_fu_shell_sort_28861_29046), .in1(out_reg_11_reg_11));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_shell_sort_28861_29048 (.out1(out_UIdata_converter_FU_23_i0_fu_shell_sort_28861_29048), .in1(out_ui_minus_expr_FU_8_8_8_65_i0_fu_shell_sort_28861_28996));
  read_cond_FU #(.BITSIZE_in1(1)) fu_shell_sort_28861_29049 (.out1(out_read_cond_FU_16_i0_fu_shell_sort_28861_29049), .in1(out_reg_17_reg_17));
  read_cond_FU #(.BITSIZE_in1(1)) fu_shell_sort_28861_29053 (.out1(out_read_cond_FU_24_i0_fu_shell_sort_28861_29053), .in1(out_lt_expr_FU_8_8_8_47_i0_fu_shell_sort_28861_29244));
  read_cond_FU #(.BITSIZE_in1(1)) fu_shell_sort_28861_29055 (.out1(out_read_cond_FU_27_i0_fu_shell_sort_28861_29055), .in1(out_reg_13_reg_13));
  lshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29081 (.out1(out_lshift_expr_FU_32_0_32_42_i0_fu_shell_sort_28861_29081), .in1(out_reg_0_reg_0), .in2(out_const_0));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(32), .OFFSET_PARAMETER(1)) fu_shell_sort_28861_29084 (.out1(out_bit_ior_concat_expr_FU_35_i0_fu_shell_sort_28861_29084), .in1(out_lshift_expr_FU_32_0_32_42_i5_fu_shell_sort_28861_29270), .in2(out_bit_and_expr_FU_8_0_8_31_i0_fu_shell_sort_28861_29273), .in3(out_const_0));
  bit_and_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(17), .BITSIZE_out1(17)) fu_shell_sort_28861_29089 (.out1(out_bit_and_expr_FU_32_0_32_30_i0_fu_shell_sort_28861_29089), .in1(out_reg_1_reg_1), .in2(out_const_11));
  rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(6), .BITSIZE_out1(16), .PRECISION(32)) fu_shell_sort_28861_29092 (.out1(out_rshift_expr_FU_32_0_32_55_i0_fu_shell_sort_28861_29092), .in1(out_reg_1_reg_1), .in2(out_const_4));
  rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(6), .BITSIZE_out1(17), .PRECISION(32)) fu_shell_sort_28861_29099 (.out1(out_rshift_expr_FU_32_0_32_55_i1_fu_shell_sort_28861_29099), .in1(out_lshift_expr_FU_32_0_32_42_i2_fu_shell_sort_28861_29167), .in2(out_const_4));
  bit_and_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(17), .BITSIZE_out1(17)) fu_shell_sort_28861_29102 (.out1(out_bit_and_expr_FU_32_0_32_30_i1_fu_shell_sort_28861_29102), .in1(out_rshift_expr_FU_32_0_32_55_i1_fu_shell_sort_28861_29099), .in2(out_const_11));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(32), .OFFSET_PARAMETER(1)) fu_shell_sort_28861_29108 (.out1(out_bit_ior_concat_expr_FU_35_i1_fu_shell_sort_28861_29108), .in1(out_lshift_expr_FU_32_0_32_42_i8_fu_shell_sort_28861_29432), .in2(out_reg_7_reg_7), .in3(out_const_0));
  bit_and_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(17), .BITSIZE_out1(17)) fu_shell_sort_28861_29111 (.out1(out_bit_and_expr_FU_32_0_32_30_i2_fu_shell_sort_28861_29111), .in1(out_bit_ior_concat_expr_FU_35_i1_fu_shell_sort_28861_29108), .in2(out_const_11));
  rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(6), .BITSIZE_out1(16), .PRECISION(32)) fu_shell_sort_28861_29114 (.out1(out_rshift_expr_FU_32_0_32_55_i2_fu_shell_sort_28861_29114), .in1(out_bit_ior_concat_expr_FU_35_i1_fu_shell_sort_28861_29108), .in2(out_const_4));
  plus_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(32), .BITSIZE_out1(32)) fu_shell_sort_28861_29121 (.out1(out_plus_expr_FU_32_32_32_52_i0_fu_shell_sort_28861_29121), .in1(out_bit_and_expr_FU_32_0_32_30_i2_fu_shell_sort_28861_29111), .in2(out_reg_3_reg_3));
  rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(6), .BITSIZE_out1(16), .PRECISION(32)) fu_shell_sort_28861_29124 (.out1(out_rshift_expr_FU_32_0_32_55_i3_fu_shell_sort_28861_29124), .in1(out_plus_expr_FU_32_32_32_52_i0_fu_shell_sort_28861_29121), .in2(out_const_4));
  ternary_plus_expr_FU #(.BITSIZE_in1(16), .BITSIZE_in2(16), .BITSIZE_in3(32), .BITSIZE_out1(32)) fu_shell_sort_28861_29133 (.out1(out_ternary_plus_expr_FU_32_32_32_32_63_i0_fu_shell_sort_28861_29133), .in1(out_rshift_expr_FU_32_0_32_55_i3_fu_shell_sort_28861_29124), .in2(out_rshift_expr_FU_32_0_32_55_i2_fu_shell_sort_28861_29114), .in3(out_reg_4_reg_4));
  rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(6), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29137 (.out1(out_rshift_expr_FU_32_0_32_56_i0_fu_shell_sort_28861_29137), .in1(out_reg_1_reg_1), .in2(out_const_9));
  lshift_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(3), .BITSIZE_out1(19), .PRECISION(32)) fu_shell_sort_28861_29142 (.out1(out_lshift_expr_FU_32_0_32_43_i0_fu_shell_sort_28861_29142), .in1(out_bit_and_expr_FU_32_0_32_30_i0_fu_shell_sort_28861_29089), .in2(out_const_1));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(20), .BITSIZE_in2(3), .BITSIZE_in3(3), .BITSIZE_out1(20), .OFFSET_PARAMETER(2)) fu_shell_sort_28861_29145 (.out1(out_bit_ior_concat_expr_FU_36_i0_fu_shell_sort_28861_29145), .in1(out_lshift_expr_FU_32_0_32_43_i2_fu_shell_sort_28861_29291), .in2(out_bit_and_expr_FU_8_0_8_32_i0_fu_shell_sort_28861_29297), .in3(out_const_1));
  lshift_expr_FU #(.BITSIZE_in1(20), .BITSIZE_in2(4), .BITSIZE_out1(25), .PRECISION(32)) fu_shell_sort_28861_29149 (.out1(out_lshift_expr_FU_32_0_32_44_i0_fu_shell_sort_28861_29149), .in1(out_bit_ior_concat_expr_FU_36_i0_fu_shell_sort_28861_29145), .in2(out_const_5));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(26), .BITSIZE_in2(6), .BITSIZE_in3(4), .BITSIZE_out1(26), .OFFSET_PARAMETER(5)) fu_shell_sort_28861_29152 (.out1(out_bit_ior_concat_expr_FU_37_i0_fu_shell_sort_28861_29152), .in1(out_lshift_expr_FU_32_0_32_44_i4_fu_shell_sort_28861_29312), .in2(out_bit_and_expr_FU_8_0_8_33_i0_fu_shell_sort_28861_29317), .in3(out_const_5));
  lshift_expr_FU #(.BITSIZE_in1(26), .BITSIZE_in2(2), .BITSIZE_out1(27), .PRECISION(32)) fu_shell_sort_28861_29155 (.out1(out_lshift_expr_FU_32_0_32_42_i1_fu_shell_sort_28861_29155), .in1(out_bit_ior_concat_expr_FU_37_i0_fu_shell_sort_28861_29152), .in2(out_const_0));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(28), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(28), .OFFSET_PARAMETER(1)) fu_shell_sort_28861_29158 (.out1(out_bit_ior_concat_expr_FU_35_i2_fu_shell_sort_28861_29158), .in1(out_lshift_expr_FU_32_0_32_42_i6_fu_shell_sort_28861_29334), .in2(out_bit_and_expr_FU_8_0_8_31_i1_fu_shell_sort_28861_29339), .in3(out_const_0));
  lshift_expr_FU #(.BITSIZE_in1(28), .BITSIZE_in2(4), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29161 (.out1(out_lshift_expr_FU_32_0_32_44_i1_fu_shell_sort_28861_29161), .in1(out_bit_ior_concat_expr_FU_35_i2_fu_shell_sort_28861_29158), .in2(out_const_5));
  lshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29167 (.out1(out_lshift_expr_FU_32_0_32_42_i2_fu_shell_sort_28861_29167), .in1(out_lshift_expr_FU_32_0_32_44_i5_fu_shell_sort_28861_29353), .in2(out_const_0));
  lshift_expr_FU #(.BITSIZE_in1(16), .BITSIZE_in2(3), .BITSIZE_out1(18), .PRECISION(32)) fu_shell_sort_28861_29170 (.out1(out_lshift_expr_FU_32_0_32_43_i1_fu_shell_sort_28861_29170), .in1(out_rshift_expr_FU_32_0_32_55_i0_fu_shell_sort_28861_29092), .in2(out_const_1));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(19), .BITSIZE_in2(3), .BITSIZE_in3(3), .BITSIZE_out1(19), .OFFSET_PARAMETER(2)) fu_shell_sort_28861_29173 (.out1(out_bit_ior_concat_expr_FU_36_i1_fu_shell_sort_28861_29173), .in1(out_lshift_expr_FU_32_0_32_43_i3_fu_shell_sort_28861_29366), .in2(out_bit_and_expr_FU_8_0_8_32_i1_fu_shell_sort_28861_29371), .in3(out_const_1));
  lshift_expr_FU #(.BITSIZE_in1(19), .BITSIZE_in2(4), .BITSIZE_out1(24), .PRECISION(32)) fu_shell_sort_28861_29176 (.out1(out_lshift_expr_FU_32_0_32_44_i2_fu_shell_sort_28861_29176), .in1(out_bit_ior_concat_expr_FU_36_i1_fu_shell_sort_28861_29173), .in2(out_const_5));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(25), .BITSIZE_in2(6), .BITSIZE_in3(4), .BITSIZE_out1(25), .OFFSET_PARAMETER(5)) fu_shell_sort_28861_29179 (.out1(out_bit_ior_concat_expr_FU_37_i1_fu_shell_sort_28861_29179), .in1(out_lshift_expr_FU_32_0_32_44_i6_fu_shell_sort_28861_29383), .in2(out_bit_and_expr_FU_8_0_8_33_i1_fu_shell_sort_28861_29388), .in3(out_const_5));
  lshift_expr_FU #(.BITSIZE_in1(25), .BITSIZE_in2(2), .BITSIZE_out1(26), .PRECISION(32)) fu_shell_sort_28861_29182 (.out1(out_lshift_expr_FU_32_0_32_42_i3_fu_shell_sort_28861_29182), .in1(out_bit_ior_concat_expr_FU_37_i1_fu_shell_sort_28861_29179), .in2(out_const_0));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(27), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(27), .OFFSET_PARAMETER(1)) fu_shell_sort_28861_29185 (.out1(out_bit_ior_concat_expr_FU_35_i3_fu_shell_sort_28861_29185), .in1(out_lshift_expr_FU_32_0_32_42_i7_fu_shell_sort_28861_29400), .in2(out_bit_and_expr_FU_8_0_8_31_i2_fu_shell_sort_28861_29403), .in3(out_const_0));
  lshift_expr_FU #(.BITSIZE_in1(27), .BITSIZE_in2(4), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29188 (.out1(out_lshift_expr_FU_32_0_32_44_i3_fu_shell_sort_28861_29188), .in1(out_bit_ior_concat_expr_FU_35_i3_fu_shell_sort_28861_29185), .in2(out_const_5));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(6), .BITSIZE_in3(4), .BITSIZE_out1(32), .OFFSET_PARAMETER(5)) fu_shell_sort_28861_29191 (.out1(out_bit_ior_concat_expr_FU_37_i2_fu_shell_sort_28861_29191), .in1(out_lshift_expr_FU_32_0_32_44_i7_fu_shell_sort_28861_29417), .in2(out_bit_and_expr_FU_8_0_8_33_i2_fu_shell_sort_28861_29420), .in3(out_const_5));
  lshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29194 (.out1(out_lshift_expr_FU_32_0_32_42_i4_fu_shell_sort_28861_29194), .in1(out_bit_ior_concat_expr_FU_37_i2_fu_shell_sort_28861_29191), .in2(out_const_0));
  lshift_expr_FU #(.BITSIZE_in1(20), .BITSIZE_in2(4), .BITSIZE_out1(24), .PRECISION(32)) fu_shell_sort_28861_29204 (.out1(out_lshift_expr_FU_32_0_32_45_i0_fu_shell_sort_28861_29204), .in1(out_bit_ior_concat_expr_FU_36_i0_fu_shell_sort_28861_29145), .in2(out_const_2));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(25), .BITSIZE_in2(5), .BITSIZE_in3(4), .BITSIZE_out1(25), .OFFSET_PARAMETER(4)) fu_shell_sort_28861_29207 (.out1(out_bit_ior_concat_expr_FU_38_i0_fu_shell_sort_28861_29207), .in1(out_lshift_expr_FU_32_0_32_45_i2_fu_shell_sort_28861_29462), .in2(out_bit_and_expr_FU_8_0_8_34_i0_fu_shell_sort_28861_29466), .in3(out_const_2));
  lshift_expr_FU #(.BITSIZE_in1(25), .BITSIZE_in2(5), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29211 (.out1(out_lshift_expr_FU_32_0_32_46_i0_fu_shell_sort_28861_29211), .in1(out_bit_ior_concat_expr_FU_38_i0_fu_shell_sort_28861_29207), .in2(out_const_3));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(9), .BITSIZE_in3(5), .BITSIZE_out1(32), .OFFSET_PARAMETER(8)) fu_shell_sort_28861_29214 (.out1(out_bit_ior_concat_expr_FU_39_i0_fu_shell_sort_28861_29214), .in1(out_lshift_expr_FU_32_0_32_46_i2_fu_shell_sort_28861_29481), .in2(out_bit_and_expr_FU_16_0_16_29_i0_fu_shell_sort_28861_29485), .in3(out_const_3));
  lshift_expr_FU #(.BITSIZE_in1(19), .BITSIZE_in2(4), .BITSIZE_out1(23), .PRECISION(32)) fu_shell_sort_28861_29223 (.out1(out_lshift_expr_FU_32_0_32_45_i1_fu_shell_sort_28861_29223), .in1(out_bit_ior_concat_expr_FU_36_i1_fu_shell_sort_28861_29173), .in2(out_const_2));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(24), .BITSIZE_in2(5), .BITSIZE_in3(4), .BITSIZE_out1(24), .OFFSET_PARAMETER(4)) fu_shell_sort_28861_29226 (.out1(out_bit_ior_concat_expr_FU_38_i1_fu_shell_sort_28861_29226), .in1(out_lshift_expr_FU_32_0_32_45_i3_fu_shell_sort_28861_29513), .in2(out_bit_and_expr_FU_8_0_8_34_i1_fu_shell_sort_28861_29516), .in3(out_const_2));
  lshift_expr_FU #(.BITSIZE_in1(24), .BITSIZE_in2(5), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29229 (.out1(out_lshift_expr_FU_32_0_32_46_i1_fu_shell_sort_28861_29229), .in1(out_bit_ior_concat_expr_FU_38_i1_fu_shell_sort_28861_29226), .in2(out_const_3));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(9), .BITSIZE_in3(5), .BITSIZE_out1(32), .OFFSET_PARAMETER(8)) fu_shell_sort_28861_29232 (.out1(out_bit_ior_concat_expr_FU_39_i1_fu_shell_sort_28861_29232), .in1(out_lshift_expr_FU_32_0_32_46_i3_fu_shell_sort_28861_29528), .in2(out_bit_and_expr_FU_16_0_16_29_i1_fu_shell_sort_28861_29531), .in3(out_const_3));
  le_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_shell_sort_28861_29236 (.out1(out_le_expr_FU_32_0_32_41_i0_fu_shell_sort_28861_29236), .in1(out_plus_expr_FU_32_0_32_51_i0_fu_shell_sort_28861_28929), .in2(out_const_7));
  ui_gt_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_shell_sort_28861_29238 (.out1(out_ui_gt_expr_FU_8_8_8_64_i0_fu_shell_sort_28861_29238), .in1(out_conv_in_port_size_8_4), .in2(out_IUconvert_expr_FU_6_i0_fu_shell_sort_28861_28948));
  ne_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_shell_sort_28861_29240 (.out1(out_ne_expr_FU_32_0_32_49_i0_fu_shell_sort_28861_29240), .in1(out_ternary_mp_expr_FU_32_32_0_32_62_i0_fu_shell_sort_28861_28947), .in2(out_const_0));
  gt_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(9), .BITSIZE_out1(1)) fu_shell_sort_28861_29242 (.out1(out_gt_expr_FU_32_32_32_40_i0_fu_shell_sort_28861_29242), .in1(out_reg_9_reg_9), .in2(out_UIdata_converter_FU_23_i0_fu_shell_sort_28861_29048));
  lt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_shell_sort_28861_29244 (.out1(out_lt_expr_FU_8_8_8_47_i0_fu_shell_sort_28861_29244), .in1(out_reg_14_reg_14), .in2(out_BMEMORY_CTRLN_28_i0_BMEMORY_CTRLN_28_i0));
  ui_ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(4), .BITSIZE_out1(1)) fu_shell_sort_28861_29246 (.out1(out_ui_ne_expr_FU_8_8_8_66_i0_fu_shell_sort_28861_29246), .in1(out_ui_plus_expr_FU_8_0_8_67_i0_fu_shell_sort_28861_28993), .in2(out_conv_in_port_size_8_4));
  rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(31), .PRECISION(32)) fu_shell_sort_28861_29260 (.out1(out_rshift_expr_FU_32_0_32_57_i0_fu_shell_sort_28861_29260), .in1(out_lshift_expr_FU_32_0_32_42_i0_fu_shell_sort_28861_29081), .in2(out_const_0));
  rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(31), .PRECISION(32)) fu_shell_sort_28861_29265 (.out1(out_rshift_expr_FU_32_0_32_57_i1_fu_shell_sort_28861_29265), .in1(out_reg_0_reg_0), .in2(out_const_0));
  plus_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(31), .BITSIZE_out1(31)) fu_shell_sort_28861_29267 (.out1(out_plus_expr_FU_32_32_32_52_i1_fu_shell_sort_28861_29267), .in1(out_rshift_expr_FU_32_0_32_57_i0_fu_shell_sort_28861_29260), .in2(out_rshift_expr_FU_32_0_32_57_i1_fu_shell_sort_28861_29265));
  lshift_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(2), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29270 (.out1(out_lshift_expr_FU_32_0_32_42_i5_fu_shell_sort_28861_29270), .in1(out_plus_expr_FU_32_32_32_52_i1_fu_shell_sort_28861_29267), .in2(out_const_0));
  bit_and_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_shell_sort_28861_29273 (.out1(out_bit_and_expr_FU_8_0_8_31_i0_fu_shell_sort_28861_29273), .in1(out_reg_0_reg_0), .in2(out_const_0));
  rshift_expr_FU #(.BITSIZE_in1(19), .BITSIZE_in2(3), .BITSIZE_out1(17), .PRECISION(32)) fu_shell_sort_28861_29278 (.out1(out_rshift_expr_FU_32_0_32_58_i0_fu_shell_sort_28861_29278), .in1(out_lshift_expr_FU_32_0_32_43_i0_fu_shell_sort_28861_29142), .in2(out_const_1));
  rshift_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(3), .BITSIZE_out1(15), .PRECISION(32)) fu_shell_sort_28861_29282 (.out1(out_rshift_expr_FU_32_0_32_58_i1_fu_shell_sort_28861_29282), .in1(out_bit_and_expr_FU_32_0_32_30_i0_fu_shell_sort_28861_29089), .in2(out_const_1));
  plus_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(15), .BITSIZE_out1(18)) fu_shell_sort_28861_29286 (.out1(out_plus_expr_FU_32_32_32_52_i2_fu_shell_sort_28861_29286), .in1(out_rshift_expr_FU_32_0_32_58_i0_fu_shell_sort_28861_29278), .in2(out_rshift_expr_FU_32_0_32_58_i1_fu_shell_sort_28861_29282));
  lshift_expr_FU #(.BITSIZE_in1(18), .BITSIZE_in2(3), .BITSIZE_out1(20), .PRECISION(32)) fu_shell_sort_28861_29291 (.out1(out_lshift_expr_FU_32_0_32_43_i2_fu_shell_sort_28861_29291), .in1(out_plus_expr_FU_32_32_32_52_i2_fu_shell_sort_28861_29286), .in2(out_const_1));
  bit_and_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(3), .BITSIZE_out1(3)) fu_shell_sort_28861_29297 (.out1(out_bit_and_expr_FU_8_0_8_32_i0_fu_shell_sort_28861_29297), .in1(out_bit_and_expr_FU_32_0_32_30_i0_fu_shell_sort_28861_29089), .in2(out_const_6));
  rshift_expr_FU #(.BITSIZE_in1(20), .BITSIZE_in2(4), .BITSIZE_out1(15), .PRECISION(32)) fu_shell_sort_28861_29302 (.out1(out_rshift_expr_FU_32_0_32_59_i0_fu_shell_sort_28861_29302), .in1(out_bit_ior_concat_expr_FU_36_i0_fu_shell_sort_28861_29145), .in2(out_const_5));
  rshift_expr_FU #(.BITSIZE_in1(25), .BITSIZE_in2(4), .BITSIZE_out1(20), .PRECISION(32)) fu_shell_sort_28861_29305 (.out1(out_rshift_expr_FU_32_0_32_59_i1_fu_shell_sort_28861_29305), .in1(out_lshift_expr_FU_32_0_32_44_i0_fu_shell_sort_28861_29149), .in2(out_const_5));
  plus_expr_FU #(.BITSIZE_in1(15), .BITSIZE_in2(20), .BITSIZE_out1(21)) fu_shell_sort_28861_29307 (.out1(out_plus_expr_FU_32_32_32_52_i3_fu_shell_sort_28861_29307), .in1(out_rshift_expr_FU_32_0_32_59_i0_fu_shell_sort_28861_29302), .in2(out_rshift_expr_FU_32_0_32_59_i1_fu_shell_sort_28861_29305));
  lshift_expr_FU #(.BITSIZE_in1(21), .BITSIZE_in2(4), .BITSIZE_out1(26), .PRECISION(32)) fu_shell_sort_28861_29312 (.out1(out_lshift_expr_FU_32_0_32_44_i4_fu_shell_sort_28861_29312), .in1(out_plus_expr_FU_32_32_32_52_i3_fu_shell_sort_28861_29307), .in2(out_const_5));
  bit_and_expr_FU #(.BITSIZE_in1(20), .BITSIZE_in2(6), .BITSIZE_out1(6)) fu_shell_sort_28861_29317 (.out1(out_bit_and_expr_FU_8_0_8_33_i0_fu_shell_sort_28861_29317), .in1(out_bit_ior_concat_expr_FU_36_i0_fu_shell_sort_28861_29145), .in2(out_const_9));
  rshift_expr_FU #(.BITSIZE_in1(27), .BITSIZE_in2(2), .BITSIZE_out1(26), .PRECISION(32)) fu_shell_sort_28861_29322 (.out1(out_rshift_expr_FU_32_0_32_57_i2_fu_shell_sort_28861_29322), .in1(out_lshift_expr_FU_32_0_32_42_i1_fu_shell_sort_28861_29155), .in2(out_const_0));
  rshift_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(2), .BITSIZE_out1(16), .PRECISION(32)) fu_shell_sort_28861_29325 (.out1(out_rshift_expr_FU_32_0_32_57_i3_fu_shell_sort_28861_29325), .in1(out_bit_and_expr_FU_32_0_32_30_i0_fu_shell_sort_28861_29089), .in2(out_const_0));
  plus_expr_FU #(.BITSIZE_in1(26), .BITSIZE_in2(16), .BITSIZE_out1(27)) fu_shell_sort_28861_29329 (.out1(out_plus_expr_FU_32_32_32_52_i4_fu_shell_sort_28861_29329), .in1(out_rshift_expr_FU_32_0_32_57_i2_fu_shell_sort_28861_29322), .in2(out_rshift_expr_FU_32_0_32_57_i3_fu_shell_sort_28861_29325));
  lshift_expr_FU #(.BITSIZE_in1(27), .BITSIZE_in2(2), .BITSIZE_out1(28), .PRECISION(32)) fu_shell_sort_28861_29334 (.out1(out_lshift_expr_FU_32_0_32_42_i6_fu_shell_sort_28861_29334), .in1(out_plus_expr_FU_32_32_32_52_i4_fu_shell_sort_28861_29329), .in2(out_const_0));
  bit_and_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_shell_sort_28861_29339 (.out1(out_bit_and_expr_FU_8_0_8_31_i1_fu_shell_sort_28861_29339), .in1(out_bit_and_expr_FU_32_0_32_30_i0_fu_shell_sort_28861_29089), .in2(out_const_0));
  rshift_expr_FU #(.BITSIZE_in1(28), .BITSIZE_in2(4), .BITSIZE_out1(23), .PRECISION(32)) fu_shell_sort_28861_29343 (.out1(out_rshift_expr_FU_32_0_32_59_i2_fu_shell_sort_28861_29343), .in1(out_bit_ior_concat_expr_FU_35_i2_fu_shell_sort_28861_29158), .in2(out_const_5));
  rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(4), .BITSIZE_out1(27), .PRECISION(32)) fu_shell_sort_28861_29348 (.out1(out_rshift_expr_FU_32_0_32_59_i3_fu_shell_sort_28861_29348), .in1(out_lshift_expr_FU_32_0_32_44_i1_fu_shell_sort_28861_29161), .in2(out_const_5));
  plus_expr_FU #(.BITSIZE_in1(23), .BITSIZE_in2(27), .BITSIZE_out1(27)) fu_shell_sort_28861_29350 (.out1(out_plus_expr_FU_32_32_32_52_i5_fu_shell_sort_28861_29350), .in1(out_rshift_expr_FU_32_0_32_59_i2_fu_shell_sort_28861_29343), .in2(out_rshift_expr_FU_32_0_32_59_i3_fu_shell_sort_28861_29348));
  lshift_expr_FU #(.BITSIZE_in1(27), .BITSIZE_in2(4), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29353 (.out1(out_lshift_expr_FU_32_0_32_44_i5_fu_shell_sort_28861_29353), .in1(out_plus_expr_FU_32_32_32_52_i5_fu_shell_sort_28861_29350), .in2(out_const_5));
  rshift_expr_FU #(.BITSIZE_in1(18), .BITSIZE_in2(3), .BITSIZE_out1(16), .PRECISION(32)) fu_shell_sort_28861_29356 (.out1(out_rshift_expr_FU_32_0_32_58_i2_fu_shell_sort_28861_29356), .in1(out_lshift_expr_FU_32_0_32_43_i1_fu_shell_sort_28861_29170), .in2(out_const_1));
  rshift_expr_FU #(.BITSIZE_in1(16), .BITSIZE_in2(3), .BITSIZE_out1(14), .PRECISION(32)) fu_shell_sort_28861_29359 (.out1(out_rshift_expr_FU_16_0_16_53_i0_fu_shell_sort_28861_29359), .in1(out_rshift_expr_FU_32_0_32_55_i0_fu_shell_sort_28861_29092), .in2(out_const_1));
  plus_expr_FU #(.BITSIZE_in1(16), .BITSIZE_in2(14), .BITSIZE_out1(17)) fu_shell_sort_28861_29363 (.out1(out_plus_expr_FU_16_16_16_50_i0_fu_shell_sort_28861_29363), .in1(out_rshift_expr_FU_32_0_32_58_i2_fu_shell_sort_28861_29356), .in2(out_rshift_expr_FU_16_0_16_53_i0_fu_shell_sort_28861_29359));
  lshift_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(3), .BITSIZE_out1(19), .PRECISION(32)) fu_shell_sort_28861_29366 (.out1(out_lshift_expr_FU_32_0_32_43_i3_fu_shell_sort_28861_29366), .in1(out_plus_expr_FU_16_16_16_50_i0_fu_shell_sort_28861_29363), .in2(out_const_1));
  bit_and_expr_FU #(.BITSIZE_in1(16), .BITSIZE_in2(3), .BITSIZE_out1(3)) fu_shell_sort_28861_29371 (.out1(out_bit_and_expr_FU_8_0_8_32_i1_fu_shell_sort_28861_29371), .in1(out_rshift_expr_FU_32_0_32_55_i0_fu_shell_sort_28861_29092), .in2(out_const_6));
  rshift_expr_FU #(.BITSIZE_in1(19), .BITSIZE_in2(4), .BITSIZE_out1(14), .PRECISION(32)) fu_shell_sort_28861_29375 (.out1(out_rshift_expr_FU_32_0_32_59_i4_fu_shell_sort_28861_29375), .in1(out_bit_ior_concat_expr_FU_36_i1_fu_shell_sort_28861_29173), .in2(out_const_5));
  rshift_expr_FU #(.BITSIZE_in1(24), .BITSIZE_in2(4), .BITSIZE_out1(19), .PRECISION(32)) fu_shell_sort_28861_29378 (.out1(out_rshift_expr_FU_32_0_32_59_i5_fu_shell_sort_28861_29378), .in1(out_lshift_expr_FU_32_0_32_44_i2_fu_shell_sort_28861_29176), .in2(out_const_5));
  plus_expr_FU #(.BITSIZE_in1(14), .BITSIZE_in2(19), .BITSIZE_out1(20)) fu_shell_sort_28861_29380 (.out1(out_plus_expr_FU_32_32_32_52_i6_fu_shell_sort_28861_29380), .in1(out_rshift_expr_FU_32_0_32_59_i4_fu_shell_sort_28861_29375), .in2(out_rshift_expr_FU_32_0_32_59_i5_fu_shell_sort_28861_29378));
  lshift_expr_FU #(.BITSIZE_in1(20), .BITSIZE_in2(4), .BITSIZE_out1(25), .PRECISION(32)) fu_shell_sort_28861_29383 (.out1(out_lshift_expr_FU_32_0_32_44_i6_fu_shell_sort_28861_29383), .in1(out_plus_expr_FU_32_32_32_52_i6_fu_shell_sort_28861_29380), .in2(out_const_5));
  bit_and_expr_FU #(.BITSIZE_in1(19), .BITSIZE_in2(6), .BITSIZE_out1(6)) fu_shell_sort_28861_29388 (.out1(out_bit_and_expr_FU_8_0_8_33_i1_fu_shell_sort_28861_29388), .in1(out_bit_ior_concat_expr_FU_36_i1_fu_shell_sort_28861_29173), .in2(out_const_9));
  rshift_expr_FU #(.BITSIZE_in1(26), .BITSIZE_in2(2), .BITSIZE_out1(25), .PRECISION(32)) fu_shell_sort_28861_29392 (.out1(out_rshift_expr_FU_32_0_32_57_i4_fu_shell_sort_28861_29392), .in1(out_lshift_expr_FU_32_0_32_42_i3_fu_shell_sort_28861_29182), .in2(out_const_0));
  rshift_expr_FU #(.BITSIZE_in1(16), .BITSIZE_in2(2), .BITSIZE_out1(15), .PRECISION(32)) fu_shell_sort_28861_29395 (.out1(out_rshift_expr_FU_16_0_16_54_i0_fu_shell_sort_28861_29395), .in1(out_rshift_expr_FU_32_0_32_55_i0_fu_shell_sort_28861_29092), .in2(out_const_0));
  plus_expr_FU #(.BITSIZE_in1(25), .BITSIZE_in2(15), .BITSIZE_out1(26)) fu_shell_sort_28861_29397 (.out1(out_plus_expr_FU_32_32_32_52_i7_fu_shell_sort_28861_29397), .in1(out_rshift_expr_FU_32_0_32_57_i4_fu_shell_sort_28861_29392), .in2(out_rshift_expr_FU_16_0_16_54_i0_fu_shell_sort_28861_29395));
  lshift_expr_FU #(.BITSIZE_in1(26), .BITSIZE_in2(2), .BITSIZE_out1(27), .PRECISION(32)) fu_shell_sort_28861_29400 (.out1(out_lshift_expr_FU_32_0_32_42_i7_fu_shell_sort_28861_29400), .in1(out_plus_expr_FU_32_32_32_52_i7_fu_shell_sort_28861_29397), .in2(out_const_0));
  bit_and_expr_FU #(.BITSIZE_in1(16), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_shell_sort_28861_29403 (.out1(out_bit_and_expr_FU_8_0_8_31_i2_fu_shell_sort_28861_29403), .in1(out_rshift_expr_FU_32_0_32_55_i0_fu_shell_sort_28861_29092), .in2(out_const_0));
  rshift_expr_FU #(.BITSIZE_in1(27), .BITSIZE_in2(4), .BITSIZE_out1(22), .PRECISION(32)) fu_shell_sort_28861_29407 (.out1(out_rshift_expr_FU_32_0_32_59_i6_fu_shell_sort_28861_29407), .in1(out_bit_ior_concat_expr_FU_35_i3_fu_shell_sort_28861_29185), .in2(out_const_5));
  rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(4), .BITSIZE_out1(27), .PRECISION(32)) fu_shell_sort_28861_29412 (.out1(out_rshift_expr_FU_32_0_32_59_i7_fu_shell_sort_28861_29412), .in1(out_lshift_expr_FU_32_0_32_44_i3_fu_shell_sort_28861_29188), .in2(out_const_5));
  plus_expr_FU #(.BITSIZE_in1(22), .BITSIZE_in2(27), .BITSIZE_out1(27)) fu_shell_sort_28861_29414 (.out1(out_plus_expr_FU_32_32_32_52_i8_fu_shell_sort_28861_29414), .in1(out_rshift_expr_FU_32_0_32_59_i6_fu_shell_sort_28861_29407), .in2(out_rshift_expr_FU_32_0_32_59_i7_fu_shell_sort_28861_29412));
  lshift_expr_FU #(.BITSIZE_in1(27), .BITSIZE_in2(4), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29417 (.out1(out_lshift_expr_FU_32_0_32_44_i7_fu_shell_sort_28861_29417), .in1(out_plus_expr_FU_32_32_32_52_i8_fu_shell_sort_28861_29414), .in2(out_const_5));
  bit_and_expr_FU #(.BITSIZE_in1(27), .BITSIZE_in2(6), .BITSIZE_out1(6)) fu_shell_sort_28861_29420 (.out1(out_bit_and_expr_FU_8_0_8_33_i2_fu_shell_sort_28861_29420), .in1(out_bit_ior_concat_expr_FU_35_i3_fu_shell_sort_28861_29185), .in2(out_const_9));
  rshift_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(2), .BITSIZE_out1(16), .PRECISION(32)) fu_shell_sort_28861_29424 (.out1(out_rshift_expr_FU_32_0_32_57_i5_fu_shell_sort_28861_29424), .in1(out_bit_and_expr_FU_32_0_32_30_i1_fu_shell_sort_28861_29102), .in2(out_const_0));
  rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(31), .PRECISION(32)) fu_shell_sort_28861_29427 (.out1(out_rshift_expr_FU_32_0_32_57_i6_fu_shell_sort_28861_29427), .in1(out_lshift_expr_FU_32_0_32_42_i4_fu_shell_sort_28861_29194), .in2(out_const_0));
  plus_expr_FU #(.BITSIZE_in1(16), .BITSIZE_in2(31), .BITSIZE_out1(31)) fu_shell_sort_28861_29429 (.out1(out_plus_expr_FU_32_32_32_52_i9_fu_shell_sort_28861_29429), .in1(out_reg_5_reg_5), .in2(out_reg_6_reg_6));
  lshift_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(2), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29432 (.out1(out_lshift_expr_FU_32_0_32_42_i8_fu_shell_sort_28861_29432), .in1(out_plus_expr_FU_32_32_32_52_i9_fu_shell_sort_28861_29429), .in2(out_const_0));
  bit_and_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_shell_sort_28861_29435 (.out1(out_bit_and_expr_FU_8_0_8_31_i3_fu_shell_sort_28861_29435), .in1(out_bit_and_expr_FU_32_0_32_30_i1_fu_shell_sort_28861_29102), .in2(out_const_0));
  rshift_expr_FU #(.BITSIZE_in1(20), .BITSIZE_in2(4), .BITSIZE_out1(16), .PRECISION(32)) fu_shell_sort_28861_29454 (.out1(out_rshift_expr_FU_32_0_32_60_i0_fu_shell_sort_28861_29454), .in1(out_bit_ior_concat_expr_FU_36_i0_fu_shell_sort_28861_29145), .in2(out_const_2));
  rshift_expr_FU #(.BITSIZE_in1(24), .BITSIZE_in2(4), .BITSIZE_out1(20), .PRECISION(32)) fu_shell_sort_28861_29457 (.out1(out_rshift_expr_FU_32_0_32_60_i1_fu_shell_sort_28861_29457), .in1(out_lshift_expr_FU_32_0_32_45_i0_fu_shell_sort_28861_29204), .in2(out_const_2));
  plus_expr_FU #(.BITSIZE_in1(16), .BITSIZE_in2(20), .BITSIZE_out1(21)) fu_shell_sort_28861_29459 (.out1(out_plus_expr_FU_32_32_32_52_i10_fu_shell_sort_28861_29459), .in1(out_rshift_expr_FU_32_0_32_60_i0_fu_shell_sort_28861_29454), .in2(out_rshift_expr_FU_32_0_32_60_i1_fu_shell_sort_28861_29457));
  lshift_expr_FU #(.BITSIZE_in1(21), .BITSIZE_in2(4), .BITSIZE_out1(25), .PRECISION(32)) fu_shell_sort_28861_29462 (.out1(out_lshift_expr_FU_32_0_32_45_i2_fu_shell_sort_28861_29462), .in1(out_plus_expr_FU_32_32_32_52_i10_fu_shell_sort_28861_29459), .in2(out_const_2));
  bit_and_expr_FU #(.BITSIZE_in1(20), .BITSIZE_in2(5), .BITSIZE_out1(5)) fu_shell_sort_28861_29466 (.out1(out_bit_and_expr_FU_8_0_8_34_i0_fu_shell_sort_28861_29466), .in1(out_bit_ior_concat_expr_FU_36_i0_fu_shell_sort_28861_29145), .in2(out_const_8));
  rshift_expr_FU #(.BITSIZE_in1(25), .BITSIZE_in2(5), .BITSIZE_out1(17), .PRECISION(32)) fu_shell_sort_28861_29471 (.out1(out_rshift_expr_FU_32_0_32_61_i0_fu_shell_sort_28861_29471), .in1(out_bit_ior_concat_expr_FU_38_i0_fu_shell_sort_28861_29207), .in2(out_const_3));
  rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(24), .PRECISION(32)) fu_shell_sort_28861_29474 (.out1(out_rshift_expr_FU_32_0_32_61_i1_fu_shell_sort_28861_29474), .in1(out_lshift_expr_FU_32_0_32_46_i0_fu_shell_sort_28861_29211), .in2(out_const_3));
  plus_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(24), .BITSIZE_out1(24)) fu_shell_sort_28861_29478 (.out1(out_plus_expr_FU_32_32_32_52_i11_fu_shell_sort_28861_29478), .in1(out_rshift_expr_FU_32_0_32_61_i0_fu_shell_sort_28861_29471), .in2(out_rshift_expr_FU_32_0_32_61_i1_fu_shell_sort_28861_29474));
  lshift_expr_FU #(.BITSIZE_in1(24), .BITSIZE_in2(5), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29481 (.out1(out_lshift_expr_FU_32_0_32_46_i2_fu_shell_sort_28861_29481), .in1(out_plus_expr_FU_32_32_32_52_i11_fu_shell_sort_28861_29478), .in2(out_const_3));
  bit_and_expr_FU #(.BITSIZE_in1(25), .BITSIZE_in2(9), .BITSIZE_out1(9)) fu_shell_sort_28861_29485 (.out1(out_bit_and_expr_FU_16_0_16_29_i0_fu_shell_sort_28861_29485), .in1(out_bit_ior_concat_expr_FU_38_i0_fu_shell_sort_28861_29207), .in2(out_const_10));
  rshift_expr_FU #(.BITSIZE_in1(19), .BITSIZE_in2(4), .BITSIZE_out1(15), .PRECISION(32)) fu_shell_sort_28861_29505 (.out1(out_rshift_expr_FU_32_0_32_60_i2_fu_shell_sort_28861_29505), .in1(out_bit_ior_concat_expr_FU_36_i1_fu_shell_sort_28861_29173), .in2(out_const_2));
  rshift_expr_FU #(.BITSIZE_in1(23), .BITSIZE_in2(4), .BITSIZE_out1(19), .PRECISION(32)) fu_shell_sort_28861_29508 (.out1(out_rshift_expr_FU_32_0_32_60_i3_fu_shell_sort_28861_29508), .in1(out_lshift_expr_FU_32_0_32_45_i1_fu_shell_sort_28861_29223), .in2(out_const_2));
  plus_expr_FU #(.BITSIZE_in1(15), .BITSIZE_in2(19), .BITSIZE_out1(20)) fu_shell_sort_28861_29510 (.out1(out_plus_expr_FU_32_32_32_52_i12_fu_shell_sort_28861_29510), .in1(out_rshift_expr_FU_32_0_32_60_i2_fu_shell_sort_28861_29505), .in2(out_rshift_expr_FU_32_0_32_60_i3_fu_shell_sort_28861_29508));
  lshift_expr_FU #(.BITSIZE_in1(20), .BITSIZE_in2(4), .BITSIZE_out1(24), .PRECISION(32)) fu_shell_sort_28861_29513 (.out1(out_lshift_expr_FU_32_0_32_45_i3_fu_shell_sort_28861_29513), .in1(out_plus_expr_FU_32_32_32_52_i12_fu_shell_sort_28861_29510), .in2(out_const_2));
  bit_and_expr_FU #(.BITSIZE_in1(19), .BITSIZE_in2(5), .BITSIZE_out1(5)) fu_shell_sort_28861_29516 (.out1(out_bit_and_expr_FU_8_0_8_34_i1_fu_shell_sort_28861_29516), .in1(out_bit_ior_concat_expr_FU_36_i1_fu_shell_sort_28861_29173), .in2(out_const_8));
  rshift_expr_FU #(.BITSIZE_in1(24), .BITSIZE_in2(5), .BITSIZE_out1(16), .PRECISION(32)) fu_shell_sort_28861_29520 (.out1(out_rshift_expr_FU_32_0_32_61_i2_fu_shell_sort_28861_29520), .in1(out_bit_ior_concat_expr_FU_38_i1_fu_shell_sort_28861_29226), .in2(out_const_3));
  rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(24), .PRECISION(32)) fu_shell_sort_28861_29523 (.out1(out_rshift_expr_FU_32_0_32_61_i3_fu_shell_sort_28861_29523), .in1(out_lshift_expr_FU_32_0_32_46_i1_fu_shell_sort_28861_29229), .in2(out_const_3));
  plus_expr_FU #(.BITSIZE_in1(16), .BITSIZE_in2(24), .BITSIZE_out1(24)) fu_shell_sort_28861_29525 (.out1(out_plus_expr_FU_32_32_32_52_i13_fu_shell_sort_28861_29525), .in1(out_rshift_expr_FU_32_0_32_61_i2_fu_shell_sort_28861_29520), .in2(out_rshift_expr_FU_32_0_32_61_i3_fu_shell_sort_28861_29523));
  lshift_expr_FU #(.BITSIZE_in1(24), .BITSIZE_in2(5), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29528 (.out1(out_lshift_expr_FU_32_0_32_46_i3_fu_shell_sort_28861_29528), .in1(out_plus_expr_FU_32_32_32_52_i13_fu_shell_sort_28861_29525), .in2(out_const_3));
  bit_and_expr_FU #(.BITSIZE_in1(24), .BITSIZE_in2(9), .BITSIZE_out1(9)) fu_shell_sort_28861_29531 (.out1(out_bit_and_expr_FU_16_0_16_29_i1_fu_shell_sort_28861_29531), .in1(out_bit_ior_concat_expr_FU_38_i1_fu_shell_sort_28861_29226), .in2(out_const_10));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(7), .PORTSIZE_in1(2), .BITSIZE_out1(14)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerMout_data_ram_size2_0 (.out1(sig_in_bus_mergerMout_data_ram_size2_0), .in1(sig_in_vector_bus_mergerMout_data_ram_size2_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_oe_ram3_0 (.out1(sig_in_bus_mergerMout_oe_ram3_0), .in1(sig_in_vector_bus_mergerMout_oe_ram3_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_we_ram4_0 (.out1(sig_in_bus_mergerMout_we_ram4_0), .in1(sig_in_vector_bus_mergerMout_we_ram4_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_MUX_199_reg_0_0_0_0), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_MUX_200_reg_1_0_0_0), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_7_i0_fu_shell_sort_28861_29000), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_ne_expr_FU_32_0_32_49_i0_fu_shell_sort_28861_29240), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_67_i0_fu_shell_sort_28861_28993), .wenable(wrenable_reg_12));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_8_8_66_i0_fu_shell_sort_28861_29246), .wenable(wrenable_reg_13));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_BMEMORY_CTRLN_28_i0_BMEMORY_CTRLN_28_i0), .wenable(wrenable_reg_14));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_MUX_206_reg_15_0_0_1), .wenable(wrenable_reg_15));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_68_i0_fu_shell_sort_28861_28971), .wenable(wrenable_reg_16));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_gt_expr_FU_32_32_32_40_i0_fu_shell_sort_28861_29242), .wenable(wrenable_reg_17));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_BMEMORY_CTRLN_28_i0_BMEMORY_CTRLN_28_i0), .wenable(wrenable_reg_18));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_19 (.out1(out_reg_19_reg_19), .clock(clock), .reset(reset), .in1(out_MUX_210_reg_19_0_0_0), .wenable(wrenable_reg_19));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_rshift_expr_FU_32_0_32_56_i0_fu_shell_sort_28861_29137), .wenable(wrenable_reg_2));
  register_STD #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_bit_ior_concat_expr_FU_39_i0_fu_shell_sort_28861_29214), .wenable(wrenable_reg_3));
  register_STD #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_bit_ior_concat_expr_FU_39_i1_fu_shell_sort_28861_29232), .wenable(wrenable_reg_4));
  register_STD #(.BITSIZE_in1(16), .BITSIZE_out1(16)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_rshift_expr_FU_32_0_32_57_i5_fu_shell_sort_28861_29424), .wenable(wrenable_reg_5));
  register_STD #(.BITSIZE_in1(31), .BITSIZE_out1(31)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_rshift_expr_FU_32_0_32_57_i6_fu_shell_sort_28861_29427), .wenable(wrenable_reg_6));
  register_STD #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_bit_and_expr_FU_8_0_8_31_i3_fu_shell_sort_28861_29435), .wenable(wrenable_reg_7));
  register_STD #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_ternary_plus_expr_FU_32_32_32_32_63_i0_fu_shell_sort_28861_29133), .wenable(wrenable_reg_8));
  register_SE #(.BITSIZE_in1(31), .BITSIZE_out1(31)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_ternary_mp_expr_FU_32_32_0_32_62_i0_fu_shell_sort_28861_28947), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(14), .BITSIZE_out1(7), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  // io-signal post fix
  assign OUT_CONDITION_shell_sort_28861_28930 = out_read_cond_FU_4_i0_fu_shell_sort_28861_28930;
  assign OUT_CONDITION_shell_sort_28861_28949 = out_read_cond_FU_8_i0_fu_shell_sort_28861_28949;
  assign OUT_CONDITION_shell_sort_28861_29046 = out_read_cond_FU_10_i0_fu_shell_sort_28861_29046;
  assign OUT_CONDITION_shell_sort_28861_29049 = out_read_cond_FU_16_i0_fu_shell_sort_28861_29049;
  assign OUT_CONDITION_shell_sort_28861_29053 = out_read_cond_FU_24_i0_fu_shell_sort_28861_29053;
  assign OUT_CONDITION_shell_sort_28861_29055 = out_read_cond_FU_27_i0_fu_shell_sort_28861_29055;

endmodule

// FSM based controller description for shell_sort
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_shell_sort(done_port, fuselector_BMEMORY_CTRLN_28_i0_LOAD, fuselector_BMEMORY_CTRLN_28_i0_STORE, selector_MUX_0_BMEMORY_CTRLN_28_i0_0_0_0, selector_MUX_199_reg_0_0_0_0, selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0, selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1, selector_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0, selector_MUX_200_reg_1_0_0_0, selector_MUX_206_reg_15_0_0_0, selector_MUX_206_reg_15_0_0_1, selector_MUX_210_reg_19_0_0_0, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_shell_sort_28861_28930, OUT_CONDITION_shell_sort_28861_28949, OUT_CONDITION_shell_sort_28861_29046, OUT_CONDITION_shell_sort_28861_29049, OUT_CONDITION_shell_sort_28861_29053, OUT_CONDITION_shell_sort_28861_29055, clock, reset, start_port);
  // IN
  input OUT_CONDITION_shell_sort_28861_28930;
  input OUT_CONDITION_shell_sort_28861_28949;
  input OUT_CONDITION_shell_sort_28861_29046;
  input OUT_CONDITION_shell_sort_28861_29049;
  input OUT_CONDITION_shell_sort_28861_29053;
  input OUT_CONDITION_shell_sort_28861_29055;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output fuselector_BMEMORY_CTRLN_28_i0_LOAD;
  output fuselector_BMEMORY_CTRLN_28_i0_STORE;
  output selector_MUX_0_BMEMORY_CTRLN_28_i0_0_0_0;
  output selector_MUX_199_reg_0_0_0_0;
  output selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0;
  output selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1;
  output selector_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0;
  output selector_MUX_200_reg_1_0_0_0;
  output selector_MUX_206_reg_15_0_0_0;
  output selector_MUX_206_reg_15_0_0_1;
  output selector_MUX_210_reg_19_0_0_0;
  output wrenable_reg_0;
  output wrenable_reg_1;
  output wrenable_reg_10;
  output wrenable_reg_11;
  output wrenable_reg_12;
  output wrenable_reg_13;
  output wrenable_reg_14;
  output wrenable_reg_15;
  output wrenable_reg_16;
  output wrenable_reg_17;
  output wrenable_reg_18;
  output wrenable_reg_19;
  output wrenable_reg_2;
  output wrenable_reg_3;
  output wrenable_reg_4;
  output wrenable_reg_5;
  output wrenable_reg_6;
  output wrenable_reg_7;
  output wrenable_reg_8;
  output wrenable_reg_9;
  parameter [12:0] S_0 = 13'b0000000000001,
    S_1 = 13'b0000000000010,
    S_2 = 13'b0000000000100,
    S_3 = 13'b0000000001000,
    S_4 = 13'b0000000010000,
    S_6 = 13'b0000001000000,
    S_7 = 13'b0000010000000,
    S_9 = 13'b0001000000000,
    S_10 = 13'b0010000000000,
    S_8 = 13'b0000100000000,
    S_11 = 13'b0100000000000,
    S_5 = 13'b0000000100000,
    S_12 = 13'b1000000000000;
  reg [12:0] _present_state, _next_state;
  reg done_port;
  reg fuselector_BMEMORY_CTRLN_28_i0_LOAD;
  reg fuselector_BMEMORY_CTRLN_28_i0_STORE;
  reg selector_MUX_0_BMEMORY_CTRLN_28_i0_0_0_0;
  reg selector_MUX_199_reg_0_0_0_0;
  reg selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0;
  reg selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1;
  reg selector_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0;
  reg selector_MUX_200_reg_1_0_0_0;
  reg selector_MUX_206_reg_15_0_0_0;
  reg selector_MUX_206_reg_15_0_0_1;
  reg selector_MUX_210_reg_19_0_0_0;
  reg wrenable_reg_0;
  reg wrenable_reg_1;
  reg wrenable_reg_10;
  reg wrenable_reg_11;
  reg wrenable_reg_12;
  reg wrenable_reg_13;
  reg wrenable_reg_14;
  reg wrenable_reg_15;
  reg wrenable_reg_16;
  reg wrenable_reg_17;
  reg wrenable_reg_18;
  reg wrenable_reg_19;
  reg wrenable_reg_2;
  reg wrenable_reg_3;
  reg wrenable_reg_4;
  reg wrenable_reg_5;
  reg wrenable_reg_6;
  reg wrenable_reg_7;
  reg wrenable_reg_8;
  reg wrenable_reg_9;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    fuselector_BMEMORY_CTRLN_28_i0_LOAD = 1'b0;
    fuselector_BMEMORY_CTRLN_28_i0_STORE = 1'b0;
    selector_MUX_0_BMEMORY_CTRLN_28_i0_0_0_0 = 1'b0;
    selector_MUX_199_reg_0_0_0_0 = 1'b0;
    selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0 = 1'b0;
    selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1 = 1'b0;
    selector_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0 = 1'b0;
    selector_MUX_200_reg_1_0_0_0 = 1'b0;
    selector_MUX_206_reg_15_0_0_0 = 1'b0;
    selector_MUX_206_reg_15_0_0_1 = 1'b0;
    selector_MUX_210_reg_19_0_0_0 = 1'b0;
    wrenable_reg_0 = 1'b0;
    wrenable_reg_1 = 1'b0;
    wrenable_reg_10 = 1'b0;
    wrenable_reg_11 = 1'b0;
    wrenable_reg_12 = 1'b0;
    wrenable_reg_13 = 1'b0;
    wrenable_reg_14 = 1'b0;
    wrenable_reg_15 = 1'b0;
    wrenable_reg_16 = 1'b0;
    wrenable_reg_17 = 1'b0;
    wrenable_reg_18 = 1'b0;
    wrenable_reg_19 = 1'b0;
    wrenable_reg_2 = 1'b0;
    wrenable_reg_3 = 1'b0;
    wrenable_reg_4 = 1'b0;
    wrenable_reg_5 = 1'b0;
    wrenable_reg_6 = 1'b0;
    wrenable_reg_7 = 1'b0;
    wrenable_reg_8 = 1'b0;
    wrenable_reg_9 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          selector_MUX_199_reg_0_0_0_0 = 1'b1;
          wrenable_reg_0 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          selector_MUX_0_BMEMORY_CTRLN_28_i0_0_0_0 = 1'bX;
          selector_MUX_199_reg_0_0_0_0 = 1'bX;
          selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0 = 1'bX;
          selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1 = 1'bX;
          selector_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0 = 1'bX;
          selector_MUX_200_reg_1_0_0_0 = 1'bX;
          selector_MUX_206_reg_15_0_0_0 = 1'bX;
          selector_MUX_206_reg_15_0_0_1 = 1'bX;
          selector_MUX_210_reg_19_0_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_10 = 1'bX;
          wrenable_reg_11 = 1'bX;
          wrenable_reg_12 = 1'bX;
          wrenable_reg_13 = 1'bX;
          wrenable_reg_14 = 1'bX;
          wrenable_reg_15 = 1'bX;
          wrenable_reg_16 = 1'bX;
          wrenable_reg_17 = 1'bX;
          wrenable_reg_18 = 1'bX;
          wrenable_reg_19 = 1'bX;
          wrenable_reg_2 = 1'bX;
          wrenable_reg_3 = 1'bX;
          wrenable_reg_4 = 1'bX;
          wrenable_reg_5 = 1'bX;
          wrenable_reg_6 = 1'bX;
          wrenable_reg_7 = 1'bX;
          wrenable_reg_8 = 1'bX;
          wrenable_reg_9 = 1'bX;
          _next_state = S_0;
        end
      S_1 :
        begin
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          if (OUT_CONDITION_shell_sort_28861_28930 == 1'b1)
            begin
              _next_state = S_1;
              wrenable_reg_1 = 1'b0;
            end
          else
            begin
              _next_state = S_2;
              wrenable_reg_0 = 1'b0;
            end
        end
      S_2 :
        begin
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_6 = 1'b1;
          wrenable_reg_7 = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          wrenable_reg_8 = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          selector_MUX_206_reg_15_0_0_1 = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_15 = 1'b1;
          wrenable_reg_9 = 1'b1;
          if (OUT_CONDITION_shell_sort_28861_28949 == 1'b1)
            begin
              _next_state = S_6;
            end
          else
            begin
              _next_state = S_5;
              selector_MUX_206_reg_15_0_0_1 = 1'b0;
              wrenable_reg_10 = 1'b0;
              wrenable_reg_15 = 1'b0;
            end
        end
      S_6 :
        begin
          fuselector_BMEMORY_CTRLN_28_i0_LOAD = 1'b1;
          wrenable_reg_12 = 1'b1;
          wrenable_reg_13 = 1'b1;
          _next_state = S_7;
        end
      S_7 :
        begin
          wrenable_reg_14 = 1'b1;
          _next_state = S_9;
        end
      S_9 :
        begin
          fuselector_BMEMORY_CTRLN_28_i0_LOAD = 1'b1;
          selector_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0 = 1'b1;
          wrenable_reg_16 = 1'b1;
          wrenable_reg_17 = 1'b1;
          wrenable_reg_19 = 1'b1;
          _next_state = S_10;
        end
      S_10 :
        begin
          selector_MUX_210_reg_19_0_0_0 = 1'b1;
          wrenable_reg_18 = 1'b1;
          wrenable_reg_19 = 1'b1;
          if (OUT_CONDITION_shell_sort_28861_29053 == 1'b1)
            begin
              _next_state = S_8;
              selector_MUX_210_reg_19_0_0_0 = 1'b0;
              wrenable_reg_19 = 1'b0;
            end
          else
            begin
              _next_state = S_11;
              wrenable_reg_18 = 1'b0;
            end
        end
      S_8 :
        begin
          fuselector_BMEMORY_CTRLN_28_i0_STORE = 1'b1;
          selector_MUX_0_BMEMORY_CTRLN_28_i0_0_0_0 = 1'b1;
          selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0 = 1'b1;
          selector_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0 = 1'b1;
          selector_MUX_206_reg_15_0_0_0 = 1'b1;
          wrenable_reg_15 = 1'b1;
          if (OUT_CONDITION_shell_sort_28861_29049 == 1'b1)
            begin
              _next_state = S_11;
              selector_MUX_206_reg_15_0_0_0 = 1'b0;
              wrenable_reg_15 = 1'b0;
            end
          else
            begin
              _next_state = S_9;
            end
        end
      S_11 :
        begin
          fuselector_BMEMORY_CTRLN_28_i0_STORE = 1'b1;
          selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1 = 1'b1;
          wrenable_reg_15 = 1'b1;
          if (OUT_CONDITION_shell_sort_28861_29055 == 1'b1)
            begin
              _next_state = S_6;
            end
          else
            begin
              _next_state = S_5;
              wrenable_reg_15 = 1'b0;
            end
        end
      S_5 :
        begin
          selector_MUX_200_reg_1_0_0_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          if (OUT_CONDITION_shell_sort_28861_29046 == 1'b1)
            begin
              _next_state = S_2;
            end
          else
            begin
              _next_state = S_12;
              done_port = 1'b1;
              selector_MUX_200_reg_1_0_0_0 = 1'b0;
              wrenable_reg_1 = 1'b0;
            end
        end
      S_12 :
        begin
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_0_BMEMORY_CTRLN_28_i0_0_0_0 = 1'bX;
          selector_MUX_199_reg_0_0_0_0 = 1'bX;
          selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0 = 1'bX;
          selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1 = 1'bX;
          selector_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0 = 1'bX;
          selector_MUX_200_reg_1_0_0_0 = 1'bX;
          selector_MUX_206_reg_15_0_0_0 = 1'bX;
          selector_MUX_206_reg_15_0_0_1 = 1'bX;
          selector_MUX_210_reg_19_0_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_10 = 1'bX;
          wrenable_reg_11 = 1'bX;
          wrenable_reg_12 = 1'bX;
          wrenable_reg_13 = 1'bX;
          wrenable_reg_14 = 1'bX;
          wrenable_reg_15 = 1'bX;
          wrenable_reg_16 = 1'bX;
          wrenable_reg_17 = 1'bX;
          wrenable_reg_18 = 1'bX;
          wrenable_reg_19 = 1'bX;
          wrenable_reg_2 = 1'bX;
          wrenable_reg_3 = 1'bX;
          wrenable_reg_4 = 1'bX;
          wrenable_reg_5 = 1'bX;
          wrenable_reg_6 = 1'bX;
          wrenable_reg_7 = 1'bX;
          wrenable_reg_8 = 1'bX;
          wrenable_reg_9 = 1'bX;
        end
    endcase
  end
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Marco Lattuada <marco.lattuada@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module flipflop_AR(clock, reset, in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input clock;
  input reset;
  input in1;
  // OUT
  output out1;
  
  reg reg_out1 =0;
  assign out1 = reg_out1;
  always @(posedge clock )
    if (reset == 1'b0)
      reg_out1 <= {BITSIZE_out1{1'b0}};
    else
      reg_out1 <= in1;
endmodule

// Top component for shell_sort
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module shell_sort(clock, reset, start_port, done_port, size, arr, M_Rdata_ram, M_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size);
  // IN
  input clock;
  input reset;
  input start_port;
  input [7:0] size;
  input [31:0] arr;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [13:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  // OUT
  output done_port;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [13:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  // Component and signal declarations
  wire OUT_CONDITION_shell_sort_28861_28930;
  wire OUT_CONDITION_shell_sort_28861_28949;
  wire OUT_CONDITION_shell_sort_28861_29046;
  wire OUT_CONDITION_shell_sort_28861_29049;
  wire OUT_CONDITION_shell_sort_28861_29053;
  wire OUT_CONDITION_shell_sort_28861_29055;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_BMEMORY_CTRLN_28_i0_LOAD;
  wire fuselector_BMEMORY_CTRLN_28_i0_STORE;
  wire selector_MUX_0_BMEMORY_CTRLN_28_i0_0_0_0;
  wire selector_MUX_199_reg_0_0_0_0;
  wire selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0;
  wire selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1;
  wire selector_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0;
  wire selector_MUX_200_reg_1_0_0_0;
  wire selector_MUX_206_reg_15_0_0_0;
  wire selector_MUX_206_reg_15_0_0_1;
  wire selector_MUX_210_reg_19_0_0_0;
  wire wrenable_reg_0;
  wire wrenable_reg_1;
  wire wrenable_reg_10;
  wire wrenable_reg_11;
  wire wrenable_reg_12;
  wire wrenable_reg_13;
  wire wrenable_reg_14;
  wire wrenable_reg_15;
  wire wrenable_reg_16;
  wire wrenable_reg_17;
  wire wrenable_reg_18;
  wire wrenable_reg_19;
  wire wrenable_reg_2;
  wire wrenable_reg_3;
  wire wrenable_reg_4;
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  controller_shell_sort Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_BMEMORY_CTRLN_28_i0_LOAD(fuselector_BMEMORY_CTRLN_28_i0_LOAD), .fuselector_BMEMORY_CTRLN_28_i0_STORE(fuselector_BMEMORY_CTRLN_28_i0_STORE), .selector_MUX_0_BMEMORY_CTRLN_28_i0_0_0_0(selector_MUX_0_BMEMORY_CTRLN_28_i0_0_0_0), .selector_MUX_199_reg_0_0_0_0(selector_MUX_199_reg_0_0_0_0), .selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0(selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0), .selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1(selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1), .selector_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0(selector_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0), .selector_MUX_200_reg_1_0_0_0(selector_MUX_200_reg_1_0_0_0), .selector_MUX_206_reg_15_0_0_0(selector_MUX_206_reg_15_0_0_0), .selector_MUX_206_reg_15_0_0_1(selector_MUX_206_reg_15_0_0_1), .selector_MUX_210_reg_19_0_0_0(selector_MUX_210_reg_19_0_0_0), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_shell_sort_28861_28930(OUT_CONDITION_shell_sort_28861_28930), .OUT_CONDITION_shell_sort_28861_28949(OUT_CONDITION_shell_sort_28861_28949), .OUT_CONDITION_shell_sort_28861_29046(OUT_CONDITION_shell_sort_28861_29046), .OUT_CONDITION_shell_sort_28861_29049(OUT_CONDITION_shell_sort_28861_29049), .OUT_CONDITION_shell_sort_28861_29053(OUT_CONDITION_shell_sort_28861_29053), .OUT_CONDITION_shell_sort_28861_29055(OUT_CONDITION_shell_sort_28861_29055), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_shell_sort Datapath_i (.Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_CONDITION_shell_sort_28861_28930(OUT_CONDITION_shell_sort_28861_28930), .OUT_CONDITION_shell_sort_28861_28949(OUT_CONDITION_shell_sort_28861_28949), .OUT_CONDITION_shell_sort_28861_29046(OUT_CONDITION_shell_sort_28861_29046), .OUT_CONDITION_shell_sort_28861_29049(OUT_CONDITION_shell_sort_28861_29049), .OUT_CONDITION_shell_sort_28861_29053(OUT_CONDITION_shell_sort_28861_29053), .OUT_CONDITION_shell_sort_28861_29055(OUT_CONDITION_shell_sort_28861_29055), .clock(clock), .reset(reset), .in_port_size(size), .in_port_arr(arr), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .fuselector_BMEMORY_CTRLN_28_i0_LOAD(fuselector_BMEMORY_CTRLN_28_i0_LOAD), .fuselector_BMEMORY_CTRLN_28_i0_STORE(fuselector_BMEMORY_CTRLN_28_i0_STORE), .selector_MUX_0_BMEMORY_CTRLN_28_i0_0_0_0(selector_MUX_0_BMEMORY_CTRLN_28_i0_0_0_0), .selector_MUX_199_reg_0_0_0_0(selector_MUX_199_reg_0_0_0_0), .selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0(selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0), .selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1(selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1), .selector_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0(selector_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0), .selector_MUX_200_reg_1_0_0_0(selector_MUX_200_reg_1_0_0_0), .selector_MUX_206_reg_15_0_0_0(selector_MUX_206_reg_15_0_0_0), .selector_MUX_206_reg_15_0_0_1(selector_MUX_206_reg_15_0_0_1), .selector_MUX_210_reg_19_0_0_0(selector_MUX_210_reg_19_0_0_0), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Datapath RTL description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_main(clock, reset, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, selector_IN_UNBOUNDED_main_28864_29064, wrenable_reg_0, OUT_UNBOUNDED_main_28864_29064);
  parameter MEM_var_28859_28864=32;
  // IN
  input clock;
  input reset;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [13:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [13:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  input selector_IN_UNBOUNDED_main_28864_29064;
  input wrenable_reg_0;
  // OUT
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [13:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  output OUT_UNBOUNDED_main_28864_29064;
  // Component and signal declarations
  wire [7:0] null_out_signal_array_28859_0_out1_0;
  wire [7:0] null_out_signal_array_28859_0_out1_1;
  wire [7:0] null_out_signal_array_28859_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_28859_0_proxy_out1_1;
  wire [31:0] out_UUdata_converter_FU_4_i0_fu_main_28864_29252;
  wire [31:0] out_addr_expr_FU_3_i0_fu_main_28864_29076;
  wire [3:0] out_const_0;
  wire [6:0] out_const_1;
  wire [7:0] out_conv_out_const_0_4_8;
  wire [31:0] out_conv_out_const_1_7_32;
  wire [31:0] out_reg_0_reg_0;
  wire s_done_fu_main_28864_29064;
  wire [15:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [13:0] sig_in_bus_mergerMout_addr_ram1_0;
  wire [7:0] sig_in_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_0;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_0;
  wire [15:0] sig_in_vector_bus_mergerMout_Wdata_ram0_0;
  wire [13:0] sig_in_vector_bus_mergerMout_addr_ram1_0;
  wire [7:0] sig_in_vector_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_vector_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_vector_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_0;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_0;
  wire [15:0] sig_out_bus_mergerMout_Wdata_ram0_;
  wire [13:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [7:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire [1:0] sig_out_bus_mergerMout_oe_ram3_;
  wire [1:0] sig_out_bus_mergerMout_we_ram4_;
  wire [1:0] sig_out_bus_mergerSout_DataRdy5_;
  wire [15:0] sig_out_bus_mergerSout_Rdata_ram6_;
  
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(7), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(7), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28859.mem"), .n_elements(12), .data_size(8), .address_space_begin(MEM_var_28859_28864), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(7), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28859_0 (.out1({null_out_signal_array_28859_0_out1_1, null_out_signal_array_28859_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_0), .proxy_out1({null_out_signal_array_28859_0_proxy_out1_1, null_out_signal_array_28859_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({7'b0000000, 7'b0000000}), .in3({4'b0000, 4'b0000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({7'b0000000, 7'b0000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(14), .PORTSIZE_in1(1), .BITSIZE_out1(14)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerSout_DataRdy5_ (.out1(sig_out_bus_mergerSout_DataRdy5_), .in1({sig_in_bus_mergerSout_DataRdy5_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerSout_Rdata_ram6_ (.out1(sig_out_bus_mergerSout_Rdata_ram6_), .in1({sig_in_bus_mergerSout_Rdata_ram6_0}));
  constant_value #(.BITSIZE_out1(4), .value(4'b1100)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(7), .value(MEM_var_28859_28864)) const_1 (.out1(out_const_1));
  UUdata_converter_FU #(.BITSIZE_in1(4), .BITSIZE_out1(8)) conv_out_const_0_4_8 (.out1(out_conv_out_const_0_4_8), .in1(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(32)) conv_out_const_1_7_32 (.out1(out_conv_out_const_1_7_32), .in1(out_const_1));
  shell_sort fu_main_28864_29064 (.done_port(s_done_fu_main_28864_29064), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28864_29064), .size(out_conv_out_const_0_4_8), .arr(out_reg_0_reg_0), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_main_28864_29076 (.out1(out_addr_expr_FU_3_i0_fu_main_28864_29076), .in1(out_conv_out_const_1_7_32));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_main_28864_29252 (.out1(out_UUdata_converter_FU_4_i0_fu_main_28864_29252), .in1(out_addr_expr_FU_3_i0_fu_main_28864_29076));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(7), .PORTSIZE_in1(2), .BITSIZE_out1(14)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerMout_data_ram_size2_0 (.out1(sig_in_bus_mergerMout_data_ram_size2_0), .in1(sig_in_vector_bus_mergerMout_data_ram_size2_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_oe_ram3_0 (.out1(sig_in_bus_mergerMout_oe_ram3_0), .in1(sig_in_vector_bus_mergerMout_oe_ram3_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_we_ram4_0 (.out1(sig_in_bus_mergerMout_we_ram4_0), .in1(sig_in_vector_bus_mergerMout_we_ram4_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_0 (.out1(sig_in_bus_mergerSout_DataRdy5_0), .in1(sig_in_vector_bus_mergerSout_DataRdy5_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_0 (.out1(sig_in_bus_mergerSout_Rdata_ram6_0), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_4_i0_fu_main_28864_29252), .wenable(wrenable_reg_0));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(14), .BITSIZE_out1(7), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy5_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy5_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram6_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram6_));
  // io-signal post fix
  assign OUT_UNBOUNDED_main_28864_29064 = s_done_fu_main_28864_29064;

endmodule

// FSM based controller description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_main(done_port, selector_IN_UNBOUNDED_main_28864_29064, wrenable_reg_0, OUT_UNBOUNDED_main_28864_29064, clock, reset, start_port);
  // IN
  input OUT_UNBOUNDED_main_28864_29064;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_IN_UNBOUNDED_main_28864_29064;
  output wrenable_reg_0;
  parameter [3:0] S_0 = 4'b0001,
    S_1 = 4'b0010,
    S_2 = 4'b0100,
    S_3 = 4'b1000;
  reg [3:0] _present_state, _next_state;
  reg done_port;
  reg selector_IN_UNBOUNDED_main_28864_29064;
  reg wrenable_reg_0;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    selector_IN_UNBOUNDED_main_28864_29064 = 1'b0;
    wrenable_reg_0 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          wrenable_reg_0 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          wrenable_reg_0 = 1'bX;
          _next_state = S_0;
        end
      S_1 :
        begin
          selector_IN_UNBOUNDED_main_28864_29064 = 1'b1;
          if (OUT_UNBOUNDED_main_28864_29064 == 1'b0)
            begin
              _next_state = S_2;
            end
          else
            begin
              _next_state = S_3;
              done_port = 1'b1;
            end
        end
      S_2 :
        begin
          if (OUT_UNBOUNDED_main_28864_29064 == 1'b0)
            begin
              _next_state = S_2;
            end
          else
            begin
              _next_state = S_3;
              done_port = 1'b1;
            end
        end
      S_3 :
        begin
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          wrenable_reg_0 = 1'bX;
        end
    endcase
  end
endmodule

// Top component for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module _main(clock, reset, start_port, done_port, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Sout_Rdata_ram, Sout_DataRdy, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size);
  parameter MEM_var_28859_28864=32;
  // IN
  input clock;
  input reset;
  input start_port;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [13:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [13:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  // OUT
  output done_port;
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [13:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  // Component and signal declarations
  wire OUT_UNBOUNDED_main_28864_29064;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire selector_IN_UNBOUNDED_main_28864_29064;
  wire wrenable_reg_0;
  
  controller_main Controller_i (.done_port(done_delayed_REG_signal_in), .selector_IN_UNBOUNDED_main_28864_29064(selector_IN_UNBOUNDED_main_28864_29064), .wrenable_reg_0(wrenable_reg_0), .OUT_UNBOUNDED_main_28864_29064(OUT_UNBOUNDED_main_28864_29064), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_main #(.MEM_var_28859_28864(MEM_var_28859_28864)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_UNBOUNDED_main_28864_29064(OUT_UNBOUNDED_main_28864_29064), .clock(clock), .reset(reset), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .selector_IN_UNBOUNDED_main_28864_29064(selector_IN_UNBOUNDED_main_28864_29064), .wrenable_reg_0(wrenable_reg_0));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Minimal interface for function: main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module main(clock, reset, start_port, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, done_port, Sout_Rdata_ram, Sout_DataRdy, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size);
  parameter MEM_var_28859_28864=32;
  // IN
  input clock;
  input reset;
  input start_port;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [13:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  // OUT
  output done_port;
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [13:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  // Component and signal declarations
  
  _main #(.MEM_var_28859_28864(MEM_var_28859_28864)) _main_i0 (.done_port(done_port), .Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .clock(clock), .reset(reset), .start_port(start_port), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram({8'b00000000, 8'b00000000}), .Sin_DataRdy({1'b0, 1'b0}), .Min_oe_ram({1'b0, 1'b0}), .Min_we_ram({1'b0, 1'b0}), .Min_addr_ram({7'b0000000, 7'b0000000}), .Min_Wdata_ram({8'b00000000, 8'b00000000}), .Min_data_ram_size({4'b0000, 4'b0000}));

endmodule


