// 
// Politecnico di Milano
// Code created using PandA - Version: PandA 0.9.6 - Revision 891ec3caed502474cab0813cc4a9fc678deabaa5 - Date 2022-06-10T17:05:10
// bambu executed with: bambu -I/home/dews/Scrivania/bambu-hls/RESULTS/Bambu/xc7z020-1clg484-Zynq-7000/28x28/dijkstra/includes/values_98 --simulate --simulator=VERILATOR --clock-period=5 --device-name=xc7z020-1clg484-VVD /home/dews/Scrivania/bambu-hls/cc4cs_bambu/benchmarkBasic/dijkstra/thrd.c 
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
module eq_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 == in2;
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

// Datapath RTL description for dijkstraF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_dijkstraF(clock, reset, in_port_a, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_STORE, fuselector_BMEMORY_CTRLN_84_i0_LOAD, fuselector_BMEMORY_CTRLN_84_i0_STORE, selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0, selector_MUX_100_reg_10_0_0_0, selector_MUX_103_reg_13_0_0_0, selector_MUX_106_reg_16_0_0_0, selector_MUX_107_reg_17_0_0_0, selector_MUX_107_reg_17_0_0_1, selector_MUX_115_reg_24_0_0_0, selector_MUX_116_reg_25_0_0_0, selector_MUX_117_reg_26_0_0_0, selector_MUX_122_reg_30_0_0_0, selector_MUX_126_reg_34_0_0_0, selector_MUX_128_reg_36_0_0_0, selector_MUX_128_reg_36_0_0_1, selector_MUX_129_reg_37_0_0_0, selector_MUX_136_reg_43_0_0_0, selector_MUX_140_reg_47_0_0_0, selector_MUX_140_reg_47_0_0_1, selector_MUX_143_reg_5_0_0_0, selector_MUX_148_reg_6_0_0_0, selector_MUX_148_reg_6_0_0_1, selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0, selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0, selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1, selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_0, selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_1, selector_MUX_8_BMEMORY_CTRLN_84_i0_0_1_0, selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_0, selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_1, selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_2, selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_3, selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_0, selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_1, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_29, wrenable_reg_3, wrenable_reg_30, wrenable_reg_31, wrenable_reg_32, wrenable_reg_33, wrenable_reg_34, wrenable_reg_35, wrenable_reg_36, wrenable_reg_37, wrenable_reg_38, wrenable_reg_39, wrenable_reg_4, wrenable_reg_40, wrenable_reg_41, wrenable_reg_42, wrenable_reg_43, wrenable_reg_44, wrenable_reg_45, wrenable_reg_46, wrenable_reg_47, wrenable_reg_48, wrenable_reg_49, wrenable_reg_5, wrenable_reg_50, wrenable_reg_51, wrenable_reg_52, wrenable_reg_53, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_dijkstraF_28863_28972, OUT_CONDITION_dijkstraF_28863_29020, OUT_CONDITION_dijkstraF_28863_29093, OUT_CONDITION_dijkstraF_28863_29106, OUT_CONDITION_dijkstraF_28863_29133, OUT_CONDITION_dijkstraF_28863_29153, OUT_CONDITION_dijkstraF_28863_29237, OUT_CONDITION_dijkstraF_28863_29254, OUT_CONDITION_dijkstraF_28863_29265, OUT_CONDITION_dijkstraF_28863_29298, OUT_CONDITION_dijkstraF_28863_29301, OUT_CONDITION_dijkstraF_28863_29306, OUT_CONDITION_dijkstraF_28863_29311, OUT_MULTIIF_dijkstraF_28863_29622);
  parameter MEM_var_28859_28863=128;
  // IN
  input clock;
  input reset;
  input [31:0] in_port_a;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [15:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [15:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_STORE;
  input fuselector_BMEMORY_CTRLN_84_i0_LOAD;
  input fuselector_BMEMORY_CTRLN_84_i0_STORE;
  input selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0;
  input selector_MUX_100_reg_10_0_0_0;
  input selector_MUX_103_reg_13_0_0_0;
  input selector_MUX_106_reg_16_0_0_0;
  input selector_MUX_107_reg_17_0_0_0;
  input selector_MUX_107_reg_17_0_0_1;
  input selector_MUX_115_reg_24_0_0_0;
  input selector_MUX_116_reg_25_0_0_0;
  input selector_MUX_117_reg_26_0_0_0;
  input selector_MUX_122_reg_30_0_0_0;
  input selector_MUX_126_reg_34_0_0_0;
  input selector_MUX_128_reg_36_0_0_0;
  input selector_MUX_128_reg_36_0_0_1;
  input selector_MUX_129_reg_37_0_0_0;
  input selector_MUX_136_reg_43_0_0_0;
  input selector_MUX_140_reg_47_0_0_0;
  input selector_MUX_140_reg_47_0_0_1;
  input selector_MUX_143_reg_5_0_0_0;
  input selector_MUX_148_reg_6_0_0_0;
  input selector_MUX_148_reg_6_0_0_1;
  input selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0;
  input selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0;
  input selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1;
  input selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_0;
  input selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_1;
  input selector_MUX_8_BMEMORY_CTRLN_84_i0_0_1_0;
  input selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_0;
  input selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_1;
  input selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_2;
  input selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_3;
  input selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_0;
  input selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_1;
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
  input wrenable_reg_29;
  input wrenable_reg_3;
  input wrenable_reg_30;
  input wrenable_reg_31;
  input wrenable_reg_32;
  input wrenable_reg_33;
  input wrenable_reg_34;
  input wrenable_reg_35;
  input wrenable_reg_36;
  input wrenable_reg_37;
  input wrenable_reg_38;
  input wrenable_reg_39;
  input wrenable_reg_4;
  input wrenable_reg_40;
  input wrenable_reg_41;
  input wrenable_reg_42;
  input wrenable_reg_43;
  input wrenable_reg_44;
  input wrenable_reg_45;
  input wrenable_reg_46;
  input wrenable_reg_47;
  input wrenable_reg_48;
  input wrenable_reg_49;
  input wrenable_reg_5;
  input wrenable_reg_50;
  input wrenable_reg_51;
  input wrenable_reg_52;
  input wrenable_reg_53;
  input wrenable_reg_6;
  input wrenable_reg_7;
  input wrenable_reg_8;
  input wrenable_reg_9;
  // OUT
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [15:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  output OUT_CONDITION_dijkstraF_28863_28972;
  output OUT_CONDITION_dijkstraF_28863_29020;
  output OUT_CONDITION_dijkstraF_28863_29093;
  output OUT_CONDITION_dijkstraF_28863_29106;
  output OUT_CONDITION_dijkstraF_28863_29133;
  output OUT_CONDITION_dijkstraF_28863_29153;
  output OUT_CONDITION_dijkstraF_28863_29237;
  output OUT_CONDITION_dijkstraF_28863_29254;
  output OUT_CONDITION_dijkstraF_28863_29265;
  output OUT_CONDITION_dijkstraF_28863_29298;
  output OUT_CONDITION_dijkstraF_28863_29301;
  output OUT_CONDITION_dijkstraF_28863_29306;
  output OUT_CONDITION_dijkstraF_28863_29311;
  output [1:0] OUT_MULTIIF_dijkstraF_28863_29622;
  // Component and signal declarations
  wire [7:0] null_out_signal_BMEMORY_CTRLN_84_i0_out1_1;
  wire [7:0] null_out_signal_array_28859_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_28859_0_proxy_out1_1;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_array_28859_0;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_array_28859_0;
  wire [7:0] out_BMEMORY_CTRLN_84_i0_BMEMORY_CTRLN_84_i0;
  wire signed [7:0] out_IIdata_converter_FU_68_i0_fu_dijkstraF_28863_29288;
  wire [7:0] out_IUdata_converter_FU_14_i0_fu_dijkstraF_28863_28994;
  wire [7:0] out_IUdata_converter_FU_20_i0_fu_dijkstraF_28863_29062;
  wire [7:0] out_IUdata_converter_FU_54_i0_fu_dijkstraF_28863_29463;
  wire [7:0] out_IUdata_converter_FU_69_i0_fu_dijkstraF_28863_29270;
  wire [2:0] out_IUdata_converter_FU_75_i0_fu_dijkstraF_28863_29497;
  wire [7:0] out_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0;
  wire [3:0] out_MUX_100_reg_10_0_0_0;
  wire [31:0] out_MUX_103_reg_13_0_0_0;
  wire [31:0] out_MUX_106_reg_16_0_0_0;
  wire [3:0] out_MUX_107_reg_17_0_0_0;
  wire [3:0] out_MUX_107_reg_17_0_0_1;
  wire [7:0] out_MUX_115_reg_24_0_0_0;
  wire [7:0] out_MUX_116_reg_25_0_0_0;
  wire [31:0] out_MUX_117_reg_26_0_0_0;
  wire [7:0] out_MUX_122_reg_30_0_0_0;
  wire [2:0] out_MUX_126_reg_34_0_0_0;
  wire [3:0] out_MUX_128_reg_36_0_0_0;
  wire [3:0] out_MUX_128_reg_36_0_0_1;
  wire [31:0] out_MUX_129_reg_37_0_0_0;
  wire [7:0] out_MUX_136_reg_43_0_0_0;
  wire [3:0] out_MUX_140_reg_47_0_0_0;
  wire [3:0] out_MUX_140_reg_47_0_0_1;
  wire [2:0] out_MUX_143_reg_5_0_0_0;
  wire [7:0] out_MUX_148_reg_6_0_0_0;
  wire [7:0] out_MUX_148_reg_6_0_0_1;
  wire [7:0] out_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0;
  wire [7:0] out_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0;
  wire [7:0] out_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1;
  wire [7:0] out_MUX_8_BMEMORY_CTRLN_84_i0_0_0_0;
  wire [7:0] out_MUX_8_BMEMORY_CTRLN_84_i0_0_0_1;
  wire [7:0] out_MUX_8_BMEMORY_CTRLN_84_i0_0_1_0;
  wire [7:0] out_MUX_9_BMEMORY_CTRLN_84_i0_1_0_0;
  wire [7:0] out_MUX_9_BMEMORY_CTRLN_84_i0_1_0_1;
  wire [7:0] out_MUX_9_BMEMORY_CTRLN_84_i0_1_0_2;
  wire [7:0] out_MUX_9_BMEMORY_CTRLN_84_i0_1_0_3;
  wire [7:0] out_MUX_9_BMEMORY_CTRLN_84_i0_1_1_0;
  wire [7:0] out_MUX_9_BMEMORY_CTRLN_84_i0_1_1_1;
  wire signed [7:0] out_UIdata_converter_FU_13_i0_fu_dijkstraF_28863_28992;
  wire signed [7:0] out_UIdata_converter_FU_21_i0_fu_dijkstraF_28863_29051;
  wire signed [8:0] out_UIdata_converter_FU_52_i0_fu_dijkstraF_28863_29235;
  wire signed [8:0] out_UIdata_converter_FU_65_i0_fu_dijkstraF_28863_29289;
  wire signed [3:0] out_UIdata_converter_FU_73_i0_fu_dijkstraF_28863_29201;
  wire [2:0] out_UUdata_converter_FU_22_i0_fu_dijkstraF_28863_29092;
  wire [31:0] out_UUdata_converter_FU_38_i0_fu_dijkstraF_28863_29038;
  wire [31:0] out_UUdata_converter_FU_39_i0_fu_dijkstraF_28863_29073;
  wire [7:0] out_UUdata_converter_FU_3_i0_fu_dijkstraF_28863_28995;
  wire [31:0] out_UUdata_converter_FU_41_i0_fu_dijkstraF_28863_29130;
  wire [7:0] out_UUdata_converter_FU_51_i0_fu_dijkstraF_28863_29232;
  wire [11:0] out_UUdata_converter_FU_53_i0_fu_dijkstraF_28863_29460;
  wire [31:0] out_UUdata_converter_FU_5_i0_fu_dijkstraF_28863_29114;
  wire [2:0] out_UUdata_converter_FU_63_i0_fu_dijkstraF_28863_29164;
  wire [31:0] out_UUdata_converter_FU_64_i0_fu_dijkstraF_28863_29263;
  wire [31:0] out_UUdata_converter_FU_6_i0_fu_dijkstraF_28863_29115;
  wire [2:0] out_UUdata_converter_FU_72_i0_fu_dijkstraF_28863_29196;
  wire [7:0] out_UUdata_converter_FU_74_i0_fu_dijkstraF_28863_29494;
  wire [2:0] out_UUdata_converter_FU_79_i0_fu_dijkstraF_28863_29300;
  wire [31:0] out_UUdata_converter_FU_8_i0_fu_dijkstraF_28863_29421;
  wire [7:0] out_UUdata_converter_FU_9_i0_fu_dijkstraF_28863_29441;
  wire [31:0] out_addr_expr_FU_4_i0_fu_dijkstraF_28863_29403;
  wire [31:0] out_addr_expr_FU_7_i0_fu_dijkstraF_28863_29437;
  wire signed [7:0] out_bit_ior_concat_expr_FU_85_i0_fu_dijkstraF_28863_28993;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [7:0] out_const_10;
  wire [1:0] out_const_2;
  wire [4:0] out_const_3;
  wire out_const_4;
  wire [3:0] out_const_5;
  wire [3:0] out_const_6;
  wire [1:0] out_const_7;
  wire [2:0] out_const_8;
  wire [7:0] out_const_9;
  wire [7:0] out_conv_in_port_a_32_8;
  wire [2:0] out_conv_out_MUX_100_reg_10_0_0_0_4_3;
  wire [7:0] out_conv_out_UUdata_converter_FU_41_i0_fu_dijkstraF_28863_29130_32_8;
  wire [7:0] out_conv_out_UUdata_converter_FU_64_i0_fu_dijkstraF_28863_29263_32_8;
  wire [31:0] out_conv_out_const_10_8_32;
  wire [3:0] out_conv_out_const_3_5_4;
  wire [7:0] out_conv_out_i_assign_conn_obj_9_ASSIGN_SIGNED_FU_i_assign_0_I_1_8;
  wire [2:0] out_conv_out_reg_17_reg_17_4_3;
  wire [7:0] out_conv_out_reg_18_reg_18_32_8;
  wire [7:0] out_conv_out_reg_19_reg_19_32_8;
  wire [7:0] out_conv_out_reg_33_reg_33_13_8;
  wire [2:0] out_conv_out_reg_36_reg_36_4_3;
  wire [7:0] out_conv_out_reg_39_reg_39_32_8;
  wire [7:0] out_conv_out_reg_3_reg_3_32_8;
  wire [2:0] out_conv_out_reg_47_reg_47_4_3;
  wire [7:0] out_conv_out_reg_48_reg_48_32_8;
  wire [7:0] out_conv_out_reg_50_reg_50_32_8;
  wire [6:0] out_conv_out_reg_6_reg_6_8_7;
  wire [2:0] out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7_1_3;
  wire [31:0] out_conv_out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_9_8_32;
  wire [31:0] out_conv_out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_10_8_32;
  wire [2:0] out_conv_out_u_assign_conn_obj_14_ASSIGN_UNSIGNED_FU_u_assign_11_1_3;
  wire [7:0] out_conv_out_u_assign_conn_obj_15_ASSIGN_UNSIGNED_FU_u_assign_12_1_8;
  wire [3:0] out_conv_out_u_assign_conn_obj_16_ASSIGN_UNSIGNED_FU_u_assign_13_1_4;
  wire [31:0] out_conv_out_u_assign_conn_obj_18_ASSIGN_UNSIGNED_FU_u_assign_15_8_32;
  wire [3:0] out_conv_out_u_assign_conn_obj_21_ASSIGN_UNSIGNED_FU_u_assign_18_1_4;
  wire [7:0] out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_16_1_8;
  wire [3:0] out_conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_20_1_4;
  wire [3:0] out_conv_out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_22_1_4;
  wire out_eq_expr_FU_8_0_8_86_i0_eq_expr_FU_8_0_8_86_i0;
  wire out_eq_expr_FU_8_0_8_87_i0_fu_dijkstraF_28863_29580;
  wire signed [0:0] out_i_assign_conn_obj_9_ASSIGN_SIGNED_FU_i_assign_0;
  wire [7:0] out_iu_conv_conn_obj_10_IUdata_converter_FU_iu_conv_1;
  wire [7:0] out_iu_conv_conn_obj_13_IUdata_converter_FU_iu_conv_2;
  wire [7:0] out_iu_conv_conn_obj_19_IUdata_converter_FU_iu_conv_3;
  wire [7:0] out_iu_conv_conn_obj_22_IUdata_converter_FU_iu_conv_4;
  wire [7:0] out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_5;
  wire [7:0] out_iu_conv_conn_obj_8_IUdata_converter_FU_iu_conv_6;
  wire signed [7:0] out_lshift_expr_FU_8_0_8_88_i0_fu_dijkstraF_28863_29607;
  wire out_lt_expr_FU_16_16_16_89_i0_fu_dijkstraF_28863_29582;
  wire out_lt_expr_FU_8_0_8_90_i0_fu_dijkstraF_28863_29358;
  wire out_lt_expr_FU_8_8_8_91_i0_fu_dijkstraF_28863_29588;
  wire [1:0] out_multi_read_cond_FU_31_i0_fu_dijkstraF_28863_29622;
  wire out_ne_expr_FU_8_8_8_92_i0_fu_dijkstraF_28863_29566;
  wire signed [6:0] out_plus_expr_FU_8_0_8_93_i0_fu_dijkstraF_28863_29604;
  wire signed [7:0] out_plus_expr_FU_8_8_8_94_i0_fu_dijkstraF_28863_29216;
  wire out_read_cond_FU_12_i0_fu_dijkstraF_28863_28972;
  wire out_read_cond_FU_23_i0_fu_dijkstraF_28863_29020;
  wire out_read_cond_FU_26_i0_fu_dijkstraF_28863_29093;
  wire out_read_cond_FU_29_i0_fu_dijkstraF_28863_29106;
  wire out_read_cond_FU_42_i0_fu_dijkstraF_28863_29133;
  wire out_read_cond_FU_46_i0_fu_dijkstraF_28863_29153;
  wire out_read_cond_FU_55_i0_fu_dijkstraF_28863_29237;
  wire out_read_cond_FU_56_i0_fu_dijkstraF_28863_29254;
  wire out_read_cond_FU_66_i0_fu_dijkstraF_28863_29265;
  wire out_read_cond_FU_71_i0_fu_dijkstraF_28863_29298;
  wire out_read_cond_FU_80_i0_fu_dijkstraF_28863_29301;
  wire out_read_cond_FU_82_i0_fu_dijkstraF_28863_29306;
  wire out_read_cond_FU_83_i0_fu_dijkstraF_28863_29311;
  wire [7:0] out_reg_0_reg_0;
  wire [2:0] out_reg_10_reg_10;
  wire [31:0] out_reg_11_reg_11;
  wire [31:0] out_reg_12_reg_12;
  wire [31:0] out_reg_13_reg_13;
  wire [3:0] out_reg_14_reg_14;
  wire out_reg_15_reg_15;
  wire [31:0] out_reg_16_reg_16;
  wire [3:0] out_reg_17_reg_17;
  wire [31:0] out_reg_18_reg_18;
  wire [31:0] out_reg_19_reg_19;
  wire [31:0] out_reg_1_reg_1;
  wire out_reg_20_reg_20;
  wire out_reg_21_reg_21;
  wire out_reg_22_reg_22;
  wire [7:0] out_reg_23_reg_23;
  wire [7:0] out_reg_24_reg_24;
  wire [7:0] out_reg_25_reg_25;
  wire [31:0] out_reg_26_reg_26;
  wire [31:0] out_reg_27_reg_27;
  wire out_reg_28_reg_28;
  wire [7:0] out_reg_29_reg_29;
  wire [31:0] out_reg_2_reg_2;
  wire [7:0] out_reg_30_reg_30;
  wire [11:0] out_reg_31_reg_31;
  wire [7:0] out_reg_32_reg_32;
  wire [12:0] out_reg_33_reg_33;
  wire [2:0] out_reg_34_reg_34;
  wire [2:0] out_reg_35_reg_35;
  wire [3:0] out_reg_36_reg_36;
  wire [31:0] out_reg_37_reg_37;
  wire [8:0] out_reg_38_reg_38;
  wire [31:0] out_reg_39_reg_39;
  wire [31:0] out_reg_3_reg_3;
  wire out_reg_40_reg_40;
  wire [7:0] out_reg_41_reg_41;
  wire out_reg_42_reg_42;
  wire [7:0] out_reg_43_reg_43;
  wire [7:0] out_reg_44_reg_44;
  wire [2:0] out_reg_45_reg_45;
  wire [7:0] out_reg_46_reg_46;
  wire [3:0] out_reg_47_reg_47;
  wire [31:0] out_reg_48_reg_48;
  wire [7:0] out_reg_49_reg_49;
  wire [7:0] out_reg_4_reg_4;
  wire [31:0] out_reg_50_reg_50;
  wire out_reg_51_reg_51;
  wire [7:0] out_reg_52_reg_52;
  wire [7:0] out_reg_53_reg_53;
  wire [2:0] out_reg_5_reg_5;
  wire [7:0] out_reg_6_reg_6;
  wire out_reg_7_reg_7;
  wire [7:0] out_reg_8_reg_8;
  wire [7:0] out_reg_9_reg_9;
  wire signed [6:0] out_rshift_expr_FU_8_0_8_95_i0_fu_dijkstraF_28863_29599;
  wire out_truth_and_expr_FU_1_1_1_96_i0_fu_dijkstraF_28863_29628;
  wire out_truth_not_expr_FU_1_1_97_i0_fu_dijkstraF_28863_29625;
  wire [0:0] out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7;
  wire [7:0] out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_9;
  wire [7:0] out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_10;
  wire [0:0] out_u_assign_conn_obj_14_ASSIGN_UNSIGNED_FU_u_assign_11;
  wire [0:0] out_u_assign_conn_obj_15_ASSIGN_UNSIGNED_FU_u_assign_12;
  wire [0:0] out_u_assign_conn_obj_16_ASSIGN_UNSIGNED_FU_u_assign_13;
  wire [3:0] out_u_assign_conn_obj_17_ASSIGN_UNSIGNED_FU_u_assign_14;
  wire [7:0] out_u_assign_conn_obj_18_ASSIGN_UNSIGNED_FU_u_assign_15;
  wire [7:0] out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_8;
  wire [3:0] out_u_assign_conn_obj_20_ASSIGN_UNSIGNED_FU_u_assign_17;
  wire [0:0] out_u_assign_conn_obj_21_ASSIGN_UNSIGNED_FU_u_assign_18;
  wire [0:0] out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_16;
  wire [3:0] out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_19;
  wire [0:0] out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_20;
  wire [3:0] out_u_assign_conn_obj_5_ASSIGN_UNSIGNED_FU_u_assign_21;
  wire [0:0] out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_22;
  wire [7:0] out_ui_cond_expr_FU_8_8_8_8_98_i0_fu_dijkstraF_28863_29629;
  wire [2:0] out_ui_cond_expr_FU_8_8_8_8_98_i1_fu_dijkstraF_28863_29632;
  wire out_ui_eq_expr_FU_8_0_8_99_i0_fu_dijkstraF_28863_29578;
  wire out_ui_eq_expr_FU_8_8_8_100_i0_fu_dijkstraF_28863_29564;
  wire [10:0] out_ui_lshift_expr_FU_16_0_16_101_i0_fu_dijkstraF_28863_29233;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_102_i0_fu_dijkstraF_28863_29620;
  wire [7:0] out_ui_lshift_expr_FU_8_0_8_103_i0_fu_dijkstraF_28863_28970;
  wire [5:0] out_ui_lshift_expr_FU_8_0_8_104_i0_fu_dijkstraF_28863_29189;
  wire [5:0] out_ui_lshift_expr_FU_8_0_8_105_i0_fu_dijkstraF_28863_29386;
  wire out_ui_ne_expr_FU_32_32_32_106_i0_fu_dijkstraF_28863_29572;
  wire out_ui_ne_expr_FU_8_0_8_107_i0_fu_dijkstraF_28863_29562;
  wire out_ui_ne_expr_FU_8_0_8_108_i0_fu_dijkstraF_28863_29568;
  wire out_ui_ne_expr_FU_8_0_8_108_i1_fu_dijkstraF_28863_29584;
  wire out_ui_ne_expr_FU_8_0_8_108_i2_fu_dijkstraF_28863_29590;
  wire out_ui_ne_expr_FU_8_0_8_109_i0_fu_dijkstraF_28863_29570;
  wire out_ui_ne_expr_FU_8_8_8_110_i0_fu_dijkstraF_28863_29586;
  wire [7:0] out_ui_negate_expr_FU_8_8_111_i0_fu_dijkstraF_28863_29055;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_112_i0_fu_dijkstraF_28863_29078;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_112_i1_fu_dijkstraF_28863_29132;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_113_i0_fu_dijkstraF_28863_29280;
  wire [28:0] out_ui_plus_expr_FU_32_0_32_114_i0_fu_dijkstraF_28863_29617;
  wire [2:0] out_ui_plus_expr_FU_8_0_8_115_i0_fu_dijkstraF_28863_28971;
  wire [3:0] out_ui_plus_expr_FU_8_0_8_115_i1_fu_dijkstraF_28863_29102;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_115_i2_fu_dijkstraF_28863_29231;
  wire [3:0] out_ui_plus_expr_FU_8_0_8_116_i0_fu_dijkstraF_28863_29088;
  wire [3:0] out_ui_plus_expr_FU_8_0_8_116_i1_fu_dijkstraF_28863_29170;
  wire [3:0] out_ui_plus_expr_FU_8_0_8_116_i2_fu_dijkstraF_28863_29213;
  wire [11:0] out_ui_pointer_plus_expr_FU_16_16_16_117_i0_fu_dijkstraF_28863_29234;
  wire [12:0] out_ui_pointer_plus_expr_FU_16_16_16_117_i1_fu_dijkstraF_28863_29469;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_0_32_118_i0_fu_dijkstraF_28863_29412;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_119_i0_fu_dijkstraF_28863_29361;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_119_i1_fu_dijkstraF_28863_29389;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_119_i2_fu_dijkstraF_28863_29489;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_119_i3_fu_dijkstraF_28863_29520;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_119_i4_fu_dijkstraF_28863_29543;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_120_i0_fu_dijkstraF_28863_29185;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_120_i1_fu_dijkstraF_28863_29503;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_120_i2_fu_dijkstraF_28863_29536;
  wire [28:0] out_ui_rshift_expr_FU_32_0_32_121_i0_fu_dijkstraF_28863_29612;
  wire [15:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [15:0] sig_in_bus_mergerMout_addr_ram1_0;
  wire [7:0] sig_in_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_0;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_0;
  wire [15:0] sig_in_vector_bus_mergerMout_Wdata_ram0_0;
  wire [15:0] sig_in_vector_bus_mergerMout_addr_ram1_0;
  wire [7:0] sig_in_vector_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_vector_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_vector_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_0;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_0;
  wire [15:0] sig_out_bus_mergerMout_Wdata_ram0_;
  wire [15:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [7:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire [1:0] sig_out_bus_mergerMout_oe_ram3_;
  wire [1:0] sig_out_bus_mergerMout_we_ram4_;
  wire [1:0] sig_out_bus_mergerSout_DataRdy5_;
  wire [15:0] sig_out_bus_mergerSout_Rdata_ram6_;
  
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_SIGNED_FU_i_assign_0 (.out1(out_i_assign_conn_obj_9_ASSIGN_SIGNED_FU_i_assign_0), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_UNSIGNED_FU_u_assign_10 (.out1(out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_10), .in1(out_reg_0_reg_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_11 (.out1(out_u_assign_conn_obj_14_ASSIGN_UNSIGNED_FU_u_assign_11), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_12 (.out1(out_u_assign_conn_obj_15_ASSIGN_UNSIGNED_FU_u_assign_12), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_13 (.out1(out_u_assign_conn_obj_16_ASSIGN_UNSIGNED_FU_u_assign_13), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(4), .BITSIZE_out1(4)) ASSIGN_UNSIGNED_FU_u_assign_14 (.out1(out_u_assign_conn_obj_17_ASSIGN_UNSIGNED_FU_u_assign_14), .in1(out_reg_36_reg_36));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_UNSIGNED_FU_u_assign_15 (.out1(out_u_assign_conn_obj_18_ASSIGN_UNSIGNED_FU_u_assign_15), .in1(out_reg_0_reg_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_16 (.out1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_16), .in1(out_const_4));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(4), .BITSIZE_out1(4)) ASSIGN_UNSIGNED_FU_u_assign_17 (.out1(out_u_assign_conn_obj_20_ASSIGN_UNSIGNED_FU_u_assign_17), .in1(out_reg_47_reg_47));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_18 (.out1(out_u_assign_conn_obj_21_ASSIGN_UNSIGNED_FU_u_assign_18), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(4), .BITSIZE_out1(4)) ASSIGN_UNSIGNED_FU_u_assign_19 (.out1(out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_19), .in1(out_reg_14_reg_14));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_20 (.out1(out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_20), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(4), .BITSIZE_out1(4)) ASSIGN_UNSIGNED_FU_u_assign_21 (.out1(out_u_assign_conn_obj_5_ASSIGN_UNSIGNED_FU_u_assign_21), .in1(out_reg_17_reg_17));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_22 (.out1(out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_22), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_7 (.out1(out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_UNSIGNED_FU_u_assign_8 (.out1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_8), .in1(out_reg_6_reg_6));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_UNSIGNED_FU_u_assign_9 (.out1(out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_9), .in1(out_reg_0_reg_0));
  BMEMORY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(8), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_Min_oe_ram(1), .PORTSIZE_Min_oe_ram(2), .BITSIZE_Min_we_ram(1), .PORTSIZE_Min_we_ram(2), .BITSIZE_Mout_oe_ram(1), .PORTSIZE_Mout_oe_ram(2), .BITSIZE_Mout_we_ram(1), .PORTSIZE_Mout_we_ram(2), .BITSIZE_M_DataRdy(1), .PORTSIZE_M_DataRdy(2), .BITSIZE_Min_addr_ram(8), .PORTSIZE_Min_addr_ram(2), .BITSIZE_Mout_addr_ram(8), .PORTSIZE_Mout_addr_ram(2), .BITSIZE_M_Rdata_ram(8), .PORTSIZE_M_Rdata_ram(2), .BITSIZE_Min_Wdata_ram(8), .PORTSIZE_Min_Wdata_ram(2), .BITSIZE_Mout_Wdata_ram(8), .PORTSIZE_Mout_Wdata_ram(2), .BITSIZE_Min_data_ram_size(4), .PORTSIZE_Min_data_ram_size(2), .BITSIZE_Mout_data_ram_size(4), .PORTSIZE_Mout_data_ram_size(2)) BMEMORY_CTRLN_84_i0 (.out1({null_out_signal_BMEMORY_CTRLN_84_i0_out1_1, out_BMEMORY_CTRLN_84_i0_BMEMORY_CTRLN_84_i0}), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .in1({8'b00000000, out_MUX_8_BMEMORY_CTRLN_84_i0_0_1_0}), .in2({8'b00000000, out_MUX_9_BMEMORY_CTRLN_84_i0_1_1_1}), .in3({4'b0000, out_conv_out_const_3_5_4}), .in4({1'b0, out_const_4}), .sel_LOAD({1'b0, fuselector_BMEMORY_CTRLN_84_i0_LOAD}), .sel_STORE({1'b0, fuselector_BMEMORY_CTRLN_84_i0_STORE}), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .M_Rdata_ram(M_Rdata_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .M_DataRdy(M_DataRdy));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_10_IUdata_converter_FU_iu_conv_1), .in1(out_reg_25_reg_25));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_2 (.out1(out_iu_conv_conn_obj_13_IUdata_converter_FU_iu_conv_2), .in1(out_reg_8_reg_8));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_3 (.out1(out_iu_conv_conn_obj_19_IUdata_converter_FU_iu_conv_3), .in1(out_const_9));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_4 (.out1(out_iu_conv_conn_obj_22_IUdata_converter_FU_iu_conv_4), .in1(out_reg_52_reg_52));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_5 (.out1(out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_5), .in1(out_reg_24_reg_24));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_6 (.out1(out_iu_conv_conn_obj_8_IUdata_converter_FU_iu_conv_6), .in1(out_const_1));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0 (.out1(out_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0), .sel(selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0), .in1(out_iu_conv_conn_obj_13_IUdata_converter_FU_iu_conv_2), .in2(out_iu_conv_conn_obj_22_IUdata_converter_FU_iu_conv_4));
  MUX_GATE #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(4)) MUX_100_reg_10_0_0_0 (.out1(out_MUX_100_reg_10_0_0_0), .sel(selector_MUX_100_reg_10_0_0_0), .in1(out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_19), .in2(out_conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_20_1_4));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_103_reg_13_0_0_0 (.out1(out_MUX_103_reg_13_0_0_0), .sel(selector_MUX_103_reg_13_0_0_0), .in1(out_conv_out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_9_8_32), .in2(out_ui_plus_expr_FU_32_0_32_112_i0_fu_dijkstraF_28863_29078));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_106_reg_16_0_0_0 (.out1(out_MUX_106_reg_16_0_0_0), .sel(selector_MUX_106_reg_16_0_0_0), .in1(out_conv_out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_10_8_32), .in2(out_ui_lshift_expr_FU_32_0_32_102_i0_fu_dijkstraF_28863_29620));
  MUX_GATE #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(4)) MUX_107_reg_17_0_0_0 (.out1(out_MUX_107_reg_17_0_0_0), .sel(selector_MUX_107_reg_17_0_0_0), .in1(out_u_assign_conn_obj_5_ASSIGN_UNSIGNED_FU_u_assign_21), .in2(out_conv_out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_22_1_4));
  MUX_GATE #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(4)) MUX_107_reg_17_0_0_1 (.out1(out_MUX_107_reg_17_0_0_1), .sel(selector_MUX_107_reg_17_0_0_1), .in1(out_ui_plus_expr_FU_8_0_8_116_i0_fu_dijkstraF_28863_29088), .in2(out_MUX_107_reg_17_0_0_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_115_reg_24_0_0_0 (.out1(out_MUX_115_reg_24_0_0_0), .sel(selector_MUX_115_reg_24_0_0_0), .in1(out_reg_29_reg_29), .in2(out_UIdata_converter_FU_21_i0_fu_dijkstraF_28863_29051));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_116_reg_25_0_0_0 (.out1(out_MUX_116_reg_25_0_0_0), .sel(selector_MUX_116_reg_25_0_0_0), .in1(out_reg_24_reg_24), .in2(out_conv_out_i_assign_conn_obj_9_ASSIGN_SIGNED_FU_i_assign_0_I_1_8));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_117_reg_26_0_0_0 (.out1(out_MUX_117_reg_26_0_0_0), .sel(selector_MUX_117_reg_26_0_0_0), .in1(out_reg_27_reg_27), .in2(out_UUdata_converter_FU_5_i0_fu_dijkstraF_28863_29114));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_122_reg_30_0_0_0 (.out1(out_MUX_122_reg_30_0_0_0), .sel(selector_MUX_122_reg_30_0_0_0), .in1(out_conv_out_u_assign_conn_obj_15_ASSIGN_UNSIGNED_FU_u_assign_12_1_8), .in2(out_ui_plus_expr_FU_8_0_8_115_i2_fu_dijkstraF_28863_29231));
  MUX_GATE #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(3)) MUX_126_reg_34_0_0_0 (.out1(out_MUX_126_reg_34_0_0_0), .sel(selector_MUX_126_reg_34_0_0_0), .in1(out_conv_out_u_assign_conn_obj_14_ASSIGN_UNSIGNED_FU_u_assign_11_1_3), .in2(out_ui_cond_expr_FU_8_8_8_8_98_i1_fu_dijkstraF_28863_29632));
  MUX_GATE #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(4)) MUX_128_reg_36_0_0_0 (.out1(out_MUX_128_reg_36_0_0_0), .sel(selector_MUX_128_reg_36_0_0_0), .in1(out_conv_out_u_assign_conn_obj_16_ASSIGN_UNSIGNED_FU_u_assign_13_1_4), .in2(out_u_assign_conn_obj_17_ASSIGN_UNSIGNED_FU_u_assign_14));
  MUX_GATE #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(4)) MUX_128_reg_36_0_0_1 (.out1(out_MUX_128_reg_36_0_0_1), .sel(selector_MUX_128_reg_36_0_0_1), .in1(out_ui_plus_expr_FU_8_0_8_116_i1_fu_dijkstraF_28863_29170), .in2(out_MUX_128_reg_36_0_0_0));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_129_reg_37_0_0_0 (.out1(out_MUX_129_reg_37_0_0_0), .sel(selector_MUX_129_reg_37_0_0_0), .in1(out_conv_out_u_assign_conn_obj_18_ASSIGN_UNSIGNED_FU_u_assign_15_8_32), .in2(out_ui_plus_expr_FU_32_0_32_113_i0_fu_dijkstraF_28863_29280));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_136_reg_43_0_0_0 (.out1(out_MUX_136_reg_43_0_0_0), .sel(selector_MUX_136_reg_43_0_0_0), .in1(out_reg_9_reg_9), .in2(out_ui_cond_expr_FU_8_8_8_8_98_i0_fu_dijkstraF_28863_29629));
  MUX_GATE #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(4)) MUX_140_reg_47_0_0_0 (.out1(out_MUX_140_reg_47_0_0_0), .sel(selector_MUX_140_reg_47_0_0_0), .in1(out_u_assign_conn_obj_20_ASSIGN_UNSIGNED_FU_u_assign_17), .in2(out_conv_out_u_assign_conn_obj_21_ASSIGN_UNSIGNED_FU_u_assign_18_1_4));
  MUX_GATE #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(4)) MUX_140_reg_47_0_0_1 (.out1(out_MUX_140_reg_47_0_0_1), .sel(selector_MUX_140_reg_47_0_0_1), .in1(out_ui_plus_expr_FU_8_0_8_116_i2_fu_dijkstraF_28863_29213), .in2(out_MUX_140_reg_47_0_0_0));
  MUX_GATE #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(3)) MUX_143_reg_5_0_0_0 (.out1(out_MUX_143_reg_5_0_0_0), .sel(selector_MUX_143_reg_5_0_0_0), .in1(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7_1_3), .in2(out_ui_plus_expr_FU_8_0_8_115_i0_fu_dijkstraF_28863_28971));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_148_reg_6_0_0_0 (.out1(out_MUX_148_reg_6_0_0_0), .sel(selector_MUX_148_reg_6_0_0_0), .in1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_8), .in2(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_16_1_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_148_reg_6_0_0_1 (.out1(out_MUX_148_reg_6_0_0_1), .sel(selector_MUX_148_reg_6_0_0_1), .in1(out_ui_lshift_expr_FU_8_0_8_103_i0_fu_dijkstraF_28863_28970), .in2(out_MUX_148_reg_6_0_0_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 (.out1(out_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0), .sel(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0), .in1(out_conv_out_reg_50_reg_50_32_8), .in2(out_conv_out_UUdata_converter_FU_41_i0_fu_dijkstraF_28863_29130_32_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0 (.out1(out_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0), .sel(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0), .in1(out_conv_out_reg_48_reg_48_32_8), .in2(out_conv_out_reg_39_reg_39_32_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1 (.out1(out_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1), .sel(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1), .in1(out_conv_out_reg_3_reg_3_32_8), .in2(out_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_8_BMEMORY_CTRLN_84_i0_0_0_0 (.out1(out_MUX_8_BMEMORY_CTRLN_84_i0_0_0_0), .sel(selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_0), .in1(out_iu_conv_conn_obj_10_IUdata_converter_FU_iu_conv_1), .in2(out_iu_conv_conn_obj_19_IUdata_converter_FU_iu_conv_3));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_8_BMEMORY_CTRLN_84_i0_0_0_1 (.out1(out_MUX_8_BMEMORY_CTRLN_84_i0_0_0_1), .sel(selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_1), .in1(out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_5), .in2(out_iu_conv_conn_obj_8_IUdata_converter_FU_iu_conv_6));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_8_BMEMORY_CTRLN_84_i0_0_1_0 (.out1(out_MUX_8_BMEMORY_CTRLN_84_i0_0_1_0), .sel(selector_MUX_8_BMEMORY_CTRLN_84_i0_0_1_0), .in1(out_MUX_8_BMEMORY_CTRLN_84_i0_0_0_0), .in2(out_MUX_8_BMEMORY_CTRLN_84_i0_0_0_1));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_9_BMEMORY_CTRLN_84_i0_1_0_0 (.out1(out_MUX_9_BMEMORY_CTRLN_84_i0_1_0_0), .sel(selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_0), .in1(out_reg_49_reg_49), .in2(out_reg_46_reg_46));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_9_BMEMORY_CTRLN_84_i0_1_0_1 (.out1(out_MUX_9_BMEMORY_CTRLN_84_i0_1_0_1), .sel(selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_1), .in1(out_reg_4_reg_4), .in2(out_conv_out_reg_33_reg_33_13_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_9_BMEMORY_CTRLN_84_i0_1_0_2 (.out1(out_MUX_9_BMEMORY_CTRLN_84_i0_1_0_2), .sel(selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_2), .in1(out_conv_out_reg_19_reg_19_32_8), .in2(out_conv_out_reg_18_reg_18_32_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_9_BMEMORY_CTRLN_84_i0_1_0_3 (.out1(out_MUX_9_BMEMORY_CTRLN_84_i0_1_0_3), .sel(selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_3), .in1(out_conv_out_UUdata_converter_FU_64_i0_fu_dijkstraF_28863_29263_32_8), .in2(out_MUX_9_BMEMORY_CTRLN_84_i0_1_0_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_9_BMEMORY_CTRLN_84_i0_1_1_0 (.out1(out_MUX_9_BMEMORY_CTRLN_84_i0_1_1_0), .sel(selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_0), .in1(out_MUX_9_BMEMORY_CTRLN_84_i0_1_0_1), .in2(out_MUX_9_BMEMORY_CTRLN_84_i0_1_0_2));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_9_BMEMORY_CTRLN_84_i0_1_1_1 (.out1(out_MUX_9_BMEMORY_CTRLN_84_i0_1_1_1), .sel(selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_1), .in1(out_MUX_9_BMEMORY_CTRLN_84_i0_1_0_3), .in2(out_MUX_9_BMEMORY_CTRLN_84_i0_1_1_0));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(8), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(8), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28859.mem"), .n_elements(8), .data_size(8), .address_space_begin(MEM_var_28859_28863), .address_space_rangesize(64), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(8), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28859_0 (.out1({out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_array_28859_0, out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_array_28859_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_0), .proxy_out1({null_out_signal_array_28859_0_proxy_out1_1, null_out_signal_array_28859_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({out_iu_conv_conn_obj_8_IUdata_converter_FU_iu_conv_6, out_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0}), .in2({out_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1, out_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0}), .in3({out_conv_out_const_3_5_4, out_conv_out_const_3_5_4}), .in4({out_const_4, out_const_4}), .sel_LOAD({fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD}), .sel_STORE({fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({8'b00000000, 8'b00000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerSout_DataRdy5_ (.out1(sig_out_bus_mergerSout_DataRdy5_), .in1({sig_in_bus_mergerSout_DataRdy5_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerSout_Rdata_ram6_ (.out1(sig_out_bus_mergerSout_Rdata_ram6_), .in1({sig_in_bus_mergerSout_Rdata_ram6_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28859_28863)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(2), .value(2'b01)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(4), .value(4'b1000)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(4), .value(4'b1001)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(3), .value(3'b111)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) conv_in_port_a_32_8 (.out1(out_conv_in_port_a_32_8), .in1(in_port_a));
  UUdata_converter_FU #(.BITSIZE_in1(4), .BITSIZE_out1(3)) conv_out_MUX_100_reg_10_0_0_0_4_3 (.out1(out_conv_out_MUX_100_reg_10_0_0_0_4_3), .in1(out_MUX_100_reg_10_0_0_0));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) conv_out_UUdata_converter_FU_41_i0_fu_dijkstraF_28863_29130_32_8 (.out1(out_conv_out_UUdata_converter_FU_41_i0_fu_dijkstraF_28863_29130_32_8), .in1(out_UUdata_converter_FU_41_i0_fu_dijkstraF_28863_29130));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) conv_out_UUdata_converter_FU_64_i0_fu_dijkstraF_28863_29263_32_8 (.out1(out_conv_out_UUdata_converter_FU_64_i0_fu_dijkstraF_28863_29263_32_8), .in1(out_UUdata_converter_FU_64_i0_fu_dijkstraF_28863_29263));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_10_8_32 (.out1(out_conv_out_const_10_8_32), .in1(out_const_10));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_3_5_4 (.out1(out_conv_out_const_3_5_4), .in1(out_const_3));
  IUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_i_assign_conn_obj_9_ASSIGN_SIGNED_FU_i_assign_0_I_1_8 (.out1(out_conv_out_i_assign_conn_obj_9_ASSIGN_SIGNED_FU_i_assign_0_I_1_8), .in1(out_i_assign_conn_obj_9_ASSIGN_SIGNED_FU_i_assign_0));
  UUdata_converter_FU #(.BITSIZE_in1(4), .BITSIZE_out1(3)) conv_out_reg_17_reg_17_4_3 (.out1(out_conv_out_reg_17_reg_17_4_3), .in1(out_reg_17_reg_17));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) conv_out_reg_18_reg_18_32_8 (.out1(out_conv_out_reg_18_reg_18_32_8), .in1(out_reg_18_reg_18));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) conv_out_reg_19_reg_19_32_8 (.out1(out_conv_out_reg_19_reg_19_32_8), .in1(out_reg_19_reg_19));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(8)) conv_out_reg_33_reg_33_13_8 (.out1(out_conv_out_reg_33_reg_33_13_8), .in1(out_reg_33_reg_33));
  UUdata_converter_FU #(.BITSIZE_in1(4), .BITSIZE_out1(3)) conv_out_reg_36_reg_36_4_3 (.out1(out_conv_out_reg_36_reg_36_4_3), .in1(out_reg_36_reg_36));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) conv_out_reg_39_reg_39_32_8 (.out1(out_conv_out_reg_39_reg_39_32_8), .in1(out_reg_39_reg_39));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) conv_out_reg_3_reg_3_32_8 (.out1(out_conv_out_reg_3_reg_3_32_8), .in1(out_reg_3_reg_3));
  UUdata_converter_FU #(.BITSIZE_in1(4), .BITSIZE_out1(3)) conv_out_reg_47_reg_47_4_3 (.out1(out_conv_out_reg_47_reg_47_4_3), .in1(out_reg_47_reg_47));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) conv_out_reg_48_reg_48_32_8 (.out1(out_conv_out_reg_48_reg_48_32_8), .in1(out_reg_48_reg_48));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) conv_out_reg_50_reg_50_32_8 (.out1(out_conv_out_reg_50_reg_50_32_8), .in1(out_reg_50_reg_50));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(7)) conv_out_reg_6_reg_6_8_7 (.out1(out_conv_out_reg_6_reg_6_8_7), .in1(out_reg_6_reg_6));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(3)) conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7_1_3 (.out1(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7_1_3), .in1(out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_9_8_32 (.out1(out_conv_out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_9_8_32), .in1(out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_9));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_10_8_32 (.out1(out_conv_out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_10_8_32), .in1(out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_10));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(3)) conv_out_u_assign_conn_obj_14_ASSIGN_UNSIGNED_FU_u_assign_11_1_3 (.out1(out_conv_out_u_assign_conn_obj_14_ASSIGN_UNSIGNED_FU_u_assign_11_1_3), .in1(out_u_assign_conn_obj_14_ASSIGN_UNSIGNED_FU_u_assign_11));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_15_ASSIGN_UNSIGNED_FU_u_assign_12_1_8 (.out1(out_conv_out_u_assign_conn_obj_15_ASSIGN_UNSIGNED_FU_u_assign_12_1_8), .in1(out_u_assign_conn_obj_15_ASSIGN_UNSIGNED_FU_u_assign_12));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(4)) conv_out_u_assign_conn_obj_16_ASSIGN_UNSIGNED_FU_u_assign_13_1_4 (.out1(out_conv_out_u_assign_conn_obj_16_ASSIGN_UNSIGNED_FU_u_assign_13_1_4), .in1(out_u_assign_conn_obj_16_ASSIGN_UNSIGNED_FU_u_assign_13));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_u_assign_conn_obj_18_ASSIGN_UNSIGNED_FU_u_assign_15_8_32 (.out1(out_conv_out_u_assign_conn_obj_18_ASSIGN_UNSIGNED_FU_u_assign_15_8_32), .in1(out_u_assign_conn_obj_18_ASSIGN_UNSIGNED_FU_u_assign_15));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(4)) conv_out_u_assign_conn_obj_21_ASSIGN_UNSIGNED_FU_u_assign_18_1_4 (.out1(out_conv_out_u_assign_conn_obj_21_ASSIGN_UNSIGNED_FU_u_assign_18_1_4), .in1(out_u_assign_conn_obj_21_ASSIGN_UNSIGNED_FU_u_assign_18));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_16_1_8 (.out1(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_16_1_8), .in1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_16));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(4)) conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_20_1_4 (.out1(out_conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_20_1_4), .in1(out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_20));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(4)) conv_out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_22_1_4 (.out1(out_conv_out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_22_1_4), .in1(out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_22));
  eq_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) eq_expr_FU_8_0_8_86_i0 (.out1(out_eq_expr_FU_8_0_8_86_i0_eq_expr_FU_8_0_8_86_i0), .in1(out_reg_29_reg_29), .in2(out_const_7));
  ui_lshift_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(1), .BITSIZE_out1(8), .PRECISION(8)) fu_dijkstraF_28863_28970 (.out1(out_ui_lshift_expr_FU_8_0_8_103_i0_fu_dijkstraF_28863_28970), .in1(out_conv_out_reg_6_reg_6_8_7), .in2(out_const_4));
  ui_plus_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(3)) fu_dijkstraF_28863_28971 (.out1(out_ui_plus_expr_FU_8_0_8_115_i0_fu_dijkstraF_28863_28971), .in1(out_reg_5_reg_5), .in2(out_const_4));
  read_cond_FU #(.BITSIZE_in1(1)) fu_dijkstraF_28863_28972 (.out1(out_read_cond_FU_12_i0_fu_dijkstraF_28863_28972), .in1(out_reg_7_reg_7));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_dijkstraF_28863_28992 (.out1(out_UIdata_converter_FU_13_i0_fu_dijkstraF_28863_28992), .in1(out_reg_6_reg_6));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(8), .OFFSET_PARAMETER(1)) fu_dijkstraF_28863_28993 (.out1(out_bit_ior_concat_expr_FU_85_i0_fu_dijkstraF_28863_28993), .in1(out_lshift_expr_FU_8_0_8_88_i0_fu_dijkstraF_28863_29607), .in2(out_const_2), .in3(out_const_2));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_dijkstraF_28863_28994 (.out1(out_IUdata_converter_FU_14_i0_fu_dijkstraF_28863_28994), .in1(out_bit_ior_concat_expr_FU_85_i0_fu_dijkstraF_28863_28993));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_dijkstraF_28863_28995 (.out1(out_UUdata_converter_FU_3_i0_fu_dijkstraF_28863_28995), .in1(out_conv_in_port_a_32_8));
  read_cond_FU #(.BITSIZE_in1(1)) fu_dijkstraF_28863_29020 (.out1(out_read_cond_FU_23_i0_fu_dijkstraF_28863_29020), .in1(out_lt_expr_FU_8_0_8_90_i0_fu_dijkstraF_28863_29358));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_dijkstraF_28863_29038 (.out1(out_UUdata_converter_FU_38_i0_fu_dijkstraF_28863_29038), .in1(out_reg_16_reg_16));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_dijkstraF_28863_29051 (.out1(out_UIdata_converter_FU_21_i0_fu_dijkstraF_28863_29051), .in1(out_ui_negate_expr_FU_8_8_111_i0_fu_dijkstraF_28863_29055));
  ui_negate_expr_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_dijkstraF_28863_29055 (.out1(out_ui_negate_expr_FU_8_8_111_i0_fu_dijkstraF_28863_29055), .in1(out_reg_23_reg_23));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_dijkstraF_28863_29062 (.out1(out_IUdata_converter_FU_20_i0_fu_dijkstraF_28863_29062), .in1(out_BMEMORY_CTRLN_84_i0_BMEMORY_CTRLN_84_i0));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_dijkstraF_28863_29073 (.out1(out_UUdata_converter_FU_39_i0_fu_dijkstraF_28863_29073), .in1(out_reg_13_reg_13));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(32)) fu_dijkstraF_28863_29078 (.out1(out_ui_plus_expr_FU_32_0_32_112_i0_fu_dijkstraF_28863_29078), .in1(out_reg_13_reg_13), .in2(out_const_4));
  ui_plus_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(4)) fu_dijkstraF_28863_29088 (.out1(out_ui_plus_expr_FU_8_0_8_116_i0_fu_dijkstraF_28863_29088), .in1(out_conv_out_reg_17_reg_17_4_3), .in2(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(3)) fu_dijkstraF_28863_29092 (.out1(out_UUdata_converter_FU_22_i0_fu_dijkstraF_28863_29092), .in1(out_conv_out_reg_17_reg_17_4_3));
  read_cond_FU #(.BITSIZE_in1(1)) fu_dijkstraF_28863_29093 (.out1(out_read_cond_FU_26_i0_fu_dijkstraF_28863_29093), .in1(out_reg_20_reg_20));
  ui_plus_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(4)) fu_dijkstraF_28863_29102 (.out1(out_ui_plus_expr_FU_8_0_8_115_i1_fu_dijkstraF_28863_29102), .in1(out_reg_10_reg_10), .in2(out_const_4));
  read_cond_FU #(.BITSIZE_in1(1)) fu_dijkstraF_28863_29106 (.out1(out_read_cond_FU_29_i0_fu_dijkstraF_28863_29106), .in1(out_ne_expr_FU_8_8_8_92_i0_fu_dijkstraF_28863_29566));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_dijkstraF_28863_29114 (.out1(out_UUdata_converter_FU_5_i0_fu_dijkstraF_28863_29114), .in1(out_addr_expr_FU_4_i0_fu_dijkstraF_28863_29403));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_dijkstraF_28863_29115 (.out1(out_UUdata_converter_FU_6_i0_fu_dijkstraF_28863_29115), .in1(out_ui_pointer_plus_expr_FU_32_0_32_118_i0_fu_dijkstraF_28863_29412));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_dijkstraF_28863_29130 (.out1(out_UUdata_converter_FU_41_i0_fu_dijkstraF_28863_29130), .in1(out_reg_26_reg_26));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(32)) fu_dijkstraF_28863_29132 (.out1(out_ui_plus_expr_FU_32_0_32_112_i1_fu_dijkstraF_28863_29132), .in1(out_reg_26_reg_26), .in2(out_const_4));
  read_cond_FU #(.BITSIZE_in1(1)) fu_dijkstraF_28863_29133 (.out1(out_read_cond_FU_42_i0_fu_dijkstraF_28863_29133), .in1(out_reg_28_reg_28));
  read_cond_FU #(.BITSIZE_in1(1)) fu_dijkstraF_28863_29153 (.out1(out_read_cond_FU_46_i0_fu_dijkstraF_28863_29153), .in1(out_eq_expr_FU_8_0_8_86_i0_eq_expr_FU_8_0_8_86_i0));
  UUdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(3)) fu_dijkstraF_28863_29164 (.out1(out_UUdata_converter_FU_63_i0_fu_dijkstraF_28863_29164), .in1(out_conv_out_reg_36_reg_36_4_3));
  ui_plus_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(4)) fu_dijkstraF_28863_29170 (.out1(out_ui_plus_expr_FU_8_0_8_116_i1_fu_dijkstraF_28863_29170), .in1(out_conv_out_reg_36_reg_36_4_3), .in2(out_const_4));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(6), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_dijkstraF_28863_29185 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_120_i0_fu_dijkstraF_28863_29185), .in1(out_conv_in_port_a_32_8), .in2(out_ui_lshift_expr_FU_8_0_8_104_i0_fu_dijkstraF_28863_29189));
  ui_lshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_dijkstraF_28863_29189 (.out1(out_ui_lshift_expr_FU_8_0_8_104_i0_fu_dijkstraF_28863_29189), .in1(out_UUdata_converter_FU_72_i0_fu_dijkstraF_28863_29196), .in2(out_const_7));
  UUdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(3)) fu_dijkstraF_28863_29196 (.out1(out_UUdata_converter_FU_72_i0_fu_dijkstraF_28863_29196), .in1(out_reg_34_reg_34));
  UIdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(4)) fu_dijkstraF_28863_29201 (.out1(out_UIdata_converter_FU_73_i0_fu_dijkstraF_28863_29201), .in1(out_reg_34_reg_34));
  ui_plus_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(4)) fu_dijkstraF_28863_29213 (.out1(out_ui_plus_expr_FU_8_0_8_116_i2_fu_dijkstraF_28863_29213), .in1(out_conv_out_reg_47_reg_47_4_3), .in2(out_const_4));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) fu_dijkstraF_28863_29216 (.out1(out_plus_expr_FU_8_8_8_94_i0_fu_dijkstraF_28863_29216), .in1(out_reg_29_reg_29), .in2(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_array_28859_0));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_dijkstraF_28863_29231 (.out1(out_ui_plus_expr_FU_8_0_8_115_i2_fu_dijkstraF_28863_29231), .in1(out_reg_30_reg_30), .in2(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_dijkstraF_28863_29232 (.out1(out_UUdata_converter_FU_51_i0_fu_dijkstraF_28863_29232), .in1(out_ui_plus_expr_FU_8_0_8_115_i2_fu_dijkstraF_28863_29231));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(11), .PRECISION(32)) fu_dijkstraF_28863_29233 (.out1(out_ui_lshift_expr_FU_16_0_16_101_i0_fu_dijkstraF_28863_29233), .in1(out_UUdata_converter_FU_51_i0_fu_dijkstraF_28863_29232), .in2(out_const_7));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(11), .BITSIZE_out1(12), .LSB_PARAMETER(0)) fu_dijkstraF_28863_29234 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_117_i0_fu_dijkstraF_28863_29234), .in1(out_conv_in_port_a_32_8), .in2(out_ui_lshift_expr_FU_16_0_16_101_i0_fu_dijkstraF_28863_29233));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_dijkstraF_28863_29235 (.out1(out_UIdata_converter_FU_52_i0_fu_dijkstraF_28863_29235), .in1(out_ui_plus_expr_FU_8_0_8_115_i2_fu_dijkstraF_28863_29231));
  read_cond_FU #(.BITSIZE_in1(1)) fu_dijkstraF_28863_29237 (.out1(out_read_cond_FU_55_i0_fu_dijkstraF_28863_29237), .in1(out_eq_expr_FU_8_0_8_86_i0_eq_expr_FU_8_0_8_86_i0));
  read_cond_FU #(.BITSIZE_in1(1)) fu_dijkstraF_28863_29254 (.out1(out_read_cond_FU_56_i0_fu_dijkstraF_28863_29254), .in1(out_ui_eq_expr_FU_8_0_8_99_i0_fu_dijkstraF_28863_29578));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_dijkstraF_28863_29263 (.out1(out_UUdata_converter_FU_64_i0_fu_dijkstraF_28863_29263), .in1(out_reg_37_reg_37));
  read_cond_FU #(.BITSIZE_in1(1)) fu_dijkstraF_28863_29265 (.out1(out_read_cond_FU_66_i0_fu_dijkstraF_28863_29265), .in1(out_eq_expr_FU_8_0_8_87_i0_fu_dijkstraF_28863_29580));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_dijkstraF_28863_29270 (.out1(out_IUdata_converter_FU_69_i0_fu_dijkstraF_28863_29270), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_array_28859_0));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(4), .BITSIZE_out1(32)) fu_dijkstraF_28863_29280 (.out1(out_ui_plus_expr_FU_32_0_32_113_i0_fu_dijkstraF_28863_29280), .in1(out_reg_37_reg_37), .in2(out_const_6));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_dijkstraF_28863_29288 (.out1(out_IIdata_converter_FU_68_i0_fu_dijkstraF_28863_29288), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_array_28859_0));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_dijkstraF_28863_29289 (.out1(out_UIdata_converter_FU_65_i0_fu_dijkstraF_28863_29289), .in1(out_reg_43_reg_43));
  read_cond_FU #(.BITSIZE_in1(1)) fu_dijkstraF_28863_29298 (.out1(out_read_cond_FU_71_i0_fu_dijkstraF_28863_29298), .in1(out_reg_40_reg_40));
  UUdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(3)) fu_dijkstraF_28863_29300 (.out1(out_UUdata_converter_FU_79_i0_fu_dijkstraF_28863_29300), .in1(out_conv_out_reg_47_reg_47_4_3));
  read_cond_FU #(.BITSIZE_in1(1)) fu_dijkstraF_28863_29301 (.out1(out_read_cond_FU_80_i0_fu_dijkstraF_28863_29301), .in1(out_ui_ne_expr_FU_8_8_8_110_i0_fu_dijkstraF_28863_29586));
  read_cond_FU #(.BITSIZE_in1(1)) fu_dijkstraF_28863_29306 (.out1(out_read_cond_FU_82_i0_fu_dijkstraF_28863_29306), .in1(out_lt_expr_FU_8_8_8_91_i0_fu_dijkstraF_28863_29588));
  read_cond_FU #(.BITSIZE_in1(1)) fu_dijkstraF_28863_29311 (.out1(out_read_cond_FU_83_i0_fu_dijkstraF_28863_29311), .in1(out_reg_51_reg_51));
  lt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_dijkstraF_28863_29358 (.out1(out_lt_expr_FU_8_0_8_90_i0_fu_dijkstraF_28863_29358), .in1(out_reg_29_reg_29), .in2(out_const_0));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(3), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_dijkstraF_28863_29361 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_119_i0_fu_dijkstraF_28863_29361), .in1(out_reg_11_reg_11), .in2(out_conv_out_reg_17_reg_17_4_3));
  ui_lshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_dijkstraF_28863_29386 (.out1(out_ui_lshift_expr_FU_8_0_8_105_i0_fu_dijkstraF_28863_29386), .in1(out_conv_out_reg_17_reg_17_4_3), .in2(out_const_7));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(6), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_dijkstraF_28863_29389 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_119_i1_fu_dijkstraF_28863_29389), .in1(out_reg_12_reg_12), .in2(out_ui_lshift_expr_FU_8_0_8_105_i0_fu_dijkstraF_28863_29386));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_dijkstraF_28863_29403 (.out1(out_addr_expr_FU_4_i0_fu_dijkstraF_28863_29403), .in1(out_conv_out_const_10_8_32));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(4), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_dijkstraF_28863_29412 (.out1(out_ui_pointer_plus_expr_FU_32_0_32_118_i0_fu_dijkstraF_28863_29412), .in1(out_addr_expr_FU_4_i0_fu_dijkstraF_28863_29403), .in2(out_const_5));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_dijkstraF_28863_29421 (.out1(out_UUdata_converter_FU_8_i0_fu_dijkstraF_28863_29421), .in1(out_addr_expr_FU_7_i0_fu_dijkstraF_28863_29437));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_dijkstraF_28863_29437 (.out1(out_addr_expr_FU_7_i0_fu_dijkstraF_28863_29437), .in1(out_conv_out_const_10_8_32));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_dijkstraF_28863_29441 (.out1(out_UUdata_converter_FU_9_i0_fu_dijkstraF_28863_29441), .in1(out_conv_in_port_a_32_8));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(12)) fu_dijkstraF_28863_29460 (.out1(out_UUdata_converter_FU_53_i0_fu_dijkstraF_28863_29460), .in1(out_ui_pointer_plus_expr_FU_16_16_16_117_i0_fu_dijkstraF_28863_29234));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_dijkstraF_28863_29463 (.out1(out_IUdata_converter_FU_54_i0_fu_dijkstraF_28863_29463), .in1(out_UIdata_converter_FU_52_i0_fu_dijkstraF_28863_29235));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(12), .BITSIZE_in2(8), .BITSIZE_out1(13), .LSB_PARAMETER(0)) fu_dijkstraF_28863_29469 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_117_i1_fu_dijkstraF_28863_29469), .in1(out_reg_31_reg_31), .in2(out_reg_32_reg_32));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(3), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_dijkstraF_28863_29489 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_119_i2_fu_dijkstraF_28863_29489), .in1(out_reg_2_reg_2), .in2(out_conv_out_reg_36_reg_36_4_3));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_dijkstraF_28863_29494 (.out1(out_UUdata_converter_FU_74_i0_fu_dijkstraF_28863_29494), .in1(out_ui_pointer_plus_expr_FU_8_8_8_120_i0_fu_dijkstraF_28863_29185));
  IUdata_converter_FU #(.BITSIZE_in1(4), .BITSIZE_out1(3)) fu_dijkstraF_28863_29497 (.out1(out_IUdata_converter_FU_75_i0_fu_dijkstraF_28863_29497), .in1(out_UIdata_converter_FU_73_i0_fu_dijkstraF_28863_29201));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_dijkstraF_28863_29503 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_120_i1_fu_dijkstraF_28863_29503), .in1(out_UUdata_converter_FU_74_i0_fu_dijkstraF_28863_29494), .in2(out_IUdata_converter_FU_75_i0_fu_dijkstraF_28863_29497));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(3), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_dijkstraF_28863_29520 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_119_i3_fu_dijkstraF_28863_29520), .in1(out_reg_3_reg_3), .in2(out_reg_45_reg_45));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_dijkstraF_28863_29536 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_120_i2_fu_dijkstraF_28863_29536), .in1(out_reg_44_reg_44), .in2(out_conv_out_reg_47_reg_47_4_3));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(3), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_dijkstraF_28863_29543 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_119_i4_fu_dijkstraF_28863_29543), .in1(out_reg_2_reg_2), .in2(out_conv_out_reg_47_reg_47_4_3));
  ui_ne_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(1)) fu_dijkstraF_28863_29562 (.out1(out_ui_ne_expr_FU_8_0_8_107_i0_fu_dijkstraF_28863_29562), .in1(out_ui_plus_expr_FU_8_0_8_115_i0_fu_dijkstraF_28863_28971), .in2(out_const_8));
  ui_eq_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(1)) fu_dijkstraF_28863_29564 (.out1(out_ui_eq_expr_FU_8_8_8_100_i0_fu_dijkstraF_28863_29564), .in1(out_reg_10_reg_10), .in2(out_UUdata_converter_FU_22_i0_fu_dijkstraF_28863_29092));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_dijkstraF_28863_29566 (.out1(out_ne_expr_FU_8_8_8_92_i0_fu_dijkstraF_28863_29566), .in1(out_reg_29_reg_29), .in2(out_reg_25_reg_25));
  ui_ne_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(1)) fu_dijkstraF_28863_29568 (.out1(out_ui_ne_expr_FU_8_0_8_108_i0_fu_dijkstraF_28863_29568), .in1(out_ui_plus_expr_FU_8_0_8_116_i0_fu_dijkstraF_28863_29088), .in2(out_const_5));
  ui_ne_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(1)) fu_dijkstraF_28863_29570 (.out1(out_ui_ne_expr_FU_8_0_8_109_i0_fu_dijkstraF_28863_29570), .in1(out_ui_plus_expr_FU_8_0_8_115_i1_fu_dijkstraF_28863_29102), .in2(out_const_5));
  ui_ne_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(1)) fu_dijkstraF_28863_29572 (.out1(out_ui_ne_expr_FU_32_32_32_106_i0_fu_dijkstraF_28863_29572), .in1(out_ui_plus_expr_FU_32_0_32_112_i1_fu_dijkstraF_28863_29132), .in2(out_reg_1_reg_1));
  ui_eq_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(4), .BITSIZE_out1(1)) fu_dijkstraF_28863_29578 (.out1(out_ui_eq_expr_FU_8_0_8_99_i0_fu_dijkstraF_28863_29578), .in1(out_reg_30_reg_30), .in2(out_const_5));
  eq_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_dijkstraF_28863_29580 (.out1(out_eq_expr_FU_8_0_8_87_i0_fu_dijkstraF_28863_29580), .in1(out_reg_29_reg_29), .in2(out_const_0));
  lt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_out1(1)) fu_dijkstraF_28863_29582 (.out1(out_lt_expr_FU_16_16_16_89_i0_fu_dijkstraF_28863_29582), .in1(out_IIdata_converter_FU_68_i0_fu_dijkstraF_28863_29288), .in2(out_reg_38_reg_38));
  ui_ne_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(1)) fu_dijkstraF_28863_29584 (.out1(out_ui_ne_expr_FU_8_0_8_108_i1_fu_dijkstraF_28863_29584), .in1(out_ui_plus_expr_FU_8_0_8_116_i1_fu_dijkstraF_28863_29170), .in2(out_const_5));
  ui_ne_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(1)) fu_dijkstraF_28863_29586 (.out1(out_ui_ne_expr_FU_8_8_8_110_i0_fu_dijkstraF_28863_29586), .in1(out_UUdata_converter_FU_79_i0_fu_dijkstraF_28863_29300), .in2(out_reg_34_reg_34));
  lt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_dijkstraF_28863_29588 (.out1(out_lt_expr_FU_8_8_8_91_i0_fu_dijkstraF_28863_29588), .in1(out_reg_52_reg_52), .in2(out_reg_53_reg_53));
  ui_ne_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(1)) fu_dijkstraF_28863_29590 (.out1(out_ui_ne_expr_FU_8_0_8_108_i2_fu_dijkstraF_28863_29590), .in1(out_ui_plus_expr_FU_8_0_8_116_i2_fu_dijkstraF_28863_29213), .in2(out_const_5));
  rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(7), .PRECISION(8)) fu_dijkstraF_28863_29599 (.out1(out_rshift_expr_FU_8_0_8_95_i0_fu_dijkstraF_28863_29599), .in1(out_UIdata_converter_FU_13_i0_fu_dijkstraF_28863_28992), .in2(out_const_2));
  plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_out1(7)) fu_dijkstraF_28863_29604 (.out1(out_plus_expr_FU_8_0_8_93_i0_fu_dijkstraF_28863_29604), .in1(out_rshift_expr_FU_8_0_8_95_i0_fu_dijkstraF_28863_29599), .in2(out_const_7));
  lshift_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(8)) fu_dijkstraF_28863_29607 (.out1(out_lshift_expr_FU_8_0_8_88_i0_fu_dijkstraF_28863_29607), .in1(out_plus_expr_FU_8_0_8_93_i0_fu_dijkstraF_28863_29604), .in2(out_const_2));
  ui_rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(29), .PRECISION(32)) fu_dijkstraF_28863_29612 (.out1(out_ui_rshift_expr_FU_32_0_32_121_i0_fu_dijkstraF_28863_29612), .in1(out_reg_16_reg_16), .in2(out_const_7));
  ui_plus_expr_FU #(.BITSIZE_in1(29), .BITSIZE_in2(1), .BITSIZE_out1(29)) fu_dijkstraF_28863_29617 (.out1(out_ui_plus_expr_FU_32_0_32_114_i0_fu_dijkstraF_28863_29617), .in1(out_ui_rshift_expr_FU_32_0_32_121_i0_fu_dijkstraF_28863_29612), .in2(out_const_4));
  ui_lshift_expr_FU #(.BITSIZE_in1(29), .BITSIZE_in2(2), .BITSIZE_out1(32), .PRECISION(32)) fu_dijkstraF_28863_29620 (.out1(out_ui_lshift_expr_FU_32_0_32_102_i0_fu_dijkstraF_28863_29620), .in1(out_ui_plus_expr_FU_32_0_32_114_i0_fu_dijkstraF_28863_29617), .in2(out_const_7));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) fu_dijkstraF_28863_29622 (.out1(out_multi_read_cond_FU_31_i0_fu_dijkstraF_28863_29622), .in1({out_reg_22_reg_22, out_reg_21_reg_21}));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_dijkstraF_28863_29625 (.out1(out_truth_not_expr_FU_1_1_97_i0_fu_dijkstraF_28863_29625), .in1(out_ui_ne_expr_FU_8_0_8_108_i0_fu_dijkstraF_28863_29568));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_dijkstraF_28863_29628 (.out1(out_truth_and_expr_FU_1_1_1_96_i0_fu_dijkstraF_28863_29628), .in1(out_reg_15_reg_15), .in2(out_truth_not_expr_FU_1_1_97_i0_fu_dijkstraF_28863_29625));
  ui_cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_dijkstraF_28863_29629 (.out1(out_ui_cond_expr_FU_8_8_8_8_98_i0_fu_dijkstraF_28863_29629), .in1(out_reg_42_reg_42), .in2(out_reg_41_reg_41), .in3(out_reg_43_reg_43));
  ui_cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(3), .BITSIZE_in3(3), .BITSIZE_out1(3)) fu_dijkstraF_28863_29632 (.out1(out_ui_cond_expr_FU_8_8_8_8_98_i1_fu_dijkstraF_28863_29632), .in1(out_reg_42_reg_42), .in2(out_reg_35_reg_35), .in3(out_reg_34_reg_34));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerMout_data_ram_size2_0 (.out1(sig_in_bus_mergerMout_data_ram_size2_0), .in1(sig_in_vector_bus_mergerMout_data_ram_size2_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_oe_ram3_0 (.out1(sig_in_bus_mergerMout_oe_ram3_0), .in1(sig_in_vector_bus_mergerMout_oe_ram3_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_we_ram4_0 (.out1(sig_in_bus_mergerMout_we_ram4_0), .in1(sig_in_vector_bus_mergerMout_we_ram4_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_0 (.out1(sig_in_bus_mergerSout_DataRdy5_0), .in1(sig_in_vector_bus_mergerSout_DataRdy5_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_0 (.out1(sig_in_bus_mergerSout_Rdata_ram6_0), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_0));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_3_i0_fu_dijkstraF_28863_28995), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_6_i0_fu_dijkstraF_28863_29115), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(3), .BITSIZE_out1(3)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_conv_out_MUX_100_reg_10_0_0_0_4_3), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_38_i0_fu_dijkstraF_28863_29038), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_39_i0_fu_dijkstraF_28863_29073), .wenable(wrenable_reg_12));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_MUX_103_reg_13_0_0_0), .wenable(wrenable_reg_13));
  register_SE #(.BITSIZE_in1(4), .BITSIZE_out1(4)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_115_i1_fu_dijkstraF_28863_29102), .wenable(wrenable_reg_14));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_109_i0_fu_dijkstraF_28863_29570), .wenable(wrenable_reg_15));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_MUX_106_reg_16_0_0_0), .wenable(wrenable_reg_16));
  register_SE #(.BITSIZE_in1(4), .BITSIZE_out1(4)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_MUX_107_reg_17_0_0_1), .wenable(wrenable_reg_17));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_119_i0_fu_dijkstraF_28863_29361), .wenable(wrenable_reg_18));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_19 (.out1(out_reg_19_reg_19), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_119_i1_fu_dijkstraF_28863_29389), .wenable(wrenable_reg_19));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_4_i0_fu_dijkstraF_28863_29403), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_20 (.out1(out_reg_20_reg_20), .clock(clock), .reset(reset), .in1(out_ui_eq_expr_FU_8_8_8_100_i0_fu_dijkstraF_28863_29564), .wenable(wrenable_reg_20));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_21 (.out1(out_reg_21_reg_21), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_108_i0_fu_dijkstraF_28863_29568), .wenable(wrenable_reg_21));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_22 (.out1(out_reg_22_reg_22), .clock(clock), .reset(reset), .in1(out_truth_and_expr_FU_1_1_1_96_i0_fu_dijkstraF_28863_29628), .wenable(wrenable_reg_22));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_23 (.out1(out_reg_23_reg_23), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_20_i0_fu_dijkstraF_28863_29062), .wenable(wrenable_reg_23));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_24 (.out1(out_reg_24_reg_24), .clock(clock), .reset(reset), .in1(out_MUX_115_reg_24_0_0_0), .wenable(wrenable_reg_24));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_25 (.out1(out_reg_25_reg_25), .clock(clock), .reset(reset), .in1(out_MUX_116_reg_25_0_0_0), .wenable(wrenable_reg_25));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_26 (.out1(out_reg_26_reg_26), .clock(clock), .reset(reset), .in1(out_MUX_117_reg_26_0_0_0), .wenable(wrenable_reg_26));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_27 (.out1(out_reg_27_reg_27), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_32_0_32_112_i1_fu_dijkstraF_28863_29132), .wenable(wrenable_reg_27));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_28 (.out1(out_reg_28_reg_28), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_32_32_32_106_i0_fu_dijkstraF_28863_29572), .wenable(wrenable_reg_28));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_29 (.out1(out_reg_29_reg_29), .clock(clock), .reset(reset), .in1(out_BMEMORY_CTRLN_84_i0_BMEMORY_CTRLN_84_i0), .wenable(wrenable_reg_29));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_8_i0_fu_dijkstraF_28863_29421), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_30 (.out1(out_reg_30_reg_30), .clock(clock), .reset(reset), .in1(out_MUX_122_reg_30_0_0_0), .wenable(wrenable_reg_30));
  register_STD #(.BITSIZE_in1(12), .BITSIZE_out1(12)) reg_31 (.out1(out_reg_31_reg_31), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_53_i0_fu_dijkstraF_28863_29460), .wenable(wrenable_reg_31));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_32 (.out1(out_reg_32_reg_32), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_54_i0_fu_dijkstraF_28863_29463), .wenable(wrenable_reg_32));
  register_STD #(.BITSIZE_in1(13), .BITSIZE_out1(13)) reg_33 (.out1(out_reg_33_reg_33), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_117_i1_fu_dijkstraF_28863_29469), .wenable(wrenable_reg_33));
  register_SE #(.BITSIZE_in1(3), .BITSIZE_out1(3)) reg_34 (.out1(out_reg_34_reg_34), .clock(clock), .reset(reset), .in1(out_MUX_126_reg_34_0_0_0), .wenable(wrenable_reg_34));
  register_SE #(.BITSIZE_in1(3), .BITSIZE_out1(3)) reg_35 (.out1(out_reg_35_reg_35), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_63_i0_fu_dijkstraF_28863_29164), .wenable(wrenable_reg_35));
  register_SE #(.BITSIZE_in1(4), .BITSIZE_out1(4)) reg_36 (.out1(out_reg_36_reg_36), .clock(clock), .reset(reset), .in1(out_MUX_128_reg_36_0_0_1), .wenable(wrenable_reg_36));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_37 (.out1(out_reg_37_reg_37), .clock(clock), .reset(reset), .in1(out_MUX_129_reg_37_0_0_0), .wenable(wrenable_reg_37));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_38 (.out1(out_reg_38_reg_38), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_65_i0_fu_dijkstraF_28863_29289), .wenable(wrenable_reg_38));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_39 (.out1(out_reg_39_reg_39), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_119_i2_fu_dijkstraF_28863_29489), .wenable(wrenable_reg_39));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_9_i0_fu_dijkstraF_28863_29441), .wenable(wrenable_reg_4));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_40 (.out1(out_reg_40_reg_40), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_108_i1_fu_dijkstraF_28863_29584), .wenable(wrenable_reg_40));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_41 (.out1(out_reg_41_reg_41), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_69_i0_fu_dijkstraF_28863_29270), .wenable(wrenable_reg_41));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_42 (.out1(out_reg_42_reg_42), .clock(clock), .reset(reset), .in1(out_lt_expr_FU_16_16_16_89_i0_fu_dijkstraF_28863_29582), .wenable(wrenable_reg_42));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_43 (.out1(out_reg_43_reg_43), .clock(clock), .reset(reset), .in1(out_MUX_136_reg_43_0_0_0), .wenable(wrenable_reg_43));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_44 (.out1(out_reg_44_reg_44), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_120_i0_fu_dijkstraF_28863_29185), .wenable(wrenable_reg_44));
  register_SE #(.BITSIZE_in1(3), .BITSIZE_out1(3)) reg_45 (.out1(out_reg_45_reg_45), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_75_i0_fu_dijkstraF_28863_29497), .wenable(wrenable_reg_45));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_46 (.out1(out_reg_46_reg_46), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_120_i1_fu_dijkstraF_28863_29503), .wenable(wrenable_reg_46));
  register_SE #(.BITSIZE_in1(4), .BITSIZE_out1(4)) reg_47 (.out1(out_reg_47_reg_47), .clock(clock), .reset(reset), .in1(out_MUX_140_reg_47_0_0_1), .wenable(wrenable_reg_47));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_48 (.out1(out_reg_48_reg_48), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_119_i3_fu_dijkstraF_28863_29520), .wenable(wrenable_reg_48));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_49 (.out1(out_reg_49_reg_49), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_120_i2_fu_dijkstraF_28863_29536), .wenable(wrenable_reg_49));
  register_SE #(.BITSIZE_in1(3), .BITSIZE_out1(3)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_MUX_143_reg_5_0_0_0), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_50 (.out1(out_reg_50_reg_50), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_119_i4_fu_dijkstraF_28863_29543), .wenable(wrenable_reg_50));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_51 (.out1(out_reg_51_reg_51), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_108_i2_fu_dijkstraF_28863_29590), .wenable(wrenable_reg_51));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_52 (.out1(out_reg_52_reg_52), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_8_8_94_i0_fu_dijkstraF_28863_29216), .wenable(wrenable_reg_52));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_53 (.out1(out_reg_53_reg_53), .clock(clock), .reset(reset), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_array_28859_0), .wenable(wrenable_reg_53));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_MUX_148_reg_6_0_0_1), .wenable(wrenable_reg_6));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_107_i0_fu_dijkstraF_28863_29562), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_bit_ior_concat_expr_FU_85_i0_fu_dijkstraF_28863_28993), .wenable(wrenable_reg_8));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_14_i0_fu_dijkstraF_28863_28994), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy5_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy5_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram6_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram6_));
  // io-signal post fix
  assign OUT_CONDITION_dijkstraF_28863_28972 = out_read_cond_FU_12_i0_fu_dijkstraF_28863_28972;
  assign OUT_CONDITION_dijkstraF_28863_29020 = out_read_cond_FU_23_i0_fu_dijkstraF_28863_29020;
  assign OUT_CONDITION_dijkstraF_28863_29093 = out_read_cond_FU_26_i0_fu_dijkstraF_28863_29093;
  assign OUT_CONDITION_dijkstraF_28863_29106 = out_read_cond_FU_29_i0_fu_dijkstraF_28863_29106;
  assign OUT_CONDITION_dijkstraF_28863_29133 = out_read_cond_FU_42_i0_fu_dijkstraF_28863_29133;
  assign OUT_CONDITION_dijkstraF_28863_29153 = out_read_cond_FU_46_i0_fu_dijkstraF_28863_29153;
  assign OUT_CONDITION_dijkstraF_28863_29237 = out_read_cond_FU_55_i0_fu_dijkstraF_28863_29237;
  assign OUT_CONDITION_dijkstraF_28863_29254 = out_read_cond_FU_56_i0_fu_dijkstraF_28863_29254;
  assign OUT_CONDITION_dijkstraF_28863_29265 = out_read_cond_FU_66_i0_fu_dijkstraF_28863_29265;
  assign OUT_CONDITION_dijkstraF_28863_29298 = out_read_cond_FU_71_i0_fu_dijkstraF_28863_29298;
  assign OUT_CONDITION_dijkstraF_28863_29301 = out_read_cond_FU_80_i0_fu_dijkstraF_28863_29301;
  assign OUT_CONDITION_dijkstraF_28863_29306 = out_read_cond_FU_82_i0_fu_dijkstraF_28863_29306;
  assign OUT_CONDITION_dijkstraF_28863_29311 = out_read_cond_FU_83_i0_fu_dijkstraF_28863_29311;
  assign OUT_MULTIIF_dijkstraF_28863_29622 = out_multi_read_cond_FU_31_i0_fu_dijkstraF_28863_29622;

