// 
// Politecnico di Milano
// Code created using PandA - Version: PandA 0.9.6 - Revision 891ec3caed502474cab0813cc4a9fc678deabaa5 - Date 2022-06-14T18:14:26
// bambu executed with: bambu -I/home/dews/Scrivania/bambu-hls/RESULTS/Bambu/xc7z020-1clg484-Zynq-7000/28x28/kruskal/includes/values_38 --simulate --simulator=VERILATOR --clock-period=5 --device-name=xc7z020-1clg484-VVD /home/dews/Scrivania/bambu-hls/cc4cs_bambu/benchmarkBasic/kruskal/thrd.c 
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

// Datapath RTL description for is_connected
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_is_connected(clock, reset, return_port, proxy_out1_28867, proxy_in1_28867, proxy_in2_28867, proxy_in3_28867, proxy_sel_LOAD_28867, proxy_sel_STORE_28867, proxy_out1_28868, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, proxy_out1_28870, proxy_in1_28870, proxy_in2_28870, proxy_in3_28870, proxy_sel_LOAD_28870, proxy_sel_STORE_28870, selector_MUX_18_gimple_return_FU_17_i0_0_0_0, selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0, selector_MUX_31_reg_13_0_0_0, selector_MUX_33_reg_3_0_0_0, selector_MUX_34_reg_4_0_0_0, selector_MUX_34_reg_4_0_0_1, selector_MUX_38_reg_8_0_0_0, selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0, selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1, selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0, fuselector_PROXY_CTRLN_0_i0_LOAD, fuselector_PROXY_CTRLN_0_i0_STORE, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_MULTIIF_is_connected_28872_30557, OUT_MULTIIF_is_connected_28872_30571);
  parameter MEM_var_28867_28882=32, MEM_var_28868_28882=64, MEM_var_28870_28882=128;
  // IN
  input clock;
  input reset;
  input [15:0] proxy_out1_28867;
  input [15:0] proxy_out1_28868;
  input [15:0] proxy_out1_28870;
  input selector_MUX_18_gimple_return_FU_17_i0_0_0_0;
  input selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0;
  input selector_MUX_31_reg_13_0_0_0;
  input selector_MUX_33_reg_3_0_0_0;
  input selector_MUX_34_reg_4_0_0_0;
  input selector_MUX_34_reg_4_0_0_1;
  input selector_MUX_38_reg_8_0_0_0;
  input selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0;
  input selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1;
  input selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0;
  input fuselector_PROXY_CTRLN_0_i0_LOAD;
  input fuselector_PROXY_CTRLN_0_i0_STORE;
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
  input wrenable_reg_2;
  input wrenable_reg_3;
  input wrenable_reg_4;
  input wrenable_reg_5;
  input wrenable_reg_6;
  input wrenable_reg_7;
  input wrenable_reg_8;
  input wrenable_reg_9;
  // OUT
  output signed [7:0] return_port;
  output [15:0] proxy_in1_28867;
  output [17:0] proxy_in2_28867;
  output [7:0] proxy_in3_28867;
  output [1:0] proxy_sel_LOAD_28867;
  output [1:0] proxy_sel_STORE_28867;
  output [15:0] proxy_in1_28868;
  output [17:0] proxy_in2_28868;
  output [7:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [15:0] proxy_in1_28870;
  output [17:0] proxy_in2_28870;
  output [7:0] proxy_in3_28870;
  output [1:0] proxy_sel_LOAD_28870;
  output [1:0] proxy_sel_STORE_28870;
  output [1:0] OUT_MULTIIF_is_connected_28872_30557;
  output [2:0] OUT_MULTIIF_is_connected_28872_30571;
  // Component and signal declarations
  wire [7:0] null_out_signal_PROXY_CTRLN_0_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_0_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_2_i0_out1_1;
  wire [7:0] out_MUX_18_gimple_return_FU_17_i0_0_0_0;
  wire [7:0] out_MUX_2_PROXY_CTRLN_0_i0_0_0_0;
  wire [7:0] out_MUX_31_reg_13_0_0_0;
  wire [31:0] out_MUX_33_reg_3_0_0_0;
  wire [7:0] out_MUX_34_reg_4_0_0_0;
  wire [7:0] out_MUX_34_reg_4_0_0_1;
  wire [31:0] out_MUX_38_reg_8_0_0_0;
  wire [7:0] out_MUX_6_PROXY_CTRLN_1_i0_0_0_0;
  wire [7:0] out_MUX_6_PROXY_CTRLN_1_i0_0_0_1;
  wire [8:0] out_MUX_7_PROXY_CTRLN_1_i0_1_0_0;
  wire [7:0] out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0;
  wire [7:0] out_UUdata_converter_FU_13_i0_fu_is_connected_28872_28996;
  wire [31:0] out_UUdata_converter_FU_7_i0_fu_is_connected_28872_28943;
  wire [6:0] out_addr_expr_FU_5_i0_fu_is_connected_28872_29882;
  wire [31:0] out_addr_expr_FU_6_i0_fu_is_connected_28872_29886;
  wire [5:0] out_addr_expr_FU_8_i0_fu_is_connected_28872_29905;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [5:0] out_const_10;
  wire [6:0] out_const_11;
  wire [7:0] out_const_2;
  wire [1:0] out_const_3;
  wire [4:0] out_const_4;
  wire out_const_5;
  wire [1:0] out_const_6;
  wire [2:0] out_const_7;
  wire [1:0] out_const_8;
  wire [8:0] out_const_9;
  wire [8:0] out_conv_out_addr_expr_FU_5_i0_fu_is_connected_28872_29882_7_9;
  wire signed [7:0] out_conv_out_const_0_I_1_I_8;
  wire [31:0] out_conv_out_const_10_6_32;
  wire [31:0] out_conv_out_const_11_7_32;
  wire signed [7:0] out_conv_out_const_3_I_2_I_8;
  wire [3:0] out_conv_out_const_4_5_4;
  wire [31:0] out_conv_out_const_9_9_32;
  wire [8:0] out_conv_out_reg_0_reg_0_7_9;
  wire [8:0] out_conv_out_reg_1_reg_1_6_9;
  wire [8:0] out_conv_out_reg_9_reg_9_8_9;
  wire [7:0] out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_0_1_8;
  wire [7:0] out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_1_1_8;
  wire [1:0] out_multi_read_cond_FU_14_i0_fu_is_connected_28872_30557;
  wire [2:0] out_multi_read_cond_FU_16_i0_fu_is_connected_28872_30571;
  wire out_ne_expr_FU_8_0_8_18_i0_fu_is_connected_28872_30452;
  wire [6:0] out_reg_0_reg_0;
  wire out_reg_10_reg_10;
  wire out_reg_11_reg_11;
  wire out_reg_12_reg_12;
  wire [7:0] out_reg_13_reg_13;
  wire [5:0] out_reg_1_reg_1;
  wire [7:0] out_reg_2_reg_2;
  wire [31:0] out_reg_3_reg_3;
  wire [7:0] out_reg_4_reg_4;
  wire out_reg_5_reg_5;
  wire out_reg_6_reg_6;
  wire [7:0] out_reg_7_reg_7;
  wire [31:0] out_reg_8_reg_8;
  wire [7:0] out_reg_9_reg_9;
  wire out_truth_and_expr_FU_1_1_1_19_i0_fu_is_connected_28872_30563;
  wire out_truth_and_expr_FU_1_1_1_19_i1_fu_is_connected_28872_30570;
  wire out_truth_and_expr_FU_1_1_1_19_i2_fu_is_connected_28872_30574;
  wire out_truth_and_expr_FU_1_1_1_19_i3_fu_is_connected_28872_30580;
  wire out_truth_not_expr_FU_1_1_20_i0_fu_is_connected_28872_30560;
  wire out_truth_not_expr_FU_1_1_20_i1_fu_is_connected_28872_30567;
  wire out_truth_not_expr_FU_1_1_20_i2_fu_is_connected_28872_30577;
  wire [0:0] out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_0;
  wire [0:0] out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_1;
  wire [1:0] out_ui_bit_and_expr_FU_8_0_8_21_i0_fu_is_connected_28872_30510;
  wire [31:0] out_ui_bit_ior_concat_expr_FU_22_i0_fu_is_connected_28872_28967;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_23_i0_fu_is_connected_28872_30506;
  wire out_ui_ne_expr_FU_8_0_8_24_i0_fu_is_connected_28872_30454;
  wire out_ui_ne_expr_FU_8_0_8_24_i1_fu_is_connected_28872_30458;
  wire out_ui_ne_expr_FU_8_8_8_25_i0_fu_is_connected_28872_30450;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_26_i0_fu_is_connected_28872_28991;
  wire [29:0] out_ui_plus_expr_FU_32_0_32_27_i0_fu_is_connected_28872_30503;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_28_i0_fu_is_connected_28872_28962;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_28_i1_fu_is_connected_28872_28979;
  wire [29:0] out_ui_rshift_expr_FU_32_0_32_29_i0_fu_is_connected_28872_30498;
  wire [7:0] out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_2;
  wire [7:0] out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_3;
  wire [7:0] out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_4;
  wire [7:0] out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5;
  wire [15:0] sig_in_bus_mergerproxy_in1_288670_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288681_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288702_0;
  wire [17:0] sig_in_bus_mergerproxy_in2_288673_0;
  wire [17:0] sig_in_bus_mergerproxy_in2_288684_0;
  wire [17:0] sig_in_bus_mergerproxy_in2_288705_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_288676_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_288687_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_288708_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_288679_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886810_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2887011_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886712_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886813_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2887014_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288670_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288681_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288702_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in2_288673_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in2_288684_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in2_288705_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_288676_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_288687_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_288708_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_288679_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886810_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2887011_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886712_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886813_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2887014_0;
  wire [15:0] sig_out_bus_mergerproxy_in1_288670_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288681_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288702_;
  wire [17:0] sig_out_bus_mergerproxy_in2_288673_;
  wire [17:0] sig_out_bus_mergerproxy_in2_288684_;
  wire [17:0] sig_out_bus_mergerproxy_in2_288705_;
  wire [7:0] sig_out_bus_mergerproxy_in3_288676_;
  wire [7:0] sig_out_bus_mergerproxy_in3_288687_;
  wire [7:0] sig_out_bus_mergerproxy_in3_288708_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_288679_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886810_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2887011_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886712_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886813_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2887014_;
  
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_0 (.out1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_0), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_1 (.out1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_1), .in1(out_const_0));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_2 (.out1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_2), .in1(out_const_1));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_3 (.out1(out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_3), .in1(out_reg_4_reg_4));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_4 (.out1(out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_4), .in1(out_const_2));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_5 (.out1(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5), .in1(out_reg_13_reg_13));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_18_gimple_return_FU_17_i0_0_0_0 (.out1(out_MUX_18_gimple_return_FU_17_i0_0_0_0), .sel(selector_MUX_18_gimple_return_FU_17_i0_0_0_0), .in1(out_conv_out_const_0_I_1_I_8), .in2(out_conv_out_const_3_I_2_I_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_2_PROXY_CTRLN_0_i0_0_0_0 (.out1(out_MUX_2_PROXY_CTRLN_0_i0_0_0_0), .sel(selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0), .in1(out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_3), .in2(out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_4));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_31_reg_13_0_0_0 (.out1(out_MUX_31_reg_13_0_0_0), .sel(selector_MUX_31_reg_13_0_0_0), .in1(out_reg_2_reg_2), .in2(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_0_1_8));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_33_reg_3_0_0_0 (.out1(out_MUX_33_reg_3_0_0_0), .sel(selector_MUX_33_reg_3_0_0_0), .in1(out_UUdata_converter_FU_7_i0_fu_is_connected_28872_28943), .in2(out_ui_bit_ior_concat_expr_FU_22_i0_fu_is_connected_28872_28967));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_34_reg_4_0_0_0 (.out1(out_MUX_34_reg_4_0_0_0), .sel(selector_MUX_34_reg_4_0_0_0), .in1(out_reg_7_reg_7), .in2(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_1_1_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_34_reg_4_0_0_1 (.out1(out_MUX_34_reg_4_0_0_1), .sel(selector_MUX_34_reg_4_0_0_1), .in1(out_ui_plus_expr_FU_8_0_8_28_i1_fu_is_connected_28872_28979), .in2(out_MUX_34_reg_4_0_0_0));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_38_reg_8_0_0_0 (.out1(out_MUX_38_reg_8_0_0_0), .sel(selector_MUX_38_reg_8_0_0_0), .in1(out_reg_3_reg_3), .in2(out_ui_plus_expr_FU_32_0_32_26_i0_fu_is_connected_28872_28991));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_6_PROXY_CTRLN_1_i0_0_0_0 (.out1(out_MUX_6_PROXY_CTRLN_1_i0_0_0_0), .sel(selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0), .in1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_2), .in2(out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_4));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_6_PROXY_CTRLN_1_i0_0_0_1 (.out1(out_MUX_6_PROXY_CTRLN_1_i0_0_0_1), .sel(selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1), .in1(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5), .in2(out_MUX_6_PROXY_CTRLN_1_i0_0_0_0));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_7_PROXY_CTRLN_1_i0_1_0_0 (.out1(out_MUX_7_PROXY_CTRLN_1_i0_1_0_0), .sel(selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0), .in1(out_conv_out_reg_0_reg_0_7_9), .in2(out_conv_out_addr_expr_FU_5_i0_fu_is_connected_28872_29882_7_9));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_0_i0 (.out1({null_out_signal_PROXY_CTRLN_0_i0_out1_1, null_out_signal_PROXY_CTRLN_0_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288670_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288673_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288676_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_288679_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886712_0), .in1({8'b00000000, out_MUX_2_PROXY_CTRLN_0_i0_0_0_0}), .in2({9'b000000000, out_conv_out_reg_1_reg_1_6_9}), .in3({4'b0000, out_conv_out_const_4_5_4}), .in4({1'b0, out_const_5}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_0_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_0_i0_STORE}), .proxy_out1(proxy_out1_28867));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_1_i0 (.out1({null_out_signal_PROXY_CTRLN_1_i0_out1_1, null_out_signal_PROXY_CTRLN_1_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288681_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288684_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288687_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886810_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886813_0), .in1({8'b00000000, out_MUX_6_PROXY_CTRLN_1_i0_0_0_1}), .in2({9'b000000000, out_MUX_7_PROXY_CTRLN_1_i0_1_0_0}), .in3({4'b0000, out_conv_out_const_4_5_4}), .in4({1'b0, out_const_5}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_1_i0_STORE}), .proxy_out1(proxy_out1_28868));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_2_i0 (.out1({null_out_signal_PROXY_CTRLN_2_i0_out1_1, out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288702_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288705_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288708_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2887011_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2887014_0), .in1({8'b00000000, 8'b00000000}), .in2({9'b000000000, out_conv_out_reg_9_reg_9_8_9}), .in3({4'b0000, out_conv_out_const_4_5_4}), .in4({1'b0, out_const_5}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_2_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_2_i0_STORE}), .proxy_out1(proxy_out1_28870));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288670_ (.out1(sig_out_bus_mergerproxy_in1_288670_), .in1({sig_in_bus_mergerproxy_in1_288670_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288681_ (.out1(sig_out_bus_mergerproxy_in1_288681_), .in1({sig_in_bus_mergerproxy_in1_288681_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288702_ (.out1(sig_out_bus_mergerproxy_in1_288702_), .in1({sig_in_bus_mergerproxy_in1_288702_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerproxy_in2_288673_ (.out1(sig_out_bus_mergerproxy_in2_288673_), .in1({sig_in_bus_mergerproxy_in2_288673_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerproxy_in2_288684_ (.out1(sig_out_bus_mergerproxy_in2_288684_), .in1({sig_in_bus_mergerproxy_in2_288684_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerproxy_in2_288705_ (.out1(sig_out_bus_mergerproxy_in2_288705_), .in1({sig_in_bus_mergerproxy_in2_288705_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_288676_ (.out1(sig_out_bus_mergerproxy_in3_288676_), .in1({sig_in_bus_mergerproxy_in3_288676_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_288687_ (.out1(sig_out_bus_mergerproxy_in3_288687_), .in1({sig_in_bus_mergerproxy_in3_288687_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_288708_ (.out1(sig_out_bus_mergerproxy_in3_288708_), .in1({sig_in_bus_mergerproxy_in3_288708_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_288679_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288679_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288679_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886810_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886810_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886810_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2887011_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2887011_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2887011_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886712_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886712_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886712_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886813_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886813_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886813_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2887014_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2887014_), .in1({sig_in_bus_mergerproxy_sel_STORE_2887014_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(6), .value(MEM_var_28867_28882)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(7), .value(MEM_var_28868_28882)) const_11 (.out1(out_const_11));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000100)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(2), .value(2'b01)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(2), .value(2'b10)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(3), .value(3'b100)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(9), .value(MEM_var_28870_28882)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_addr_expr_FU_5_i0_fu_is_connected_28872_29882_7_9 (.out1(out_conv_out_addr_expr_FU_5_i0_fu_is_connected_28872_29882_7_9), .in1(out_addr_expr_FU_5_i0_fu_is_connected_28872_29882));
  IIdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_const_0_I_1_I_8 (.out1(out_conv_out_const_0_I_1_I_8), .in1(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(32)) conv_out_const_10_6_32 (.out1(out_conv_out_const_10_6_32), .in1(out_const_10));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(32)) conv_out_const_11_7_32 (.out1(out_conv_out_const_11_7_32), .in1(out_const_11));
  IIdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(8)) conv_out_const_3_I_2_I_8 (.out1(out_conv_out_const_3_I_2_I_8), .in1(out_const_3));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_4_5_4 (.out1(out_conv_out_const_4_5_4), .in1(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(32)) conv_out_const_9_9_32 (.out1(out_conv_out_const_9_9_32), .in1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_0_reg_0_7_9 (.out1(out_conv_out_reg_0_reg_0_7_9), .in1(out_reg_0_reg_0));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(9)) conv_out_reg_1_reg_1_6_9 (.out1(out_conv_out_reg_1_reg_1_6_9), .in1(out_reg_1_reg_1));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_9_reg_9_8_9 (.out1(out_conv_out_reg_9_reg_9_8_9), .in1(out_reg_9_reg_9));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_0_1_8 (.out1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_0_1_8), .in1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_0));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_1_1_8 (.out1(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_1_1_8), .in1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_1));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_is_connected_28872_28943 (.out1(out_UUdata_converter_FU_7_i0_fu_is_connected_28872_28943), .in1(out_addr_expr_FU_6_i0_fu_is_connected_28872_29886));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_is_connected_28872_28962 (.out1(out_ui_plus_expr_FU_8_0_8_28_i0_fu_is_connected_28872_28962), .in1(out_reg_13_reg_13), .in2(out_const_5));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(32), .OFFSET_PARAMETER(2)) fu_is_connected_28872_28967 (.out1(out_ui_bit_ior_concat_expr_FU_22_i0_fu_is_connected_28872_28967), .in1(out_ui_lshift_expr_FU_32_0_32_23_i0_fu_is_connected_28872_30506), .in2(out_ui_bit_and_expr_FU_8_0_8_21_i0_fu_is_connected_28872_30510), .in3(out_const_6));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_is_connected_28872_28979 (.out1(out_ui_plus_expr_FU_8_0_8_28_i1_fu_is_connected_28872_28979), .in1(out_reg_4_reg_4), .in2(out_const_5));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(32)) fu_is_connected_28872_28991 (.out1(out_ui_plus_expr_FU_32_0_32_26_i0_fu_is_connected_28872_28991), .in1(out_reg_8_reg_8), .in2(out_const_5));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_is_connected_28872_28996 (.out1(out_UUdata_converter_FU_13_i0_fu_is_connected_28872_28996), .in1(out_reg_8_reg_8));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_is_connected_28872_29882 (.out1(out_addr_expr_FU_5_i0_fu_is_connected_28872_29882), .in1(out_conv_out_const_11_7_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_is_connected_28872_29886 (.out1(out_addr_expr_FU_6_i0_fu_is_connected_28872_29886), .in1(out_conv_out_const_9_9_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(6)) fu_is_connected_28872_29905 (.out1(out_addr_expr_FU_8_i0_fu_is_connected_28872_29905), .in1(out_conv_out_const_10_6_32));
  ui_ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_is_connected_28872_30450 (.out1(out_ui_ne_expr_FU_8_8_8_25_i0_fu_is_connected_28872_30450), .in1(out_reg_13_reg_13), .in2(out_reg_4_reg_4));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_is_connected_28872_30452 (.out1(out_ne_expr_FU_8_0_8_18_i0_fu_is_connected_28872_30452), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0), .in2(out_const_8));
  ui_ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(1)) fu_is_connected_28872_30454 (.out1(out_ui_ne_expr_FU_8_0_8_24_i0_fu_is_connected_28872_30454), .in1(out_ui_plus_expr_FU_8_0_8_28_i0_fu_is_connected_28872_28962), .in2(out_const_7));
  ui_ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(1)) fu_is_connected_28872_30458 (.out1(out_ui_ne_expr_FU_8_0_8_24_i1_fu_is_connected_28872_30458), .in1(out_ui_plus_expr_FU_8_0_8_28_i1_fu_is_connected_28872_28979), .in2(out_const_7));
  ui_rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(30), .PRECISION(32)) fu_is_connected_28872_30498 (.out1(out_ui_rshift_expr_FU_32_0_32_29_i0_fu_is_connected_28872_30498), .in1(out_reg_3_reg_3), .in2(out_const_6));
  ui_plus_expr_FU #(.BITSIZE_in1(30), .BITSIZE_in2(1), .BITSIZE_out1(30)) fu_is_connected_28872_30503 (.out1(out_ui_plus_expr_FU_32_0_32_27_i0_fu_is_connected_28872_30503), .in1(out_ui_rshift_expr_FU_32_0_32_29_i0_fu_is_connected_28872_30498), .in2(out_const_5));
  ui_lshift_expr_FU #(.BITSIZE_in1(30), .BITSIZE_in2(2), .BITSIZE_out1(32), .PRECISION(32)) fu_is_connected_28872_30506 (.out1(out_ui_lshift_expr_FU_32_0_32_23_i0_fu_is_connected_28872_30506), .in1(out_ui_plus_expr_FU_32_0_32_27_i0_fu_is_connected_28872_30503), .in2(out_const_6));
  ui_bit_and_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_is_connected_28872_30510 (.out1(out_ui_bit_and_expr_FU_8_0_8_21_i0_fu_is_connected_28872_30510), .in1(out_reg_3_reg_3), .in2(out_const_8));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) fu_is_connected_28872_30557 (.out1(out_multi_read_cond_FU_14_i0_fu_is_connected_28872_30557), .in1({out_truth_and_expr_FU_1_1_1_19_i0_fu_is_connected_28872_30563, out_ui_ne_expr_FU_8_8_8_25_i0_fu_is_connected_28872_30450}));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_is_connected_28872_30560 (.out1(out_truth_not_expr_FU_1_1_20_i0_fu_is_connected_28872_30560), .in1(out_ui_ne_expr_FU_8_8_8_25_i0_fu_is_connected_28872_30450));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_is_connected_28872_30563 (.out1(out_truth_and_expr_FU_1_1_1_19_i0_fu_is_connected_28872_30563), .in1(out_ui_ne_expr_FU_8_0_8_24_i1_fu_is_connected_28872_30458), .in2(out_truth_not_expr_FU_1_1_20_i0_fu_is_connected_28872_30560));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_is_connected_28872_30567 (.out1(out_truth_not_expr_FU_1_1_20_i1_fu_is_connected_28872_30567), .in1(out_ne_expr_FU_8_0_8_18_i0_fu_is_connected_28872_30452));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_is_connected_28872_30570 (.out1(out_truth_and_expr_FU_1_1_1_19_i1_fu_is_connected_28872_30570), .in1(out_reg_10_reg_10), .in2(out_reg_12_reg_12));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(3), .BITSIZE_out1(3)) fu_is_connected_28872_30571 (.out1(out_multi_read_cond_FU_16_i0_fu_is_connected_28872_30571), .in1({out_truth_and_expr_FU_1_1_1_19_i1_fu_is_connected_28872_30570, out_truth_and_expr_FU_1_1_1_19_i3_fu_is_connected_28872_30580, out_truth_and_expr_FU_1_1_1_19_i2_fu_is_connected_28872_30574}));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_is_connected_28872_30574 (.out1(out_truth_and_expr_FU_1_1_1_19_i2_fu_is_connected_28872_30574), .in1(out_reg_11_reg_11), .in2(out_reg_5_reg_5));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_is_connected_28872_30577 (.out1(out_truth_not_expr_FU_1_1_20_i2_fu_is_connected_28872_30577), .in1(out_ui_ne_expr_FU_8_0_8_24_i0_fu_is_connected_28872_30454));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_is_connected_28872_30580 (.out1(out_truth_and_expr_FU_1_1_1_19_i3_fu_is_connected_28872_30580), .in1(out_reg_11_reg_11), .in2(out_reg_6_reg_6));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288670_0 (.out1(sig_in_bus_mergerproxy_in1_288670_0), .in1(sig_in_vector_bus_mergerproxy_in1_288670_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288681_0 (.out1(sig_in_bus_mergerproxy_in1_288681_0), .in1(sig_in_vector_bus_mergerproxy_in1_288681_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288702_0 (.out1(sig_in_bus_mergerproxy_in1_288702_0), .in1(sig_in_vector_bus_mergerproxy_in1_288702_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in2_288673_0 (.out1(sig_in_bus_mergerproxy_in2_288673_0), .in1(sig_in_vector_bus_mergerproxy_in2_288673_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in2_288684_0 (.out1(sig_in_bus_mergerproxy_in2_288684_0), .in1(sig_in_vector_bus_mergerproxy_in2_288684_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in2_288705_0 (.out1(sig_in_bus_mergerproxy_in2_288705_0), .in1(sig_in_vector_bus_mergerproxy_in2_288705_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_288676_0 (.out1(sig_in_bus_mergerproxy_in3_288676_0), .in1(sig_in_vector_bus_mergerproxy_in3_288676_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_288687_0 (.out1(sig_in_bus_mergerproxy_in3_288687_0), .in1(sig_in_vector_bus_mergerproxy_in3_288687_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_288708_0 (.out1(sig_in_bus_mergerproxy_in3_288708_0), .in1(sig_in_vector_bus_mergerproxy_in3_288708_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_288679_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_288679_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_288679_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886810_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886810_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886810_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2887011_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2887011_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2887011_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886712_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886712_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886712_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886813_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886813_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886813_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2887014_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2887014_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2887014_0));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_5_i0_fu_is_connected_28872_29882), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_8_i0_fu_is_connected_28872_29905), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_24_i1_fu_is_connected_28872_30458), .wenable(wrenable_reg_10));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_ne_expr_FU_8_0_8_18_i0_fu_is_connected_28872_30452), .wenable(wrenable_reg_11));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_truth_not_expr_FU_1_1_20_i1_fu_is_connected_28872_30567), .wenable(wrenable_reg_12));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_MUX_31_reg_13_0_0_0), .wenable(wrenable_reg_13));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_28_i0_fu_is_connected_28872_28962), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_MUX_33_reg_3_0_0_0), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_MUX_34_reg_4_0_0_1), .wenable(wrenable_reg_4));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_24_i0_fu_is_connected_28872_30454), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_truth_not_expr_FU_1_1_20_i2_fu_is_connected_28872_30577), .wenable(wrenable_reg_6));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_28_i1_fu_is_connected_28872_28979), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_MUX_38_reg_8_0_0_0), .wenable(wrenable_reg_8));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_13_i0_fu_is_connected_28872_28996), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288670_ (.out1(proxy_in1_28867), .in1(sig_out_bus_mergerproxy_in1_288670_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288681_ (.out1(proxy_in1_28868), .in1(sig_out_bus_mergerproxy_in1_288681_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288702_ (.out1(proxy_in1_28870), .in1(sig_out_bus_mergerproxy_in1_288702_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288673_ (.out1(proxy_in2_28867), .in1(sig_out_bus_mergerproxy_in2_288673_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288684_ (.out1(proxy_in2_28868), .in1(sig_out_bus_mergerproxy_in2_288684_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288705_ (.out1(proxy_in2_28870), .in1(sig_out_bus_mergerproxy_in2_288705_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288676_ (.out1(proxy_in3_28867), .in1(sig_out_bus_mergerproxy_in3_288676_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288687_ (.out1(proxy_in3_28868), .in1(sig_out_bus_mergerproxy_in3_288687_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288708_ (.out1(proxy_in3_28870), .in1(sig_out_bus_mergerproxy_in3_288708_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_288679_ (.out1(proxy_sel_LOAD_28867), .in1(sig_out_bus_mergerproxy_sel_LOAD_288679_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886810_ (.out1(proxy_sel_LOAD_28868), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886810_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2887011_ (.out1(proxy_sel_LOAD_28870), .in1(sig_out_bus_mergerproxy_sel_LOAD_2887011_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886712_ (.out1(proxy_sel_STORE_28867), .in1(sig_out_bus_mergerproxy_sel_STORE_2886712_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886813_ (.out1(proxy_sel_STORE_28868), .in1(sig_out_bus_mergerproxy_sel_STORE_2886813_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2887014_ (.out1(proxy_sel_STORE_28870), .in1(sig_out_bus_mergerproxy_sel_STORE_2887014_));
  // io-signal post fix
  assign return_port = out_MUX_18_gimple_return_FU_17_i0_0_0_0;
  assign OUT_MULTIIF_is_connected_28872_30557 = out_multi_read_cond_FU_14_i0_fu_is_connected_28872_30557;
  assign OUT_MULTIIF_is_connected_28872_30571 = out_multi_read_cond_FU_16_i0_fu_is_connected_28872_30571;

endmodule

// FSM based controller description for is_connected
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_is_connected(done_port, selector_MUX_18_gimple_return_FU_17_i0_0_0_0, selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0, selector_MUX_31_reg_13_0_0_0, selector_MUX_33_reg_3_0_0_0, selector_MUX_34_reg_4_0_0_0, selector_MUX_34_reg_4_0_0_1, selector_MUX_38_reg_8_0_0_0, selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0, selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1, selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0, fuselector_PROXY_CTRLN_0_i0_LOAD, fuselector_PROXY_CTRLN_0_i0_STORE, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_MULTIIF_is_connected_28872_30557, OUT_MULTIIF_is_connected_28872_30571, clock, reset, start_port);
  // IN
  input [1:0] OUT_MULTIIF_is_connected_28872_30557;
  input [2:0] OUT_MULTIIF_is_connected_28872_30571;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_MUX_18_gimple_return_FU_17_i0_0_0_0;
  output selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0;
  output selector_MUX_31_reg_13_0_0_0;
  output selector_MUX_33_reg_3_0_0_0;
  output selector_MUX_34_reg_4_0_0_0;
  output selector_MUX_34_reg_4_0_0_1;
  output selector_MUX_38_reg_8_0_0_0;
  output selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0;
  output selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1;
  output selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0;
  output fuselector_PROXY_CTRLN_0_i0_LOAD;
  output fuselector_PROXY_CTRLN_0_i0_STORE;
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
  output wrenable_reg_2;
  output wrenable_reg_3;
  output wrenable_reg_4;
  output wrenable_reg_5;
  output wrenable_reg_6;
  output wrenable_reg_7;
  output wrenable_reg_8;
  output wrenable_reg_9;
  parameter [7:0] S_0 = 8'b00000001,
    S_1 = 8'b00000010,
    S_2 = 8'b00000100,
    S_3 = 8'b00001000,
    S_4 = 8'b00010000,
    S_5 = 8'b00100000,
    S_6 = 8'b01000000,
    S_7 = 8'b10000000;
  reg [7:0] _present_state, _next_state;
  reg done_port;
  reg selector_MUX_18_gimple_return_FU_17_i0_0_0_0;
  reg selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0;
  reg selector_MUX_31_reg_13_0_0_0;
  reg selector_MUX_33_reg_3_0_0_0;
  reg selector_MUX_34_reg_4_0_0_0;
  reg selector_MUX_34_reg_4_0_0_1;
  reg selector_MUX_38_reg_8_0_0_0;
  reg selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0;
  reg selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1;
  reg selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0;
  reg fuselector_PROXY_CTRLN_0_i0_LOAD;
  reg fuselector_PROXY_CTRLN_0_i0_STORE;
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
    selector_MUX_18_gimple_return_FU_17_i0_0_0_0 = 1'b0;
    selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0 = 1'b0;
    selector_MUX_31_reg_13_0_0_0 = 1'b0;
    selector_MUX_33_reg_3_0_0_0 = 1'b0;
    selector_MUX_34_reg_4_0_0_0 = 1'b0;
    selector_MUX_34_reg_4_0_0_1 = 1'b0;
    selector_MUX_38_reg_8_0_0_0 = 1'b0;
    selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0 = 1'b0;
    selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1 = 1'b0;
    selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0 = 1'b0;
    fuselector_PROXY_CTRLN_0_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_0_i0_STORE = 1'b0;
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
          selector_MUX_33_reg_3_0_0_0 = 1'b1;
          selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_1_i0_STORE = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_13 = 1'b1;
          wrenable_reg_3 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          selector_MUX_18_gimple_return_FU_17_i0_0_0_0 = 1'bX;
          selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0 = 1'bX;
          selector_MUX_31_reg_13_0_0_0 = 1'bX;
          selector_MUX_33_reg_3_0_0_0 = 1'bX;
          selector_MUX_34_reg_4_0_0_0 = 1'bX;
          selector_MUX_34_reg_4_0_0_1 = 1'bX;
          selector_MUX_38_reg_8_0_0_0 = 1'bX;
          selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0 = 1'bX;
          selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1 = 1'bX;
          selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_10 = 1'bX;
          wrenable_reg_11 = 1'bX;
          wrenable_reg_12 = 1'bX;
          wrenable_reg_13 = 1'bX;
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
          selector_MUX_38_reg_8_0_0_0 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_6 = 1'b1;
          wrenable_reg_8 = 1'b1;
          _next_state = S_2;
        end
      S_2 :
        begin
          selector_MUX_34_reg_4_0_0_1 = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_7 = 1'b1;
          wrenable_reg_8 = 1'b1;
          wrenable_reg_9 = 1'b1;
          if (OUT_MULTIIF_is_connected_28872_30557[0] == 1'b1)
            begin
              _next_state = S_3;
              selector_MUX_34_reg_4_0_0_1 = 1'b0;
              wrenable_reg_4 = 1'b0;
            end
          else if (OUT_MULTIIF_is_connected_28872_30557[1] == 1'b1)
            begin
              _next_state = S_2;
              wrenable_reg_10 = 1'b0;
              wrenable_reg_7 = 1'b0;
              wrenable_reg_9 = 1'b0;
            end
          else
            begin
              _next_state = S_7;
              done_port = 1'b1;
              selector_MUX_34_reg_4_0_0_1 = 1'b0;
              wrenable_reg_10 = 1'b0;
              wrenable_reg_4 = 1'b0;
              wrenable_reg_7 = 1'b0;
              wrenable_reg_8 = 1'b0;
              wrenable_reg_9 = 1'b0;
            end
        end
      S_3 :
        begin
          fuselector_PROXY_CTRLN_2_i0_LOAD = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          wrenable_reg_11 = 1'b1;
          wrenable_reg_12 = 1'b1;
          _next_state = S_5;
        end
      S_5 :
        begin
          selector_MUX_31_reg_13_0_0_0 = 1'b1;
          selector_MUX_34_reg_4_0_0_0 = 1'b1;
          wrenable_reg_13 = 1'b1;
          wrenable_reg_4 = 1'b1;
          if (OUT_MULTIIF_is_connected_28872_30571[2] == 1'b1)
            begin
              _next_state = S_2;
              selector_MUX_31_reg_13_0_0_0 = 1'b0;
              wrenable_reg_13 = 1'b0;
            end
          else if (OUT_MULTIIF_is_connected_28872_30571[0] == 1'b1)
            begin
              _next_state = S_1;
              selector_MUX_34_reg_4_0_0_0 = 1'b0;
              wrenable_reg_4 = 1'b0;
            end
          else if (OUT_MULTIIF_is_connected_28872_30571[1] == 1'b1)
            begin
              _next_state = S_6;
              done_port = 1'b1;
              selector_MUX_31_reg_13_0_0_0 = 1'b0;
              selector_MUX_34_reg_4_0_0_0 = 1'b0;
              wrenable_reg_13 = 1'b0;
              wrenable_reg_4 = 1'b0;
            end
          else
            begin
              _next_state = S_7;
              done_port = 1'b1;
              selector_MUX_31_reg_13_0_0_0 = 1'b0;
              selector_MUX_34_reg_4_0_0_0 = 1'b0;
              wrenable_reg_13 = 1'b0;
              wrenable_reg_4 = 1'b0;
            end
        end
      S_6 :
        begin
          selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0 = 1'b1;
          selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_0_i0_STORE = 1'b1;
          fuselector_PROXY_CTRLN_1_i0_STORE = 1'b1;
          _next_state = S_0;
        end
      S_7 :
        begin
          selector_MUX_18_gimple_return_FU_17_i0_0_0_0 = 1'b1;
          selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1 = 1'b1;
          selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_0_i0_STORE = 1'b1;
          fuselector_PROXY_CTRLN_1_i0_STORE = 1'b1;
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_18_gimple_return_FU_17_i0_0_0_0 = 1'bX;
          selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0 = 1'bX;
          selector_MUX_31_reg_13_0_0_0 = 1'bX;
          selector_MUX_33_reg_3_0_0_0 = 1'bX;
          selector_MUX_34_reg_4_0_0_0 = 1'bX;
          selector_MUX_34_reg_4_0_0_1 = 1'bX;
          selector_MUX_38_reg_8_0_0_0 = 1'bX;
          selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0 = 1'bX;
          selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1 = 1'bX;
          selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_10 = 1'bX;
          wrenable_reg_11 = 1'bX;
          wrenable_reg_12 = 1'bX;
          wrenable_reg_13 = 1'bX;
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

// Top component for is_connected
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module is_connected(clock, reset, start_port, done_port, return_port, proxy_out1_28867, proxy_out1_28868, proxy_out1_28870, proxy_in1_28867, proxy_in2_28867, proxy_in3_28867, proxy_sel_LOAD_28867, proxy_sel_STORE_28867, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, proxy_in1_28870, proxy_in2_28870, proxy_in3_28870, proxy_sel_LOAD_28870, proxy_sel_STORE_28870);
  parameter MEM_var_28867_28882=32, MEM_var_28868_28882=64, MEM_var_28870_28882=128;
  // IN
  input clock;
  input reset;
  input start_port;
  input [15:0] proxy_out1_28867;
  input [15:0] proxy_out1_28868;
  input [15:0] proxy_out1_28870;
  // OUT
  output done_port;
  output signed [7:0] return_port;
  output [15:0] proxy_in1_28867;
  output [17:0] proxy_in2_28867;
  output [7:0] proxy_in3_28867;
  output [1:0] proxy_sel_LOAD_28867;
  output [1:0] proxy_sel_STORE_28867;
  output [15:0] proxy_in1_28868;
  output [17:0] proxy_in2_28868;
  output [7:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [15:0] proxy_in1_28870;
  output [17:0] proxy_in2_28870;
  output [7:0] proxy_in3_28870;
  output [1:0] proxy_sel_LOAD_28870;
  output [1:0] proxy_sel_STORE_28870;
  // Component and signal declarations
  wire [1:0] OUT_MULTIIF_is_connected_28872_30557;
  wire [2:0] OUT_MULTIIF_is_connected_28872_30571;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_PROXY_CTRLN_0_i0_LOAD;
  wire fuselector_PROXY_CTRLN_0_i0_STORE;
  wire fuselector_PROXY_CTRLN_1_i0_LOAD;
  wire fuselector_PROXY_CTRLN_1_i0_STORE;
  wire fuselector_PROXY_CTRLN_2_i0_LOAD;
  wire fuselector_PROXY_CTRLN_2_i0_STORE;
  wire selector_MUX_18_gimple_return_FU_17_i0_0_0_0;
  wire selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0;
  wire selector_MUX_31_reg_13_0_0_0;
  wire selector_MUX_33_reg_3_0_0_0;
  wire selector_MUX_34_reg_4_0_0_0;
  wire selector_MUX_34_reg_4_0_0_1;
  wire selector_MUX_38_reg_8_0_0_0;
  wire selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0;
  wire selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1;
  wire selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0;
  wire wrenable_reg_0;
  wire wrenable_reg_1;
  wire wrenable_reg_10;
  wire wrenable_reg_11;
  wire wrenable_reg_12;
  wire wrenable_reg_13;
  wire wrenable_reg_2;
  wire wrenable_reg_3;
  wire wrenable_reg_4;
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  controller_is_connected Controller_i (.done_port(done_delayed_REG_signal_in), .selector_MUX_18_gimple_return_FU_17_i0_0_0_0(selector_MUX_18_gimple_return_FU_17_i0_0_0_0), .selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0(selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0), .selector_MUX_31_reg_13_0_0_0(selector_MUX_31_reg_13_0_0_0), .selector_MUX_33_reg_3_0_0_0(selector_MUX_33_reg_3_0_0_0), .selector_MUX_34_reg_4_0_0_0(selector_MUX_34_reg_4_0_0_0), .selector_MUX_34_reg_4_0_0_1(selector_MUX_34_reg_4_0_0_1), .selector_MUX_38_reg_8_0_0_0(selector_MUX_38_reg_8_0_0_0), .selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0(selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0), .selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1(selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1), .selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0(selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0), .fuselector_PROXY_CTRLN_0_i0_LOAD(fuselector_PROXY_CTRLN_0_i0_LOAD), .fuselector_PROXY_CTRLN_0_i0_STORE(fuselector_PROXY_CTRLN_0_i0_STORE), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_MULTIIF_is_connected_28872_30557(OUT_MULTIIF_is_connected_28872_30557), .OUT_MULTIIF_is_connected_28872_30571(OUT_MULTIIF_is_connected_28872_30571), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_is_connected #(.MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) Datapath_i (.return_port(return_port), .proxy_in1_28867(proxy_in1_28867), .proxy_in2_28867(proxy_in2_28867), .proxy_in3_28867(proxy_in3_28867), .proxy_sel_LOAD_28867(proxy_sel_LOAD_28867), .proxy_sel_STORE_28867(proxy_sel_STORE_28867), .proxy_in1_28868(proxy_in1_28868), .proxy_in2_28868(proxy_in2_28868), .proxy_in3_28868(proxy_in3_28868), .proxy_sel_LOAD_28868(proxy_sel_LOAD_28868), .proxy_sel_STORE_28868(proxy_sel_STORE_28868), .proxy_in1_28870(proxy_in1_28870), .proxy_in2_28870(proxy_in2_28870), .proxy_in3_28870(proxy_in3_28870), .proxy_sel_LOAD_28870(proxy_sel_LOAD_28870), .proxy_sel_STORE_28870(proxy_sel_STORE_28870), .OUT_MULTIIF_is_connected_28872_30557(OUT_MULTIIF_is_connected_28872_30557), .OUT_MULTIIF_is_connected_28872_30571(OUT_MULTIIF_is_connected_28872_30571), .clock(clock), .reset(reset), .proxy_out1_28867(proxy_out1_28867), .proxy_out1_28868(proxy_out1_28868), .proxy_out1_28870(proxy_out1_28870), .selector_MUX_18_gimple_return_FU_17_i0_0_0_0(selector_MUX_18_gimple_return_FU_17_i0_0_0_0), .selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0(selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0), .selector_MUX_31_reg_13_0_0_0(selector_MUX_31_reg_13_0_0_0), .selector_MUX_33_reg_3_0_0_0(selector_MUX_33_reg_3_0_0_0), .selector_MUX_34_reg_4_0_0_0(selector_MUX_34_reg_4_0_0_0), .selector_MUX_34_reg_4_0_0_1(selector_MUX_34_reg_4_0_0_1), .selector_MUX_38_reg_8_0_0_0(selector_MUX_38_reg_8_0_0_0), .selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0(selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0), .selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1(selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1), .selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0(selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0), .fuselector_PROXY_CTRLN_0_i0_LOAD(fuselector_PROXY_CTRLN_0_i0_LOAD), .fuselector_PROXY_CTRLN_0_i0_STORE(fuselector_PROXY_CTRLN_0_i0_STORE), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

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

// Datapath RTL description for kruskalF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_kruskalF(clock, reset, in_port_a, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, proxy_out1_28867, proxy_in1_28867, proxy_in2_28867, proxy_in3_28867, proxy_sel_LOAD_28867, proxy_sel_STORE_28867, proxy_out1_28868, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, proxy_out1_28869, proxy_in1_28869, proxy_in2_28869, proxy_in3_28869, proxy_sel_LOAD_28869, proxy_sel_STORE_28869, proxy_out1_28870, proxy_in1_28870, proxy_in2_28870, proxy_in3_28870, proxy_sel_LOAD_28870, proxy_sel_STORE_28870, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE, fuselector_BMEMORY_CTRLN_126_i0_LOAD, fuselector_BMEMORY_CTRLN_126_i0_STORE, selector_MUX_153_reg_15_0_0_0, selector_MUX_154_reg_16_0_0_0, selector_MUX_155_reg_17_0_0_0, selector_MUX_155_reg_17_0_0_1, selector_MUX_160_reg_21_0_0_0, selector_MUX_168_reg_29_0_0_0, selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0, selector_MUX_170_reg_30_0_0_0, selector_MUX_171_reg_31_0_0_0, selector_MUX_183_reg_42_0_0_0, selector_MUX_184_reg_43_0_0_0, selector_MUX_185_reg_44_0_0_0, selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0, selector_MUX_200_reg_58_0_0_0, selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0, selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1, selector_MUX_25_BMEMORY_CTRLN_126_i0_1_0_0, selector_MUX_49_PROXY_CTRLN_7_i0_0_0_0, selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0, selector_MUX_50_PROXY_CTRLN_7_i0_1_0_0, selector_MUX_53_PROXY_CTRLN_8_i0_0_0_0, selector_MUX_53_PROXY_CTRLN_8_i0_0_0_1, selector_MUX_54_PROXY_CTRLN_8_i0_1_0_0, selector_MUX_54_PROXY_CTRLN_8_i0_1_0_1, selector_MUX_54_PROXY_CTRLN_8_i0_1_0_2, selector_MUX_54_PROXY_CTRLN_8_i0_1_1_0, selector_MUX_57_PROXY_CTRLN_8_i1_0_0_0, selector_MUX_58_PROXY_CTRLN_8_i1_1_0_0, selector_MUX_58_PROXY_CTRLN_8_i1_1_0_1, selector_MUX_62_PROXY_CTRLN_9_i0_1_0_0, selector_MUX_62_PROXY_CTRLN_9_i0_1_0_1, fuselector_PROXY_CTRLN_6_i0_LOAD, fuselector_PROXY_CTRLN_6_i0_STORE, fuselector_PROXY_CTRLN_7_i0_LOAD, fuselector_PROXY_CTRLN_7_i0_STORE, fuselector_PROXY_CTRLN_8_i0_LOAD, fuselector_PROXY_CTRLN_8_i0_STORE, fuselector_PROXY_CTRLN_8_i1_LOAD, fuselector_PROXY_CTRLN_8_i1_STORE, fuselector_PROXY_CTRLN_9_i0_LOAD, fuselector_PROXY_CTRLN_9_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_29, wrenable_reg_3, wrenable_reg_30, wrenable_reg_31, wrenable_reg_32, wrenable_reg_33, wrenable_reg_34, wrenable_reg_35, wrenable_reg_36, wrenable_reg_37, wrenable_reg_38, wrenable_reg_39, wrenable_reg_4, wrenable_reg_40, wrenable_reg_41, wrenable_reg_42, wrenable_reg_43, wrenable_reg_44, wrenable_reg_45, wrenable_reg_46, wrenable_reg_47, wrenable_reg_48, wrenable_reg_49, wrenable_reg_5, wrenable_reg_50, wrenable_reg_51, wrenable_reg_52, wrenable_reg_53, wrenable_reg_54, wrenable_reg_55, wrenable_reg_56, wrenable_reg_57, wrenable_reg_58, wrenable_reg_59, wrenable_reg_6, wrenable_reg_60, wrenable_reg_61, wrenable_reg_62, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_kruskalF_28880_29558, OUT_CONDITION_kruskalF_28880_29786, OUT_CONDITION_kruskalF_28880_29801, OUT_CONDITION_kruskalF_28880_29807, OUT_CONDITION_kruskalF_28880_29812, OUT_MULTIIF_kruskalF_28880_30583, OUT_MULTIIF_kruskalF_28880_30590);
  parameter MEM_var_28859_28880=160, MEM_var_28861_28880=192, MEM_var_28862_28880=224, MEM_var_28864_28880=256, MEM_var_28865_28880=288, MEM_var_28866_28880=320, MEM_var_28867_28882=32, MEM_var_28868_28882=64, MEM_var_28869_28882=96, MEM_var_28870_28882=128;
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
  input [15:0] proxy_out1_28867;
  input [15:0] proxy_out1_28868;
  input [15:0] proxy_out1_28869;
  input [15:0] proxy_out1_28870;
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
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE;
  input fuselector_BMEMORY_CTRLN_126_i0_LOAD;
  input fuselector_BMEMORY_CTRLN_126_i0_STORE;
  input selector_MUX_153_reg_15_0_0_0;
  input selector_MUX_154_reg_16_0_0_0;
  input selector_MUX_155_reg_17_0_0_0;
  input selector_MUX_155_reg_17_0_0_1;
  input selector_MUX_160_reg_21_0_0_0;
  input selector_MUX_168_reg_29_0_0_0;
  input selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0;
  input selector_MUX_170_reg_30_0_0_0;
  input selector_MUX_171_reg_31_0_0_0;
  input selector_MUX_183_reg_42_0_0_0;
  input selector_MUX_184_reg_43_0_0_0;
  input selector_MUX_185_reg_44_0_0_0;
  input selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0;
  input selector_MUX_200_reg_58_0_0_0;
  input selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0;
  input selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1;
  input selector_MUX_25_BMEMORY_CTRLN_126_i0_1_0_0;
  input selector_MUX_49_PROXY_CTRLN_7_i0_0_0_0;
  input selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0;
  input selector_MUX_50_PROXY_CTRLN_7_i0_1_0_0;
  input selector_MUX_53_PROXY_CTRLN_8_i0_0_0_0;
  input selector_MUX_53_PROXY_CTRLN_8_i0_0_0_1;
  input selector_MUX_54_PROXY_CTRLN_8_i0_1_0_0;
  input selector_MUX_54_PROXY_CTRLN_8_i0_1_0_1;
  input selector_MUX_54_PROXY_CTRLN_8_i0_1_0_2;
  input selector_MUX_54_PROXY_CTRLN_8_i0_1_1_0;
  input selector_MUX_57_PROXY_CTRLN_8_i1_0_0_0;
  input selector_MUX_58_PROXY_CTRLN_8_i1_1_0_0;
  input selector_MUX_58_PROXY_CTRLN_8_i1_1_0_1;
  input selector_MUX_62_PROXY_CTRLN_9_i0_1_0_0;
  input selector_MUX_62_PROXY_CTRLN_9_i0_1_0_1;
  input fuselector_PROXY_CTRLN_6_i0_LOAD;
  input fuselector_PROXY_CTRLN_6_i0_STORE;
  input fuselector_PROXY_CTRLN_7_i0_LOAD;
  input fuselector_PROXY_CTRLN_7_i0_STORE;
  input fuselector_PROXY_CTRLN_8_i0_LOAD;
  input fuselector_PROXY_CTRLN_8_i0_STORE;
  input fuselector_PROXY_CTRLN_8_i1_LOAD;
  input fuselector_PROXY_CTRLN_8_i1_STORE;
  input fuselector_PROXY_CTRLN_9_i0_LOAD;
  input fuselector_PROXY_CTRLN_9_i0_STORE;
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
  input wrenable_reg_54;
  input wrenable_reg_55;
  input wrenable_reg_56;
  input wrenable_reg_57;
  input wrenable_reg_58;
  input wrenable_reg_59;
  input wrenable_reg_6;
  input wrenable_reg_60;
  input wrenable_reg_61;
  input wrenable_reg_62;
  input wrenable_reg_7;
  input wrenable_reg_8;
  input wrenable_reg_9;
  // OUT
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [15:0] proxy_in1_28867;
  output [17:0] proxy_in2_28867;
  output [7:0] proxy_in3_28867;
  output [1:0] proxy_sel_LOAD_28867;
  output [1:0] proxy_sel_STORE_28867;
  output [15:0] proxy_in1_28868;
  output [17:0] proxy_in2_28868;
  output [7:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [15:0] proxy_in1_28869;
  output [17:0] proxy_in2_28869;
  output [7:0] proxy_in3_28869;
  output [1:0] proxy_sel_LOAD_28869;
  output [1:0] proxy_sel_STORE_28869;
  output [15:0] proxy_in1_28870;
  output [17:0] proxy_in2_28870;
  output [7:0] proxy_in3_28870;
  output [1:0] proxy_sel_LOAD_28870;
  output [1:0] proxy_sel_STORE_28870;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [17:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  output OUT_CONDITION_kruskalF_28880_29558;
  output OUT_CONDITION_kruskalF_28880_29786;
  output OUT_CONDITION_kruskalF_28880_29801;
  output OUT_CONDITION_kruskalF_28880_29807;
  output OUT_CONDITION_kruskalF_28880_29812;
  output [1:0] OUT_MULTIIF_kruskalF_28880_30583;
  output [1:0] OUT_MULTIIF_kruskalF_28880_30590;
  // Component and signal declarations
  wire null_out_signal_BMEMORY_CTRLN_126_i0_out1_0;
  wire null_out_signal_BMEMORY_CTRLN_126_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_6_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_6_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_7_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_9_i0_out1_1;
  wire [7:0] null_out_signal_array_28859_0_out1_1;
  wire [7:0] null_out_signal_array_28859_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_28859_0_proxy_out1_1;
  wire [7:0] null_out_signal_array_28861_0_out1_1;
  wire [7:0] null_out_signal_array_28861_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_28861_0_proxy_out1_1;
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
  wire [7:0] null_out_signal_array_28866_0_out1_0;
  wire [7:0] null_out_signal_array_28866_0_out1_1;
  wire [7:0] null_out_signal_array_28866_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_28866_0_proxy_out1_1;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_array_28859_0;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_array_28861_0;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_array_28862_0;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28864_0;
  wire signed [7:0] out_IIdata_converter_FU_105_i0_fu_kruskalF_28880_29800;
  wire signed [7:0] out_IIdata_converter_FU_124_i0_fu_kruskalF_28880_29811;
  wire [7:0] out_IUdata_converter_FU_114_i0_fu_kruskalF_28880_30278;
  wire [1:0] out_IUdata_converter_FU_32_i0_fu_kruskalF_28880_29947;
  wire [7:0] out_IUdata_converter_FU_38_i0_fu_kruskalF_28880_29927;
  wire [1:0] out_IUdata_converter_FU_66_i0_fu_kruskalF_28880_30085;
  wire [7:0] out_IUdata_converter_FU_83_i0_fu_kruskalF_28880_30072;
  wire [7:0] out_IUdata_converter_FU_87_i0_fu_kruskalF_28880_30174;
  wire [7:0] out_IUdata_converter_FU_89_i0_fu_kruskalF_28880_30135;
  wire [7:0] out_IUdata_converter_FU_91_i0_fu_kruskalF_28880_29754;
  wire [7:0] out_MUX_153_reg_15_0_0_0;
  wire [7:0] out_MUX_154_reg_16_0_0_0;
  wire [2:0] out_MUX_155_reg_17_0_0_0;
  wire [2:0] out_MUX_155_reg_17_0_0_1;
  wire [7:0] out_MUX_160_reg_21_0_0_0;
  wire [7:0] out_MUX_168_reg_29_0_0_0;
  wire [7:0] out_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0;
  wire [7:0] out_MUX_170_reg_30_0_0_0;
  wire [1:0] out_MUX_171_reg_31_0_0_0;
  wire [7:0] out_MUX_183_reg_42_0_0_0;
  wire [7:0] out_MUX_184_reg_43_0_0_0;
  wire [7:0] out_MUX_185_reg_44_0_0_0;
  wire [8:0] out_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0;
  wire [31:0] out_MUX_200_reg_58_0_0_0;
  wire [7:0] out_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0;
  wire [7:0] out_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1;
  wire [8:0] out_MUX_25_BMEMORY_CTRLN_126_i0_1_0_0;
  wire [7:0] out_MUX_49_PROXY_CTRLN_7_i0_0_0_0;
  wire [7:0] out_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0;
  wire [8:0] out_MUX_50_PROXY_CTRLN_7_i0_1_0_0;
  wire [7:0] out_MUX_53_PROXY_CTRLN_8_i0_0_0_0;
  wire [7:0] out_MUX_53_PROXY_CTRLN_8_i0_0_0_1;
  wire [8:0] out_MUX_54_PROXY_CTRLN_8_i0_1_0_0;
  wire [8:0] out_MUX_54_PROXY_CTRLN_8_i0_1_0_1;
  wire [8:0] out_MUX_54_PROXY_CTRLN_8_i0_1_0_2;
  wire [8:0] out_MUX_54_PROXY_CTRLN_8_i0_1_1_0;
  wire [7:0] out_MUX_57_PROXY_CTRLN_8_i1_0_0_0;
  wire [8:0] out_MUX_58_PROXY_CTRLN_8_i1_1_0_0;
  wire [8:0] out_MUX_58_PROXY_CTRLN_8_i1_1_0_1;
  wire [8:0] out_MUX_62_PROXY_CTRLN_9_i0_1_0_0;
  wire [8:0] out_MUX_62_PROXY_CTRLN_9_i0_1_0_1;
  wire [7:0] out_PROXY_CTRLN_7_i0_PROXY_CTRLN_7_i0;
  wire [7:0] out_PROXY_CTRLN_8_i0_PROXY_CTRLN_8_i0;
  wire [7:0] out_PROXY_CTRLN_8_i1_PROXY_CTRLN_8_i0;
  wire [7:0] out_PROXY_CTRLN_9_i0_PROXY_CTRLN_9_i0;
  wire signed [8:0] out_UIdata_converter_FU_112_i0_fu_kruskalF_28880_29694;
  wire signed [8:0] out_UIdata_converter_FU_123_i0_fu_kruskalF_28880_29809;
  wire signed [2:0] out_UIdata_converter_FU_31_i0_fu_kruskalF_28880_29496;
  wire signed [8:0] out_UIdata_converter_FU_36_i0_fu_kruskalF_28880_29513;
  wire signed [2:0] out_UIdata_converter_FU_65_i0_fu_kruskalF_28880_29721;
  wire signed [8:0] out_UIdata_converter_FU_81_i0_fu_kruskalF_28880_29730;
  wire signed [8:0] out_UIdata_converter_FU_85_i0_fu_kruskalF_28880_29615;
  wire signed [8:0] out_UIdata_converter_FU_86_i0_fu_kruskalF_28880_29711;
  wire signed [8:0] out_UIdata_converter_FU_92_i0_fu_kruskalF_28880_29790;
  wire [6:0] out_UUdata_converter_FU_104_i0_fu_kruskalF_28880_29599;
  wire [9:0] out_UUdata_converter_FU_110_i0_fu_kruskalF_28880_30253;
  wire [7:0] out_UUdata_converter_FU_111_i0_fu_kruskalF_28880_29689;
  wire [9:0] out_UUdata_converter_FU_113_i0_fu_kruskalF_28880_30275;
  wire [9:0] out_UUdata_converter_FU_15_i0_fu_kruskalF_28880_29944;
  wire [6:0] out_UUdata_converter_FU_18_i0_fu_kruskalF_28880_29979;
  wire [31:0] out_UUdata_converter_FU_25_i0_fu_kruskalF_28880_29607;
  wire [31:0] out_UUdata_converter_FU_26_i0_fu_kruskalF_28880_29791;
  wire [1:0] out_UUdata_converter_FU_30_i0_fu_kruskalF_28880_29495;
  wire [8:0] out_UUdata_converter_FU_37_i0_fu_kruskalF_28880_29924;
  wire [1:0] out_UUdata_converter_FU_64_i0_fu_kruskalF_28880_29743;
  wire [8:0] out_UUdata_converter_FU_82_i0_fu_kruskalF_28880_30069;
  wire [8:0] out_UUdata_converter_FU_88_i0_fu_kruskalF_28880_30132;
  wire [7:0] out_UUdata_converter_FU_90_i0_fu_kruskalF_28880_29709;
  wire [6:0] out_addr_expr_FU_12_i0_fu_kruskalF_28880_29913;
  wire [7:0] out_addr_expr_FU_13_i0_fu_kruskalF_28880_29919;
  wire [9:0] out_addr_expr_FU_14_i0_fu_kruskalF_28880_29965;
  wire [5:0] out_addr_expr_FU_16_i0_fu_kruskalF_28880_29975;
  wire [6:0] out_addr_expr_FU_17_i0_fu_kruskalF_28880_30037;
  wire [7:0] out_addr_expr_FU_19_i0_fu_kruskalF_28880_30053;
  wire [8:0] out_addr_expr_FU_20_i0_fu_kruskalF_28880_30061;
  wire [7:0] out_addr_expr_FU_21_i0_fu_kruskalF_28880_30065;
  wire [8:0] out_addr_expr_FU_22_i0_fu_kruskalF_28880_30104;
  wire [8:0] out_addr_expr_FU_23_i0_fu_kruskalF_28880_30120;
  wire [31:0] out_addr_expr_FU_24_i0_fu_kruskalF_28880_30208;
  wire signed [7:0] out_cond_expr_FU_8_8_8_8_127_i0_fu_kruskalF_28880_29502;
  wire signed [7:0] out_cond_expr_FU_8_8_8_8_127_i1_fu_kruskalF_28880_29532;
  wire signed [7:0] out_cond_expr_FU_8_8_8_8_127_i2_fu_kruskalF_28880_29663;
  wire signed [7:0] out_cond_expr_FU_8_8_8_8_127_i3_fu_kruskalF_28880_29734;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [1:0] out_const_10;
  wire [2:0] out_const_11;
  wire [1:0] out_const_12;
  wire [7:0] out_const_13;
  wire [7:0] out_const_14;
  wire [7:0] out_const_15;
  wire [7:0] out_const_16;
  wire [7:0] out_const_17;
  wire [8:0] out_const_18;
  wire [8:0] out_const_19;
  wire [7:0] out_const_2;
  wire [5:0] out_const_20;
  wire [8:0] out_const_21;
  wire [6:0] out_const_22;
  wire [6:0] out_const_23;
  wire [7:0] out_const_3;
  wire [7:0] out_const_4;
  wire [7:0] out_const_5;
  wire [1:0] out_const_6;
  wire [4:0] out_const_7;
  wire [7:0] out_const_8;
  wire out_const_9;
  wire [8:0] out_conv_out_UUdata_converter_FU_104_i0_fu_kruskalF_28880_29599_7_9;
  wire [8:0] out_conv_out_addr_expr_FU_12_i0_fu_kruskalF_28880_29913_7_9;
  wire [8:0] out_conv_out_addr_expr_FU_13_i0_fu_kruskalF_28880_29919_8_9;
  wire [31:0] out_conv_out_const_14_8_32;
  wire [31:0] out_conv_out_const_15_8_32;
  wire [31:0] out_conv_out_const_16_8_32;
  wire [31:0] out_conv_out_const_17_8_32;
  wire [31:0] out_conv_out_const_18_9_32;
  wire [31:0] out_conv_out_const_19_9_32;
  wire [31:0] out_conv_out_const_20_6_32;
  wire [31:0] out_conv_out_const_21_9_32;
  wire [31:0] out_conv_out_const_22_7_32;
  wire [31:0] out_conv_out_const_23_7_32;
  wire [3:0] out_conv_out_const_7_5_4;
  wire [8:0] out_conv_out_reg_10_reg_10_8_9;
  wire [8:0] out_conv_out_reg_12_reg_12_8_9;
  wire [1:0] out_conv_out_reg_17_reg_17_3_2;
  wire [8:0] out_conv_out_reg_22_reg_22_8_9;
  wire [8:0] out_conv_out_reg_2_reg_2_7_9;
  wire [8:0] out_conv_out_reg_36_reg_36_8_9;
  wire [8:0] out_conv_out_reg_3_reg_3_8_9;
  wire [8:0] out_conv_out_reg_48_reg_48_7_9;
  wire [8:0] out_conv_out_reg_49_reg_49_7_9;
  wire [8:0] out_conv_out_reg_57_reg_57_7_9;
  wire [8:0] out_conv_out_reg_5_reg_5_6_9;
  wire [8:0] out_conv_out_reg_6_reg_6_7_9;
  wire [8:0] out_conv_out_reg_7_reg_7_7_9;
  wire [8:0] out_conv_out_reg_8_reg_8_7_9;
  wire [8:0] out_conv_out_reg_9_reg_9_7_9;
  wire [1:0] out_conv_out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_11_1_2;
  wire [7:0] out_conv_out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_12_2_8;
  wire [2:0] out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_10_1_3;
  wire [7:0] out_conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_14_2_8;
  wire [8:0] out_conv_out_ui_pointer_plus_expr_FU_8_8_8_155_i2_fu_kruskalF_28880_30141_8_9;
  wire out_eq_expr_FU_16_16_16_128_i0_fu_kruskalF_28880_30472;
  wire out_gt_expr_FU_8_0_8_129_i0_fu_kruskalF_28880_30464;
  wire [7:0] out_iu_conv_conn_obj_10_IUdata_converter_FU_iu_conv_0;
  wire [7:0] out_iu_conv_conn_obj_14_IUdata_converter_FU_iu_conv_1;
  wire [7:0] out_iu_conv_conn_obj_17_IUdata_converter_FU_iu_conv_2;
  wire [7:0] out_iu_conv_conn_obj_19_IUdata_converter_FU_iu_conv_3;
  wire [7:0] out_iu_conv_conn_obj_20_IUdata_converter_FU_iu_conv_4;
  wire [7:0] out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_5;
  wire [7:0] out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_6;
  wire [7:0] out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_7;
  wire [7:0] out_iu_conv_conn_obj_8_IUdata_converter_FU_iu_conv_8;
  wire [7:0] out_iu_conv_conn_obj_9_IUdata_converter_FU_iu_conv_9;
  wire out_le_expr_FU_8_8_8_130_i0_fu_kruskalF_28880_29641;
  wire out_lt_expr_FU_16_16_16_131_i0_fu_kruskalF_28880_30476;
  wire [1:0] out_multi_read_cond_FU_39_i0_fu_kruskalF_28880_30583;
  wire [1:0] out_multi_read_cond_FU_84_i0_fu_kruskalF_28880_30590;
  wire out_ne_expr_FU_8_0_8_132_i0_fu_kruskalF_28880_29736;
  wire out_ne_expr_FU_8_0_8_132_i1_fu_kruskalF_28880_29937;
  wire out_ne_expr_FU_8_8_8_133_i0_fu_kruskalF_28880_30470;
  wire signed [7:0] out_plus_expr_FU_8_0_8_134_i0_fu_kruskalF_28880_29523;
  wire out_read_cond_FU_106_i0_fu_kruskalF_28880_29801;
  wire out_read_cond_FU_108_i0_fu_kruskalF_28880_29807;
  wire out_read_cond_FU_125_i0_fu_kruskalF_28880_29812;
  wire out_read_cond_FU_40_i0_fu_kruskalF_28880_29558;
  wire out_read_cond_FU_93_i0_fu_kruskalF_28880_29786;
  wire [31:0] out_reg_0_reg_0;
  wire [7:0] out_reg_10_reg_10;
  wire [8:0] out_reg_11_reg_11;
  wire [7:0] out_reg_12_reg_12;
  wire [8:0] out_reg_13_reg_13;
  wire [8:0] out_reg_14_reg_14;
  wire [7:0] out_reg_15_reg_15;
  wire [7:0] out_reg_16_reg_16;
  wire [2:0] out_reg_17_reg_17;
  wire [3:0] out_reg_18_reg_18;
  wire out_reg_19_reg_19;
  wire [31:0] out_reg_1_reg_1;
  wire [7:0] out_reg_20_reg_20;
  wire [7:0] out_reg_21_reg_21;
  wire [7:0] out_reg_22_reg_22;
  wire out_reg_23_reg_23;
  wire out_reg_24_reg_24;
  wire out_reg_25_reg_25;
  wire out_reg_26_reg_26;
  wire [7:0] out_reg_27_reg_27;
  wire [7:0] out_reg_28_reg_28;
  wire [7:0] out_reg_29_reg_29;
  wire [6:0] out_reg_2_reg_2;
  wire [7:0] out_reg_30_reg_30;
  wire [1:0] out_reg_31_reg_31;
  wire [1:0] out_reg_32_reg_32;
  wire [3:0] out_reg_33_reg_33;
  wire out_reg_34_reg_34;
  wire [7:0] out_reg_35_reg_35;
  wire [7:0] out_reg_36_reg_36;
  wire out_reg_37_reg_37;
  wire out_reg_38_reg_38;
  wire out_reg_39_reg_39;
  wire [7:0] out_reg_3_reg_3;
  wire out_reg_40_reg_40;
  wire [7:0] out_reg_41_reg_41;
  wire [7:0] out_reg_42_reg_42;
  wire [7:0] out_reg_43_reg_43;
  wire [7:0] out_reg_44_reg_44;
  wire [9:0] out_reg_45_reg_45;
  wire [8:0] out_reg_46_reg_46;
  wire [7:0] out_reg_47_reg_47;
  wire [6:0] out_reg_48_reg_48;
  wire [6:0] out_reg_49_reg_49;
  wire [9:0] out_reg_4_reg_4;
  wire [7:0] out_reg_50_reg_50;
  wire [8:0] out_reg_51_reg_51;
  wire out_reg_52_reg_52;
  wire [8:0] out_reg_53_reg_53;
  wire [9:0] out_reg_54_reg_54;
  wire [7:0] out_reg_55_reg_55;
  wire [8:0] out_reg_56_reg_56;
  wire [6:0] out_reg_57_reg_57;
  wire [31:0] out_reg_58_reg_58;
  wire [7:0] out_reg_59_reg_59;
  wire [5:0] out_reg_5_reg_5;
  wire [7:0] out_reg_60_reg_60;
  wire [7:0] out_reg_61_reg_61;
  wire [7:0] out_reg_62_reg_62;
  wire [6:0] out_reg_6_reg_6;
  wire [6:0] out_reg_7_reg_7;
  wire [6:0] out_reg_8_reg_8;
  wire [6:0] out_reg_9_reg_9;
  wire out_truth_and_expr_FU_1_1_1_135_i0_fu_kruskalF_28880_30589;
  wire out_truth_and_expr_FU_1_1_1_135_i1_fu_kruskalF_28880_30596;
  wire out_truth_not_expr_FU_1_1_136_i0_fu_kruskalF_28880_30586;
  wire out_truth_not_expr_FU_1_1_136_i1_fu_kruskalF_28880_30593;
  wire [0:0] out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_11;
  wire [1:0] out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_12;
  wire [0:0] out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_10;
  wire [2:0] out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_13;
  wire [1:0] out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_14;
  wire [0:0] out_ui_bit_and_expr_FU_1_1_1_137_i0_fu_kruskalF_28880_29637;
  wire [7:0] out_ui_cond_expr_FU_8_8_8_8_138_i0_fu_kruskalF_28880_29632;
  wire [7:0] out_ui_cond_expr_FU_8_8_8_8_138_i1_fu_kruskalF_28880_29767;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_139_i0_fu_kruskalF_28880_29682;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_139_i1_fu_kruskalF_28880_29706;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_140_i0_fu_kruskalF_28880_30177;
  wire [3:0] out_ui_lshift_expr_FU_8_0_8_141_i0_fu_kruskalF_28880_29951;
  wire [3:0] out_ui_lshift_expr_FU_8_0_8_141_i1_fu_kruskalF_28880_30088;
  wire out_ui_ne_expr_FU_32_32_32_142_i0_fu_kruskalF_28880_30474;
  wire out_ui_ne_expr_FU_8_0_8_143_i0_fu_kruskalF_28880_30460;
  wire out_ui_ne_expr_FU_8_0_8_143_i1_fu_kruskalF_28880_30468;
  wire out_ui_ne_expr_FU_8_0_8_144_i0_fu_kruskalF_28880_30462;
  wire out_ui_ne_expr_FU_8_0_8_145_i0_fu_kruskalF_28880_30466;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_146_i0_fu_kruskalF_28880_29610;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_147_i0_fu_kruskalF_28880_29521;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_147_i1_fu_kruskalF_28880_29745;
  wire [2:0] out_ui_plus_expr_FU_8_0_8_148_i0_fu_kruskalF_28880_29541;
  wire [1:0] out_ui_plus_expr_FU_8_0_8_148_i1_fu_kruskalF_28880_29728;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_149_i0_fu_kruskalF_28880_29777;
  wire [9:0] out_ui_pointer_plus_expr_FU_16_16_16_150_i0_fu_kruskalF_28880_29676;
  wire [9:0] out_ui_pointer_plus_expr_FU_16_16_16_150_i1_fu_kruskalF_28880_29703;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_0_32_151_i0_fu_kruskalF_28880_30216;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_0_8_152_i0_fu_kruskalF_28880_30001;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_0_8_153_i0_fu_kruskalF_28880_30014;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_0_8_154_i0_fu_kruskalF_28880_30027;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_155_i0_fu_kruskalF_28880_29934;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_155_i1_fu_kruskalF_28880_30078;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_155_i2_fu_kruskalF_28880_30141;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_8_8_155_i3_fu_kruskalF_28880_30154;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_8_8_155_i4_fu_kruskalF_28880_30167;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_155_i5_fu_kruskalF_28880_30180;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_155_i6_fu_kruskalF_28880_30262;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_155_i7_fu_kruskalF_28880_30284;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_155_i8_ui_pointer_plus_expr_FU_8_8_8_155_i8;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_155_i9_fu_kruskalF_28880_30091;
  wire [7:0] out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_15;
  wire [7:0] out_vb_assign_conn_obj_13_ASSIGN_VECTOR_BOOL_FU_vb_assign_16;
  wire [7:0] out_vb_assign_conn_obj_15_ASSIGN_VECTOR_BOOL_FU_vb_assign_17;
  wire [7:0] out_vb_assign_conn_obj_16_ASSIGN_VECTOR_BOOL_FU_vb_assign_18;
  wire [7:0] out_vb_assign_conn_obj_18_ASSIGN_VECTOR_BOOL_FU_vb_assign_19;
  wire [7:0] out_vb_assign_conn_obj_21_ASSIGN_VECTOR_BOOL_FU_vb_assign_20;
  wire [7:0] out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_21;
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
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_5;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_0;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_1;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_2;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_3;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_4;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram6_5;
  wire [15:0] sig_in_bus_mergerproxy_in1_288677_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288688_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288699_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_2887010_0;
  wire [17:0] sig_in_bus_mergerproxy_in2_2886711_0;
  wire [17:0] sig_in_bus_mergerproxy_in2_2886812_0;
  wire [17:0] sig_in_bus_mergerproxy_in2_2886913_0;
  wire [17:0] sig_in_bus_mergerproxy_in2_2887014_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_2886715_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_2886816_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_2886917_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_2887018_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886719_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886820_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886921_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2887022_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886723_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886824_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886925_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2887026_0;
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
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_5;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_0;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_1;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_2;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_3;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_4;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram6_5;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288677_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288688_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288699_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_2887010_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in2_2886711_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in2_2886812_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in2_2886913_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in2_2887014_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_2886715_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_2886816_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_2886917_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_2887018_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886719_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886820_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886921_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2887022_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886723_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886824_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886925_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2887026_0;
  wire [15:0] sig_out_bus_mergerMout_Wdata_ram0_;
  wire [17:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [7:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire [1:0] sig_out_bus_mergerMout_oe_ram3_;
  wire [1:0] sig_out_bus_mergerMout_we_ram4_;
  wire [1:0] sig_out_bus_mergerSout_DataRdy5_;
  wire [15:0] sig_out_bus_mergerSout_Rdata_ram6_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288677_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288688_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288699_;
  wire [15:0] sig_out_bus_mergerproxy_in1_2887010_;
  wire [17:0] sig_out_bus_mergerproxy_in2_2886711_;
  wire [17:0] sig_out_bus_mergerproxy_in2_2886812_;
  wire [17:0] sig_out_bus_mergerproxy_in2_2886913_;
  wire [17:0] sig_out_bus_mergerproxy_in2_2887014_;
  wire [7:0] sig_out_bus_mergerproxy_in3_2886715_;
  wire [7:0] sig_out_bus_mergerproxy_in3_2886816_;
  wire [7:0] sig_out_bus_mergerproxy_in3_2886917_;
  wire [7:0] sig_out_bus_mergerproxy_in3_2887018_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886719_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886820_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886921_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2887022_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886723_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886824_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886925_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2887026_;
  
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_10 (.out1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_10), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_11 (.out1(out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_11), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) ASSIGN_UNSIGNED_FU_u_assign_12 (.out1(out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_12), .in1(out_UUdata_converter_FU_64_i0_fu_kruskalF_28880_29743));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(3), .BITSIZE_out1(3)) ASSIGN_UNSIGNED_FU_u_assign_13 (.out1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_13), .in1(out_reg_17_reg_17));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) ASSIGN_UNSIGNED_FU_u_assign_14 (.out1(out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_14), .in1(out_UUdata_converter_FU_30_i0_fu_kruskalF_28880_29495));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_15 (.out1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_15), .in1(out_const_1));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_16 (.out1(out_vb_assign_conn_obj_13_ASSIGN_VECTOR_BOOL_FU_vb_assign_16), .in1(out_const_4));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_17 (.out1(out_vb_assign_conn_obj_15_ASSIGN_VECTOR_BOOL_FU_vb_assign_17), .in1(out_reg_44_reg_44));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_18 (.out1(out_vb_assign_conn_obj_16_ASSIGN_VECTOR_BOOL_FU_vb_assign_18), .in1(out_reg_42_reg_42));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_19 (.out1(out_vb_assign_conn_obj_18_ASSIGN_VECTOR_BOOL_FU_vb_assign_19), .in1(out_reg_50_reg_50));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_20 (.out1(out_vb_assign_conn_obj_21_ASSIGN_VECTOR_BOOL_FU_vb_assign_20), .in1(out_reg_61_reg_61));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_21 (.out1(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_21), .in1(out_const_5));
  BMEMORY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(1), .PORTSIZE_out1(2), .BITSIZE_Min_oe_ram(1), .PORTSIZE_Min_oe_ram(2), .BITSIZE_Min_we_ram(1), .PORTSIZE_Min_we_ram(2), .BITSIZE_Mout_oe_ram(1), .PORTSIZE_Mout_oe_ram(2), .BITSIZE_Mout_we_ram(1), .PORTSIZE_Mout_we_ram(2), .BITSIZE_M_DataRdy(1), .PORTSIZE_M_DataRdy(2), .BITSIZE_Min_addr_ram(9), .PORTSIZE_Min_addr_ram(2), .BITSIZE_Mout_addr_ram(9), .PORTSIZE_Mout_addr_ram(2), .BITSIZE_M_Rdata_ram(8), .PORTSIZE_M_Rdata_ram(2), .BITSIZE_Min_Wdata_ram(8), .PORTSIZE_Min_Wdata_ram(2), .BITSIZE_Mout_Wdata_ram(8), .PORTSIZE_Mout_Wdata_ram(2), .BITSIZE_Min_data_ram_size(4), .PORTSIZE_Min_data_ram_size(2), .BITSIZE_Mout_data_ram_size(4), .PORTSIZE_Mout_data_ram_size(2)) BMEMORY_CTRLN_126_i0 (.out1({null_out_signal_BMEMORY_CTRLN_126_i0_out1_1, null_out_signal_BMEMORY_CTRLN_126_i0_out1_0}), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .in1({8'b00000000, out_iu_conv_conn_obj_20_IUdata_converter_FU_iu_conv_4}), .in2({9'b000000000, out_MUX_25_BMEMORY_CTRLN_126_i0_1_0_0}), .in3({4'b0000, out_conv_out_const_7_5_4}), .in4({1'b0, out_const_9}), .sel_LOAD({1'b0, fuselector_BMEMORY_CTRLN_126_i0_LOAD}), .sel_STORE({1'b0, fuselector_BMEMORY_CTRLN_126_i0_STORE}), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .M_Rdata_ram(M_Rdata_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .M_DataRdy(M_DataRdy));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_0 (.out1(out_iu_conv_conn_obj_10_IUdata_converter_FU_iu_conv_0), .in1(out_const_8));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_14_IUdata_converter_FU_iu_conv_1), .in1(out_reg_43_reg_43));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_2 (.out1(out_iu_conv_conn_obj_17_IUdata_converter_FU_iu_conv_2), .in1(out_const_13));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_3 (.out1(out_iu_conv_conn_obj_19_IUdata_converter_FU_iu_conv_3), .in1(out_reg_60_reg_60));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_4 (.out1(out_iu_conv_conn_obj_20_IUdata_converter_FU_iu_conv_4), .in1(out_const_13));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_5 (.out1(out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_5), .in1(out_reg_16_reg_16));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_6 (.out1(out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_6), .in1(out_const_1));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_7 (.out1(out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_7), .in1(out_const_2));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_8 (.out1(out_iu_conv_conn_obj_8_IUdata_converter_FU_iu_conv_8), .in1(out_const_3));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_9 (.out1(out_iu_conv_conn_obj_9_IUdata_converter_FU_iu_conv_9), .in1(out_const_4));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_153_reg_15_0_0_0 (.out1(out_MUX_153_reg_15_0_0_0), .sel(selector_MUX_153_reg_15_0_0_0), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_array_28859_0), .in2(out_cond_expr_FU_8_8_8_8_127_i0_fu_kruskalF_28880_29502));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_154_reg_16_0_0_0 (.out1(out_MUX_154_reg_16_0_0_0), .sel(selector_MUX_154_reg_16_0_0_0), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_array_28859_0), .in2(out_cond_expr_FU_8_8_8_8_127_i1_fu_kruskalF_28880_29532));
  MUX_GATE #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(3)) MUX_155_reg_17_0_0_0 (.out1(out_MUX_155_reg_17_0_0_0), .sel(selector_MUX_155_reg_17_0_0_0), .in1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_10_1_3), .in2(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_13));
  MUX_GATE #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(3)) MUX_155_reg_17_0_0_1 (.out1(out_MUX_155_reg_17_0_0_1), .sel(selector_MUX_155_reg_17_0_0_1), .in1(out_ui_plus_expr_FU_8_0_8_148_i0_fu_kruskalF_28880_29541), .in2(out_MUX_155_reg_17_0_0_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_160_reg_21_0_0_0 (.out1(out_MUX_160_reg_21_0_0_0), .sel(selector_MUX_160_reg_21_0_0_0), .in1(out_conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_14_2_8), .in2(out_ui_plus_expr_FU_8_0_8_147_i0_fu_kruskalF_28880_29521));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_168_reg_29_0_0_0 (.out1(out_MUX_168_reg_29_0_0_0), .sel(selector_MUX_168_reg_29_0_0_0), .in1(out_reg_35_reg_35), .in2(out_conv_out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_12_2_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0 (.out1(out_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0), .sel(selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0), .in1(out_vb_assign_conn_obj_18_ASSIGN_VECTOR_BOOL_FU_vb_assign_19), .in2(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_21));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_170_reg_30_0_0_0 (.out1(out_MUX_170_reg_30_0_0_0), .sel(selector_MUX_170_reg_30_0_0_0), .in1(out_reg_43_reg_43), .in2(out_cond_expr_FU_8_8_8_8_127_i3_fu_kruskalF_28880_29734));
  MUX_GATE #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(2)) MUX_171_reg_31_0_0_0 (.out1(out_MUX_171_reg_31_0_0_0), .sel(selector_MUX_171_reg_31_0_0_0), .in1(out_conv_out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_11_1_2), .in2(out_ui_plus_expr_FU_8_0_8_148_i1_fu_kruskalF_28880_29728));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_183_reg_42_0_0_0 (.out1(out_MUX_183_reg_42_0_0_0), .sel(selector_MUX_183_reg_42_0_0_0), .in1(out_reg_27_reg_27), .in2(out_ui_cond_expr_FU_8_8_8_8_138_i0_fu_kruskalF_28880_29632));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_184_reg_43_0_0_0 (.out1(out_MUX_184_reg_43_0_0_0), .sel(selector_MUX_184_reg_43_0_0_0), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_array_28861_0), .in2(out_cond_expr_FU_8_8_8_8_127_i2_fu_kruskalF_28880_29663));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_185_reg_44_0_0_0 (.out1(out_MUX_185_reg_44_0_0_0), .sel(selector_MUX_185_reg_44_0_0_0), .in1(out_reg_28_reg_28), .in2(out_ui_cond_expr_FU_8_8_8_8_138_i1_fu_kruskalF_28880_29767));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 (.out1(out_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0), .sel(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0), .in1(out_conv_out_reg_3_reg_3_8_9), .in2(out_conv_out_addr_expr_FU_13_i0_fu_kruskalF_28880_29919_8_9));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_200_reg_58_0_0_0 (.out1(out_MUX_200_reg_58_0_0_0), .sel(selector_MUX_200_reg_58_0_0_0), .in1(out_reg_0_reg_0), .in2(out_ui_plus_expr_FU_32_0_32_146_i0_fu_kruskalF_28880_29610));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0 (.out1(out_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0), .sel(selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0), .in1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_15), .in2(out_vb_assign_conn_obj_13_ASSIGN_VECTOR_BOOL_FU_vb_assign_16));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1 (.out1(out_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1), .sel(selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1), .in1(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_21), .in2(out_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_25_BMEMORY_CTRLN_126_i0_1_0_0 (.out1(out_MUX_25_BMEMORY_CTRLN_126_i0_1_0_0), .sel(selector_MUX_25_BMEMORY_CTRLN_126_i0_1_0_0), .in1(out_reg_56_reg_56), .in2(out_reg_53_reg_53));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_49_PROXY_CTRLN_7_i0_0_0_0 (.out1(out_MUX_49_PROXY_CTRLN_7_i0_0_0_0), .sel(selector_MUX_49_PROXY_CTRLN_7_i0_0_0_0), .in1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_15), .in2(out_vb_assign_conn_obj_21_ASSIGN_VECTOR_BOOL_FU_vb_assign_20));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0 (.out1(out_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0), .sel(selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0), .in1(out_iu_conv_conn_obj_10_IUdata_converter_FU_iu_conv_0), .in2(out_iu_conv_conn_obj_14_IUdata_converter_FU_iu_conv_1));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_50_PROXY_CTRLN_7_i0_1_0_0 (.out1(out_MUX_50_PROXY_CTRLN_7_i0_1_0_0), .sel(selector_MUX_50_PROXY_CTRLN_7_i0_1_0_0), .in1(out_conv_out_reg_2_reg_2_7_9), .in2(out_conv_out_addr_expr_FU_12_i0_fu_kruskalF_28880_29913_7_9));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_53_PROXY_CTRLN_8_i0_0_0_0 (.out1(out_MUX_53_PROXY_CTRLN_8_i0_0_0_0), .sel(selector_MUX_53_PROXY_CTRLN_8_i0_0_0_0), .in1(out_iu_conv_conn_obj_19_IUdata_converter_FU_iu_conv_3), .in2(out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_7));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_53_PROXY_CTRLN_8_i0_0_0_1 (.out1(out_MUX_53_PROXY_CTRLN_8_i0_0_0_1), .sel(selector_MUX_53_PROXY_CTRLN_8_i0_0_0_1), .in1(out_iu_conv_conn_obj_9_IUdata_converter_FU_iu_conv_9), .in2(out_MUX_53_PROXY_CTRLN_8_i0_0_0_0));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_54_PROXY_CTRLN_8_i0_1_0_0 (.out1(out_MUX_54_PROXY_CTRLN_8_i0_1_0_0), .sel(selector_MUX_54_PROXY_CTRLN_8_i0_1_0_0), .in1(out_conv_out_reg_9_reg_9_7_9), .in2(out_conv_out_reg_7_reg_7_7_9));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_54_PROXY_CTRLN_8_i0_1_0_1 (.out1(out_MUX_54_PROXY_CTRLN_8_i0_1_0_1), .sel(selector_MUX_54_PROXY_CTRLN_8_i0_1_0_1), .in1(out_conv_out_reg_57_reg_57_7_9), .in2(out_conv_out_reg_48_reg_48_7_9));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_54_PROXY_CTRLN_8_i0_1_0_2 (.out1(out_MUX_54_PROXY_CTRLN_8_i0_1_0_2), .sel(selector_MUX_54_PROXY_CTRLN_8_i0_1_0_2), .in1(out_conv_out_UUdata_converter_FU_104_i0_fu_kruskalF_28880_29599_7_9), .in2(out_MUX_54_PROXY_CTRLN_8_i0_1_0_0));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_54_PROXY_CTRLN_8_i0_1_1_0 (.out1(out_MUX_54_PROXY_CTRLN_8_i0_1_1_0), .sel(selector_MUX_54_PROXY_CTRLN_8_i0_1_1_0), .in1(out_MUX_54_PROXY_CTRLN_8_i0_1_0_1), .in2(out_MUX_54_PROXY_CTRLN_8_i0_1_0_2));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_57_PROXY_CTRLN_8_i1_0_0_0 (.out1(out_MUX_57_PROXY_CTRLN_8_i1_0_0_0), .sel(selector_MUX_57_PROXY_CTRLN_8_i1_0_0_0), .in1(out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_6), .in2(out_iu_conv_conn_obj_8_IUdata_converter_FU_iu_conv_8));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_58_PROXY_CTRLN_8_i1_1_0_0 (.out1(out_MUX_58_PROXY_CTRLN_8_i1_1_0_0), .sel(selector_MUX_58_PROXY_CTRLN_8_i1_1_0_0), .in1(out_conv_out_reg_8_reg_8_7_9), .in2(out_conv_out_reg_6_reg_6_7_9));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_58_PROXY_CTRLN_8_i1_1_0_1 (.out1(out_MUX_58_PROXY_CTRLN_8_i1_1_0_1), .sel(selector_MUX_58_PROXY_CTRLN_8_i1_1_0_1), .in1(out_conv_out_reg_49_reg_49_7_9), .in2(out_MUX_58_PROXY_CTRLN_8_i1_1_0_0));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_62_PROXY_CTRLN_9_i0_1_0_0 (.out1(out_MUX_62_PROXY_CTRLN_9_i0_1_0_0), .sel(selector_MUX_62_PROXY_CTRLN_9_i0_1_0_0), .in1(out_conv_out_reg_36_reg_36_8_9), .in2(out_conv_out_reg_22_reg_22_8_9));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_62_PROXY_CTRLN_9_i0_1_0_1 (.out1(out_MUX_62_PROXY_CTRLN_9_i0_1_0_1), .sel(selector_MUX_62_PROXY_CTRLN_9_i0_1_0_1), .in1(out_conv_out_ui_pointer_plus_expr_FU_8_8_8_155_i2_fu_kruskalF_28880_30141_8_9), .in2(out_MUX_62_PROXY_CTRLN_9_i0_1_0_0));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_6_i0 (.out1({null_out_signal_PROXY_CTRLN_6_i0_out1_1, null_out_signal_PROXY_CTRLN_6_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288677_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2886711_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886715_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886719_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886723_0), .in1({8'b00000000, out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_21}), .in2({9'b000000000, out_conv_out_reg_5_reg_5_6_9}), .in3({4'b0000, out_conv_out_const_7_5_4}), .in4({1'b0, out_const_9}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_6_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_6_i0_STORE}), .proxy_out1(proxy_out1_28867));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_7_i0 (.out1({null_out_signal_PROXY_CTRLN_7_i0_out1_1, out_PROXY_CTRLN_7_i0_PROXY_CTRLN_7_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288688_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2886812_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886816_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886820_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886824_0), .in1({8'b00000000, out_MUX_49_PROXY_CTRLN_7_i0_0_0_0}), .in2({9'b000000000, out_MUX_50_PROXY_CTRLN_7_i0_1_0_0}), .in3({4'b0000, out_conv_out_const_7_5_4}), .in4({1'b0, out_const_9}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_7_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_7_i0_STORE}), .proxy_out1(proxy_out1_28868));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_8_i0 (.out1({out_PROXY_CTRLN_8_i1_PROXY_CTRLN_8_i0, out_PROXY_CTRLN_8_i0_PROXY_CTRLN_8_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288699_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2886913_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886917_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886921_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886925_0), .in1({out_MUX_57_PROXY_CTRLN_8_i1_0_0_0, out_MUX_53_PROXY_CTRLN_8_i0_0_0_1}), .in2({out_MUX_58_PROXY_CTRLN_8_i1_1_0_1, out_MUX_54_PROXY_CTRLN_8_i0_1_1_0}), .in3({out_conv_out_const_7_5_4, out_conv_out_const_7_5_4}), .in4({out_const_9, out_const_9}), .sel_LOAD({fuselector_PROXY_CTRLN_8_i1_LOAD, fuselector_PROXY_CTRLN_8_i0_LOAD}), .sel_STORE({fuselector_PROXY_CTRLN_8_i1_STORE, fuselector_PROXY_CTRLN_8_i0_STORE}), .proxy_out1(proxy_out1_28869));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_9_i0 (.out1({null_out_signal_PROXY_CTRLN_9_i0_out1_1, out_PROXY_CTRLN_9_i0_PROXY_CTRLN_9_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_2887010_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2887014_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2887018_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2887022_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2887026_0), .in1({8'b00000000, out_iu_conv_conn_obj_17_IUdata_converter_FU_iu_conv_2}), .in2({9'b000000000, out_MUX_62_PROXY_CTRLN_9_i0_1_0_1}), .in3({4'b0000, out_conv_out_const_7_5_4}), .in4({1'b0, out_const_9}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_9_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_9_i0_STORE}), .proxy_out1(proxy_out1_28870));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28859.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28859_28880), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28859_0 (.out1({null_out_signal_array_28859_0_out1_1, out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_array_28859_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_0), .proxy_out1({null_out_signal_array_28859_0_proxy_out1_1, null_out_signal_array_28859_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_5}), .in2({9'b000000000, out_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0}), .in3({4'b0000, out_conv_out_const_7_5_4}), .in4({1'b0, out_const_9}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({9'b000000000, 9'b000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28861.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28861_28880), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28861_0 (.out1({null_out_signal_array_28861_0_out1_1, out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_array_28861_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_1), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_1), .proxy_out1({null_out_signal_array_28861_0_proxy_out1_1, null_out_signal_array_28861_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0}), .in2({9'b000000000, out_conv_out_reg_10_reg_10_8_9}), .in3({4'b0000, out_conv_out_const_7_5_4}), .in4({1'b0, out_const_9}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({9'b000000000, 9'b000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28862.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28862_28880), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28862_0 (.out1({null_out_signal_array_28862_0_out1_1, out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_array_28862_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_2), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_2), .proxy_out1({null_out_signal_array_28862_0_proxy_out1_1, null_out_signal_array_28862_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_vb_assign_conn_obj_16_ASSIGN_VECTOR_BOOL_FU_vb_assign_18}), .in2({9'b000000000, out_conv_out_reg_12_reg_12_8_9}), .in3({4'b0000, out_conv_out_const_7_5_4}), .in4({1'b0, out_const_9}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({9'b000000000, 9'b000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28864.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28864_28880), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28864_0 (.out1({null_out_signal_array_28864_0_out1_1, out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28864_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_3), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_3), .proxy_out1({null_out_signal_array_28864_0_proxy_out1_1, null_out_signal_array_28864_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_vb_assign_conn_obj_15_ASSIGN_VECTOR_BOOL_FU_vb_assign_17}), .in2({9'b000000000, out_reg_11_reg_11}), .in3({4'b0000, out_conv_out_const_7_5_4}), .in4({1'b0, out_const_9}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({9'b000000000, 9'b000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28865.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28865_28880), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28865_0 (.out1({null_out_signal_array_28865_0_out1_1, null_out_signal_array_28865_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_4), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_4), .proxy_out1({null_out_signal_array_28865_0_proxy_out1_1, null_out_signal_array_28865_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0}), .in2({9'b000000000, out_reg_14_reg_14}), .in3({4'b0000, out_conv_out_const_7_5_4}), .in4({1'b0, out_const_9}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({9'b000000000, 9'b000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28866.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28866_28880), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28866_0 (.out1({null_out_signal_array_28866_0_out1_1, null_out_signal_array_28866_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_5), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_5), .proxy_out1({null_out_signal_array_28866_0_proxy_out1_1, null_out_signal_array_28866_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1}), .in2({9'b000000000, out_reg_13_reg_13}), .in3({4'b0000, out_conv_out_const_7_5_4}), .in4({1'b0, out_const_9}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({9'b000000000, 9'b000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(6), .BITSIZE_out1(2)) bus_mergerSout_DataRdy5_ (.out1(sig_out_bus_mergerSout_DataRdy5_), .in1({sig_in_bus_mergerSout_DataRdy5_5, sig_in_bus_mergerSout_DataRdy5_4, sig_in_bus_mergerSout_DataRdy5_3, sig_in_bus_mergerSout_DataRdy5_2, sig_in_bus_mergerSout_DataRdy5_1, sig_in_bus_mergerSout_DataRdy5_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(6), .BITSIZE_out1(16)) bus_mergerSout_Rdata_ram6_ (.out1(sig_out_bus_mergerSout_Rdata_ram6_), .in1({sig_in_bus_mergerSout_Rdata_ram6_5, sig_in_bus_mergerSout_Rdata_ram6_4, sig_in_bus_mergerSout_Rdata_ram6_3, sig_in_bus_mergerSout_Rdata_ram6_2, sig_in_bus_mergerSout_Rdata_ram6_1, sig_in_bus_mergerSout_Rdata_ram6_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288677_ (.out1(sig_out_bus_mergerproxy_in1_288677_), .in1({sig_in_bus_mergerproxy_in1_288677_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288688_ (.out1(sig_out_bus_mergerproxy_in1_288688_), .in1({sig_in_bus_mergerproxy_in1_288688_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288699_ (.out1(sig_out_bus_mergerproxy_in1_288699_), .in1({sig_in_bus_mergerproxy_in1_288699_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_2887010_ (.out1(sig_out_bus_mergerproxy_in1_2887010_), .in1({sig_in_bus_mergerproxy_in1_2887010_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerproxy_in2_2886711_ (.out1(sig_out_bus_mergerproxy_in2_2886711_), .in1({sig_in_bus_mergerproxy_in2_2886711_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerproxy_in2_2886812_ (.out1(sig_out_bus_mergerproxy_in2_2886812_), .in1({sig_in_bus_mergerproxy_in2_2886812_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerproxy_in2_2886913_ (.out1(sig_out_bus_mergerproxy_in2_2886913_), .in1({sig_in_bus_mergerproxy_in2_2886913_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerproxy_in2_2887014_ (.out1(sig_out_bus_mergerproxy_in2_2887014_), .in1({sig_in_bus_mergerproxy_in2_2887014_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_2886715_ (.out1(sig_out_bus_mergerproxy_in3_2886715_), .in1({sig_in_bus_mergerproxy_in3_2886715_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_2886816_ (.out1(sig_out_bus_mergerproxy_in3_2886816_), .in1({sig_in_bus_mergerproxy_in3_2886816_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_2886917_ (.out1(sig_out_bus_mergerproxy_in3_2886917_), .in1({sig_in_bus_mergerproxy_in3_2886917_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_2887018_ (.out1(sig_out_bus_mergerproxy_in3_2887018_), .in1({sig_in_bus_mergerproxy_in3_2887018_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886719_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886719_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886719_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886820_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886820_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886820_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886921_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886921_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886921_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2887022_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2887022_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2887022_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886723_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886723_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886723_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886824_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886824_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886824_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886925_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886925_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886925_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2887026_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2887026_), .in1({sig_in_bus_mergerproxy_sel_STORE_2887026_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(2), .value(2'b10)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(3), .value(3'b100)) const_11 (.out1(out_const_11));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_12 (.out1(out_const_12));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_13 (.out1(out_const_13));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28870_28882)) const_14 (.out1(out_const_14));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28859_28880)) const_15 (.out1(out_const_15));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28861_28880)) const_16 (.out1(out_const_16));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28862_28880)) const_17 (.out1(out_const_17));
  constant_value #(.BITSIZE_out1(9), .value(MEM_var_28864_28880)) const_18 (.out1(out_const_18));
  constant_value #(.BITSIZE_out1(9), .value(MEM_var_28865_28880)) const_19 (.out1(out_const_19));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000001)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(6), .value(MEM_var_28867_28882)) const_20 (.out1(out_const_20));
  constant_value #(.BITSIZE_out1(9), .value(MEM_var_28866_28880)) const_21 (.out1(out_const_21));
  constant_value #(.BITSIZE_out1(7), .value(MEM_var_28868_28882)) const_22 (.out1(out_const_22));
  constant_value #(.BITSIZE_out1(7), .value(MEM_var_28869_28882)) const_23 (.out1(out_const_23));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000010)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000011)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000100)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(2), .value(2'b01)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(8), .value(8'b01111111)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_UUdata_converter_FU_104_i0_fu_kruskalF_28880_29599_7_9 (.out1(out_conv_out_UUdata_converter_FU_104_i0_fu_kruskalF_28880_29599_7_9), .in1(out_UUdata_converter_FU_104_i0_fu_kruskalF_28880_29599));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_addr_expr_FU_12_i0_fu_kruskalF_28880_29913_7_9 (.out1(out_conv_out_addr_expr_FU_12_i0_fu_kruskalF_28880_29913_7_9), .in1(out_addr_expr_FU_12_i0_fu_kruskalF_28880_29913));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_addr_expr_FU_13_i0_fu_kruskalF_28880_29919_8_9 (.out1(out_conv_out_addr_expr_FU_13_i0_fu_kruskalF_28880_29919_8_9), .in1(out_addr_expr_FU_13_i0_fu_kruskalF_28880_29919));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_14_8_32 (.out1(out_conv_out_const_14_8_32), .in1(out_const_14));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_15_8_32 (.out1(out_conv_out_const_15_8_32), .in1(out_const_15));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_16_8_32 (.out1(out_conv_out_const_16_8_32), .in1(out_const_16));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_17_8_32 (.out1(out_conv_out_const_17_8_32), .in1(out_const_17));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(32)) conv_out_const_18_9_32 (.out1(out_conv_out_const_18_9_32), .in1(out_const_18));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(32)) conv_out_const_19_9_32 (.out1(out_conv_out_const_19_9_32), .in1(out_const_19));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(32)) conv_out_const_20_6_32 (.out1(out_conv_out_const_20_6_32), .in1(out_const_20));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(32)) conv_out_const_21_9_32 (.out1(out_conv_out_const_21_9_32), .in1(out_const_21));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(32)) conv_out_const_22_7_32 (.out1(out_conv_out_const_22_7_32), .in1(out_const_22));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(32)) conv_out_const_23_7_32 (.out1(out_conv_out_const_23_7_32), .in1(out_const_23));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_7_5_4 (.out1(out_conv_out_const_7_5_4), .in1(out_const_7));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_10_reg_10_8_9 (.out1(out_conv_out_reg_10_reg_10_8_9), .in1(out_reg_10_reg_10));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_12_reg_12_8_9 (.out1(out_conv_out_reg_12_reg_12_8_9), .in1(out_reg_12_reg_12));
  UUdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(2)) conv_out_reg_17_reg_17_3_2 (.out1(out_conv_out_reg_17_reg_17_3_2), .in1(out_reg_17_reg_17));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_22_reg_22_8_9 (.out1(out_conv_out_reg_22_reg_22_8_9), .in1(out_reg_22_reg_22));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_2_reg_2_7_9 (.out1(out_conv_out_reg_2_reg_2_7_9), .in1(out_reg_2_reg_2));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_36_reg_36_8_9 (.out1(out_conv_out_reg_36_reg_36_8_9), .in1(out_reg_36_reg_36));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_3_reg_3_8_9 (.out1(out_conv_out_reg_3_reg_3_8_9), .in1(out_reg_3_reg_3));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_48_reg_48_7_9 (.out1(out_conv_out_reg_48_reg_48_7_9), .in1(out_reg_48_reg_48));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_49_reg_49_7_9 (.out1(out_conv_out_reg_49_reg_49_7_9), .in1(out_reg_49_reg_49));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_57_reg_57_7_9 (.out1(out_conv_out_reg_57_reg_57_7_9), .in1(out_reg_57_reg_57));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(9)) conv_out_reg_5_reg_5_6_9 (.out1(out_conv_out_reg_5_reg_5_6_9), .in1(out_reg_5_reg_5));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_6_reg_6_7_9 (.out1(out_conv_out_reg_6_reg_6_7_9), .in1(out_reg_6_reg_6));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_7_reg_7_7_9 (.out1(out_conv_out_reg_7_reg_7_7_9), .in1(out_reg_7_reg_7));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_8_reg_8_7_9 (.out1(out_conv_out_reg_8_reg_8_7_9), .in1(out_reg_8_reg_8));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_9_reg_9_7_9 (.out1(out_conv_out_reg_9_reg_9_7_9), .in1(out_reg_9_reg_9));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(2)) conv_out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_11_1_2 (.out1(out_conv_out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_11_1_2), .in1(out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_11));
  UUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_12_2_8 (.out1(out_conv_out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_12_2_8), .in1(out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_12));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(3)) conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_10_1_3 (.out1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_10_1_3), .in1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_10));
  UUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_14_2_8 (.out1(out_conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_14_2_8), .in1(out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_14));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_ui_pointer_plus_expr_FU_8_8_8_155_i2_fu_kruskalF_28880_30141_8_9 (.out1(out_conv_out_ui_pointer_plus_expr_FU_8_8_8_155_i2_fu_kruskalF_28880_30141_8_9), .in1(out_ui_pointer_plus_expr_FU_8_8_8_155_i2_fu_kruskalF_28880_30141));
  UUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) fu_kruskalF_28880_29495 (.out1(out_UUdata_converter_FU_30_i0_fu_kruskalF_28880_29495), .in1(out_conv_out_reg_17_reg_17_3_2));
  UIdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(3)) fu_kruskalF_28880_29496 (.out1(out_UIdata_converter_FU_31_i0_fu_kruskalF_28880_29496), .in1(out_conv_out_reg_17_reg_17_3_2));
  cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29502 (.out1(out_cond_expr_FU_8_8_8_8_127_i0_fu_kruskalF_28880_29502), .in1(out_reg_25_reg_25), .in2(out_reg_20_reg_20), .in3(out_reg_15_reg_15));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_kruskalF_28880_29513 (.out1(out_UIdata_converter_FU_36_i0_fu_kruskalF_28880_29513), .in1(out_reg_21_reg_21));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_kruskalF_28880_29521 (.out1(out_ui_plus_expr_FU_8_0_8_147_i0_fu_kruskalF_28880_29521), .in1(out_reg_21_reg_21), .in2(out_const_9));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_kruskalF_28880_29523 (.out1(out_plus_expr_FU_8_0_8_134_i0_fu_kruskalF_28880_29523), .in1(out_reg_15_reg_15), .in2(out_const_6));
  cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29532 (.out1(out_cond_expr_FU_8_8_8_8_127_i1_fu_kruskalF_28880_29532), .in1(out_reg_25_reg_25), .in2(out_reg_20_reg_20), .in3(out_reg_16_reg_16));
  ui_plus_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_out1(3)) fu_kruskalF_28880_29541 (.out1(out_ui_plus_expr_FU_8_0_8_148_i0_fu_kruskalF_28880_29541), .in1(out_conv_out_reg_17_reg_17_3_2), .in2(out_const_9));
  read_cond_FU #(.BITSIZE_in1(1)) fu_kruskalF_28880_29558 (.out1(out_read_cond_FU_40_i0_fu_kruskalF_28880_29558), .in1(out_reg_26_reg_26));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_kruskalF_28880_29599 (.out1(out_UUdata_converter_FU_104_i0_fu_kruskalF_28880_29599), .in1(out_reg_58_reg_58));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_29607 (.out1(out_UUdata_converter_FU_25_i0_fu_kruskalF_28880_29607), .in1(out_addr_expr_FU_24_i0_fu_kruskalF_28880_30208));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(32)) fu_kruskalF_28880_29610 (.out1(out_ui_plus_expr_FU_32_0_32_146_i0_fu_kruskalF_28880_29610), .in1(out_reg_58_reg_58), .in2(out_const_9));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_kruskalF_28880_29615 (.out1(out_UIdata_converter_FU_85_i0_fu_kruskalF_28880_29615), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28864_0));
  ui_cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29632 (.out1(out_ui_cond_expr_FU_8_8_8_8_138_i0_fu_kruskalF_28880_29632), .in1(out_ui_bit_and_expr_FU_1_1_1_137_i0_fu_kruskalF_28880_29637), .in2(out_reg_29_reg_29), .in3(out_reg_42_reg_42));
  ui_bit_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_kruskalF_28880_29637 (.out1(out_ui_bit_and_expr_FU_1_1_1_137_i0_fu_kruskalF_28880_29637), .in1(out_reg_39_reg_39), .in2(out_reg_40_reg_40));
  le_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_kruskalF_28880_29641 (.out1(out_le_expr_FU_8_8_8_130_i0_fu_kruskalF_28880_29641), .in1(out_PROXY_CTRLN_9_i0_PROXY_CTRLN_9_i0), .in2(out_reg_30_reg_30));
  cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29663 (.out1(out_cond_expr_FU_8_8_8_8_127_i2_fu_kruskalF_28880_29663), .in1(out_ui_bit_and_expr_FU_1_1_1_137_i0_fu_kruskalF_28880_29637), .in2(out_reg_41_reg_41), .in3(out_reg_43_reg_43));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(10), .BITSIZE_out1(10), .LSB_PARAMETER(0)) fu_kruskalF_28880_29676 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_150_i0_fu_kruskalF_28880_29676), .in1(in_port_a), .in2(out_ui_lshift_expr_FU_16_0_16_139_i0_fu_kruskalF_28880_29682));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(10), .PRECISION(32)) fu_kruskalF_28880_29682 (.out1(out_ui_lshift_expr_FU_16_0_16_139_i0_fu_kruskalF_28880_29682), .in1(out_UUdata_converter_FU_111_i0_fu_kruskalF_28880_29689), .in2(out_const_10));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29689 (.out1(out_UUdata_converter_FU_111_i0_fu_kruskalF_28880_29689), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_array_28862_0));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_kruskalF_28880_29694 (.out1(out_UIdata_converter_FU_112_i0_fu_kruskalF_28880_29694), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28864_0));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(10), .BITSIZE_out1(10), .LSB_PARAMETER(0)) fu_kruskalF_28880_29703 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_150_i1_fu_kruskalF_28880_29703), .in1(in_port_a), .in2(out_reg_45_reg_45));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(10), .PRECISION(32)) fu_kruskalF_28880_29706 (.out1(out_ui_lshift_expr_FU_16_0_16_139_i1_fu_kruskalF_28880_29706), .in1(out_UUdata_converter_FU_90_i0_fu_kruskalF_28880_29709), .in2(out_const_10));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29709 (.out1(out_UUdata_converter_FU_90_i0_fu_kruskalF_28880_29709), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28864_0));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_kruskalF_28880_29711 (.out1(out_UIdata_converter_FU_86_i0_fu_kruskalF_28880_29711), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_array_28862_0));
  UIdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(3)) fu_kruskalF_28880_29721 (.out1(out_UIdata_converter_FU_65_i0_fu_kruskalF_28880_29721), .in1(out_reg_31_reg_31));
  ui_plus_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_out1(2)) fu_kruskalF_28880_29728 (.out1(out_ui_plus_expr_FU_8_0_8_148_i1_fu_kruskalF_28880_29728), .in1(out_reg_31_reg_31), .in2(out_const_9));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_kruskalF_28880_29730 (.out1(out_UIdata_converter_FU_81_i0_fu_kruskalF_28880_29730), .in1(out_reg_29_reg_29));
  cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29734 (.out1(out_cond_expr_FU_8_8_8_8_127_i3_fu_kruskalF_28880_29734), .in1(out_ui_bit_and_expr_FU_1_1_1_137_i0_fu_kruskalF_28880_29637), .in2(out_reg_41_reg_41), .in3(out_reg_30_reg_30));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_kruskalF_28880_29736 (.out1(out_ne_expr_FU_8_0_8_132_i0_fu_kruskalF_28880_29736), .in1(out_PROXY_CTRLN_9_i0_PROXY_CTRLN_9_i0), .in2(out_const_12));
  UUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) fu_kruskalF_28880_29743 (.out1(out_UUdata_converter_FU_64_i0_fu_kruskalF_28880_29743), .in1(out_reg_31_reg_31));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_kruskalF_28880_29745 (.out1(out_ui_plus_expr_FU_8_0_8_147_i1_fu_kruskalF_28880_29745), .in1(out_reg_29_reg_29), .in2(out_const_9));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29754 (.out1(out_IUdata_converter_FU_91_i0_fu_kruskalF_28880_29754), .in1(out_PROXY_CTRLN_8_i1_PROXY_CTRLN_8_i0));
  ui_cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(2), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29767 (.out1(out_ui_cond_expr_FU_8_8_8_8_138_i1_fu_kruskalF_28880_29767), .in1(out_ui_bit_and_expr_FU_1_1_1_137_i0_fu_kruskalF_28880_29637), .in2(out_reg_32_reg_32), .in3(out_reg_44_reg_44));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_kruskalF_28880_29777 (.out1(out_ui_plus_expr_FU_8_0_8_149_i0_fu_kruskalF_28880_29777), .in1(out_PROXY_CTRLN_7_i0_PROXY_CTRLN_7_i0), .in2(out_const_9));
  read_cond_FU #(.BITSIZE_in1(1)) fu_kruskalF_28880_29786 (.out1(out_read_cond_FU_93_i0_fu_kruskalF_28880_29786), .in1(out_reg_52_reg_52));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_kruskalF_28880_29790 (.out1(out_UIdata_converter_FU_92_i0_fu_kruskalF_28880_29790), .in1(out_IUdata_converter_FU_91_i0_fu_kruskalF_28880_29754));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_29791 (.out1(out_UUdata_converter_FU_26_i0_fu_kruskalF_28880_29791), .in1(out_ui_pointer_plus_expr_FU_32_0_32_151_i0_fu_kruskalF_28880_30216));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29800 (.out1(out_IIdata_converter_FU_105_i0_fu_kruskalF_28880_29800), .in1(out_PROXY_CTRLN_8_i0_PROXY_CTRLN_8_i0));
  read_cond_FU #(.BITSIZE_in1(1)) fu_kruskalF_28880_29801 (.out1(out_read_cond_FU_106_i0_fu_kruskalF_28880_29801), .in1(out_eq_expr_FU_16_16_16_128_i0_fu_kruskalF_28880_30472));
  read_cond_FU #(.BITSIZE_in1(1)) fu_kruskalF_28880_29807 (.out1(out_read_cond_FU_108_i0_fu_kruskalF_28880_29807), .in1(out_ui_ne_expr_FU_32_32_32_142_i0_fu_kruskalF_28880_30474));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_kruskalF_28880_29809 (.out1(out_UIdata_converter_FU_123_i0_fu_kruskalF_28880_29809), .in1(out_reg_61_reg_61));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29811 (.out1(out_IIdata_converter_FU_124_i0_fu_kruskalF_28880_29811), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_array_28859_0));
  read_cond_FU #(.BITSIZE_in1(1)) fu_kruskalF_28880_29812 (.out1(out_read_cond_FU_125_i0_fu_kruskalF_28880_29812), .in1(out_lt_expr_FU_16_16_16_131_i0_fu_kruskalF_28880_30476));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_kruskalF_28880_29913 (.out1(out_addr_expr_FU_12_i0_fu_kruskalF_28880_29913), .in1(out_conv_out_const_22_7_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_kruskalF_28880_29919 (.out1(out_addr_expr_FU_13_i0_fu_kruskalF_28880_29919), .in1(out_conv_out_const_15_8_32));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(9)) fu_kruskalF_28880_29924 (.out1(out_UUdata_converter_FU_37_i0_fu_kruskalF_28880_29924), .in1(out_ui_pointer_plus_expr_FU_8_8_8_155_i8_ui_pointer_plus_expr_FU_8_8_8_155_i8));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_kruskalF_28880_29927 (.out1(out_IUdata_converter_FU_38_i0_fu_kruskalF_28880_29927), .in1(out_UIdata_converter_FU_36_i0_fu_kruskalF_28880_29513));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(8), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_kruskalF_28880_29934 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_155_i0_fu_kruskalF_28880_29934), .in1(out_UUdata_converter_FU_37_i0_fu_kruskalF_28880_29924), .in2(out_IUdata_converter_FU_38_i0_fu_kruskalF_28880_29927));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_kruskalF_28880_29937 (.out1(out_ne_expr_FU_8_0_8_132_i1_fu_kruskalF_28880_29937), .in1(out_PROXY_CTRLN_9_i0_PROXY_CTRLN_9_i0), .in2(out_const_12));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(10)) fu_kruskalF_28880_29944 (.out1(out_UUdata_converter_FU_15_i0_fu_kruskalF_28880_29944), .in1(out_addr_expr_FU_14_i0_fu_kruskalF_28880_29965));
  IUdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(2)) fu_kruskalF_28880_29947 (.out1(out_IUdata_converter_FU_32_i0_fu_kruskalF_28880_29947), .in1(out_UIdata_converter_FU_31_i0_fu_kruskalF_28880_29496));
  ui_lshift_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(4), .PRECISION(32)) fu_kruskalF_28880_29951 (.out1(out_ui_lshift_expr_FU_8_0_8_141_i0_fu_kruskalF_28880_29951), .in1(out_IUdata_converter_FU_32_i0_fu_kruskalF_28880_29947), .in2(out_const_10));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(10)) fu_kruskalF_28880_29965 (.out1(out_addr_expr_FU_14_i0_fu_kruskalF_28880_29965), .in1(out_conv_out_const_14_8_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(6)) fu_kruskalF_28880_29975 (.out1(out_addr_expr_FU_16_i0_fu_kruskalF_28880_29975), .in1(out_conv_out_const_20_6_32));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(7)) fu_kruskalF_28880_29979 (.out1(out_UUdata_converter_FU_18_i0_fu_kruskalF_28880_29979), .in1(out_addr_expr_FU_17_i0_fu_kruskalF_28880_30037));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(1), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_kruskalF_28880_30001 (.out1(out_ui_pointer_plus_expr_FU_8_0_8_152_i0_fu_kruskalF_28880_30001), .in1(out_UUdata_converter_FU_18_i0_fu_kruskalF_28880_29979), .in2(out_const_9));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_kruskalF_28880_30014 (.out1(out_ui_pointer_plus_expr_FU_8_0_8_153_i0_fu_kruskalF_28880_30014), .in1(out_UUdata_converter_FU_18_i0_fu_kruskalF_28880_29979), .in2(out_const_10));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_kruskalF_28880_30027 (.out1(out_ui_pointer_plus_expr_FU_8_0_8_154_i0_fu_kruskalF_28880_30027), .in1(out_UUdata_converter_FU_18_i0_fu_kruskalF_28880_29979), .in2(out_const_12));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_kruskalF_28880_30037 (.out1(out_addr_expr_FU_17_i0_fu_kruskalF_28880_30037), .in1(out_conv_out_const_23_7_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_kruskalF_28880_30053 (.out1(out_addr_expr_FU_19_i0_fu_kruskalF_28880_30053), .in1(out_conv_out_const_16_8_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(9)) fu_kruskalF_28880_30061 (.out1(out_addr_expr_FU_20_i0_fu_kruskalF_28880_30061), .in1(out_conv_out_const_18_9_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_kruskalF_28880_30065 (.out1(out_addr_expr_FU_21_i0_fu_kruskalF_28880_30065), .in1(out_conv_out_const_17_8_32));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(9)) fu_kruskalF_28880_30069 (.out1(out_UUdata_converter_FU_82_i0_fu_kruskalF_28880_30069), .in1(out_ui_pointer_plus_expr_FU_8_8_8_155_i9_fu_kruskalF_28880_30091));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_kruskalF_28880_30072 (.out1(out_IUdata_converter_FU_83_i0_fu_kruskalF_28880_30072), .in1(out_UIdata_converter_FU_81_i0_fu_kruskalF_28880_29730));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(8), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_kruskalF_28880_30078 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_155_i1_fu_kruskalF_28880_30078), .in1(out_UUdata_converter_FU_82_i0_fu_kruskalF_28880_30069), .in2(out_IUdata_converter_FU_83_i0_fu_kruskalF_28880_30072));
  IUdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(2)) fu_kruskalF_28880_30085 (.out1(out_IUdata_converter_FU_66_i0_fu_kruskalF_28880_30085), .in1(out_UIdata_converter_FU_65_i0_fu_kruskalF_28880_29721));
  ui_lshift_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(4), .PRECISION(32)) fu_kruskalF_28880_30088 (.out1(out_ui_lshift_expr_FU_8_0_8_141_i1_fu_kruskalF_28880_30088), .in1(out_IUdata_converter_FU_66_i0_fu_kruskalF_28880_30085), .in2(out_const_10));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(4), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_kruskalF_28880_30091 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_155_i9_fu_kruskalF_28880_30091), .in1(out_reg_4_reg_4), .in2(out_reg_33_reg_33));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(9)) fu_kruskalF_28880_30104 (.out1(out_addr_expr_FU_22_i0_fu_kruskalF_28880_30104), .in1(out_conv_out_const_21_9_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(9)) fu_kruskalF_28880_30120 (.out1(out_addr_expr_FU_23_i0_fu_kruskalF_28880_30120), .in1(out_conv_out_const_19_9_32));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(9)) fu_kruskalF_28880_30132 (.out1(out_UUdata_converter_FU_88_i0_fu_kruskalF_28880_30132), .in1(out_ui_pointer_plus_expr_FU_8_8_8_155_i5_fu_kruskalF_28880_30180));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_kruskalF_28880_30135 (.out1(out_IUdata_converter_FU_89_i0_fu_kruskalF_28880_30135), .in1(out_UIdata_converter_FU_86_i0_fu_kruskalF_28880_29711));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(8), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_kruskalF_28880_30141 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_155_i2_fu_kruskalF_28880_30141), .in1(out_reg_46_reg_46), .in2(out_reg_47_reg_47));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(8), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_kruskalF_28880_30154 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_155_i3_fu_kruskalF_28880_30154), .in1(out_reg_6_reg_6), .in2(out_IUdata_converter_FU_87_i0_fu_kruskalF_28880_30174));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(8), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_kruskalF_28880_30167 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_155_i4_fu_kruskalF_28880_30167), .in1(out_reg_6_reg_6), .in2(out_IUdata_converter_FU_89_i0_fu_kruskalF_28880_30135));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_kruskalF_28880_30174 (.out1(out_IUdata_converter_FU_87_i0_fu_kruskalF_28880_30174), .in1(out_UIdata_converter_FU_85_i0_fu_kruskalF_28880_29615));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(10), .PRECISION(32)) fu_kruskalF_28880_30177 (.out1(out_ui_lshift_expr_FU_16_0_16_140_i0_fu_kruskalF_28880_30177), .in1(out_IUdata_converter_FU_87_i0_fu_kruskalF_28880_30174), .in2(out_const_10));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(10), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_kruskalF_28880_30180 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_155_i5_fu_kruskalF_28880_30180), .in1(out_reg_4_reg_4), .in2(out_ui_lshift_expr_FU_16_0_16_140_i0_fu_kruskalF_28880_30177));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_30208 (.out1(out_addr_expr_FU_24_i0_fu_kruskalF_28880_30208), .in1(out_conv_out_const_23_7_32));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(3), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_kruskalF_28880_30216 (.out1(out_ui_pointer_plus_expr_FU_32_0_32_151_i0_fu_kruskalF_28880_30216), .in1(out_addr_expr_FU_24_i0_fu_kruskalF_28880_30208), .in2(out_const_11));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(10)) fu_kruskalF_28880_30253 (.out1(out_UUdata_converter_FU_110_i0_fu_kruskalF_28880_30253), .in1(out_ui_pointer_plus_expr_FU_16_16_16_150_i1_fu_kruskalF_28880_29703));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(8), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_kruskalF_28880_30262 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_155_i6_fu_kruskalF_28880_30262), .in1(out_UUdata_converter_FU_110_i0_fu_kruskalF_28880_30253), .in2(out_reg_47_reg_47));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(10)) fu_kruskalF_28880_30275 (.out1(out_UUdata_converter_FU_113_i0_fu_kruskalF_28880_30275), .in1(out_reg_54_reg_54));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_kruskalF_28880_30278 (.out1(out_IUdata_converter_FU_114_i0_fu_kruskalF_28880_30278), .in1(out_UIdata_converter_FU_112_i0_fu_kruskalF_28880_29694));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(8), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_kruskalF_28880_30284 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_155_i7_fu_kruskalF_28880_30284), .in1(out_UUdata_converter_FU_113_i0_fu_kruskalF_28880_30275), .in2(out_reg_55_reg_55));
  ui_ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(1)) fu_kruskalF_28880_30460 (.out1(out_ui_ne_expr_FU_8_0_8_143_i0_fu_kruskalF_28880_30460), .in1(out_ui_plus_expr_FU_8_0_8_147_i0_fu_kruskalF_28880_29521), .in2(out_const_11));
  ui_ne_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(1)) fu_kruskalF_28880_30462 (.out1(out_ui_ne_expr_FU_8_0_8_144_i0_fu_kruskalF_28880_30462), .in1(out_ui_plus_expr_FU_8_0_8_148_i0_fu_kruskalF_28880_29541), .in2(out_const_11));
  gt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_kruskalF_28880_30464 (.out1(out_gt_expr_FU_8_0_8_129_i0_fu_kruskalF_28880_30464), .in1(out_reg_15_reg_15), .in2(out_const_0));
  ui_ne_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_kruskalF_28880_30466 (.out1(out_ui_ne_expr_FU_8_0_8_145_i0_fu_kruskalF_28880_30466), .in1(out_ui_plus_expr_FU_8_0_8_148_i1_fu_kruskalF_28880_29728), .in2(out_const_12));
  ui_ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(1)) fu_kruskalF_28880_30468 (.out1(out_ui_ne_expr_FU_8_0_8_143_i1_fu_kruskalF_28880_30468), .in1(out_ui_plus_expr_FU_8_0_8_147_i1_fu_kruskalF_28880_29745), .in2(out_const_11));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_kruskalF_28880_30470 (.out1(out_ne_expr_FU_8_8_8_133_i0_fu_kruskalF_28880_30470), .in1(out_PROXY_CTRLN_8_i0_PROXY_CTRLN_8_i0), .in2(out_PROXY_CTRLN_8_i1_PROXY_CTRLN_8_i0));
  eq_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_out1(1)) fu_kruskalF_28880_30472 (.out1(out_eq_expr_FU_16_16_16_128_i0_fu_kruskalF_28880_30472), .in1(out_reg_59_reg_59), .in2(out_reg_51_reg_51));
  ui_ne_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(1)) fu_kruskalF_28880_30474 (.out1(out_ui_ne_expr_FU_32_32_32_142_i0_fu_kruskalF_28880_30474), .in1(out_reg_58_reg_58), .in2(out_reg_1_reg_1));
  lt_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_kruskalF_28880_30476 (.out1(out_lt_expr_FU_16_16_16_131_i0_fu_kruskalF_28880_30476), .in1(out_UIdata_converter_FU_123_i0_fu_kruskalF_28880_29809), .in2(out_reg_62_reg_62));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) fu_kruskalF_28880_30583 (.out1(out_multi_read_cond_FU_39_i0_fu_kruskalF_28880_30583), .in1({out_reg_24_reg_24, out_reg_23_reg_23}));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_kruskalF_28880_30586 (.out1(out_truth_not_expr_FU_1_1_136_i0_fu_kruskalF_28880_30586), .in1(out_ui_ne_expr_FU_8_0_8_143_i0_fu_kruskalF_28880_30460));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_kruskalF_28880_30589 (.out1(out_truth_and_expr_FU_1_1_1_135_i0_fu_kruskalF_28880_30589), .in1(out_reg_19_reg_19), .in2(out_truth_not_expr_FU_1_1_136_i0_fu_kruskalF_28880_30586));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) fu_kruskalF_28880_30590 (.out1(out_multi_read_cond_FU_84_i0_fu_kruskalF_28880_30590), .in1({out_reg_38_reg_38, out_reg_37_reg_37}));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_kruskalF_28880_30593 (.out1(out_truth_not_expr_FU_1_1_136_i1_fu_kruskalF_28880_30593), .in1(out_ui_ne_expr_FU_8_0_8_143_i1_fu_kruskalF_28880_30468));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_kruskalF_28880_30596 (.out1(out_truth_and_expr_FU_1_1_1_135_i1_fu_kruskalF_28880_30596), .in1(out_reg_34_reg_34), .in2(out_truth_not_expr_FU_1_1_136_i1_fu_kruskalF_28880_30593));
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
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_5 (.out1(sig_in_bus_mergerSout_DataRdy5_5), .in1(sig_in_vector_bus_mergerSout_DataRdy5_5));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_0 (.out1(sig_in_bus_mergerSout_Rdata_ram6_0), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_1 (.out1(sig_in_bus_mergerSout_Rdata_ram6_1), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_1));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_2 (.out1(sig_in_bus_mergerSout_Rdata_ram6_2), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_2));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_3 (.out1(sig_in_bus_mergerSout_Rdata_ram6_3), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_3));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_4 (.out1(sig_in_bus_mergerSout_Rdata_ram6_4), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_4));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_5 (.out1(sig_in_bus_mergerSout_Rdata_ram6_5), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_5));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288677_0 (.out1(sig_in_bus_mergerproxy_in1_288677_0), .in1(sig_in_vector_bus_mergerproxy_in1_288677_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288688_0 (.out1(sig_in_bus_mergerproxy_in1_288688_0), .in1(sig_in_vector_bus_mergerproxy_in1_288688_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288699_0 (.out1(sig_in_bus_mergerproxy_in1_288699_0), .in1(sig_in_vector_bus_mergerproxy_in1_288699_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_2887010_0 (.out1(sig_in_bus_mergerproxy_in1_2887010_0), .in1(sig_in_vector_bus_mergerproxy_in1_2887010_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in2_2886711_0 (.out1(sig_in_bus_mergerproxy_in2_2886711_0), .in1(sig_in_vector_bus_mergerproxy_in2_2886711_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in2_2886812_0 (.out1(sig_in_bus_mergerproxy_in2_2886812_0), .in1(sig_in_vector_bus_mergerproxy_in2_2886812_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in2_2886913_0 (.out1(sig_in_bus_mergerproxy_in2_2886913_0), .in1(sig_in_vector_bus_mergerproxy_in2_2886913_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in2_2887014_0 (.out1(sig_in_bus_mergerproxy_in2_2887014_0), .in1(sig_in_vector_bus_mergerproxy_in2_2887014_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_2886715_0 (.out1(sig_in_bus_mergerproxy_in3_2886715_0), .in1(sig_in_vector_bus_mergerproxy_in3_2886715_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_2886816_0 (.out1(sig_in_bus_mergerproxy_in3_2886816_0), .in1(sig_in_vector_bus_mergerproxy_in3_2886816_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_2886917_0 (.out1(sig_in_bus_mergerproxy_in3_2886917_0), .in1(sig_in_vector_bus_mergerproxy_in3_2886917_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_2887018_0 (.out1(sig_in_bus_mergerproxy_in3_2887018_0), .in1(sig_in_vector_bus_mergerproxy_in3_2887018_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886719_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886719_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886719_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886820_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886820_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886820_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886921_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886921_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886921_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2887022_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2887022_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2887022_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886723_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886723_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886723_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886824_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886824_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886824_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886925_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886925_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886925_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2887026_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2887026_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2887026_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_25_i0_fu_kruskalF_28880_29607), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_26_i0_fu_kruskalF_28880_29791), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_19_i0_fu_kruskalF_28880_30053), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_20_i0_fu_kruskalF_28880_30061), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_21_i0_fu_kruskalF_28880_30065), .wenable(wrenable_reg_12));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_22_i0_fu_kruskalF_28880_30104), .wenable(wrenable_reg_13));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_23_i0_fu_kruskalF_28880_30120), .wenable(wrenable_reg_14));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_MUX_153_reg_15_0_0_0), .wenable(wrenable_reg_15));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_MUX_154_reg_16_0_0_0), .wenable(wrenable_reg_16));
  register_SE #(.BITSIZE_in1(3), .BITSIZE_out1(3)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_MUX_155_reg_17_0_0_1), .wenable(wrenable_reg_17));
  register_SE #(.BITSIZE_in1(4), .BITSIZE_out1(4)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_ui_lshift_expr_FU_8_0_8_141_i0_fu_kruskalF_28880_29951), .wenable(wrenable_reg_18));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_19 (.out1(out_reg_19_reg_19), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_144_i0_fu_kruskalF_28880_30462), .wenable(wrenable_reg_19));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_12_i0_fu_kruskalF_28880_29913), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_20 (.out1(out_reg_20_reg_20), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_0_8_134_i0_fu_kruskalF_28880_29523), .wenable(wrenable_reg_20));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_21 (.out1(out_reg_21_reg_21), .clock(clock), .reset(reset), .in1(out_MUX_160_reg_21_0_0_0), .wenable(wrenable_reg_21));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_22 (.out1(out_reg_22_reg_22), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_155_i0_fu_kruskalF_28880_29934), .wenable(wrenable_reg_22));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_23 (.out1(out_reg_23_reg_23), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_143_i0_fu_kruskalF_28880_30460), .wenable(wrenable_reg_23));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_24 (.out1(out_reg_24_reg_24), .clock(clock), .reset(reset), .in1(out_truth_and_expr_FU_1_1_1_135_i0_fu_kruskalF_28880_30589), .wenable(wrenable_reg_24));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_25 (.out1(out_reg_25_reg_25), .clock(clock), .reset(reset), .in1(out_ne_expr_FU_8_0_8_132_i1_fu_kruskalF_28880_29937), .wenable(wrenable_reg_25));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_26 (.out1(out_reg_26_reg_26), .clock(clock), .reset(reset), .in1(out_gt_expr_FU_8_0_8_129_i0_fu_kruskalF_28880_30464), .wenable(wrenable_reg_26));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_27 (.out1(out_reg_27_reg_27), .clock(clock), .reset(reset), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_array_28862_0), .wenable(wrenable_reg_27));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_28 (.out1(out_reg_28_reg_28), .clock(clock), .reset(reset), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28864_0), .wenable(wrenable_reg_28));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_29 (.out1(out_reg_29_reg_29), .clock(clock), .reset(reset), .in1(out_MUX_168_reg_29_0_0_0), .wenable(wrenable_reg_29));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_13_i0_fu_kruskalF_28880_29919), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_30 (.out1(out_reg_30_reg_30), .clock(clock), .reset(reset), .in1(out_MUX_170_reg_30_0_0_0), .wenable(wrenable_reg_30));
  register_SE #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_31 (.out1(out_reg_31_reg_31), .clock(clock), .reset(reset), .in1(out_MUX_171_reg_31_0_0_0), .wenable(wrenable_reg_31));
  register_SE #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_32 (.out1(out_reg_32_reg_32), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_64_i0_fu_kruskalF_28880_29743), .wenable(wrenable_reg_32));
  register_SE #(.BITSIZE_in1(4), .BITSIZE_out1(4)) reg_33 (.out1(out_reg_33_reg_33), .clock(clock), .reset(reset), .in1(out_ui_lshift_expr_FU_8_0_8_141_i1_fu_kruskalF_28880_30088), .wenable(wrenable_reg_33));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_34 (.out1(out_reg_34_reg_34), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_145_i0_fu_kruskalF_28880_30466), .wenable(wrenable_reg_34));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_35 (.out1(out_reg_35_reg_35), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_147_i1_fu_kruskalF_28880_29745), .wenable(wrenable_reg_35));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_36 (.out1(out_reg_36_reg_36), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_155_i1_fu_kruskalF_28880_30078), .wenable(wrenable_reg_36));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_37 (.out1(out_reg_37_reg_37), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_143_i1_fu_kruskalF_28880_30468), .wenable(wrenable_reg_37));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_38 (.out1(out_reg_38_reg_38), .clock(clock), .reset(reset), .in1(out_truth_and_expr_FU_1_1_1_135_i1_fu_kruskalF_28880_30596), .wenable(wrenable_reg_38));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_39 (.out1(out_reg_39_reg_39), .clock(clock), .reset(reset), .in1(out_le_expr_FU_8_8_8_130_i0_fu_kruskalF_28880_29641), .wenable(wrenable_reg_39));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_15_i0_fu_kruskalF_28880_29944), .wenable(wrenable_reg_4));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_40 (.out1(out_reg_40_reg_40), .clock(clock), .reset(reset), .in1(out_ne_expr_FU_8_0_8_132_i0_fu_kruskalF_28880_29736), .wenable(wrenable_reg_40));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_41 (.out1(out_reg_41_reg_41), .clock(clock), .reset(reset), .in1(out_PROXY_CTRLN_9_i0_PROXY_CTRLN_9_i0), .wenable(wrenable_reg_41));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_42 (.out1(out_reg_42_reg_42), .clock(clock), .reset(reset), .in1(out_MUX_183_reg_42_0_0_0), .wenable(wrenable_reg_42));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_43 (.out1(out_reg_43_reg_43), .clock(clock), .reset(reset), .in1(out_MUX_184_reg_43_0_0_0), .wenable(wrenable_reg_43));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_44 (.out1(out_reg_44_reg_44), .clock(clock), .reset(reset), .in1(out_MUX_185_reg_44_0_0_0), .wenable(wrenable_reg_44));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_45 (.out1(out_reg_45_reg_45), .clock(clock), .reset(reset), .in1(out_ui_lshift_expr_FU_16_0_16_139_i1_fu_kruskalF_28880_29706), .wenable(wrenable_reg_45));
  register_STD #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_46 (.out1(out_reg_46_reg_46), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_88_i0_fu_kruskalF_28880_30132), .wenable(wrenable_reg_46));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_47 (.out1(out_reg_47_reg_47), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_89_i0_fu_kruskalF_28880_30135), .wenable(wrenable_reg_47));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_48 (.out1(out_reg_48_reg_48), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_155_i3_fu_kruskalF_28880_30154), .wenable(wrenable_reg_48));
  register_STD #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_49 (.out1(out_reg_49_reg_49), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_155_i4_fu_kruskalF_28880_30167), .wenable(wrenable_reg_49));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_16_i0_fu_kruskalF_28880_29975), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_50 (.out1(out_reg_50_reg_50), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_91_i0_fu_kruskalF_28880_29754), .wenable(wrenable_reg_50));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_51 (.out1(out_reg_51_reg_51), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_92_i0_fu_kruskalF_28880_29790), .wenable(wrenable_reg_51));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_52 (.out1(out_reg_52_reg_52), .clock(clock), .reset(reset), .in1(out_ne_expr_FU_8_8_8_133_i0_fu_kruskalF_28880_30470), .wenable(wrenable_reg_52));
  register_STD #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_53 (.out1(out_reg_53_reg_53), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_155_i6_fu_kruskalF_28880_30262), .wenable(wrenable_reg_53));
  register_STD #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_54 (.out1(out_reg_54_reg_54), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_150_i0_fu_kruskalF_28880_29676), .wenable(wrenable_reg_54));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_55 (.out1(out_reg_55_reg_55), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_114_i0_fu_kruskalF_28880_30278), .wenable(wrenable_reg_55));
  register_STD #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_56 (.out1(out_reg_56_reg_56), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_155_i7_fu_kruskalF_28880_30284), .wenable(wrenable_reg_56));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_57 (.out1(out_reg_57_reg_57), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_104_i0_fu_kruskalF_28880_29599), .wenable(wrenable_reg_57));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_58 (.out1(out_reg_58_reg_58), .clock(clock), .reset(reset), .in1(out_MUX_200_reg_58_0_0_0), .wenable(wrenable_reg_58));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_59 (.out1(out_reg_59_reg_59), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_105_i0_fu_kruskalF_28880_29800), .wenable(wrenable_reg_59));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_18_i0_fu_kruskalF_28880_29979), .wenable(wrenable_reg_6));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_60 (.out1(out_reg_60_reg_60), .clock(clock), .reset(reset), .in1(out_PROXY_CTRLN_8_i0_PROXY_CTRLN_8_i0), .wenable(wrenable_reg_60));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_61 (.out1(out_reg_61_reg_61), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_149_i0_fu_kruskalF_28880_29777), .wenable(wrenable_reg_61));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_62 (.out1(out_reg_62_reg_62), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_124_i0_fu_kruskalF_28880_29811), .wenable(wrenable_reg_62));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_0_8_152_i0_fu_kruskalF_28880_30001), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_0_8_153_i0_fu_kruskalF_28880_30014), .wenable(wrenable_reg_8));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_0_8_154_i0_fu_kruskalF_28880_30027), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy5_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy5_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram6_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram6_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288677_ (.out1(proxy_in1_28867), .in1(sig_out_bus_mergerproxy_in1_288677_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288688_ (.out1(proxy_in1_28868), .in1(sig_out_bus_mergerproxy_in1_288688_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288699_ (.out1(proxy_in1_28869), .in1(sig_out_bus_mergerproxy_in1_288699_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_2887010_ (.out1(proxy_in1_28870), .in1(sig_out_bus_mergerproxy_in1_2887010_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2886711_ (.out1(proxy_in2_28867), .in1(sig_out_bus_mergerproxy_in2_2886711_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2886812_ (.out1(proxy_in2_28868), .in1(sig_out_bus_mergerproxy_in2_2886812_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2886913_ (.out1(proxy_in2_28869), .in1(sig_out_bus_mergerproxy_in2_2886913_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2887014_ (.out1(proxy_in2_28870), .in1(sig_out_bus_mergerproxy_in2_2887014_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2886715_ (.out1(proxy_in3_28867), .in1(sig_out_bus_mergerproxy_in3_2886715_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2886816_ (.out1(proxy_in3_28868), .in1(sig_out_bus_mergerproxy_in3_2886816_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2886917_ (.out1(proxy_in3_28869), .in1(sig_out_bus_mergerproxy_in3_2886917_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2887018_ (.out1(proxy_in3_28870), .in1(sig_out_bus_mergerproxy_in3_2887018_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886719_ (.out1(proxy_sel_LOAD_28867), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886719_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886820_ (.out1(proxy_sel_LOAD_28868), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886820_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886921_ (.out1(proxy_sel_LOAD_28869), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886921_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2887022_ (.out1(proxy_sel_LOAD_28870), .in1(sig_out_bus_mergerproxy_sel_LOAD_2887022_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886723_ (.out1(proxy_sel_STORE_28867), .in1(sig_out_bus_mergerproxy_sel_STORE_2886723_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886824_ (.out1(proxy_sel_STORE_28868), .in1(sig_out_bus_mergerproxy_sel_STORE_2886824_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886925_ (.out1(proxy_sel_STORE_28869), .in1(sig_out_bus_mergerproxy_sel_STORE_2886925_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2887026_ (.out1(proxy_sel_STORE_28870), .in1(sig_out_bus_mergerproxy_sel_STORE_2887026_));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(4), .BITSIZE_out1(9), .LSB_PARAMETER(0)) ui_pointer_plus_expr_FU_8_8_8_155_i8 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_155_i8_ui_pointer_plus_expr_FU_8_8_8_155_i8), .in1(out_reg_4_reg_4), .in2(out_reg_18_reg_18));
  // io-signal post fix
  assign OUT_CONDITION_kruskalF_28880_29558 = out_read_cond_FU_40_i0_fu_kruskalF_28880_29558;
  assign OUT_CONDITION_kruskalF_28880_29786 = out_read_cond_FU_93_i0_fu_kruskalF_28880_29786;
  assign OUT_CONDITION_kruskalF_28880_29801 = out_read_cond_FU_106_i0_fu_kruskalF_28880_29801;
  assign OUT_CONDITION_kruskalF_28880_29807 = out_read_cond_FU_108_i0_fu_kruskalF_28880_29807;
  assign OUT_CONDITION_kruskalF_28880_29812 = out_read_cond_FU_125_i0_fu_kruskalF_28880_29812;
  assign OUT_MULTIIF_kruskalF_28880_30583 = out_multi_read_cond_FU_39_i0_fu_kruskalF_28880_30583;
  assign OUT_MULTIIF_kruskalF_28880_30590 = out_multi_read_cond_FU_84_i0_fu_kruskalF_28880_30590;

endmodule

// FSM based controller description for kruskalF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_kruskalF(done_port, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE, fuselector_BMEMORY_CTRLN_126_i0_LOAD, fuselector_BMEMORY_CTRLN_126_i0_STORE, selector_MUX_153_reg_15_0_0_0, selector_MUX_154_reg_16_0_0_0, selector_MUX_155_reg_17_0_0_0, selector_MUX_155_reg_17_0_0_1, selector_MUX_160_reg_21_0_0_0, selector_MUX_168_reg_29_0_0_0, selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0, selector_MUX_170_reg_30_0_0_0, selector_MUX_171_reg_31_0_0_0, selector_MUX_183_reg_42_0_0_0, selector_MUX_184_reg_43_0_0_0, selector_MUX_185_reg_44_0_0_0, selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0, selector_MUX_200_reg_58_0_0_0, selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0, selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1, selector_MUX_25_BMEMORY_CTRLN_126_i0_1_0_0, selector_MUX_49_PROXY_CTRLN_7_i0_0_0_0, selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0, selector_MUX_50_PROXY_CTRLN_7_i0_1_0_0, selector_MUX_53_PROXY_CTRLN_8_i0_0_0_0, selector_MUX_53_PROXY_CTRLN_8_i0_0_0_1, selector_MUX_54_PROXY_CTRLN_8_i0_1_0_0, selector_MUX_54_PROXY_CTRLN_8_i0_1_0_1, selector_MUX_54_PROXY_CTRLN_8_i0_1_0_2, selector_MUX_54_PROXY_CTRLN_8_i0_1_1_0, selector_MUX_57_PROXY_CTRLN_8_i1_0_0_0, selector_MUX_58_PROXY_CTRLN_8_i1_1_0_0, selector_MUX_58_PROXY_CTRLN_8_i1_1_0_1, selector_MUX_62_PROXY_CTRLN_9_i0_1_0_0, selector_MUX_62_PROXY_CTRLN_9_i0_1_0_1, fuselector_PROXY_CTRLN_6_i0_LOAD, fuselector_PROXY_CTRLN_6_i0_STORE, fuselector_PROXY_CTRLN_7_i0_LOAD, fuselector_PROXY_CTRLN_7_i0_STORE, fuselector_PROXY_CTRLN_8_i0_LOAD, fuselector_PROXY_CTRLN_8_i0_STORE, fuselector_PROXY_CTRLN_8_i1_LOAD, fuselector_PROXY_CTRLN_8_i1_STORE, fuselector_PROXY_CTRLN_9_i0_LOAD, fuselector_PROXY_CTRLN_9_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_29, wrenable_reg_3, wrenable_reg_30, wrenable_reg_31, wrenable_reg_32, wrenable_reg_33, wrenable_reg_34, wrenable_reg_35, wrenable_reg_36, wrenable_reg_37, wrenable_reg_38, wrenable_reg_39, wrenable_reg_4, wrenable_reg_40, wrenable_reg_41, wrenable_reg_42, wrenable_reg_43, wrenable_reg_44, wrenable_reg_45, wrenable_reg_46, wrenable_reg_47, wrenable_reg_48, wrenable_reg_49, wrenable_reg_5, wrenable_reg_50, wrenable_reg_51, wrenable_reg_52, wrenable_reg_53, wrenable_reg_54, wrenable_reg_55, wrenable_reg_56, wrenable_reg_57, wrenable_reg_58, wrenable_reg_59, wrenable_reg_6, wrenable_reg_60, wrenable_reg_61, wrenable_reg_62, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_kruskalF_28880_29558, OUT_CONDITION_kruskalF_28880_29786, OUT_CONDITION_kruskalF_28880_29801, OUT_CONDITION_kruskalF_28880_29807, OUT_CONDITION_kruskalF_28880_29812, OUT_MULTIIF_kruskalF_28880_30583, OUT_MULTIIF_kruskalF_28880_30590, clock, reset, start_port);
  // IN
  input OUT_CONDITION_kruskalF_28880_29558;
  input OUT_CONDITION_kruskalF_28880_29786;
  input OUT_CONDITION_kruskalF_28880_29801;
  input OUT_CONDITION_kruskalF_28880_29807;
  input OUT_CONDITION_kruskalF_28880_29812;
  input [1:0] OUT_MULTIIF_kruskalF_28880_30583;
  input [1:0] OUT_MULTIIF_kruskalF_28880_30590;
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
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE;
  output fuselector_BMEMORY_CTRLN_126_i0_LOAD;
  output fuselector_BMEMORY_CTRLN_126_i0_STORE;
  output selector_MUX_153_reg_15_0_0_0;
  output selector_MUX_154_reg_16_0_0_0;
  output selector_MUX_155_reg_17_0_0_0;
  output selector_MUX_155_reg_17_0_0_1;
  output selector_MUX_160_reg_21_0_0_0;
  output selector_MUX_168_reg_29_0_0_0;
  output selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0;
  output selector_MUX_170_reg_30_0_0_0;
  output selector_MUX_171_reg_31_0_0_0;
  output selector_MUX_183_reg_42_0_0_0;
  output selector_MUX_184_reg_43_0_0_0;
  output selector_MUX_185_reg_44_0_0_0;
  output selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0;
  output selector_MUX_200_reg_58_0_0_0;
  output selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0;
  output selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1;
  output selector_MUX_25_BMEMORY_CTRLN_126_i0_1_0_0;
  output selector_MUX_49_PROXY_CTRLN_7_i0_0_0_0;
  output selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0;
  output selector_MUX_50_PROXY_CTRLN_7_i0_1_0_0;
  output selector_MUX_53_PROXY_CTRLN_8_i0_0_0_0;
  output selector_MUX_53_PROXY_CTRLN_8_i0_0_0_1;
  output selector_MUX_54_PROXY_CTRLN_8_i0_1_0_0;
  output selector_MUX_54_PROXY_CTRLN_8_i0_1_0_1;
  output selector_MUX_54_PROXY_CTRLN_8_i0_1_0_2;
  output selector_MUX_54_PROXY_CTRLN_8_i0_1_1_0;
  output selector_MUX_57_PROXY_CTRLN_8_i1_0_0_0;
  output selector_MUX_58_PROXY_CTRLN_8_i1_1_0_0;
  output selector_MUX_58_PROXY_CTRLN_8_i1_1_0_1;
  output selector_MUX_62_PROXY_CTRLN_9_i0_1_0_0;
  output selector_MUX_62_PROXY_CTRLN_9_i0_1_0_1;
  output fuselector_PROXY_CTRLN_6_i0_LOAD;
  output fuselector_PROXY_CTRLN_6_i0_STORE;
  output fuselector_PROXY_CTRLN_7_i0_LOAD;
  output fuselector_PROXY_CTRLN_7_i0_STORE;
  output fuselector_PROXY_CTRLN_8_i0_LOAD;
  output fuselector_PROXY_CTRLN_8_i0_STORE;
  output fuselector_PROXY_CTRLN_8_i1_LOAD;
  output fuselector_PROXY_CTRLN_8_i1_STORE;
  output fuselector_PROXY_CTRLN_9_i0_LOAD;
  output fuselector_PROXY_CTRLN_9_i0_STORE;
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
  output wrenable_reg_54;
  output wrenable_reg_55;
  output wrenable_reg_56;
  output wrenable_reg_57;
  output wrenable_reg_58;
  output wrenable_reg_59;
  output wrenable_reg_6;
  output wrenable_reg_60;
  output wrenable_reg_61;
  output wrenable_reg_62;
  output wrenable_reg_7;
  output wrenable_reg_8;
  output wrenable_reg_9;
  parameter [42:0] S_0 = 43'b0000000000000000000000000000000000000000001,
    S_1 = 43'b0000000000000000000000000000000000000000010,
    S_2 = 43'b0000000000000000000000000000000000000000100,
    S_3 = 43'b0000000000000000000000000000000000000001000,
    S_4 = 43'b0000000000000000000000000000000000000010000,
    S_5 = 43'b0000000000000000000000000000000000000100000,
    S_6 = 43'b0000000000000000000000000000000000001000000,
    S_7 = 43'b0000000000000000000000000000000000010000000,
    S_8 = 43'b0000000000000000000000000000000000100000000,
    S_41 = 43'b0100000000000000000000000000000000000000000,
    S_9 = 43'b0000000000000000000000000000000001000000000,
    S_10 = 43'b0000000000000000000000000000000010000000000,
    S_11 = 43'b0000000000000000000000000000000100000000000,
    S_12 = 43'b0000000000000000000000000000001000000000000,
    S_13 = 43'b0000000000000000000000000000010000000000000,
    S_14 = 43'b0000000000000000000000000000100000000000000,
    S_15 = 43'b0000000000000000000000000001000000000000000,
    S_16 = 43'b0000000000000000000000000010000000000000000,
    S_17 = 43'b0000000000000000000000000100000000000000000,
    S_18 = 43'b0000000000000000000000001000000000000000000,
    S_19 = 43'b0000000000000000000000010000000000000000000,
    S_20 = 43'b0000000000000000000000100000000000000000000,
    S_21 = 43'b0000000000000000000001000000000000000000000,
    S_22 = 43'b0000000000000000000010000000000000000000000,
    S_32 = 43'b0000000000100000000000000000000000000000000,
    S_33 = 43'b0000000001000000000000000000000000000000000,
    S_34 = 43'b0000000010000000000000000000000000000000000,
    S_35 = 43'b0000000100000000000000000000000000000000000,
    S_36 = 43'b0000001000000000000000000000000000000000000,
    S_37 = 43'b0000010000000000000000000000000000000000000,
    S_23 = 43'b0000000000000000000100000000000000000000000,
    S_24 = 43'b0000000000000000001000000000000000000000000,
    S_25 = 43'b0000000000000000010000000000000000000000000,
    S_26 = 43'b0000000000000000100000000000000000000000000,
    S_27 = 43'b0000000000000001000000000000000000000000000,
    S_28 = 43'b0000000000000010000000000000000000000000000,
    S_29 = 43'b0000000000000100000000000000000000000000000,
    S_30 = 43'b0000000000001000000000000000000000000000000,
    S_31 = 43'b0000000000010000000000000000000000000000000,
    S_38 = 43'b0000100000000000000000000000000000000000000,
    S_39 = 43'b0001000000000000000000000000000000000000000,
    S_40 = 43'b0010000000000000000000000000000000000000000,
    S_42 = 43'b1000000000000000000000000000000000000000000;
  reg [42:0] _present_state, _next_state;
  reg done_port;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE;
  reg fuselector_BMEMORY_CTRLN_126_i0_LOAD;
  reg fuselector_BMEMORY_CTRLN_126_i0_STORE;
  reg selector_MUX_153_reg_15_0_0_0;
  reg selector_MUX_154_reg_16_0_0_0;
  reg selector_MUX_155_reg_17_0_0_0;
  reg selector_MUX_155_reg_17_0_0_1;
  reg selector_MUX_160_reg_21_0_0_0;
  reg selector_MUX_168_reg_29_0_0_0;
  reg selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0;
  reg selector_MUX_170_reg_30_0_0_0;
  reg selector_MUX_171_reg_31_0_0_0;
  reg selector_MUX_183_reg_42_0_0_0;
  reg selector_MUX_184_reg_43_0_0_0;
  reg selector_MUX_185_reg_44_0_0_0;
  reg selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0;
  reg selector_MUX_200_reg_58_0_0_0;
  reg selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0;
  reg selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1;
  reg selector_MUX_25_BMEMORY_CTRLN_126_i0_1_0_0;
  reg selector_MUX_49_PROXY_CTRLN_7_i0_0_0_0;
  reg selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0;
  reg selector_MUX_50_PROXY_CTRLN_7_i0_1_0_0;
  reg selector_MUX_53_PROXY_CTRLN_8_i0_0_0_0;
  reg selector_MUX_53_PROXY_CTRLN_8_i0_0_0_1;
  reg selector_MUX_54_PROXY_CTRLN_8_i0_1_0_0;
  reg selector_MUX_54_PROXY_CTRLN_8_i0_1_0_1;
  reg selector_MUX_54_PROXY_CTRLN_8_i0_1_0_2;
  reg selector_MUX_54_PROXY_CTRLN_8_i0_1_1_0;
  reg selector_MUX_57_PROXY_CTRLN_8_i1_0_0_0;
  reg selector_MUX_58_PROXY_CTRLN_8_i1_1_0_0;
  reg selector_MUX_58_PROXY_CTRLN_8_i1_1_0_1;
  reg selector_MUX_62_PROXY_CTRLN_9_i0_1_0_0;
  reg selector_MUX_62_PROXY_CTRLN_9_i0_1_0_1;
  reg fuselector_PROXY_CTRLN_6_i0_LOAD;
  reg fuselector_PROXY_CTRLN_6_i0_STORE;
  reg fuselector_PROXY_CTRLN_7_i0_LOAD;
  reg fuselector_PROXY_CTRLN_7_i0_STORE;
  reg fuselector_PROXY_CTRLN_8_i0_LOAD;
  reg fuselector_PROXY_CTRLN_8_i0_STORE;
  reg fuselector_PROXY_CTRLN_8_i1_LOAD;
  reg fuselector_PROXY_CTRLN_8_i1_STORE;
  reg fuselector_PROXY_CTRLN_9_i0_LOAD;
  reg fuselector_PROXY_CTRLN_9_i0_STORE;
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
  reg wrenable_reg_54;
  reg wrenable_reg_55;
  reg wrenable_reg_56;
  reg wrenable_reg_57;
  reg wrenable_reg_58;
  reg wrenable_reg_59;
  reg wrenable_reg_6;
  reg wrenable_reg_60;
  reg wrenable_reg_61;
  reg wrenable_reg_62;
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
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE = 1'b0;
    fuselector_BMEMORY_CTRLN_126_i0_LOAD = 1'b0;
    fuselector_BMEMORY_CTRLN_126_i0_STORE = 1'b0;
    selector_MUX_153_reg_15_0_0_0 = 1'b0;
    selector_MUX_154_reg_16_0_0_0 = 1'b0;
    selector_MUX_155_reg_17_0_0_0 = 1'b0;
    selector_MUX_155_reg_17_0_0_1 = 1'b0;
    selector_MUX_160_reg_21_0_0_0 = 1'b0;
    selector_MUX_168_reg_29_0_0_0 = 1'b0;
    selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0 = 1'b0;
    selector_MUX_170_reg_30_0_0_0 = 1'b0;
    selector_MUX_171_reg_31_0_0_0 = 1'b0;
    selector_MUX_183_reg_42_0_0_0 = 1'b0;
    selector_MUX_184_reg_43_0_0_0 = 1'b0;
    selector_MUX_185_reg_44_0_0_0 = 1'b0;
    selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 = 1'b0;
    selector_MUX_200_reg_58_0_0_0 = 1'b0;
    selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0 = 1'b0;
    selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1 = 1'b0;
    selector_MUX_25_BMEMORY_CTRLN_126_i0_1_0_0 = 1'b0;
    selector_MUX_49_PROXY_CTRLN_7_i0_0_0_0 = 1'b0;
    selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0 = 1'b0;
    selector_MUX_50_PROXY_CTRLN_7_i0_1_0_0 = 1'b0;
    selector_MUX_53_PROXY_CTRLN_8_i0_0_0_0 = 1'b0;
    selector_MUX_53_PROXY_CTRLN_8_i0_0_0_1 = 1'b0;
    selector_MUX_54_PROXY_CTRLN_8_i0_1_0_0 = 1'b0;
    selector_MUX_54_PROXY_CTRLN_8_i0_1_0_1 = 1'b0;
    selector_MUX_54_PROXY_CTRLN_8_i0_1_0_2 = 1'b0;
    selector_MUX_54_PROXY_CTRLN_8_i0_1_1_0 = 1'b0;
    selector_MUX_57_PROXY_CTRLN_8_i1_0_0_0 = 1'b0;
    selector_MUX_58_PROXY_CTRLN_8_i1_1_0_0 = 1'b0;
    selector_MUX_58_PROXY_CTRLN_8_i1_1_0_1 = 1'b0;
    selector_MUX_62_PROXY_CTRLN_9_i0_1_0_0 = 1'b0;
    selector_MUX_62_PROXY_CTRLN_9_i0_1_0_1 = 1'b0;
    fuselector_PROXY_CTRLN_6_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_6_i0_STORE = 1'b0;
    fuselector_PROXY_CTRLN_7_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_7_i0_STORE = 1'b0;
    fuselector_PROXY_CTRLN_8_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_8_i0_STORE = 1'b0;
    fuselector_PROXY_CTRLN_8_i1_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_8_i1_STORE = 1'b0;
    fuselector_PROXY_CTRLN_9_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_9_i0_STORE = 1'b0;
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
    wrenable_reg_54 = 1'b0;
    wrenable_reg_55 = 1'b0;
    wrenable_reg_56 = 1'b0;
    wrenable_reg_57 = 1'b0;
    wrenable_reg_58 = 1'b0;
    wrenable_reg_59 = 1'b0;
    wrenable_reg_6 = 1'b0;
    wrenable_reg_60 = 1'b0;
    wrenable_reg_61 = 1'b0;
    wrenable_reg_62 = 1'b0;
    wrenable_reg_7 = 1'b0;
    wrenable_reg_8 = 1'b0;
    wrenable_reg_9 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD = 1'b1;
          selector_MUX_49_PROXY_CTRLN_7_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_7_i0_STORE = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_12 = 1'b1;
          wrenable_reg_13 = 1'b1;
          wrenable_reg_14 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_6 = 1'b1;
          wrenable_reg_7 = 1'b1;
          wrenable_reg_8 = 1'b1;
          wrenable_reg_9 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          selector_MUX_153_reg_15_0_0_0 = 1'bX;
          selector_MUX_154_reg_16_0_0_0 = 1'bX;
          selector_MUX_155_reg_17_0_0_0 = 1'bX;
          selector_MUX_155_reg_17_0_0_1 = 1'bX;
          selector_MUX_160_reg_21_0_0_0 = 1'bX;
          selector_MUX_168_reg_29_0_0_0 = 1'bX;
          selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0 = 1'bX;
          selector_MUX_170_reg_30_0_0_0 = 1'bX;
          selector_MUX_171_reg_31_0_0_0 = 1'bX;
          selector_MUX_183_reg_42_0_0_0 = 1'bX;
          selector_MUX_184_reg_43_0_0_0 = 1'bX;
          selector_MUX_185_reg_44_0_0_0 = 1'bX;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 = 1'bX;
          selector_MUX_200_reg_58_0_0_0 = 1'bX;
          selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0 = 1'bX;
          selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1 = 1'bX;
          selector_MUX_25_BMEMORY_CTRLN_126_i0_1_0_0 = 1'bX;
          selector_MUX_49_PROXY_CTRLN_7_i0_0_0_0 = 1'bX;
          selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0 = 1'bX;
          selector_MUX_50_PROXY_CTRLN_7_i0_1_0_0 = 1'bX;
          selector_MUX_53_PROXY_CTRLN_8_i0_0_0_0 = 1'bX;
          selector_MUX_53_PROXY_CTRLN_8_i0_0_0_1 = 1'bX;
          selector_MUX_54_PROXY_CTRLN_8_i0_1_0_0 = 1'bX;
          selector_MUX_54_PROXY_CTRLN_8_i0_1_0_1 = 1'bX;
          selector_MUX_54_PROXY_CTRLN_8_i0_1_0_2 = 1'bX;
          selector_MUX_54_PROXY_CTRLN_8_i0_1_1_0 = 1'bX;
          selector_MUX_57_PROXY_CTRLN_8_i1_0_0_0 = 1'bX;
          selector_MUX_58_PROXY_CTRLN_8_i1_1_0_0 = 1'bX;
          selector_MUX_58_PROXY_CTRLN_8_i1_1_0_1 = 1'bX;
          selector_MUX_62_PROXY_CTRLN_9_i0_1_0_0 = 1'bX;
          selector_MUX_62_PROXY_CTRLN_9_i0_1_0_1 = 1'bX;
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
          wrenable_reg_54 = 1'bX;
          wrenable_reg_55 = 1'bX;
          wrenable_reg_56 = 1'bX;
          wrenable_reg_57 = 1'bX;
          wrenable_reg_58 = 1'bX;
          wrenable_reg_59 = 1'bX;
          wrenable_reg_6 = 1'bX;
          wrenable_reg_60 = 1'bX;
          wrenable_reg_61 = 1'bX;
          wrenable_reg_62 = 1'bX;
          wrenable_reg_7 = 1'bX;
          wrenable_reg_8 = 1'bX;
          wrenable_reg_9 = 1'bX;
          _next_state = S_0;
        end
      S_1 :
        begin
          selector_MUX_153_reg_15_0_0_0 = 1'b1;
          selector_MUX_154_reg_16_0_0_0 = 1'b1;
          selector_MUX_155_reg_17_0_0_0 = 1'b1;
          wrenable_reg_15 = 1'b1;
          wrenable_reg_16 = 1'b1;
          wrenable_reg_17 = 1'b1;
          _next_state = S_2;
        end
      S_2 :
        begin
          selector_MUX_155_reg_17_0_0_1 = 1'b1;
          selector_MUX_160_reg_21_0_0_0 = 1'b1;
          wrenable_reg_17 = 1'b1;
          wrenable_reg_18 = 1'b1;
          wrenable_reg_19 = 1'b1;
          wrenable_reg_21 = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          wrenable_reg_20 = 1'b1;
          wrenable_reg_21 = 1'b1;
          wrenable_reg_22 = 1'b1;
          wrenable_reg_23 = 1'b1;
          wrenable_reg_24 = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          fuselector_PROXY_CTRLN_9_i0_LOAD = 1'b1;
          _next_state = S_5;
        end
      S_5 :
        begin
          wrenable_reg_25 = 1'b1;
          _next_state = S_6;
        end
      S_6 :
        begin
          wrenable_reg_15 = 1'b1;
          wrenable_reg_16 = 1'b1;
          wrenable_reg_17 = 1'b1;
          if (OUT_MULTIIF_kruskalF_28880_30583[0] == 1'b1)
            begin
              _next_state = S_3;
              wrenable_reg_17 = 1'b0;
            end
          else if (OUT_MULTIIF_kruskalF_28880_30583[1] == 1'b1)
            begin
              _next_state = S_2;
            end
          else
            begin
              _next_state = S_7;
              wrenable_reg_17 = 1'b0;
            end
        end
      S_7 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE = 1'b1;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 = 1'b1;
          selector_MUX_49_PROXY_CTRLN_7_i0_0_0_0 = 1'b1;
          selector_MUX_50_PROXY_CTRLN_7_i0_1_0_0 = 1'b1;
          selector_MUX_57_PROXY_CTRLN_8_i1_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_6_i0_STORE = 1'b1;
          fuselector_PROXY_CTRLN_7_i0_STORE = 1'b1;
          fuselector_PROXY_CTRLN_8_i0_STORE = 1'b1;
          fuselector_PROXY_CTRLN_8_i1_STORE = 1'b1;
          wrenable_reg_26 = 1'b1;
          _next_state = S_8;
        end
      S_8 :
        begin
          selector_MUX_53_PROXY_CTRLN_8_i0_0_0_1 = 1'b1;
          selector_MUX_54_PROXY_CTRLN_8_i0_1_0_0 = 1'b1;
          selector_MUX_58_PROXY_CTRLN_8_i1_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_8_i0_STORE = 1'b1;
          fuselector_PROXY_CTRLN_8_i1_STORE = 1'b1;
          if (OUT_CONDITION_kruskalF_28880_29558 == 1'b1)
            begin
              _next_state = S_9;
            end
          else
            begin
              _next_state = S_41;
              done_port = 1'b1;
            end
        end
      S_41 :
        begin
          _next_state = S_0;
        end
      S_9 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD = 1'b1;
          selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0 = 1'b1;
          _next_state = S_10;
        end
      S_10 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD = 1'b1;
          wrenable_reg_27 = 1'b1;
          wrenable_reg_28 = 1'b1;
          _next_state = S_11;
        end
      S_11 :
        begin
          selector_MUX_171_reg_31_0_0_0 = 1'b1;
          selector_MUX_183_reg_42_0_0_0 = 1'b1;
          selector_MUX_184_reg_43_0_0_0 = 1'b1;
          selector_MUX_185_reg_44_0_0_0 = 1'b1;
          wrenable_reg_31 = 1'b1;
          wrenable_reg_42 = 1'b1;
          wrenable_reg_43 = 1'b1;
          wrenable_reg_44 = 1'b1;
          _next_state = S_12;
        end
      S_12 :
        begin
          selector_MUX_170_reg_30_0_0_0 = 1'b1;
          wrenable_reg_29 = 1'b1;
          wrenable_reg_30 = 1'b1;
          wrenable_reg_31 = 1'b1;
          wrenable_reg_32 = 1'b1;
          wrenable_reg_33 = 1'b1;
          wrenable_reg_34 = 1'b1;
          _next_state = S_13;
        end
      S_13 :
        begin
          wrenable_reg_35 = 1'b1;
          wrenable_reg_36 = 1'b1;
          wrenable_reg_37 = 1'b1;
          wrenable_reg_38 = 1'b1;
          _next_state = S_14;
        end
      S_14 :
        begin
          selector_MUX_62_PROXY_CTRLN_9_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_9_i0_LOAD = 1'b1;
          _next_state = S_15;
        end
      S_15 :
        begin
          wrenable_reg_39 = 1'b1;
          wrenable_reg_40 = 1'b1;
          wrenable_reg_41 = 1'b1;
          _next_state = S_16;
        end
      S_16 :
        begin
          selector_MUX_168_reg_29_0_0_0 = 1'b1;
          wrenable_reg_29 = 1'b1;
          wrenable_reg_30 = 1'b1;
          wrenable_reg_42 = 1'b1;
          wrenable_reg_43 = 1'b1;
          wrenable_reg_44 = 1'b1;
          if (OUT_MULTIIF_kruskalF_28880_30590[0] == 1'b1)
            begin
              _next_state = S_13;
            end
          else if (OUT_MULTIIF_kruskalF_28880_30590[1] == 1'b1)
            begin
              _next_state = S_12;
              selector_MUX_168_reg_29_0_0_0 = 1'b0;
              wrenable_reg_29 = 1'b0;
              wrenable_reg_30 = 1'b0;
            end
          else
            begin
              _next_state = S_17;
              selector_MUX_168_reg_29_0_0_0 = 1'b0;
              wrenable_reg_29 = 1'b0;
              wrenable_reg_30 = 1'b0;
            end
        end
      S_17 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE = 1'b1;
          _next_state = S_18;
        end
      S_18 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD = 1'b1;
          _next_state = S_19;
        end
      S_19 :
        begin
          wrenable_reg_45 = 1'b1;
          wrenable_reg_46 = 1'b1;
          wrenable_reg_47 = 1'b1;
          wrenable_reg_48 = 1'b1;
          wrenable_reg_49 = 1'b1;
          _next_state = S_20;
        end
      S_20 :
        begin
          selector_MUX_54_PROXY_CTRLN_8_i0_1_1_0 = 1'b1;
          selector_MUX_58_PROXY_CTRLN_8_i1_1_0_1 = 1'b1;
          selector_MUX_62_PROXY_CTRLN_9_i0_1_0_1 = 1'b1;
          fuselector_PROXY_CTRLN_8_i0_LOAD = 1'b1;
          fuselector_PROXY_CTRLN_8_i1_LOAD = 1'b1;
          fuselector_PROXY_CTRLN_9_i0_STORE = 1'b1;
          _next_state = S_21;
        end
      S_21 :
        begin
          wrenable_reg_50 = 1'b1;
          wrenable_reg_51 = 1'b1;
          wrenable_reg_52 = 1'b1;
          _next_state = S_22;
        end
      S_22 :
        begin
          if (OUT_CONDITION_kruskalF_28880_29786 == 1'b1)
            begin
              _next_state = S_23;
            end
          else
            begin
              _next_state = S_32;
            end
        end
      S_32 :
        begin
          wrenable_reg_53 = 1'b1;
          _next_state = S_33;
        end
      S_33 :
        begin
          fuselector_BMEMORY_CTRLN_126_i0_STORE = 1'b1;
          _next_state = S_34;
        end
      S_34 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD = 1'b1;
          _next_state = S_35;
        end
      S_35 :
        begin
          wrenable_reg_54 = 1'b1;
          wrenable_reg_55 = 1'b1;
          _next_state = S_36;
        end
      S_36 :
        begin
          wrenable_reg_56 = 1'b1;
          _next_state = S_37;
        end
      S_37 :
        begin
          fuselector_BMEMORY_CTRLN_126_i0_STORE = 1'b1;
          selector_MUX_25_BMEMORY_CTRLN_126_i0_1_0_0 = 1'b1;
          _next_state = S_38;
        end
      S_23 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE = 1'b1;
          selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0 = 1'b1;
          selector_MUX_200_reg_58_0_0_0 = 1'b1;
          selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0 = 1'b1;
          wrenable_reg_58 = 1'b1;
          _next_state = S_24;
        end
      S_24 :
        begin
          selector_MUX_54_PROXY_CTRLN_8_i0_1_0_2 = 1'b1;
          fuselector_PROXY_CTRLN_8_i0_LOAD = 1'b1;
          wrenable_reg_57 = 1'b1;
          wrenable_reg_58 = 1'b1;
          _next_state = S_25;
        end
      S_25 :
        begin
          wrenable_reg_59 = 1'b1;
          _next_state = S_26;
        end
      S_26 :
        begin
          if (OUT_CONDITION_kruskalF_28880_29801 == 1'b1)
            begin
              _next_state = S_27;
            end
          else
            begin
              _next_state = S_30;
            end
        end
      S_27 :
        begin
          selector_MUX_54_PROXY_CTRLN_8_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRLN_8_i0_LOAD = 1'b1;
          _next_state = S_28;
        end
      S_28 :
        begin
          wrenable_reg_60 = 1'b1;
          _next_state = S_29;
        end
      S_29 :
        begin
          selector_MUX_53_PROXY_CTRLN_8_i0_0_0_0 = 1'b1;
          selector_MUX_54_PROXY_CTRLN_8_i0_1_0_1 = 1'b1;
          selector_MUX_54_PROXY_CTRLN_8_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRLN_8_i0_STORE = 1'b1;
          _next_state = S_30;
        end
      S_30 :
        begin
          if (OUT_CONDITION_kruskalF_28880_29807 == 1'b1)
            begin
              _next_state = S_24;
            end
          else
            begin
              _next_state = S_31;
            end
        end
      S_31 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE = 1'b1;
          selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1 = 1'b1;
          _next_state = S_38;
        end
      S_38 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD = 1'b1;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 = 1'b1;
          selector_MUX_50_PROXY_CTRLN_7_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_7_i0_LOAD = 1'b1;
          _next_state = S_39;
        end
      S_39 :
        begin
          wrenable_reg_61 = 1'b1;
          wrenable_reg_62 = 1'b1;
          _next_state = S_40;
        end
      S_40 :
        begin
          selector_MUX_50_PROXY_CTRLN_7_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_7_i0_STORE = 1'b1;
          if (OUT_CONDITION_kruskalF_28880_29812 == 1'b1)
            begin
              _next_state = S_9;
            end
          else
            begin
              _next_state = S_42;
              done_port = 1'b1;
            end
        end
      S_42 :
        begin
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_153_reg_15_0_0_0 = 1'bX;
          selector_MUX_154_reg_16_0_0_0 = 1'bX;
          selector_MUX_155_reg_17_0_0_0 = 1'bX;
          selector_MUX_155_reg_17_0_0_1 = 1'bX;
          selector_MUX_160_reg_21_0_0_0 = 1'bX;
          selector_MUX_168_reg_29_0_0_0 = 1'bX;
          selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0 = 1'bX;
          selector_MUX_170_reg_30_0_0_0 = 1'bX;
          selector_MUX_171_reg_31_0_0_0 = 1'bX;
          selector_MUX_183_reg_42_0_0_0 = 1'bX;
          selector_MUX_184_reg_43_0_0_0 = 1'bX;
          selector_MUX_185_reg_44_0_0_0 = 1'bX;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 = 1'bX;
          selector_MUX_200_reg_58_0_0_0 = 1'bX;
          selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0 = 1'bX;
          selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1 = 1'bX;
          selector_MUX_25_BMEMORY_CTRLN_126_i0_1_0_0 = 1'bX;
          selector_MUX_49_PROXY_CTRLN_7_i0_0_0_0 = 1'bX;
          selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0 = 1'bX;
          selector_MUX_50_PROXY_CTRLN_7_i0_1_0_0 = 1'bX;
          selector_MUX_53_PROXY_CTRLN_8_i0_0_0_0 = 1'bX;
          selector_MUX_53_PROXY_CTRLN_8_i0_0_0_1 = 1'bX;
          selector_MUX_54_PROXY_CTRLN_8_i0_1_0_0 = 1'bX;
          selector_MUX_54_PROXY_CTRLN_8_i0_1_0_1 = 1'bX;
          selector_MUX_54_PROXY_CTRLN_8_i0_1_0_2 = 1'bX;
          selector_MUX_54_PROXY_CTRLN_8_i0_1_1_0 = 1'bX;
          selector_MUX_57_PROXY_CTRLN_8_i1_0_0_0 = 1'bX;
          selector_MUX_58_PROXY_CTRLN_8_i1_1_0_0 = 1'bX;
          selector_MUX_58_PROXY_CTRLN_8_i1_1_0_1 = 1'bX;
          selector_MUX_62_PROXY_CTRLN_9_i0_1_0_0 = 1'bX;
          selector_MUX_62_PROXY_CTRLN_9_i0_1_0_1 = 1'bX;
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
          wrenable_reg_54 = 1'bX;
          wrenable_reg_55 = 1'bX;
          wrenable_reg_56 = 1'bX;
          wrenable_reg_57 = 1'bX;
          wrenable_reg_58 = 1'bX;
          wrenable_reg_59 = 1'bX;
          wrenable_reg_6 = 1'bX;
          wrenable_reg_60 = 1'bX;
          wrenable_reg_61 = 1'bX;
          wrenable_reg_62 = 1'bX;
          wrenable_reg_7 = 1'bX;
          wrenable_reg_8 = 1'bX;
          wrenable_reg_9 = 1'bX;
        end
    endcase
  end
endmodule

// Top component for kruskalF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module kruskalF(clock, reset, start_port, done_port, a, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, proxy_out1_28867, proxy_out1_28868, proxy_out1_28869, proxy_out1_28870, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Sout_Rdata_ram, Sout_DataRdy, proxy_in1_28867, proxy_in2_28867, proxy_in3_28867, proxy_sel_LOAD_28867, proxy_sel_STORE_28867, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, proxy_in1_28869, proxy_in2_28869, proxy_in3_28869, proxy_sel_LOAD_28869, proxy_sel_STORE_28869, proxy_in1_28870, proxy_in2_28870, proxy_in3_28870, proxy_sel_LOAD_28870, proxy_sel_STORE_28870, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size);
  parameter MEM_var_28859_28880=160, MEM_var_28861_28880=192, MEM_var_28862_28880=224, MEM_var_28864_28880=256, MEM_var_28865_28880=288, MEM_var_28866_28880=320, MEM_var_28867_28882=32, MEM_var_28868_28882=64, MEM_var_28869_28882=96, MEM_var_28870_28882=128;
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
  input [15:0] proxy_out1_28867;
  input [15:0] proxy_out1_28868;
  input [15:0] proxy_out1_28869;
  input [15:0] proxy_out1_28870;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [17:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  // OUT
  output done_port;
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [15:0] proxy_in1_28867;
  output [17:0] proxy_in2_28867;
  output [7:0] proxy_in3_28867;
  output [1:0] proxy_sel_LOAD_28867;
  output [1:0] proxy_sel_STORE_28867;
  output [15:0] proxy_in1_28868;
  output [17:0] proxy_in2_28868;
  output [7:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [15:0] proxy_in1_28869;
  output [17:0] proxy_in2_28869;
  output [7:0] proxy_in3_28869;
  output [1:0] proxy_sel_LOAD_28869;
  output [1:0] proxy_sel_STORE_28869;
  output [15:0] proxy_in1_28870;
  output [17:0] proxy_in2_28870;
  output [7:0] proxy_in3_28870;
  output [1:0] proxy_sel_LOAD_28870;
  output [1:0] proxy_sel_STORE_28870;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [17:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  // Component and signal declarations
  wire OUT_CONDITION_kruskalF_28880_29558;
  wire OUT_CONDITION_kruskalF_28880_29786;
  wire OUT_CONDITION_kruskalF_28880_29801;
  wire OUT_CONDITION_kruskalF_28880_29807;
  wire OUT_CONDITION_kruskalF_28880_29812;
  wire [1:0] OUT_MULTIIF_kruskalF_28880_30583;
  wire [1:0] OUT_MULTIIF_kruskalF_28880_30590;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE;
  wire fuselector_BMEMORY_CTRLN_126_i0_LOAD;
  wire fuselector_BMEMORY_CTRLN_126_i0_STORE;
  wire fuselector_PROXY_CTRLN_6_i0_LOAD;
  wire fuselector_PROXY_CTRLN_6_i0_STORE;
  wire fuselector_PROXY_CTRLN_7_i0_LOAD;
  wire fuselector_PROXY_CTRLN_7_i0_STORE;
  wire fuselector_PROXY_CTRLN_8_i0_LOAD;
  wire fuselector_PROXY_CTRLN_8_i0_STORE;
  wire fuselector_PROXY_CTRLN_8_i1_LOAD;
  wire fuselector_PROXY_CTRLN_8_i1_STORE;
  wire fuselector_PROXY_CTRLN_9_i0_LOAD;
  wire fuselector_PROXY_CTRLN_9_i0_STORE;
  wire selector_MUX_153_reg_15_0_0_0;
  wire selector_MUX_154_reg_16_0_0_0;
  wire selector_MUX_155_reg_17_0_0_0;
  wire selector_MUX_155_reg_17_0_0_1;
  wire selector_MUX_160_reg_21_0_0_0;
  wire selector_MUX_168_reg_29_0_0_0;
  wire selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0;
  wire selector_MUX_170_reg_30_0_0_0;
  wire selector_MUX_171_reg_31_0_0_0;
  wire selector_MUX_183_reg_42_0_0_0;
  wire selector_MUX_184_reg_43_0_0_0;
  wire selector_MUX_185_reg_44_0_0_0;
  wire selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0;
  wire selector_MUX_200_reg_58_0_0_0;
  wire selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0;
  wire selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1;
  wire selector_MUX_25_BMEMORY_CTRLN_126_i0_1_0_0;
  wire selector_MUX_49_PROXY_CTRLN_7_i0_0_0_0;
  wire selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0;
  wire selector_MUX_50_PROXY_CTRLN_7_i0_1_0_0;
  wire selector_MUX_53_PROXY_CTRLN_8_i0_0_0_0;
  wire selector_MUX_53_PROXY_CTRLN_8_i0_0_0_1;
  wire selector_MUX_54_PROXY_CTRLN_8_i0_1_0_0;
  wire selector_MUX_54_PROXY_CTRLN_8_i0_1_0_1;
  wire selector_MUX_54_PROXY_CTRLN_8_i0_1_0_2;
  wire selector_MUX_54_PROXY_CTRLN_8_i0_1_1_0;
  wire selector_MUX_57_PROXY_CTRLN_8_i1_0_0_0;
  wire selector_MUX_58_PROXY_CTRLN_8_i1_1_0_0;
  wire selector_MUX_58_PROXY_CTRLN_8_i1_1_0_1;
  wire selector_MUX_62_PROXY_CTRLN_9_i0_1_0_0;
  wire selector_MUX_62_PROXY_CTRLN_9_i0_1_0_1;
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
  wire wrenable_reg_54;
  wire wrenable_reg_55;
  wire wrenable_reg_56;
  wire wrenable_reg_57;
  wire wrenable_reg_58;
  wire wrenable_reg_59;
  wire wrenable_reg_6;
  wire wrenable_reg_60;
  wire wrenable_reg_61;
  wire wrenable_reg_62;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  controller_kruskalF Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE), .fuselector_BMEMORY_CTRLN_126_i0_LOAD(fuselector_BMEMORY_CTRLN_126_i0_LOAD), .fuselector_BMEMORY_CTRLN_126_i0_STORE(fuselector_BMEMORY_CTRLN_126_i0_STORE), .selector_MUX_153_reg_15_0_0_0(selector_MUX_153_reg_15_0_0_0), .selector_MUX_154_reg_16_0_0_0(selector_MUX_154_reg_16_0_0_0), .selector_MUX_155_reg_17_0_0_0(selector_MUX_155_reg_17_0_0_0), .selector_MUX_155_reg_17_0_0_1(selector_MUX_155_reg_17_0_0_1), .selector_MUX_160_reg_21_0_0_0(selector_MUX_160_reg_21_0_0_0), .selector_MUX_168_reg_29_0_0_0(selector_MUX_168_reg_29_0_0_0), .selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0(selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0), .selector_MUX_170_reg_30_0_0_0(selector_MUX_170_reg_30_0_0_0), .selector_MUX_171_reg_31_0_0_0(selector_MUX_171_reg_31_0_0_0), .selector_MUX_183_reg_42_0_0_0(selector_MUX_183_reg_42_0_0_0), .selector_MUX_184_reg_43_0_0_0(selector_MUX_184_reg_43_0_0_0), .selector_MUX_185_reg_44_0_0_0(selector_MUX_185_reg_44_0_0_0), .selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0), .selector_MUX_200_reg_58_0_0_0(selector_MUX_200_reg_58_0_0_0), .selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0(selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0), .selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1(selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1), .selector_MUX_25_BMEMORY_CTRLN_126_i0_1_0_0(selector_MUX_25_BMEMORY_CTRLN_126_i0_1_0_0), .selector_MUX_49_PROXY_CTRLN_7_i0_0_0_0(selector_MUX_49_PROXY_CTRLN_7_i0_0_0_0), .selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0(selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0), .selector_MUX_50_PROXY_CTRLN_7_i0_1_0_0(selector_MUX_50_PROXY_CTRLN_7_i0_1_0_0), .selector_MUX_53_PROXY_CTRLN_8_i0_0_0_0(selector_MUX_53_PROXY_CTRLN_8_i0_0_0_0), .selector_MUX_53_PROXY_CTRLN_8_i0_0_0_1(selector_MUX_53_PROXY_CTRLN_8_i0_0_0_1), .selector_MUX_54_PROXY_CTRLN_8_i0_1_0_0(selector_MUX_54_PROXY_CTRLN_8_i0_1_0_0), .selector_MUX_54_PROXY_CTRLN_8_i0_1_0_1(selector_MUX_54_PROXY_CTRLN_8_i0_1_0_1), .selector_MUX_54_PROXY_CTRLN_8_i0_1_0_2(selector_MUX_54_PROXY_CTRLN_8_i0_1_0_2), .selector_MUX_54_PROXY_CTRLN_8_i0_1_1_0(selector_MUX_54_PROXY_CTRLN_8_i0_1_1_0), .selector_MUX_57_PROXY_CTRLN_8_i1_0_0_0(selector_MUX_57_PROXY_CTRLN_8_i1_0_0_0), .selector_MUX_58_PROXY_CTRLN_8_i1_1_0_0(selector_MUX_58_PROXY_CTRLN_8_i1_1_0_0), .selector_MUX_58_PROXY_CTRLN_8_i1_1_0_1(selector_MUX_58_PROXY_CTRLN_8_i1_1_0_1), .selector_MUX_62_PROXY_CTRLN_9_i0_1_0_0(selector_MUX_62_PROXY_CTRLN_9_i0_1_0_0), .selector_MUX_62_PROXY_CTRLN_9_i0_1_0_1(selector_MUX_62_PROXY_CTRLN_9_i0_1_0_1), .fuselector_PROXY_CTRLN_6_i0_LOAD(fuselector_PROXY_CTRLN_6_i0_LOAD), .fuselector_PROXY_CTRLN_6_i0_STORE(fuselector_PROXY_CTRLN_6_i0_STORE), .fuselector_PROXY_CTRLN_7_i0_LOAD(fuselector_PROXY_CTRLN_7_i0_LOAD), .fuselector_PROXY_CTRLN_7_i0_STORE(fuselector_PROXY_CTRLN_7_i0_STORE), .fuselector_PROXY_CTRLN_8_i0_LOAD(fuselector_PROXY_CTRLN_8_i0_LOAD), .fuselector_PROXY_CTRLN_8_i0_STORE(fuselector_PROXY_CTRLN_8_i0_STORE), .fuselector_PROXY_CTRLN_8_i1_LOAD(fuselector_PROXY_CTRLN_8_i1_LOAD), .fuselector_PROXY_CTRLN_8_i1_STORE(fuselector_PROXY_CTRLN_8_i1_STORE), .fuselector_PROXY_CTRLN_9_i0_LOAD(fuselector_PROXY_CTRLN_9_i0_LOAD), .fuselector_PROXY_CTRLN_9_i0_STORE(fuselector_PROXY_CTRLN_9_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_29(wrenable_reg_29), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_30(wrenable_reg_30), .wrenable_reg_31(wrenable_reg_31), .wrenable_reg_32(wrenable_reg_32), .wrenable_reg_33(wrenable_reg_33), .wrenable_reg_34(wrenable_reg_34), .wrenable_reg_35(wrenable_reg_35), .wrenable_reg_36(wrenable_reg_36), .wrenable_reg_37(wrenable_reg_37), .wrenable_reg_38(wrenable_reg_38), .wrenable_reg_39(wrenable_reg_39), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_40(wrenable_reg_40), .wrenable_reg_41(wrenable_reg_41), .wrenable_reg_42(wrenable_reg_42), .wrenable_reg_43(wrenable_reg_43), .wrenable_reg_44(wrenable_reg_44), .wrenable_reg_45(wrenable_reg_45), .wrenable_reg_46(wrenable_reg_46), .wrenable_reg_47(wrenable_reg_47), .wrenable_reg_48(wrenable_reg_48), .wrenable_reg_49(wrenable_reg_49), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_50(wrenable_reg_50), .wrenable_reg_51(wrenable_reg_51), .wrenable_reg_52(wrenable_reg_52), .wrenable_reg_53(wrenable_reg_53), .wrenable_reg_54(wrenable_reg_54), .wrenable_reg_55(wrenable_reg_55), .wrenable_reg_56(wrenable_reg_56), .wrenable_reg_57(wrenable_reg_57), .wrenable_reg_58(wrenable_reg_58), .wrenable_reg_59(wrenable_reg_59), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_60(wrenable_reg_60), .wrenable_reg_61(wrenable_reg_61), .wrenable_reg_62(wrenable_reg_62), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_kruskalF_28880_29558(OUT_CONDITION_kruskalF_28880_29558), .OUT_CONDITION_kruskalF_28880_29786(OUT_CONDITION_kruskalF_28880_29786), .OUT_CONDITION_kruskalF_28880_29801(OUT_CONDITION_kruskalF_28880_29801), .OUT_CONDITION_kruskalF_28880_29807(OUT_CONDITION_kruskalF_28880_29807), .OUT_CONDITION_kruskalF_28880_29812(OUT_CONDITION_kruskalF_28880_29812), .OUT_MULTIIF_kruskalF_28880_30583(OUT_MULTIIF_kruskalF_28880_30583), .OUT_MULTIIF_kruskalF_28880_30590(OUT_MULTIIF_kruskalF_28880_30590), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_kruskalF #(.MEM_var_28859_28880(MEM_var_28859_28880), .MEM_var_28861_28880(MEM_var_28861_28880), .MEM_var_28862_28880(MEM_var_28862_28880), .MEM_var_28864_28880(MEM_var_28864_28880), .MEM_var_28865_28880(MEM_var_28865_28880), .MEM_var_28866_28880(MEM_var_28866_28880), .MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28869_28882(MEM_var_28869_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .proxy_in1_28867(proxy_in1_28867), .proxy_in2_28867(proxy_in2_28867), .proxy_in3_28867(proxy_in3_28867), .proxy_sel_LOAD_28867(proxy_sel_LOAD_28867), .proxy_sel_STORE_28867(proxy_sel_STORE_28867), .proxy_in1_28868(proxy_in1_28868), .proxy_in2_28868(proxy_in2_28868), .proxy_in3_28868(proxy_in3_28868), .proxy_sel_LOAD_28868(proxy_sel_LOAD_28868), .proxy_sel_STORE_28868(proxy_sel_STORE_28868), .proxy_in1_28869(proxy_in1_28869), .proxy_in2_28869(proxy_in2_28869), .proxy_in3_28869(proxy_in3_28869), .proxy_sel_LOAD_28869(proxy_sel_LOAD_28869), .proxy_sel_STORE_28869(proxy_sel_STORE_28869), .proxy_in1_28870(proxy_in1_28870), .proxy_in2_28870(proxy_in2_28870), .proxy_in3_28870(proxy_in3_28870), .proxy_sel_LOAD_28870(proxy_sel_LOAD_28870), .proxy_sel_STORE_28870(proxy_sel_STORE_28870), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_CONDITION_kruskalF_28880_29558(OUT_CONDITION_kruskalF_28880_29558), .OUT_CONDITION_kruskalF_28880_29786(OUT_CONDITION_kruskalF_28880_29786), .OUT_CONDITION_kruskalF_28880_29801(OUT_CONDITION_kruskalF_28880_29801), .OUT_CONDITION_kruskalF_28880_29807(OUT_CONDITION_kruskalF_28880_29807), .OUT_CONDITION_kruskalF_28880_29812(OUT_CONDITION_kruskalF_28880_29812), .OUT_MULTIIF_kruskalF_28880_30583(OUT_MULTIIF_kruskalF_28880_30583), .OUT_MULTIIF_kruskalF_28880_30590(OUT_MULTIIF_kruskalF_28880_30590), .clock(clock), .reset(reset), .in_port_a(a), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28867(proxy_out1_28867), .proxy_out1_28868(proxy_out1_28868), .proxy_out1_28869(proxy_out1_28869), .proxy_out1_28870(proxy_out1_28870), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE), .fuselector_BMEMORY_CTRLN_126_i0_LOAD(fuselector_BMEMORY_CTRLN_126_i0_LOAD), .fuselector_BMEMORY_CTRLN_126_i0_STORE(fuselector_BMEMORY_CTRLN_126_i0_STORE), .selector_MUX_153_reg_15_0_0_0(selector_MUX_153_reg_15_0_0_0), .selector_MUX_154_reg_16_0_0_0(selector_MUX_154_reg_16_0_0_0), .selector_MUX_155_reg_17_0_0_0(selector_MUX_155_reg_17_0_0_0), .selector_MUX_155_reg_17_0_0_1(selector_MUX_155_reg_17_0_0_1), .selector_MUX_160_reg_21_0_0_0(selector_MUX_160_reg_21_0_0_0), .selector_MUX_168_reg_29_0_0_0(selector_MUX_168_reg_29_0_0_0), .selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0(selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0), .selector_MUX_170_reg_30_0_0_0(selector_MUX_170_reg_30_0_0_0), .selector_MUX_171_reg_31_0_0_0(selector_MUX_171_reg_31_0_0_0), .selector_MUX_183_reg_42_0_0_0(selector_MUX_183_reg_42_0_0_0), .selector_MUX_184_reg_43_0_0_0(selector_MUX_184_reg_43_0_0_0), .selector_MUX_185_reg_44_0_0_0(selector_MUX_185_reg_44_0_0_0), .selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0), .selector_MUX_200_reg_58_0_0_0(selector_MUX_200_reg_58_0_0_0), .selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0(selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0), .selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1(selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1), .selector_MUX_25_BMEMORY_CTRLN_126_i0_1_0_0(selector_MUX_25_BMEMORY_CTRLN_126_i0_1_0_0), .selector_MUX_49_PROXY_CTRLN_7_i0_0_0_0(selector_MUX_49_PROXY_CTRLN_7_i0_0_0_0), .selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0(selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0), .selector_MUX_50_PROXY_CTRLN_7_i0_1_0_0(selector_MUX_50_PROXY_CTRLN_7_i0_1_0_0), .selector_MUX_53_PROXY_CTRLN_8_i0_0_0_0(selector_MUX_53_PROXY_CTRLN_8_i0_0_0_0), .selector_MUX_53_PROXY_CTRLN_8_i0_0_0_1(selector_MUX_53_PROXY_CTRLN_8_i0_0_0_1), .selector_MUX_54_PROXY_CTRLN_8_i0_1_0_0(selector_MUX_54_PROXY_CTRLN_8_i0_1_0_0), .selector_MUX_54_PROXY_CTRLN_8_i0_1_0_1(selector_MUX_54_PROXY_CTRLN_8_i0_1_0_1), .selector_MUX_54_PROXY_CTRLN_8_i0_1_0_2(selector_MUX_54_PROXY_CTRLN_8_i0_1_0_2), .selector_MUX_54_PROXY_CTRLN_8_i0_1_1_0(selector_MUX_54_PROXY_CTRLN_8_i0_1_1_0), .selector_MUX_57_PROXY_CTRLN_8_i1_0_0_0(selector_MUX_57_PROXY_CTRLN_8_i1_0_0_0), .selector_MUX_58_PROXY_CTRLN_8_i1_1_0_0(selector_MUX_58_PROXY_CTRLN_8_i1_1_0_0), .selector_MUX_58_PROXY_CTRLN_8_i1_1_0_1(selector_MUX_58_PROXY_CTRLN_8_i1_1_0_1), .selector_MUX_62_PROXY_CTRLN_9_i0_1_0_0(selector_MUX_62_PROXY_CTRLN_9_i0_1_0_0), .selector_MUX_62_PROXY_CTRLN_9_i0_1_0_1(selector_MUX_62_PROXY_CTRLN_9_i0_1_0_1), .fuselector_PROXY_CTRLN_6_i0_LOAD(fuselector_PROXY_CTRLN_6_i0_LOAD), .fuselector_PROXY_CTRLN_6_i0_STORE(fuselector_PROXY_CTRLN_6_i0_STORE), .fuselector_PROXY_CTRLN_7_i0_LOAD(fuselector_PROXY_CTRLN_7_i0_LOAD), .fuselector_PROXY_CTRLN_7_i0_STORE(fuselector_PROXY_CTRLN_7_i0_STORE), .fuselector_PROXY_CTRLN_8_i0_LOAD(fuselector_PROXY_CTRLN_8_i0_LOAD), .fuselector_PROXY_CTRLN_8_i0_STORE(fuselector_PROXY_CTRLN_8_i0_STORE), .fuselector_PROXY_CTRLN_8_i1_LOAD(fuselector_PROXY_CTRLN_8_i1_LOAD), .fuselector_PROXY_CTRLN_8_i1_STORE(fuselector_PROXY_CTRLN_8_i1_STORE), .fuselector_PROXY_CTRLN_9_i0_LOAD(fuselector_PROXY_CTRLN_9_i0_LOAD), .fuselector_PROXY_CTRLN_9_i0_STORE(fuselector_PROXY_CTRLN_9_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_29(wrenable_reg_29), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_30(wrenable_reg_30), .wrenable_reg_31(wrenable_reg_31), .wrenable_reg_32(wrenable_reg_32), .wrenable_reg_33(wrenable_reg_33), .wrenable_reg_34(wrenable_reg_34), .wrenable_reg_35(wrenable_reg_35), .wrenable_reg_36(wrenable_reg_36), .wrenable_reg_37(wrenable_reg_37), .wrenable_reg_38(wrenable_reg_38), .wrenable_reg_39(wrenable_reg_39), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_40(wrenable_reg_40), .wrenable_reg_41(wrenable_reg_41), .wrenable_reg_42(wrenable_reg_42), .wrenable_reg_43(wrenable_reg_43), .wrenable_reg_44(wrenable_reg_44), .wrenable_reg_45(wrenable_reg_45), .wrenable_reg_46(wrenable_reg_46), .wrenable_reg_47(wrenable_reg_47), .wrenable_reg_48(wrenable_reg_48), .wrenable_reg_49(wrenable_reg_49), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_50(wrenable_reg_50), .wrenable_reg_51(wrenable_reg_51), .wrenable_reg_52(wrenable_reg_52), .wrenable_reg_53(wrenable_reg_53), .wrenable_reg_54(wrenable_reg_54), .wrenable_reg_55(wrenable_reg_55), .wrenable_reg_56(wrenable_reg_56), .wrenable_reg_57(wrenable_reg_57), .wrenable_reg_58(wrenable_reg_58), .wrenable_reg_59(wrenable_reg_59), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_60(wrenable_reg_60), .wrenable_reg_61(wrenable_reg_61), .wrenable_reg_62(wrenable_reg_62), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

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
module ui_negate_expr_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = -in1;
endmodule

// Datapath RTL description for make_non_oriented
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_make_non_oriented(clock, reset, proxy_out1_28867, proxy_in1_28867, proxy_in2_28867, proxy_in3_28867, proxy_sel_LOAD_28867, proxy_sel_STORE_28867, proxy_out1_28868, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, proxy_out1_28870, proxy_in1_28870, proxy_in2_28870, proxy_in3_28870, proxy_sel_LOAD_28870, proxy_sel_STORE_28870, selector_MUX_10_PROXY_CTRLN_2_i0_0_0_0, selector_MUX_10_PROXY_CTRLN_2_i0_0_0_1, selector_MUX_11_PROXY_CTRLN_2_i0_1_0_0, selector_MUX_11_PROXY_CTRLN_2_i0_1_0_1, selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0, selector_MUX_37_reg_12_0_0_0, selector_MUX_37_reg_12_0_0_1, selector_MUX_48_reg_4_0_0_0, selector_MUX_48_reg_4_0_0_1, selector_MUX_53_reg_9_0_0_0, selector_MUX_53_reg_9_0_0_1, fuselector_PROXY_CTRLN_0_i0_LOAD, fuselector_PROXY_CTRLN_0_i0_STORE, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_MULTIIF_make_non_oriented_28874_30601);
  parameter MEM_var_28867_28882=32, MEM_var_28868_28882=64, MEM_var_28870_28882=128;
  // IN
  input clock;
  input reset;
  input [15:0] proxy_out1_28867;
  input [15:0] proxy_out1_28868;
  input [15:0] proxy_out1_28870;
  input selector_MUX_10_PROXY_CTRLN_2_i0_0_0_0;
  input selector_MUX_10_PROXY_CTRLN_2_i0_0_0_1;
  input selector_MUX_11_PROXY_CTRLN_2_i0_1_0_0;
  input selector_MUX_11_PROXY_CTRLN_2_i0_1_0_1;
  input selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0;
  input selector_MUX_37_reg_12_0_0_0;
  input selector_MUX_37_reg_12_0_0_1;
  input selector_MUX_48_reg_4_0_0_0;
  input selector_MUX_48_reg_4_0_0_1;
  input selector_MUX_53_reg_9_0_0_0;
  input selector_MUX_53_reg_9_0_0_1;
  input fuselector_PROXY_CTRLN_0_i0_LOAD;
  input fuselector_PROXY_CTRLN_0_i0_STORE;
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
  input wrenable_reg_19;
  input wrenable_reg_2;
  input wrenable_reg_20;
  input wrenable_reg_3;
  input wrenable_reg_4;
  input wrenable_reg_5;
  input wrenable_reg_6;
  input wrenable_reg_7;
  input wrenable_reg_8;
  input wrenable_reg_9;
  // OUT
  output [15:0] proxy_in1_28867;
  output [17:0] proxy_in2_28867;
  output [7:0] proxy_in3_28867;
  output [1:0] proxy_sel_LOAD_28867;
  output [1:0] proxy_sel_STORE_28867;
  output [15:0] proxy_in1_28868;
  output [17:0] proxy_in2_28868;
  output [7:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [15:0] proxy_in1_28870;
  output [17:0] proxy_in2_28870;
  output [7:0] proxy_in3_28870;
  output [1:0] proxy_sel_LOAD_28870;
  output [1:0] proxy_sel_STORE_28870;
  output [1:0] OUT_MULTIIF_make_non_oriented_28874_30601;
  // Component and signal declarations
  wire [7:0] null_out_signal_PROXY_CTRLN_0_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_0_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_2_i0_out1_1;
  wire [7:0] out_IUdata_converter_FU_21_i0_fu_make_non_oriented_28874_29254;
  wire [7:0] out_MUX_10_PROXY_CTRLN_2_i0_0_0_0;
  wire [7:0] out_MUX_10_PROXY_CTRLN_2_i0_0_0_1;
  wire [8:0] out_MUX_11_PROXY_CTRLN_2_i0_1_0_0;
  wire [8:0] out_MUX_11_PROXY_CTRLN_2_i0_1_0_1;
  wire [8:0] out_MUX_11_PROXY_CTRLN_2_i0_1_1_0;
  wire [2:0] out_MUX_37_reg_12_0_0_0;
  wire [2:0] out_MUX_37_reg_12_0_0_1;
  wire [2:0] out_MUX_48_reg_4_0_0_0;
  wire [2:0] out_MUX_48_reg_4_0_0_1;
  wire [31:0] out_MUX_53_reg_9_0_0_0;
  wire [31:0] out_MUX_53_reg_9_0_0_1;
  wire [7:0] out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0;
  wire signed [7:0] out_UIdata_converter_FU_22_i0_fu_make_non_oriented_28874_29245;
  wire [1:0] out_UUdata_converter_FU_12_i0_fu_make_non_oriented_28874_29189;
  wire [1:0] out_UUdata_converter_FU_13_i0_fu_make_non_oriented_28874_30428;
  wire [7:0] out_UUdata_converter_FU_19_i0_fu_make_non_oriented_28874_29206;
  wire [1:0] out_UUdata_converter_FU_20_i0_fu_make_non_oriented_28874_29243;
  wire [31:0] out_UUdata_converter_FU_6_i0_fu_make_non_oriented_28874_29180;
  wire [31:0] out_addr_expr_FU_5_i0_fu_make_non_oriented_28874_30382;
  wire [5:0] out_addr_expr_FU_7_i0_fu_make_non_oriented_28874_30441;
  wire [6:0] out_addr_expr_FU_8_i0_fu_make_non_oriented_28874_30445;
  wire signed [7:0] out_cond_expr_FU_8_8_8_8_25_i0_fu_make_non_oriented_28874_29227;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [6:0] out_const_10;
  wire [4:0] out_const_2;
  wire out_const_3;
  wire [1:0] out_const_4;
  wire [2:0] out_const_5;
  wire [1:0] out_const_6;
  wire [7:0] out_const_7;
  wire [8:0] out_const_8;
  wire [5:0] out_const_9;
  wire [8:0] out_conv_out_UUdata_converter_FU_19_i0_fu_make_non_oriented_28874_29206_8_9;
  wire [31:0] out_conv_out_const_10_7_32;
  wire [3:0] out_conv_out_const_2_5_4;
  wire [31:0] out_conv_out_const_8_9_32;
  wire [31:0] out_conv_out_const_9_6_32;
  wire [8:0] out_conv_out_reg_10_reg_10_8_9;
  wire [1:0] out_conv_out_reg_12_reg_12_3_2;
  wire [8:0] out_conv_out_reg_14_reg_14_8_9;
  wire [8:0] out_conv_out_reg_1_reg_1_6_9;
  wire [8:0] out_conv_out_reg_2_reg_2_7_9;
  wire [1:0] out_conv_out_reg_4_reg_4_3_2;
  wire [8:0] out_conv_out_reg_6_reg_6_8_9;
  wire [2:0] out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3_1_3;
  wire [2:0] out_conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_5_1_3;
  wire [7:0] out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_0;
  wire [7:0] out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_1;
  wire [7:0] out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_2;
  wire out_lt_expr_FU_8_0_8_26_i0_fu_make_non_oriented_28874_29236;
  wire [1:0] out_multi_read_cond_FU_23_i0_fu_make_non_oriented_28874_30601;
  wire [31:0] out_reg_0_reg_0;
  wire [7:0] out_reg_10_reg_10;
  wire [31:0] out_reg_11_reg_11;
  wire [2:0] out_reg_12_reg_12;
  wire out_reg_13_reg_13;
  wire [7:0] out_reg_14_reg_14;
  wire out_reg_15_reg_15;
  wire out_reg_16_reg_16;
  wire [7:0] out_reg_17_reg_17;
  wire [7:0] out_reg_18_reg_18;
  wire out_reg_19_reg_19;
  wire [5:0] out_reg_1_reg_1;
  wire [7:0] out_reg_20_reg_20;
  wire [6:0] out_reg_2_reg_2;
  wire [1:0] out_reg_3_reg_3;
  wire [2:0] out_reg_4_reg_4;
  wire [31:0] out_reg_5_reg_5;
  wire [7:0] out_reg_6_reg_6;
  wire out_reg_7_reg_7;
  wire [1:0] out_reg_8_reg_8;
  wire [31:0] out_reg_9_reg_9;
  wire out_truth_and_expr_FU_1_1_1_27_i0_fu_make_non_oriented_28874_30607;
  wire out_truth_not_expr_FU_1_1_28_i0_fu_make_non_oriented_28874_30604;
  wire [0:0] out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3;
  wire [2:0] out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_4;
  wire [0:0] out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_5;
  wire [2:0] out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_6;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_29_i0_fu_make_non_oriented_28874_30530;
  wire [0:0] out_ui_bit_and_expr_FU_1_1_1_30_i0_fu_make_non_oriented_28874_29232;
  wire [1:0] out_ui_bit_and_expr_FU_8_0_8_31_i0_fu_make_non_oriented_28874_30542;
  wire [1:0] out_ui_bit_and_expr_FU_8_0_8_32_i0_fu_make_non_oriented_28874_30555;
  wire [31:0] out_ui_bit_ior_concat_expr_FU_33_i0_fu_make_non_oriented_28874_29262;
  wire [3:0] out_ui_bit_ior_concat_expr_FU_34_i0_fu_make_non_oriented_28874_30390;
  wire [3:0] out_ui_bit_ior_concat_expr_FU_35_i0_fu_make_non_oriented_28874_30431;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_36_i0_fu_make_non_oriented_28874_30552;
  wire [2:0] out_ui_lshift_expr_FU_8_0_8_37_i0_fu_make_non_oriented_28874_30387;
  wire [4:0] out_ui_lshift_expr_FU_8_0_8_37_i1_fu_make_non_oriented_28874_30393;
  wire [3:0] out_ui_lshift_expr_FU_8_0_8_37_i2_fu_make_non_oriented_28874_30526;
  wire [3:0] out_ui_lshift_expr_FU_8_0_8_38_i0_fu_make_non_oriented_28874_30425;
  wire [3:0] out_ui_lshift_expr_FU_8_0_8_38_i1_fu_make_non_oriented_28874_30539;
  wire [8:0] out_ui_minus_expr_FU_8_8_8_39_i0_fu_make_non_oriented_28874_30396;
  wire out_ui_ne_expr_FU_8_0_8_40_i0_fu_make_non_oriented_28874_30480;
  wire out_ui_ne_expr_FU_8_0_8_40_i1_fu_make_non_oriented_28874_30482;
  wire out_ui_ne_expr_FU_8_8_8_41_i0_fu_make_non_oriented_28874_29239;
  wire [7:0] out_ui_negate_expr_FU_8_8_42_i0_fu_make_non_oriented_28874_29249;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_43_i0_fu_make_non_oriented_28874_29213;
  wire [29:0] out_ui_plus_expr_FU_32_0_32_44_i0_fu_make_non_oriented_28874_30549;
  wire [2:0] out_ui_plus_expr_FU_8_0_8_45_i0_fu_make_non_oriented_28874_29223;
  wire [2:0] out_ui_plus_expr_FU_8_0_8_45_i1_fu_make_non_oriented_28874_29259;
  wire [2:0] out_ui_plus_expr_FU_8_8_8_46_i0_fu_make_non_oriented_28874_30523;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_47_i0_fu_make_non_oriented_28874_30406;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_47_i1_fu_make_non_oriented_28874_30437;
  wire [29:0] out_ui_rshift_expr_FU_32_0_32_48_i0_fu_make_non_oriented_28874_30547;
  wire [1:0] out_ui_rshift_expr_FU_8_0_8_49_i0_fu_make_non_oriented_28874_30517;
  wire [0:0] out_ui_rshift_expr_FU_8_0_8_49_i1_fu_make_non_oriented_28874_30521;
  wire [1:0] out_ui_rshift_expr_FU_8_0_8_50_i0_fu_make_non_oriented_28874_30534;
  wire [7:0] out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_7;
  wire [15:0] sig_in_bus_mergerproxy_in1_288670_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288681_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288702_0;
  wire [17:0] sig_in_bus_mergerproxy_in2_288673_0;
  wire [17:0] sig_in_bus_mergerproxy_in2_288684_0;
  wire [17:0] sig_in_bus_mergerproxy_in2_288705_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_288676_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_288687_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_288708_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_288679_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886810_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2887011_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886712_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886813_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2887014_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288670_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288681_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288702_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in2_288673_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in2_288684_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in2_288705_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_288676_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_288687_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_288708_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_288679_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886810_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2887011_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886712_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886813_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2887014_0;
  wire [15:0] sig_out_bus_mergerproxy_in1_288670_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288681_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288702_;
  wire [17:0] sig_out_bus_mergerproxy_in2_288673_;
  wire [17:0] sig_out_bus_mergerproxy_in2_288684_;
  wire [17:0] sig_out_bus_mergerproxy_in2_288705_;
  wire [7:0] sig_out_bus_mergerproxy_in3_288676_;
  wire [7:0] sig_out_bus_mergerproxy_in3_288687_;
  wire [7:0] sig_out_bus_mergerproxy_in3_288708_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_288679_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886810_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2887011_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886712_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886813_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2887014_;
  
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_3 (.out1(out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(3), .BITSIZE_out1(3)) ASSIGN_UNSIGNED_FU_u_assign_4 (.out1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_4), .in1(out_reg_4_reg_4));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_5 (.out1(out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_5), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(3), .BITSIZE_out1(3)) ASSIGN_UNSIGNED_FU_u_assign_6 (.out1(out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_6), .in1(out_reg_12_reg_12));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_7 (.out1(out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_7), .in1(out_const_1));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_0 (.out1(out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_0), .in1(out_const_7));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_1), .in1(out_cond_expr_FU_8_8_8_8_25_i0_fu_make_non_oriented_28874_29227));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_2 (.out1(out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_2), .in1(out_reg_20_reg_20));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_10_PROXY_CTRLN_2_i0_0_0_0 (.out1(out_MUX_10_PROXY_CTRLN_2_i0_0_0_0), .sel(selector_MUX_10_PROXY_CTRLN_2_i0_0_0_0), .in1(out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_0), .in2(out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_1));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_10_PROXY_CTRLN_2_i0_0_0_1 (.out1(out_MUX_10_PROXY_CTRLN_2_i0_0_0_1), .sel(selector_MUX_10_PROXY_CTRLN_2_i0_0_0_1), .in1(out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_2), .in2(out_MUX_10_PROXY_CTRLN_2_i0_0_0_0));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_11_PROXY_CTRLN_2_i0_1_0_0 (.out1(out_MUX_11_PROXY_CTRLN_2_i0_1_0_0), .sel(selector_MUX_11_PROXY_CTRLN_2_i0_1_0_0), .in1(out_conv_out_reg_6_reg_6_8_9), .in2(out_conv_out_reg_14_reg_14_8_9));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_11_PROXY_CTRLN_2_i0_1_0_1 (.out1(out_MUX_11_PROXY_CTRLN_2_i0_1_0_1), .sel(selector_MUX_11_PROXY_CTRLN_2_i0_1_0_1), .in1(out_conv_out_reg_10_reg_10_8_9), .in2(out_conv_out_UUdata_converter_FU_19_i0_fu_make_non_oriented_28874_29206_8_9));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_11_PROXY_CTRLN_2_i0_1_1_0 (.out1(out_MUX_11_PROXY_CTRLN_2_i0_1_1_0), .sel(selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0), .in1(out_MUX_11_PROXY_CTRLN_2_i0_1_0_0), .in2(out_MUX_11_PROXY_CTRLN_2_i0_1_0_1));
  MUX_GATE #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(3)) MUX_37_reg_12_0_0_0 (.out1(out_MUX_37_reg_12_0_0_0), .sel(selector_MUX_37_reg_12_0_0_0), .in1(out_conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_5_1_3), .in2(out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_6));
  MUX_GATE #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(3)) MUX_37_reg_12_0_0_1 (.out1(out_MUX_37_reg_12_0_0_1), .sel(selector_MUX_37_reg_12_0_0_1), .in1(out_ui_plus_expr_FU_8_0_8_45_i0_fu_make_non_oriented_28874_29223), .in2(out_MUX_37_reg_12_0_0_0));
  MUX_GATE #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(3)) MUX_48_reg_4_0_0_0 (.out1(out_MUX_48_reg_4_0_0_0), .sel(selector_MUX_48_reg_4_0_0_0), .in1(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3_1_3), .in2(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_4));
  MUX_GATE #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(3)) MUX_48_reg_4_0_0_1 (.out1(out_MUX_48_reg_4_0_0_1), .sel(selector_MUX_48_reg_4_0_0_1), .in1(out_ui_plus_expr_FU_8_0_8_45_i1_fu_make_non_oriented_28874_29259), .in2(out_MUX_48_reg_4_0_0_0));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_53_reg_9_0_0_0 (.out1(out_MUX_53_reg_9_0_0_0), .sel(selector_MUX_53_reg_9_0_0_0), .in1(out_reg_5_reg_5), .in2(out_reg_11_reg_11));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_53_reg_9_0_0_1 (.out1(out_MUX_53_reg_9_0_0_1), .sel(selector_MUX_53_reg_9_0_0_1), .in1(out_UUdata_converter_FU_6_i0_fu_make_non_oriented_28874_29180), .in2(out_MUX_53_reg_9_0_0_0));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_0_i0 (.out1({null_out_signal_PROXY_CTRLN_0_i0_out1_1, null_out_signal_PROXY_CTRLN_0_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288670_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288673_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288676_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_288679_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886712_0), .in1({8'b00000000, out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_7}), .in2({9'b000000000, out_conv_out_reg_1_reg_1_6_9}), .in3({4'b0000, out_conv_out_const_2_5_4}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_0_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_0_i0_STORE}), .proxy_out1(proxy_out1_28867));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_1_i0 (.out1({null_out_signal_PROXY_CTRLN_1_i0_out1_1, null_out_signal_PROXY_CTRLN_1_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288681_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288684_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288687_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886810_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886813_0), .in1({8'b00000000, out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_7}), .in2({9'b000000000, out_conv_out_reg_2_reg_2_7_9}), .in3({4'b0000, out_conv_out_const_2_5_4}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_1_i0_STORE}), .proxy_out1(proxy_out1_28868));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_2_i0 (.out1({null_out_signal_PROXY_CTRLN_2_i0_out1_1, out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288702_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288705_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288708_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2887011_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2887014_0), .in1({8'b00000000, out_MUX_10_PROXY_CTRLN_2_i0_0_0_1}), .in2({9'b000000000, out_MUX_11_PROXY_CTRLN_2_i0_1_1_0}), .in3({4'b0000, out_conv_out_const_2_5_4}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_2_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_2_i0_STORE}), .proxy_out1(proxy_out1_28870));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288670_ (.out1(sig_out_bus_mergerproxy_in1_288670_), .in1({sig_in_bus_mergerproxy_in1_288670_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288681_ (.out1(sig_out_bus_mergerproxy_in1_288681_), .in1({sig_in_bus_mergerproxy_in1_288681_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288702_ (.out1(sig_out_bus_mergerproxy_in1_288702_), .in1({sig_in_bus_mergerproxy_in1_288702_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerproxy_in2_288673_ (.out1(sig_out_bus_mergerproxy_in2_288673_), .in1({sig_in_bus_mergerproxy_in2_288673_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerproxy_in2_288684_ (.out1(sig_out_bus_mergerproxy_in2_288684_), .in1({sig_in_bus_mergerproxy_in2_288684_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerproxy_in2_288705_ (.out1(sig_out_bus_mergerproxy_in2_288705_), .in1({sig_in_bus_mergerproxy_in2_288705_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_288676_ (.out1(sig_out_bus_mergerproxy_in3_288676_), .in1({sig_in_bus_mergerproxy_in3_288676_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_288687_ (.out1(sig_out_bus_mergerproxy_in3_288687_), .in1({sig_in_bus_mergerproxy_in3_288687_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_288708_ (.out1(sig_out_bus_mergerproxy_in3_288708_), .in1({sig_in_bus_mergerproxy_in3_288708_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_288679_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288679_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288679_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886810_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886810_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886810_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2887011_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2887011_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2887011_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886712_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886712_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886712_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886813_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886813_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886813_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2887014_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2887014_), .in1({sig_in_bus_mergerproxy_sel_STORE_2887014_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000100)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(7), .value(MEM_var_28868_28882)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(2), .value(2'b10)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(3), .value(3'b100)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(9), .value(MEM_var_28870_28882)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(6), .value(MEM_var_28867_28882)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_UUdata_converter_FU_19_i0_fu_make_non_oriented_28874_29206_8_9 (.out1(out_conv_out_UUdata_converter_FU_19_i0_fu_make_non_oriented_28874_29206_8_9), .in1(out_UUdata_converter_FU_19_i0_fu_make_non_oriented_28874_29206));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(32)) conv_out_const_10_7_32 (.out1(out_conv_out_const_10_7_32), .in1(out_const_10));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_2_5_4 (.out1(out_conv_out_const_2_5_4), .in1(out_const_2));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(32)) conv_out_const_8_9_32 (.out1(out_conv_out_const_8_9_32), .in1(out_const_8));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(32)) conv_out_const_9_6_32 (.out1(out_conv_out_const_9_6_32), .in1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_10_reg_10_8_9 (.out1(out_conv_out_reg_10_reg_10_8_9), .in1(out_reg_10_reg_10));
  UUdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(2)) conv_out_reg_12_reg_12_3_2 (.out1(out_conv_out_reg_12_reg_12_3_2), .in1(out_reg_12_reg_12));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_14_reg_14_8_9 (.out1(out_conv_out_reg_14_reg_14_8_9), .in1(out_reg_14_reg_14));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(9)) conv_out_reg_1_reg_1_6_9 (.out1(out_conv_out_reg_1_reg_1_6_9), .in1(out_reg_1_reg_1));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_2_reg_2_7_9 (.out1(out_conv_out_reg_2_reg_2_7_9), .in1(out_reg_2_reg_2));
  UUdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(2)) conv_out_reg_4_reg_4_3_2 (.out1(out_conv_out_reg_4_reg_4_3_2), .in1(out_reg_4_reg_4));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_6_reg_6_8_9 (.out1(out_conv_out_reg_6_reg_6_8_9), .in1(out_reg_6_reg_6));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(3)) conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3_1_3 (.out1(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3_1_3), .in1(out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(3)) conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_5_1_3 (.out1(out_conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_5_1_3), .in1(out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_5));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_make_non_oriented_28874_29180 (.out1(out_UUdata_converter_FU_6_i0_fu_make_non_oriented_28874_29180), .in1(out_addr_expr_FU_5_i0_fu_make_non_oriented_28874_30382));
  UUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) fu_make_non_oriented_28874_29189 (.out1(out_UUdata_converter_FU_12_i0_fu_make_non_oriented_28874_29189), .in1(out_conv_out_reg_4_reg_4_3_2));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_make_non_oriented_28874_29206 (.out1(out_UUdata_converter_FU_19_i0_fu_make_non_oriented_28874_29206), .in1(out_reg_9_reg_9));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(32)) fu_make_non_oriented_28874_29213 (.out1(out_ui_plus_expr_FU_32_0_32_43_i0_fu_make_non_oriented_28874_29213), .in1(out_reg_9_reg_9), .in2(out_const_3));
  ui_plus_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_out1(3)) fu_make_non_oriented_28874_29223 (.out1(out_ui_plus_expr_FU_8_0_8_45_i0_fu_make_non_oriented_28874_29223), .in1(out_conv_out_reg_12_reg_12_3_2), .in2(out_const_3));
  cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_make_non_oriented_28874_29227 (.out1(out_cond_expr_FU_8_8_8_8_25_i0_fu_make_non_oriented_28874_29227), .in1(out_ui_bit_and_expr_FU_1_1_1_30_i0_fu_make_non_oriented_28874_29232), .in2(out_reg_17_reg_17), .in3(out_reg_18_reg_18));
  ui_bit_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_non_oriented_28874_29232 (.out1(out_ui_bit_and_expr_FU_1_1_1_30_i0_fu_make_non_oriented_28874_29232), .in1(out_reg_19_reg_19), .in2(out_reg_13_reg_13));
  lt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_non_oriented_28874_29236 (.out1(out_lt_expr_FU_8_0_8_26_i0_fu_make_non_oriented_28874_29236), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0), .in2(out_const_0));
  ui_ne_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_make_non_oriented_28874_29239 (.out1(out_ui_ne_expr_FU_8_8_8_41_i0_fu_make_non_oriented_28874_29239), .in1(out_reg_3_reg_3), .in2(out_UUdata_converter_FU_20_i0_fu_make_non_oriented_28874_29243));
  UUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) fu_make_non_oriented_28874_29243 (.out1(out_UUdata_converter_FU_20_i0_fu_make_non_oriented_28874_29243), .in1(out_conv_out_reg_12_reg_12_3_2));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_non_oriented_28874_29245 (.out1(out_UIdata_converter_FU_22_i0_fu_make_non_oriented_28874_29245), .in1(out_ui_negate_expr_FU_8_8_42_i0_fu_make_non_oriented_28874_29249));
  ui_negate_expr_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_non_oriented_28874_29249 (.out1(out_ui_negate_expr_FU_8_8_42_i0_fu_make_non_oriented_28874_29249), .in1(out_IUdata_converter_FU_21_i0_fu_make_non_oriented_28874_29254));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_non_oriented_28874_29254 (.out1(out_IUdata_converter_FU_21_i0_fu_make_non_oriented_28874_29254), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0));
  ui_plus_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_out1(3)) fu_make_non_oriented_28874_29259 (.out1(out_ui_plus_expr_FU_8_0_8_45_i1_fu_make_non_oriented_28874_29259), .in1(out_conv_out_reg_4_reg_4_3_2), .in2(out_const_3));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(32), .OFFSET_PARAMETER(2)) fu_make_non_oriented_28874_29262 (.out1(out_ui_bit_ior_concat_expr_FU_33_i0_fu_make_non_oriented_28874_29262), .in1(out_ui_lshift_expr_FU_32_0_32_36_i0_fu_make_non_oriented_28874_30552), .in2(out_ui_bit_and_expr_FU_8_0_8_32_i0_fu_make_non_oriented_28874_30555), .in3(out_const_4));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_make_non_oriented_28874_30382 (.out1(out_addr_expr_FU_5_i0_fu_make_non_oriented_28874_30382), .in1(out_conv_out_const_8_9_32));
  ui_lshift_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_out1(3), .PRECISION(32)) fu_make_non_oriented_28874_30387 (.out1(out_ui_lshift_expr_FU_8_0_8_37_i0_fu_make_non_oriented_28874_30387), .in1(out_conv_out_reg_4_reg_4_3_2), .in2(out_const_3));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(4), .OFFSET_PARAMETER(1)) fu_make_non_oriented_28874_30390 (.out1(out_ui_bit_ior_concat_expr_FU_34_i0_fu_make_non_oriented_28874_30390), .in1(out_ui_lshift_expr_FU_8_0_8_37_i2_fu_make_non_oriented_28874_30526), .in2(out_ui_bit_and_expr_FU_1_0_1_29_i0_fu_make_non_oriented_28874_30530), .in3(out_const_3));
  ui_lshift_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(1), .BITSIZE_out1(5), .PRECISION(32)) fu_make_non_oriented_28874_30393 (.out1(out_ui_lshift_expr_FU_8_0_8_37_i1_fu_make_non_oriented_28874_30393), .in1(out_ui_bit_ior_concat_expr_FU_34_i0_fu_make_non_oriented_28874_30390), .in2(out_const_3));
  ui_minus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_out1(9)) fu_make_non_oriented_28874_30396 (.out1(out_ui_minus_expr_FU_8_8_8_39_i0_fu_make_non_oriented_28874_30396), .in1(out_ui_lshift_expr_FU_8_0_8_37_i1_fu_make_non_oriented_28874_30393), .in2(out_conv_out_reg_4_reg_4_3_2));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(9), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_make_non_oriented_28874_30406 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_47_i0_fu_make_non_oriented_28874_30406), .in1(out_reg_0_reg_0), .in2(out_ui_minus_expr_FU_8_8_8_39_i0_fu_make_non_oriented_28874_30396));
  ui_lshift_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(4), .PRECISION(32)) fu_make_non_oriented_28874_30425 (.out1(out_ui_lshift_expr_FU_8_0_8_38_i0_fu_make_non_oriented_28874_30425), .in1(out_conv_out_reg_12_reg_12_3_2), .in2(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) fu_make_non_oriented_28874_30428 (.out1(out_UUdata_converter_FU_13_i0_fu_make_non_oriented_28874_30428), .in1(out_conv_out_reg_4_reg_4_3_2));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(4), .OFFSET_PARAMETER(2)) fu_make_non_oriented_28874_30431 (.out1(out_ui_bit_ior_concat_expr_FU_35_i0_fu_make_non_oriented_28874_30431), .in1(out_ui_lshift_expr_FU_8_0_8_38_i1_fu_make_non_oriented_28874_30539), .in2(out_reg_8_reg_8), .in3(out_const_4));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(4), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_make_non_oriented_28874_30437 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_47_i1_fu_make_non_oriented_28874_30437), .in1(out_reg_0_reg_0), .in2(out_ui_bit_ior_concat_expr_FU_35_i0_fu_make_non_oriented_28874_30431));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(6)) fu_make_non_oriented_28874_30441 (.out1(out_addr_expr_FU_7_i0_fu_make_non_oriented_28874_30441), .in1(out_conv_out_const_9_6_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_make_non_oriented_28874_30445 (.out1(out_addr_expr_FU_8_i0_fu_make_non_oriented_28874_30445), .in1(out_conv_out_const_10_7_32));
  ui_ne_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(1)) fu_make_non_oriented_28874_30480 (.out1(out_ui_ne_expr_FU_8_0_8_40_i0_fu_make_non_oriented_28874_30480), .in1(out_ui_plus_expr_FU_8_0_8_45_i0_fu_make_non_oriented_28874_29223), .in2(out_const_5));
  ui_ne_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(1)) fu_make_non_oriented_28874_30482 (.out1(out_ui_ne_expr_FU_8_0_8_40_i1_fu_make_non_oriented_28874_30482), .in1(out_ui_plus_expr_FU_8_0_8_45_i1_fu_make_non_oriented_28874_29259), .in2(out_const_5));
  ui_rshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(2), .PRECISION(32)) fu_make_non_oriented_28874_30517 (.out1(out_ui_rshift_expr_FU_8_0_8_49_i0_fu_make_non_oriented_28874_30517), .in1(out_ui_lshift_expr_FU_8_0_8_37_i0_fu_make_non_oriented_28874_30387), .in2(out_const_3));
  ui_rshift_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_out1(1), .PRECISION(32)) fu_make_non_oriented_28874_30521 (.out1(out_ui_rshift_expr_FU_8_0_8_49_i1_fu_make_non_oriented_28874_30521), .in1(out_conv_out_reg_4_reg_4_3_2), .in2(out_const_3));
  ui_plus_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_out1(3)) fu_make_non_oriented_28874_30523 (.out1(out_ui_plus_expr_FU_8_8_8_46_i0_fu_make_non_oriented_28874_30523), .in1(out_ui_rshift_expr_FU_8_0_8_49_i0_fu_make_non_oriented_28874_30517), .in2(out_ui_rshift_expr_FU_8_0_8_49_i1_fu_make_non_oriented_28874_30521));
  ui_lshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(4), .PRECISION(32)) fu_make_non_oriented_28874_30526 (.out1(out_ui_lshift_expr_FU_8_0_8_37_i2_fu_make_non_oriented_28874_30526), .in1(out_ui_plus_expr_FU_8_8_8_46_i0_fu_make_non_oriented_28874_30523), .in2(out_const_3));
  ui_bit_and_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_non_oriented_28874_30530 (.out1(out_ui_bit_and_expr_FU_1_0_1_29_i0_fu_make_non_oriented_28874_30530), .in1(out_conv_out_reg_4_reg_4_3_2), .in2(out_const_3));
  ui_rshift_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(2), .BITSIZE_out1(2), .PRECISION(32)) fu_make_non_oriented_28874_30534 (.out1(out_ui_rshift_expr_FU_8_0_8_50_i0_fu_make_non_oriented_28874_30534), .in1(out_ui_lshift_expr_FU_8_0_8_38_i0_fu_make_non_oriented_28874_30425), .in2(out_const_4));
  ui_lshift_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(4), .PRECISION(32)) fu_make_non_oriented_28874_30539 (.out1(out_ui_lshift_expr_FU_8_0_8_38_i1_fu_make_non_oriented_28874_30539), .in1(out_ui_rshift_expr_FU_8_0_8_50_i0_fu_make_non_oriented_28874_30534), .in2(out_const_4));
  ui_bit_and_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_make_non_oriented_28874_30542 (.out1(out_ui_bit_and_expr_FU_8_0_8_31_i0_fu_make_non_oriented_28874_30542), .in1(out_UUdata_converter_FU_13_i0_fu_make_non_oriented_28874_30428), .in2(out_const_6));
  ui_rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(30), .PRECISION(32)) fu_make_non_oriented_28874_30547 (.out1(out_ui_rshift_expr_FU_32_0_32_48_i0_fu_make_non_oriented_28874_30547), .in1(out_reg_9_reg_9), .in2(out_const_4));
  ui_plus_expr_FU #(.BITSIZE_in1(30), .BITSIZE_in2(1), .BITSIZE_out1(30)) fu_make_non_oriented_28874_30549 (.out1(out_ui_plus_expr_FU_32_0_32_44_i0_fu_make_non_oriented_28874_30549), .in1(out_ui_rshift_expr_FU_32_0_32_48_i0_fu_make_non_oriented_28874_30547), .in2(out_const_3));
  ui_lshift_expr_FU #(.BITSIZE_in1(30), .BITSIZE_in2(2), .BITSIZE_out1(32), .PRECISION(32)) fu_make_non_oriented_28874_30552 (.out1(out_ui_lshift_expr_FU_32_0_32_36_i0_fu_make_non_oriented_28874_30552), .in1(out_ui_plus_expr_FU_32_0_32_44_i0_fu_make_non_oriented_28874_30549), .in2(out_const_4));
  ui_bit_and_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_make_non_oriented_28874_30555 (.out1(out_ui_bit_and_expr_FU_8_0_8_32_i0_fu_make_non_oriented_28874_30555), .in1(out_reg_9_reg_9), .in2(out_const_6));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) fu_make_non_oriented_28874_30601 (.out1(out_multi_read_cond_FU_23_i0_fu_make_non_oriented_28874_30601), .in1({out_reg_16_reg_16, out_reg_15_reg_15}));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_make_non_oriented_28874_30604 (.out1(out_truth_not_expr_FU_1_1_28_i0_fu_make_non_oriented_28874_30604), .in1(out_ui_ne_expr_FU_8_0_8_40_i0_fu_make_non_oriented_28874_30480));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_non_oriented_28874_30607 (.out1(out_truth_and_expr_FU_1_1_1_27_i0_fu_make_non_oriented_28874_30607), .in1(out_reg_7_reg_7), .in2(out_truth_not_expr_FU_1_1_28_i0_fu_make_non_oriented_28874_30604));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288670_0 (.out1(sig_in_bus_mergerproxy_in1_288670_0), .in1(sig_in_vector_bus_mergerproxy_in1_288670_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288681_0 (.out1(sig_in_bus_mergerproxy_in1_288681_0), .in1(sig_in_vector_bus_mergerproxy_in1_288681_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288702_0 (.out1(sig_in_bus_mergerproxy_in1_288702_0), .in1(sig_in_vector_bus_mergerproxy_in1_288702_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in2_288673_0 (.out1(sig_in_bus_mergerproxy_in2_288673_0), .in1(sig_in_vector_bus_mergerproxy_in2_288673_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in2_288684_0 (.out1(sig_in_bus_mergerproxy_in2_288684_0), .in1(sig_in_vector_bus_mergerproxy_in2_288684_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in2_288705_0 (.out1(sig_in_bus_mergerproxy_in2_288705_0), .in1(sig_in_vector_bus_mergerproxy_in2_288705_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_288676_0 (.out1(sig_in_bus_mergerproxy_in3_288676_0), .in1(sig_in_vector_bus_mergerproxy_in3_288676_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_288687_0 (.out1(sig_in_bus_mergerproxy_in3_288687_0), .in1(sig_in_vector_bus_mergerproxy_in3_288687_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_288708_0 (.out1(sig_in_bus_mergerproxy_in3_288708_0), .in1(sig_in_vector_bus_mergerproxy_in3_288708_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_288679_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_288679_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_288679_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886810_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886810_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886810_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2887011_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2887011_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2887011_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886712_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886712_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886712_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886813_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886813_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886813_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2887014_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2887014_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2887014_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_5_i0_fu_make_non_oriented_28874_30382), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_7_i0_fu_make_non_oriented_28874_30441), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_19_i0_fu_make_non_oriented_28874_29206), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_32_0_32_43_i0_fu_make_non_oriented_28874_29213), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(3), .BITSIZE_out1(3)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_MUX_37_reg_12_0_0_1), .wenable(wrenable_reg_12));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_8_8_41_i0_fu_make_non_oriented_28874_29239), .wenable(wrenable_reg_13));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_47_i1_fu_make_non_oriented_28874_30437), .wenable(wrenable_reg_14));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_40_i0_fu_make_non_oriented_28874_30480), .wenable(wrenable_reg_15));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_truth_and_expr_FU_1_1_1_27_i0_fu_make_non_oriented_28874_30607), .wenable(wrenable_reg_16));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_22_i0_fu_make_non_oriented_28874_29245), .wenable(wrenable_reg_17));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0), .wenable(wrenable_reg_18));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_19 (.out1(out_reg_19_reg_19), .clock(clock), .reset(reset), .in1(out_lt_expr_FU_8_0_8_26_i0_fu_make_non_oriented_28874_29236), .wenable(wrenable_reg_19));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_8_i0_fu_make_non_oriented_28874_30445), .wenable(wrenable_reg_2));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_20 (.out1(out_reg_20_reg_20), .clock(clock), .reset(reset), .in1(out_cond_expr_FU_8_8_8_8_25_i0_fu_make_non_oriented_28874_29227), .wenable(wrenable_reg_20));
  register_SE #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_12_i0_fu_make_non_oriented_28874_29189), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(3), .BITSIZE_out1(3)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_MUX_48_reg_4_0_0_1), .wenable(wrenable_reg_4));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_ui_bit_ior_concat_expr_FU_33_i0_fu_make_non_oriented_28874_29262), .wenable(wrenable_reg_5));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_47_i0_fu_make_non_oriented_28874_30406), .wenable(wrenable_reg_6));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_40_i1_fu_make_non_oriented_28874_30482), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_ui_bit_and_expr_FU_8_0_8_31_i0_fu_make_non_oriented_28874_30542), .wenable(wrenable_reg_8));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_MUX_53_reg_9_0_0_1), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288670_ (.out1(proxy_in1_28867), .in1(sig_out_bus_mergerproxy_in1_288670_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288681_ (.out1(proxy_in1_28868), .in1(sig_out_bus_mergerproxy_in1_288681_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288702_ (.out1(proxy_in1_28870), .in1(sig_out_bus_mergerproxy_in1_288702_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288673_ (.out1(proxy_in2_28867), .in1(sig_out_bus_mergerproxy_in2_288673_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288684_ (.out1(proxy_in2_28868), .in1(sig_out_bus_mergerproxy_in2_288684_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288705_ (.out1(proxy_in2_28870), .in1(sig_out_bus_mergerproxy_in2_288705_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288676_ (.out1(proxy_in3_28867), .in1(sig_out_bus_mergerproxy_in3_288676_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288687_ (.out1(proxy_in3_28868), .in1(sig_out_bus_mergerproxy_in3_288687_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288708_ (.out1(proxy_in3_28870), .in1(sig_out_bus_mergerproxy_in3_288708_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_288679_ (.out1(proxy_sel_LOAD_28867), .in1(sig_out_bus_mergerproxy_sel_LOAD_288679_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886810_ (.out1(proxy_sel_LOAD_28868), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886810_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2887011_ (.out1(proxy_sel_LOAD_28870), .in1(sig_out_bus_mergerproxy_sel_LOAD_2887011_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886712_ (.out1(proxy_sel_STORE_28867), .in1(sig_out_bus_mergerproxy_sel_STORE_2886712_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886813_ (.out1(proxy_sel_STORE_28868), .in1(sig_out_bus_mergerproxy_sel_STORE_2886813_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2887014_ (.out1(proxy_sel_STORE_28870), .in1(sig_out_bus_mergerproxy_sel_STORE_2887014_));
  // io-signal post fix
  assign OUT_MULTIIF_make_non_oriented_28874_30601 = out_multi_read_cond_FU_23_i0_fu_make_non_oriented_28874_30601;

