// 
// Politecnico di Milano
// Code created using PandA - Version: PandA 0.9.6 - Revision 891ec3caed502474cab0813cc4a9fc678deabaa5 - Date 2022-06-07T21:03:09
// bambu executed with: bambu -I/home/dews/Scrivania/bambu-hls/RESULTS/Bambu/xc7vx690t-3ffg1930-Virtex-7/28x28/astar/includes/values_89 --simulate --simulator=VERILATOR --clock-period=5 --device-name=xc7vx690t-3ffg1930-VVD /home/dews/Scrivania/bambu-hls/cc4cs_bambu/benchmarkBasic/astar/thrd.c 
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
// Copyright (C) 2013-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module PROXY_CTRLN(in1, in2, in3, in4, sel_LOAD, sel_STORE, out1, proxy_in1, proxy_in2, proxy_in3, proxy_sel_LOAD, proxy_sel_STORE, proxy_out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_in2=1, PORTSIZE_in2=2, BITSIZE_in3=1, PORTSIZE_in3=2, BITSIZE_in4=1, PORTSIZE_in4=2, BITSIZE_sel_LOAD=1, PORTSIZE_sel_LOAD=2, BITSIZE_sel_STORE=1, PORTSIZE_sel_STORE=2, BITSIZE_out1=1, PORTSIZE_out1=2, BITSIZE_proxy_in1=1, PORTSIZE_proxy_in1=2, BITSIZE_proxy_in2=1, PORTSIZE_proxy_in2=2, BITSIZE_proxy_in3=1, PORTSIZE_proxy_in3=2, BITSIZE_proxy_sel_LOAD=1, PORTSIZE_proxy_sel_LOAD=2, BITSIZE_proxy_sel_STORE=1, PORTSIZE_proxy_sel_STORE=2, BITSIZE_proxy_out1=1, PORTSIZE_proxy_out1=2;
  // IN
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  input [(PORTSIZE_in2*BITSIZE_in2)+(-1):0] in2;
  input [(PORTSIZE_in3*BITSIZE_in3)+(-1):0] in3;
  input [PORTSIZE_in4-1:0] in4;
  input [PORTSIZE_sel_LOAD-1:0] sel_LOAD;
  input [PORTSIZE_sel_STORE-1:0] sel_STORE;
  input [(PORTSIZE_proxy_out1*BITSIZE_proxy_out1)+(-1):0] proxy_out1;
  // OUT
  output [(PORTSIZE_out1*BITSIZE_out1)+(-1):0] out1;
  output [(PORTSIZE_proxy_in1*BITSIZE_proxy_in1)+(-1):0] proxy_in1;
  output [(PORTSIZE_proxy_in2*BITSIZE_proxy_in2)+(-1):0] proxy_in2;
  output [(PORTSIZE_proxy_in3*BITSIZE_proxy_in3)+(-1):0] proxy_in3;
  output [PORTSIZE_proxy_sel_LOAD-1:0] proxy_sel_LOAD;
  output [PORTSIZE_proxy_sel_STORE-1:0] proxy_sel_STORE;
  
  wire [PORTSIZE_sel_STORE-1:0] int_sel_STORE;
  wire [PORTSIZE_sel_LOAD-1:0] int_sel_LOAD;
  assign int_sel_STORE = sel_STORE & in4;
  assign int_sel_LOAD = sel_LOAD & in4;
  generate
  genvar i0;
  for (i0=0; i0<PORTSIZE_out1; i0=i0+1)
    begin : L0
      assign out1[(i0+1)*BITSIZE_out1-1:i0*BITSIZE_out1] = proxy_out1[(i0+1)*BITSIZE_proxy_out1-1:i0*BITSIZE_proxy_out1];
    end
  endgenerate
  generate
  genvar i1;
  for (i1=0; i1<PORTSIZE_in1; i1=i1+1)
    begin : L1
      assign proxy_in1[(i1+1)*BITSIZE_proxy_in1-1:i1*BITSIZE_proxy_in1] = int_sel_STORE[i1] ? in1[(i1+1)*BITSIZE_in1-1:i1*BITSIZE_in1] : 0;
    end
  endgenerate
  generate
  genvar i2;
  for (i2=0; i2<PORTSIZE_in2; i2=i2+1)
    begin : L2
      assign proxy_in2[(i2+1)*BITSIZE_proxy_in2-1:i2*BITSIZE_proxy_in2] = int_sel_LOAD[i2]|int_sel_STORE[i2] ? in2[(i2+1)*BITSIZE_in2-1:i2*BITSIZE_in2] : 0;
    end
  endgenerate
  generate
  genvar i3;
  for (i3=0; i3<PORTSIZE_in3; i3=i3+1)
    begin : L3
      assign proxy_in3[(i3+1)*BITSIZE_proxy_in3-1:i3*BITSIZE_proxy_in3] = int_sel_LOAD[i3]|int_sel_STORE[i3] ? in3[(i3+1)*BITSIZE_in3-1:i3*BITSIZE_in3] : 0;
    end
  endgenerate
  assign proxy_sel_LOAD = int_sel_LOAD;
  assign proxy_sel_STORE = int_sel_STORE;

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
module IIdata_converter_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
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
module IIconvert_expr_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
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
module __builtin_abs(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  assign out1 = in1[BITSIZE_in1-1] ? -in1 : in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module cond_expr_FU(in1, in2, in3, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_in3=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  input signed [BITSIZE_in3-1:0] in3;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  assign out1 = in1 != 0 ? in2 : in3;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ge_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 >= in2;
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
module ui_bit_and_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 & in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_cond_expr_FU(in1, in2, in3, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_in3=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  input [BITSIZE_in3-1:0] in3;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 != 0 ? in2 : in3;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_eq_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 == in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_le_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 <= in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_lshift_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1, PRECISION=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
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
      assign out1 = in1 << in2[arg2_bitsize-1:0];
    else
      assign out1 = in1 << in2;
  endgenerate
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
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ASSIGN_UNSIGNED_FU(in1, out1);
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
module ASSIGN_VECTOR_BOOL_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
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

// Datapath RTL description for astarF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_astarF(clock, reset, in_port_a, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, proxy_out1_28861, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_out1_28868, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_STORE, fuselector_BMEMORY_CTRLN_81_i0_LOAD, fuselector_BMEMORY_CTRLN_81_i0_STORE, fuselector_BMEMORY_CTRLN_81_i1_LOAD, fuselector_BMEMORY_CTRLN_81_i1_STORE, selector_MUX_143_reg_11_0_0_0, selector_MUX_144_reg_12_0_0_0, selector_MUX_159_reg_26_0_0_0, selector_MUX_160_reg_27_0_0_0, selector_MUX_161_reg_28_0_0_0, selector_MUX_167_reg_8_0_0_0, selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0, selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1, selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_1_0_0, selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0, selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0, selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1, selector_MUX_25_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_1_0_0, selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_0, selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_1, selector_MUX_32_BMEMORY_CTRLN_81_i1_1_0_0, selector_MUX_53_PROXY_CTRLN_5_i0_0_0_0, selector_MUX_53_PROXY_CTRLN_5_i0_0_0_1, selector_MUX_54_PROXY_CTRLN_5_i0_1_0_0, selector_MUX_58_PROXY_CTRLN_6_i0_1_0_0, selector_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0, selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0, fuselector_PROXY_CTRLN_5_i0_LOAD, fuselector_PROXY_CTRLN_5_i0_STORE, fuselector_PROXY_CTRLN_6_i0_LOAD, fuselector_PROXY_CTRLN_6_i0_STORE, fuselector_PROXY_CTRLN_6_i1_LOAD, fuselector_PROXY_CTRLN_6_i1_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_astarF_28877_29274, OUT_CONDITION_astarF_28877_29316, OUT_CONDITION_astarF_28877_29483, OUT_CONDITION_astarF_28877_29490, OUT_CONDITION_astarF_28877_29506, OUT_CONDITION_astarF_28877_29512, OUT_CONDITION_astarF_28877_29514);
  parameter MEM_var_28861_28879=32, MEM_var_28862_28877=128, MEM_var_28864_28877=160, MEM_var_28865_28877=192, MEM_var_28866_28877=224, MEM_var_28867_28877=256, MEM_var_28868_28879=64;
  // IN
  input clock;
  input reset;
  input [31:0] in_port_a;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [17:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [15:0] proxy_out1_28861;
  input [15:0] proxy_out1_28868;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [17:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_STORE;
  input fuselector_BMEMORY_CTRLN_81_i0_LOAD;
  input fuselector_BMEMORY_CTRLN_81_i0_STORE;
  input fuselector_BMEMORY_CTRLN_81_i1_LOAD;
  input fuselector_BMEMORY_CTRLN_81_i1_STORE;
  input selector_MUX_143_reg_11_0_0_0;
  input selector_MUX_144_reg_12_0_0_0;
  input selector_MUX_159_reg_26_0_0_0;
  input selector_MUX_160_reg_27_0_0_0;
  input selector_MUX_161_reg_28_0_0_0;
  input selector_MUX_167_reg_8_0_0_0;
  input selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0;
  input selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1;
  input selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_1_0_0;
  input selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0;
  input selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0;
  input selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1;
  input selector_MUX_25_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_1_0_0;
  input selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_0;
  input selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_1;
  input selector_MUX_32_BMEMORY_CTRLN_81_i1_1_0_0;
  input selector_MUX_53_PROXY_CTRLN_5_i0_0_0_0;
  input selector_MUX_53_PROXY_CTRLN_5_i0_0_0_1;
  input selector_MUX_54_PROXY_CTRLN_5_i0_1_0_0;
  input selector_MUX_58_PROXY_CTRLN_6_i0_1_0_0;
  input selector_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0;
  input selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0;
  input fuselector_PROXY_CTRLN_5_i0_LOAD;
  input fuselector_PROXY_CTRLN_5_i0_STORE;
  input fuselector_PROXY_CTRLN_6_i0_LOAD;
  input fuselector_PROXY_CTRLN_6_i0_STORE;
  input fuselector_PROXY_CTRLN_6_i1_LOAD;
  input fuselector_PROXY_CTRLN_6_i1_STORE;
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
  input wrenable_reg_20;
  input wrenable_reg_21;
  input wrenable_reg_22;
  input wrenable_reg_23;
  input wrenable_reg_24;
  input wrenable_reg_25;
  input wrenable_reg_26;
  input wrenable_reg_27;
  input wrenable_reg_28;
  input wrenable_reg_3;
  input wrenable_reg_4;
  input wrenable_reg_5;
  input wrenable_reg_6;
  input wrenable_reg_7;
  input wrenable_reg_8;
  input wrenable_reg_9;
  // OUT
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [15:0] proxy_in1_28861;
  output [17:0] proxy_in2_28861;
  output [7:0] proxy_in3_28861;
  output [1:0] proxy_sel_LOAD_28861;
  output [1:0] proxy_sel_STORE_28861;
  output [15:0] proxy_in1_28868;
  output [17:0] proxy_in2_28868;
  output [7:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [17:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  output OUT_CONDITION_astarF_28877_29274;
  output OUT_CONDITION_astarF_28877_29316;
  output OUT_CONDITION_astarF_28877_29483;
  output OUT_CONDITION_astarF_28877_29490;
  output OUT_CONDITION_astarF_28877_29506;
  output OUT_CONDITION_astarF_28877_29512;
  output OUT_CONDITION_astarF_28877_29514;
  // Component and signal declarations
  wire [7:0] null_out_signal_PROXY_CTRLN_5_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_6_i0_out1_1;
  wire [7:0] null_out_signal_array_28862_0_out1_0;
  wire [7:0] null_out_signal_array_28862_0_out1_1;
  wire [7:0] null_out_signal_array_28862_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_28862_0_proxy_out1_1;
  wire [7:0] null_out_signal_array_28864_0_out1_1;
  wire [7:0] null_out_signal_array_28864_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_28864_0_proxy_out1_1;
  wire [7:0] null_out_signal_array_28865_0_out1_0;
  wire [7:0] null_out_signal_array_28865_0_out1_1;
  wire [7:0] null_out_signal_array_28865_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_28865_0_proxy_out1_1;
  wire [7:0] null_out_signal_array_28866_0_out1_1;
  wire [7:0] null_out_signal_array_28866_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_28866_0_proxy_out1_1;
  wire [7:0] null_out_signal_array_28867_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_28867_0_proxy_out1_1;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_array_28864_0;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28866_0;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_array_28867_0;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_array_28867_0;
  wire [7:0] out_BMEMORY_CTRLN_81_i0_BMEMORY_CTRLN_81_i0;
  wire [7:0] out_BMEMORY_CTRLN_81_i1_BMEMORY_CTRLN_81_i0;
  wire signed [7:0] out_IIconvert_expr_FU_72_i0_fu_astarF_28877_29414;
  wire signed [7:0] out_IIdata_converter_FU_54_i0_fu_astarF_28877_29486;
  wire signed [7:0] out_IIdata_converter_FU_61_i0_fu_astarF_28877_29485;
  wire signed [7:0] out_IIdata_converter_FU_62_i0_fu_astarF_28877_29489;
  wire signed [7:0] out_IIdata_converter_FU_69_i0_fu_astarF_28877_29420;
  wire [7:0] out_IUdata_converter_FU_33_i0_fu_astarF_28877_29757;
  wire [0:0] out_IUdata_converter_FU_51_i0_fu_astarF_28877_29788;
  wire [7:0] out_IUdata_converter_FU_53_i0_fu_astarF_28877_29805;
  wire [0:0] out_IUdata_converter_FU_57_i0_fu_astarF_28877_29819;
  wire [0:0] out_IUdata_converter_FU_58_i0_fu_astarF_28877_29840;
  wire [7:0] out_IUdata_converter_FU_67_i0_fu_astarF_28877_29858;
  wire [7:0] out_MUX_143_reg_11_0_0_0;
  wire [7:0] out_MUX_144_reg_12_0_0_0;
  wire [7:0] out_MUX_159_reg_26_0_0_0;
  wire [7:0] out_MUX_160_reg_27_0_0_0;
  wire [7:0] out_MUX_161_reg_28_0_0_0;
  wire [7:0] out_MUX_167_reg_8_0_0_0;
  wire [7:0] out_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0;
  wire [7:0] out_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1;
  wire [8:0] out_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_1_0_0;
  wire [7:0] out_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0;
  wire [8:0] out_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0;
  wire [8:0] out_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1;
  wire [8:0] out_MUX_25_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_1_0_0;
  wire [8:0] out_MUX_29_BMEMORY_CTRLN_81_i0_1_0_0;
  wire [8:0] out_MUX_29_BMEMORY_CTRLN_81_i0_1_0_1;
  wire [8:0] out_MUX_32_BMEMORY_CTRLN_81_i1_1_0_0;
  wire [7:0] out_MUX_53_PROXY_CTRLN_5_i0_0_0_0;
  wire [7:0] out_MUX_53_PROXY_CTRLN_5_i0_0_0_1;
  wire [8:0] out_MUX_54_PROXY_CTRLN_5_i0_1_0_0;
  wire [8:0] out_MUX_58_PROXY_CTRLN_6_i0_1_0_0;
  wire [7:0] out_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0;
  wire [8:0] out_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0;
  wire [7:0] out_PROXY_CTRLN_5_i0_PROXY_CTRLN_5_i0;
  wire [7:0] out_PROXY_CTRLN_6_i0_PROXY_CTRLN_6_i0;
  wire signed [8:0] out_UIdata_converter_FU_32_i0_fu_astarF_28877_29314;
  wire signed [1:0] out_UIdata_converter_FU_49_i0_fu_astarF_28877_29369;
  wire signed [8:0] out_UIdata_converter_FU_52_i0_fu_astarF_28877_29395;
  wire signed [8:0] out_UIdata_converter_FU_65_i0_fu_astarF_28877_29401;
  wire [7:0] out_UUdata_converter_FU_10_i0_fu_astarF_28877_29644;
  wire [6:0] out_UUdata_converter_FU_11_i0_fu_astarF_28877_29557;
  wire [7:0] out_UUdata_converter_FU_12_i0_fu_astarF_28877_29572;
  wire [7:0] out_UUdata_converter_FU_14_i0_fu_astarF_28877_29587;
  wire [8:0] out_UUdata_converter_FU_17_i0_fu_astarF_28877_29620;
  wire [7:0] out_UUdata_converter_FU_48_i0_fu_astarF_28877_29387;
  wire [9:0] out_UUdata_converter_FU_50_i0_fu_astarF_28877_29785;
  wire out_UUdata_converter_FU_55_i0_fu_astarF_28877_29364;
  wire [9:0] out_UUdata_converter_FU_56_i0_fu_astarF_28877_29816;
  wire [7:0] out_UUdata_converter_FU_64_i0_fu_astarF_28877_29435;
  wire [9:0] out_UUdata_converter_FU_66_i0_fu_astarF_28877_29855;
  wire [7:0] out_UUdata_converter_FU_68_i0_fu_astarF_28877_29868;
  wire signed [8:0] out___builtin_abs_8_8_82_i0_fu_astarF_28877_29417;
  wire [7:0] out_addr_expr_FU_13_i0_fu_astarF_28877_29682;
  wire [5:0] out_addr_expr_FU_15_i0_fu_astarF_28877_29614;
  wire [8:0] out_addr_expr_FU_16_i0_fu_astarF_28877_29692;
  wire [7:0] out_addr_expr_FU_18_i0_fu_astarF_28877_29634;
  wire [7:0] out_addr_expr_FU_19_i0_fu_astarF_28877_29708;
  wire [7:0] out_addr_expr_FU_20_i0_fu_astarF_28877_29913;
  wire [7:0] out_addr_expr_FU_9_i0_fu_astarF_28877_29698;
  wire signed [7:0] out_cond_expr_FU_8_8_8_8_83_i0_fu_astarF_28877_29302;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [7:0] out_const_10;
  wire [7:0] out_const_11;
  wire [7:0] out_const_12;
  wire [7:0] out_const_13;
  wire [7:0] out_const_14;
  wire [8:0] out_const_15;
  wire [5:0] out_const_16;
  wire [6:0] out_const_17;
  wire [7:0] out_const_2;
  wire [1:0] out_const_3;
  wire [4:0] out_const_4;
  wire [7:0] out_const_5;
  wire out_const_6;
  wire [1:0] out_const_7;
  wire [7:0] out_const_8;
  wire [1:0] out_const_9;
  wire out_conv_out_MUX_143_reg_11_0_0_0_8_1;
  wire [8:0] out_conv_out_UUdata_converter_FU_11_i0_fu_astarF_28877_29557_7_9;
  wire [8:0] out_conv_out_UUdata_converter_FU_14_i0_fu_astarF_28877_29587_8_9;
  wire [8:0] out_conv_out_addr_expr_FU_15_i0_fu_astarF_28877_29614_6_9;
  wire [8:0] out_conv_out_addr_expr_FU_18_i0_fu_astarF_28877_29634_8_9;
  wire [7:0] out_conv_out_const_0_1_8;
  wire [31:0] out_conv_out_const_11_8_32;
  wire [31:0] out_conv_out_const_12_8_32;
  wire [31:0] out_conv_out_const_13_8_32;
  wire [31:0] out_conv_out_const_14_8_32;
  wire [31:0] out_conv_out_const_15_9_32;
  wire [31:0] out_conv_out_const_16_6_32;
  wire [31:0] out_conv_out_const_17_7_32;
  wire [3:0] out_conv_out_const_4_5_4;
  wire [7:0] out_conv_out_i_assign_conn_obj_11_ASSIGN_SIGNED_FU_i_assign_0_I_2_8;
  wire [8:0] out_conv_out_reg_1_reg_1_6_9;
  wire [8:0] out_conv_out_reg_21_reg_21_7_9;
  wire [8:0] out_conv_out_reg_23_reg_23_8_9;
  wire [8:0] out_conv_out_reg_3_reg_3_8_9;
  wire [8:0] out_conv_out_reg_5_reg_5_8_9;
  wire [8:0] out_conv_out_reg_7_reg_7_8_9;
  wire [7:0] out_conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_10_1_8;
  wire [8:0] out_conv_out_ui_pointer_plus_expr_FU_8_0_8_102_i0_fu_astarF_28877_29581_7_9;
  wire [8:0] out_conv_out_ui_pointer_plus_expr_FU_8_0_8_102_i1_fu_astarF_28877_29610_8_9;
  wire out_ge_expr_FU_8_0_8_84_i0_fu_astarF_28877_29880;
  wire out_gt_expr_FU_8_0_8_85_i0_fu_astarF_28877_30075;
  wire out_gt_expr_FU_8_0_8_85_i1_fu_astarF_28877_30085;
  wire signed [1:0] out_i_assign_conn_obj_11_ASSIGN_SIGNED_FU_i_assign_0;
  wire [7:0] out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_1;
  wire [7:0] out_iu_conv_conn_obj_10_IUdata_converter_FU_iu_conv_3;
  wire [7:0] out_iu_conv_conn_obj_12_IUdata_converter_FU_iu_conv_4;
  wire [7:0] out_iu_conv_conn_obj_13_IUdata_converter_FU_iu_conv_5;
  wire [7:0] out_iu_conv_conn_obj_14_IUdata_converter_FU_iu_conv_6;
  wire [7:0] out_iu_conv_conn_obj_1_IUdata_converter_FU_iu_conv_2;
  wire [7:0] out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_7;
  wire [7:0] out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_8;
  wire out_le_expr_FU_8_8_8_86_i0_fu_astarF_28877_29306;
  wire out_lt_expr_FU_16_16_16_87_i0_fu_astarF_28877_30081;
  wire out_ne_expr_FU_8_0_8_88_i0_fu_astarF_28877_29301;
  wire out_ne_expr_FU_8_0_8_88_i1_fu_astarF_28877_29305;
  wire out_ne_expr_FU_8_0_8_89_i0_fu_astarF_28877_30079;
  wire signed [7:0] out_plus_expr_FU_8_0_8_90_i0_fu_astarF_28877_29272;
  wire signed [7:0] out_plus_expr_FU_8_0_8_90_i1_fu_astarF_28877_29411;
  wire signed [7:0] out_plus_expr_FU_8_0_8_90_i2_fu_astarF_28877_29437;
  wire signed [7:0] out_plus_expr_FU_8_0_8_91_i0_fu_astarF_28877_29311;
  wire signed [7:0] out_plus_expr_FU_8_0_8_91_i1_fu_astarF_28877_29423;
  wire signed [7:0] out_plus_expr_FU_8_8_8_92_i0_fu_astarF_28877_29371;
  wire signed [7:0] out_plus_expr_FU_8_8_8_92_i1_fu_astarF_28877_29405;
  wire signed [8:0] out_plus_expr_FU_8_8_8_92_i2_fu_astarF_28877_29487;
  wire out_read_cond_FU_21_i0_fu_astarF_28877_29274;
  wire out_read_cond_FU_34_i0_fu_astarF_28877_29316;
  wire out_read_cond_FU_59_i0_fu_astarF_28877_29483;
  wire out_read_cond_FU_63_i0_fu_astarF_28877_29490;
  wire out_read_cond_FU_70_i0_fu_astarF_28877_29506;
  wire out_read_cond_FU_79_i0_fu_astarF_28877_29512;
  wire out_read_cond_FU_80_i0_fu_astarF_28877_29514;
  wire [7:0] out_reg_0_reg_0;
  wire [7:0] out_reg_10_reg_10;
  wire out_reg_11_reg_11;
  wire [7:0] out_reg_12_reg_12;
  wire [9:0] out_reg_13_reg_13;
  wire [7:0] out_reg_14_reg_14;
  wire [8:0] out_reg_15_reg_15;
  wire [8:0] out_reg_16_reg_16;
  wire [7:0] out_reg_17_reg_17;
  wire [7:0] out_reg_18_reg_18;
  wire [7:0] out_reg_19_reg_19;
  wire [5:0] out_reg_1_reg_1;
  wire [8:0] out_reg_20_reg_20;
  wire [6:0] out_reg_21_reg_21;
  wire [8:0] out_reg_22_reg_22;
  wire [7:0] out_reg_23_reg_23;
  wire [7:0] out_reg_24_reg_24;
  wire [7:0] out_reg_25_reg_25;
  wire [7:0] out_reg_26_reg_26;
  wire [7:0] out_reg_27_reg_27;
  wire [7:0] out_reg_28_reg_28;
  wire [8:0] out_reg_2_reg_2;
  wire [7:0] out_reg_3_reg_3;
  wire [7:0] out_reg_4_reg_4;
  wire [7:0] out_reg_5_reg_5;
  wire [8:0] out_reg_6_reg_6;
  wire [7:0] out_reg_7_reg_7;
  wire [7:0] out_reg_8_reg_8;
  wire [7:0] out_reg_9_reg_9;
  wire [7:0] out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_9;
  wire [0:0] out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_10;
  wire [0:0] out_ui_bit_and_expr_FU_1_1_1_93_i0_fu_astarF_28877_29307;
  wire [7:0] out_ui_cond_expr_FU_8_8_8_8_94_i0_fu_astarF_28877_29303;
  wire [7:0] out_ui_cond_expr_FU_8_8_8_8_94_i1_fu_astarF_28877_29308;
  wire out_ui_eq_expr_FU_8_0_8_95_i0_fu_astarF_28877_30077;
  wire out_ui_le_expr_FU_8_0_8_96_i0_fu_astarF_28877_30083;
  wire [8:0] out_ui_lshift_expr_FU_16_0_16_97_i0_fu_astarF_28877_29383;
  wire [8:0] out_ui_lshift_expr_FU_16_0_16_97_i1_fu_astarF_28877_29432;
  wire [8:0] out_ui_lshift_expr_FU_16_0_16_98_i0_fu_astarF_28877_29897;
  wire [1:0] out_ui_lshift_expr_FU_8_0_8_99_i0_fu_astarF_28877_29358;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_100_i0_fu_astarF_28877_29442;
  wire [9:0] out_ui_pointer_plus_expr_FU_16_16_16_101_i0_fu_astarF_28877_29352;
  wire [9:0] out_ui_pointer_plus_expr_FU_16_16_16_101_i1_fu_astarF_28877_29380;
  wire [9:0] out_ui_pointer_plus_expr_FU_16_16_16_101_i2_fu_astarF_28877_29429;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_0_8_102_i0_fu_astarF_28877_29581;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_0_8_102_i1_fu_astarF_28877_29610;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_0_8_102_i2_fu_astarF_28877_29734;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_0_8_103_i0_fu_astarF_28877_29672;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_0_8_104_i0_fu_astarF_28877_29877;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_105_i0_fu_astarF_28877_29763;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_105_i1_fu_astarF_28877_29794;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_105_i2_fu_astarF_28877_29811;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_105_i3_fu_astarF_28877_29825;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_105_i4_fu_astarF_28877_29846;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_105_i5_fu_astarF_28877_29864;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_105_i6_fu_astarF_28877_29900;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_105_i7_fu_astarF_28877_29926;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_105_i8_fu_astarF_28877_29951;
  wire [7:0] out_vb_assign_conn_obj_15_ASSIGN_VECTOR_BOOL_FU_vb_assign_11;
  wire [7:0] out_vb_assign_conn_obj_16_ASSIGN_VECTOR_BOOL_FU_vb_assign_12;
  wire [7:0] out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_13;
  wire [7:0] out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_14;
  wire [7:0] out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_15;
  wire [7:0] out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_16;
  wire [15:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [17:0] sig_in_bus_mergerMout_addr_ram1_0;
  wire [7:0] sig_in_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_0;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_1;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_2;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_3;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_4;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_0;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_1;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_2;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_3;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_4;
  wire [15:0] sig_in_bus_mergerproxy_in1_288617_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288688_0;
  wire [17:0] sig_in_bus_mergerproxy_in2_288619_0;
  wire [17:0] sig_in_bus_mergerproxy_in2_2886810_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_2886111_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_2886812_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886113_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886814_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886115_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886816_0;
  wire [15:0] sig_in_vector_bus_mergerMout_Wdata_ram0_0;
  wire [17:0] sig_in_vector_bus_mergerMout_addr_ram1_0;
  wire [7:0] sig_in_vector_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_vector_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_vector_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_1;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_2;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_3;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_4;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_0;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_1;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_2;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_3;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_4;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288617_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288688_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in2_288619_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in2_2886810_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_2886111_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_2886812_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886113_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886814_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886115_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886816_0;
  wire [15:0] sig_out_bus_mergerMout_Wdata_ram0_;
  wire [17:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [7:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire [1:0] sig_out_bus_mergerMout_oe_ram3_;
  wire [1:0] sig_out_bus_mergerMout_we_ram4_;
  wire [1:0] sig_out_bus_mergerSout_DataRdy5_;
  wire [15:0] sig_out_bus_mergerSout_Rdata_ram6_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288617_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288688_;
  wire [17:0] sig_out_bus_mergerproxy_in2_288619_;
  wire [17:0] sig_out_bus_mergerproxy_in2_2886810_;
  wire [7:0] sig_out_bus_mergerproxy_in3_2886111_;
  wire [7:0] sig_out_bus_mergerproxy_in3_2886812_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886113_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886814_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886115_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886816_;
  
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) ASSIGN_SIGNED_FU_i_assign_0 (.out1(out_i_assign_conn_obj_11_ASSIGN_SIGNED_FU_i_assign_0), .in1(out_const_3));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_10 (.out1(out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_10), .in1(out_reg_11_reg_11));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_UNSIGNED_FU_u_assign_9 (.out1(out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_9), .in1(out_ui_plus_expr_FU_8_0_8_100_i0_fu_astarF_28877_29442));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_11 (.out1(out_vb_assign_conn_obj_15_ASSIGN_VECTOR_BOOL_FU_vb_assign_11), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_array_28864_0));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_12 (.out1(out_vb_assign_conn_obj_16_ASSIGN_VECTOR_BOOL_FU_vb_assign_12), .in1(out_ui_plus_expr_FU_8_0_8_100_i0_fu_astarF_28877_29442));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_13 (.out1(out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_13), .in1(out_const_10));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_14 (.out1(out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_14), .in1(out_const_2));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_15 (.out1(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_15), .in1(out_reg_10_reg_10));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_16 (.out1(out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_16), .in1(out_const_1));
  BMEMORY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_Min_oe_ram(1), .PORTSIZE_Min_oe_ram(2), .BITSIZE_Min_we_ram(1), .PORTSIZE_Min_we_ram(2), .BITSIZE_Mout_oe_ram(1), .PORTSIZE_Mout_oe_ram(2), .BITSIZE_Mout_we_ram(1), .PORTSIZE_Mout_we_ram(2), .BITSIZE_M_DataRdy(1), .PORTSIZE_M_DataRdy(2), .BITSIZE_Min_addr_ram(9), .PORTSIZE_Min_addr_ram(2), .BITSIZE_Mout_addr_ram(9), .PORTSIZE_Mout_addr_ram(2), .BITSIZE_M_Rdata_ram(8), .PORTSIZE_M_Rdata_ram(2), .BITSIZE_Min_Wdata_ram(8), .PORTSIZE_Min_Wdata_ram(2), .BITSIZE_Mout_Wdata_ram(8), .PORTSIZE_Mout_Wdata_ram(2), .BITSIZE_Min_data_ram_size(4), .PORTSIZE_Min_data_ram_size(2), .BITSIZE_Mout_data_ram_size(4), .PORTSIZE_Mout_data_ram_size(2)) BMEMORY_CTRLN_81_i0 (.out1({out_BMEMORY_CTRLN_81_i1_BMEMORY_CTRLN_81_i0, out_BMEMORY_CTRLN_81_i0_BMEMORY_CTRLN_81_i0}), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .in1({8'b00000000, out_iu_conv_conn_obj_10_IUdata_converter_FU_iu_conv_3}), .in2({out_MUX_32_BMEMORY_CTRLN_81_i1_1_0_0, out_MUX_29_BMEMORY_CTRLN_81_i0_1_0_1}), .in3({out_conv_out_const_4_5_4, out_conv_out_const_4_5_4}), .in4({out_const_6, out_const_6}), .sel_LOAD({fuselector_BMEMORY_CTRLN_81_i1_LOAD, fuselector_BMEMORY_CTRLN_81_i0_LOAD}), .sel_STORE({fuselector_BMEMORY_CTRLN_81_i1_STORE, fuselector_BMEMORY_CTRLN_81_i0_STORE}), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .M_Rdata_ram(M_Rdata_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .M_DataRdy(M_DataRdy));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_1), .in1(out_const_1));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_2 (.out1(out_iu_conv_conn_obj_1_IUdata_converter_FU_iu_conv_2), .in1(out_const_5));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_3 (.out1(out_iu_conv_conn_obj_10_IUdata_converter_FU_iu_conv_3), .in1(out_reg_19_reg_19));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_4 (.out1(out_iu_conv_conn_obj_12_IUdata_converter_FU_iu_conv_4), .in1(out_plus_expr_FU_8_8_8_92_i1_fu_astarF_28877_29405));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_5 (.out1(out_iu_conv_conn_obj_13_IUdata_converter_FU_iu_conv_5), .in1(out_plus_expr_FU_8_8_8_92_i1_fu_astarF_28877_29405));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_6 (.out1(out_iu_conv_conn_obj_14_IUdata_converter_FU_iu_conv_6), .in1(out_plus_expr_FU_8_0_8_90_i2_fu_astarF_28877_29437));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_7 (.out1(out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_7), .in1(out_plus_expr_FU_8_0_8_90_i0_fu_astarF_28877_29272));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_8 (.out1(out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_8), .in1(out_reg_9_reg_9));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_143_reg_11_0_0_0 (.out1(out_MUX_143_reg_11_0_0_0), .sel(selector_MUX_143_reg_11_0_0_0), .in1(out_conv_out_const_0_1_8), .in2(out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_9));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_144_reg_12_0_0_0 (.out1(out_MUX_144_reg_12_0_0_0), .sel(selector_MUX_144_reg_12_0_0_0), .in1(out_reg_27_reg_27), .in2(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_array_28864_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_159_reg_26_0_0_0 (.out1(out_MUX_159_reg_26_0_0_0), .sel(selector_MUX_159_reg_26_0_0_0), .in1(out_conv_out_i_assign_conn_obj_11_ASSIGN_SIGNED_FU_i_assign_0_I_2_8), .in2(out_plus_expr_FU_8_0_8_90_i1_fu_astarF_28877_29411));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_160_reg_27_0_0_0 (.out1(out_MUX_160_reg_27_0_0_0), .sel(selector_MUX_160_reg_27_0_0_0), .in1(out_reg_12_reg_12), .in2(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_array_28864_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_161_reg_28_0_0_0 (.out1(out_MUX_161_reg_28_0_0_0), .sel(selector_MUX_161_reg_28_0_0_0), .in1(out_PROXY_CTRLN_5_i0_PROXY_CTRLN_5_i0), .in2(out_conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_10_1_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_167_reg_8_0_0_0 (.out1(out_MUX_167_reg_8_0_0_0), .sel(selector_MUX_167_reg_8_0_0_0), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28866_0), .in2(out_plus_expr_FU_8_0_8_90_i0_fu_astarF_28877_29272));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0 (.out1(out_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0), .sel(selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0), .in1(out_iu_conv_conn_obj_14_IUdata_converter_FU_iu_conv_6), .in2(out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_7));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1 (.out1(out_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1), .sel(selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1), .in1(out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_8), .in2(out_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_1_0_0 (.out1(out_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_1_0_0), .sel(selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_1_0_0), .in1(out_conv_out_reg_3_reg_3_8_9), .in2(out_conv_out_addr_expr_FU_18_i0_fu_astarF_28877_29634_8_9));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0 (.out1(out_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0), .sel(selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0), .in1(out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_1), .in2(out_iu_conv_conn_obj_13_IUdata_converter_FU_iu_conv_5));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0 (.out1(out_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0), .sel(selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0), .in1(out_reg_22_reg_22), .in2(out_reg_2_reg_2));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1 (.out1(out_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1), .sel(selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1), .in1(out_ui_pointer_plus_expr_FU_8_8_8_105_i0_fu_astarF_28877_29763), .in2(out_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_25_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_1_0_0 (.out1(out_MUX_25_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_1_0_0), .sel(selector_MUX_25_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_1_0_0), .in1(out_reg_6_reg_6), .in2(out_UUdata_converter_FU_17_i0_fu_astarF_28877_29620));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_29_BMEMORY_CTRLN_81_i0_1_0_0 (.out1(out_MUX_29_BMEMORY_CTRLN_81_i0_1_0_0), .sel(selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_0), .in1(out_reg_20_reg_20), .in2(out_reg_16_reg_16));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_29_BMEMORY_CTRLN_81_i0_1_0_1 (.out1(out_MUX_29_BMEMORY_CTRLN_81_i0_1_0_1), .sel(selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_1), .in1(out_ui_pointer_plus_expr_FU_8_8_8_105_i2_fu_astarF_28877_29811), .in2(out_MUX_29_BMEMORY_CTRLN_81_i0_1_0_0));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_32_BMEMORY_CTRLN_81_i1_1_0_0 (.out1(out_MUX_32_BMEMORY_CTRLN_81_i1_1_0_0), .sel(selector_MUX_32_BMEMORY_CTRLN_81_i1_1_0_0), .in1(out_reg_15_reg_15), .in2(out_ui_pointer_plus_expr_FU_8_8_8_105_i1_fu_astarF_28877_29794));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_53_PROXY_CTRLN_5_i0_0_0_0 (.out1(out_MUX_53_PROXY_CTRLN_5_i0_0_0_0), .sel(selector_MUX_53_PROXY_CTRLN_5_i0_0_0_0), .in1(out_vb_assign_conn_obj_16_ASSIGN_VECTOR_BOOL_FU_vb_assign_12), .in2(out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_14));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_53_PROXY_CTRLN_5_i0_0_0_1 (.out1(out_MUX_53_PROXY_CTRLN_5_i0_0_0_1), .sel(selector_MUX_53_PROXY_CTRLN_5_i0_0_0_1), .in1(out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_16), .in2(out_MUX_53_PROXY_CTRLN_5_i0_0_0_0));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_54_PROXY_CTRLN_5_i0_1_0_0 (.out1(out_MUX_54_PROXY_CTRLN_5_i0_1_0_0), .sel(selector_MUX_54_PROXY_CTRLN_5_i0_1_0_0), .in1(out_conv_out_reg_1_reg_1_6_9), .in2(out_conv_out_addr_expr_FU_15_i0_fu_astarF_28877_29614_6_9));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_58_PROXY_CTRLN_6_i0_1_0_0 (.out1(out_MUX_58_PROXY_CTRLN_6_i0_1_0_0), .sel(selector_MUX_58_PROXY_CTRLN_6_i0_1_0_0), .in1(out_conv_out_reg_21_reg_21_7_9), .in2(out_conv_out_UUdata_converter_FU_11_i0_fu_astarF_28877_29557_7_9));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0 (.out1(out_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0), .sel(selector_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0), .in1(out_vb_assign_conn_obj_15_ASSIGN_VECTOR_BOOL_FU_vb_assign_11), .in2(out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_13));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0 (.out1(out_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0), .sel(selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0), .in1(out_conv_out_reg_23_reg_23_8_9), .in2(out_conv_out_UUdata_converter_FU_14_i0_fu_astarF_28877_29587_8_9));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_5_i0 (.out1({null_out_signal_PROXY_CTRLN_5_i0_out1_1, out_PROXY_CTRLN_5_i0_PROXY_CTRLN_5_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288617_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288619_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886111_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886113_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886115_0), .in1({8'b00000000, out_MUX_53_PROXY_CTRLN_5_i0_0_0_1}), .in2({9'b000000000, out_MUX_54_PROXY_CTRLN_5_i0_1_0_0}), .in3({4'b0000, out_conv_out_const_4_5_4}), .in4({1'b0, out_const_6}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_5_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_5_i0_STORE}), .proxy_out1(proxy_out1_28861));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_6_i0 (.out1({null_out_signal_PROXY_CTRLN_6_i0_out1_1, out_PROXY_CTRLN_6_i0_PROXY_CTRLN_6_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288688_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2886810_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886812_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886814_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886816_0), .in1({out_iu_conv_conn_obj_1_IUdata_converter_FU_iu_conv_2, out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_1}), .in2({out_conv_out_ui_pointer_plus_expr_FU_8_0_8_102_i0_fu_astarF_28877_29581_7_9, out_MUX_58_PROXY_CTRLN_6_i0_1_0_0}), .in3({out_conv_out_const_4_5_4, out_conv_out_const_4_5_4}), .in4({out_const_6, out_const_6}), .sel_LOAD({fuselector_PROXY_CTRLN_6_i1_LOAD, fuselector_PROXY_CTRLN_6_i0_LOAD}), .sel_STORE({fuselector_PROXY_CTRLN_6_i1_STORE, fuselector_PROXY_CTRLN_6_i0_STORE}), .proxy_out1(proxy_out1_28868));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28862.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28862_28877), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28862_0 (.out1({null_out_signal_array_28862_0_out1_1, null_out_signal_array_28862_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_0), .proxy_out1({null_out_signal_array_28862_0_proxy_out1_1, null_out_signal_array_28862_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_iu_conv_conn_obj_12_IUdata_converter_FU_iu_conv_4}), .in2({9'b000000000, out_conv_out_reg_7_reg_7_8_9}), .in3({4'b0000, out_conv_out_const_4_5_4}), .in4({1'b0, out_const_6}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({9'b000000000, 9'b000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28864.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28864_28877), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28864_0 (.out1({null_out_signal_array_28864_0_out1_1, out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_array_28864_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_1), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_1), .proxy_out1({null_out_signal_array_28864_0_proxy_out1_1, null_out_signal_array_28864_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_15}), .in2({9'b000000000, out_conv_out_reg_5_reg_5_8_9}), .in3({4'b0000, out_conv_out_const_4_5_4}), .in4({1'b0, out_const_6}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({9'b000000000, 9'b000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28865.mem"), .n_elements(2), .data_size(8), .address_space_begin(MEM_var_28865_28877), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28865_0 (.out1({null_out_signal_array_28865_0_out1_1, null_out_signal_array_28865_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_2), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_2), .proxy_out1({null_out_signal_array_28865_0_proxy_out1_1, null_out_signal_array_28865_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_13, out_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0}), .in2({out_conv_out_ui_pointer_plus_expr_FU_8_0_8_102_i1_fu_astarF_28877_29610_8_9, out_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0}), .in3({out_conv_out_const_4_5_4, out_conv_out_const_4_5_4}), .in4({out_const_6, out_const_6}), .sel_LOAD({fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD}), .sel_STORE({fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({9'b000000000, 9'b000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28866.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28866_28877), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28866_0 (.out1({null_out_signal_array_28866_0_out1_1, out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28866_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_3), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_3), .proxy_out1({null_out_signal_array_28866_0_proxy_out1_1, null_out_signal_array_28866_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1}), .in2({9'b000000000, out_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_1_0_0}), .in3({4'b0000, out_conv_out_const_4_5_4}), .in4({1'b0, out_const_6}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({9'b000000000, 9'b000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28867.mem"), .n_elements(2), .data_size(8), .address_space_begin(MEM_var_28867_28877), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28867_0 (.out1({out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_array_28867_0, out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_array_28867_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_4), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_4), .proxy_out1({null_out_signal_array_28867_0_proxy_out1_1, null_out_signal_array_28867_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_1, out_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0}), .in2({out_MUX_25_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_1_0_0, out_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1}), .in3({out_conv_out_const_4_5_4, out_conv_out_const_4_5_4}), .in4({out_const_6, out_const_6}), .sel_LOAD({fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD}), .sel_STORE({fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({9'b000000000, 9'b000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(5), .BITSIZE_out1(2)) bus_mergerSout_DataRdy5_ (.out1(sig_out_bus_mergerSout_DataRdy5_), .in1({sig_in_bus_mergerSout_DataRdy5_4, sig_in_bus_mergerSout_DataRdy5_3, sig_in_bus_mergerSout_DataRdy5_2, sig_in_bus_mergerSout_DataRdy5_1, sig_in_bus_mergerSout_DataRdy5_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(5), .BITSIZE_out1(16)) bus_mergerSout_Rdata_ram6_ (.out1(sig_out_bus_mergerSout_Rdata_ram6_), .in1({sig_in_bus_mergerSout_Rdata_ram6_4, sig_in_bus_mergerSout_Rdata_ram6_3, sig_in_bus_mergerSout_Rdata_ram6_2, sig_in_bus_mergerSout_Rdata_ram6_1, sig_in_bus_mergerSout_Rdata_ram6_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288617_ (.out1(sig_out_bus_mergerproxy_in1_288617_), .in1({sig_in_bus_mergerproxy_in1_288617_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288688_ (.out1(sig_out_bus_mergerproxy_in1_288688_), .in1({sig_in_bus_mergerproxy_in1_288688_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerproxy_in2_288619_ (.out1(sig_out_bus_mergerproxy_in2_288619_), .in1({sig_in_bus_mergerproxy_in2_288619_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerproxy_in2_2886810_ (.out1(sig_out_bus_mergerproxy_in2_2886810_), .in1({sig_in_bus_mergerproxy_in2_2886810_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_2886111_ (.out1(sig_out_bus_mergerproxy_in3_2886111_), .in1({sig_in_bus_mergerproxy_in3_2886111_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_2886812_ (.out1(sig_out_bus_mergerproxy_in3_2886812_), .in1({sig_in_bus_mergerproxy_in3_2886812_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886113_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886113_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886113_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886814_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886814_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886814_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886115_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886115_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886115_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886816_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886816_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886816_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28862_28877)) const_11 (.out1(out_const_11));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28864_28877)) const_12 (.out1(out_const_12));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28865_28877)) const_13 (.out1(out_const_13));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28866_28877)) const_14 (.out1(out_const_14));
  constant_value #(.BITSIZE_out1(9), .value(MEM_var_28867_28877)) const_15 (.out1(out_const_15));
  constant_value #(.BITSIZE_out1(6), .value(MEM_var_28861_28879)) const_16 (.out1(out_const_16));
  constant_value #(.BITSIZE_out1(7), .value(MEM_var_28868_28879)) const_17 (.out1(out_const_17));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000010)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(2), .value(2'b01)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(8), .value(8'b01111111)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(2), .value(2'b10)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(8), .value(8'b10000110)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(1)) conv_out_MUX_143_reg_11_0_0_0_8_1 (.out1(out_conv_out_MUX_143_reg_11_0_0_0_8_1), .in1(out_MUX_143_reg_11_0_0_0));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_UUdata_converter_FU_11_i0_fu_astarF_28877_29557_7_9 (.out1(out_conv_out_UUdata_converter_FU_11_i0_fu_astarF_28877_29557_7_9), .in1(out_UUdata_converter_FU_11_i0_fu_astarF_28877_29557));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_UUdata_converter_FU_14_i0_fu_astarF_28877_29587_8_9 (.out1(out_conv_out_UUdata_converter_FU_14_i0_fu_astarF_28877_29587_8_9), .in1(out_UUdata_converter_FU_14_i0_fu_astarF_28877_29587));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(9)) conv_out_addr_expr_FU_15_i0_fu_astarF_28877_29614_6_9 (.out1(out_conv_out_addr_expr_FU_15_i0_fu_astarF_28877_29614_6_9), .in1(out_addr_expr_FU_15_i0_fu_astarF_28877_29614));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_addr_expr_FU_18_i0_fu_astarF_28877_29634_8_9 (.out1(out_conv_out_addr_expr_FU_18_i0_fu_astarF_28877_29634_8_9), .in1(out_addr_expr_FU_18_i0_fu_astarF_28877_29634));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_const_0_1_8 (.out1(out_conv_out_const_0_1_8), .in1(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_11_8_32 (.out1(out_conv_out_const_11_8_32), .in1(out_const_11));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_12_8_32 (.out1(out_conv_out_const_12_8_32), .in1(out_const_12));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_13_8_32 (.out1(out_conv_out_const_13_8_32), .in1(out_const_13));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_14_8_32 (.out1(out_conv_out_const_14_8_32), .in1(out_const_14));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(32)) conv_out_const_15_9_32 (.out1(out_conv_out_const_15_9_32), .in1(out_const_15));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(32)) conv_out_const_16_6_32 (.out1(out_conv_out_const_16_6_32), .in1(out_const_16));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(32)) conv_out_const_17_7_32 (.out1(out_conv_out_const_17_7_32), .in1(out_const_17));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_4_5_4 (.out1(out_conv_out_const_4_5_4), .in1(out_const_4));
  IUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(8)) conv_out_i_assign_conn_obj_11_ASSIGN_SIGNED_FU_i_assign_0_I_2_8 (.out1(out_conv_out_i_assign_conn_obj_11_ASSIGN_SIGNED_FU_i_assign_0_I_2_8), .in1(out_i_assign_conn_obj_11_ASSIGN_SIGNED_FU_i_assign_0));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(9)) conv_out_reg_1_reg_1_6_9 (.out1(out_conv_out_reg_1_reg_1_6_9), .in1(out_reg_1_reg_1));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_21_reg_21_7_9 (.out1(out_conv_out_reg_21_reg_21_7_9), .in1(out_reg_21_reg_21));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_23_reg_23_8_9 (.out1(out_conv_out_reg_23_reg_23_8_9), .in1(out_reg_23_reg_23));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_3_reg_3_8_9 (.out1(out_conv_out_reg_3_reg_3_8_9), .in1(out_reg_3_reg_3));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_5_reg_5_8_9 (.out1(out_conv_out_reg_5_reg_5_8_9), .in1(out_reg_5_reg_5));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_7_reg_7_8_9 (.out1(out_conv_out_reg_7_reg_7_8_9), .in1(out_reg_7_reg_7));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_10_1_8 (.out1(out_conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_10_1_8), .in1(out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_10));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_ui_pointer_plus_expr_FU_8_0_8_102_i0_fu_astarF_28877_29581_7_9 (.out1(out_conv_out_ui_pointer_plus_expr_FU_8_0_8_102_i0_fu_astarF_28877_29581_7_9), .in1(out_ui_pointer_plus_expr_FU_8_0_8_102_i0_fu_astarF_28877_29581));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_ui_pointer_plus_expr_FU_8_0_8_102_i1_fu_astarF_28877_29610_8_9 (.out1(out_conv_out_ui_pointer_plus_expr_FU_8_0_8_102_i1_fu_astarF_28877_29610_8_9), .in1(out_ui_pointer_plus_expr_FU_8_0_8_102_i1_fu_astarF_28877_29610));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_astarF_28877_29272 (.out1(out_plus_expr_FU_8_0_8_90_i0_fu_astarF_28877_29272), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28866_0), .in2(out_const_3));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29274 (.out1(out_read_cond_FU_21_i0_fu_astarF_28877_29274), .in1(out_gt_expr_FU_8_0_8_85_i0_fu_astarF_28877_30075));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_astarF_28877_29301 (.out1(out_ne_expr_FU_8_0_8_88_i0_fu_astarF_28877_29301), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_array_28867_0), .in2(out_const_0));
  cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_astarF_28877_29302 (.out1(out_cond_expr_FU_8_8_8_8_83_i0_fu_astarF_28877_29302), .in1(out_ne_expr_FU_8_0_8_88_i0_fu_astarF_28877_29301), .in2(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_array_28867_0), .in3(out_const_5));
  ui_cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_astarF_28877_29303 (.out1(out_ui_cond_expr_FU_8_8_8_8_94_i0_fu_astarF_28877_29303), .in1(out_ne_expr_FU_8_0_8_88_i0_fu_astarF_28877_29301), .in2(out_const_0), .in3(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_array_28864_0));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_astarF_28877_29305 (.out1(out_ne_expr_FU_8_0_8_88_i1_fu_astarF_28877_29305), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_array_28867_0), .in2(out_const_0));
  le_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_astarF_28877_29306 (.out1(out_le_expr_FU_8_8_8_86_i0_fu_astarF_28877_29306), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_array_28867_0), .in2(out_cond_expr_FU_8_8_8_8_83_i0_fu_astarF_28877_29302));
  ui_bit_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_astarF_28877_29307 (.out1(out_ui_bit_and_expr_FU_1_1_1_93_i0_fu_astarF_28877_29307), .in1(out_le_expr_FU_8_8_8_86_i0_fu_astarF_28877_29306), .in2(out_ne_expr_FU_8_0_8_88_i1_fu_astarF_28877_29305));
  ui_cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_astarF_28877_29308 (.out1(out_ui_cond_expr_FU_8_8_8_8_94_i1_fu_astarF_28877_29308), .in1(out_ui_bit_and_expr_FU_1_1_1_93_i0_fu_astarF_28877_29307), .in2(out_const_6), .in3(out_ui_cond_expr_FU_8_8_8_8_94_i0_fu_astarF_28877_29303));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_astarF_28877_29311 (.out1(out_plus_expr_FU_8_0_8_91_i0_fu_astarF_28877_29311), .in1(out_reg_8_reg_8), .in2(out_const_9));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_astarF_28877_29314 (.out1(out_UIdata_converter_FU_32_i0_fu_astarF_28877_29314), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_array_28864_0));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29316 (.out1(out_read_cond_FU_34_i0_fu_astarF_28877_29316), .in1(out_ui_eq_expr_FU_8_0_8_95_i0_fu_astarF_28877_30077));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(10), .LSB_PARAMETER(0)) fu_astarF_28877_29352 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_101_i0_fu_astarF_28877_29352), .in1(in_port_a), .in2(out_ui_lshift_expr_FU_8_0_8_99_i0_fu_astarF_28877_29358));
  ui_lshift_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(2), .PRECISION(32)) fu_astarF_28877_29358 (.out1(out_ui_lshift_expr_FU_8_0_8_99_i0_fu_astarF_28877_29358), .in1(out_UUdata_converter_FU_55_i0_fu_astarF_28877_29364), .in2(out_const_6));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_astarF_28877_29364 (.out1(out_UUdata_converter_FU_55_i0_fu_astarF_28877_29364), .in1(out_reg_11_reg_11));
  UIdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(2)) fu_astarF_28877_29369 (.out1(out_UIdata_converter_FU_49_i0_fu_astarF_28877_29369), .in1(out_reg_11_reg_11));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) fu_astarF_28877_29371 (.out1(out_plus_expr_FU_8_8_8_92_i0_fu_astarF_28877_29371), .in1(out_BMEMORY_CTRLN_81_i0_BMEMORY_CTRLN_81_i0), .in2(out_reg_17_reg_17));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(9), .BITSIZE_out1(10), .LSB_PARAMETER(0)) fu_astarF_28877_29380 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_101_i1_fu_astarF_28877_29380), .in1(in_port_a), .in2(out_ui_lshift_expr_FU_16_0_16_97_i0_fu_astarF_28877_29383));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(9), .PRECISION(32)) fu_astarF_28877_29383 (.out1(out_ui_lshift_expr_FU_16_0_16_97_i0_fu_astarF_28877_29383), .in1(out_UUdata_converter_FU_48_i0_fu_astarF_28877_29387), .in2(out_const_6));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29387 (.out1(out_UUdata_converter_FU_48_i0_fu_astarF_28877_29387), .in1(out_reg_12_reg_12));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_astarF_28877_29395 (.out1(out_UIdata_converter_FU_52_i0_fu_astarF_28877_29395), .in1(out_reg_12_reg_12));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_astarF_28877_29401 (.out1(out_UIdata_converter_FU_65_i0_fu_astarF_28877_29401), .in1(out_PROXY_CTRLN_5_i0_PROXY_CTRLN_5_i0));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) fu_astarF_28877_29405 (.out1(out_plus_expr_FU_8_8_8_92_i1_fu_astarF_28877_29405), .in1(out_reg_26_reg_26), .in2(out_reg_24_reg_24));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_astarF_28877_29411 (.out1(out_plus_expr_FU_8_0_8_90_i1_fu_astarF_28877_29411), .in1(out_IIconvert_expr_FU_72_i0_fu_astarF_28877_29414), .in2(out_const_3));
  IIconvert_expr_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_astarF_28877_29414 (.out1(out_IIconvert_expr_FU_72_i0_fu_astarF_28877_29414), .in1(out___builtin_abs_8_8_82_i0_fu_astarF_28877_29417));
  __builtin_abs #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_astarF_28877_29417 (.out1(out___builtin_abs_8_8_82_i0_fu_astarF_28877_29417), .in1(out_reg_25_reg_25));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29420 (.out1(out_IIdata_converter_FU_69_i0_fu_astarF_28877_29420), .in1(out_plus_expr_FU_8_0_8_91_i1_fu_astarF_28877_29423));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_astarF_28877_29423 (.out1(out_plus_expr_FU_8_0_8_91_i1_fu_astarF_28877_29423), .in1(out_BMEMORY_CTRLN_81_i0_BMEMORY_CTRLN_81_i0), .in2(out_const_9));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(9), .BITSIZE_out1(10), .LSB_PARAMETER(0)) fu_astarF_28877_29429 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_101_i2_fu_astarF_28877_29429), .in1(in_port_a), .in2(out_ui_lshift_expr_FU_16_0_16_97_i1_fu_astarF_28877_29432));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(9), .PRECISION(32)) fu_astarF_28877_29432 (.out1(out_ui_lshift_expr_FU_16_0_16_97_i1_fu_astarF_28877_29432), .in1(out_UUdata_converter_FU_64_i0_fu_astarF_28877_29435), .in2(out_const_6));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29435 (.out1(out_UUdata_converter_FU_64_i0_fu_astarF_28877_29435), .in1(out_PROXY_CTRLN_5_i0_PROXY_CTRLN_5_i0));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_astarF_28877_29437 (.out1(out_plus_expr_FU_8_0_8_90_i2_fu_astarF_28877_29437), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28866_0), .in2(out_const_3));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_astarF_28877_29442 (.out1(out_ui_plus_expr_FU_8_0_8_100_i0_fu_astarF_28877_29442), .in1(out_reg_28_reg_28), .in2(out_const_6));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29483 (.out1(out_read_cond_FU_59_i0_fu_astarF_28877_29483), .in1(out_ne_expr_FU_8_0_8_89_i0_fu_astarF_28877_30079));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29485 (.out1(out_IIdata_converter_FU_61_i0_fu_astarF_28877_29485), .in1(out_BMEMORY_CTRLN_81_i0_BMEMORY_CTRLN_81_i0));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29486 (.out1(out_IIdata_converter_FU_54_i0_fu_astarF_28877_29486), .in1(out_BMEMORY_CTRLN_81_i1_BMEMORY_CTRLN_81_i0));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(9)) fu_astarF_28877_29487 (.out1(out_plus_expr_FU_8_8_8_92_i2_fu_astarF_28877_29487), .in1(out_reg_18_reg_18), .in2(out_IIdata_converter_FU_61_i0_fu_astarF_28877_29485));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29489 (.out1(out_IIdata_converter_FU_62_i0_fu_astarF_28877_29489), .in1(out_BMEMORY_CTRLN_81_i1_BMEMORY_CTRLN_81_i0));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29490 (.out1(out_read_cond_FU_63_i0_fu_astarF_28877_29490), .in1(out_lt_expr_FU_16_16_16_87_i0_fu_astarF_28877_30081));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29506 (.out1(out_read_cond_FU_70_i0_fu_astarF_28877_29506), .in1(out_ge_expr_FU_8_0_8_84_i0_fu_astarF_28877_29880));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29512 (.out1(out_read_cond_FU_79_i0_fu_astarF_28877_29512), .in1(out_ui_le_expr_FU_8_0_8_96_i0_fu_astarF_28877_30083));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29514 (.out1(out_read_cond_FU_80_i0_fu_astarF_28877_29514), .in1(out_gt_expr_FU_8_0_8_85_i1_fu_astarF_28877_30085));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(7)) fu_astarF_28877_29557 (.out1(out_UUdata_converter_FU_11_i0_fu_astarF_28877_29557), .in1(out_UUdata_converter_FU_10_i0_fu_astarF_28877_29644));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29572 (.out1(out_UUdata_converter_FU_12_i0_fu_astarF_28877_29572), .in1(out_ui_pointer_plus_expr_FU_8_0_8_103_i0_fu_astarF_28877_29672));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_astarF_28877_29581 (.out1(out_ui_pointer_plus_expr_FU_8_0_8_102_i0_fu_astarF_28877_29581), .in1(out_UUdata_converter_FU_12_i0_fu_astarF_28877_29572), .in2(out_const_6));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29587 (.out1(out_UUdata_converter_FU_14_i0_fu_astarF_28877_29587), .in1(out_addr_expr_FU_13_i0_fu_astarF_28877_29682));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_astarF_28877_29610 (.out1(out_ui_pointer_plus_expr_FU_8_0_8_102_i1_fu_astarF_28877_29610), .in1(out_UUdata_converter_FU_14_i0_fu_astarF_28877_29587), .in2(out_const_6));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(6)) fu_astarF_28877_29614 (.out1(out_addr_expr_FU_15_i0_fu_astarF_28877_29614), .in1(out_conv_out_const_16_6_32));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(9)) fu_astarF_28877_29620 (.out1(out_UUdata_converter_FU_17_i0_fu_astarF_28877_29620), .in1(out_addr_expr_FU_16_i0_fu_astarF_28877_29692));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_astarF_28877_29634 (.out1(out_addr_expr_FU_18_i0_fu_astarF_28877_29634), .in1(out_conv_out_const_14_8_32));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29644 (.out1(out_UUdata_converter_FU_10_i0_fu_astarF_28877_29644), .in1(out_addr_expr_FU_9_i0_fu_astarF_28877_29698));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_astarF_28877_29672 (.out1(out_ui_pointer_plus_expr_FU_8_0_8_103_i0_fu_astarF_28877_29672), .in1(out_UUdata_converter_FU_10_i0_fu_astarF_28877_29644), .in2(out_const_7));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_astarF_28877_29682 (.out1(out_addr_expr_FU_13_i0_fu_astarF_28877_29682), .in1(out_conv_out_const_13_8_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(9)) fu_astarF_28877_29692 (.out1(out_addr_expr_FU_16_i0_fu_astarF_28877_29692), .in1(out_conv_out_const_15_9_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_astarF_28877_29698 (.out1(out_addr_expr_FU_9_i0_fu_astarF_28877_29698), .in1(out_conv_out_const_17_7_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_astarF_28877_29708 (.out1(out_addr_expr_FU_19_i0_fu_astarF_28877_29708), .in1(out_conv_out_const_12_8_32));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_astarF_28877_29734 (.out1(out_ui_pointer_plus_expr_FU_8_0_8_102_i2_fu_astarF_28877_29734), .in1(out_UUdata_converter_FU_17_i0_fu_astarF_28877_29620), .in2(out_const_6));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_astarF_28877_29757 (.out1(out_IUdata_converter_FU_33_i0_fu_astarF_28877_29757), .in1(out_UIdata_converter_FU_32_i0_fu_astarF_28877_29314));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(8), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_astarF_28877_29763 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_105_i0_fu_astarF_28877_29763), .in1(out_reg_2_reg_2), .in2(out_IUdata_converter_FU_33_i0_fu_astarF_28877_29757));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(10)) fu_astarF_28877_29785 (.out1(out_UUdata_converter_FU_50_i0_fu_astarF_28877_29785), .in1(out_ui_pointer_plus_expr_FU_16_16_16_101_i1_fu_astarF_28877_29380));
  IUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(1)) fu_astarF_28877_29788 (.out1(out_IUdata_converter_FU_51_i0_fu_astarF_28877_29788), .in1(out_UIdata_converter_FU_49_i0_fu_astarF_28877_29369));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(1), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_astarF_28877_29794 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_105_i1_fu_astarF_28877_29794), .in1(out_UUdata_converter_FU_50_i0_fu_astarF_28877_29785), .in2(out_IUdata_converter_FU_51_i0_fu_astarF_28877_29788));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_astarF_28877_29805 (.out1(out_IUdata_converter_FU_53_i0_fu_astarF_28877_29805), .in1(out_UIdata_converter_FU_52_i0_fu_astarF_28877_29395));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(8), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_astarF_28877_29811 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_105_i2_fu_astarF_28877_29811), .in1(out_reg_13_reg_13), .in2(out_reg_14_reg_14));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(10)) fu_astarF_28877_29816 (.out1(out_UUdata_converter_FU_56_i0_fu_astarF_28877_29816), .in1(out_ui_pointer_plus_expr_FU_16_16_16_101_i0_fu_astarF_28877_29352));
  IUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(1)) fu_astarF_28877_29819 (.out1(out_IUdata_converter_FU_57_i0_fu_astarF_28877_29819), .in1(out_UIdata_converter_FU_49_i0_fu_astarF_28877_29369));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(1), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_astarF_28877_29825 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_105_i3_fu_astarF_28877_29825), .in1(out_UUdata_converter_FU_56_i0_fu_astarF_28877_29816), .in2(out_IUdata_converter_FU_57_i0_fu_astarF_28877_29819));
  IUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(1)) fu_astarF_28877_29840 (.out1(out_IUdata_converter_FU_58_i0_fu_astarF_28877_29840), .in1(out_UIdata_converter_FU_49_i0_fu_astarF_28877_29369));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(1), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_astarF_28877_29846 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_105_i4_fu_astarF_28877_29846), .in1(out_UUdata_converter_FU_56_i0_fu_astarF_28877_29816), .in2(out_IUdata_converter_FU_58_i0_fu_astarF_28877_29840));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(10)) fu_astarF_28877_29855 (.out1(out_UUdata_converter_FU_66_i0_fu_astarF_28877_29855), .in1(out_ui_pointer_plus_expr_FU_16_16_16_101_i2_fu_astarF_28877_29429));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_astarF_28877_29858 (.out1(out_IUdata_converter_FU_67_i0_fu_astarF_28877_29858), .in1(out_UIdata_converter_FU_65_i0_fu_astarF_28877_29401));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(8), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_astarF_28877_29864 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_105_i5_fu_astarF_28877_29864), .in1(out_UUdata_converter_FU_66_i0_fu_astarF_28877_29855), .in2(out_IUdata_converter_FU_67_i0_fu_astarF_28877_29858));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29868 (.out1(out_UUdata_converter_FU_68_i0_fu_astarF_28877_29868), .in1(out_ui_pointer_plus_expr_FU_8_8_8_105_i6_fu_astarF_28877_29900));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_astarF_28877_29877 (.out1(out_ui_pointer_plus_expr_FU_8_0_8_104_i0_fu_astarF_28877_29877), .in1(out_UUdata_converter_FU_68_i0_fu_astarF_28877_29868), .in2(out_const_8));
  ge_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_astarF_28877_29880 (.out1(out_ge_expr_FU_8_0_8_84_i0_fu_astarF_28877_29880), .in1(out_PROXY_CTRLN_6_i0_PROXY_CTRLN_6_i0), .in2(out_const_0));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(9), .PRECISION(32)) fu_astarF_28877_29897 (.out1(out_ui_lshift_expr_FU_16_0_16_98_i0_fu_astarF_28877_29897), .in1(out_IUdata_converter_FU_67_i0_fu_astarF_28877_29858), .in2(out_const_6));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_astarF_28877_29900 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_105_i6_fu_astarF_28877_29900), .in1(out_reg_4_reg_4), .in2(out_ui_lshift_expr_FU_16_0_16_98_i0_fu_astarF_28877_29897));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_astarF_28877_29913 (.out1(out_addr_expr_FU_20_i0_fu_astarF_28877_29913), .in1(out_conv_out_const_11_8_32));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(8), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_astarF_28877_29926 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_105_i7_fu_astarF_28877_29926), .in1(out_reg_2_reg_2), .in2(out_IUdata_converter_FU_67_i0_fu_astarF_28877_29858));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_astarF_28877_29951 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_105_i8_fu_astarF_28877_29951), .in1(out_reg_0_reg_0), .in2(out_IUdata_converter_FU_67_i0_fu_astarF_28877_29858));
  gt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_astarF_28877_30075 (.out1(out_gt_expr_FU_8_0_8_85_i0_fu_astarF_28877_30075), .in1(out_plus_expr_FU_8_0_8_90_i0_fu_astarF_28877_29272), .in2(out_const_0));
  ui_eq_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_astarF_28877_30077 (.out1(out_ui_eq_expr_FU_8_0_8_95_i0_fu_astarF_28877_30077), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_array_28864_0), .in2(out_const_8));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_astarF_28877_30079 (.out1(out_ne_expr_FU_8_0_8_89_i0_fu_astarF_28877_30079), .in1(out_BMEMORY_CTRLN_81_i1_BMEMORY_CTRLN_81_i0), .in2(out_const_9));
  lt_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_astarF_28877_30081 (.out1(out_lt_expr_FU_16_16_16_87_i0_fu_astarF_28877_30081), .in1(out_plus_expr_FU_8_8_8_92_i2_fu_astarF_28877_29487), .in2(out_IIdata_converter_FU_62_i0_fu_astarF_28877_29489));
  ui_le_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_astarF_28877_30083 (.out1(out_ui_le_expr_FU_8_0_8_96_i0_fu_astarF_28877_30083), .in1(out_ui_plus_expr_FU_8_0_8_100_i0_fu_astarF_28877_29442), .in2(out_const_6));
  gt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_astarF_28877_30085 (.out1(out_gt_expr_FU_8_0_8_85_i1_fu_astarF_28877_30085), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28866_0), .in2(out_const_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerMout_data_ram_size2_0 (.out1(sig_in_bus_mergerMout_data_ram_size2_0), .in1(sig_in_vector_bus_mergerMout_data_ram_size2_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_oe_ram3_0 (.out1(sig_in_bus_mergerMout_oe_ram3_0), .in1(sig_in_vector_bus_mergerMout_oe_ram3_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_we_ram4_0 (.out1(sig_in_bus_mergerMout_we_ram4_0), .in1(sig_in_vector_bus_mergerMout_we_ram4_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_0 (.out1(sig_in_bus_mergerSout_DataRdy5_0), .in1(sig_in_vector_bus_mergerSout_DataRdy5_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_1 (.out1(sig_in_bus_mergerSout_DataRdy5_1), .in1(sig_in_vector_bus_mergerSout_DataRdy5_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_2 (.out1(sig_in_bus_mergerSout_DataRdy5_2), .in1(sig_in_vector_bus_mergerSout_DataRdy5_2));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_3 (.out1(sig_in_bus_mergerSout_DataRdy5_3), .in1(sig_in_vector_bus_mergerSout_DataRdy5_3));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_4 (.out1(sig_in_bus_mergerSout_DataRdy5_4), .in1(sig_in_vector_bus_mergerSout_DataRdy5_4));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_0 (.out1(sig_in_bus_mergerSout_Rdata_ram6_0), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_1 (.out1(sig_in_bus_mergerSout_Rdata_ram6_1), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_1));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_2 (.out1(sig_in_bus_mergerSout_Rdata_ram6_2), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_2));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_3 (.out1(sig_in_bus_mergerSout_Rdata_ram6_3), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_3));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_4 (.out1(sig_in_bus_mergerSout_Rdata_ram6_4), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_4));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288617_0 (.out1(sig_in_bus_mergerproxy_in1_288617_0), .in1(sig_in_vector_bus_mergerproxy_in1_288617_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288688_0 (.out1(sig_in_bus_mergerproxy_in1_288688_0), .in1(sig_in_vector_bus_mergerproxy_in1_288688_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in2_288619_0 (.out1(sig_in_bus_mergerproxy_in2_288619_0), .in1(sig_in_vector_bus_mergerproxy_in2_288619_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in2_2886810_0 (.out1(sig_in_bus_mergerproxy_in2_2886810_0), .in1(sig_in_vector_bus_mergerproxy_in2_2886810_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_2886111_0 (.out1(sig_in_bus_mergerproxy_in3_2886111_0), .in1(sig_in_vector_bus_mergerproxy_in3_2886111_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_2886812_0 (.out1(sig_in_bus_mergerproxy_in3_2886812_0), .in1(sig_in_vector_bus_mergerproxy_in3_2886812_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886113_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886113_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886113_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886814_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886814_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886814_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886115_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886115_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886115_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886816_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886816_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886816_0));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_14_i0_fu_astarF_28877_29587), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_15_i0_fu_astarF_28877_29614), .wenable(wrenable_reg_1));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_ui_cond_expr_FU_8_8_8_8_94_i1_fu_astarF_28877_29308), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_conv_out_MUX_143_reg_11_0_0_0_8_1), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_MUX_144_reg_12_0_0_0), .wenable(wrenable_reg_12));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_50_i0_fu_astarF_28877_29785), .wenable(wrenable_reg_13));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_53_i0_fu_astarF_28877_29805), .wenable(wrenable_reg_14));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_105_i3_fu_astarF_28877_29825), .wenable(wrenable_reg_15));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_105_i4_fu_astarF_28877_29846), .wenable(wrenable_reg_16));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_BMEMORY_CTRLN_81_i1_BMEMORY_CTRLN_81_i0), .wenable(wrenable_reg_17));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_54_i0_fu_astarF_28877_29486), .wenable(wrenable_reg_18));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_19 (.out1(out_reg_19_reg_19), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_8_8_92_i0_fu_astarF_28877_29371), .wenable(wrenable_reg_19));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_17_i0_fu_astarF_28877_29620), .wenable(wrenable_reg_2));
  register_STD #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_20 (.out1(out_reg_20_reg_20), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_105_i5_fu_astarF_28877_29864), .wenable(wrenable_reg_20));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_21 (.out1(out_reg_21_reg_21), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_0_8_104_i0_fu_astarF_28877_29877), .wenable(wrenable_reg_21));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_22 (.out1(out_reg_22_reg_22), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_105_i7_fu_astarF_28877_29926), .wenable(wrenable_reg_22));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_23 (.out1(out_reg_23_reg_23), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_105_i8_fu_astarF_28877_29951), .wenable(wrenable_reg_23));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_24 (.out1(out_reg_24_reg_24), .clock(clock), .reset(reset), .in1(out_BMEMORY_CTRLN_81_i0_BMEMORY_CTRLN_81_i0), .wenable(wrenable_reg_24));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_25 (.out1(out_reg_25_reg_25), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_69_i0_fu_astarF_28877_29420), .wenable(wrenable_reg_25));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_26 (.out1(out_reg_26_reg_26), .clock(clock), .reset(reset), .in1(out_MUX_159_reg_26_0_0_0), .wenable(wrenable_reg_26));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_27 (.out1(out_reg_27_reg_27), .clock(clock), .reset(reset), .in1(out_MUX_160_reg_27_0_0_0), .wenable(wrenable_reg_27));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_28 (.out1(out_reg_28_reg_28), .clock(clock), .reset(reset), .in1(out_MUX_161_reg_28_0_0_0), .wenable(wrenable_reg_28));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_18_i0_fu_astarF_28877_29634), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_10_i0_fu_astarF_28877_29644), .wenable(wrenable_reg_4));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_19_i0_fu_astarF_28877_29708), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_0_8_102_i2_fu_astarF_28877_29734), .wenable(wrenable_reg_6));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_20_i0_fu_astarF_28877_29913), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_MUX_167_reg_8_0_0_0), .wenable(wrenable_reg_8));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_0_8_91_i0_fu_astarF_28877_29311), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy5_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy5_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram6_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram6_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288617_ (.out1(proxy_in1_28861), .in1(sig_out_bus_mergerproxy_in1_288617_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288688_ (.out1(proxy_in1_28868), .in1(sig_out_bus_mergerproxy_in1_288688_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288619_ (.out1(proxy_in2_28861), .in1(sig_out_bus_mergerproxy_in2_288619_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2886810_ (.out1(proxy_in2_28868), .in1(sig_out_bus_mergerproxy_in2_2886810_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2886111_ (.out1(proxy_in3_28861), .in1(sig_out_bus_mergerproxy_in3_2886111_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2886812_ (.out1(proxy_in3_28868), .in1(sig_out_bus_mergerproxy_in3_2886812_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886113_ (.out1(proxy_sel_LOAD_28861), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886113_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886814_ (.out1(proxy_sel_LOAD_28868), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886814_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886115_ (.out1(proxy_sel_STORE_28861), .in1(sig_out_bus_mergerproxy_sel_STORE_2886115_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886816_ (.out1(proxy_sel_STORE_28868), .in1(sig_out_bus_mergerproxy_sel_STORE_2886816_));
  // io-signal post fix
  assign OUT_CONDITION_astarF_28877_29274 = out_read_cond_FU_21_i0_fu_astarF_28877_29274;
  assign OUT_CONDITION_astarF_28877_29316 = out_read_cond_FU_34_i0_fu_astarF_28877_29316;
  assign OUT_CONDITION_astarF_28877_29483 = out_read_cond_FU_59_i0_fu_astarF_28877_29483;
  assign OUT_CONDITION_astarF_28877_29490 = out_read_cond_FU_63_i0_fu_astarF_28877_29490;
  assign OUT_CONDITION_astarF_28877_29506 = out_read_cond_FU_70_i0_fu_astarF_28877_29506;
  assign OUT_CONDITION_astarF_28877_29512 = out_read_cond_FU_79_i0_fu_astarF_28877_29512;
  assign OUT_CONDITION_astarF_28877_29514 = out_read_cond_FU_80_i0_fu_astarF_28877_29514;