endmodule

// FSM based controller description for dijkstraF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_dijkstraF(done_port, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_STORE, fuselector_BMEMORY_CTRLN_84_i0_LOAD, fuselector_BMEMORY_CTRLN_84_i0_STORE, selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0, selector_MUX_100_reg_10_0_0_0, selector_MUX_103_reg_13_0_0_0, selector_MUX_106_reg_16_0_0_0, selector_MUX_107_reg_17_0_0_0, selector_MUX_107_reg_17_0_0_1, selector_MUX_115_reg_24_0_0_0, selector_MUX_116_reg_25_0_0_0, selector_MUX_117_reg_26_0_0_0, selector_MUX_122_reg_30_0_0_0, selector_MUX_126_reg_34_0_0_0, selector_MUX_128_reg_36_0_0_0, selector_MUX_128_reg_36_0_0_1, selector_MUX_129_reg_37_0_0_0, selector_MUX_136_reg_43_0_0_0, selector_MUX_140_reg_47_0_0_0, selector_MUX_140_reg_47_0_0_1, selector_MUX_143_reg_5_0_0_0, selector_MUX_148_reg_6_0_0_0, selector_MUX_148_reg_6_0_0_1, selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0, selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0, selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1, selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_0, selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_1, selector_MUX_8_BMEMORY_CTRLN_84_i0_0_1_0, selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_0, selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_1, selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_2, selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_3, selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_0, selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_1, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_29, wrenable_reg_3, wrenable_reg_30, wrenable_reg_31, wrenable_reg_32, wrenable_reg_33, wrenable_reg_34, wrenable_reg_35, wrenable_reg_36, wrenable_reg_37, wrenable_reg_38, wrenable_reg_39, wrenable_reg_4, wrenable_reg_40, wrenable_reg_41, wrenable_reg_42, wrenable_reg_43, wrenable_reg_44, wrenable_reg_45, wrenable_reg_46, wrenable_reg_47, wrenable_reg_48, wrenable_reg_49, wrenable_reg_5, wrenable_reg_50, wrenable_reg_51, wrenable_reg_52, wrenable_reg_53, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_dijkstraF_28863_28972, OUT_CONDITION_dijkstraF_28863_29020, OUT_CONDITION_dijkstraF_28863_29093, OUT_CONDITION_dijkstraF_28863_29106, OUT_CONDITION_dijkstraF_28863_29133, OUT_CONDITION_dijkstraF_28863_29153, OUT_CONDITION_dijkstraF_28863_29237, OUT_CONDITION_dijkstraF_28863_29254, OUT_CONDITION_dijkstraF_28863_29265, OUT_CONDITION_dijkstraF_28863_29298, OUT_CONDITION_dijkstraF_28863_29301, OUT_CONDITION_dijkstraF_28863_29306, OUT_CONDITION_dijkstraF_28863_29311, OUT_MULTIIF_dijkstraF_28863_29622, clock, reset, start_port);
  // IN
  input OUT_CONDITION_dijkstraF_28863_28972;
  input OUT_CONDITION_dijkstraF_28863_29020;
  input OUT_CONDITION_dijkstraF_28863_29093;
  input OUT_CONDITION_dijkstraF_28863_29106;
  input OUT_CONDITION_dijkstraF_28863_29133;
  input OUT_CONDITION_dijkstraF_28863_29153;
  input OUT_CONDITION_dijkstraF_28863_29237;
  input OUT_CONDITION_dijkstraF_28863_29254;
  input OUT_CONDITION_dijkstraF_28863_29265;
  input OUT_CONDITION_dijkstraF_28863_29298;
  input OUT_CONDITION_dijkstraF_28863_29301;
  input OUT_CONDITION_dijkstraF_28863_29306;
  input OUT_CONDITION_dijkstraF_28863_29311;
  input [1:0] OUT_MULTIIF_dijkstraF_28863_29622;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_STORE;
  output fuselector_BMEMORY_CTRLN_84_i0_LOAD;
  output fuselector_BMEMORY_CTRLN_84_i0_STORE;
  output selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0;
  output selector_MUX_100_reg_10_0_0_0;
  output selector_MUX_103_reg_13_0_0_0;
  output selector_MUX_106_reg_16_0_0_0;
  output selector_MUX_107_reg_17_0_0_0;
  output selector_MUX_107_reg_17_0_0_1;
  output selector_MUX_115_reg_24_0_0_0;
  output selector_MUX_116_reg_25_0_0_0;
  output selector_MUX_117_reg_26_0_0_0;
  output selector_MUX_122_reg_30_0_0_0;
  output selector_MUX_126_reg_34_0_0_0;
  output selector_MUX_128_reg_36_0_0_0;
  output selector_MUX_128_reg_36_0_0_1;
  output selector_MUX_129_reg_37_0_0_0;
  output selector_MUX_136_reg_43_0_0_0;
  output selector_MUX_140_reg_47_0_0_0;
  output selector_MUX_140_reg_47_0_0_1;
  output selector_MUX_143_reg_5_0_0_0;
  output selector_MUX_148_reg_6_0_0_0;
  output selector_MUX_148_reg_6_0_0_1;
  output selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0;
  output selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0;
  output selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1;
  output selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_0;
  output selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_1;
  output selector_MUX_8_BMEMORY_CTRLN_84_i0_0_1_0;
  output selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_0;
  output selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_1;
  output selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_2;
  output selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_3;
  output selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_0;
  output selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_1;
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
  output wrenable_reg_29;
  output wrenable_reg_3;
  output wrenable_reg_30;
  output wrenable_reg_31;
  output wrenable_reg_32;
  output wrenable_reg_33;
  output wrenable_reg_34;
  output wrenable_reg_35;
  output wrenable_reg_36;
  output wrenable_reg_37;
  output wrenable_reg_38;
  output wrenable_reg_39;
  output wrenable_reg_4;
  output wrenable_reg_40;
  output wrenable_reg_41;
  output wrenable_reg_42;
  output wrenable_reg_43;
  output wrenable_reg_44;
  output wrenable_reg_45;
  output wrenable_reg_46;
  output wrenable_reg_47;
  output wrenable_reg_48;
  output wrenable_reg_49;
  output wrenable_reg_5;
  output wrenable_reg_50;
  output wrenable_reg_51;
  output wrenable_reg_52;
  output wrenable_reg_53;
  output wrenable_reg_6;
  output wrenable_reg_7;
  output wrenable_reg_8;
  output wrenable_reg_9;
  parameter [45:0] S_0 = 46'b0000000000000000000000000000000000000000000001,
    S_1 = 46'b0000000000000000000000000000000000000000000010,
    S_2 = 46'b0000000000000000000000000000000000000000000100,
    S_3 = 46'b0000000000000000000000000000000000000000001000,
    S_16 = 46'b0000000000000000000000000000010000000000000000,
    S_4 = 46'b0000000000000000000000000000000000000000010000,
    S_5 = 46'b0000000000000000000000000000000000000000100000,
    S_6 = 46'b0000000000000000000000000000000000000001000000,
    S_7 = 46'b0000000000000000000000000000000000000010000000,
    S_8 = 46'b0000000000000000000000000000000000000100000000,
    S_9 = 46'b0000000000000000000000000000000000001000000000,
    S_10 = 46'b0000000000000000000000000000000000010000000000,
    S_11 = 46'b0000000000000000000000000000000000100000000000,
    S_12 = 46'b0000000000000000000000000000000001000000000000,
    S_13 = 46'b0000000000000000000000000000000010000000000000,
    S_14 = 46'b0000000000000000000000000000000100000000000000,
    S_15 = 46'b0000000000000000000000000000001000000000000000,
    S_17 = 46'b0000000000000000000000000000100000000000000000,
    S_18 = 46'b0000000000000000000000000001000000000000000000,
    S_19 = 46'b0000000000000000000000000010000000000000000000,
    S_20 = 46'b0000000000000000000000000100000000000000000000,
    S_21 = 46'b0000000000000000000000001000000000000000000000,
    S_22 = 46'b0000000000000000000000010000000000000000000000,
    S_23 = 46'b0000000000000000000000100000000000000000000000,
    S_24 = 46'b0000000000000000000001000000000000000000000000,
    S_25 = 46'b0000000000000000000010000000000000000000000000,
    S_26 = 46'b0000000000000000000100000000000000000000000000,
    S_27 = 46'b0000000000000000001000000000000000000000000000,
    S_28 = 46'b0000000000000000010000000000000000000000000000,
    S_29 = 46'b0000000000000000100000000000000000000000000000,
    S_30 = 46'b0000000000000001000000000000000000000000000000,
    S_31 = 46'b0000000000000010000000000000000000000000000000,
    S_32 = 46'b0000000000000100000000000000000000000000000000,
    S_33 = 46'b0000000000001000000000000000000000000000000000,
    S_34 = 46'b0000000000010000000000000000000000000000000000,
    S_35 = 46'b0000000000100000000000000000000000000000000000,
    S_36 = 46'b0000000001000000000000000000000000000000000000,
    S_37 = 46'b0000000010000000000000000000000000000000000000,
    S_38 = 46'b0000000100000000000000000000000000000000000000,
    S_39 = 46'b0000001000000000000000000000000000000000000000,
    S_40 = 46'b0000010000000000000000000000000000000000000000,
    S_41 = 46'b0000100000000000000000000000000000000000000000,
    S_42 = 46'b0001000000000000000000000000000000000000000000,
    S_43 = 46'b0010000000000000000000000000000000000000000000,
    S_44 = 46'b0100000000000000000000000000000000000000000000,
    S_45 = 46'b1000000000000000000000000000000000000000000000;
  reg [45:0] _present_state, _next_state;
  reg done_port;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_STORE;
  reg fuselector_BMEMORY_CTRLN_84_i0_LOAD;
  reg fuselector_BMEMORY_CTRLN_84_i0_STORE;
  reg selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0;
  reg selector_MUX_100_reg_10_0_0_0;
  reg selector_MUX_103_reg_13_0_0_0;
  reg selector_MUX_106_reg_16_0_0_0;
  reg selector_MUX_107_reg_17_0_0_0;
  reg selector_MUX_107_reg_17_0_0_1;
  reg selector_MUX_115_reg_24_0_0_0;
  reg selector_MUX_116_reg_25_0_0_0;
  reg selector_MUX_117_reg_26_0_0_0;
  reg selector_MUX_122_reg_30_0_0_0;
  reg selector_MUX_126_reg_34_0_0_0;
  reg selector_MUX_128_reg_36_0_0_0;
  reg selector_MUX_128_reg_36_0_0_1;
  reg selector_MUX_129_reg_37_0_0_0;
  reg selector_MUX_136_reg_43_0_0_0;
  reg selector_MUX_140_reg_47_0_0_0;
  reg selector_MUX_140_reg_47_0_0_1;
  reg selector_MUX_143_reg_5_0_0_0;
  reg selector_MUX_148_reg_6_0_0_0;
  reg selector_MUX_148_reg_6_0_0_1;
  reg selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0;
  reg selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0;
  reg selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1;
  reg selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_0;
  reg selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_1;
  reg selector_MUX_8_BMEMORY_CTRLN_84_i0_0_1_0;
  reg selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_0;
  reg selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_1;
  reg selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_2;
  reg selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_3;
  reg selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_0;
  reg selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_1;
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
  reg wrenable_reg_29;
  reg wrenable_reg_3;
  reg wrenable_reg_30;
  reg wrenable_reg_31;
  reg wrenable_reg_32;
  reg wrenable_reg_33;
  reg wrenable_reg_34;
  reg wrenable_reg_35;
  reg wrenable_reg_36;
  reg wrenable_reg_37;
  reg wrenable_reg_38;
  reg wrenable_reg_39;
  reg wrenable_reg_4;
  reg wrenable_reg_40;
  reg wrenable_reg_41;
  reg wrenable_reg_42;
  reg wrenable_reg_43;
  reg wrenable_reg_44;
  reg wrenable_reg_45;
  reg wrenable_reg_46;
  reg wrenable_reg_47;
  reg wrenable_reg_48;
  reg wrenable_reg_49;
  reg wrenable_reg_5;
  reg wrenable_reg_50;
  reg wrenable_reg_51;
  reg wrenable_reg_52;
  reg wrenable_reg_53;
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
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_STORE = 1'b0;
    fuselector_BMEMORY_CTRLN_84_i0_LOAD = 1'b0;
    fuselector_BMEMORY_CTRLN_84_i0_STORE = 1'b0;
    selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0 = 1'b0;
    selector_MUX_100_reg_10_0_0_0 = 1'b0;
    selector_MUX_103_reg_13_0_0_0 = 1'b0;
    selector_MUX_106_reg_16_0_0_0 = 1'b0;
    selector_MUX_107_reg_17_0_0_0 = 1'b0;
    selector_MUX_107_reg_17_0_0_1 = 1'b0;
    selector_MUX_115_reg_24_0_0_0 = 1'b0;
    selector_MUX_116_reg_25_0_0_0 = 1'b0;
    selector_MUX_117_reg_26_0_0_0 = 1'b0;
    selector_MUX_122_reg_30_0_0_0 = 1'b0;
    selector_MUX_126_reg_34_0_0_0 = 1'b0;
    selector_MUX_128_reg_36_0_0_0 = 1'b0;
    selector_MUX_128_reg_36_0_0_1 = 1'b0;
    selector_MUX_129_reg_37_0_0_0 = 1'b0;
    selector_MUX_136_reg_43_0_0_0 = 1'b0;
    selector_MUX_140_reg_47_0_0_0 = 1'b0;
    selector_MUX_140_reg_47_0_0_1 = 1'b0;
    selector_MUX_143_reg_5_0_0_0 = 1'b0;
    selector_MUX_148_reg_6_0_0_0 = 1'b0;
    selector_MUX_148_reg_6_0_0_1 = 1'b0;
    selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 = 1'b0;
    selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0 = 1'b0;
    selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1 = 1'b0;
    selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_0 = 1'b0;
    selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_1 = 1'b0;
    selector_MUX_8_BMEMORY_CTRLN_84_i0_0_1_0 = 1'b0;
    selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_0 = 1'b0;
    selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_1 = 1'b0;
    selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_2 = 1'b0;
    selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_3 = 1'b0;
    selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_0 = 1'b0;
    selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_1 = 1'b0;
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
    wrenable_reg_29 = 1'b0;
    wrenable_reg_3 = 1'b0;
    wrenable_reg_30 = 1'b0;
    wrenable_reg_31 = 1'b0;
    wrenable_reg_32 = 1'b0;
    wrenable_reg_33 = 1'b0;
    wrenable_reg_34 = 1'b0;
    wrenable_reg_35 = 1'b0;
    wrenable_reg_36 = 1'b0;
    wrenable_reg_37 = 1'b0;
    wrenable_reg_38 = 1'b0;
    wrenable_reg_39 = 1'b0;
    wrenable_reg_4 = 1'b0;
    wrenable_reg_40 = 1'b0;
    wrenable_reg_41 = 1'b0;
    wrenable_reg_42 = 1'b0;
    wrenable_reg_43 = 1'b0;
    wrenable_reg_44 = 1'b0;
    wrenable_reg_45 = 1'b0;
    wrenable_reg_46 = 1'b0;
    wrenable_reg_47 = 1'b0;
    wrenable_reg_48 = 1'b0;
    wrenable_reg_49 = 1'b0;
    wrenable_reg_5 = 1'b0;
    wrenable_reg_50 = 1'b0;
    wrenable_reg_51 = 1'b0;
    wrenable_reg_52 = 1'b0;
    wrenable_reg_53 = 1'b0;
    wrenable_reg_6 = 1'b0;
    wrenable_reg_7 = 1'b0;
    wrenable_reg_8 = 1'b0;
    wrenable_reg_9 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          selector_MUX_143_reg_5_0_0_0 = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_26 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_6 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0 = 1'bX;
          selector_MUX_100_reg_10_0_0_0 = 1'bX;
          selector_MUX_103_reg_13_0_0_0 = 1'bX;
          selector_MUX_106_reg_16_0_0_0 = 1'bX;
          selector_MUX_107_reg_17_0_0_0 = 1'bX;
          selector_MUX_107_reg_17_0_0_1 = 1'bX;
          selector_MUX_115_reg_24_0_0_0 = 1'bX;
          selector_MUX_116_reg_25_0_0_0 = 1'bX;
          selector_MUX_117_reg_26_0_0_0 = 1'bX;
          selector_MUX_122_reg_30_0_0_0 = 1'bX;
          selector_MUX_126_reg_34_0_0_0 = 1'bX;
          selector_MUX_128_reg_36_0_0_0 = 1'bX;
          selector_MUX_128_reg_36_0_0_1 = 1'bX;
          selector_MUX_129_reg_37_0_0_0 = 1'bX;
          selector_MUX_136_reg_43_0_0_0 = 1'bX;
          selector_MUX_140_reg_47_0_0_0 = 1'bX;
          selector_MUX_140_reg_47_0_0_1 = 1'bX;
          selector_MUX_143_reg_5_0_0_0 = 1'bX;
          selector_MUX_148_reg_6_0_0_0 = 1'bX;
          selector_MUX_148_reg_6_0_0_1 = 1'bX;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1 = 1'bX;
          selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_0 = 1'bX;
          selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_1 = 1'bX;
          selector_MUX_8_BMEMORY_CTRLN_84_i0_0_1_0 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_0 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_1 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_2 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_3 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_0 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_1 = 1'bX;
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
          wrenable_reg_29 = 1'bX;
          wrenable_reg_3 = 1'bX;
          wrenable_reg_30 = 1'bX;
          wrenable_reg_31 = 1'bX;
          wrenable_reg_32 = 1'bX;
          wrenable_reg_33 = 1'bX;
          wrenable_reg_34 = 1'bX;
          wrenable_reg_35 = 1'bX;
          wrenable_reg_36 = 1'bX;
          wrenable_reg_37 = 1'bX;
          wrenable_reg_38 = 1'bX;
          wrenable_reg_39 = 1'bX;
          wrenable_reg_4 = 1'bX;
          wrenable_reg_40 = 1'bX;
          wrenable_reg_41 = 1'bX;
          wrenable_reg_42 = 1'bX;
          wrenable_reg_43 = 1'bX;
          wrenable_reg_44 = 1'bX;
          wrenable_reg_45 = 1'bX;
          wrenable_reg_46 = 1'bX;
          wrenable_reg_47 = 1'bX;
          wrenable_reg_48 = 1'bX;
          wrenable_reg_49 = 1'bX;
          wrenable_reg_5 = 1'bX;
          wrenable_reg_50 = 1'bX;
          wrenable_reg_51 = 1'bX;
          wrenable_reg_52 = 1'bX;
          wrenable_reg_53 = 1'bX;
          wrenable_reg_6 = 1'bX;
          wrenable_reg_7 = 1'bX;
          wrenable_reg_8 = 1'bX;
          wrenable_reg_9 = 1'bX;
          _next_state = S_0;
        end
      S_1 :
        begin
          selector_MUX_148_reg_6_0_0_1 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_6 = 1'b1;
          wrenable_reg_7 = 1'b1;
          _next_state = S_2;
        end
      S_2 :
        begin
          selector_MUX_148_reg_6_0_0_0 = 1'b1;
          wrenable_reg_6 = 1'b1;
          if (OUT_CONDITION_dijkstraF_28863_28972 == 1'b1)
            begin
              _next_state = S_1;
            end
          else
            begin
              _next_state = S_3;
              selector_MUX_148_reg_6_0_0_0 = 1'b0;
              wrenable_reg_6 = 1'b0;
            end
        end
      S_3 :
        begin
          selector_MUX_103_reg_13_0_0_0 = 1'b1;
          selector_MUX_106_reg_16_0_0_0 = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_13 = 1'b1;
          wrenable_reg_16 = 1'b1;
          wrenable_reg_8 = 1'b1;
          wrenable_reg_9 = 1'b1;
          _next_state = S_16;
        end
      S_16 :
        begin
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
          selector_MUX_107_reg_17_0_0_1 = 1'b1;
          wrenable_reg_17 = 1'b1;
          wrenable_reg_18 = 1'b1;
          wrenable_reg_19 = 1'b1;
          wrenable_reg_20 = 1'b1;
          wrenable_reg_21 = 1'b1;
          wrenable_reg_22 = 1'b1;
          _next_state = S_5;
        end
      S_5 :
        begin
          fuselector_BMEMORY_CTRLN_84_i0_LOAD = 1'b1;
          _next_state = S_6;
        end
      S_6 :
        begin
          wrenable_reg_23 = 1'b1;
          wrenable_reg_29 = 1'b1;
          _next_state = S_7;
        end
      S_7 :
        begin
          selector_MUX_115_reg_24_0_0_0 = 1'b1;
          wrenable_reg_24 = 1'b1;
          if (OUT_CONDITION_dijkstraF_28863_29020 == 1'b1)
            begin
              _next_state = S_8;
              selector_MUX_115_reg_24_0_0_0 = 1'b0;
            end
          else
            begin
              _next_state = S_9;
            end
        end
      S_8 :
        begin
          fuselector_BMEMORY_CTRLN_84_i0_STORE = 1'b1;
          selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_1 = 1'b1;
          _next_state = S_9;
        end
      S_9 :
        begin
          selector_MUX_116_reg_25_0_0_0 = 1'b1;
          wrenable_reg_25 = 1'b1;
          if (OUT_CONDITION_dijkstraF_28863_29093 == 1'b1)
            begin
              _next_state = S_10;
              selector_MUX_116_reg_25_0_0_0 = 1'b0;
              wrenable_reg_25 = 1'b0;
            end
          else
            begin
              _next_state = S_11;
            end
        end
      S_10 :
        begin
          fuselector_BMEMORY_CTRLN_84_i0_STORE = 1'b1;
          wrenable_reg_25 = 1'b1;
          _next_state = S_11;
        end
      S_11 :
        begin
          fuselector_BMEMORY_CTRLN_84_i0_LOAD = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_2 = 1'b1;
          _next_state = S_12;
        end
      S_12 :
        begin
          wrenable_reg_29 = 1'b1;
          _next_state = S_13;
        end
      S_13 :
        begin
          if (OUT_CONDITION_dijkstraF_28863_29106 == 1'b1)
            begin
              _next_state = S_14;
            end
          else
            begin
              _next_state = S_15;
            end
        end
      S_14 :
        begin
          fuselector_BMEMORY_CTRLN_84_i0_STORE = 1'b1;
          selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_0 = 1'b1;
          selector_MUX_8_BMEMORY_CTRLN_84_i0_0_1_0 = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_2 = 1'b1;
          _next_state = S_15;
        end
      S_15 :
        begin
          selector_MUX_100_reg_10_0_0_0 = 1'b1;
          selector_MUX_107_reg_17_0_0_0 = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_17 = 1'b1;
          if (OUT_MULTIIF_dijkstraF_28863_29622[0] == 1'b1)
            begin
              _next_state = S_4;
              selector_MUX_100_reg_10_0_0_0 = 1'b0;
              wrenable_reg_10 = 1'b0;
            end
          else if (OUT_MULTIIF_dijkstraF_28863_29622[1] == 1'b1)
            begin
              _next_state = S_16;
              selector_MUX_107_reg_17_0_0_0 = 1'b0;
              wrenable_reg_17 = 1'b0;
            end
          else
            begin
              _next_state = S_17;
              selector_MUX_100_reg_10_0_0_0 = 1'b0;
              selector_MUX_107_reg_17_0_0_0 = 1'b0;
              wrenable_reg_10 = 1'b0;
              wrenable_reg_17 = 1'b0;
            end
        end
      S_17 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE = 1'b1;
          selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0 = 1'b1;
          wrenable_reg_27 = 1'b1;
          wrenable_reg_28 = 1'b1;
          _next_state = S_18;
        end
      S_18 :
        begin
          selector_MUX_117_reg_26_0_0_0 = 1'b1;
          wrenable_reg_26 = 1'b1;
          if (OUT_CONDITION_dijkstraF_28863_29133 == 1'b1)
            begin
              _next_state = S_17;
            end
          else
            begin
              _next_state = S_19;
              selector_MUX_117_reg_26_0_0_0 = 1'b0;
              wrenable_reg_26 = 1'b0;
            end
        end
      S_19 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_STORE = 1'b1;
          selector_MUX_126_reg_34_0_0_0 = 1'b1;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1 = 1'b1;
          wrenable_reg_34 = 1'b1;
          _next_state = S_20;
        end
      S_20 :
        begin
          fuselector_BMEMORY_CTRLN_84_i0_LOAD = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_1 = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_0 = 1'b1;
          _next_state = S_21;
        end
      S_21 :
        begin
          wrenable_reg_29 = 1'b1;
          _next_state = S_22;
        end
      S_22 :
        begin
          selector_MUX_122_reg_30_0_0_0 = 1'b1;
          selector_MUX_128_reg_36_0_0_0 = 1'b1;
          selector_MUX_129_reg_37_0_0_0 = 1'b1;
          selector_MUX_136_reg_43_0_0_0 = 1'b1;
          wrenable_reg_30 = 1'b1;
          wrenable_reg_36 = 1'b1;
          wrenable_reg_37 = 1'b1;
          wrenable_reg_43 = 1'b1;
          if (OUT_CONDITION_dijkstraF_28863_29153 == 1'b1)
            begin
              _next_state = S_23;
              selector_MUX_128_reg_36_0_0_0 = 1'b0;
              selector_MUX_129_reg_37_0_0_0 = 1'b0;
              selector_MUX_136_reg_43_0_0_0 = 1'b0;
              wrenable_reg_36 = 1'b0;
              wrenable_reg_37 = 1'b0;
              wrenable_reg_43 = 1'b0;
            end
          else
            begin
              _next_state = S_29;
              selector_MUX_122_reg_30_0_0_0 = 1'b0;
              wrenable_reg_30 = 1'b0;
            end
        end
      S_23 :
        begin
          wrenable_reg_30 = 1'b1;
          wrenable_reg_31 = 1'b1;
          wrenable_reg_32 = 1'b1;
          _next_state = S_24;
        end
      S_24 :
        begin
          wrenable_reg_33 = 1'b1;
          _next_state = S_25;
        end
      S_25 :
        begin
          fuselector_BMEMORY_CTRLN_84_i0_LOAD = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_0 = 1'b1;
          _next_state = S_26;
        end
      S_26 :
        begin
          wrenable_reg_29 = 1'b1;
          _next_state = S_27;
        end
      S_27 :
        begin
          if (OUT_CONDITION_dijkstraF_28863_29237 == 1'b1)
            begin
              _next_state = S_23;
            end
          else
            begin
              _next_state = S_28;
            end
        end
      S_28 :
        begin
          selector_MUX_128_reg_36_0_0_0 = 1'b1;
          selector_MUX_129_reg_37_0_0_0 = 1'b1;
          selector_MUX_136_reg_43_0_0_0 = 1'b1;
          wrenable_reg_36 = 1'b1;
          wrenable_reg_37 = 1'b1;
          wrenable_reg_43 = 1'b1;
          if (OUT_CONDITION_dijkstraF_28863_29254 == 1'b1)
            begin
              _next_state = S_45;
              done_port = 1'b1;
              selector_MUX_128_reg_36_0_0_0 = 1'b0;
              selector_MUX_129_reg_37_0_0_0 = 1'b0;
              selector_MUX_136_reg_43_0_0_0 = 1'b0;
              wrenable_reg_36 = 1'b0;
              wrenable_reg_37 = 1'b0;
              wrenable_reg_43 = 1'b0;
            end
          else
            begin
              _next_state = S_29;
            end
        end
      S_29 :
        begin
          fuselector_BMEMORY_CTRLN_84_i0_LOAD = 1'b1;
          selector_MUX_128_reg_36_0_0_1 = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_3 = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_1 = 1'b1;
          wrenable_reg_35 = 1'b1;
          wrenable_reg_36 = 1'b1;
          wrenable_reg_37 = 1'b1;
          wrenable_reg_38 = 1'b1;
          wrenable_reg_39 = 1'b1;
          wrenable_reg_40 = 1'b1;
          _next_state = S_30;
        end
      S_30 :
        begin
          wrenable_reg_29 = 1'b1;
          _next_state = S_31;
        end
      S_31 :
        begin
          if (OUT_CONDITION_dijkstraF_28863_29265 == 1'b1)
            begin
              _next_state = S_32;
            end
          else
            begin
              _next_state = S_35;
            end
        end
      S_32 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD = 1'b1;
          _next_state = S_33;
        end
      S_33 :
        begin
          wrenable_reg_41 = 1'b1;
          wrenable_reg_42 = 1'b1;
          _next_state = S_34;
        end
      S_34 :
        begin
          wrenable_reg_34 = 1'b1;
          wrenable_reg_43 = 1'b1;
          _next_state = S_35;
        end
      S_35 :
        begin
          wrenable_reg_36 = 1'b1;
          if (OUT_CONDITION_dijkstraF_28863_29298 == 1'b1)
            begin
              _next_state = S_29;
            end
          else
            begin
              _next_state = S_36;
              wrenable_reg_36 = 1'b0;
            end
        end
      S_36 :
        begin
          wrenable_reg_44 = 1'b1;
          wrenable_reg_45 = 1'b1;
          wrenable_reg_46 = 1'b1;
          _next_state = S_37;
        end
      S_37 :
        begin
          fuselector_BMEMORY_CTRLN_84_i0_STORE = 1'b1;
          selector_MUX_8_BMEMORY_CTRLN_84_i0_0_1_0 = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_1 = 1'b1;
          wrenable_reg_47 = 1'b1;
          _next_state = S_38;
        end
      S_38 :
        begin
          selector_MUX_140_reg_47_0_0_1 = 1'b1;
          wrenable_reg_47 = 1'b1;
          wrenable_reg_48 = 1'b1;
          wrenable_reg_49 = 1'b1;
          wrenable_reg_50 = 1'b1;
          wrenable_reg_51 = 1'b1;
          if (OUT_CONDITION_dijkstraF_28863_29301 == 1'b1)
            begin
              _next_state = S_39;
            end
          else
            begin
              _next_state = S_44;
              wrenable_reg_48 = 1'b0;
              wrenable_reg_49 = 1'b0;
              wrenable_reg_50 = 1'b0;
            end
        end
      S_39 :
        begin
          fuselector_BMEMORY_CTRLN_84_i0_LOAD = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_0 = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_1 = 1'b1;
          _next_state = S_40;
        end
      S_40 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD = 1'b1;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 = 1'b1;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0 = 1'b1;
          wrenable_reg_29 = 1'b1;
          _next_state = S_41;
        end
      S_41 :
        begin
          wrenable_reg_52 = 1'b1;
          wrenable_reg_53 = 1'b1;
          _next_state = S_42;
        end
      S_42 :
        begin
          if (OUT_CONDITION_dijkstraF_28863_29306 == 1'b1)
            begin
              _next_state = S_43;
            end
          else
            begin
              _next_state = S_44;
            end
        end
      S_43 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE = 1'b1;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 = 1'b1;
          _next_state = S_44;
        end
      S_44 :
        begin
          selector_MUX_140_reg_47_0_0_0 = 1'b1;
          wrenable_reg_47 = 1'b1;
          if (OUT_CONDITION_dijkstraF_28863_29311 == 1'b1)
            begin
              _next_state = S_38;
            end
          else
            begin
              _next_state = S_20;
              selector_MUX_140_reg_47_0_0_0 = 1'b0;
              wrenable_reg_47 = 1'b0;
            end
        end
      S_45 :
        begin
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0 = 1'bX;
          selector_MUX_100_reg_10_0_0_0 = 1'bX;
          selector_MUX_103_reg_13_0_0_0 = 1'bX;
          selector_MUX_106_reg_16_0_0_0 = 1'bX;
          selector_MUX_107_reg_17_0_0_0 = 1'bX;
          selector_MUX_107_reg_17_0_0_1 = 1'bX;
          selector_MUX_115_reg_24_0_0_0 = 1'bX;
          selector_MUX_116_reg_25_0_0_0 = 1'bX;
          selector_MUX_117_reg_26_0_0_0 = 1'bX;
          selector_MUX_122_reg_30_0_0_0 = 1'bX;
          selector_MUX_126_reg_34_0_0_0 = 1'bX;
          selector_MUX_128_reg_36_0_0_0 = 1'bX;
          selector_MUX_128_reg_36_0_0_1 = 1'bX;
          selector_MUX_129_reg_37_0_0_0 = 1'bX;
          selector_MUX_136_reg_43_0_0_0 = 1'bX;
          selector_MUX_140_reg_47_0_0_0 = 1'bX;
          selector_MUX_140_reg_47_0_0_1 = 1'bX;
          selector_MUX_143_reg_5_0_0_0 = 1'bX;
          selector_MUX_148_reg_6_0_0_0 = 1'bX;
          selector_MUX_148_reg_6_0_0_1 = 1'bX;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1 = 1'bX;
          selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_0 = 1'bX;
          selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_1 = 1'bX;
          selector_MUX_8_BMEMORY_CTRLN_84_i0_0_1_0 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_0 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_1 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_2 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_3 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_0 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_1 = 1'bX;
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
          wrenable_reg_29 = 1'bX;
          wrenable_reg_3 = 1'bX;
          wrenable_reg_30 = 1'bX;
          wrenable_reg_31 = 1'bX;
          wrenable_reg_32 = 1'bX;
          wrenable_reg_33 = 1'bX;
          wrenable_reg_34 = 1'bX;
          wrenable_reg_35 = 1'bX;
          wrenable_reg_36 = 1'bX;
          wrenable_reg_37 = 1'bX;
          wrenable_reg_38 = 1'bX;
          wrenable_reg_39 = 1'bX;
          wrenable_reg_4 = 1'bX;
          wrenable_reg_40 = 1'bX;
          wrenable_reg_41 = 1'bX;
          wrenable_reg_42 = 1'bX;
          wrenable_reg_43 = 1'bX;
          wrenable_reg_44 = 1'bX;
          wrenable_reg_45 = 1'bX;
          wrenable_reg_46 = 1'bX;
          wrenable_reg_47 = 1'bX;
          wrenable_reg_48 = 1'bX;
          wrenable_reg_49 = 1'bX;
          wrenable_reg_5 = 1'bX;
          wrenable_reg_50 = 1'bX;
          wrenable_reg_51 = 1'bX;
          wrenable_reg_52 = 1'bX;
          wrenable_reg_53 = 1'bX;
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

// Top component for dijkstraF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module dijkstraF(clock, reset, start_port, done_port, a, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Sout_Rdata_ram, Sout_DataRdy, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size);
  parameter MEM_var_28859_28863=128;
  // IN
  input clock;
  input reset;
  input start_port;
  input [31:0] a;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [15:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [15:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  // OUT
  output done_port;
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [15:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  // Component and signal declarations
  wire OUT_CONDITION_dijkstraF_28863_28972;
  wire OUT_CONDITION_dijkstraF_28863_29020;
  wire OUT_CONDITION_dijkstraF_28863_29093;
  wire OUT_CONDITION_dijkstraF_28863_29106;
  wire OUT_CONDITION_dijkstraF_28863_29133;
  wire OUT_CONDITION_dijkstraF_28863_29153;
  wire OUT_CONDITION_dijkstraF_28863_29237;
  wire OUT_CONDITION_dijkstraF_28863_29254;
  wire OUT_CONDITION_dijkstraF_28863_29265;
  wire OUT_CONDITION_dijkstraF_28863_29298;
  wire OUT_CONDITION_dijkstraF_28863_29301;
  wire OUT_CONDITION_dijkstraF_28863_29306;
  wire OUT_CONDITION_dijkstraF_28863_29311;
  wire [1:0] OUT_MULTIIF_dijkstraF_28863_29622;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_STORE;
  wire fuselector_BMEMORY_CTRLN_84_i0_LOAD;
  wire fuselector_BMEMORY_CTRLN_84_i0_STORE;
  wire selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0;
  wire selector_MUX_100_reg_10_0_0_0;
  wire selector_MUX_103_reg_13_0_0_0;
  wire selector_MUX_106_reg_16_0_0_0;
  wire selector_MUX_107_reg_17_0_0_0;
  wire selector_MUX_107_reg_17_0_0_1;
  wire selector_MUX_115_reg_24_0_0_0;
  wire selector_MUX_116_reg_25_0_0_0;
  wire selector_MUX_117_reg_26_0_0_0;
  wire selector_MUX_122_reg_30_0_0_0;
  wire selector_MUX_126_reg_34_0_0_0;
  wire selector_MUX_128_reg_36_0_0_0;
  wire selector_MUX_128_reg_36_0_0_1;
  wire selector_MUX_129_reg_37_0_0_0;
  wire selector_MUX_136_reg_43_0_0_0;
  wire selector_MUX_140_reg_47_0_0_0;
  wire selector_MUX_140_reg_47_0_0_1;
  wire selector_MUX_143_reg_5_0_0_0;
  wire selector_MUX_148_reg_6_0_0_0;
  wire selector_MUX_148_reg_6_0_0_1;
  wire selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0;
  wire selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0;
  wire selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1;
  wire selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_0;
  wire selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_1;
  wire selector_MUX_8_BMEMORY_CTRLN_84_i0_0_1_0;
  wire selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_0;
  wire selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_1;
  wire selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_2;
  wire selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_3;
  wire selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_0;
  wire selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_1;
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
  wire wrenable_reg_29;
  wire wrenable_reg_3;
  wire wrenable_reg_30;
  wire wrenable_reg_31;
  wire wrenable_reg_32;
  wire wrenable_reg_33;
  wire wrenable_reg_34;
  wire wrenable_reg_35;
  wire wrenable_reg_36;
  wire wrenable_reg_37;
  wire wrenable_reg_38;
  wire wrenable_reg_39;
  wire wrenable_reg_4;
  wire wrenable_reg_40;
  wire wrenable_reg_41;
  wire wrenable_reg_42;
  wire wrenable_reg_43;
  wire wrenable_reg_44;
  wire wrenable_reg_45;
  wire wrenable_reg_46;
  wire wrenable_reg_47;
  wire wrenable_reg_48;
  wire wrenable_reg_49;
  wire wrenable_reg_5;
  wire wrenable_reg_50;
  wire wrenable_reg_51;
  wire wrenable_reg_52;
  wire wrenable_reg_53;
  wire wrenable_reg_6;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  controller_dijkstraF Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_STORE), .fuselector_BMEMORY_CTRLN_84_i0_LOAD(fuselector_BMEMORY_CTRLN_84_i0_LOAD), .fuselector_BMEMORY_CTRLN_84_i0_STORE(fuselector_BMEMORY_CTRLN_84_i0_STORE), .selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0(selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0), .selector_MUX_100_reg_10_0_0_0(selector_MUX_100_reg_10_0_0_0), .selector_MUX_103_reg_13_0_0_0(selector_MUX_103_reg_13_0_0_0), .selector_MUX_106_reg_16_0_0_0(selector_MUX_106_reg_16_0_0_0), .selector_MUX_107_reg_17_0_0_0(selector_MUX_107_reg_17_0_0_0), .selector_MUX_107_reg_17_0_0_1(selector_MUX_107_reg_17_0_0_1), .selector_MUX_115_reg_24_0_0_0(selector_MUX_115_reg_24_0_0_0), .selector_MUX_116_reg_25_0_0_0(selector_MUX_116_reg_25_0_0_0), .selector_MUX_117_reg_26_0_0_0(selector_MUX_117_reg_26_0_0_0), .selector_MUX_122_reg_30_0_0_0(selector_MUX_122_reg_30_0_0_0), .selector_MUX_126_reg_34_0_0_0(selector_MUX_126_reg_34_0_0_0), .selector_MUX_128_reg_36_0_0_0(selector_MUX_128_reg_36_0_0_0), .selector_MUX_128_reg_36_0_0_1(selector_MUX_128_reg_36_0_0_1), .selector_MUX_129_reg_37_0_0_0(selector_MUX_129_reg_37_0_0_0), .selector_MUX_136_reg_43_0_0_0(selector_MUX_136_reg_43_0_0_0), .selector_MUX_140_reg_47_0_0_0(selector_MUX_140_reg_47_0_0_0), .selector_MUX_140_reg_47_0_0_1(selector_MUX_140_reg_47_0_0_1), .selector_MUX_143_reg_5_0_0_0(selector_MUX_143_reg_5_0_0_0), .selector_MUX_148_reg_6_0_0_0(selector_MUX_148_reg_6_0_0_0), .selector_MUX_148_reg_6_0_0_1(selector_MUX_148_reg_6_0_0_1), .selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0), .selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0), .selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1), .selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_0(selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_0), .selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_1(selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_1), .selector_MUX_8_BMEMORY_CTRLN_84_i0_0_1_0(selector_MUX_8_BMEMORY_CTRLN_84_i0_0_1_0), .selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_0(selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_0), .selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_1(selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_1), .selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_2(selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_2), .selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_3(selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_3), .selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_0(selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_0), .selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_1(selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_1), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_29(wrenable_reg_29), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_30(wrenable_reg_30), .wrenable_reg_31(wrenable_reg_31), .wrenable_reg_32(wrenable_reg_32), .wrenable_reg_33(wrenable_reg_33), .wrenable_reg_34(wrenable_reg_34), .wrenable_reg_35(wrenable_reg_35), .wrenable_reg_36(wrenable_reg_36), .wrenable_reg_37(wrenable_reg_37), .wrenable_reg_38(wrenable_reg_38), .wrenable_reg_39(wrenable_reg_39), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_40(wrenable_reg_40), .wrenable_reg_41(wrenable_reg_41), .wrenable_reg_42(wrenable_reg_42), .wrenable_reg_43(wrenable_reg_43), .wrenable_reg_44(wrenable_reg_44), .wrenable_reg_45(wrenable_reg_45), .wrenable_reg_46(wrenable_reg_46), .wrenable_reg_47(wrenable_reg_47), .wrenable_reg_48(wrenable_reg_48), .wrenable_reg_49(wrenable_reg_49), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_50(wrenable_reg_50), .wrenable_reg_51(wrenable_reg_51), .wrenable_reg_52(wrenable_reg_52), .wrenable_reg_53(wrenable_reg_53), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_dijkstraF_28863_28972(OUT_CONDITION_dijkstraF_28863_28972), .OUT_CONDITION_dijkstraF_28863_29020(OUT_CONDITION_dijkstraF_28863_29020), .OUT_CONDITION_dijkstraF_28863_29093(OUT_CONDITION_dijkstraF_28863_29093), .OUT_CONDITION_dijkstraF_28863_29106(OUT_CONDITION_dijkstraF_28863_29106), .OUT_CONDITION_dijkstraF_28863_29133(OUT_CONDITION_dijkstraF_28863_29133), .OUT_CONDITION_dijkstraF_28863_29153(OUT_CONDITION_dijkstraF_28863_29153), .OUT_CONDITION_dijkstraF_28863_29237(OUT_CONDITION_dijkstraF_28863_29237), .OUT_CONDITION_dijkstraF_28863_29254(OUT_CONDITION_dijkstraF_28863_29254), .OUT_CONDITION_dijkstraF_28863_29265(OUT_CONDITION_dijkstraF_28863_29265), .OUT_CONDITION_dijkstraF_28863_29298(OUT_CONDITION_dijkstraF_28863_29298), .OUT_CONDITION_dijkstraF_28863_29301(OUT_CONDITION_dijkstraF_28863_29301), .OUT_CONDITION_dijkstraF_28863_29306(OUT_CONDITION_dijkstraF_28863_29306), .OUT_CONDITION_dijkstraF_28863_29311(OUT_CONDITION_dijkstraF_28863_29311), .OUT_MULTIIF_dijkstraF_28863_29622(OUT_MULTIIF_dijkstraF_28863_29622), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_dijkstraF #(.MEM_var_28859_28863(MEM_var_28859_28863)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_CONDITION_dijkstraF_28863_28972(OUT_CONDITION_dijkstraF_28863_28972), .OUT_CONDITION_dijkstraF_28863_29020(OUT_CONDITION_dijkstraF_28863_29020), .OUT_CONDITION_dijkstraF_28863_29093(OUT_CONDITION_dijkstraF_28863_29093), .OUT_CONDITION_dijkstraF_28863_29106(OUT_CONDITION_dijkstraF_28863_29106), .OUT_CONDITION_dijkstraF_28863_29133(OUT_CONDITION_dijkstraF_28863_29133), .OUT_CONDITION_dijkstraF_28863_29153(OUT_CONDITION_dijkstraF_28863_29153), .OUT_CONDITION_dijkstraF_28863_29237(OUT_CONDITION_dijkstraF_28863_29237), .OUT_CONDITION_dijkstraF_28863_29254(OUT_CONDITION_dijkstraF_28863_29254), .OUT_CONDITION_dijkstraF_28863_29265(OUT_CONDITION_dijkstraF_28863_29265), .OUT_CONDITION_dijkstraF_28863_29298(OUT_CONDITION_dijkstraF_28863_29298), .OUT_CONDITION_dijkstraF_28863_29301(OUT_CONDITION_dijkstraF_28863_29301), .OUT_CONDITION_dijkstraF_28863_29306(OUT_CONDITION_dijkstraF_28863_29306), .OUT_CONDITION_dijkstraF_28863_29311(OUT_CONDITION_dijkstraF_28863_29311), .OUT_MULTIIF_dijkstraF_28863_29622(OUT_MULTIIF_dijkstraF_28863_29622), .clock(clock), .reset(reset), .in_port_a(a), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_STORE), .fuselector_BMEMORY_CTRLN_84_i0_LOAD(fuselector_BMEMORY_CTRLN_84_i0_LOAD), .fuselector_BMEMORY_CTRLN_84_i0_STORE(fuselector_BMEMORY_CTRLN_84_i0_STORE), .selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0(selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0), .selector_MUX_100_reg_10_0_0_0(selector_MUX_100_reg_10_0_0_0), .selector_MUX_103_reg_13_0_0_0(selector_MUX_103_reg_13_0_0_0), .selector_MUX_106_reg_16_0_0_0(selector_MUX_106_reg_16_0_0_0), .selector_MUX_107_reg_17_0_0_0(selector_MUX_107_reg_17_0_0_0), .selector_MUX_107_reg_17_0_0_1(selector_MUX_107_reg_17_0_0_1), .selector_MUX_115_reg_24_0_0_0(selector_MUX_115_reg_24_0_0_0), .selector_MUX_116_reg_25_0_0_0(selector_MUX_116_reg_25_0_0_0), .selector_MUX_117_reg_26_0_0_0(selector_MUX_117_reg_26_0_0_0), .selector_MUX_122_reg_30_0_0_0(selector_MUX_122_reg_30_0_0_0), .selector_MUX_126_reg_34_0_0_0(selector_MUX_126_reg_34_0_0_0), .selector_MUX_128_reg_36_0_0_0(selector_MUX_128_reg_36_0_0_0), .selector_MUX_128_reg_36_0_0_1(selector_MUX_128_reg_36_0_0_1), .selector_MUX_129_reg_37_0_0_0(selector_MUX_129_reg_37_0_0_0), .selector_MUX_136_reg_43_0_0_0(selector_MUX_136_reg_43_0_0_0), .selector_MUX_140_reg_47_0_0_0(selector_MUX_140_reg_47_0_0_0), .selector_MUX_140_reg_47_0_0_1(selector_MUX_140_reg_47_0_0_1), .selector_MUX_143_reg_5_0_0_0(selector_MUX_143_reg_5_0_0_0), .selector_MUX_148_reg_6_0_0_0(selector_MUX_148_reg_6_0_0_0), .selector_MUX_148_reg_6_0_0_1(selector_MUX_148_reg_6_0_0_1), .selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0), .selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0), .selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1), .selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_0(selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_0), .selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_1(selector_MUX_8_BMEMORY_CTRLN_84_i0_0_0_1), .selector_MUX_8_BMEMORY_CTRLN_84_i0_0_1_0(selector_MUX_8_BMEMORY_CTRLN_84_i0_0_1_0), .selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_0(selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_0), .selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_1(selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_1), .selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_2(selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_2), .selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_3(selector_MUX_9_BMEMORY_CTRLN_84_i0_1_0_3), .selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_0(selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_0), .selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_1(selector_MUX_9_BMEMORY_CTRLN_84_i0_1_1_1), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_29(wrenable_reg_29), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_30(wrenable_reg_30), .wrenable_reg_31(wrenable_reg_31), .wrenable_reg_32(wrenable_reg_32), .wrenable_reg_33(wrenable_reg_33), .wrenable_reg_34(wrenable_reg_34), .wrenable_reg_35(wrenable_reg_35), .wrenable_reg_36(wrenable_reg_36), .wrenable_reg_37(wrenable_reg_37), .wrenable_reg_38(wrenable_reg_38), .wrenable_reg_39(wrenable_reg_39), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_40(wrenable_reg_40), .wrenable_reg_41(wrenable_reg_41), .wrenable_reg_42(wrenable_reg_42), .wrenable_reg_43(wrenable_reg_43), .wrenable_reg_44(wrenable_reg_44), .wrenable_reg_45(wrenable_reg_45), .wrenable_reg_46(wrenable_reg_46), .wrenable_reg_47(wrenable_reg_47), .wrenable_reg_48(wrenable_reg_48), .wrenable_reg_49(wrenable_reg_49), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_50(wrenable_reg_50), .wrenable_reg_51(wrenable_reg_51), .wrenable_reg_52(wrenable_reg_52), .wrenable_reg_53(wrenable_reg_53), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Datapath RTL description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_main(clock, reset, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, selector_IN_UNBOUNDED_main_28866_29340, wrenable_reg_0, OUT_UNBOUNDED_main_28866_29340);
  parameter MEM_var_28859_28863=128, MEM_var_28861_28866=64;
  // IN
  input clock;
  input reset;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [15:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [15:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  input selector_IN_UNBOUNDED_main_28866_29340;
  input wrenable_reg_0;
  // OUT
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [15:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  output OUT_UNBOUNDED_main_28866_29340;
  // Component and signal declarations
  wire [7:0] null_out_signal_array_28861_0_out1_0;
  wire [7:0] null_out_signal_array_28861_0_out1_1;
  wire [7:0] null_out_signal_array_28861_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_28861_0_proxy_out1_1;
  wire [7:0] out_UUdata_converter_FU_4_i0_fu_main_28866_29593;
  wire [7:0] out_addr_expr_FU_3_i0_fu_main_28866_29558;
  wire [7:0] out_const_0;
  wire [31:0] out_conv_out_const_0_8_32;
  wire [31:0] out_conv_out_reg_0_reg_0_8_32;
  wire [7:0] out_reg_0_reg_0;
  wire s_done_fu_main_28866_29340;
  wire [15:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [15:0] sig_in_bus_mergerMout_addr_ram1_0;
  wire [7:0] sig_in_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_0;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_1;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_0;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_1;
  wire [15:0] sig_in_vector_bus_mergerMout_Wdata_ram0_0;
  wire [15:0] sig_in_vector_bus_mergerMout_addr_ram1_0;
  wire [7:0] sig_in_vector_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_vector_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_vector_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_1;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_0;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_1;
  wire [15:0] sig_out_bus_mergerMout_Wdata_ram0_;
  wire [15:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [7:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire [1:0] sig_out_bus_mergerMout_oe_ram3_;
  wire [1:0] sig_out_bus_mergerMout_we_ram4_;
  wire [1:0] sig_out_bus_mergerSout_DataRdy5_;
  wire [15:0] sig_out_bus_mergerSout_Rdata_ram6_;
  
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(8), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(8), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28861.mem"), .n_elements(64), .data_size(8), .address_space_begin(MEM_var_28861_28866), .address_space_rangesize(64), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(8), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28861_0 (.out1({null_out_signal_array_28861_0_out1_1, null_out_signal_array_28861_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_0), .proxy_out1({null_out_signal_array_28861_0_proxy_out1_1, null_out_signal_array_28861_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({8'b00000000, 8'b00000000}), .in3({4'b0000, 4'b0000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({8'b00000000, 8'b00000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(2), .BITSIZE_out1(2)) bus_mergerSout_DataRdy5_ (.out1(sig_out_bus_mergerSout_DataRdy5_), .in1({sig_in_bus_mergerSout_DataRdy5_1, sig_in_bus_mergerSout_DataRdy5_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(2), .BITSIZE_out1(16)) bus_mergerSout_Rdata_ram6_ (.out1(sig_out_bus_mergerSout_Rdata_ram6_), .in1({sig_in_bus_mergerSout_Rdata_ram6_1, sig_in_bus_mergerSout_Rdata_ram6_0}));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28861_28866)) const_0 (.out1(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_0_8_32 (.out1(out_conv_out_const_0_8_32), .in1(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_reg_0_reg_0_8_32 (.out1(out_conv_out_reg_0_reg_0_8_32), .in1(out_reg_0_reg_0));
  dijkstraF #(.MEM_var_28859_28863(MEM_var_28859_28863)) fu_main_28866_29340 (.done_port(s_done_fu_main_28866_29340), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_1), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_1), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28866_29340), .a(out_conv_out_reg_0_reg_0_8_32), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_main_28866_29558 (.out1(out_addr_expr_FU_3_i0_fu_main_28866_29558), .in1(out_conv_out_const_0_8_32));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_main_28866_29593 (.out1(out_UUdata_converter_FU_4_i0_fu_main_28866_29593), .in1(out_addr_expr_FU_3_i0_fu_main_28866_29558));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerMout_data_ram_size2_0 (.out1(sig_in_bus_mergerMout_data_ram_size2_0), .in1(sig_in_vector_bus_mergerMout_data_ram_size2_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_oe_ram3_0 (.out1(sig_in_bus_mergerMout_oe_ram3_0), .in1(sig_in_vector_bus_mergerMout_oe_ram3_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_we_ram4_0 (.out1(sig_in_bus_mergerMout_we_ram4_0), .in1(sig_in_vector_bus_mergerMout_we_ram4_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_0 (.out1(sig_in_bus_mergerSout_DataRdy5_0), .in1(sig_in_vector_bus_mergerSout_DataRdy5_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_1 (.out1(sig_in_bus_mergerSout_DataRdy5_1), .in1(sig_in_vector_bus_mergerSout_DataRdy5_1));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_0 (.out1(sig_in_bus_mergerSout_Rdata_ram6_0), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_1 (.out1(sig_in_bus_mergerSout_Rdata_ram6_1), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_1));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_4_i0_fu_main_28866_29593), .wenable(wrenable_reg_0));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy5_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy5_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram6_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram6_));
  // io-signal post fix
  assign OUT_UNBOUNDED_main_28866_29340 = s_done_fu_main_28866_29340;

endmodule

// FSM based controller description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_main(done_port, selector_IN_UNBOUNDED_main_28866_29340, wrenable_reg_0, OUT_UNBOUNDED_main_28866_29340, clock, reset, start_port);
  // IN
  input OUT_UNBOUNDED_main_28866_29340;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_IN_UNBOUNDED_main_28866_29340;
  output wrenable_reg_0;
  parameter [3:0] S_0 = 4'b0001,
    S_1 = 4'b0010,
    S_2 = 4'b0100,
    S_3 = 4'b1000;
  reg [3:0] _present_state, _next_state;
  reg done_port;
  reg selector_IN_UNBOUNDED_main_28866_29340;
  reg wrenable_reg_0;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    selector_IN_UNBOUNDED_main_28866_29340 = 1'b0;
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
          selector_IN_UNBOUNDED_main_28866_29340 = 1'b1;
          if (OUT_UNBOUNDED_main_28866_29340 == 1'b0)
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
          if (OUT_UNBOUNDED_main_28866_29340 == 1'b0)
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
  parameter MEM_var_28859_28863=128, MEM_var_28861_28866=64;
  // IN
  input clock;
  input reset;
  input start_port;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [15:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [15:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  // OUT
  output done_port;
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [15:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  // Component and signal declarations
  wire OUT_UNBOUNDED_main_28866_29340;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire selector_IN_UNBOUNDED_main_28866_29340;
  wire wrenable_reg_0;
  
  controller_main Controller_i (.done_port(done_delayed_REG_signal_in), .selector_IN_UNBOUNDED_main_28866_29340(selector_IN_UNBOUNDED_main_28866_29340), .wrenable_reg_0(wrenable_reg_0), .OUT_UNBOUNDED_main_28866_29340(OUT_UNBOUNDED_main_28866_29340), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_main #(.MEM_var_28859_28863(MEM_var_28859_28863), .MEM_var_28861_28866(MEM_var_28861_28866)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_UNBOUNDED_main_28866_29340(OUT_UNBOUNDED_main_28866_29340), .clock(clock), .reset(reset), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .selector_IN_UNBOUNDED_main_28866_29340(selector_IN_UNBOUNDED_main_28866_29340), .wrenable_reg_0(wrenable_reg_0));
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
  parameter MEM_var_28859_28863=128, MEM_var_28861_28866=64;
  // IN
  input clock;
  input reset;
  input start_port;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [15:0] S_addr_ram;
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
  output [15:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  // Component and signal declarations
  
  _main #(.MEM_var_28859_28863(MEM_var_28859_28863), .MEM_var_28861_28866(MEM_var_28861_28866)) _main_i0 (.done_port(done_port), .Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .clock(clock), .reset(reset), .start_port(start_port), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram({8'b00000000, 8'b00000000}), .Sin_DataRdy({1'b0, 1'b0}), .Min_oe_ram({1'b0, 1'b0}), .Min_we_ram({1'b0, 1'b0}), .Min_addr_ram({8'b00000000, 8'b00000000}), .Min_Wdata_ram({8'b00000000, 8'b00000000}), .Min_data_ram_size({4'b0000, 4'b0000}));

endmodule