endmodule

// FSM based controller description for make_non_oriented
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_make_non_oriented(done_port, selector_MUX_10_PROXY_CTRLN_2_i0_0_0_0, selector_MUX_10_PROXY_CTRLN_2_i0_0_0_1, selector_MUX_11_PROXY_CTRLN_2_i0_1_0_0, selector_MUX_11_PROXY_CTRLN_2_i0_1_0_1, selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0, selector_MUX_37_reg_12_0_0_0, selector_MUX_37_reg_12_0_0_1, selector_MUX_48_reg_4_0_0_0, selector_MUX_48_reg_4_0_0_1, selector_MUX_53_reg_9_0_0_0, selector_MUX_53_reg_9_0_0_1, fuselector_PROXY_CTRLN_0_i0_LOAD, fuselector_PROXY_CTRLN_0_i0_STORE, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_MULTIIF_make_non_oriented_28874_30601, clock, reset, start_port);
  // IN
  input [1:0] OUT_MULTIIF_make_non_oriented_28874_30601;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_MUX_10_PROXY_CTRLN_2_i0_0_0_0;
  output selector_MUX_10_PROXY_CTRLN_2_i0_0_0_1;
  output selector_MUX_11_PROXY_CTRLN_2_i0_1_0_0;
  output selector_MUX_11_PROXY_CTRLN_2_i0_1_0_1;
  output selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0;
  output selector_MUX_37_reg_12_0_0_0;
  output selector_MUX_37_reg_12_0_0_1;
  output selector_MUX_48_reg_4_0_0_0;
  output selector_MUX_48_reg_4_0_0_1;
  output selector_MUX_53_reg_9_0_0_0;
  output selector_MUX_53_reg_9_0_0_1;
  output fuselector_PROXY_CTRLN_0_i0_LOAD;
  output fuselector_PROXY_CTRLN_0_i0_STORE;
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
  output wrenable_reg_19;
  output wrenable_reg_2;
  output wrenable_reg_20;
  output wrenable_reg_3;
  output wrenable_reg_4;
  output wrenable_reg_5;
  output wrenable_reg_6;
  output wrenable_reg_7;
  output wrenable_reg_8;
  output wrenable_reg_9;
  parameter [7:0] S_0 = 8'b00000001,
    S_1 = 8'b00000010,
    S_2 = 8'b00000100,
    S_3 = 8'b00001000,
    S_4 = 8'b00010000,
    S_5 = 8'b00100000,
    S_6 = 8'b01000000,
    S_7 = 8'b10000000;
  reg [7:0] _present_state, _next_state;
  reg done_port;
  reg selector_MUX_10_PROXY_CTRLN_2_i0_0_0_0;
  reg selector_MUX_10_PROXY_CTRLN_2_i0_0_0_1;
  reg selector_MUX_11_PROXY_CTRLN_2_i0_1_0_0;
  reg selector_MUX_11_PROXY_CTRLN_2_i0_1_0_1;
  reg selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0;
  reg selector_MUX_37_reg_12_0_0_0;
  reg selector_MUX_37_reg_12_0_0_1;
  reg selector_MUX_48_reg_4_0_0_0;
  reg selector_MUX_48_reg_4_0_0_1;
  reg selector_MUX_53_reg_9_0_0_0;
  reg selector_MUX_53_reg_9_0_0_1;
  reg fuselector_PROXY_CTRLN_0_i0_LOAD;
  reg fuselector_PROXY_CTRLN_0_i0_STORE;
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
  reg wrenable_reg_19;
  reg wrenable_reg_2;
  reg wrenable_reg_20;
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
    selector_MUX_10_PROXY_CTRLN_2_i0_0_0_0 = 1'b0;
    selector_MUX_10_PROXY_CTRLN_2_i0_0_0_1 = 1'b0;
    selector_MUX_11_PROXY_CTRLN_2_i0_1_0_0 = 1'b0;
    selector_MUX_11_PROXY_CTRLN_2_i0_1_0_1 = 1'b0;
    selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0 = 1'b0;
    selector_MUX_37_reg_12_0_0_0 = 1'b0;
    selector_MUX_37_reg_12_0_0_1 = 1'b0;
    selector_MUX_48_reg_4_0_0_0 = 1'b0;
    selector_MUX_48_reg_4_0_0_1 = 1'b0;
    selector_MUX_53_reg_9_0_0_0 = 1'b0;
    selector_MUX_53_reg_9_0_0_1 = 1'b0;
    fuselector_PROXY_CTRLN_0_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_0_i0_STORE = 1'b0;
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
    wrenable_reg_19 = 1'b0;
    wrenable_reg_2 = 1'b0;
    wrenable_reg_20 = 1'b0;
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
          selector_MUX_48_reg_4_0_0_0 = 1'b1;
          selector_MUX_53_reg_9_0_0_1 = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_9 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          selector_MUX_10_PROXY_CTRLN_2_i0_0_0_0 = 1'bX;
          selector_MUX_10_PROXY_CTRLN_2_i0_0_0_1 = 1'bX;
          selector_MUX_11_PROXY_CTRLN_2_i0_1_0_0 = 1'bX;
          selector_MUX_11_PROXY_CTRLN_2_i0_1_0_1 = 1'bX;
          selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0 = 1'bX;
          selector_MUX_37_reg_12_0_0_0 = 1'bX;
          selector_MUX_37_reg_12_0_0_1 = 1'bX;
          selector_MUX_48_reg_4_0_0_0 = 1'bX;
          selector_MUX_48_reg_4_0_0_1 = 1'bX;
          selector_MUX_53_reg_9_0_0_0 = 1'bX;
          selector_MUX_53_reg_9_0_0_1 = 1'bX;
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
          selector_MUX_48_reg_4_0_0_1 = 1'b1;
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
          selector_MUX_10_PROXY_CTRLN_2_i0_0_0_0 = 1'b1;
          selector_MUX_11_PROXY_CTRLN_2_i0_1_0_0 = 1'b1;
          selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0 = 1'b1;
          selector_MUX_37_reg_12_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          wrenable_reg_12 = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          selector_MUX_37_reg_12_0_0_1 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_LOAD = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_12 = 1'b1;
          wrenable_reg_13 = 1'b1;
          wrenable_reg_14 = 1'b1;
          wrenable_reg_15 = 1'b1;
          wrenable_reg_16 = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          wrenable_reg_17 = 1'b1;
          wrenable_reg_18 = 1'b1;
          wrenable_reg_19 = 1'b1;
          _next_state = S_5;
        end
      S_5 :
        begin
          selector_MUX_11_PROXY_CTRLN_2_i0_1_0_1 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          wrenable_reg_20 = 1'b1;
          _next_state = S_6;
        end
      S_6 :
        begin
          selector_MUX_10_PROXY_CTRLN_2_i0_0_0_1 = 1'b1;
          selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0 = 1'b1;
          selector_MUX_53_reg_9_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          wrenable_reg_12 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_9 = 1'b1;
          if (OUT_MULTIIF_make_non_oriented_28874_30601[0] == 1'b1)
            begin
              _next_state = S_3;
              selector_MUX_53_reg_9_0_0_0 = 1'b0;
              wrenable_reg_4 = 1'b0;
            end
          else if (OUT_MULTIIF_make_non_oriented_28874_30601[1] == 1'b1)
            begin
              _next_state = S_1;
              wrenable_reg_12 = 1'b0;
            end
          else
            begin
              _next_state = S_7;
              done_port = 1'b1;
              selector_MUX_53_reg_9_0_0_0 = 1'b0;
              wrenable_reg_12 = 1'b0;
              wrenable_reg_4 = 1'b0;
              wrenable_reg_9 = 1'b0;
            end
        end
      S_7 :
        begin
          fuselector_PROXY_CTRLN_0_i0_STORE = 1'b1;
          fuselector_PROXY_CTRLN_1_i0_STORE = 1'b1;
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_10_PROXY_CTRLN_2_i0_0_0_0 = 1'bX;
          selector_MUX_10_PROXY_CTRLN_2_i0_0_0_1 = 1'bX;
          selector_MUX_11_PROXY_CTRLN_2_i0_1_0_0 = 1'bX;
          selector_MUX_11_PROXY_CTRLN_2_i0_1_0_1 = 1'bX;
          selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0 = 1'bX;
          selector_MUX_37_reg_12_0_0_0 = 1'bX;
          selector_MUX_37_reg_12_0_0_1 = 1'bX;
          selector_MUX_48_reg_4_0_0_0 = 1'bX;
          selector_MUX_48_reg_4_0_0_1 = 1'bX;
          selector_MUX_53_reg_9_0_0_0 = 1'bX;
          selector_MUX_53_reg_9_0_0_1 = 1'bX;
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

// Top component for make_non_oriented
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module make_non_oriented(clock, reset, start_port, done_port, proxy_out1_28867, proxy_out1_28868, proxy_out1_28870, proxy_in1_28867, proxy_in2_28867, proxy_in3_28867, proxy_sel_LOAD_28867, proxy_sel_STORE_28867, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, proxy_in1_28870, proxy_in2_28870, proxy_in3_28870, proxy_sel_LOAD_28870, proxy_sel_STORE_28870);
  parameter MEM_var_28867_28882=32, MEM_var_28868_28882=64, MEM_var_28870_28882=128;
  // IN
  input clock;
  input reset;
  input start_port;
  input [15:0] proxy_out1_28867;
  input [15:0] proxy_out1_28868;
  input [15:0] proxy_out1_28870;
  // OUT
  output done_port;
  output [15:0] proxy_in1_28867;
  output [17:0] proxy_in2_28867;
  output [7:0] proxy_in3_28867;
  output [1:0] proxy_sel_LOAD_28867;
  output [1:0] proxy_sel_STORE_28867;
  output [15:0] proxy_in1_28868;
  output [17:0] proxy_in2_28868;
  output [7:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [15:0] proxy_in1_28870;
  output [17:0] proxy_in2_28870;
  output [7:0] proxy_in3_28870;
  output [1:0] proxy_sel_LOAD_28870;
  output [1:0] proxy_sel_STORE_28870;
  // Component and signal declarations
  wire [1:0] OUT_MULTIIF_make_non_oriented_28874_30601;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_PROXY_CTRLN_0_i0_LOAD;
  wire fuselector_PROXY_CTRLN_0_i0_STORE;
  wire fuselector_PROXY_CTRLN_1_i0_LOAD;
  wire fuselector_PROXY_CTRLN_1_i0_STORE;
  wire fuselector_PROXY_CTRLN_2_i0_LOAD;
  wire fuselector_PROXY_CTRLN_2_i0_STORE;
  wire selector_MUX_10_PROXY_CTRLN_2_i0_0_0_0;
  wire selector_MUX_10_PROXY_CTRLN_2_i0_0_0_1;
  wire selector_MUX_11_PROXY_CTRLN_2_i0_1_0_0;
  wire selector_MUX_11_PROXY_CTRLN_2_i0_1_0_1;
  wire selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0;
  wire selector_MUX_37_reg_12_0_0_0;
  wire selector_MUX_37_reg_12_0_0_1;
  wire selector_MUX_48_reg_4_0_0_0;
  wire selector_MUX_48_reg_4_0_0_1;
  wire selector_MUX_53_reg_9_0_0_0;
  wire selector_MUX_53_reg_9_0_0_1;
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
  wire wrenable_reg_3;
  wire wrenable_reg_4;
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  controller_make_non_oriented Controller_i (.done_port(done_delayed_REG_signal_in), .selector_MUX_10_PROXY_CTRLN_2_i0_0_0_0(selector_MUX_10_PROXY_CTRLN_2_i0_0_0_0), .selector_MUX_10_PROXY_CTRLN_2_i0_0_0_1(selector_MUX_10_PROXY_CTRLN_2_i0_0_0_1), .selector_MUX_11_PROXY_CTRLN_2_i0_1_0_0(selector_MUX_11_PROXY_CTRLN_2_i0_1_0_0), .selector_MUX_11_PROXY_CTRLN_2_i0_1_0_1(selector_MUX_11_PROXY_CTRLN_2_i0_1_0_1), .selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0(selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0), .selector_MUX_37_reg_12_0_0_0(selector_MUX_37_reg_12_0_0_0), .selector_MUX_37_reg_12_0_0_1(selector_MUX_37_reg_12_0_0_1), .selector_MUX_48_reg_4_0_0_0(selector_MUX_48_reg_4_0_0_0), .selector_MUX_48_reg_4_0_0_1(selector_MUX_48_reg_4_0_0_1), .selector_MUX_53_reg_9_0_0_0(selector_MUX_53_reg_9_0_0_0), .selector_MUX_53_reg_9_0_0_1(selector_MUX_53_reg_9_0_0_1), .fuselector_PROXY_CTRLN_0_i0_LOAD(fuselector_PROXY_CTRLN_0_i0_LOAD), .fuselector_PROXY_CTRLN_0_i0_STORE(fuselector_PROXY_CTRLN_0_i0_STORE), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_MULTIIF_make_non_oriented_28874_30601(OUT_MULTIIF_make_non_oriented_28874_30601), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_make_non_oriented #(.MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) Datapath_i (.proxy_in1_28867(proxy_in1_28867), .proxy_in2_28867(proxy_in2_28867), .proxy_in3_28867(proxy_in3_28867), .proxy_sel_LOAD_28867(proxy_sel_LOAD_28867), .proxy_sel_STORE_28867(proxy_sel_STORE_28867), .proxy_in1_28868(proxy_in1_28868), .proxy_in2_28868(proxy_in2_28868), .proxy_in3_28868(proxy_in3_28868), .proxy_sel_LOAD_28868(proxy_sel_LOAD_28868), .proxy_sel_STORE_28868(proxy_sel_STORE_28868), .proxy_in1_28870(proxy_in1_28870), .proxy_in2_28870(proxy_in2_28870), .proxy_in3_28870(proxy_in3_28870), .proxy_sel_LOAD_28870(proxy_sel_LOAD_28870), .proxy_sel_STORE_28870(proxy_sel_STORE_28870), .OUT_MULTIIF_make_non_oriented_28874_30601(OUT_MULTIIF_make_non_oriented_28874_30601), .clock(clock), .reset(reset), .proxy_out1_28867(proxy_out1_28867), .proxy_out1_28868(proxy_out1_28868), .proxy_out1_28870(proxy_out1_28870), .selector_MUX_10_PROXY_CTRLN_2_i0_0_0_0(selector_MUX_10_PROXY_CTRLN_2_i0_0_0_0), .selector_MUX_10_PROXY_CTRLN_2_i0_0_0_1(selector_MUX_10_PROXY_CTRLN_2_i0_0_0_1), .selector_MUX_11_PROXY_CTRLN_2_i0_1_0_0(selector_MUX_11_PROXY_CTRLN_2_i0_1_0_0), .selector_MUX_11_PROXY_CTRLN_2_i0_1_0_1(selector_MUX_11_PROXY_CTRLN_2_i0_1_0_1), .selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0(selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0), .selector_MUX_37_reg_12_0_0_0(selector_MUX_37_reg_12_0_0_0), .selector_MUX_37_reg_12_0_0_1(selector_MUX_37_reg_12_0_0_1), .selector_MUX_48_reg_4_0_0_0(selector_MUX_48_reg_4_0_0_0), .selector_MUX_48_reg_4_0_0_1(selector_MUX_48_reg_4_0_0_1), .selector_MUX_53_reg_9_0_0_0(selector_MUX_53_reg_9_0_0_0), .selector_MUX_53_reg_9_0_0_1(selector_MUX_53_reg_9_0_0_1), .fuselector_PROXY_CTRLN_0_i0_LOAD(fuselector_PROXY_CTRLN_0_i0_LOAD), .fuselector_PROXY_CTRLN_0_i0_STORE(fuselector_PROXY_CTRLN_0_i0_STORE), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Datapath RTL description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_main(clock, reset, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_STORE, selector_IN_UNBOUNDED_main_28882_29843, selector_IN_UNBOUNDED_main_28882_29849, selector_IN_UNBOUNDED_main_28882_29871, selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0, selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_1_0_0, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, OUT_CONDITION_main_28882_29850, OUT_UNBOUNDED_main_28882_29843, OUT_UNBOUNDED_main_28882_29849, OUT_UNBOUNDED_main_28882_29871);
  parameter MEM_var_28859_28880=160, MEM_var_28861_28880=192, MEM_var_28862_28880=224, MEM_var_28864_28880=256, MEM_var_28865_28880=288, MEM_var_28866_28880=320, MEM_var_28867_28882=32, MEM_var_28868_28882=64, MEM_var_28869_28882=96, MEM_var_28870_28882=128;
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
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_STORE;
  input selector_IN_UNBOUNDED_main_28882_29843;
  input selector_IN_UNBOUNDED_main_28882_29849;
  input selector_IN_UNBOUNDED_main_28882_29871;
  input selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0;
  input selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_1_0_0;
  input wrenable_reg_0;
  input wrenable_reg_1;
  input wrenable_reg_2;
  input wrenable_reg_3;
  input wrenable_reg_4;
  input wrenable_reg_5;
  input wrenable_reg_6;
  // OUT
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [17:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  output OUT_CONDITION_main_28882_29850;
  output OUT_UNBOUNDED_main_28882_29843;
  output OUT_UNBOUNDED_main_28882_29849;
  output OUT_UNBOUNDED_main_28882_29871;
  // Component and signal declarations
  wire [7:0] null_out_signal_array_28867_0_out1_0;
  wire [7:0] null_out_signal_array_28867_0_out1_1;
  wire [7:0] null_out_signal_array_28868_0_out1_0;
  wire [7:0] null_out_signal_array_28868_0_out1_1;
  wire [7:0] null_out_signal_array_28869_0_out1_0;
  wire [7:0] null_out_signal_array_28869_0_out1_1;
  wire [7:0] null_out_signal_array_28870_0_out1_0;
  wire [7:0] null_out_signal_array_28870_0_out1_1;
  wire signed [1:0] out_IIdata_converter_FU_9_i0_fu_main_28882_30486;
  wire [8:0] out_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0;
  wire [8:0] out_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_1_0_0;
  wire [31:0] out_UUdata_converter_FU_11_i0_fu_main_28882_30489;
  wire [6:0] out_UUdata_converter_FU_7_i0_fu_main_28882_30308;
  wire [31:0] out_addr_expr_FU_10_i0_fu_main_28882_30380;
  wire [6:0] out_addr_expr_FU_6_i0_fu_main_28882_30364;
  wire [6:0] out_addr_expr_FU_8_i0_fu_main_28882_30360;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [4:0] out_const_2;
  wire out_const_3;
  wire [1:0] out_const_4;
  wire [1:0] out_const_5;
  wire [7:0] out_const_6;
  wire [8:0] out_const_7;
  wire [6:0] out_const_8;
  wire [6:0] out_const_9;
  wire [3:0] out_conv_out_const_2_5_4;
  wire [31:0] out_conv_out_const_7_9_32;
  wire [31:0] out_conv_out_const_8_7_32;
  wire [31:0] out_conv_out_const_9_7_32;
  wire [1:0] out_conv_out_is_connected_18_i0_fu_main_28882_29849_I_8_2;
  wire [8:0] out_conv_out_reg_0_reg_0_7_9;
  wire [8:0] out_conv_out_reg_1_reg_1_7_9;
  wire [8:0] out_conv_out_reg_2_reg_2_7_9;
  wire [8:0] out_conv_out_reg_3_reg_3_7_9;
  wire [8:0] out_conv_out_reg_4_reg_4_7_9;
  wire signed [7:0] out_is_connected_18_i0_fu_main_28882_29849;
  wire [7:0] out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_0;
  wire out_ne_expr_FU_8_0_8_14_i0_fu_main_28882_30478;
  wire out_read_cond_FU_12_i0_fu_main_28882_29850;
  wire [6:0] out_reg_0_reg_0;
  wire [6:0] out_reg_1_reg_1;
  wire [6:0] out_reg_2_reg_2;
  wire [6:0] out_reg_3_reg_3;
  wire [6:0] out_reg_4_reg_4;
  wire [31:0] out_reg_5_reg_5;
  wire [1:0] out_reg_6_reg_6;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_0_8_15_i0_fu_main_28882_30330;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_0_8_16_i0_fu_main_28882_30343;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_0_8_17_i0_fu_main_28882_30356;
  wire [7:0] out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_1;
  wire [15:0] proxy_out1_28867;
  wire [15:0] proxy_out1_28868;
  wire [15:0] proxy_out1_28869;
  wire [15:0] proxy_out1_28870;
  wire s_done_fu_main_28882_29843;
  wire s_done_fu_main_28882_29849;
  wire s_done_fu_main_28882_29871;
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
  wire [15:0] sig_in_bus_mergerproxy_in112_0;
  wire [15:0] sig_in_bus_mergerproxy_in112_1;
  wire [15:0] sig_in_bus_mergerproxy_in112_2;
  wire [15:0] sig_in_bus_mergerproxy_in117_0;
  wire [15:0] sig_in_bus_mergerproxy_in122_0;
  wire [15:0] sig_in_bus_mergerproxy_in122_1;
  wire [15:0] sig_in_bus_mergerproxy_in122_2;
  wire [15:0] sig_in_bus_mergerproxy_in17_0;
  wire [15:0] sig_in_bus_mergerproxy_in17_1;
  wire [15:0] sig_in_bus_mergerproxy_in17_2;
  wire [17:0] sig_in_bus_mergerproxy_in213_0;
  wire [17:0] sig_in_bus_mergerproxy_in213_1;
  wire [17:0] sig_in_bus_mergerproxy_in213_2;
  wire [17:0] sig_in_bus_mergerproxy_in218_0;
  wire [17:0] sig_in_bus_mergerproxy_in223_0;
  wire [17:0] sig_in_bus_mergerproxy_in223_1;
  wire [17:0] sig_in_bus_mergerproxy_in223_2;
  wire [17:0] sig_in_bus_mergerproxy_in28_0;
  wire [17:0] sig_in_bus_mergerproxy_in28_1;
  wire [17:0] sig_in_bus_mergerproxy_in28_2;
  wire [7:0] sig_in_bus_mergerproxy_in314_0;
  wire [7:0] sig_in_bus_mergerproxy_in314_1;
  wire [7:0] sig_in_bus_mergerproxy_in314_2;
  wire [7:0] sig_in_bus_mergerproxy_in319_0;
  wire [7:0] sig_in_bus_mergerproxy_in324_0;
  wire [7:0] sig_in_bus_mergerproxy_in324_1;
  wire [7:0] sig_in_bus_mergerproxy_in324_2;
  wire [7:0] sig_in_bus_mergerproxy_in39_0;
  wire [7:0] sig_in_bus_mergerproxy_in39_1;
  wire [7:0] sig_in_bus_mergerproxy_in39_2;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD10_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD10_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD10_2;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD15_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD15_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD15_2;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD20_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD25_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD25_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD25_2;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE11_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE11_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE11_2;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE16_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE16_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE16_2;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE21_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE26_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE26_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE26_2;
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
  wire [15:0] sig_in_vector_bus_mergerproxy_in112_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in112_1;
  wire [15:0] sig_in_vector_bus_mergerproxy_in112_2;
  wire [15:0] sig_in_vector_bus_mergerproxy_in117_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in122_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in122_1;
  wire [15:0] sig_in_vector_bus_mergerproxy_in122_2;
  wire [15:0] sig_in_vector_bus_mergerproxy_in17_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in17_1;
  wire [15:0] sig_in_vector_bus_mergerproxy_in17_2;
  wire [17:0] sig_in_vector_bus_mergerproxy_in213_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in213_1;
  wire [17:0] sig_in_vector_bus_mergerproxy_in213_2;
  wire [17:0] sig_in_vector_bus_mergerproxy_in218_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in223_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in223_1;
  wire [17:0] sig_in_vector_bus_mergerproxy_in223_2;
  wire [17:0] sig_in_vector_bus_mergerproxy_in28_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in28_1;
  wire [17:0] sig_in_vector_bus_mergerproxy_in28_2;
  wire [7:0] sig_in_vector_bus_mergerproxy_in314_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in314_1;
  wire [7:0] sig_in_vector_bus_mergerproxy_in314_2;
  wire [7:0] sig_in_vector_bus_mergerproxy_in319_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in324_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in324_1;
  wire [7:0] sig_in_vector_bus_mergerproxy_in324_2;
  wire [7:0] sig_in_vector_bus_mergerproxy_in39_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in39_1;
  wire [7:0] sig_in_vector_bus_mergerproxy_in39_2;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD10_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD10_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD10_2;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD15_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD15_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD15_2;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD20_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD25_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD25_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD25_2;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE11_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE11_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE11_2;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE16_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE16_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE16_2;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE21_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE26_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE26_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE26_2;
  wire [15:0] sig_out_bus_mergerMout_Wdata_ram0_;
  wire [17:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [7:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire [1:0] sig_out_bus_mergerMout_oe_ram3_;
  wire [1:0] sig_out_bus_mergerMout_we_ram4_;
  wire [1:0] sig_out_bus_mergerSout_DataRdy5_;
  wire [15:0] sig_out_bus_mergerSout_Rdata_ram6_;
  wire [15:0] sig_out_bus_mergerproxy_in112_;
  wire [15:0] sig_out_bus_mergerproxy_in117_;
  wire [15:0] sig_out_bus_mergerproxy_in122_;
  wire [15:0] sig_out_bus_mergerproxy_in17_;
  wire [17:0] sig_out_bus_mergerproxy_in213_;
  wire [17:0] sig_out_bus_mergerproxy_in218_;
  wire [17:0] sig_out_bus_mergerproxy_in223_;
  wire [17:0] sig_out_bus_mergerproxy_in28_;
  wire [7:0] sig_out_bus_mergerproxy_in314_;
  wire [7:0] sig_out_bus_mergerproxy_in319_;
  wire [7:0] sig_out_bus_mergerproxy_in324_;
  wire [7:0] sig_out_bus_mergerproxy_in39_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD10_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD15_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD20_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD25_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE11_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE16_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE21_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE26_;
  wire [15:0] sig_out_vector_bus_mergerproxy_in112_;
  wire [15:0] sig_out_vector_bus_mergerproxy_in117_;
  wire [15:0] sig_out_vector_bus_mergerproxy_in122_;
  wire [15:0] sig_out_vector_bus_mergerproxy_in17_;
  wire [17:0] sig_out_vector_bus_mergerproxy_in213_;
  wire [17:0] sig_out_vector_bus_mergerproxy_in218_;
  wire [17:0] sig_out_vector_bus_mergerproxy_in223_;
  wire [17:0] sig_out_vector_bus_mergerproxy_in28_;
  wire [7:0] sig_out_vector_bus_mergerproxy_in314_;
  wire [7:0] sig_out_vector_bus_mergerproxy_in319_;
  wire [7:0] sig_out_vector_bus_mergerproxy_in324_;
  wire [7:0] sig_out_vector_bus_mergerproxy_in39_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_LOAD10_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_LOAD15_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_LOAD20_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_LOAD25_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_STORE11_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_STORE16_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_STORE21_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_STORE26_;
  
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_1 (.out1(out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_1), .in1(out_const_1));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_0 (.out1(out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_0), .in1(out_const_6));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0 (.out1(out_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0), .sel(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0), .in1(out_conv_out_reg_2_reg_2_7_9), .in2(out_conv_out_reg_0_reg_0_7_9));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_1_0_0 (.out1(out_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_1_0_0), .sel(selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_1_0_0), .in1(out_conv_out_reg_3_reg_3_7_9), .in2(out_conv_out_reg_1_reg_1_7_9));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28867.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28867_28882), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28867_0 (.out1({null_out_signal_array_28867_0_out1_1, null_out_signal_array_28867_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_0), .proxy_out1(proxy_out1_28867), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({9'b000000000, 9'b000000000}), .in3({4'b0000, 4'b0000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in17_), .proxy_in2(sig_out_vector_bus_mergerproxy_in28_), .proxy_in3(sig_out_vector_bus_mergerproxy_in39_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD10_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE11_));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28868.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28868_28882), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28868_0 (.out1({null_out_signal_array_28868_0_out1_1, null_out_signal_array_28868_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_1), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_1), .proxy_out1(proxy_out1_28868), .clock(clock), .reset(reset), .in1({8'b00000000, out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_1}), .in2({9'b000000000, out_conv_out_reg_4_reg_4_7_9}), .in3({4'b0000, out_conv_out_const_2_5_4}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in112_), .proxy_in2(sig_out_vector_bus_mergerproxy_in213_), .proxy_in3(sig_out_vector_bus_mergerproxy_in314_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD15_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE16_));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28869.mem"), .n_elements(4), .data_size(8), .address_space_begin(MEM_var_28869_28882), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28869_0 (.out1({null_out_signal_array_28869_0_out1_1, null_out_signal_array_28869_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_2), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_2), .proxy_out1(proxy_out1_28869), .clock(clock), .reset(reset), .in1({out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_0, out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_0}), .in2({out_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_1_0_0, out_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0}), .in3({out_conv_out_const_2_5_4, out_conv_out_const_2_5_4}), .in4({out_const_3, out_const_3}), .sel_LOAD({fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD}), .sel_STORE({fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in117_), .proxy_in2(sig_out_vector_bus_mergerproxy_in218_), .proxy_in3(sig_out_vector_bus_mergerproxy_in319_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD20_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE21_));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28870.mem"), .n_elements(16), .data_size(8), .address_space_begin(MEM_var_28870_28882), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28870_0 (.out1({null_out_signal_array_28870_0_out1_1, null_out_signal_array_28870_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_3), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_3), .proxy_out1(proxy_out1_28870), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({9'b000000000, 9'b000000000}), .in3({4'b0000, 4'b0000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in122_), .proxy_in2(sig_out_vector_bus_mergerproxy_in223_), .proxy_in3(sig_out_vector_bus_mergerproxy_in324_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD25_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE26_));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(5), .BITSIZE_out1(2)) bus_mergerSout_DataRdy5_ (.out1(sig_out_bus_mergerSout_DataRdy5_), .in1({sig_in_bus_mergerSout_DataRdy5_4, sig_in_bus_mergerSout_DataRdy5_3, sig_in_bus_mergerSout_DataRdy5_2, sig_in_bus_mergerSout_DataRdy5_1, sig_in_bus_mergerSout_DataRdy5_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(5), .BITSIZE_out1(16)) bus_mergerSout_Rdata_ram6_ (.out1(sig_out_bus_mergerSout_Rdata_ram6_), .in1({sig_in_bus_mergerSout_Rdata_ram6_4, sig_in_bus_mergerSout_Rdata_ram6_3, sig_in_bus_mergerSout_Rdata_ram6_2, sig_in_bus_mergerSout_Rdata_ram6_1, sig_in_bus_mergerSout_Rdata_ram6_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(3), .BITSIZE_out1(16)) bus_mergerproxy_in112_ (.out1(sig_out_bus_mergerproxy_in112_), .in1({sig_in_bus_mergerproxy_in112_2, sig_in_bus_mergerproxy_in112_1, sig_in_bus_mergerproxy_in112_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in117_ (.out1(sig_out_bus_mergerproxy_in117_), .in1({sig_in_bus_mergerproxy_in117_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(3), .BITSIZE_out1(16)) bus_mergerproxy_in122_ (.out1(sig_out_bus_mergerproxy_in122_), .in1({sig_in_bus_mergerproxy_in122_2, sig_in_bus_mergerproxy_in122_1, sig_in_bus_mergerproxy_in122_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(3), .BITSIZE_out1(16)) bus_mergerproxy_in17_ (.out1(sig_out_bus_mergerproxy_in17_), .in1({sig_in_bus_mergerproxy_in17_2, sig_in_bus_mergerproxy_in17_1, sig_in_bus_mergerproxy_in17_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(3), .BITSIZE_out1(18)) bus_mergerproxy_in213_ (.out1(sig_out_bus_mergerproxy_in213_), .in1({sig_in_bus_mergerproxy_in213_2, sig_in_bus_mergerproxy_in213_1, sig_in_bus_mergerproxy_in213_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerproxy_in218_ (.out1(sig_out_bus_mergerproxy_in218_), .in1({sig_in_bus_mergerproxy_in218_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(3), .BITSIZE_out1(18)) bus_mergerproxy_in223_ (.out1(sig_out_bus_mergerproxy_in223_), .in1({sig_in_bus_mergerproxy_in223_2, sig_in_bus_mergerproxy_in223_1, sig_in_bus_mergerproxy_in223_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(3), .BITSIZE_out1(18)) bus_mergerproxy_in28_ (.out1(sig_out_bus_mergerproxy_in28_), .in1({sig_in_bus_mergerproxy_in28_2, sig_in_bus_mergerproxy_in28_1, sig_in_bus_mergerproxy_in28_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(3), .BITSIZE_out1(8)) bus_mergerproxy_in314_ (.out1(sig_out_bus_mergerproxy_in314_), .in1({sig_in_bus_mergerproxy_in314_2, sig_in_bus_mergerproxy_in314_1, sig_in_bus_mergerproxy_in314_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in319_ (.out1(sig_out_bus_mergerproxy_in319_), .in1({sig_in_bus_mergerproxy_in319_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(3), .BITSIZE_out1(8)) bus_mergerproxy_in324_ (.out1(sig_out_bus_mergerproxy_in324_), .in1({sig_in_bus_mergerproxy_in324_2, sig_in_bus_mergerproxy_in324_1, sig_in_bus_mergerproxy_in324_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(3), .BITSIZE_out1(8)) bus_mergerproxy_in39_ (.out1(sig_out_bus_mergerproxy_in39_), .in1({sig_in_bus_mergerproxy_in39_2, sig_in_bus_mergerproxy_in39_1, sig_in_bus_mergerproxy_in39_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(3), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD10_ (.out1(sig_out_bus_mergerproxy_sel_LOAD10_), .in1({sig_in_bus_mergerproxy_sel_LOAD10_2, sig_in_bus_mergerproxy_sel_LOAD10_1, sig_in_bus_mergerproxy_sel_LOAD10_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(3), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD15_ (.out1(sig_out_bus_mergerproxy_sel_LOAD15_), .in1({sig_in_bus_mergerproxy_sel_LOAD15_2, sig_in_bus_mergerproxy_sel_LOAD15_1, sig_in_bus_mergerproxy_sel_LOAD15_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD20_ (.out1(sig_out_bus_mergerproxy_sel_LOAD20_), .in1({sig_in_bus_mergerproxy_sel_LOAD20_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(3), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD25_ (.out1(sig_out_bus_mergerproxy_sel_LOAD25_), .in1({sig_in_bus_mergerproxy_sel_LOAD25_2, sig_in_bus_mergerproxy_sel_LOAD25_1, sig_in_bus_mergerproxy_sel_LOAD25_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(3), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE11_ (.out1(sig_out_bus_mergerproxy_sel_STORE11_), .in1({sig_in_bus_mergerproxy_sel_STORE11_2, sig_in_bus_mergerproxy_sel_STORE11_1, sig_in_bus_mergerproxy_sel_STORE11_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(3), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE16_ (.out1(sig_out_bus_mergerproxy_sel_STORE16_), .in1({sig_in_bus_mergerproxy_sel_STORE16_2, sig_in_bus_mergerproxy_sel_STORE16_1, sig_in_bus_mergerproxy_sel_STORE16_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE21_ (.out1(sig_out_bus_mergerproxy_sel_STORE21_), .in1({sig_in_bus_mergerproxy_sel_STORE21_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(3), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE26_ (.out1(sig_out_bus_mergerproxy_sel_STORE26_), .in1({sig_in_bus_mergerproxy_sel_STORE26_2, sig_in_bus_mergerproxy_sel_STORE26_1, sig_in_bus_mergerproxy_sel_STORE26_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000100)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(2), .value(2'b10)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(9), .value(MEM_var_28870_28882)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(7), .value(MEM_var_28868_28882)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(7), .value(MEM_var_28869_28882)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_2_5_4 (.out1(out_conv_out_const_2_5_4), .in1(out_const_2));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(32)) conv_out_const_7_9_32 (.out1(out_conv_out_const_7_9_32), .in1(out_const_7));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(32)) conv_out_const_8_7_32 (.out1(out_conv_out_const_8_7_32), .in1(out_const_8));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(32)) conv_out_const_9_7_32 (.out1(out_conv_out_const_9_7_32), .in1(out_const_9));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(2)) conv_out_is_connected_18_i0_fu_main_28882_29849_I_8_2 (.out1(out_conv_out_is_connected_18_i0_fu_main_28882_29849_I_8_2), .in1(out_is_connected_18_i0_fu_main_28882_29849));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_0_reg_0_7_9 (.out1(out_conv_out_reg_0_reg_0_7_9), .in1(out_reg_0_reg_0));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_1_reg_1_7_9 (.out1(out_conv_out_reg_1_reg_1_7_9), .in1(out_reg_1_reg_1));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_2_reg_2_7_9 (.out1(out_conv_out_reg_2_reg_2_7_9), .in1(out_reg_2_reg_2));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_3_reg_3_7_9 (.out1(out_conv_out_reg_3_reg_3_7_9), .in1(out_reg_3_reg_3));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_4_reg_4_7_9 (.out1(out_conv_out_reg_4_reg_4_7_9), .in1(out_reg_4_reg_4));
  make_non_oriented #(.MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) fu_main_28882_29843 (.done_port(s_done_fu_main_28882_29843), .proxy_in1_28867(sig_in_vector_bus_mergerproxy_in17_2), .proxy_in2_28867(sig_in_vector_bus_mergerproxy_in28_2), .proxy_in3_28867(sig_in_vector_bus_mergerproxy_in39_2), .proxy_sel_LOAD_28867(sig_in_vector_bus_mergerproxy_sel_LOAD10_2), .proxy_sel_STORE_28867(sig_in_vector_bus_mergerproxy_sel_STORE11_2), .proxy_in1_28868(sig_in_vector_bus_mergerproxy_in112_2), .proxy_in2_28868(sig_in_vector_bus_mergerproxy_in213_2), .proxy_in3_28868(sig_in_vector_bus_mergerproxy_in314_2), .proxy_sel_LOAD_28868(sig_in_vector_bus_mergerproxy_sel_LOAD15_2), .proxy_sel_STORE_28868(sig_in_vector_bus_mergerproxy_sel_STORE16_2), .proxy_in1_28870(sig_in_vector_bus_mergerproxy_in122_2), .proxy_in2_28870(sig_in_vector_bus_mergerproxy_in223_2), .proxy_in3_28870(sig_in_vector_bus_mergerproxy_in324_2), .proxy_sel_LOAD_28870(sig_in_vector_bus_mergerproxy_sel_LOAD25_2), .proxy_sel_STORE_28870(sig_in_vector_bus_mergerproxy_sel_STORE26_2), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28882_29843), .proxy_out1_28867(proxy_out1_28867), .proxy_out1_28868(proxy_out1_28868), .proxy_out1_28870(proxy_out1_28870));
  is_connected #(.MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) fu_main_28882_29849 (.done_port(s_done_fu_main_28882_29849), .return_port(out_is_connected_18_i0_fu_main_28882_29849), .proxy_in1_28867(sig_in_vector_bus_mergerproxy_in17_0), .proxy_in2_28867(sig_in_vector_bus_mergerproxy_in28_0), .proxy_in3_28867(sig_in_vector_bus_mergerproxy_in39_0), .proxy_sel_LOAD_28867(sig_in_vector_bus_mergerproxy_sel_LOAD10_0), .proxy_sel_STORE_28867(sig_in_vector_bus_mergerproxy_sel_STORE11_0), .proxy_in1_28868(sig_in_vector_bus_mergerproxy_in112_0), .proxy_in2_28868(sig_in_vector_bus_mergerproxy_in213_0), .proxy_in3_28868(sig_in_vector_bus_mergerproxy_in314_0), .proxy_sel_LOAD_28868(sig_in_vector_bus_mergerproxy_sel_LOAD15_0), .proxy_sel_STORE_28868(sig_in_vector_bus_mergerproxy_sel_STORE16_0), .proxy_in1_28870(sig_in_vector_bus_mergerproxy_in122_0), .proxy_in2_28870(sig_in_vector_bus_mergerproxy_in223_0), .proxy_in3_28870(sig_in_vector_bus_mergerproxy_in324_0), .proxy_sel_LOAD_28870(sig_in_vector_bus_mergerproxy_sel_LOAD25_0), .proxy_sel_STORE_28870(sig_in_vector_bus_mergerproxy_sel_STORE26_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28882_29849), .proxy_out1_28867(proxy_out1_28867), .proxy_out1_28868(proxy_out1_28868), .proxy_out1_28870(proxy_out1_28870));
  read_cond_FU #(.BITSIZE_in1(1)) fu_main_28882_29850 (.out1(out_read_cond_FU_12_i0_fu_main_28882_29850), .in1(out_ne_expr_FU_8_0_8_14_i0_fu_main_28882_30478));
  kruskalF #(.MEM_var_28859_28880(MEM_var_28859_28880), .MEM_var_28861_28880(MEM_var_28861_28880), .MEM_var_28862_28880(MEM_var_28862_28880), .MEM_var_28864_28880(MEM_var_28864_28880), .MEM_var_28865_28880(MEM_var_28865_28880), .MEM_var_28866_28880(MEM_var_28866_28880), .MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28869_28882(MEM_var_28869_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) fu_main_28882_29871 (.done_port(s_done_fu_main_28882_29871), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_4), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_4), .proxy_in1_28867(sig_in_vector_bus_mergerproxy_in17_1), .proxy_in2_28867(sig_in_vector_bus_mergerproxy_in28_1), .proxy_in3_28867(sig_in_vector_bus_mergerproxy_in39_1), .proxy_sel_LOAD_28867(sig_in_vector_bus_mergerproxy_sel_LOAD10_1), .proxy_sel_STORE_28867(sig_in_vector_bus_mergerproxy_sel_STORE11_1), .proxy_in1_28868(sig_in_vector_bus_mergerproxy_in112_1), .proxy_in2_28868(sig_in_vector_bus_mergerproxy_in213_1), .proxy_in3_28868(sig_in_vector_bus_mergerproxy_in314_1), .proxy_sel_LOAD_28868(sig_in_vector_bus_mergerproxy_sel_LOAD15_1), .proxy_sel_STORE_28868(sig_in_vector_bus_mergerproxy_sel_STORE16_1), .proxy_in1_28869(sig_in_vector_bus_mergerproxy_in117_0), .proxy_in2_28869(sig_in_vector_bus_mergerproxy_in218_0), .proxy_in3_28869(sig_in_vector_bus_mergerproxy_in319_0), .proxy_sel_LOAD_28869(sig_in_vector_bus_mergerproxy_sel_LOAD20_0), .proxy_sel_STORE_28869(sig_in_vector_bus_mergerproxy_sel_STORE21_0), .proxy_in1_28870(sig_in_vector_bus_mergerproxy_in122_1), .proxy_in2_28870(sig_in_vector_bus_mergerproxy_in223_1), .proxy_in3_28870(sig_in_vector_bus_mergerproxy_in324_1), .proxy_sel_LOAD_28870(sig_in_vector_bus_mergerproxy_sel_LOAD25_1), .proxy_sel_STORE_28870(sig_in_vector_bus_mergerproxy_sel_STORE26_1), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28882_29871), .a(out_reg_5_reg_5), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28867(proxy_out1_28867), .proxy_out1_28868(proxy_out1_28868), .proxy_out1_28869(proxy_out1_28869), .proxy_out1_28870(proxy_out1_28870), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(7)) fu_main_28882_30308 (.out1(out_UUdata_converter_FU_7_i0_fu_main_28882_30308), .in1(out_addr_expr_FU_6_i0_fu_main_28882_30364));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(1), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_main_28882_30330 (.out1(out_ui_pointer_plus_expr_FU_8_0_8_15_i0_fu_main_28882_30330), .in1(out_UUdata_converter_FU_7_i0_fu_main_28882_30308), .in2(out_const_3));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_main_28882_30343 (.out1(out_ui_pointer_plus_expr_FU_8_0_8_16_i0_fu_main_28882_30343), .in1(out_UUdata_converter_FU_7_i0_fu_main_28882_30308), .in2(out_const_4));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_main_28882_30356 (.out1(out_ui_pointer_plus_expr_FU_8_0_8_17_i0_fu_main_28882_30356), .in1(out_UUdata_converter_FU_7_i0_fu_main_28882_30308), .in2(out_const_5));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_main_28882_30360 (.out1(out_addr_expr_FU_8_i0_fu_main_28882_30360), .in1(out_conv_out_const_8_7_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_main_28882_30364 (.out1(out_addr_expr_FU_6_i0_fu_main_28882_30364), .in1(out_conv_out_const_9_7_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_main_28882_30380 (.out1(out_addr_expr_FU_10_i0_fu_main_28882_30380), .in1(out_conv_out_const_7_9_32));
  ne_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_main_28882_30478 (.out1(out_ne_expr_FU_8_0_8_14_i0_fu_main_28882_30478), .in1(out_IIdata_converter_FU_9_i0_fu_main_28882_30486), .in2(out_const_0));
  IIdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) fu_main_28882_30486 (.out1(out_IIdata_converter_FU_9_i0_fu_main_28882_30486), .in1(out_reg_6_reg_6));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_main_28882_30489 (.out1(out_UUdata_converter_FU_11_i0_fu_main_28882_30489), .in1(out_addr_expr_FU_10_i0_fu_main_28882_30380));
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
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in112_0 (.out1(sig_in_bus_mergerproxy_in112_0), .in1(sig_in_vector_bus_mergerproxy_in112_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in112_1 (.out1(sig_in_bus_mergerproxy_in112_1), .in1(sig_in_vector_bus_mergerproxy_in112_1));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in112_2 (.out1(sig_in_bus_mergerproxy_in112_2), .in1(sig_in_vector_bus_mergerproxy_in112_2));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in117_0 (.out1(sig_in_bus_mergerproxy_in117_0), .in1(sig_in_vector_bus_mergerproxy_in117_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in122_0 (.out1(sig_in_bus_mergerproxy_in122_0), .in1(sig_in_vector_bus_mergerproxy_in122_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in122_1 (.out1(sig_in_bus_mergerproxy_in122_1), .in1(sig_in_vector_bus_mergerproxy_in122_1));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in122_2 (.out1(sig_in_bus_mergerproxy_in122_2), .in1(sig_in_vector_bus_mergerproxy_in122_2));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in17_0 (.out1(sig_in_bus_mergerproxy_in17_0), .in1(sig_in_vector_bus_mergerproxy_in17_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in17_1 (.out1(sig_in_bus_mergerproxy_in17_1), .in1(sig_in_vector_bus_mergerproxy_in17_1));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in17_2 (.out1(sig_in_bus_mergerproxy_in17_2), .in1(sig_in_vector_bus_mergerproxy_in17_2));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in213_0 (.out1(sig_in_bus_mergerproxy_in213_0), .in1(sig_in_vector_bus_mergerproxy_in213_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in213_1 (.out1(sig_in_bus_mergerproxy_in213_1), .in1(sig_in_vector_bus_mergerproxy_in213_1));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in213_2 (.out1(sig_in_bus_mergerproxy_in213_2), .in1(sig_in_vector_bus_mergerproxy_in213_2));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in218_0 (.out1(sig_in_bus_mergerproxy_in218_0), .in1(sig_in_vector_bus_mergerproxy_in218_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in223_0 (.out1(sig_in_bus_mergerproxy_in223_0), .in1(sig_in_vector_bus_mergerproxy_in223_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in223_1 (.out1(sig_in_bus_mergerproxy_in223_1), .in1(sig_in_vector_bus_mergerproxy_in223_1));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in223_2 (.out1(sig_in_bus_mergerproxy_in223_2), .in1(sig_in_vector_bus_mergerproxy_in223_2));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in28_0 (.out1(sig_in_bus_mergerproxy_in28_0), .in1(sig_in_vector_bus_mergerproxy_in28_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in28_1 (.out1(sig_in_bus_mergerproxy_in28_1), .in1(sig_in_vector_bus_mergerproxy_in28_1));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in28_2 (.out1(sig_in_bus_mergerproxy_in28_2), .in1(sig_in_vector_bus_mergerproxy_in28_2));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in314_0 (.out1(sig_in_bus_mergerproxy_in314_0), .in1(sig_in_vector_bus_mergerproxy_in314_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in314_1 (.out1(sig_in_bus_mergerproxy_in314_1), .in1(sig_in_vector_bus_mergerproxy_in314_1));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in314_2 (.out1(sig_in_bus_mergerproxy_in314_2), .in1(sig_in_vector_bus_mergerproxy_in314_2));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in319_0 (.out1(sig_in_bus_mergerproxy_in319_0), .in1(sig_in_vector_bus_mergerproxy_in319_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in324_0 (.out1(sig_in_bus_mergerproxy_in324_0), .in1(sig_in_vector_bus_mergerproxy_in324_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in324_1 (.out1(sig_in_bus_mergerproxy_in324_1), .in1(sig_in_vector_bus_mergerproxy_in324_1));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in324_2 (.out1(sig_in_bus_mergerproxy_in324_2), .in1(sig_in_vector_bus_mergerproxy_in324_2));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in39_0 (.out1(sig_in_bus_mergerproxy_in39_0), .in1(sig_in_vector_bus_mergerproxy_in39_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in39_1 (.out1(sig_in_bus_mergerproxy_in39_1), .in1(sig_in_vector_bus_mergerproxy_in39_1));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in39_2 (.out1(sig_in_bus_mergerproxy_in39_2), .in1(sig_in_vector_bus_mergerproxy_in39_2));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD10_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD10_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD10_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD10_1 (.out1(sig_in_bus_mergerproxy_sel_LOAD10_1), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD10_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD10_2 (.out1(sig_in_bus_mergerproxy_sel_LOAD10_2), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD10_2));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD15_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD15_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD15_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD15_1 (.out1(sig_in_bus_mergerproxy_sel_LOAD15_1), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD15_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD15_2 (.out1(sig_in_bus_mergerproxy_sel_LOAD15_2), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD15_2));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD20_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD20_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD20_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD25_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD25_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD25_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD25_1 (.out1(sig_in_bus_mergerproxy_sel_LOAD25_1), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD25_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD25_2 (.out1(sig_in_bus_mergerproxy_sel_LOAD25_2), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD25_2));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE11_0 (.out1(sig_in_bus_mergerproxy_sel_STORE11_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE11_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE11_1 (.out1(sig_in_bus_mergerproxy_sel_STORE11_1), .in1(sig_in_vector_bus_mergerproxy_sel_STORE11_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE11_2 (.out1(sig_in_bus_mergerproxy_sel_STORE11_2), .in1(sig_in_vector_bus_mergerproxy_sel_STORE11_2));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE16_0 (.out1(sig_in_bus_mergerproxy_sel_STORE16_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE16_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE16_1 (.out1(sig_in_bus_mergerproxy_sel_STORE16_1), .in1(sig_in_vector_bus_mergerproxy_sel_STORE16_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE16_2 (.out1(sig_in_bus_mergerproxy_sel_STORE16_2), .in1(sig_in_vector_bus_mergerproxy_sel_STORE16_2));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE21_0 (.out1(sig_in_bus_mergerproxy_sel_STORE21_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE21_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE26_0 (.out1(sig_in_bus_mergerproxy_sel_STORE26_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE26_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE26_1 (.out1(sig_in_bus_mergerproxy_sel_STORE26_1), .in1(sig_in_vector_bus_mergerproxy_sel_STORE26_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE26_2 (.out1(sig_in_bus_mergerproxy_sel_STORE26_2), .in1(sig_in_vector_bus_mergerproxy_sel_STORE26_2));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_7_i0_fu_main_28882_30308), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_0_8_15_i0_fu_main_28882_30330), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_0_8_16_i0_fu_main_28882_30343), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_0_8_17_i0_fu_main_28882_30356), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_8_i0_fu_main_28882_30360), .wenable(wrenable_reg_4));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_11_i0_fu_main_28882_30489), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_conv_out_is_connected_18_i0_fu_main_28882_29849_I_8_2), .wenable(wrenable_reg_6));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy5_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy5_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram6_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram6_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in112_ (.out1(sig_out_vector_bus_mergerproxy_in112_), .in1(sig_out_bus_mergerproxy_in112_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in117_ (.out1(sig_out_vector_bus_mergerproxy_in117_), .in1(sig_out_bus_mergerproxy_in117_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in122_ (.out1(sig_out_vector_bus_mergerproxy_in122_), .in1(sig_out_bus_mergerproxy_in122_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in17_ (.out1(sig_out_vector_bus_mergerproxy_in17_), .in1(sig_out_bus_mergerproxy_in17_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in213_ (.out1(sig_out_vector_bus_mergerproxy_in213_), .in1(sig_out_bus_mergerproxy_in213_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in218_ (.out1(sig_out_vector_bus_mergerproxy_in218_), .in1(sig_out_bus_mergerproxy_in218_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in223_ (.out1(sig_out_vector_bus_mergerproxy_in223_), .in1(sig_out_bus_mergerproxy_in223_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in28_ (.out1(sig_out_vector_bus_mergerproxy_in28_), .in1(sig_out_bus_mergerproxy_in28_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in314_ (.out1(sig_out_vector_bus_mergerproxy_in314_), .in1(sig_out_bus_mergerproxy_in314_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in319_ (.out1(sig_out_vector_bus_mergerproxy_in319_), .in1(sig_out_bus_mergerproxy_in319_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in324_ (.out1(sig_out_vector_bus_mergerproxy_in324_), .in1(sig_out_bus_mergerproxy_in324_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in39_ (.out1(sig_out_vector_bus_mergerproxy_in39_), .in1(sig_out_bus_mergerproxy_in39_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD10_ (.out1(sig_out_vector_bus_mergerproxy_sel_LOAD10_), .in1(sig_out_bus_mergerproxy_sel_LOAD10_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD15_ (.out1(sig_out_vector_bus_mergerproxy_sel_LOAD15_), .in1(sig_out_bus_mergerproxy_sel_LOAD15_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD20_ (.out1(sig_out_vector_bus_mergerproxy_sel_LOAD20_), .in1(sig_out_bus_mergerproxy_sel_LOAD20_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD25_ (.out1(sig_out_vector_bus_mergerproxy_sel_LOAD25_), .in1(sig_out_bus_mergerproxy_sel_LOAD25_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE11_ (.out1(sig_out_vector_bus_mergerproxy_sel_STORE11_), .in1(sig_out_bus_mergerproxy_sel_STORE11_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE16_ (.out1(sig_out_vector_bus_mergerproxy_sel_STORE16_), .in1(sig_out_bus_mergerproxy_sel_STORE16_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE21_ (.out1(sig_out_vector_bus_mergerproxy_sel_STORE21_), .in1(sig_out_bus_mergerproxy_sel_STORE21_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE26_ (.out1(sig_out_vector_bus_mergerproxy_sel_STORE26_), .in1(sig_out_bus_mergerproxy_sel_STORE26_));
  // io-signal post fix
  assign OUT_CONDITION_main_28882_29850 = out_read_cond_FU_12_i0_fu_main_28882_29850;
  assign OUT_UNBOUNDED_main_28882_29843 = s_done_fu_main_28882_29843;
  assign OUT_UNBOUNDED_main_28882_29849 = s_done_fu_main_28882_29849;
  assign OUT_UNBOUNDED_main_28882_29871 = s_done_fu_main_28882_29871;

endmodule

// FSM based controller description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_main(done_port, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_STORE, selector_IN_UNBOUNDED_main_28882_29843, selector_IN_UNBOUNDED_main_28882_29849, selector_IN_UNBOUNDED_main_28882_29871, selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0, selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_1_0_0, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, OUT_CONDITION_main_28882_29850, OUT_UNBOUNDED_main_28882_29843, OUT_UNBOUNDED_main_28882_29849, OUT_UNBOUNDED_main_28882_29871, clock, reset, start_port);
  // IN
  input OUT_CONDITION_main_28882_29850;
  input OUT_UNBOUNDED_main_28882_29843;
  input OUT_UNBOUNDED_main_28882_29849;
  input OUT_UNBOUNDED_main_28882_29871;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_STORE;
  output selector_IN_UNBOUNDED_main_28882_29843;
  output selector_IN_UNBOUNDED_main_28882_29849;
  output selector_IN_UNBOUNDED_main_28882_29871;
  output selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0;
  output selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_1_0_0;
  output wrenable_reg_0;
  output wrenable_reg_1;
  output wrenable_reg_2;
  output wrenable_reg_3;
  output wrenable_reg_4;
  output wrenable_reg_5;
  output wrenable_reg_6;
  parameter [10:0] S_0 = 11'b00000000001,
    S_1 = 11'b00000000010,
    S_2 = 11'b00000000100,
    S_3 = 11'b00000001000,
    S_4 = 11'b00000010000,
    S_5 = 11'b00000100000,
    S_6 = 11'b00001000000,
    S_10 = 11'b10000000000,
    S_7 = 11'b00010000000,
    S_8 = 11'b00100000000,
    S_9 = 11'b01000000000;
  reg [10:0] _present_state, _next_state;
  reg done_port;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_STORE;
  reg selector_IN_UNBOUNDED_main_28882_29843;
  reg selector_IN_UNBOUNDED_main_28882_29849;
  reg selector_IN_UNBOUNDED_main_28882_29871;
  reg selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0;
  reg selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_1_0_0;
  reg wrenable_reg_0;
  reg wrenable_reg_1;
  reg wrenable_reg_2;
  reg wrenable_reg_3;
  reg wrenable_reg_4;
  reg wrenable_reg_5;
  reg wrenable_reg_6;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_STORE = 1'b0;
    selector_IN_UNBOUNDED_main_28882_29843 = 1'b0;
    selector_IN_UNBOUNDED_main_28882_29849 = 1'b0;
    selector_IN_UNBOUNDED_main_28882_29871 = 1'b0;
    selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0 = 1'b0;
    selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_1_0_0 = 1'b0;
    wrenable_reg_0 = 1'b0;
    wrenable_reg_1 = 1'b0;
    wrenable_reg_2 = 1'b0;
    wrenable_reg_3 = 1'b0;
    wrenable_reg_4 = 1'b0;
    wrenable_reg_5 = 1'b0;
    wrenable_reg_6 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          selector_IN_UNBOUNDED_main_28882_29843 = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_5 = 1'b1;
          if (OUT_UNBOUNDED_main_28882_29843 == 1'b0)
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
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0 = 1'bX;
          selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_1_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_2 = 1'bX;
          wrenable_reg_3 = 1'bX;
          wrenable_reg_4 = 1'bX;
          wrenable_reg_5 = 1'bX;
          wrenable_reg_6 = 1'bX;
          _next_state = S_0;
        end
      S_1 :
        begin
          if (OUT_UNBOUNDED_main_28882_29843 == 1'b0)
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
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_STORE = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_STORE = 1'b1;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0 = 1'b1;
          selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_1_0_0 = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          selector_IN_UNBOUNDED_main_28882_29849 = 1'b1;
          wrenable_reg_6 = 1'b1;
          if (OUT_UNBOUNDED_main_28882_29849 == 1'b0)
            begin
              _next_state = S_5;
            end
          else
            begin
              _next_state = S_6;
            end
        end
      S_5 :
        begin
          wrenable_reg_6 = 1'b1;
          if (OUT_UNBOUNDED_main_28882_29849 == 1'b0)
            begin
              _next_state = S_5;
            end
          else
            begin
              _next_state = S_6;
            end
        end
      S_6 :
        begin
          if (OUT_CONDITION_main_28882_29850 == 1'b1)
            begin
              _next_state = S_7;
            end
          else
            begin
              _next_state = S_10;
              done_port = 1'b1;
            end
        end
      S_10 :
        begin
          _next_state = S_0;
        end
      S_7 :
        begin
          selector_IN_UNBOUNDED_main_28882_29871 = 1'b1;
          if (OUT_UNBOUNDED_main_28882_29871 == 1'b0)
            begin
              _next_state = S_8;
            end
          else
            begin
              _next_state = S_9;
              done_port = 1'b1;
            end
        end
      S_8 :
        begin
          if (OUT_UNBOUNDED_main_28882_29871 == 1'b0)
            begin
              _next_state = S_8;
            end
          else
            begin
              _next_state = S_9;
              done_port = 1'b1;
            end
        end
      S_9 :
        begin
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0 = 1'bX;
          selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_1_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_2 = 1'bX;
          wrenable_reg_3 = 1'bX;
          wrenable_reg_4 = 1'bX;
          wrenable_reg_5 = 1'bX;
          wrenable_reg_6 = 1'bX;
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
  parameter MEM_var_28859_28880=160, MEM_var_28861_28880=192, MEM_var_28862_28880=224, MEM_var_28864_28880=256, MEM_var_28865_28880=288, MEM_var_28866_28880=320, MEM_var_28867_28882=32, MEM_var_28868_28882=64, MEM_var_28869_28882=96, MEM_var_28870_28882=128;
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
  wire OUT_CONDITION_main_28882_29850;
  wire OUT_UNBOUNDED_main_28882_29843;
  wire OUT_UNBOUNDED_main_28882_29849;
  wire OUT_UNBOUNDED_main_28882_29871;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_STORE;
  wire selector_IN_UNBOUNDED_main_28882_29843;
  wire selector_IN_UNBOUNDED_main_28882_29849;
  wire selector_IN_UNBOUNDED_main_28882_29871;
  wire selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0;
  wire selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_1_0_0;
  wire wrenable_reg_0;
  wire wrenable_reg_1;
  wire wrenable_reg_2;
  wire wrenable_reg_3;
  wire wrenable_reg_4;
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  
  controller_main Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_STORE), .selector_IN_UNBOUNDED_main_28882_29843(selector_IN_UNBOUNDED_main_28882_29843), .selector_IN_UNBOUNDED_main_28882_29849(selector_IN_UNBOUNDED_main_28882_29849), .selector_IN_UNBOUNDED_main_28882_29871(selector_IN_UNBOUNDED_main_28882_29871), .selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0), .selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_1_0_0(selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_1_0_0), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .OUT_CONDITION_main_28882_29850(OUT_CONDITION_main_28882_29850), .OUT_UNBOUNDED_main_28882_29843(OUT_UNBOUNDED_main_28882_29843), .OUT_UNBOUNDED_main_28882_29849(OUT_UNBOUNDED_main_28882_29849), .OUT_UNBOUNDED_main_28882_29871(OUT_UNBOUNDED_main_28882_29871), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_main #(.MEM_var_28859_28880(MEM_var_28859_28880), .MEM_var_28861_28880(MEM_var_28861_28880), .MEM_var_28862_28880(MEM_var_28862_28880), .MEM_var_28864_28880(MEM_var_28864_28880), .MEM_var_28865_28880(MEM_var_28865_28880), .MEM_var_28866_28880(MEM_var_28866_28880), .MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28869_28882(MEM_var_28869_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_CONDITION_main_28882_29850(OUT_CONDITION_main_28882_29850), .OUT_UNBOUNDED_main_28882_29843(OUT_UNBOUNDED_main_28882_29843), .OUT_UNBOUNDED_main_28882_29849(OUT_UNBOUNDED_main_28882_29849), .OUT_UNBOUNDED_main_28882_29871(OUT_UNBOUNDED_main_28882_29871), .clock(clock), .reset(reset), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_STORE), .selector_IN_UNBOUNDED_main_28882_29843(selector_IN_UNBOUNDED_main_28882_29843), .selector_IN_UNBOUNDED_main_28882_29849(selector_IN_UNBOUNDED_main_28882_29849), .selector_IN_UNBOUNDED_main_28882_29871(selector_IN_UNBOUNDED_main_28882_29871), .selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0), .selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_1_0_0(selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i1_1_0_0), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6));
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
  parameter MEM_var_28859_28880=160, MEM_var_28861_28880=192, MEM_var_28862_28880=224, MEM_var_28864_28880=256, MEM_var_28865_28880=288, MEM_var_28866_28880=320, MEM_var_28867_28882=32, MEM_var_28868_28882=64, MEM_var_28869_28882=96, MEM_var_28870_28882=128;
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
  
  _main #(.MEM_var_28859_28880(MEM_var_28859_28880), .MEM_var_28861_28880(MEM_var_28861_28880), .MEM_var_28862_28880(MEM_var_28862_28880), .MEM_var_28864_28880(MEM_var_28864_28880), .MEM_var_28865_28880(MEM_var_28865_28880), .MEM_var_28866_28880(MEM_var_28866_28880), .MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28869_28882(MEM_var_28869_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) _main_i0 (.done_port(done_port), .Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .clock(clock), .reset(reset), .start_port(start_port), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram({8'b00000000, 8'b00000000}), .Sin_DataRdy({1'b0, 1'b0}), .Min_oe_ram({1'b0, 1'b0}), .Min_we_ram({1'b0, 1'b0}), .Min_addr_ram({9'b000000000, 9'b000000000}), .Min_Wdata_ram({8'b00000000, 8'b00000000}), .Min_data_ram_size({4'b0000, 4'b0000}));

endmodule