endmodule

// FSM based controller description for astarF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_astarF(done_port, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_STORE, fuselector_BMEMORY_CTRLN_81_i0_LOAD, fuselector_BMEMORY_CTRLN_81_i0_STORE, fuselector_BMEMORY_CTRLN_81_i1_LOAD, fuselector_BMEMORY_CTRLN_81_i1_STORE, selector_MUX_143_reg_11_0_0_0, selector_MUX_144_reg_12_0_0_0, selector_MUX_159_reg_26_0_0_0, selector_MUX_160_reg_27_0_0_0, selector_MUX_161_reg_28_0_0_0, selector_MUX_167_reg_8_0_0_0, selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0, selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1, selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_1_0_0, selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0, selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0, selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1, selector_MUX_25_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_1_0_0, selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_0, selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_1, selector_MUX_32_BMEMORY_CTRLN_81_i1_1_0_0, selector_MUX_53_PROXY_CTRLN_5_i0_0_0_0, selector_MUX_53_PROXY_CTRLN_5_i0_0_0_1, selector_MUX_54_PROXY_CTRLN_5_i0_1_0_0, selector_MUX_58_PROXY_CTRLN_6_i0_1_0_0, selector_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0, selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0, fuselector_PROXY_CTRLN_5_i0_LOAD, fuselector_PROXY_CTRLN_5_i0_STORE, fuselector_PROXY_CTRLN_6_i0_LOAD, fuselector_PROXY_CTRLN_6_i0_STORE, fuselector_PROXY_CTRLN_6_i1_LOAD, fuselector_PROXY_CTRLN_6_i1_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_astarF_28877_29274, OUT_CONDITION_astarF_28877_29316, OUT_CONDITION_astarF_28877_29483, OUT_CONDITION_astarF_28877_29490, OUT_CONDITION_astarF_28877_29506, OUT_CONDITION_astarF_28877_29512, OUT_CONDITION_astarF_28877_29514, clock, reset, start_port);
  // IN
  input OUT_CONDITION_astarF_28877_29274;
  input OUT_CONDITION_astarF_28877_29316;
  input OUT_CONDITION_astarF_28877_29483;
  input OUT_CONDITION_astarF_28877_29490;
  input OUT_CONDITION_astarF_28877_29506;
  input OUT_CONDITION_astarF_28877_29512;
  input OUT_CONDITION_astarF_28877_29514;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_STORE;
  output fuselector_BMEMORY_CTRLN_81_i0_LOAD;
  output fuselector_BMEMORY_CTRLN_81_i0_STORE;
  output fuselector_BMEMORY_CTRLN_81_i1_LOAD;
  output fuselector_BMEMORY_CTRLN_81_i1_STORE;
  output selector_MUX_143_reg_11_0_0_0;
  output selector_MUX_144_reg_12_0_0_0;
  output selector_MUX_159_reg_26_0_0_0;
  output selector_MUX_160_reg_27_0_0_0;
  output selector_MUX_161_reg_28_0_0_0;
  output selector_MUX_167_reg_8_0_0_0;
  output selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0;
  output selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1;
  output selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_1_0_0;
  output selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0;
  output selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0;
  output selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1;
  output selector_MUX_25_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_1_0_0;
  output selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_0;
  output selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_1;
  output selector_MUX_32_BMEMORY_CTRLN_81_i1_1_0_0;
  output selector_MUX_53_PROXY_CTRLN_5_i0_0_0_0;
  output selector_MUX_53_PROXY_CTRLN_5_i0_0_0_1;
  output selector_MUX_54_PROXY_CTRLN_5_i0_1_0_0;
  output selector_MUX_58_PROXY_CTRLN_6_i0_1_0_0;
  output selector_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0;
  output selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0;
  output fuselector_PROXY_CTRLN_5_i0_LOAD;
  output fuselector_PROXY_CTRLN_5_i0_STORE;
  output fuselector_PROXY_CTRLN_6_i0_LOAD;
  output fuselector_PROXY_CTRLN_6_i0_STORE;
  output fuselector_PROXY_CTRLN_6_i1_LOAD;
  output fuselector_PROXY_CTRLN_6_i1_STORE;
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
  output wrenable_reg_20;
  output wrenable_reg_21;
  output wrenable_reg_22;
  output wrenable_reg_23;
  output wrenable_reg_24;
  output wrenable_reg_25;
  output wrenable_reg_26;
  output wrenable_reg_27;
  output wrenable_reg_28;
  output wrenable_reg_3;
  output wrenable_reg_4;
  output wrenable_reg_5;
  output wrenable_reg_6;
  output wrenable_reg_7;
  output wrenable_reg_8;
  output wrenable_reg_9;
  parameter [26:0] S_0 = 27'b000000000000000000000000001,
    S_1 = 27'b000000000000000000000000010,
    S_26 = 27'b100000000000000000000000000,
    S_2 = 27'b000000000000000000000000100,
    S_3 = 27'b000000000000000000000001000,
    S_4 = 27'b000000000000000000000010000,
    S_5 = 27'b000000000000000000000100000,
    S_6 = 27'b000000000000000000001000000,
    S_24 = 27'b001000000000000000000000000,
    S_7 = 27'b000000000000000000010000000,
    S_8 = 27'b000000000000000000100000000,
    S_9 = 27'b000000000000000001000000000,
    S_10 = 27'b000000000000000010000000000,
    S_11 = 27'b000000000000000100000000000,
    S_12 = 27'b000000000000001000000000000,
    S_13 = 27'b000000000000010000000000000,
    S_14 = 27'b000000000000100000000000000,
    S_15 = 27'b000000000001000000000000000,
    S_16 = 27'b000000000010000000000000000,
    S_17 = 27'b000000000100000000000000000,
    S_18 = 27'b000000001000000000000000000,
    S_19 = 27'b000000010000000000000000000,
    S_20 = 27'b000000100000000000000000000,
    S_21 = 27'b000001000000000000000000000,
    S_22 = 27'b000010000000000000000000000,
    S_23 = 27'b000100000000000000000000000,
    S_25 = 27'b010000000000000000000000000;
  reg [26:0] _present_state, _next_state;
  reg done_port;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_STORE;
  reg fuselector_BMEMORY_CTRLN_81_i0_LOAD;
  reg fuselector_BMEMORY_CTRLN_81_i0_STORE;
  reg fuselector_BMEMORY_CTRLN_81_i1_LOAD;
  reg fuselector_BMEMORY_CTRLN_81_i1_STORE;
  reg selector_MUX_143_reg_11_0_0_0;
  reg selector_MUX_144_reg_12_0_0_0;
  reg selector_MUX_159_reg_26_0_0_0;
  reg selector_MUX_160_reg_27_0_0_0;
  reg selector_MUX_161_reg_28_0_0_0;
  reg selector_MUX_167_reg_8_0_0_0;
  reg selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0;
  reg selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1;
  reg selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_1_0_0;
  reg selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0;
  reg selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0;
  reg selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1;
  reg selector_MUX_25_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_1_0_0;
  reg selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_0;
  reg selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_1;
  reg selector_MUX_32_BMEMORY_CTRLN_81_i1_1_0_0;
  reg selector_MUX_53_PROXY_CTRLN_5_i0_0_0_0;
  reg selector_MUX_53_PROXY_CTRLN_5_i0_0_0_1;
  reg selector_MUX_54_PROXY_CTRLN_5_i0_1_0_0;
  reg selector_MUX_58_PROXY_CTRLN_6_i0_1_0_0;
  reg selector_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0;
  reg selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0;
  reg fuselector_PROXY_CTRLN_5_i0_LOAD;
  reg fuselector_PROXY_CTRLN_5_i0_STORE;
  reg fuselector_PROXY_CTRLN_6_i0_LOAD;
  reg fuselector_PROXY_CTRLN_6_i0_STORE;
  reg fuselector_PROXY_CTRLN_6_i1_LOAD;
  reg fuselector_PROXY_CTRLN_6_i1_STORE;
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
  reg wrenable_reg_20;
  reg wrenable_reg_21;
  reg wrenable_reg_22;
  reg wrenable_reg_23;
  reg wrenable_reg_24;
  reg wrenable_reg_25;
  reg wrenable_reg_26;
  reg wrenable_reg_27;
  reg wrenable_reg_28;
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
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_STORE = 1'b0;
    fuselector_BMEMORY_CTRLN_81_i0_LOAD = 1'b0;
    fuselector_BMEMORY_CTRLN_81_i0_STORE = 1'b0;
    fuselector_BMEMORY_CTRLN_81_i1_LOAD = 1'b0;
    fuselector_BMEMORY_CTRLN_81_i1_STORE = 1'b0;
    selector_MUX_143_reg_11_0_0_0 = 1'b0;
    selector_MUX_144_reg_12_0_0_0 = 1'b0;
    selector_MUX_159_reg_26_0_0_0 = 1'b0;
    selector_MUX_160_reg_27_0_0_0 = 1'b0;
    selector_MUX_161_reg_28_0_0_0 = 1'b0;
    selector_MUX_167_reg_8_0_0_0 = 1'b0;
    selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0 = 1'b0;
    selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1 = 1'b0;
    selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_1_0_0 = 1'b0;
    selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0 = 1'b0;
    selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0 = 1'b0;
    selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1 = 1'b0;
    selector_MUX_25_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_1_0_0 = 1'b0;
    selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_0 = 1'b0;
    selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_1 = 1'b0;
    selector_MUX_32_BMEMORY_CTRLN_81_i1_1_0_0 = 1'b0;
    selector_MUX_53_PROXY_CTRLN_5_i0_0_0_0 = 1'b0;
    selector_MUX_53_PROXY_CTRLN_5_i0_0_0_1 = 1'b0;
    selector_MUX_54_PROXY_CTRLN_5_i0_1_0_0 = 1'b0;
    selector_MUX_58_PROXY_CTRLN_6_i0_1_0_0 = 1'b0;
    selector_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0 = 1'b0;
    selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0 = 1'b0;
    fuselector_PROXY_CTRLN_5_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_5_i0_STORE = 1'b0;
    fuselector_PROXY_CTRLN_6_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_6_i0_STORE = 1'b0;
    fuselector_PROXY_CTRLN_6_i1_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_6_i1_STORE = 1'b0;
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
    wrenable_reg_20 = 1'b0;
    wrenable_reg_21 = 1'b0;
    wrenable_reg_22 = 1'b0;
    wrenable_reg_23 = 1'b0;
    wrenable_reg_24 = 1'b0;
    wrenable_reg_25 = 1'b0;
    wrenable_reg_26 = 1'b0;
    wrenable_reg_27 = 1'b0;
    wrenable_reg_28 = 1'b0;
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
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_STORE = 1'b1;
          fuselector_PROXY_CTRLN_5_i0_STORE = 1'b1;
          fuselector_PROXY_CTRLN_6_i0_STORE = 1'b1;
          fuselector_PROXY_CTRLN_6_i1_STORE = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_6 = 1'b1;
          wrenable_reg_7 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          selector_MUX_143_reg_11_0_0_0 = 1'bX;
          selector_MUX_144_reg_12_0_0_0 = 1'bX;
          selector_MUX_159_reg_26_0_0_0 = 1'bX;
          selector_MUX_160_reg_27_0_0_0 = 1'bX;
          selector_MUX_161_reg_28_0_0_0 = 1'bX;
          selector_MUX_167_reg_8_0_0_0 = 1'bX;
          selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0 = 1'bX;
          selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1 = 1'bX;
          selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_1_0_0 = 1'bX;
          selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0 = 1'bX;
          selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0 = 1'bX;
          selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1 = 1'bX;
          selector_MUX_25_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_1_0_0 = 1'bX;
          selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_0 = 1'bX;
          selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_1 = 1'bX;
          selector_MUX_32_BMEMORY_CTRLN_81_i1_1_0_0 = 1'bX;
          selector_MUX_53_PROXY_CTRLN_5_i0_0_0_0 = 1'bX;
          selector_MUX_53_PROXY_CTRLN_5_i0_0_0_1 = 1'bX;
          selector_MUX_54_PROXY_CTRLN_5_i0_1_0_0 = 1'bX;
          selector_MUX_58_PROXY_CTRLN_6_i0_1_0_0 = 1'bX;
          selector_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0 = 1'bX;
          selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0 = 1'bX;
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
          wrenable_reg_20 = 1'bX;
          wrenable_reg_21 = 1'bX;
          wrenable_reg_22 = 1'bX;
          wrenable_reg_23 = 1'bX;
          wrenable_reg_24 = 1'bX;
          wrenable_reg_25 = 1'bX;
          wrenable_reg_26 = 1'bX;
          wrenable_reg_27 = 1'bX;
          wrenable_reg_28 = 1'bX;
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
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE = 1'b1;
          selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_1_0_0 = 1'b1;
          wrenable_reg_8 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29274 == 1'b1)
            begin
              _next_state = S_2;
            end
          else
            begin
              _next_state = S_26;
              done_port = 1'b1;
              wrenable_reg_8 = 1'b0;
            end
        end
      S_26 :
        begin
          _next_state = S_0;
        end
      S_2 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_LOAD = 1'b1;
          selector_MUX_25_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_1_0_0 = 1'b1;
          wrenable_reg_9 = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE = 1'b1;
          selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1 = 1'b1;
          selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_1_0_0 = 1'b1;
          selector_MUX_54_PROXY_CTRLN_5_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_5_i0_STORE = 1'b1;
          wrenable_reg_10 = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE = 1'b1;
          _next_state = S_5;
        end
      S_5 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD = 1'b1;
          _next_state = S_6;
        end
      S_6 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE = 1'b1;
          selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0 = 1'b1;
          selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1 = 1'b1;
          wrenable_reg_12 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29316 == 1'b0)
            begin
              _next_state = S_7;
            end
          else
            begin
              _next_state = S_24;
              done_port = 1'b1;
              wrenable_reg_12 = 1'b0;
            end
        end
      S_24 :
        begin
          _next_state = S_0;
        end
      S_7 :
        begin
          selector_MUX_143_reg_11_0_0_0 = 1'b1;
          selector_MUX_53_PROXY_CTRLN_5_i0_0_0_1 = 1'b1;
          selector_MUX_54_PROXY_CTRLN_5_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_5_i0_STORE = 1'b1;
          wrenable_reg_11 = 1'b1;
          _next_state = S_8;
        end
      S_8 :
        begin
          fuselector_BMEMORY_CTRLN_81_i1_LOAD = 1'b1;
          wrenable_reg_13 = 1'b1;
          wrenable_reg_14 = 1'b1;
          wrenable_reg_15 = 1'b1;
          wrenable_reg_16 = 1'b1;
          _next_state = S_9;
        end
      S_9 :
        begin
          selector_MUX_160_reg_27_0_0_0 = 1'b1;
          wrenable_reg_17 = 1'b1;
          wrenable_reg_18 = 1'b1;
          wrenable_reg_27 = 1'b1;
          wrenable_reg_28 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29483 == 1'b1)
            begin
              _next_state = S_10;
              selector_MUX_160_reg_27_0_0_0 = 1'b0;
              wrenable_reg_27 = 1'b0;
              wrenable_reg_28 = 1'b0;
            end
          else
            begin
              _next_state = S_21;
              wrenable_reg_17 = 1'b0;
              wrenable_reg_18 = 1'b0;
            end
        end
      S_10 :
        begin
          fuselector_BMEMORY_CTRLN_81_i0_LOAD = 1'b1;
          fuselector_BMEMORY_CTRLN_81_i1_LOAD = 1'b1;
          selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_1 = 1'b1;
          selector_MUX_32_BMEMORY_CTRLN_81_i1_1_0_0 = 1'b1;
          _next_state = S_11;
        end
      S_11 :
        begin
          selector_MUX_160_reg_27_0_0_0 = 1'b1;
          wrenable_reg_19 = 1'b1;
          wrenable_reg_27 = 1'b1;
          wrenable_reg_28 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29490 == 1'b1)
            begin
              _next_state = S_12;
              selector_MUX_160_reg_27_0_0_0 = 1'b0;
              wrenable_reg_27 = 1'b0;
              wrenable_reg_28 = 1'b0;
            end
          else
            begin
              _next_state = S_21;
              wrenable_reg_19 = 1'b0;
            end
        end
      S_12 :
        begin
          fuselector_BMEMORY_CTRLN_81_i0_STORE = 1'b1;
          _next_state = S_13;
        end
      S_13 :
        begin
          selector_MUX_54_PROXY_CTRLN_5_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_5_i0_LOAD = 1'b1;
          _next_state = S_14;
        end
      S_14 :
        begin
          selector_MUX_161_reg_28_0_0_0 = 1'b1;
          wrenable_reg_20 = 1'b1;
          wrenable_reg_21 = 1'b1;
          wrenable_reg_22 = 1'b1;
          wrenable_reg_23 = 1'b1;
          wrenable_reg_28 = 1'b1;
          _next_state = S_15;
        end
      S_15 :
        begin
          fuselector_BMEMORY_CTRLN_81_i0_LOAD = 1'b1;
          selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_0 = 1'b1;
          _next_state = S_16;
        end
      S_16 :
        begin
          selector_MUX_58_PROXY_CTRLN_6_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_6_i0_LOAD = 1'b1;
          wrenable_reg_24 = 1'b1;
          wrenable_reg_25 = 1'b1;
          _next_state = S_17;
        end
      S_17 :
        begin
          selector_MUX_159_reg_26_0_0_0 = 1'b1;
          wrenable_reg_26 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29506 == 1'b1)
            begin
              _next_state = S_19;
            end
          else
            begin
              _next_state = S_18;
              selector_MUX_159_reg_26_0_0_0 = 1'b0;
              wrenable_reg_26 = 1'b0;
            end
        end
      S_18 :
        begin
          wrenable_reg_26 = 1'b1;
          _next_state = S_19;
        end
      S_19 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE = 1'b1;
          selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_1_0_0 = 1'b1;
          selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0 = 1'b1;
          _next_state = S_20;
        end
      S_20 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE = 1'b1;
          selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0 = 1'b1;
          selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_1_0_0 = 1'b1;
          selector_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0 = 1'b1;
          selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0 = 1'b1;
          wrenable_reg_27 = 1'b1;
          _next_state = S_21;
        end
      S_21 :
        begin
          selector_MUX_144_reg_12_0_0_0 = 1'b1;
          selector_MUX_53_PROXY_CTRLN_5_i0_0_0_0 = 1'b1;
          selector_MUX_54_PROXY_CTRLN_5_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_5_i0_STORE = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_12 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29512 == 1'b1)
            begin
              _next_state = S_8;
            end
          else
            begin
              _next_state = S_22;
              selector_MUX_144_reg_12_0_0_0 = 1'b0;
              wrenable_reg_11 = 1'b0;
              wrenable_reg_12 = 1'b0;
            end
        end
      S_22 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD = 1'b1;
          selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_1_0_0 = 1'b1;
          _next_state = S_23;
        end
      S_23 :
        begin
          selector_MUX_167_reg_8_0_0_0 = 1'b1;
          wrenable_reg_8 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29514 == 1'b1)
            begin
              _next_state = S_2;
            end
          else
            begin
              _next_state = S_25;
              done_port = 1'b1;
              selector_MUX_167_reg_8_0_0_0 = 1'b0;
              wrenable_reg_8 = 1'b0;
            end
        end
      S_25 :
        begin
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_143_reg_11_0_0_0 = 1'bX;
          selector_MUX_144_reg_12_0_0_0 = 1'bX;
          selector_MUX_159_reg_26_0_0_0 = 1'bX;
          selector_MUX_160_reg_27_0_0_0 = 1'bX;
          selector_MUX_161_reg_28_0_0_0 = 1'bX;
          selector_MUX_167_reg_8_0_0_0 = 1'bX;
          selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0 = 1'bX;
          selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1 = 1'bX;
          selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_1_0_0 = 1'bX;
          selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0 = 1'bX;
          selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0 = 1'bX;
          selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1 = 1'bX;
          selector_MUX_25_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_1_0_0 = 1'bX;
          selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_0 = 1'bX;
          selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_1 = 1'bX;
          selector_MUX_32_BMEMORY_CTRLN_81_i1_1_0_0 = 1'bX;
          selector_MUX_53_PROXY_CTRLN_5_i0_0_0_0 = 1'bX;
          selector_MUX_53_PROXY_CTRLN_5_i0_0_0_1 = 1'bX;
          selector_MUX_54_PROXY_CTRLN_5_i0_1_0_0 = 1'bX;
          selector_MUX_58_PROXY_CTRLN_6_i0_1_0_0 = 1'bX;
          selector_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0 = 1'bX;
          selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0 = 1'bX;
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
          wrenable_reg_20 = 1'bX;
          wrenable_reg_21 = 1'bX;
          wrenable_reg_22 = 1'bX;
          wrenable_reg_23 = 1'bX;
          wrenable_reg_24 = 1'bX;
          wrenable_reg_25 = 1'bX;
          wrenable_reg_26 = 1'bX;
          wrenable_reg_27 = 1'bX;
          wrenable_reg_28 = 1'bX;
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

// Top component for astarF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module astarF(clock, reset, start_port, done_port, a, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, proxy_out1_28861, proxy_out1_28868, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Sout_Rdata_ram, Sout_DataRdy, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size);
  parameter MEM_var_28861_28879=32, MEM_var_28862_28877=128, MEM_var_28864_28877=160, MEM_var_28865_28877=192, MEM_var_28866_28877=224, MEM_var_28867_28877=256, MEM_var_28868_28879=64;
  // IN
  input clock;
  input reset;
  input start_port;
  input [31:0] a;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [17:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [15:0] proxy_out1_28861;
  input [15:0] proxy_out1_28868;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [17:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  // OUT
  output done_port;
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [15:0] proxy_in1_28861;
  output [17:0] proxy_in2_28861;
  output [7:0] proxy_in3_28861;
  output [1:0] proxy_sel_LOAD_28861;
  output [1:0] proxy_sel_STORE_28861;
  output [15:0] proxy_in1_28868;
  output [17:0] proxy_in2_28868;
  output [7:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [17:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  // Component and signal declarations
  wire OUT_CONDITION_astarF_28877_29274;
  wire OUT_CONDITION_astarF_28877_29316;
  wire OUT_CONDITION_astarF_28877_29483;
  wire OUT_CONDITION_astarF_28877_29490;
  wire OUT_CONDITION_astarF_28877_29506;
  wire OUT_CONDITION_astarF_28877_29512;
  wire OUT_CONDITION_astarF_28877_29514;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_STORE;
  wire fuselector_BMEMORY_CTRLN_81_i0_LOAD;
  wire fuselector_BMEMORY_CTRLN_81_i0_STORE;
  wire fuselector_BMEMORY_CTRLN_81_i1_LOAD;
  wire fuselector_BMEMORY_CTRLN_81_i1_STORE;
  wire fuselector_PROXY_CTRLN_5_i0_LOAD;
  wire fuselector_PROXY_CTRLN_5_i0_STORE;
  wire fuselector_PROXY_CTRLN_6_i0_LOAD;
  wire fuselector_PROXY_CTRLN_6_i0_STORE;
  wire fuselector_PROXY_CTRLN_6_i1_LOAD;
  wire fuselector_PROXY_CTRLN_6_i1_STORE;
  wire selector_MUX_143_reg_11_0_0_0;
  wire selector_MUX_144_reg_12_0_0_0;
  wire selector_MUX_159_reg_26_0_0_0;
  wire selector_MUX_160_reg_27_0_0_0;
  wire selector_MUX_161_reg_28_0_0_0;
  wire selector_MUX_167_reg_8_0_0_0;
  wire selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0;
  wire selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1;
  wire selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_1_0_0;
  wire selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0;
  wire selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0;
  wire selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1;
  wire selector_MUX_25_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_1_0_0;
  wire selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_0;
  wire selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_1;
  wire selector_MUX_32_BMEMORY_CTRLN_81_i1_1_0_0;
  wire selector_MUX_53_PROXY_CTRLN_5_i0_0_0_0;
  wire selector_MUX_53_PROXY_CTRLN_5_i0_0_0_1;
  wire selector_MUX_54_PROXY_CTRLN_5_i0_1_0_0;
  wire selector_MUX_58_PROXY_CTRLN_6_i0_1_0_0;
  wire selector_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0;
  wire selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0;
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
  wire wrenable_reg_20;
  wire wrenable_reg_21;
  wire wrenable_reg_22;
  wire wrenable_reg_23;
  wire wrenable_reg_24;
  wire wrenable_reg_25;
  wire wrenable_reg_26;
  wire wrenable_reg_27;
  wire wrenable_reg_28;
  wire wrenable_reg_3;
  wire wrenable_reg_4;
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  controller_astarF Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_STORE), .fuselector_BMEMORY_CTRLN_81_i0_LOAD(fuselector_BMEMORY_CTRLN_81_i0_LOAD), .fuselector_BMEMORY_CTRLN_81_i0_STORE(fuselector_BMEMORY_CTRLN_81_i0_STORE), .fuselector_BMEMORY_CTRLN_81_i1_LOAD(fuselector_BMEMORY_CTRLN_81_i1_LOAD), .fuselector_BMEMORY_CTRLN_81_i1_STORE(fuselector_BMEMORY_CTRLN_81_i1_STORE), .selector_MUX_143_reg_11_0_0_0(selector_MUX_143_reg_11_0_0_0), .selector_MUX_144_reg_12_0_0_0(selector_MUX_144_reg_12_0_0_0), .selector_MUX_159_reg_26_0_0_0(selector_MUX_159_reg_26_0_0_0), .selector_MUX_160_reg_27_0_0_0(selector_MUX_160_reg_27_0_0_0), .selector_MUX_161_reg_28_0_0_0(selector_MUX_161_reg_28_0_0_0), .selector_MUX_167_reg_8_0_0_0(selector_MUX_167_reg_8_0_0_0), .selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0(selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0), .selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1(selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1), .selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_1_0_0(selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_1_0_0), .selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0(selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0), .selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0(selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0), .selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1(selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1), .selector_MUX_25_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_1_0_0(selector_MUX_25_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_1_0_0), .selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_0(selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_0), .selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_1(selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_1), .selector_MUX_32_BMEMORY_CTRLN_81_i1_1_0_0(selector_MUX_32_BMEMORY_CTRLN_81_i1_1_0_0), .selector_MUX_53_PROXY_CTRLN_5_i0_0_0_0(selector_MUX_53_PROXY_CTRLN_5_i0_0_0_0), .selector_MUX_53_PROXY_CTRLN_5_i0_0_0_1(selector_MUX_53_PROXY_CTRLN_5_i0_0_0_1), .selector_MUX_54_PROXY_CTRLN_5_i0_1_0_0(selector_MUX_54_PROXY_CTRLN_5_i0_1_0_0), .selector_MUX_58_PROXY_CTRLN_6_i0_1_0_0(selector_MUX_58_PROXY_CTRLN_6_i0_1_0_0), .selector_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0(selector_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0), .selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0(selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0), .fuselector_PROXY_CTRLN_5_i0_LOAD(fuselector_PROXY_CTRLN_5_i0_LOAD), .fuselector_PROXY_CTRLN_5_i0_STORE(fuselector_PROXY_CTRLN_5_i0_STORE), .fuselector_PROXY_CTRLN_6_i0_LOAD(fuselector_PROXY_CTRLN_6_i0_LOAD), .fuselector_PROXY_CTRLN_6_i0_STORE(fuselector_PROXY_CTRLN_6_i0_STORE), .fuselector_PROXY_CTRLN_6_i1_LOAD(fuselector_PROXY_CTRLN_6_i1_LOAD), .fuselector_PROXY_CTRLN_6_i1_STORE(fuselector_PROXY_CTRLN_6_i1_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_astarF_28877_29274(OUT_CONDITION_astarF_28877_29274), .OUT_CONDITION_astarF_28877_29316(OUT_CONDITION_astarF_28877_29316), .OUT_CONDITION_astarF_28877_29483(OUT_CONDITION_astarF_28877_29483), .OUT_CONDITION_astarF_28877_29490(OUT_CONDITION_astarF_28877_29490), .OUT_CONDITION_astarF_28877_29506(OUT_CONDITION_astarF_28877_29506), .OUT_CONDITION_astarF_28877_29512(OUT_CONDITION_astarF_28877_29512), .OUT_CONDITION_astarF_28877_29514(OUT_CONDITION_astarF_28877_29514), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_astarF #(.MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28862_28877(MEM_var_28862_28877), .MEM_var_28864_28877(MEM_var_28864_28877), .MEM_var_28865_28877(MEM_var_28865_28877), .MEM_var_28866_28877(MEM_var_28866_28877), .MEM_var_28867_28877(MEM_var_28867_28877), .MEM_var_28868_28879(MEM_var_28868_28879)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .proxy_in1_28861(proxy_in1_28861), .proxy_in2_28861(proxy_in2_28861), .proxy_in3_28861(proxy_in3_28861), .proxy_sel_LOAD_28861(proxy_sel_LOAD_28861), .proxy_sel_STORE_28861(proxy_sel_STORE_28861), .proxy_in1_28868(proxy_in1_28868), .proxy_in2_28868(proxy_in2_28868), .proxy_in3_28868(proxy_in3_28868), .proxy_sel_LOAD_28868(proxy_sel_LOAD_28868), .proxy_sel_STORE_28868(proxy_sel_STORE_28868), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_CONDITION_astarF_28877_29274(OUT_CONDITION_astarF_28877_29274), .OUT_CONDITION_astarF_28877_29316(OUT_CONDITION_astarF_28877_29316), .OUT_CONDITION_astarF_28877_29483(OUT_CONDITION_astarF_28877_29483), .OUT_CONDITION_astarF_28877_29490(OUT_CONDITION_astarF_28877_29490), .OUT_CONDITION_astarF_28877_29506(OUT_CONDITION_astarF_28877_29506), .OUT_CONDITION_astarF_28877_29512(OUT_CONDITION_astarF_28877_29512), .OUT_CONDITION_astarF_28877_29514(OUT_CONDITION_astarF_28877_29514), .clock(clock), .reset(reset), .in_port_a(a), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28868(proxy_out1_28868), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_STORE), .fuselector_BMEMORY_CTRLN_81_i0_LOAD(fuselector_BMEMORY_CTRLN_81_i0_LOAD), .fuselector_BMEMORY_CTRLN_81_i0_STORE(fuselector_BMEMORY_CTRLN_81_i0_STORE), .fuselector_BMEMORY_CTRLN_81_i1_LOAD(fuselector_BMEMORY_CTRLN_81_i1_LOAD), .fuselector_BMEMORY_CTRLN_81_i1_STORE(fuselector_BMEMORY_CTRLN_81_i1_STORE), .selector_MUX_143_reg_11_0_0_0(selector_MUX_143_reg_11_0_0_0), .selector_MUX_144_reg_12_0_0_0(selector_MUX_144_reg_12_0_0_0), .selector_MUX_159_reg_26_0_0_0(selector_MUX_159_reg_26_0_0_0), .selector_MUX_160_reg_27_0_0_0(selector_MUX_160_reg_27_0_0_0), .selector_MUX_161_reg_28_0_0_0(selector_MUX_161_reg_28_0_0_0), .selector_MUX_167_reg_8_0_0_0(selector_MUX_167_reg_8_0_0_0), .selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0(selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0), .selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1(selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1), .selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_1_0_0(selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_1_0_0), .selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0(selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0), .selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0(selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0), .selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1(selector_MUX_21_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1), .selector_MUX_25_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_1_0_0(selector_MUX_25_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i1_1_0_0), .selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_0(selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_0), .selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_1(selector_MUX_29_BMEMORY_CTRLN_81_i0_1_0_1), .selector_MUX_32_BMEMORY_CTRLN_81_i1_1_0_0(selector_MUX_32_BMEMORY_CTRLN_81_i1_1_0_0), .selector_MUX_53_PROXY_CTRLN_5_i0_0_0_0(selector_MUX_53_PROXY_CTRLN_5_i0_0_0_0), .selector_MUX_53_PROXY_CTRLN_5_i0_0_0_1(selector_MUX_53_PROXY_CTRLN_5_i0_0_0_1), .selector_MUX_54_PROXY_CTRLN_5_i0_1_0_0(selector_MUX_54_PROXY_CTRLN_5_i0_1_0_0), .selector_MUX_58_PROXY_CTRLN_6_i0_1_0_0(selector_MUX_58_PROXY_CTRLN_6_i0_1_0_0), .selector_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0(selector_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0), .selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0(selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0), .fuselector_PROXY_CTRLN_5_i0_LOAD(fuselector_PROXY_CTRLN_5_i0_LOAD), .fuselector_PROXY_CTRLN_5_i0_STORE(fuselector_PROXY_CTRLN_5_i0_STORE), .fuselector_PROXY_CTRLN_6_i0_LOAD(fuselector_PROXY_CTRLN_6_i0_LOAD), .fuselector_PROXY_CTRLN_6_i0_STORE(fuselector_PROXY_CTRLN_6_i0_STORE), .fuselector_PROXY_CTRLN_6_i1_LOAD(fuselector_PROXY_CTRLN_6_i1_LOAD), .fuselector_PROXY_CTRLN_6_i1_STORE(fuselector_PROXY_CTRLN_6_i1_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_extract_bit_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output out1;
  assign out1 = (in1 >> in2)&1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module multi_read_cond_FU(in1, out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_out1=1;
  // IN
  input [(PORTSIZE_in1*BITSIZE_in1)+(-1):0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module truth_and_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 && in2;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module truth_not_expr_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = !in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module truth_xor_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = (in1!={BITSIZE_in1{1'b0}}) ^ (in2!={BITSIZE_in2{1'b0}});
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2016-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_bit_ior_concat_expr_FU(in1, in2, in3, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_in3=1, BITSIZE_out1=1, OFFSET_PARAMETER=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  input [BITSIZE_in3-1:0] in3;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  parameter nbit_out = BITSIZE_out1 > OFFSET_PARAMETER ? BITSIZE_out1 : 1+OFFSET_PARAMETER;
  wire [nbit_out-1:0] tmp_in1;
  wire [OFFSET_PARAMETER-1:0] tmp_in2;
  generate
    if(BITSIZE_in1 >= nbit_out)
      assign tmp_in1=in1[nbit_out-1:0];
    else
      assign tmp_in1={{(nbit_out-BITSIZE_in1){1'b0}},in1};
  endgenerate
  generate
    if(BITSIZE_in2 >= OFFSET_PARAMETER)
      assign tmp_in2=in2[OFFSET_PARAMETER-1:0];
    else
      assign tmp_in2={{(OFFSET_PARAMETER-BITSIZE_in2){1'b0}},in2};
  endgenerate
  assign out1 = {tmp_in1[nbit_out-1:OFFSET_PARAMETER] , tmp_in2};
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
module ui_negate_expr_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = -in1;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ui_rshift_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1, PRECISION=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
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
      assign out1 = in1 >> (in2[arg2_bitsize-1:0]);
    else
      assign out1 = in1 >> in2;
  endgenerate

endmodule

// Datapath RTL description for make_oriented
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_make_oriented(clock, reset, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, proxy_out1_28861, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_out1_28868, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE, selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0, selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0, selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1, selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2, selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0, selector_MUX_13_PROXY_CTRLN_2_i0_1_1_1, selector_MUX_36_reg_10_0_0_0, selector_MUX_52_reg_9_0_0_0, selector_MUX_52_reg_9_0_0_1, selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0, selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_make_oriented_28870_29026, OUT_CONDITION_make_oriented_28870_29043, OUT_MULTIIF_make_oriented_28870_30203);
  parameter MEM_var_28859_28870=96, MEM_var_28861_28879=32, MEM_var_28868_28879=64;
  // IN
  input clock;
  input reset;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [17:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [15:0] proxy_out1_28861;
  input [15:0] proxy_out1_28868;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE;
  input selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0;
  input selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0;
  input selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1;
  input selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2;
  input selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0;
  input selector_MUX_13_PROXY_CTRLN_2_i0_1_1_1;
  input selector_MUX_36_reg_10_0_0_0;
  input selector_MUX_52_reg_9_0_0_0;
  input selector_MUX_52_reg_9_0_0_1;
  input selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0;
  input selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0;
  input fuselector_PROXY_CTRLN_1_i0_LOAD;
  input fuselector_PROXY_CTRLN_1_i0_STORE;
  input fuselector_PROXY_CTRLN_2_i0_LOAD;
  input fuselector_PROXY_CTRLN_2_i0_STORE;
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
  input wrenable_reg_2;
  input wrenable_reg_3;
  input wrenable_reg_4;
  input wrenable_reg_5;
  input wrenable_reg_6;
  input wrenable_reg_7;
  input wrenable_reg_8;
  input wrenable_reg_9;
  // OUT
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [15:0] proxy_in1_28861;
  output [17:0] proxy_in2_28861;
  output [7:0] proxy_in3_28861;
  output [1:0] proxy_sel_LOAD_28861;
  output [1:0] proxy_sel_STORE_28861;
  output [15:0] proxy_in1_28868;
  output [17:0] proxy_in2_28868;
  output [7:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output OUT_CONDITION_make_oriented_28870_29026;
  output OUT_CONDITION_make_oriented_28870_29043;
  output [1:0] OUT_MULTIIF_make_oriented_28870_30203;
  // Component and signal declarations
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_2_i0_out1_1;
  wire [7:0] null_out_signal_array_28859_0_out1_0;
  wire [7:0] null_out_signal_array_28859_0_out1_1;
  wire [7:0] null_out_signal_array_28859_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_28859_0_proxy_out1_1;
  wire [7:0] out_IUdata_converter_FU_25_i0_fu_make_oriented_28870_28988;
  wire [7:0] out_MUX_12_PROXY_CTRLN_2_i0_0_0_0;
  wire [8:0] out_MUX_13_PROXY_CTRLN_2_i0_1_0_0;
  wire [8:0] out_MUX_13_PROXY_CTRLN_2_i0_1_0_1;
  wire [8:0] out_MUX_13_PROXY_CTRLN_2_i0_1_0_2;
  wire [8:0] out_MUX_13_PROXY_CTRLN_2_i0_1_1_0;
  wire [8:0] out_MUX_13_PROXY_CTRLN_2_i0_1_1_1;
  wire out_MUX_36_reg_10_0_0_0;
  wire [31:0] out_MUX_52_reg_9_0_0_0;
  wire [31:0] out_MUX_52_reg_9_0_0_1;
  wire [7:0] out_MUX_8_PROXY_CTRLN_1_i0_0_0_0;
  wire [8:0] out_MUX_9_PROXY_CTRLN_1_i0_1_0_0;
  wire [7:0] out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0;
  wire signed [7:0] out_UIdata_converter_FU_26_i0_fu_make_oriented_28870_28977;
  wire out_UUdata_converter_FU_14_i0_fu_make_oriented_28870_30048;
  wire out_UUdata_converter_FU_15_i0_fu_make_oriented_28870_30026;
  wire [6:0] out_UUdata_converter_FU_23_i0_fu_make_oriented_28870_28966;
  wire [31:0] out_UUdata_converter_FU_7_i0_fu_make_oriented_28870_28928;
  wire [5:0] out_addr_expr_FU_5_i0_fu_make_oriented_28870_29974;
  wire [31:0] out_addr_expr_FU_6_i0_fu_make_oriented_28870_29977;
  wire [6:0] out_addr_expr_FU_8_i0_fu_make_oriented_28870_30066;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [6:0] out_const_10;
  wire [7:0] out_const_2;
  wire [4:0] out_const_3;
  wire out_const_4;
  wire [1:0] out_const_5;
  wire [1:0] out_const_6;
  wire [7:0] out_const_7;
  wire [5:0] out_const_8;
  wire [8:0] out_const_9;
  wire [8:0] out_conv_out_UUdata_converter_FU_23_i0_fu_make_oriented_28870_28966_7_9;
  wire [8:0] out_conv_out_addr_expr_FU_5_i0_fu_make_oriented_28870_29974_6_9;
  wire [31:0] out_conv_out_const_10_7_32;
  wire [3:0] out_conv_out_const_3_5_4;
  wire [31:0] out_conv_out_const_8_6_32;
  wire [31:0] out_conv_out_const_9_9_32;
  wire [8:0] out_conv_out_reg_0_reg_0_6_9;
  wire [8:0] out_conv_out_reg_11_reg_11_7_9;
  wire [8:0] out_conv_out_reg_13_reg_13_7_9;
  wire [8:0] out_conv_out_reg_14_reg_14_7_9;
  wire [8:0] out_conv_out_reg_2_reg_2_7_9;
  wire [8:0] out_conv_out_reg_4_reg_4_7_9;
  wire [8:0] out_conv_out_ui_pointer_plus_expr_FU_8_8_8_52_i0_fu_make_oriented_28870_29991_7_9;
  wire out_ge_expr_FU_8_0_8_34_i0_fu_make_oriented_28870_30042;
  wire [7:0] out_iu_conv_conn_obj_1_IUdata_converter_FU_iu_conv_0;
  wire [7:0] out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_1;
  wire out_lt_expr_FU_8_0_8_35_i0_fu_make_oriented_28870_29024;
  wire [1:0] out_multi_read_cond_FU_32_i0_fu_make_oriented_28870_30203;
  wire out_read_cond_FU_27_i0_fu_make_oriented_28870_29026;
  wire out_read_cond_FU_29_i0_fu_make_oriented_28870_29043;
  wire [5:0] out_reg_0_reg_0;
  wire out_reg_10_reg_10;
  wire [6:0] out_reg_11_reg_11;
  wire [31:0] out_reg_12_reg_12;
  wire [6:0] out_reg_13_reg_13;
  wire [6:0] out_reg_14_reg_14;
  wire out_reg_15_reg_15;
  wire out_reg_16_reg_16;
  wire out_reg_17_reg_17;
  wire [7:0] out_reg_18_reg_18;
  wire [31:0] out_reg_1_reg_1;
  wire [6:0] out_reg_2_reg_2;
  wire [31:0] out_reg_3_reg_3;
  wire [6:0] out_reg_4_reg_4;
  wire out_reg_5_reg_5;
  wire out_reg_6_reg_6;
  wire out_reg_7_reg_7;
  wire out_reg_8_reg_8;
  wire [31:0] out_reg_9_reg_9;
  wire out_truth_and_expr_FU_1_1_1_36_i0_fu_make_oriented_28870_30209;
  wire out_truth_not_expr_FU_1_1_37_i0_fu_make_oriented_28870_30206;
  wire out_truth_xor_expr_FU_1_1_1_38_i0_fu_make_oriented_28870_30130;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_39_i0_fu_make_oriented_28870_30116;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_39_i1_fu_make_oriented_28870_30169;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_40_i0_fu_make_oriented_28870_30144;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_40_i1_fu_make_oriented_28870_30156;
  wire [0:0] out_ui_bit_and_expr_FU_1_1_1_41_i0_fu_make_oriented_28870_29025;
  wire [31:0] out_ui_bit_ior_concat_expr_FU_42_i0_fu_make_oriented_28870_29007;
  wire [1:0] out_ui_bit_ior_concat_expr_FU_43_i0_fu_make_oriented_28870_29998;
  wire [1:0] out_ui_bit_ior_concat_expr_FU_44_i0_fu_make_oriented_28870_30029;
  wire [1:0] out_ui_bit_ior_concat_expr_FU_44_i1_fu_make_oriented_28870_30051;
  wire [1:0] out_ui_cond_expr_FU_8_8_8_8_45_i0_fu_make_oriented_28870_28945;
  wire out_ui_extract_bit_expr_FU_13_i0_fu_make_oriented_28870_30198;
  wire out_ui_extract_bit_expr_FU_24_i0_fu_make_oriented_28870_30194;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_46_i0_fu_make_oriented_28870_30166;
  wire [1:0] out_ui_lshift_expr_FU_8_0_8_47_i0_fu_make_oriented_28870_30045;
  wire [1:0] out_ui_lshift_expr_FU_8_0_8_47_i1_fu_make_oriented_28870_30153;
  wire out_ui_ne_expr_FU_1_0_1_48_i0_ui_ne_expr_FU_1_0_1_48_i0;
  wire [7:0] out_ui_negate_expr_FU_8_8_49_i0_fu_make_oriented_28870_28981;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_50_i0_fu_make_oriented_28870_28974;
  wire [30:0] out_ui_plus_expr_FU_32_0_32_51_i0_fu_make_oriented_28870_30163;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_8_8_52_i0_fu_make_oriented_28870_29991;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_8_8_52_i1_fu_make_oriented_28870_30004;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_8_8_52_i2_fu_make_oriented_28870_30035;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_8_8_52_i3_fu_make_oriented_28870_30057;
  wire [30:0] out_ui_rshift_expr_FU_32_0_32_53_i0_fu_make_oriented_28870_30160;
  wire [0:0] out_ui_rshift_expr_FU_8_0_8_54_i0_fu_make_oriented_28870_30148;
  wire [7:0] out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_2;
  wire [7:0] out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_3;
  wire [1:0] sig_in_bus_mergerSout_DataRdy0_0;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram1_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288612_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288683_0;
  wire [17:0] sig_in_bus_mergerproxy_in2_288614_0;
  wire [17:0] sig_in_bus_mergerproxy_in2_288685_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_288616_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_288687_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_288618_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_288689_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886110_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886811_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy0_0;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram1_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288612_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288683_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in2_288614_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in2_288685_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_288616_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_288687_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_288618_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_288689_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886110_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886811_0;
  wire [1:0] sig_out_bus_mergerSout_DataRdy0_;
  wire [15:0] sig_out_bus_mergerSout_Rdata_ram1_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288612_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288683_;
  wire [17:0] sig_out_bus_mergerproxy_in2_288614_;
  wire [17:0] sig_out_bus_mergerproxy_in2_288685_;
  wire [7:0] sig_out_bus_mergerproxy_in3_288616_;
  wire [7:0] sig_out_bus_mergerproxy_in3_288687_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_288618_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_288689_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886110_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886811_;
  
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_2 (.out1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_2), .in1(out_const_1));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_3 (.out1(out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_3), .in1(out_const_2));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_0 (.out1(out_iu_conv_conn_obj_1_IUdata_converter_FU_iu_conv_0), .in1(out_const_7));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_1), .in1(out_reg_18_reg_18));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_12_PROXY_CTRLN_2_i0_0_0_0 (.out1(out_MUX_12_PROXY_CTRLN_2_i0_0_0_0), .sel(selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0), .in1(out_iu_conv_conn_obj_1_IUdata_converter_FU_iu_conv_0), .in2(out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_1));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_13_PROXY_CTRLN_2_i0_1_0_0 (.out1(out_MUX_13_PROXY_CTRLN_2_i0_1_0_0), .sel(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0), .in1(out_conv_out_reg_4_reg_4_7_9), .in2(out_conv_out_reg_14_reg_14_7_9));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_13_PROXY_CTRLN_2_i0_1_0_1 (.out1(out_MUX_13_PROXY_CTRLN_2_i0_1_0_1), .sel(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1), .in1(out_conv_out_reg_13_reg_13_7_9), .in2(out_conv_out_reg_11_reg_11_7_9));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_13_PROXY_CTRLN_2_i0_1_0_2 (.out1(out_MUX_13_PROXY_CTRLN_2_i0_1_0_2), .sel(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2), .in1(out_conv_out_UUdata_converter_FU_23_i0_fu_make_oriented_28870_28966_7_9), .in2(out_conv_out_ui_pointer_plus_expr_FU_8_8_8_52_i0_fu_make_oriented_28870_29991_7_9));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_13_PROXY_CTRLN_2_i0_1_1_0 (.out1(out_MUX_13_PROXY_CTRLN_2_i0_1_1_0), .sel(selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0), .in1(out_MUX_13_PROXY_CTRLN_2_i0_1_0_0), .in2(out_MUX_13_PROXY_CTRLN_2_i0_1_0_1));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_13_PROXY_CTRLN_2_i0_1_1_1 (.out1(out_MUX_13_PROXY_CTRLN_2_i0_1_1_1), .sel(selector_MUX_13_PROXY_CTRLN_2_i0_1_1_1), .in1(out_MUX_13_PROXY_CTRLN_2_i0_1_0_2), .in2(out_MUX_13_PROXY_CTRLN_2_i0_1_1_0));
  MUX_GATE #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) MUX_36_reg_10_0_0_0 (.out1(out_MUX_36_reg_10_0_0_0), .sel(selector_MUX_36_reg_10_0_0_0), .in1(out_const_0), .in2(out_const_4));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_52_reg_9_0_0_0 (.out1(out_MUX_52_reg_9_0_0_0), .sel(selector_MUX_52_reg_9_0_0_0), .in1(out_reg_3_reg_3), .in2(out_reg_12_reg_12));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_52_reg_9_0_0_1 (.out1(out_MUX_52_reg_9_0_0_1), .sel(selector_MUX_52_reg_9_0_0_1), .in1(out_UUdata_converter_FU_7_i0_fu_make_oriented_28870_28928), .in2(out_MUX_52_reg_9_0_0_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_8_PROXY_CTRLN_1_i0_0_0_0 (.out1(out_MUX_8_PROXY_CTRLN_1_i0_0_0_0), .sel(selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0), .in1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_2), .in2(out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_3));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_9_PROXY_CTRLN_1_i0_1_0_0 (.out1(out_MUX_9_PROXY_CTRLN_1_i0_1_0_0), .sel(selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0), .in1(out_conv_out_reg_0_reg_0_6_9), .in2(out_conv_out_addr_expr_FU_5_i0_fu_make_oriented_28870_29974_6_9));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_1_i0 (.out1({null_out_signal_PROXY_CTRLN_1_i0_out1_1, null_out_signal_PROXY_CTRLN_1_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288612_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288614_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288616_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_288618_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886110_0), .in1({8'b00000000, out_MUX_8_PROXY_CTRLN_1_i0_0_0_0}), .in2({9'b000000000, out_MUX_9_PROXY_CTRLN_1_i0_1_0_0}), .in3({4'b0000, out_conv_out_const_3_5_4}), .in4({1'b0, out_const_4}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_1_i0_STORE}), .proxy_out1(proxy_out1_28861));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_2_i0 (.out1({null_out_signal_PROXY_CTRLN_2_i0_out1_1, out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288683_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288685_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288687_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_288689_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886811_0), .in1({8'b00000000, out_MUX_12_PROXY_CTRLN_2_i0_0_0_0}), .in2({9'b000000000, out_MUX_13_PROXY_CTRLN_2_i0_1_1_1}), .in3({4'b0000, out_conv_out_const_3_5_4}), .in4({1'b0, out_const_4}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_2_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_2_i0_STORE}), .proxy_out1(proxy_out1_28868));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28859.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28859_28870), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28859_0 (.out1({null_out_signal_array_28859_0_out1_1, null_out_signal_array_28859_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram1_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy0_0), .proxy_out1({null_out_signal_array_28859_0_proxy_out1_1, null_out_signal_array_28859_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_3}), .in2({9'b000000000, out_conv_out_reg_2_reg_2_7_9}), .in3({4'b0000, out_conv_out_const_3_5_4}), .in4({1'b0, out_const_4}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({9'b000000000, 9'b000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerSout_DataRdy0_ (.out1(sig_out_bus_mergerSout_DataRdy0_), .in1({sig_in_bus_mergerSout_DataRdy0_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerSout_Rdata_ram1_ (.out1(sig_out_bus_mergerSout_Rdata_ram1_), .in1({sig_in_bus_mergerSout_Rdata_ram1_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288612_ (.out1(sig_out_bus_mergerproxy_in1_288612_), .in1({sig_in_bus_mergerproxy_in1_288612_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288683_ (.out1(sig_out_bus_mergerproxy_in1_288683_), .in1({sig_in_bus_mergerproxy_in1_288683_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerproxy_in2_288614_ (.out1(sig_out_bus_mergerproxy_in2_288614_), .in1({sig_in_bus_mergerproxy_in2_288614_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerproxy_in2_288685_ (.out1(sig_out_bus_mergerproxy_in2_288685_), .in1({sig_in_bus_mergerproxy_in2_288685_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_288616_ (.out1(sig_out_bus_mergerproxy_in3_288616_), .in1({sig_in_bus_mergerproxy_in3_288616_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_288687_ (.out1(sig_out_bus_mergerproxy_in3_288687_), .in1({sig_in_bus_mergerproxy_in3_288687_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_288618_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288618_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288618_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_288689_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288689_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288689_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886110_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886110_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886110_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886811_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886811_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886811_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(7), .value(MEM_var_28859_28870)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000010)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(2), .value(2'b10)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(6), .value(MEM_var_28861_28879)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(9), .value(MEM_var_28868_28879)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_UUdata_converter_FU_23_i0_fu_make_oriented_28870_28966_7_9 (.out1(out_conv_out_UUdata_converter_FU_23_i0_fu_make_oriented_28870_28966_7_9), .in1(out_UUdata_converter_FU_23_i0_fu_make_oriented_28870_28966));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(9)) conv_out_addr_expr_FU_5_i0_fu_make_oriented_28870_29974_6_9 (.out1(out_conv_out_addr_expr_FU_5_i0_fu_make_oriented_28870_29974_6_9), .in1(out_addr_expr_FU_5_i0_fu_make_oriented_28870_29974));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(32)) conv_out_const_10_7_32 (.out1(out_conv_out_const_10_7_32), .in1(out_const_10));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_3_5_4 (.out1(out_conv_out_const_3_5_4), .in1(out_const_3));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(32)) conv_out_const_8_6_32 (.out1(out_conv_out_const_8_6_32), .in1(out_const_8));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(32)) conv_out_const_9_9_32 (.out1(out_conv_out_const_9_9_32), .in1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(9)) conv_out_reg_0_reg_0_6_9 (.out1(out_conv_out_reg_0_reg_0_6_9), .in1(out_reg_0_reg_0));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_11_reg_11_7_9 (.out1(out_conv_out_reg_11_reg_11_7_9), .in1(out_reg_11_reg_11));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_13_reg_13_7_9 (.out1(out_conv_out_reg_13_reg_13_7_9), .in1(out_reg_13_reg_13));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_14_reg_14_7_9 (.out1(out_conv_out_reg_14_reg_14_7_9), .in1(out_reg_14_reg_14));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_2_reg_2_7_9 (.out1(out_conv_out_reg_2_reg_2_7_9), .in1(out_reg_2_reg_2));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_4_reg_4_7_9 (.out1(out_conv_out_reg_4_reg_4_7_9), .in1(out_reg_4_reg_4));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_ui_pointer_plus_expr_FU_8_8_8_52_i0_fu_make_oriented_28870_29991_7_9 (.out1(out_conv_out_ui_pointer_plus_expr_FU_8_8_8_52_i0_fu_make_oriented_28870_29991_7_9), .in1(out_ui_pointer_plus_expr_FU_8_8_8_52_i0_fu_make_oriented_28870_29991));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_make_oriented_28870_28928 (.out1(out_UUdata_converter_FU_7_i0_fu_make_oriented_28870_28928), .in1(out_addr_expr_FU_6_i0_fu_make_oriented_28870_29977));
  ui_cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(2), .BITSIZE_in3(1), .BITSIZE_out1(2)) fu_make_oriented_28870_28945 (.out1(out_ui_cond_expr_FU_8_8_8_8_45_i0_fu_make_oriented_28870_28945), .in1(out_ui_extract_bit_expr_FU_13_i0_fu_make_oriented_28870_30198), .in2(out_const_6), .in3(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_make_oriented_28870_28966 (.out1(out_UUdata_converter_FU_23_i0_fu_make_oriented_28870_28966), .in1(out_reg_9_reg_9));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(32)) fu_make_oriented_28870_28974 (.out1(out_ui_plus_expr_FU_32_0_32_50_i0_fu_make_oriented_28870_28974), .in1(out_reg_9_reg_9), .in2(out_const_4));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_oriented_28870_28977 (.out1(out_UIdata_converter_FU_26_i0_fu_make_oriented_28870_28977), .in1(out_ui_negate_expr_FU_8_8_49_i0_fu_make_oriented_28870_28981));
  ui_negate_expr_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_oriented_28870_28981 (.out1(out_ui_negate_expr_FU_8_8_49_i0_fu_make_oriented_28870_28981), .in1(out_IUdata_converter_FU_25_i0_fu_make_oriented_28870_28988));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_oriented_28870_28988 (.out1(out_IUdata_converter_FU_25_i0_fu_make_oriented_28870_28988), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(32), .OFFSET_PARAMETER(1)) fu_make_oriented_28870_29007 (.out1(out_ui_bit_ior_concat_expr_FU_42_i0_fu_make_oriented_28870_29007), .in1(out_ui_lshift_expr_FU_32_0_32_46_i0_fu_make_oriented_28870_30166), .in2(out_ui_bit_and_expr_FU_1_0_1_39_i1_fu_make_oriented_28870_30169), .in3(out_const_4));
  lt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_make_oriented_28870_29024 (.out1(out_lt_expr_FU_8_0_8_35_i0_fu_make_oriented_28870_29024), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0), .in2(out_const_6));
  ui_bit_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_oriented_28870_29025 (.out1(out_ui_bit_and_expr_FU_1_1_1_41_i0_fu_make_oriented_28870_29025), .in1(out_lt_expr_FU_8_0_8_35_i0_fu_make_oriented_28870_29024), .in2(out_reg_16_reg_16));
  read_cond_FU #(.BITSIZE_in1(1)) fu_make_oriented_28870_29026 (.out1(out_read_cond_FU_27_i0_fu_make_oriented_28870_29026), .in1(out_ui_bit_and_expr_FU_1_1_1_41_i0_fu_make_oriented_28870_29025));
  read_cond_FU #(.BITSIZE_in1(1)) fu_make_oriented_28870_29043 (.out1(out_read_cond_FU_29_i0_fu_make_oriented_28870_29043), .in1(out_ge_expr_FU_8_0_8_34_i0_fu_make_oriented_28870_30042));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(6)) fu_make_oriented_28870_29974 (.out1(out_addr_expr_FU_5_i0_fu_make_oriented_28870_29974), .in1(out_conv_out_const_8_6_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_make_oriented_28870_29977 (.out1(out_addr_expr_FU_6_i0_fu_make_oriented_28870_29977), .in1(out_conv_out_const_9_9_32));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_make_oriented_28870_29991 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_52_i0_fu_make_oriented_28870_29991), .in1(out_reg_1_reg_1), .in2(out_ui_cond_expr_FU_8_8_8_8_45_i0_fu_make_oriented_28870_28945));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(2), .OFFSET_PARAMETER(1)) fu_make_oriented_28870_29998 (.out1(out_ui_bit_ior_concat_expr_FU_43_i0_fu_make_oriented_28870_29998), .in1(out_const_5), .in2(out_ui_bit_and_expr_FU_1_0_1_39_i0_fu_make_oriented_28870_30116), .in3(out_const_4));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_make_oriented_28870_30004 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_52_i1_fu_make_oriented_28870_30004), .in1(out_reg_1_reg_1), .in2(out_ui_bit_ior_concat_expr_FU_43_i0_fu_make_oriented_28870_29998));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_make_oriented_28870_30026 (.out1(out_UUdata_converter_FU_15_i0_fu_make_oriented_28870_30026), .in1(out_reg_10_reg_10));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(2), .OFFSET_PARAMETER(1)) fu_make_oriented_28870_30029 (.out1(out_ui_bit_ior_concat_expr_FU_44_i0_fu_make_oriented_28870_30029), .in1(out_ui_lshift_expr_FU_8_0_8_47_i1_fu_make_oriented_28870_30153), .in2(out_reg_6_reg_6), .in3(out_const_4));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_make_oriented_28870_30035 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_52_i2_fu_make_oriented_28870_30035), .in1(out_reg_1_reg_1), .in2(out_ui_bit_ior_concat_expr_FU_44_i0_fu_make_oriented_28870_30029));
  ge_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_oriented_28870_30042 (.out1(out_ge_expr_FU_8_0_8_34_i0_fu_make_oriented_28870_30042), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0), .in2(out_const_0));
  ui_lshift_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(2), .PRECISION(32)) fu_make_oriented_28870_30045 (.out1(out_ui_lshift_expr_FU_8_0_8_47_i0_fu_make_oriented_28870_30045), .in1(out_reg_10_reg_10), .in2(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_make_oriented_28870_30048 (.out1(out_UUdata_converter_FU_14_i0_fu_make_oriented_28870_30048), .in1(out_reg_10_reg_10));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(2), .OFFSET_PARAMETER(1)) fu_make_oriented_28870_30051 (.out1(out_ui_bit_ior_concat_expr_FU_44_i1_fu_make_oriented_28870_30051), .in1(out_ui_lshift_expr_FU_8_0_8_47_i1_fu_make_oriented_28870_30153), .in2(out_reg_7_reg_7), .in3(out_const_4));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_make_oriented_28870_30057 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_52_i3_fu_make_oriented_28870_30057), .in1(out_reg_1_reg_1), .in2(out_ui_bit_ior_concat_expr_FU_44_i1_fu_make_oriented_28870_30051));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_make_oriented_28870_30066 (.out1(out_addr_expr_FU_8_i0_fu_make_oriented_28870_30066), .in1(out_conv_out_const_10_7_32));
  ui_bit_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_oriented_28870_30116 (.out1(out_ui_bit_and_expr_FU_1_0_1_39_i0_fu_make_oriented_28870_30116), .in1(out_reg_10_reg_10), .in2(out_const_4));
  truth_xor_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_oriented_28870_30130 (.out1(out_truth_xor_expr_FU_1_1_1_38_i0_fu_make_oriented_28870_30130), .in1(out_reg_8_reg_8), .in2(out_ui_extract_bit_expr_FU_24_i0_fu_make_oriented_28870_30194));
  ui_bit_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_oriented_28870_30144 (.out1(out_ui_bit_and_expr_FU_1_0_1_40_i0_fu_make_oriented_28870_30144), .in1(out_UUdata_converter_FU_15_i0_fu_make_oriented_28870_30026), .in2(out_const_4));
  ui_rshift_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_out1(1), .PRECISION(32)) fu_make_oriented_28870_30148 (.out1(out_ui_rshift_expr_FU_8_0_8_54_i0_fu_make_oriented_28870_30148), .in1(out_ui_lshift_expr_FU_8_0_8_47_i0_fu_make_oriented_28870_30045), .in2(out_const_4));
  ui_lshift_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(2), .PRECISION(32)) fu_make_oriented_28870_30153 (.out1(out_ui_lshift_expr_FU_8_0_8_47_i1_fu_make_oriented_28870_30153), .in1(out_ui_rshift_expr_FU_8_0_8_54_i0_fu_make_oriented_28870_30148), .in2(out_const_4));
  ui_bit_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_oriented_28870_30156 (.out1(out_ui_bit_and_expr_FU_1_0_1_40_i1_fu_make_oriented_28870_30156), .in1(out_UUdata_converter_FU_14_i0_fu_make_oriented_28870_30048), .in2(out_const_4));
  ui_rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(31), .PRECISION(32)) fu_make_oriented_28870_30160 (.out1(out_ui_rshift_expr_FU_32_0_32_53_i0_fu_make_oriented_28870_30160), .in1(out_reg_9_reg_9), .in2(out_const_4));
  ui_plus_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(1), .BITSIZE_out1(31)) fu_make_oriented_28870_30163 (.out1(out_ui_plus_expr_FU_32_0_32_51_i0_fu_make_oriented_28870_30163), .in1(out_ui_rshift_expr_FU_32_0_32_53_i0_fu_make_oriented_28870_30160), .in2(out_const_4));
  ui_lshift_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(1), .BITSIZE_out1(32), .PRECISION(32)) fu_make_oriented_28870_30166 (.out1(out_ui_lshift_expr_FU_32_0_32_46_i0_fu_make_oriented_28870_30166), .in1(out_ui_plus_expr_FU_32_0_32_51_i0_fu_make_oriented_28870_30163), .in2(out_const_4));
  ui_bit_and_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_oriented_28870_30169 (.out1(out_ui_bit_and_expr_FU_1_0_1_39_i1_fu_make_oriented_28870_30169), .in1(out_reg_9_reg_9), .in2(out_const_4));
  ui_extract_bit_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1)) fu_make_oriented_28870_30194 (.out1(out_ui_extract_bit_expr_FU_24_i0_fu_make_oriented_28870_30194), .in1(out_reg_10_reg_10), .in2(out_const_0));
  ui_extract_bit_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1)) fu_make_oriented_28870_30198 (.out1(out_ui_extract_bit_expr_FU_13_i0_fu_make_oriented_28870_30198), .in1(out_reg_10_reg_10), .in2(out_const_0));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) fu_make_oriented_28870_30203 (.out1(out_multi_read_cond_FU_32_i0_fu_make_oriented_28870_30203), .in1({out_reg_17_reg_17, out_reg_15_reg_15}));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_make_oriented_28870_30206 (.out1(out_truth_not_expr_FU_1_1_37_i0_fu_make_oriented_28870_30206), .in1(out_ui_ne_expr_FU_1_0_1_48_i0_ui_ne_expr_FU_1_0_1_48_i0));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_oriented_28870_30209 (.out1(out_truth_and_expr_FU_1_1_1_36_i0_fu_make_oriented_28870_30209), .in1(out_reg_5_reg_5), .in2(out_truth_not_expr_FU_1_1_37_i0_fu_make_oriented_28870_30206));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy0_0 (.out1(sig_in_bus_mergerSout_DataRdy0_0), .in1(sig_in_vector_bus_mergerSout_DataRdy0_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram1_0 (.out1(sig_in_bus_mergerSout_Rdata_ram1_0), .in1(sig_in_vector_bus_mergerSout_Rdata_ram1_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288612_0 (.out1(sig_in_bus_mergerproxy_in1_288612_0), .in1(sig_in_vector_bus_mergerproxy_in1_288612_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288683_0 (.out1(sig_in_bus_mergerproxy_in1_288683_0), .in1(sig_in_vector_bus_mergerproxy_in1_288683_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in2_288614_0 (.out1(sig_in_bus_mergerproxy_in2_288614_0), .in1(sig_in_vector_bus_mergerproxy_in2_288614_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in2_288685_0 (.out1(sig_in_bus_mergerproxy_in2_288685_0), .in1(sig_in_vector_bus_mergerproxy_in2_288685_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_288616_0 (.out1(sig_in_bus_mergerproxy_in3_288616_0), .in1(sig_in_vector_bus_mergerproxy_in3_288616_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_288687_0 (.out1(sig_in_bus_mergerproxy_in3_288687_0), .in1(sig_in_vector_bus_mergerproxy_in3_288687_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_288618_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_288618_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_288618_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_288689_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_288689_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_288689_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886110_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886110_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886110_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886811_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886811_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886811_0));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_5_i0_fu_make_oriented_28870_29974), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_6_i0_fu_make_oriented_28870_29977), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_MUX_36_reg_10_0_0_0), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_23_i0_fu_make_oriented_28870_28966), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_32_0_32_50_i0_fu_make_oriented_28870_28974), .wenable(wrenable_reg_12));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_52_i2_fu_make_oriented_28870_30035), .wenable(wrenable_reg_13));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_52_i3_fu_make_oriented_28870_30057), .wenable(wrenable_reg_14));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_1_0_1_48_i0_ui_ne_expr_FU_1_0_1_48_i0), .wenable(wrenable_reg_15));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_truth_xor_expr_FU_1_1_1_38_i0_fu_make_oriented_28870_30130), .wenable(wrenable_reg_16));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_truth_and_expr_FU_1_1_1_36_i0_fu_make_oriented_28870_30209), .wenable(wrenable_reg_17));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_26_i0_fu_make_oriented_28870_28977), .wenable(wrenable_reg_18));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_8_i0_fu_make_oriented_28870_30066), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_ui_bit_ior_concat_expr_FU_42_i0_fu_make_oriented_28870_29007), .wenable(wrenable_reg_3));
  register_STD #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_52_i1_fu_make_oriented_28870_30004), .wenable(wrenable_reg_4));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_1_0_1_48_i0_ui_ne_expr_FU_1_0_1_48_i0), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_ui_bit_and_expr_FU_1_0_1_40_i0_fu_make_oriented_28870_30144), .wenable(wrenable_reg_6));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_ui_bit_and_expr_FU_1_0_1_40_i1_fu_make_oriented_28870_30156), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_ui_extract_bit_expr_FU_13_i0_fu_make_oriented_28870_30198), .wenable(wrenable_reg_8));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_MUX_52_reg_9_0_0_1), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy0_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy0_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram1_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram1_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288612_ (.out1(proxy_in1_28861), .in1(sig_out_bus_mergerproxy_in1_288612_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288683_ (.out1(proxy_in1_28868), .in1(sig_out_bus_mergerproxy_in1_288683_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288614_ (.out1(proxy_in2_28861), .in1(sig_out_bus_mergerproxy_in2_288614_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288685_ (.out1(proxy_in2_28868), .in1(sig_out_bus_mergerproxy_in2_288685_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288616_ (.out1(proxy_in3_28861), .in1(sig_out_bus_mergerproxy_in3_288616_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288687_ (.out1(proxy_in3_28868), .in1(sig_out_bus_mergerproxy_in3_288687_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_288618_ (.out1(proxy_sel_LOAD_28861), .in1(sig_out_bus_mergerproxy_sel_LOAD_288618_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_288689_ (.out1(proxy_sel_LOAD_28868), .in1(sig_out_bus_mergerproxy_sel_LOAD_288689_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886110_ (.out1(proxy_sel_STORE_28861), .in1(sig_out_bus_mergerproxy_sel_STORE_2886110_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886811_ (.out1(proxy_sel_STORE_28868), .in1(sig_out_bus_mergerproxy_sel_STORE_2886811_));
  ui_ne_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) ui_ne_expr_FU_1_0_1_48_i0 (.out1(out_ui_ne_expr_FU_1_0_1_48_i0_ui_ne_expr_FU_1_0_1_48_i0), .in1(out_reg_10_reg_10), .in2(out_const_4));
  // io-signal post fix
  assign OUT_CONDITION_make_oriented_28870_29026 = out_read_cond_FU_27_i0_fu_make_oriented_28870_29026;
  assign OUT_CONDITION_make_oriented_28870_29043 = out_read_cond_FU_29_i0_fu_make_oriented_28870_29043;
  assign OUT_MULTIIF_make_oriented_28870_30203 = out_multi_read_cond_FU_32_i0_fu_make_oriented_28870_30203;

endmodule

// FSM based controller description for make_oriented
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_make_oriented(done_port, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE, selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0, selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0, selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1, selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2, selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0, selector_MUX_13_PROXY_CTRLN_2_i0_1_1_1, selector_MUX_36_reg_10_0_0_0, selector_MUX_52_reg_9_0_0_0, selector_MUX_52_reg_9_0_0_1, selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0, selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_make_oriented_28870_29026, OUT_CONDITION_make_oriented_28870_29043, OUT_MULTIIF_make_oriented_28870_30203, clock, reset, start_port);
  // IN
  input OUT_CONDITION_make_oriented_28870_29026;
  input OUT_CONDITION_make_oriented_28870_29043;
  input [1:0] OUT_MULTIIF_make_oriented_28870_30203;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE;
  output selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0;
  output selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0;
  output selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1;
  output selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2;
  output selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0;
  output selector_MUX_13_PROXY_CTRLN_2_i0_1_1_1;
  output selector_MUX_36_reg_10_0_0_0;
  output selector_MUX_52_reg_9_0_0_0;
  output selector_MUX_52_reg_9_0_0_1;
  output selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0;
  output selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0;
  output fuselector_PROXY_CTRLN_1_i0_LOAD;
  output fuselector_PROXY_CTRLN_1_i0_STORE;
  output fuselector_PROXY_CTRLN_2_i0_LOAD;
  output fuselector_PROXY_CTRLN_2_i0_STORE;
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
  output wrenable_reg_2;
  output wrenable_reg_3;
  output wrenable_reg_4;
  output wrenable_reg_5;
  output wrenable_reg_6;
  output wrenable_reg_7;
  output wrenable_reg_8;
  output wrenable_reg_9;
  parameter [11:0] S_0 = 12'b000000000001,
    S_1 = 12'b000000000010,
    S_2 = 12'b000000000100,
    S_3 = 12'b000000001000,
    S_4 = 12'b000000010000,
    S_7 = 12'b000010000000,
    S_8 = 12'b000100000000,
    S_9 = 12'b001000000000,
    S_5 = 12'b000000100000,
    S_6 = 12'b000001000000,
    S_10 = 12'b010000000000,
    S_11 = 12'b100000000000;
  reg [11:0] _present_state, _next_state;
  reg done_port;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE;
  reg selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0;
  reg selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0;
  reg selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1;
  reg selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2;
  reg selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0;
  reg selector_MUX_13_PROXY_CTRLN_2_i0_1_1_1;
  reg selector_MUX_36_reg_10_0_0_0;
  reg selector_MUX_52_reg_9_0_0_0;
  reg selector_MUX_52_reg_9_0_0_1;
  reg selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0;
  reg selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0;
  reg fuselector_PROXY_CTRLN_1_i0_LOAD;
  reg fuselector_PROXY_CTRLN_1_i0_STORE;
  reg fuselector_PROXY_CTRLN_2_i0_LOAD;
  reg fuselector_PROXY_CTRLN_2_i0_STORE;
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
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE = 1'b0;
    selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0 = 1'b0;
    selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0 = 1'b0;
    selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1 = 1'b0;
    selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2 = 1'b0;
    selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0 = 1'b0;
    selector_MUX_13_PROXY_CTRLN_2_i0_1_1_1 = 1'b0;
    selector_MUX_36_reg_10_0_0_0 = 1'b0;
    selector_MUX_52_reg_9_0_0_0 = 1'b0;
    selector_MUX_52_reg_9_0_0_1 = 1'b0;
    selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0 = 1'b0;
    selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0 = 1'b0;
    fuselector_PROXY_CTRLN_1_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_1_i0_STORE = 1'b0;
    fuselector_PROXY_CTRLN_2_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_2_i0_STORE = 1'b0;
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
          selector_MUX_36_reg_10_0_0_0 = 1'b1;
          selector_MUX_52_reg_9_0_0_1 = 1'b1;
          selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_1_i0_STORE = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_9 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0 = 1'bX;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0 = 1'bX;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1 = 1'bX;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2 = 1'bX;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0 = 1'bX;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_1_1 = 1'bX;
          selector_MUX_36_reg_10_0_0_0 = 1'bX;
          selector_MUX_52_reg_9_0_0_0 = 1'bX;
          selector_MUX_52_reg_9_0_0_1 = 1'bX;
          selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0 = 1'bX;
          selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0 = 1'bX;
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
          selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0 = 1'b1;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_1_1 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_6 = 1'b1;
          wrenable_reg_7 = 1'b1;
          wrenable_reg_8 = 1'b1;
          _next_state = S_2;
        end
      S_2 :
        begin
          selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0 = 1'b1;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0 = 1'b1;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0 = 1'b1;
          selector_MUX_36_reg_10_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          wrenable_reg_10 = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2 = 1'b1;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_1_1 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_LOAD = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_12 = 1'b1;
          wrenable_reg_13 = 1'b1;
          wrenable_reg_14 = 1'b1;
          wrenable_reg_15 = 1'b1;
          wrenable_reg_16 = 1'b1;
          wrenable_reg_17 = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          wrenable_reg_18 = 1'b1;
          if (OUT_CONDITION_make_oriented_28870_29026 == 1'b1)
            begin
              _next_state = S_5;
            end
          else
            begin
              _next_state = S_7;
              wrenable_reg_18 = 1'b0;
            end
        end
      S_7 :
        begin
          selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_LOAD = 1'b1;
          _next_state = S_8;
        end
      S_8 :
        begin
          if (OUT_CONDITION_make_oriented_28870_29043 == 1'b1)
            begin
              _next_state = S_9;
            end
          else
            begin
              _next_state = S_10;
            end
        end
      S_9 :
        begin
          selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          _next_state = S_10;
        end
      S_5 :
        begin
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          _next_state = S_6;
        end
      S_6 :
        begin
          selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0 = 1'b1;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          _next_state = S_10;
        end
      S_10 :
        begin
          selector_MUX_52_reg_9_0_0_0 = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_9 = 1'b1;
          if (OUT_MULTIIF_make_oriented_28870_30203[0] == 1'b1)
            begin
              _next_state = S_3;
              selector_MUX_52_reg_9_0_0_0 = 1'b0;
            end
          else if (OUT_MULTIIF_make_oriented_28870_30203[1] == 1'b1)
            begin
              _next_state = S_1;
              wrenable_reg_10 = 1'b0;
            end
          else
            begin
              _next_state = S_11;
              done_port = 1'b1;
              selector_MUX_52_reg_9_0_0_0 = 1'b0;
              wrenable_reg_10 = 1'b0;
              wrenable_reg_9 = 1'b0;
            end
        end
      S_11 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE = 1'b1;
          selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_1_i0_STORE = 1'b1;
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0 = 1'bX;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0 = 1'bX;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1 = 1'bX;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2 = 1'bX;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0 = 1'bX;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_1_1 = 1'bX;
          selector_MUX_36_reg_10_0_0_0 = 1'bX;
          selector_MUX_52_reg_9_0_0_0 = 1'bX;
          selector_MUX_52_reg_9_0_0_1 = 1'bX;
          selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0 = 1'bX;
          selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0 = 1'bX;
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

// Top component for make_oriented
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module make_oriented(clock, reset, start_port, done_port, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, Sin_Rdata_ram, Sin_DataRdy, proxy_out1_28861, proxy_out1_28868, Sout_Rdata_ram, Sout_DataRdy, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868);
  parameter MEM_var_28859_28870=96, MEM_var_28861_28879=32, MEM_var_28868_28879=64;
  // IN
  input clock;
  input reset;
  input start_port;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [17:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [15:0] proxy_out1_28861;
  input [15:0] proxy_out1_28868;
  // OUT
  output done_port;
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [15:0] proxy_in1_28861;
  output [17:0] proxy_in2_28861;
  output [7:0] proxy_in3_28861;
  output [1:0] proxy_sel_LOAD_28861;
  output [1:0] proxy_sel_STORE_28861;
  output [15:0] proxy_in1_28868;
  output [17:0] proxy_in2_28868;
  output [7:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  // Component and signal declarations
  wire OUT_CONDITION_make_oriented_28870_29026;
  wire OUT_CONDITION_make_oriented_28870_29043;
  wire [1:0] OUT_MULTIIF_make_oriented_28870_30203;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE;
  wire fuselector_PROXY_CTRLN_1_i0_LOAD;
  wire fuselector_PROXY_CTRLN_1_i0_STORE;
  wire fuselector_PROXY_CTRLN_2_i0_LOAD;
  wire fuselector_PROXY_CTRLN_2_i0_STORE;
  wire selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0;
  wire selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0;
  wire selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1;
  wire selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2;
  wire selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0;
  wire selector_MUX_13_PROXY_CTRLN_2_i0_1_1_1;
  wire selector_MUX_36_reg_10_0_0_0;
  wire selector_MUX_52_reg_9_0_0_0;
  wire selector_MUX_52_reg_9_0_0_1;
  wire selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0;
  wire selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0;
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
  wire wrenable_reg_2;
  wire wrenable_reg_3;
  wire wrenable_reg_4;
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  controller_make_oriented Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE), .selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0(selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0), .selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0), .selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1), .selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2), .selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0(selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0), .selector_MUX_13_PROXY_CTRLN_2_i0_1_1_1(selector_MUX_13_PROXY_CTRLN_2_i0_1_1_1), .selector_MUX_36_reg_10_0_0_0(selector_MUX_36_reg_10_0_0_0), .selector_MUX_52_reg_9_0_0_0(selector_MUX_52_reg_9_0_0_0), .selector_MUX_52_reg_9_0_0_1(selector_MUX_52_reg_9_0_0_1), .selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0(selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0), .selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0(selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_make_oriented_28870_29026(OUT_CONDITION_make_oriented_28870_29026), .OUT_CONDITION_make_oriented_28870_29043(OUT_CONDITION_make_oriented_28870_29043), .OUT_MULTIIF_make_oriented_28870_30203(OUT_MULTIIF_make_oriented_28870_30203), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_make_oriented #(.MEM_var_28859_28870(MEM_var_28859_28870), .MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28868_28879(MEM_var_28868_28879)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .proxy_in1_28861(proxy_in1_28861), .proxy_in2_28861(proxy_in2_28861), .proxy_in3_28861(proxy_in3_28861), .proxy_sel_LOAD_28861(proxy_sel_LOAD_28861), .proxy_sel_STORE_28861(proxy_sel_STORE_28861), .proxy_in1_28868(proxy_in1_28868), .proxy_in2_28868(proxy_in2_28868), .proxy_in3_28868(proxy_in3_28868), .proxy_sel_LOAD_28868(proxy_sel_LOAD_28868), .proxy_sel_STORE_28868(proxy_sel_STORE_28868), .OUT_CONDITION_make_oriented_28870_29026(OUT_CONDITION_make_oriented_28870_29026), .OUT_CONDITION_make_oriented_28870_29043(OUT_CONDITION_make_oriented_28870_29043), .OUT_MULTIIF_make_oriented_28870_30203(OUT_MULTIIF_make_oriented_28870_30203), .clock(clock), .reset(reset), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28868(proxy_out1_28868), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE), .selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0(selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0), .selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0), .selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1), .selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2), .selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0(selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0), .selector_MUX_13_PROXY_CTRLN_2_i0_1_1_1(selector_MUX_13_PROXY_CTRLN_2_i0_1_1_1), .selector_MUX_36_reg_10_0_0_0(selector_MUX_36_reg_10_0_0_0), .selector_MUX_52_reg_9_0_0_0(selector_MUX_52_reg_9_0_0_0), .selector_MUX_52_reg_9_0_0_1(selector_MUX_52_reg_9_0_0_1), .selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0(selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0), .selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0(selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Datapath RTL description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_main(clock, reset, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, selector_IN_UNBOUNDED_main_28879_29542, selector_IN_UNBOUNDED_main_28879_29543, wrenable_reg_0, OUT_UNBOUNDED_main_28879_29542, OUT_UNBOUNDED_main_28879_29543);
  parameter MEM_var_28859_28870=96, MEM_var_28861_28879=32, MEM_var_28862_28877=128, MEM_var_28864_28877=160, MEM_var_28865_28877=192, MEM_var_28866_28877=224, MEM_var_28867_28877=256, MEM_var_28868_28879=64;
  // IN
  input clock;
  input reset;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [17:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [17:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  input selector_IN_UNBOUNDED_main_28879_29542;
  input selector_IN_UNBOUNDED_main_28879_29543;
  input wrenable_reg_0;
  // OUT
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [17:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  output OUT_UNBOUNDED_main_28879_29542;
  output OUT_UNBOUNDED_main_28879_29543;
  // Component and signal declarations
  wire [7:0] null_out_signal_array_28861_0_out1_0;
  wire [7:0] null_out_signal_array_28861_0_out1_1;
  wire [7:0] null_out_signal_array_28868_0_out1_0;
  wire [7:0] null_out_signal_array_28868_0_out1_1;
  wire [31:0] out_UUdata_converter_FU_5_i0_fu_main_28879_30094;
  wire [31:0] out_addr_expr_FU_4_i0_fu_main_28879_29971;
  wire [8:0] out_const_0;
  wire [31:0] out_conv_out_const_0_9_32;
  wire [31:0] out_reg_0_reg_0;
  wire [15:0] proxy_out1_28861;
  wire [15:0] proxy_out1_28868;
  wire s_done_fu_main_28879_29542;
  wire s_done_fu_main_28879_29543;
  wire [15:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [17:0] sig_in_bus_mergerMout_addr_ram1_0;
  wire [7:0] sig_in_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_0;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_1;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_2;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_3;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_0;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_1;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_2;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_3;
  wire [15:0] sig_in_bus_mergerproxy_in112_0;
  wire [15:0] sig_in_bus_mergerproxy_in112_1;
  wire [15:0] sig_in_bus_mergerproxy_in17_0;
  wire [15:0] sig_in_bus_mergerproxy_in17_1;
  wire [17:0] sig_in_bus_mergerproxy_in213_0;
  wire [17:0] sig_in_bus_mergerproxy_in213_1;
  wire [17:0] sig_in_bus_mergerproxy_in28_0;
  wire [17:0] sig_in_bus_mergerproxy_in28_1;
  wire [7:0] sig_in_bus_mergerproxy_in314_0;
  wire [7:0] sig_in_bus_mergerproxy_in314_1;
  wire [7:0] sig_in_bus_mergerproxy_in39_0;
  wire [7:0] sig_in_bus_mergerproxy_in39_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD10_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD10_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD15_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD15_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE11_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE11_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE16_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE16_1;
  wire [15:0] sig_in_vector_bus_mergerMout_Wdata_ram0_0;
  wire [17:0] sig_in_vector_bus_mergerMout_addr_ram1_0;
  wire [7:0] sig_in_vector_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_vector_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_vector_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_1;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_2;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_3;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_0;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_1;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_2;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_3;
  wire [15:0] sig_in_vector_bus_mergerproxy_in112_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in112_1;
  wire [15:0] sig_in_vector_bus_mergerproxy_in17_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in17_1;
  wire [17:0] sig_in_vector_bus_mergerproxy_in213_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in213_1;
  wire [17:0] sig_in_vector_bus_mergerproxy_in28_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in28_1;
  wire [7:0] sig_in_vector_bus_mergerproxy_in314_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in314_1;
  wire [7:0] sig_in_vector_bus_mergerproxy_in39_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in39_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD10_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD10_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD15_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD15_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE11_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE11_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE16_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE16_1;
  wire [15:0] sig_out_bus_mergerMout_Wdata_ram0_;
  wire [17:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [7:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire [1:0] sig_out_bus_mergerMout_oe_ram3_;
  wire [1:0] sig_out_bus_mergerMout_we_ram4_;
  wire [1:0] sig_out_bus_mergerSout_DataRdy5_;
  wire [15:0] sig_out_bus_mergerSout_Rdata_ram6_;
  wire [15:0] sig_out_bus_mergerproxy_in112_;
  wire [15:0] sig_out_bus_mergerproxy_in17_;
  wire [17:0] sig_out_bus_mergerproxy_in213_;
  wire [17:0] sig_out_bus_mergerproxy_in28_;
  wire [7:0] sig_out_bus_mergerproxy_in314_;
  wire [7:0] sig_out_bus_mergerproxy_in39_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD10_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD15_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE11_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE16_;
  wire [15:0] sig_out_vector_bus_mergerproxy_in112_;
  wire [15:0] sig_out_vector_bus_mergerproxy_in17_;
  wire [17:0] sig_out_vector_bus_mergerproxy_in213_;
  wire [17:0] sig_out_vector_bus_mergerproxy_in28_;
  wire [7:0] sig_out_vector_bus_mergerproxy_in314_;
  wire [7:0] sig_out_vector_bus_mergerproxy_in39_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_LOAD10_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_LOAD15_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_STORE11_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_STORE16_;
  
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28861.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28861_28879), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28861_0 (.out1({null_out_signal_array_28861_0_out1_1, null_out_signal_array_28861_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_0), .proxy_out1(proxy_out1_28861), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({9'b000000000, 9'b000000000}), .in3({4'b0000, 4'b0000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in17_), .proxy_in2(sig_out_vector_bus_mergerproxy_in28_), .proxy_in3(sig_out_vector_bus_mergerproxy_in39_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD10_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE11_));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28868.mem"), .n_elements(4), .data_size(8), .address_space_begin(MEM_var_28868_28879), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28868_0 (.out1({null_out_signal_array_28868_0_out1_1, null_out_signal_array_28868_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_1), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_1), .proxy_out1(proxy_out1_28868), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({9'b000000000, 9'b000000000}), .in3({4'b0000, 4'b0000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in112_), .proxy_in2(sig_out_vector_bus_mergerproxy_in213_), .proxy_in3(sig_out_vector_bus_mergerproxy_in314_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD15_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE16_));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(4), .BITSIZE_out1(2)) bus_mergerSout_DataRdy5_ (.out1(sig_out_bus_mergerSout_DataRdy5_), .in1({sig_in_bus_mergerSout_DataRdy5_3, sig_in_bus_mergerSout_DataRdy5_2, sig_in_bus_mergerSout_DataRdy5_1, sig_in_bus_mergerSout_DataRdy5_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(4), .BITSIZE_out1(16)) bus_mergerSout_Rdata_ram6_ (.out1(sig_out_bus_mergerSout_Rdata_ram6_), .in1({sig_in_bus_mergerSout_Rdata_ram6_3, sig_in_bus_mergerSout_Rdata_ram6_2, sig_in_bus_mergerSout_Rdata_ram6_1, sig_in_bus_mergerSout_Rdata_ram6_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(2), .BITSIZE_out1(16)) bus_mergerproxy_in112_ (.out1(sig_out_bus_mergerproxy_in112_), .in1({sig_in_bus_mergerproxy_in112_1, sig_in_bus_mergerproxy_in112_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(2), .BITSIZE_out1(16)) bus_mergerproxy_in17_ (.out1(sig_out_bus_mergerproxy_in17_), .in1({sig_in_bus_mergerproxy_in17_1, sig_in_bus_mergerproxy_in17_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(2), .BITSIZE_out1(18)) bus_mergerproxy_in213_ (.out1(sig_out_bus_mergerproxy_in213_), .in1({sig_in_bus_mergerproxy_in213_1, sig_in_bus_mergerproxy_in213_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(2), .BITSIZE_out1(18)) bus_mergerproxy_in28_ (.out1(sig_out_bus_mergerproxy_in28_), .in1({sig_in_bus_mergerproxy_in28_1, sig_in_bus_mergerproxy_in28_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(8)) bus_mergerproxy_in314_ (.out1(sig_out_bus_mergerproxy_in314_), .in1({sig_in_bus_mergerproxy_in314_1, sig_in_bus_mergerproxy_in314_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(8)) bus_mergerproxy_in39_ (.out1(sig_out_bus_mergerproxy_in39_), .in1({sig_in_bus_mergerproxy_in39_1, sig_in_bus_mergerproxy_in39_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(2), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD10_ (.out1(sig_out_bus_mergerproxy_sel_LOAD10_), .in1({sig_in_bus_mergerproxy_sel_LOAD10_1, sig_in_bus_mergerproxy_sel_LOAD10_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(2), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD15_ (.out1(sig_out_bus_mergerproxy_sel_LOAD15_), .in1({sig_in_bus_mergerproxy_sel_LOAD15_1, sig_in_bus_mergerproxy_sel_LOAD15_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(2), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE11_ (.out1(sig_out_bus_mergerproxy_sel_STORE11_), .in1({sig_in_bus_mergerproxy_sel_STORE11_1, sig_in_bus_mergerproxy_sel_STORE11_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(2), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE16_ (.out1(sig_out_bus_mergerproxy_sel_STORE16_), .in1({sig_in_bus_mergerproxy_sel_STORE16_1, sig_in_bus_mergerproxy_sel_STORE16_0}));
  constant_value #(.BITSIZE_out1(9), .value(MEM_var_28868_28879)) const_0 (.out1(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(32)) conv_out_const_0_9_32 (.out1(out_conv_out_const_0_9_32), .in1(out_const_0));
  make_oriented #(.MEM_var_28859_28870(MEM_var_28859_28870), .MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28868_28879(MEM_var_28868_28879)) fu_main_28879_29542 (.done_port(s_done_fu_main_28879_29542), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_3), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_3), .proxy_in1_28861(sig_in_vector_bus_mergerproxy_in17_1), .proxy_in2_28861(sig_in_vector_bus_mergerproxy_in28_1), .proxy_in3_28861(sig_in_vector_bus_mergerproxy_in39_1), .proxy_sel_LOAD_28861(sig_in_vector_bus_mergerproxy_sel_LOAD10_1), .proxy_sel_STORE_28861(sig_in_vector_bus_mergerproxy_sel_STORE11_1), .proxy_in1_28868(sig_in_vector_bus_mergerproxy_in112_1), .proxy_in2_28868(sig_in_vector_bus_mergerproxy_in213_1), .proxy_in3_28868(sig_in_vector_bus_mergerproxy_in314_1), .proxy_sel_LOAD_28868(sig_in_vector_bus_mergerproxy_sel_LOAD15_1), .proxy_sel_STORE_28868(sig_in_vector_bus_mergerproxy_sel_STORE16_1), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28879_29542), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28868(proxy_out1_28868));
  astarF #(.MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28862_28877(MEM_var_28862_28877), .MEM_var_28864_28877(MEM_var_28864_28877), .MEM_var_28865_28877(MEM_var_28865_28877), .MEM_var_28866_28877(MEM_var_28866_28877), .MEM_var_28867_28877(MEM_var_28867_28877), .MEM_var_28868_28879(MEM_var_28868_28879)) fu_main_28879_29543 (.done_port(s_done_fu_main_28879_29543), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_2), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_2), .proxy_in1_28861(sig_in_vector_bus_mergerproxy_in17_0), .proxy_in2_28861(sig_in_vector_bus_mergerproxy_in28_0), .proxy_in3_28861(sig_in_vector_bus_mergerproxy_in39_0), .proxy_sel_LOAD_28861(sig_in_vector_bus_mergerproxy_sel_LOAD10_0), .proxy_sel_STORE_28861(sig_in_vector_bus_mergerproxy_sel_STORE11_0), .proxy_in1_28868(sig_in_vector_bus_mergerproxy_in112_0), .proxy_in2_28868(sig_in_vector_bus_mergerproxy_in213_0), .proxy_in3_28868(sig_in_vector_bus_mergerproxy_in314_0), .proxy_sel_LOAD_28868(sig_in_vector_bus_mergerproxy_sel_LOAD15_0), .proxy_sel_STORE_28868(sig_in_vector_bus_mergerproxy_sel_STORE16_0), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28879_29543), .a(out_reg_0_reg_0), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28868(proxy_out1_28868), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_main_28879_29971 (.out1(out_addr_expr_FU_4_i0_fu_main_28879_29971), .in1(out_conv_out_const_0_9_32));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_main_28879_30094 (.out1(out_UUdata_converter_FU_5_i0_fu_main_28879_30094), .in1(out_addr_expr_FU_4_i0_fu_main_28879_29971));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerMout_data_ram_size2_0 (.out1(sig_in_bus_mergerMout_data_ram_size2_0), .in1(sig_in_vector_bus_mergerMout_data_ram_size2_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_oe_ram3_0 (.out1(sig_in_bus_mergerMout_oe_ram3_0), .in1(sig_in_vector_bus_mergerMout_oe_ram3_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_we_ram4_0 (.out1(sig_in_bus_mergerMout_we_ram4_0), .in1(sig_in_vector_bus_mergerMout_we_ram4_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_0 (.out1(sig_in_bus_mergerSout_DataRdy5_0), .in1(sig_in_vector_bus_mergerSout_DataRdy5_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_1 (.out1(sig_in_bus_mergerSout_DataRdy5_1), .in1(sig_in_vector_bus_mergerSout_DataRdy5_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_2 (.out1(sig_in_bus_mergerSout_DataRdy5_2), .in1(sig_in_vector_bus_mergerSout_DataRdy5_2));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_3 (.out1(sig_in_bus_mergerSout_DataRdy5_3), .in1(sig_in_vector_bus_mergerSout_DataRdy5_3));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_0 (.out1(sig_in_bus_mergerSout_Rdata_ram6_0), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_1 (.out1(sig_in_bus_mergerSout_Rdata_ram6_1), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_1));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_2 (.out1(sig_in_bus_mergerSout_Rdata_ram6_2), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_2));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_3 (.out1(sig_in_bus_mergerSout_Rdata_ram6_3), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_3));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in112_0 (.out1(sig_in_bus_mergerproxy_in112_0), .in1(sig_in_vector_bus_mergerproxy_in112_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in112_1 (.out1(sig_in_bus_mergerproxy_in112_1), .in1(sig_in_vector_bus_mergerproxy_in112_1));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in17_0 (.out1(sig_in_bus_mergerproxy_in17_0), .in1(sig_in_vector_bus_mergerproxy_in17_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in17_1 (.out1(sig_in_bus_mergerproxy_in17_1), .in1(sig_in_vector_bus_mergerproxy_in17_1));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in213_0 (.out1(sig_in_bus_mergerproxy_in213_0), .in1(sig_in_vector_bus_mergerproxy_in213_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in213_1 (.out1(sig_in_bus_mergerproxy_in213_1), .in1(sig_in_vector_bus_mergerproxy_in213_1));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in28_0 (.out1(sig_in_bus_mergerproxy_in28_0), .in1(sig_in_vector_bus_mergerproxy_in28_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in28_1 (.out1(sig_in_bus_mergerproxy_in28_1), .in1(sig_in_vector_bus_mergerproxy_in28_1));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in314_0 (.out1(sig_in_bus_mergerproxy_in314_0), .in1(sig_in_vector_bus_mergerproxy_in314_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in314_1 (.out1(sig_in_bus_mergerproxy_in314_1), .in1(sig_in_vector_bus_mergerproxy_in314_1));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in39_0 (.out1(sig_in_bus_mergerproxy_in39_0), .in1(sig_in_vector_bus_mergerproxy_in39_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in39_1 (.out1(sig_in_bus_mergerproxy_in39_1), .in1(sig_in_vector_bus_mergerproxy_in39_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD10_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD10_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD10_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD10_1 (.out1(sig_in_bus_mergerproxy_sel_LOAD10_1), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD10_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD15_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD15_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD15_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD15_1 (.out1(sig_in_bus_mergerproxy_sel_LOAD15_1), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD15_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE11_0 (.out1(sig_in_bus_mergerproxy_sel_STORE11_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE11_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE11_1 (.out1(sig_in_bus_mergerproxy_sel_STORE11_1), .in1(sig_in_vector_bus_mergerproxy_sel_STORE11_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE16_0 (.out1(sig_in_bus_mergerproxy_sel_STORE16_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE16_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE16_1 (.out1(sig_in_bus_mergerproxy_sel_STORE16_1), .in1(sig_in_vector_bus_mergerproxy_sel_STORE16_1));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_5_i0_fu_main_28879_30094), .wenable(wrenable_reg_0));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy5_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy5_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram6_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram6_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in112_ (.out1(sig_out_vector_bus_mergerproxy_in112_), .in1(sig_out_bus_mergerproxy_in112_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in17_ (.out1(sig_out_vector_bus_mergerproxy_in17_), .in1(sig_out_bus_mergerproxy_in17_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in213_ (.out1(sig_out_vector_bus_mergerproxy_in213_), .in1(sig_out_bus_mergerproxy_in213_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in28_ (.out1(sig_out_vector_bus_mergerproxy_in28_), .in1(sig_out_bus_mergerproxy_in28_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in314_ (.out1(sig_out_vector_bus_mergerproxy_in314_), .in1(sig_out_bus_mergerproxy_in314_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in39_ (.out1(sig_out_vector_bus_mergerproxy_in39_), .in1(sig_out_bus_mergerproxy_in39_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD10_ (.out1(sig_out_vector_bus_mergerproxy_sel_LOAD10_), .in1(sig_out_bus_mergerproxy_sel_LOAD10_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD15_ (.out1(sig_out_vector_bus_mergerproxy_sel_LOAD15_), .in1(sig_out_bus_mergerproxy_sel_LOAD15_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE11_ (.out1(sig_out_vector_bus_mergerproxy_sel_STORE11_), .in1(sig_out_bus_mergerproxy_sel_STORE11_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE16_ (.out1(sig_out_vector_bus_mergerproxy_sel_STORE16_), .in1(sig_out_bus_mergerproxy_sel_STORE16_));
  // io-signal post fix
  assign OUT_UNBOUNDED_main_28879_29542 = s_done_fu_main_28879_29542;
  assign OUT_UNBOUNDED_main_28879_29543 = s_done_fu_main_28879_29543;

endmodule

// FSM based controller description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_main(done_port, selector_IN_UNBOUNDED_main_28879_29542, selector_IN_UNBOUNDED_main_28879_29543, wrenable_reg_0, OUT_UNBOUNDED_main_28879_29542, OUT_UNBOUNDED_main_28879_29543, clock, reset, start_port);
  // IN
  input OUT_UNBOUNDED_main_28879_29542;
  input OUT_UNBOUNDED_main_28879_29543;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_IN_UNBOUNDED_main_28879_29542;
  output selector_IN_UNBOUNDED_main_28879_29543;
  output wrenable_reg_0;
  parameter [4:0] S_0 = 5'b00001,
    S_1 = 5'b00010,
    S_2 = 5'b00100,
    S_3 = 5'b01000,
    S_4 = 5'b10000;
  reg [4:0] _present_state, _next_state;
  reg done_port;
  reg selector_IN_UNBOUNDED_main_28879_29542;
  reg selector_IN_UNBOUNDED_main_28879_29543;
  reg wrenable_reg_0;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    selector_IN_UNBOUNDED_main_28879_29542 = 1'b0;
    selector_IN_UNBOUNDED_main_28879_29543 = 1'b0;
    wrenable_reg_0 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          selector_IN_UNBOUNDED_main_28879_29542 = 1'b1;
          wrenable_reg_0 = 1'b1;
          if (OUT_UNBOUNDED_main_28879_29542 == 1'b0)
            begin
              _next_state = S_1;
            end
          else
            begin
              _next_state = S_2;
            end
        end
        else
        begin
          wrenable_reg_0 = 1'bX;
          _next_state = S_0;
        end
      S_1 :
        begin
          if (OUT_UNBOUNDED_main_28879_29542 == 1'b0)
            begin
              _next_state = S_1;
            end
          else
            begin
              _next_state = S_2;
            end
        end
      S_2 :
        begin
          selector_IN_UNBOUNDED_main_28879_29543 = 1'b1;
          if (OUT_UNBOUNDED_main_28879_29543 == 1'b0)
            begin
              _next_state = S_3;
            end
          else
            begin
              _next_state = S_4;
              done_port = 1'b1;
            end
        end
      S_3 :
        begin
          if (OUT_UNBOUNDED_main_28879_29543 == 1'b0)
            begin
              _next_state = S_3;
            end
          else
            begin
              _next_state = S_4;
              done_port = 1'b1;
            end
        end
      S_4 :
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
  parameter MEM_var_28859_28870=96, MEM_var_28861_28879=32, MEM_var_28862_28877=128, MEM_var_28864_28877=160, MEM_var_28865_28877=192, MEM_var_28866_28877=224, MEM_var_28867_28877=256, MEM_var_28868_28879=64;
  // IN
  input clock;
  input reset;
  input start_port;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [17:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [17:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  // OUT
  output done_port;
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [17:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  // Component and signal declarations
  wire OUT_UNBOUNDED_main_28879_29542;
  wire OUT_UNBOUNDED_main_28879_29543;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire selector_IN_UNBOUNDED_main_28879_29542;
  wire selector_IN_UNBOUNDED_main_28879_29543;
  wire wrenable_reg_0;
  
  controller_main Controller_i (.done_port(done_delayed_REG_signal_in), .selector_IN_UNBOUNDED_main_28879_29542(selector_IN_UNBOUNDED_main_28879_29542), .selector_IN_UNBOUNDED_main_28879_29543(selector_IN_UNBOUNDED_main_28879_29543), .wrenable_reg_0(wrenable_reg_0), .OUT_UNBOUNDED_main_28879_29542(OUT_UNBOUNDED_main_28879_29542), .OUT_UNBOUNDED_main_28879_29543(OUT_UNBOUNDED_main_28879_29543), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_main #(.MEM_var_28859_28870(MEM_var_28859_28870), .MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28862_28877(MEM_var_28862_28877), .MEM_var_28864_28877(MEM_var_28864_28877), .MEM_var_28865_28877(MEM_var_28865_28877), .MEM_var_28866_28877(MEM_var_28866_28877), .MEM_var_28867_28877(MEM_var_28867_28877), .MEM_var_28868_28879(MEM_var_28868_28879)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_UNBOUNDED_main_28879_29542(OUT_UNBOUNDED_main_28879_29542), .OUT_UNBOUNDED_main_28879_29543(OUT_UNBOUNDED_main_28879_29543), .clock(clock), .reset(reset), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .selector_IN_UNBOUNDED_main_28879_29542(selector_IN_UNBOUNDED_main_28879_29542), .selector_IN_UNBOUNDED_main_28879_29543(selector_IN_UNBOUNDED_main_28879_29543), .wrenable_reg_0(wrenable_reg_0));
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
  parameter MEM_var_28859_28870=96, MEM_var_28861_28879=32, MEM_var_28862_28877=128, MEM_var_28864_28877=160, MEM_var_28865_28877=192, MEM_var_28866_28877=224, MEM_var_28867_28877=256, MEM_var_28868_28879=64;
  // IN
  input clock;
  input reset;
  input start_port;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [17:0] S_addr_ram;
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
  output [17:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  // Component and signal declarations
  
  _main #(.MEM_var_28859_28870(MEM_var_28859_28870), .MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28862_28877(MEM_var_28862_28877), .MEM_var_28864_28877(MEM_var_28864_28877), .MEM_var_28865_28877(MEM_var_28865_28877), .MEM_var_28866_28877(MEM_var_28866_28877), .MEM_var_28867_28877(MEM_var_28867_28877), .MEM_var_28868_28879(MEM_var_28868_28879)) _main_i0 (.done_port(done_port), .Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .clock(clock), .reset(reset), .start_port(start_port), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram({8'b00000000, 8'b00000000}), .Sin_DataRdy({1'b0, 1'b0}), .Min_oe_ram({1'b0, 1'b0}), .Min_we_ram({1'b0, 1'b0}), .Min_addr_ram({9'b000000000, 9'b000000000}), .Min_Wdata_ram({8'b00000000, 8'b00000000}), .Min_data_ram_size({4'b0000, 4'b0000}));

endmodule


