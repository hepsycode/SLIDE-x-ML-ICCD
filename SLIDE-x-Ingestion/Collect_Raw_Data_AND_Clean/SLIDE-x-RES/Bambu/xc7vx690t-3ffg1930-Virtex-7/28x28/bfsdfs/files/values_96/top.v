// 
// Politecnico di Milano
// Code created using PandA - Version: PandA 0.9.6 - Revision 891ec3caed502474cab0813cc4a9fc678deabaa5 - Date 2022-06-07T23:15:36
// bambu executed with: bambu -I/home/dews/Scrivania/bambu-hls/RESULTS/Bambu/xc7vx690t-3ffg1930-Virtex-7/28x28/bfsdfs/includes/values_96 --simulate --simulator=VERILATOR --clock-period=5 --device-name=xc7vx690t-3ffg1930-VVD /home/dews/Scrivania/bambu-hls/cc4cs_bambu/benchmarkBasic/bfsdfs/thrd.c 
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
module mult_expr_FU(clock, in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1, PIPE_PARAMETER=0;
  // IN
  input clock;
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  generate
    if(PIPE_PARAMETER==1)
    begin
      reg signed [BITSIZE_out1-1:0] out1_reg;
      assign out1 = out1_reg;
      always @(posedge clock)
      begin
        out1_reg <= in1 * in2;
      end
    end
    else if(PIPE_PARAMETER>1)
    begin
      reg signed [BITSIZE_in1-1:0] in1_in;
      reg signed [BITSIZE_in2-1:0] in2_in;
      wire signed [BITSIZE_out1-1:0] mult_res;
      reg signed [BITSIZE_out1-1:0] mul [PIPE_PARAMETER-2:0];
      integer i;
      assign mult_res = in1_in * in2_in;
      always @(posedge clock)
      begin
        in1_in <= in1;
        in2_in <= in2;
        mul[PIPE_PARAMETER-2] <= mult_res;
        for (i=0; i<PIPE_PARAMETER-2; i=i+1)
          mul[i] <= mul[i+1];
      end
      assign out1 = mul[0];
    end
    else
    begin
      assign out1 = in1 * in2;
    end
    endgenerate

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
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module widen_mult_expr_FU(clock, in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1, PIPE_PARAMETER=0;
  // IN
  input clock;
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  mult_expr_FU #(.BITSIZE_in1(BITSIZE_in1), .BITSIZE_in2(BITSIZE_in2), .BITSIZE_out1(BITSIZE_out1), .PIPE_PARAMETER(PIPE_PARAMETER)) m1 (.out1(out1), .clock(clock), .in1(in1), .in2(in2));
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

// Datapath RTL description for bfsdfsF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_bfsdfsF(clock, reset, in_port_a, in_port_array, M_Rdata_ram, M_DataRdy, proxy_out1_28859, proxy_in1_28859, proxy_in2_28859, proxy_in3_28859, proxy_sel_LOAD_28859, proxy_sel_STORE_28859, proxy_out1_28861, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_out1_28862, proxy_in1_28862, proxy_in2_28862, proxy_in3_28862, proxy_sel_LOAD_28862, proxy_sel_STORE_28862, proxy_out1_28863, proxy_in1_28863, proxy_in2_28863, proxy_in3_28863, proxy_sel_LOAD_28863, proxy_sel_STORE_28863, proxy_out1_28864, proxy_in1_28864, proxy_in2_28864, proxy_in3_28864, proxy_sel_LOAD_28864, proxy_sel_STORE_28864, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, fuselector_BMEMORY_CTRLN_72_i0_LOAD, fuselector_BMEMORY_CTRLN_72_i0_STORE, selector_MUX_181_reg_10_0_0_0, selector_MUX_184_reg_13_0_0_0, selector_MUX_184_reg_13_0_0_1, selector_MUX_193_reg_21_0_0_0, selector_MUX_201_reg_29_0_0_0, selector_MUX_203_reg_30_0_0_0, selector_MUX_203_reg_30_0_0_1, selector_MUX_204_reg_31_0_0_0, selector_MUX_210_reg_9_0_0_0, selector_MUX_26_PROXY_CTRLN_1_i0_0_0_0, selector_MUX_30_PROXY_CTRLN_2_i0_0_0_0, selector_MUX_38_PROXY_CTRLN_4_i0_0_0_0, selector_MUX_39_PROXY_CTRLN_4_i0_1_0_0, selector_MUX_39_PROXY_CTRLN_4_i0_1_0_1, selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_0, selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_1, fuselector_PROXY_CTRLN_0_i0_LOAD, fuselector_PROXY_CTRLN_0_i0_STORE, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, fuselector_PROXY_CTRLN_3_i0_LOAD, fuselector_PROXY_CTRLN_3_i0_STORE, fuselector_PROXY_CTRLN_4_i0_LOAD, fuselector_PROXY_CTRLN_4_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_29, wrenable_reg_3, wrenable_reg_30, wrenable_reg_31, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_bfsdfsF_28872_29321, OUT_CONDITION_bfsdfsF_28872_29465, OUT_CONDITION_bfsdfsF_28872_29476, OUT_CONDITION_bfsdfsF_28872_29490, OUT_CONDITION_bfsdfsF_28872_29496, OUT_CONDITION_bfsdfsF_28872_29500, OUT_CONDITION_bfsdfsF_28872_29504);
  parameter MEM_var_28859_28876=1024, MEM_var_28861_28876=2048, MEM_var_28862_28876=3072, MEM_var_28863_28876=4096, MEM_var_28864_28876=5120;
  // IN
  input clock;
  input reset;
  input [31:0] in_port_a;
  input [31:0] in_port_array;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] proxy_out1_28859;
  input [15:0] proxy_out1_28861;
  input [15:0] proxy_out1_28862;
  input [15:0] proxy_out1_28863;
  input [15:0] proxy_out1_28864;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [25:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  input fuselector_BMEMORY_CTRLN_72_i0_LOAD;
  input fuselector_BMEMORY_CTRLN_72_i0_STORE;
  input selector_MUX_181_reg_10_0_0_0;
  input selector_MUX_184_reg_13_0_0_0;
  input selector_MUX_184_reg_13_0_0_1;
  input selector_MUX_193_reg_21_0_0_0;
  input selector_MUX_201_reg_29_0_0_0;
  input selector_MUX_203_reg_30_0_0_0;
  input selector_MUX_203_reg_30_0_0_1;
  input selector_MUX_204_reg_31_0_0_0;
  input selector_MUX_210_reg_9_0_0_0;
  input selector_MUX_26_PROXY_CTRLN_1_i0_0_0_0;
  input selector_MUX_30_PROXY_CTRLN_2_i0_0_0_0;
  input selector_MUX_38_PROXY_CTRLN_4_i0_0_0_0;
  input selector_MUX_39_PROXY_CTRLN_4_i0_1_0_0;
  input selector_MUX_39_PROXY_CTRLN_4_i0_1_0_1;
  input selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_0;
  input selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_1;
  input fuselector_PROXY_CTRLN_0_i0_LOAD;
  input fuselector_PROXY_CTRLN_0_i0_STORE;
  input fuselector_PROXY_CTRLN_1_i0_LOAD;
  input fuselector_PROXY_CTRLN_1_i0_STORE;
  input fuselector_PROXY_CTRLN_2_i0_LOAD;
  input fuselector_PROXY_CTRLN_2_i0_STORE;
  input fuselector_PROXY_CTRLN_3_i0_LOAD;
  input fuselector_PROXY_CTRLN_3_i0_STORE;
  input fuselector_PROXY_CTRLN_4_i0_LOAD;
  input fuselector_PROXY_CTRLN_4_i0_STORE;
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
  input wrenable_reg_4;
  input wrenable_reg_5;
  input wrenable_reg_6;
  input wrenable_reg_7;
  input wrenable_reg_8;
  input wrenable_reg_9;
  // OUT
  output [15:0] proxy_in1_28859;
  output [25:0] proxy_in2_28859;
  output [7:0] proxy_in3_28859;
  output [1:0] proxy_sel_LOAD_28859;
  output [1:0] proxy_sel_STORE_28859;
  output [15:0] proxy_in1_28861;
  output [25:0] proxy_in2_28861;
  output [7:0] proxy_in3_28861;
  output [1:0] proxy_sel_LOAD_28861;
  output [1:0] proxy_sel_STORE_28861;
  output [15:0] proxy_in1_28862;
  output [25:0] proxy_in2_28862;
  output [7:0] proxy_in3_28862;
  output [1:0] proxy_sel_LOAD_28862;
  output [1:0] proxy_sel_STORE_28862;
  output [15:0] proxy_in1_28863;
  output [25:0] proxy_in2_28863;
  output [7:0] proxy_in3_28863;
  output [1:0] proxy_sel_LOAD_28863;
  output [1:0] proxy_sel_STORE_28863;
  output [15:0] proxy_in1_28864;
  output [25:0] proxy_in2_28864;
  output [7:0] proxy_in3_28864;
  output [1:0] proxy_sel_LOAD_28864;
  output [1:0] proxy_sel_STORE_28864;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [25:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  output OUT_CONDITION_bfsdfsF_28872_29321;
  output OUT_CONDITION_bfsdfsF_28872_29465;
  output OUT_CONDITION_bfsdfsF_28872_29476;
  output OUT_CONDITION_bfsdfsF_28872_29490;
  output OUT_CONDITION_bfsdfsF_28872_29496;
  output OUT_CONDITION_bfsdfsF_28872_29500;
  output OUT_CONDITION_bfsdfsF_28872_29504;
  // Component and signal declarations
  wire [7:0] null_out_signal_BMEMORY_CTRLN_72_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_0_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_2_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_3_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_4_i0_out1_1;
  wire signed [24:0] out_ASSIGN_SIGNED_FU_15_i0_fu_bfsdfsF_28872_30702;
  wire signed [24:0] out_ASSIGN_SIGNED_FU_30_i0_fu_bfsdfsF_28872_30704;
  wire signed [24:0] out_ASSIGN_SIGNED_FU_51_i0_fu_bfsdfsF_28872_30706;
  wire [7:0] out_BMEMORY_CTRLN_72_i0_BMEMORY_CTRLN_72_i0;
  wire [4:0] out_IUconvert_expr_FU_20_i0_fu_bfsdfsF_28872_29338;
  wire [4:0] out_IUconvert_expr_FU_31_i0_fu_bfsdfsF_28872_29366;
  wire [4:0] out_IUconvert_expr_FU_59_i0_fu_bfsdfsF_28872_29411;
  wire [7:0] out_IUdata_converter_FU_14_i0_fu_bfsdfsF_28872_29807;
  wire [7:0] out_IUdata_converter_FU_29_i0_fu_bfsdfsF_28872_29913;
  wire [7:0] out_IUdata_converter_FU_32_i0_fu_bfsdfsF_28872_29368;
  wire [7:0] out_IUdata_converter_FU_46_i0_fu_bfsdfsF_28872_30030;
  wire [7:0] out_IUdata_converter_FU_50_i0_fu_bfsdfsF_28872_30080;
  wire [7:0] out_MUX_181_reg_10_0_0_0;
  wire [24:0] out_MUX_184_reg_13_0_0_0;
  wire [24:0] out_MUX_184_reg_13_0_0_1;
  wire [9:0] out_MUX_193_reg_21_0_0_0;
  wire [7:0] out_MUX_201_reg_29_0_0_0;
  wire [7:0] out_MUX_203_reg_30_0_0_0;
  wire [7:0] out_MUX_203_reg_30_0_0_1;
  wire [7:0] out_MUX_204_reg_31_0_0_0;
  wire [7:0] out_MUX_210_reg_9_0_0_0;
  wire [7:0] out_MUX_26_PROXY_CTRLN_1_i0_0_0_0;
  wire [7:0] out_MUX_30_PROXY_CTRLN_2_i0_0_0_0;
  wire [7:0] out_MUX_38_PROXY_CTRLN_4_i0_0_0_0;
  wire [12:0] out_MUX_39_PROXY_CTRLN_4_i0_1_0_0;
  wire [12:0] out_MUX_39_PROXY_CTRLN_4_i0_1_0_1;
  wire [12:0] out_MUX_4_BMEMORY_CTRLN_72_i0_1_0_0;
  wire [12:0] out_MUX_4_BMEMORY_CTRLN_72_i0_1_0_1;
  wire [7:0] out_PROXY_CTRLN_0_i0_PROXY_CTRLN_0_i0;
  wire [7:0] out_PROXY_CTRLN_1_i0_PROXY_CTRLN_1_i0;
  wire [7:0] out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0;
  wire [7:0] out_PROXY_CTRLN_3_i0_PROXY_CTRLN_3_i0;
  wire [7:0] out_PROXY_CTRLN_4_i0_PROXY_CTRLN_4_i0;
  wire signed [8:0] out_UIdata_converter_FU_11_i0_fu_bfsdfsF_28872_29319;
  wire signed [8:0] out_UIdata_converter_FU_28_i0_fu_bfsdfsF_28872_29362;
  wire signed [8:0] out_UIdata_converter_FU_44_i0_fu_bfsdfsF_28872_29432;
  wire signed [8:0] out_UIdata_converter_FU_47_i0_fu_bfsdfsF_28872_29395;
  wire signed [8:0] out_UIdata_converter_FU_48_i0_fu_bfsdfsF_28872_29488;
  wire signed [5:0] out_UIdata_converter_FU_49_i0_fu_bfsdfsF_28872_29404;
  wire signed [8:0] out_UIdata_converter_FU_9_i0_fu_bfsdfsF_28872_29317;
  wire [31:0] out_UUdata_converter_FU_13_i0_fu_bfsdfsF_28872_29804;
  wire [7:0] out_UUdata_converter_FU_43_i0_fu_bfsdfsF_28872_29429;
  wire [31:0] out_UUdata_converter_FU_45_i0_fu_bfsdfsF_28872_30027;
  wire [7:0] out_UUdata_converter_FU_54_i0_fu_bfsdfsF_28872_29472;
  wire [31:0] out_UUdata_converter_FU_55_i0_fu_bfsdfsF_28872_30060;
  wire [12:0] out_UUdata_converter_FU_7_i0_fu_bfsdfsF_28872_29770;
  wire [31:0] out_addr_expr_FU_10_i0_fu_bfsdfsF_28872_29792;
  wire [31:0] out_addr_expr_FU_12_i0_fu_bfsdfsF_28872_29891;
  wire [31:0] out_addr_expr_FU_16_i0_fu_bfsdfsF_28872_29988;
  wire [31:0] out_addr_expr_FU_17_i0_fu_bfsdfsF_28872_29992;
  wire [31:0] out_addr_expr_FU_8_i0_fu_bfsdfsF_28872_29787;
  wire signed [9:0] out_bit_and_expr_FU_16_0_16_73_i0_fu_bfsdfsF_28872_29820;
  wire signed [8:0] out_bit_and_expr_FU_16_0_16_73_i1_fu_bfsdfsF_28872_29842;
  wire signed [9:0] out_bit_and_expr_FU_16_0_16_73_i2_fu_bfsdfsF_28872_29923;
  wire signed [8:0] out_bit_and_expr_FU_16_0_16_73_i3_fu_bfsdfsF_28872_29944;
  wire signed [9:0] out_bit_and_expr_FU_16_0_16_73_i4_fu_bfsdfsF_28872_30090;
  wire signed [8:0] out_bit_and_expr_FU_16_0_16_73_i5_fu_bfsdfsF_28872_30111;
  wire signed [16:0] out_bit_and_expr_FU_32_0_32_74_i0_fu_bfsdfsF_28872_29833;
  wire signed [16:0] out_bit_and_expr_FU_32_0_32_74_i1_fu_bfsdfsF_28872_29935;
  wire signed [16:0] out_bit_and_expr_FU_32_0_32_74_i2_fu_bfsdfsF_28872_30102;
  wire signed [1:0] out_bit_and_expr_FU_8_0_8_75_i0_fu_bfsdfsF_28872_30530;
  wire signed [1:0] out_bit_and_expr_FU_8_0_8_75_i1_fu_bfsdfsF_28872_30565;
  wire signed [1:0] out_bit_and_expr_FU_8_0_8_75_i2_fu_bfsdfsF_28872_30633;
  wire signed [4:0] out_bit_ior_concat_expr_FU_76_i0_fu_bfsdfsF_28872_29900;
  wire signed [4:0] out_bit_ior_concat_expr_FU_76_i1_fu_bfsdfsF_28872_30003;
  wire signed [4:0] out_bit_ior_concat_expr_FU_76_i2_fu_bfsdfsF_28872_30162;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [16:0] out_const_10;
  wire out_const_11;
  wire [1:0] out_const_12;
  wire [4:0] out_const_13;
  wire [10:0] out_const_14;
  wire [1:0] out_const_15;
  wire [7:0] out_const_16;
  wire [11:0] out_const_17;
  wire [11:0] out_const_18;
  wire [12:0] out_const_19;
  wire [1:0] out_const_2;
  wire [12:0] out_const_20;
  wire [3:0] out_const_3;
  wire [4:0] out_const_4;
  wire [5:0] out_const_5;
  wire [15:0] out_const_6;
  wire [5:0] out_const_7;
  wire [2:0] out_const_8;
  wire [24:0] out_const_9;
  wire [12:0] out_conv_in_port_a_32_13;
  wire [7:0] out_conv_out_IUconvert_expr_FU_20_i0_fu_bfsdfsF_28872_29338_5_8;
  wire [7:0] out_conv_out_IUconvert_expr_FU_31_i0_fu_bfsdfsF_28872_29366_5_8;
  wire [31:0] out_conv_out_const_14_11_32;
  wire [31:0] out_conv_out_const_17_12_32;
  wire [31:0] out_conv_out_const_18_12_32;
  wire [31:0] out_conv_out_const_19_13_32;
  wire [31:0] out_conv_out_const_20_13_32;
  wire [3:0] out_conv_out_const_4_5_4;
  wire [12:0] out_conv_out_reg_0_reg_0_32_13;
  wire signed [7:0] out_conv_out_reg_16_reg_16_I_6_I_8;
  wire [12:0] out_conv_out_reg_19_reg_19_32_13;
  wire [12:0] out_conv_out_reg_1_reg_1_32_13;
  wire [12:0] out_conv_out_reg_23_reg_23_32_13;
  wire [7:0] out_conv_out_reg_28_reg_28_5_8;
  wire [12:0] out_conv_out_reg_3_reg_3_32_13;
  wire [12:0] out_conv_out_reg_4_reg_4_32_13;
  wire [7:0] out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_3_5_8;
  wire [7:0] out_conv_out_u_assign_conn_obj_7_ASSIGN_UNSIGNED_FU_u_assign_4_1_8;
  wire [7:0] out_conv_out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_5_5_8;
  wire [12:0] out_conv_out_ui_pointer_plus_expr_FU_32_32_32_104_i2_fu_bfsdfsF_28872_29813_32_13;
  wire [12:0] out_conv_out_ui_pointer_plus_expr_FU_32_32_32_104_i3_fu_bfsdfsF_28872_29919_32_13;
  wire [12:0] out_conv_out_ui_pointer_plus_expr_FU_32_32_32_104_i5_fu_bfsdfsF_28872_30069_32_13;
  wire out_gt_expr_FU_8_0_8_77_i0_fu_bfsdfsF_28872_30440;
  wire [7:0] out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_0;
  wire [7:0] out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_1;
  wire [7:0] out_iu_conv_conn_obj_9_IUdata_converter_FU_iu_conv_2;
  wire signed [29:0] out_lshift_expr_FU_32_0_32_78_i0_fu_bfsdfsF_28872_30512;
  wire signed [29:0] out_lshift_expr_FU_32_0_32_78_i1_fu_bfsdfsF_28872_30551;
  wire signed [29:0] out_lshift_expr_FU_32_0_32_78_i2_fu_bfsdfsF_28872_30619;
  wire signed [24:0] out_lshift_expr_FU_32_0_32_78_i3_lshift_expr_FU_32_0_32_78_i3;
  wire signed [5:0] out_lshift_expr_FU_8_0_8_79_i0_fu_bfsdfsF_28872_29897;
  wire signed [5:0] out_lshift_expr_FU_8_0_8_79_i1_fu_bfsdfsF_28872_30000;
  wire signed [5:0] out_lshift_expr_FU_8_0_8_79_i2_fu_bfsdfsF_28872_30159;
  wire signed [4:0] out_lshift_expr_FU_8_0_8_79_i3_fu_bfsdfsF_28872_30527;
  wire signed [4:0] out_lshift_expr_FU_8_0_8_79_i4_fu_bfsdfsF_28872_30562;
  wire signed [4:0] out_lshift_expr_FU_8_0_8_79_i5_fu_bfsdfsF_28872_30630;
  wire signed [7:0] out_lshift_expr_FU_8_0_8_80_i0_fu_bfsdfsF_28872_29904;
  wire signed [7:0] out_lshift_expr_FU_8_0_8_80_i1_fu_bfsdfsF_28872_30006;
  wire signed [7:0] out_lshift_expr_FU_8_0_8_80_i2_fu_bfsdfsF_28872_30165;
  wire signed [8:0] out_minus_expr_FU_8_8_8_81_i0_fu_bfsdfsF_28872_29320;
  wire signed [5:0] out_minus_expr_FU_8_8_8_81_i1_fu_bfsdfsF_28872_29414;
  wire signed [8:0] out_minus_expr_FU_8_8_8_81_i2_fu_bfsdfsF_28872_29489;
  wire signed [6:0] out_minus_expr_FU_8_8_8_81_i3_fu_bfsdfsF_28872_29907;
  wire signed [6:0] out_minus_expr_FU_8_8_8_81_i4_fu_bfsdfsF_28872_30009;
  wire signed [6:0] out_minus_expr_FU_8_8_8_81_i5_fu_bfsdfsF_28872_30168;
  wire signed [5:0] out_minus_expr_FU_8_8_8_81_i6_minus_expr_FU_8_8_8_81_i6;
  wire signed [5:0] out_minus_expr_FU_8_8_8_81_i7_fu_bfsdfsF_28872_29365;
  wire signed [23:0] out_mult_expr_FU_32_32_32_0_82_i0_mult_expr_FU_32_32_32_0_82_i0;
  wire out_ne_expr_FU_16_0_16_83_i0_fu_bfsdfsF_28872_30436;
  wire out_ne_expr_FU_16_0_16_83_i1_fu_bfsdfsF_28872_30442;
  wire out_ne_expr_FU_8_0_8_84_i0_fu_bfsdfsF_28872_30438;
  wire signed [9:0] out_plus_expr_FU_16_0_16_85_i0_fu_bfsdfsF_28872_29344;
  wire signed [9:0] out_plus_expr_FU_16_0_16_85_i1_fu_bfsdfsF_28872_29364;
  wire signed [9:0] out_plus_expr_FU_16_0_16_85_i2_fu_bfsdfsF_28872_29417;
  wire signed [11:0] out_plus_expr_FU_16_16_16_86_i0_fu_bfsdfsF_28872_29867;
  wire signed [11:0] out_plus_expr_FU_16_16_16_86_i1_fu_bfsdfsF_28872_29968;
  wire signed [11:0] out_plus_expr_FU_16_16_16_86_i2_fu_bfsdfsF_28872_30135;
  wire signed [28:0] out_plus_expr_FU_32_32_32_87_i0_fu_bfsdfsF_28872_30507;
  wire signed [28:0] out_plus_expr_FU_32_32_32_87_i1_fu_bfsdfsF_28872_30548;
  wire signed [28:0] out_plus_expr_FU_32_32_32_87_i2_fu_bfsdfsF_28872_30616;
  wire signed [3:0] out_plus_expr_FU_8_8_8_88_i0_fu_bfsdfsF_28872_30522;
  wire signed [3:0] out_plus_expr_FU_8_8_8_88_i1_fu_bfsdfsF_28872_30559;
  wire signed [3:0] out_plus_expr_FU_8_8_8_88_i2_fu_bfsdfsF_28872_30627;
  wire out_read_cond_FU_18_i0_fu_bfsdfsF_28872_29321;
  wire out_read_cond_FU_52_i0_fu_bfsdfsF_28872_29465;
  wire out_read_cond_FU_56_i0_fu_bfsdfsF_28872_29476;
  wire out_read_cond_FU_57_i0_fu_bfsdfsF_28872_29490;
  wire out_read_cond_FU_66_i0_fu_bfsdfsF_28872_29496;
  wire out_read_cond_FU_67_i0_fu_bfsdfsF_28872_29500;
  wire out_read_cond_FU_71_i0_fu_bfsdfsF_28872_29504;
  wire [31:0] out_reg_0_reg_0;
  wire [7:0] out_reg_10_reg_10;
  wire [9:0] out_reg_11_reg_11;
  wire [7:0] out_reg_12_reg_12;
  wire [24:0] out_reg_13_reg_13;
  wire [23:0] out_reg_14_reg_14;
  wire [6:0] out_reg_15_reg_15;
  wire [5:0] out_reg_16_reg_16;
  wire [9:0] out_reg_17_reg_17;
  wire [7:0] out_reg_18_reg_18;
  wire [31:0] out_reg_19_reg_19;
  wire [31:0] out_reg_1_reg_1;
  wire [7:0] out_reg_20_reg_20;
  wire [9:0] out_reg_21_reg_21;
  wire out_reg_22_reg_22;
  wire [31:0] out_reg_23_reg_23;
  wire [7:0] out_reg_24_reg_24;
  wire [31:0] out_reg_25_reg_25;
  wire [23:0] out_reg_26_reg_26;
  wire [12:0] out_reg_27_reg_27;
  wire [4:0] out_reg_28_reg_28;
  wire [7:0] out_reg_29_reg_29;
  wire [31:0] out_reg_2_reg_2;
  wire [7:0] out_reg_30_reg_30;
  wire [7:0] out_reg_31_reg_31;
  wire [31:0] out_reg_3_reg_3;
  wire [31:0] out_reg_4_reg_4;
  wire [9:0] out_reg_5_reg_5;
  wire [7:0] out_reg_6_reg_6;
  wire [7:0] out_reg_7_reg_7;
  wire [6:0] out_reg_8_reg_8;
  wire [7:0] out_reg_9_reg_9;
  wire signed [7:0] out_rshift_expr_FU_16_0_16_89_i0_fu_bfsdfsF_28872_29871;
  wire signed [7:0] out_rshift_expr_FU_16_0_16_89_i1_fu_bfsdfsF_28872_29971;
  wire signed [7:0] out_rshift_expr_FU_16_0_16_89_i2_fu_bfsdfsF_28872_30138;
  wire signed [7:0] out_rshift_expr_FU_16_0_16_90_i0_fu_bfsdfsF_28872_30500;
  wire signed [7:0] out_rshift_expr_FU_16_0_16_90_i1_fu_bfsdfsF_28872_30543;
  wire signed [7:0] out_rshift_expr_FU_16_0_16_90_i2_fu_bfsdfsF_28872_30611;
  wire signed [16:0] out_rshift_expr_FU_32_0_32_91_i0_fu_bfsdfsF_28872_29830;
  wire signed [13:0] out_rshift_expr_FU_32_0_32_91_i1_fu_bfsdfsF_28872_29855;
  wire signed [16:0] out_rshift_expr_FU_32_0_32_91_i2_fu_bfsdfsF_28872_29932;
  wire signed [13:0] out_rshift_expr_FU_32_0_32_91_i3_fu_bfsdfsF_28872_29956;
  wire signed [16:0] out_rshift_expr_FU_32_0_32_91_i4_fu_bfsdfsF_28872_30099;
  wire signed [13:0] out_rshift_expr_FU_32_0_32_91_i5_fu_bfsdfsF_28872_30123;
  wire signed [23:0] out_rshift_expr_FU_32_0_32_92_i0_fu_bfsdfsF_28872_30505;
  wire signed [23:0] out_rshift_expr_FU_32_0_32_92_i1_fu_bfsdfsF_28872_30546;
  wire signed [23:0] out_rshift_expr_FU_32_0_32_92_i2_fu_bfsdfsF_28872_30614;
  wire signed [4:0] out_rshift_expr_FU_8_0_8_93_i0_fu_bfsdfsF_28872_30515;
  wire signed [4:0] out_rshift_expr_FU_8_0_8_93_i1_fu_bfsdfsF_28872_30520;
  wire signed [4:0] out_rshift_expr_FU_8_0_8_93_i2_fu_bfsdfsF_28872_30554;
  wire signed [4:0] out_rshift_expr_FU_8_0_8_93_i3_fu_bfsdfsF_28872_30557;
  wire signed [4:0] out_rshift_expr_FU_8_0_8_93_i4_fu_bfsdfsF_28872_30622;
  wire signed [4:0] out_rshift_expr_FU_8_0_8_93_i5_fu_bfsdfsF_28872_30625;
  wire signed [12:0] out_ternary_plus_expr_FU_16_0_16_16_94_i0_fu_bfsdfsF_28872_29864;
  wire signed [12:0] out_ternary_plus_expr_FU_16_0_16_16_94_i1_fu_bfsdfsF_28872_29965;
  wire signed [12:0] out_ternary_plus_expr_FU_16_0_16_16_94_i2_fu_bfsdfsF_28872_30132;
  wire [4:0] out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_3;
  wire [0:0] out_u_assign_conn_obj_7_ASSIGN_UNSIGNED_FU_u_assign_4;
  wire [4:0] out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_5;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_95_i0_fu_bfsdfsF_28872_30584;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_95_i1_fu_bfsdfsF_28872_30599;
  wire [9:0] out_ui_bit_ior_concat_expr_FU_96_i0_fu_bfsdfsF_28872_30017;
  wire [9:0] out_ui_bit_ior_concat_expr_FU_96_i1_fu_bfsdfsF_28872_30051;
  wire out_ui_le_expr_FU_8_0_8_97_i0_fu_bfsdfsF_28872_30444;
  wire [8:0] out_ui_lshift_expr_FU_16_0_16_98_i0_fu_bfsdfsF_28872_30014;
  wire [8:0] out_ui_lshift_expr_FU_16_0_16_98_i1_fu_bfsdfsF_28872_30048;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_98_i2_fu_bfsdfsF_28872_30580;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_98_i3_fu_bfsdfsF_28872_30596;
  wire [12:0] out_ui_lshift_expr_FU_16_0_16_99_i0_fu_bfsdfsF_28872_30021;
  wire [12:0] out_ui_lshift_expr_FU_16_0_16_99_i1_fu_bfsdfsF_28872_30054;
  wire [31:0] out_ui_minus_expr_FU_16_16_16_100_i0_fu_bfsdfsF_28872_30024;
  wire [31:0] out_ui_minus_expr_FU_16_16_16_100_i1_fu_bfsdfsF_28872_30057;
  wire out_ui_ne_expr_FU_8_8_8_101_i0_fu_bfsdfsF_28872_30446;
  wire out_ui_ne_expr_FU_8_8_8_101_i1_fu_bfsdfsF_28872_30448;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_102_i0_fu_bfsdfsF_28872_29434;
  wire [8:0] out_ui_plus_expr_FU_8_8_8_103_i0_fu_bfsdfsF_28872_30576;
  wire [8:0] out_ui_plus_expr_FU_8_8_8_103_i1_fu_bfsdfsF_28872_30593;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_104_i0_fu_bfsdfsF_28872_29422;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_104_i1_fu_bfsdfsF_28872_29474;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_104_i2_fu_bfsdfsF_28872_29813;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_104_i3_fu_bfsdfsF_28872_29919;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_104_i4_fu_bfsdfsF_28872_30036;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_104_i5_fu_bfsdfsF_28872_30069;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_104_i6_fu_bfsdfsF_28872_30086;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_105_i0_fu_bfsdfsF_28872_30569;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_105_i1_fu_bfsdfsF_28872_30588;
  wire [6:0] out_ui_rshift_expr_FU_8_0_8_106_i0_fu_bfsdfsF_28872_30573;
  wire [6:0] out_ui_rshift_expr_FU_8_0_8_106_i1_fu_bfsdfsF_28872_30591;
  wire [7:0] out_vb_assign_conn_obj_10_ASSIGN_VECTOR_BOOL_FU_vb_assign_6;
  wire [7:0] out_vb_assign_conn_obj_11_ASSIGN_VECTOR_BOOL_FU_vb_assign_7;
  wire [7:0] out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_8;
  wire [7:0] out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_9;
  wire [7:0] out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_10;
  wire [7:0] out_vb_assign_conn_obj_6_ASSIGN_VECTOR_BOOL_FU_vb_assign_11;
  wire signed [24:0] out_widen_mult_expr_FU_16_16_32_0_107_i0_fu_bfsdfsF_28872_29929;
  wire signed [24:0] out_widen_mult_expr_FU_16_16_32_0_107_i1_widen_mult_expr_FU_16_16_32_0_107_i1;
  wire [15:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [25:0] sig_in_bus_mergerMout_addr_ram1_0;
  wire [7:0] sig_in_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_bus_mergerMout_we_ram4_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288595_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288616_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288627_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288638_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288649_0;
  wire [25:0] sig_in_bus_mergerproxy_in2_2885910_0;
  wire [25:0] sig_in_bus_mergerproxy_in2_2886111_0;
  wire [25:0] sig_in_bus_mergerproxy_in2_2886212_0;
  wire [25:0] sig_in_bus_mergerproxy_in2_2886313_0;
  wire [25:0] sig_in_bus_mergerproxy_in2_2886414_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_2885915_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_2886116_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_2886217_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_2886318_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_2886419_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2885920_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886121_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886222_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886323_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886424_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2885925_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886126_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886227_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886328_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886429_0;
  wire [15:0] sig_in_vector_bus_mergerMout_Wdata_ram0_0;
  wire [25:0] sig_in_vector_bus_mergerMout_addr_ram1_0;
  wire [7:0] sig_in_vector_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_vector_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_vector_bus_mergerMout_we_ram4_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288595_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288616_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288627_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288638_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288649_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in2_2885910_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in2_2886111_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in2_2886212_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in2_2886313_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in2_2886414_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_2885915_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_2886116_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_2886217_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_2886318_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_2886419_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2885920_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886121_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886222_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886323_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886424_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2885925_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886126_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886227_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886328_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886429_0;
  wire [15:0] sig_out_bus_mergerMout_Wdata_ram0_;
  wire [25:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [7:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire [1:0] sig_out_bus_mergerMout_oe_ram3_;
  wire [1:0] sig_out_bus_mergerMout_we_ram4_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288595_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288616_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288627_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288638_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288649_;
  wire [25:0] sig_out_bus_mergerproxy_in2_2885910_;
  wire [25:0] sig_out_bus_mergerproxy_in2_2886111_;
  wire [25:0] sig_out_bus_mergerproxy_in2_2886212_;
  wire [25:0] sig_out_bus_mergerproxy_in2_2886313_;
  wire [25:0] sig_out_bus_mergerproxy_in2_2886414_;
  wire [7:0] sig_out_bus_mergerproxy_in3_2885915_;
  wire [7:0] sig_out_bus_mergerproxy_in3_2886116_;
  wire [7:0] sig_out_bus_mergerproxy_in3_2886217_;
  wire [7:0] sig_out_bus_mergerproxy_in3_2886318_;
  wire [7:0] sig_out_bus_mergerproxy_in3_2886419_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2885920_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886121_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886222_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886323_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886424_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2885925_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886126_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886227_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886328_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886429_;
  
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(5), .BITSIZE_out1(5)) ASSIGN_UNSIGNED_FU_u_assign_3 (.out1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_3), .in1(out_IUconvert_expr_FU_20_i0_fu_bfsdfsF_28872_29338));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_4 (.out1(out_u_assign_conn_obj_7_ASSIGN_UNSIGNED_FU_u_assign_4), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(5), .BITSIZE_out1(5)) ASSIGN_UNSIGNED_FU_u_assign_5 (.out1(out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_5), .in1(out_IUconvert_expr_FU_31_i0_fu_bfsdfsF_28872_29366));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_10 (.out1(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_10), .in1(out_IUdata_converter_FU_32_i0_fu_bfsdfsF_28872_29368));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_11 (.out1(out_vb_assign_conn_obj_6_ASSIGN_VECTOR_BOOL_FU_vb_assign_11), .in1(out_const_1));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_6 (.out1(out_vb_assign_conn_obj_10_ASSIGN_VECTOR_BOOL_FU_vb_assign_6), .in1(out_conv_out_reg_28_reg_28_5_8));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_7 (.out1(out_vb_assign_conn_obj_11_ASSIGN_VECTOR_BOOL_FU_vb_assign_7), .in1(out_ui_plus_expr_FU_8_0_8_102_i0_fu_bfsdfsF_28872_29434));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_8 (.out1(out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_8), .in1(out_conv_out_IUconvert_expr_FU_20_i0_fu_bfsdfsF_28872_29338_5_8));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_9 (.out1(out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_9), .in1(out_conv_out_IUconvert_expr_FU_31_i0_fu_bfsdfsF_28872_29366_5_8));
  BMEMORY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_Min_oe_ram(1), .PORTSIZE_Min_oe_ram(2), .BITSIZE_Min_we_ram(1), .PORTSIZE_Min_we_ram(2), .BITSIZE_Mout_oe_ram(1), .PORTSIZE_Mout_oe_ram(2), .BITSIZE_Mout_we_ram(1), .PORTSIZE_Mout_we_ram(2), .BITSIZE_M_DataRdy(1), .PORTSIZE_M_DataRdy(2), .BITSIZE_Min_addr_ram(13), .PORTSIZE_Min_addr_ram(2), .BITSIZE_Mout_addr_ram(13), .PORTSIZE_Mout_addr_ram(2), .BITSIZE_M_Rdata_ram(8), .PORTSIZE_M_Rdata_ram(2), .BITSIZE_Min_Wdata_ram(8), .PORTSIZE_Min_Wdata_ram(2), .BITSIZE_Mout_Wdata_ram(8), .PORTSIZE_Mout_Wdata_ram(2), .BITSIZE_Min_data_ram_size(4), .PORTSIZE_Min_data_ram_size(2), .BITSIZE_Mout_data_ram_size(4), .PORTSIZE_Mout_data_ram_size(2)) BMEMORY_CTRLN_72_i0 (.out1({null_out_signal_BMEMORY_CTRLN_72_i0_out1_1, out_BMEMORY_CTRLN_72_i0_BMEMORY_CTRLN_72_i0}), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .in1({8'b00000000, out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_0}), .in2({13'b0000000000000, out_MUX_4_BMEMORY_CTRLN_72_i0_1_0_1}), .in3({4'b0000, out_conv_out_const_4_5_4}), .in4({1'b0, out_const_11}), .sel_LOAD({1'b0, fuselector_BMEMORY_CTRLN_72_i0_LOAD}), .sel_STORE({1'b0, fuselector_BMEMORY_CTRLN_72_i0_STORE}), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .M_Rdata_ram(M_Rdata_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .M_DataRdy(M_DataRdy));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_0 (.out1(out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_0), .in1(out_const_16));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_1), .in1(out_const_1));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_2 (.out1(out_iu_conv_conn_obj_9_IUdata_converter_FU_iu_conv_2), .in1(out_conv_out_reg_16_reg_16_I_6_I_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_181_reg_10_0_0_0 (.out1(out_MUX_181_reg_10_0_0_0), .sel(selector_MUX_181_reg_10_0_0_0), .in1(out_reg_31_reg_31), .in2(out_PROXY_CTRLN_0_i0_PROXY_CTRLN_0_i0));
  MUX_GATE #(.BITSIZE_in1(25), .BITSIZE_in2(25), .BITSIZE_out1(25)) MUX_184_reg_13_0_0_0 (.out1(out_MUX_184_reg_13_0_0_0), .sel(selector_MUX_184_reg_13_0_0_0), .in1(out_ASSIGN_SIGNED_FU_15_i0_fu_bfsdfsF_28872_30702), .in2(out_ASSIGN_SIGNED_FU_30_i0_fu_bfsdfsF_28872_30704));
  MUX_GATE #(.BITSIZE_in1(25), .BITSIZE_in2(25), .BITSIZE_out1(25)) MUX_184_reg_13_0_0_1 (.out1(out_MUX_184_reg_13_0_0_1), .sel(selector_MUX_184_reg_13_0_0_1), .in1(out_ASSIGN_SIGNED_FU_51_i0_fu_bfsdfsF_28872_30706), .in2(out_MUX_184_reg_13_0_0_0));
  MUX_GATE #(.BITSIZE_in1(10), .BITSIZE_in2(10), .BITSIZE_out1(10)) MUX_193_reg_21_0_0_0 (.out1(out_MUX_193_reg_21_0_0_0), .sel(selector_MUX_193_reg_21_0_0_0), .in1(out_bit_and_expr_FU_16_0_16_73_i0_fu_bfsdfsF_28872_29820), .in2(out_bit_and_expr_FU_16_0_16_73_i4_fu_bfsdfsF_28872_30090));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_201_reg_29_0_0_0 (.out1(out_MUX_201_reg_29_0_0_0), .sel(selector_MUX_201_reg_29_0_0_0), .in1(out_reg_9_reg_9), .in2(out_PROXY_CTRLN_1_i0_PROXY_CTRLN_1_i0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_203_reg_30_0_0_0 (.out1(out_MUX_203_reg_30_0_0_0), .sel(selector_MUX_203_reg_30_0_0_0), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0), .in2(out_conv_out_u_assign_conn_obj_7_ASSIGN_UNSIGNED_FU_u_assign_4_1_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_203_reg_30_0_0_1 (.out1(out_MUX_203_reg_30_0_0_1), .sel(selector_MUX_203_reg_30_0_0_1), .in1(out_ui_plus_expr_FU_8_0_8_102_i0_fu_bfsdfsF_28872_29434), .in2(out_MUX_203_reg_30_0_0_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_204_reg_31_0_0_0 (.out1(out_MUX_204_reg_31_0_0_0), .sel(selector_MUX_204_reg_31_0_0_0), .in1(out_PROXY_CTRLN_0_i0_PROXY_CTRLN_0_i0), .in2(out_conv_out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_5_5_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_210_reg_9_0_0_0 (.out1(out_MUX_210_reg_9_0_0_0), .sel(selector_MUX_210_reg_9_0_0_0), .in1(out_PROXY_CTRLN_1_i0_PROXY_CTRLN_1_i0), .in2(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_3_5_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_26_PROXY_CTRLN_1_i0_0_0_0 (.out1(out_MUX_26_PROXY_CTRLN_1_i0_0_0_0), .sel(selector_MUX_26_PROXY_CTRLN_1_i0_0_0_0), .in1(out_vb_assign_conn_obj_10_ASSIGN_VECTOR_BOOL_FU_vb_assign_6), .in2(out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_30_PROXY_CTRLN_2_i0_0_0_0 (.out1(out_MUX_30_PROXY_CTRLN_2_i0_0_0_0), .sel(selector_MUX_30_PROXY_CTRLN_2_i0_0_0_0), .in1(out_vb_assign_conn_obj_11_ASSIGN_VECTOR_BOOL_FU_vb_assign_7), .in2(out_vb_assign_conn_obj_6_ASSIGN_VECTOR_BOOL_FU_vb_assign_11));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_38_PROXY_CTRLN_4_i0_0_0_0 (.out1(out_MUX_38_PROXY_CTRLN_4_i0_0_0_0), .sel(selector_MUX_38_PROXY_CTRLN_4_i0_0_0_0), .in1(out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_1), .in2(out_iu_conv_conn_obj_9_IUdata_converter_FU_iu_conv_2));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_39_PROXY_CTRLN_4_i0_1_0_0 (.out1(out_MUX_39_PROXY_CTRLN_4_i0_1_0_0), .sel(selector_MUX_39_PROXY_CTRLN_4_i0_1_0_0), .in1(out_conv_out_reg_23_reg_23_32_13), .in2(out_conv_out_ui_pointer_plus_expr_FU_32_32_32_104_i2_fu_bfsdfsF_28872_29813_32_13));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_39_PROXY_CTRLN_4_i0_1_0_1 (.out1(out_MUX_39_PROXY_CTRLN_4_i0_1_0_1), .sel(selector_MUX_39_PROXY_CTRLN_4_i0_1_0_1), .in1(out_conv_out_ui_pointer_plus_expr_FU_32_32_32_104_i3_fu_bfsdfsF_28872_29919_32_13), .in2(out_MUX_39_PROXY_CTRLN_4_i0_1_0_0));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_4_BMEMORY_CTRLN_72_i0_1_0_0 (.out1(out_MUX_4_BMEMORY_CTRLN_72_i0_1_0_0), .sel(selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_0), .in1(out_conv_out_reg_19_reg_19_32_13), .in2(out_UUdata_converter_FU_7_i0_fu_bfsdfsF_28872_29770));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_4_BMEMORY_CTRLN_72_i0_1_0_1 (.out1(out_MUX_4_BMEMORY_CTRLN_72_i0_1_0_1), .sel(selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_1), .in1(out_conv_out_ui_pointer_plus_expr_FU_32_32_32_104_i5_fu_bfsdfsF_28872_30069_32_13), .in2(out_MUX_4_BMEMORY_CTRLN_72_i0_1_0_0));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_0_i0 (.out1({null_out_signal_PROXY_CTRLN_0_i0_out1_1, out_PROXY_CTRLN_0_i0_PROXY_CTRLN_0_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288595_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2885910_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2885915_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2885920_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2885925_0), .in1({8'b00000000, out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_9}), .in2({13'b0000000000000, out_conv_out_reg_1_reg_1_32_13}), .in3({4'b0000, out_conv_out_const_4_5_4}), .in4({1'b0, out_const_11}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_0_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_0_i0_STORE}), .proxy_out1(proxy_out1_28859));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_1_i0 (.out1({null_out_signal_PROXY_CTRLN_1_i0_out1_1, out_PROXY_CTRLN_1_i0_PROXY_CTRLN_1_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288616_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2886111_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886116_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886121_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886126_0), .in1({8'b00000000, out_MUX_26_PROXY_CTRLN_1_i0_0_0_0}), .in2({13'b0000000000000, out_conv_out_reg_0_reg_0_32_13}), .in3({4'b0000, out_conv_out_const_4_5_4}), .in4({1'b0, out_const_11}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_1_i0_STORE}), .proxy_out1(proxy_out1_28861));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_2_i0 (.out1({null_out_signal_PROXY_CTRLN_2_i0_out1_1, out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288627_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2886212_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886217_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886222_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886227_0), .in1({8'b00000000, out_MUX_30_PROXY_CTRLN_2_i0_0_0_0}), .in2({13'b0000000000000, out_conv_out_reg_4_reg_4_32_13}), .in3({4'b0000, out_conv_out_const_4_5_4}), .in4({1'b0, out_const_11}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_2_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_2_i0_STORE}), .proxy_out1(proxy_out1_28862));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_3_i0 (.out1({null_out_signal_PROXY_CTRLN_3_i0_out1_1, out_PROXY_CTRLN_3_i0_PROXY_CTRLN_3_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288638_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2886313_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886318_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886323_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886328_0), .in1({8'b00000000, out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_10}), .in2({13'b0000000000000, out_conv_out_reg_3_reg_3_32_13}), .in3({4'b0000, out_conv_out_const_4_5_4}), .in4({1'b0, out_const_11}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_3_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_3_i0_STORE}), .proxy_out1(proxy_out1_28863));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_4_i0 (.out1({null_out_signal_PROXY_CTRLN_4_i0_out1_1, out_PROXY_CTRLN_4_i0_PROXY_CTRLN_4_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288649_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2886414_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886419_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886424_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886429_0), .in1({8'b00000000, out_MUX_38_PROXY_CTRLN_4_i0_0_0_0}), .in2({13'b0000000000000, out_MUX_39_PROXY_CTRLN_4_i0_1_0_1}), .in3({4'b0000, out_conv_out_const_4_5_4}), .in4({1'b0, out_const_11}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_4_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_4_i0_STORE}), .proxy_out1(proxy_out1_28864));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288595_ (.out1(sig_out_bus_mergerproxy_in1_288595_), .in1({sig_in_bus_mergerproxy_in1_288595_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288616_ (.out1(sig_out_bus_mergerproxy_in1_288616_), .in1({sig_in_bus_mergerproxy_in1_288616_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288627_ (.out1(sig_out_bus_mergerproxy_in1_288627_), .in1({sig_in_bus_mergerproxy_in1_288627_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288638_ (.out1(sig_out_bus_mergerproxy_in1_288638_), .in1({sig_in_bus_mergerproxy_in1_288638_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288649_ (.out1(sig_out_bus_mergerproxy_in1_288649_), .in1({sig_in_bus_mergerproxy_in1_288649_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in2_2885910_ (.out1(sig_out_bus_mergerproxy_in2_2885910_), .in1({sig_in_bus_mergerproxy_in2_2885910_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in2_2886111_ (.out1(sig_out_bus_mergerproxy_in2_2886111_), .in1({sig_in_bus_mergerproxy_in2_2886111_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in2_2886212_ (.out1(sig_out_bus_mergerproxy_in2_2886212_), .in1({sig_in_bus_mergerproxy_in2_2886212_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in2_2886313_ (.out1(sig_out_bus_mergerproxy_in2_2886313_), .in1({sig_in_bus_mergerproxy_in2_2886313_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in2_2886414_ (.out1(sig_out_bus_mergerproxy_in2_2886414_), .in1({sig_in_bus_mergerproxy_in2_2886414_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_2885915_ (.out1(sig_out_bus_mergerproxy_in3_2885915_), .in1({sig_in_bus_mergerproxy_in3_2885915_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_2886116_ (.out1(sig_out_bus_mergerproxy_in3_2886116_), .in1({sig_in_bus_mergerproxy_in3_2886116_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_2886217_ (.out1(sig_out_bus_mergerproxy_in3_2886217_), .in1({sig_in_bus_mergerproxy_in3_2886217_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_2886318_ (.out1(sig_out_bus_mergerproxy_in3_2886318_), .in1({sig_in_bus_mergerproxy_in3_2886318_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_2886419_ (.out1(sig_out_bus_mergerproxy_in3_2886419_), .in1({sig_in_bus_mergerproxy_in3_2886419_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2885920_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2885920_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2885920_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886121_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886121_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886121_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886222_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886222_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886222_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886323_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886323_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886323_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886424_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886424_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886424_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2885925_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2885925_), .in1({sig_in_bus_mergerproxy_sel_STORE_2885925_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886126_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886126_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886126_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886227_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886227_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886227_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886328_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886328_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886328_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886429_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886429_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886429_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(17), .value(17'b01111111111111111)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_11 (.out1(out_const_11));
  constant_value #(.BITSIZE_out1(2), .value(2'b10)) const_12 (.out1(out_const_12));
  constant_value #(.BITSIZE_out1(5), .value(5'b10110)) const_13 (.out1(out_const_13));
  constant_value #(.BITSIZE_out1(11), .value(MEM_var_28859_28876)) const_14 (.out1(out_const_14));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_15 (.out1(out_const_15));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111110)) const_16 (.out1(out_const_16));
  constant_value #(.BITSIZE_out1(12), .value(MEM_var_28861_28876)) const_17 (.out1(out_const_17));
  constant_value #(.BITSIZE_out1(12), .value(MEM_var_28862_28876)) const_18 (.out1(out_const_18));
  constant_value #(.BITSIZE_out1(13), .value(MEM_var_28863_28876)) const_19 (.out1(out_const_19));
  constant_value #(.BITSIZE_out1(2), .value(2'b01)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(13), .value(MEM_var_28864_28876)) const_20 (.out1(out_const_20));
  constant_value #(.BITSIZE_out1(4), .value(4'b0100)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(6), .value(6'b010000)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(16), .value(16'b0100001011001001)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(6), .value(6'b010110)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(3), .value(3'b011)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(25), .value(25'b0111111111101100100001011)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_in_port_a_32_13 (.out1(out_conv_in_port_a_32_13), .in1(in_port_a));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(8)) conv_out_IUconvert_expr_FU_20_i0_fu_bfsdfsF_28872_29338_5_8 (.out1(out_conv_out_IUconvert_expr_FU_20_i0_fu_bfsdfsF_28872_29338_5_8), .in1(out_IUconvert_expr_FU_20_i0_fu_bfsdfsF_28872_29338));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(8)) conv_out_IUconvert_expr_FU_31_i0_fu_bfsdfsF_28872_29366_5_8 (.out1(out_conv_out_IUconvert_expr_FU_31_i0_fu_bfsdfsF_28872_29366_5_8), .in1(out_IUconvert_expr_FU_31_i0_fu_bfsdfsF_28872_29366));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(32)) conv_out_const_14_11_32 (.out1(out_conv_out_const_14_11_32), .in1(out_const_14));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(32)) conv_out_const_17_12_32 (.out1(out_conv_out_const_17_12_32), .in1(out_const_17));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(32)) conv_out_const_18_12_32 (.out1(out_conv_out_const_18_12_32), .in1(out_const_18));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_const_19_13_32 (.out1(out_conv_out_const_19_13_32), .in1(out_const_19));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_const_20_13_32 (.out1(out_conv_out_const_20_13_32), .in1(out_const_20));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_4_5_4 (.out1(out_conv_out_const_4_5_4), .in1(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_0_reg_0_32_13 (.out1(out_conv_out_reg_0_reg_0_32_13), .in1(out_reg_0_reg_0));
  IIdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(8)) conv_out_reg_16_reg_16_I_6_I_8 (.out1(out_conv_out_reg_16_reg_16_I_6_I_8), .in1(out_reg_16_reg_16));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_19_reg_19_32_13 (.out1(out_conv_out_reg_19_reg_19_32_13), .in1(out_reg_19_reg_19));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_1_reg_1_32_13 (.out1(out_conv_out_reg_1_reg_1_32_13), .in1(out_reg_1_reg_1));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_23_reg_23_32_13 (.out1(out_conv_out_reg_23_reg_23_32_13), .in1(out_reg_23_reg_23));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(8)) conv_out_reg_28_reg_28_5_8 (.out1(out_conv_out_reg_28_reg_28_5_8), .in1(out_reg_28_reg_28));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_3_reg_3_32_13 (.out1(out_conv_out_reg_3_reg_3_32_13), .in1(out_reg_3_reg_3));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_4_reg_4_32_13 (.out1(out_conv_out_reg_4_reg_4_32_13), .in1(out_reg_4_reg_4));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_3_5_8 (.out1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_3_5_8), .in1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_3));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_7_ASSIGN_UNSIGNED_FU_u_assign_4_1_8 (.out1(out_conv_out_u_assign_conn_obj_7_ASSIGN_UNSIGNED_FU_u_assign_4_1_8), .in1(out_u_assign_conn_obj_7_ASSIGN_UNSIGNED_FU_u_assign_4));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_5_5_8 (.out1(out_conv_out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_5_5_8), .in1(out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_5));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_ui_pointer_plus_expr_FU_32_32_32_104_i2_fu_bfsdfsF_28872_29813_32_13 (.out1(out_conv_out_ui_pointer_plus_expr_FU_32_32_32_104_i2_fu_bfsdfsF_28872_29813_32_13), .in1(out_ui_pointer_plus_expr_FU_32_32_32_104_i2_fu_bfsdfsF_28872_29813));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_ui_pointer_plus_expr_FU_32_32_32_104_i3_fu_bfsdfsF_28872_29919_32_13 (.out1(out_conv_out_ui_pointer_plus_expr_FU_32_32_32_104_i3_fu_bfsdfsF_28872_29919_32_13), .in1(out_ui_pointer_plus_expr_FU_32_32_32_104_i3_fu_bfsdfsF_28872_29919));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_ui_pointer_plus_expr_FU_32_32_32_104_i5_fu_bfsdfsF_28872_30069_32_13 (.out1(out_conv_out_ui_pointer_plus_expr_FU_32_32_32_104_i5_fu_bfsdfsF_28872_30069_32_13), .in1(out_ui_pointer_plus_expr_FU_32_32_32_104_i5_fu_bfsdfsF_28872_30069));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_bfsdfsF_28872_29317 (.out1(out_UIdata_converter_FU_9_i0_fu_bfsdfsF_28872_29317), .in1(out_PROXY_CTRLN_1_i0_PROXY_CTRLN_1_i0));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_bfsdfsF_28872_29319 (.out1(out_UIdata_converter_FU_11_i0_fu_bfsdfsF_28872_29319), .in1(out_PROXY_CTRLN_0_i0_PROXY_CTRLN_0_i0));
  minus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) fu_bfsdfsF_28872_29320 (.out1(out_minus_expr_FU_8_8_8_81_i0_fu_bfsdfsF_28872_29320), .in1(out_UIdata_converter_FU_9_i0_fu_bfsdfsF_28872_29317), .in2(out_UIdata_converter_FU_11_i0_fu_bfsdfsF_28872_29319));
  read_cond_FU #(.BITSIZE_in1(1)) fu_bfsdfsF_28872_29321 (.out1(out_read_cond_FU_18_i0_fu_bfsdfsF_28872_29321), .in1(out_ne_expr_FU_16_0_16_83_i0_fu_bfsdfsF_28872_30436));
  IUconvert_expr_FU #(.BITSIZE_in1(6), .BITSIZE_out1(5)) fu_bfsdfsF_28872_29338 (.out1(out_IUconvert_expr_FU_20_i0_fu_bfsdfsF_28872_29338), .in1(out_minus_expr_FU_8_8_8_81_i6_minus_expr_FU_8_8_8_81_i6));
  plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(10)) fu_bfsdfsF_28872_29344 (.out1(out_plus_expr_FU_16_0_16_85_i0_fu_bfsdfsF_28872_29344), .in1(out_UIdata_converter_FU_9_i0_fu_bfsdfsF_28872_29317), .in2(out_const_2));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_bfsdfsF_28872_29362 (.out1(out_UIdata_converter_FU_28_i0_fu_bfsdfsF_28872_29362), .in1(out_reg_10_reg_10));
  plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(10)) fu_bfsdfsF_28872_29364 (.out1(out_plus_expr_FU_16_0_16_85_i1_fu_bfsdfsF_28872_29364), .in1(out_UIdata_converter_FU_28_i0_fu_bfsdfsF_28872_29362), .in2(out_const_2));
  minus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(7), .BITSIZE_out1(6)) fu_bfsdfsF_28872_29365 (.out1(out_minus_expr_FU_8_8_8_81_i7_fu_bfsdfsF_28872_29365), .in1(out_reg_11_reg_11), .in2(out_reg_15_reg_15));
  IUconvert_expr_FU #(.BITSIZE_in1(6), .BITSIZE_out1(5)) fu_bfsdfsF_28872_29366 (.out1(out_IUconvert_expr_FU_31_i0_fu_bfsdfsF_28872_29366), .in1(out_minus_expr_FU_8_8_8_81_i7_fu_bfsdfsF_28872_29365));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_bfsdfsF_28872_29368 (.out1(out_IUdata_converter_FU_32_i0_fu_bfsdfsF_28872_29368), .in1(out_PROXY_CTRLN_4_i0_PROXY_CTRLN_4_i0));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_bfsdfsF_28872_29395 (.out1(out_UIdata_converter_FU_47_i0_fu_bfsdfsF_28872_29395), .in1(out_reg_29_reg_29));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(6)) fu_bfsdfsF_28872_29404 (.out1(out_UIdata_converter_FU_49_i0_fu_bfsdfsF_28872_29404), .in1(out_reg_30_reg_30));
  IUconvert_expr_FU #(.BITSIZE_in1(6), .BITSIZE_out1(5)) fu_bfsdfsF_28872_29411 (.out1(out_IUconvert_expr_FU_59_i0_fu_bfsdfsF_28872_29411), .in1(out_minus_expr_FU_8_8_8_81_i1_fu_bfsdfsF_28872_29414));
  minus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(7), .BITSIZE_out1(6)) fu_bfsdfsF_28872_29414 (.out1(out_minus_expr_FU_8_8_8_81_i1_fu_bfsdfsF_28872_29414), .in1(out_reg_17_reg_17), .in2(out_minus_expr_FU_8_8_8_81_i5_fu_bfsdfsF_28872_30168));
  plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(10)) fu_bfsdfsF_28872_29417 (.out1(out_plus_expr_FU_16_0_16_85_i2_fu_bfsdfsF_28872_29417), .in1(out_UIdata_converter_FU_47_i0_fu_bfsdfsF_28872_29395), .in2(out_const_2));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(32), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_bfsdfsF_28872_29422 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_104_i0_fu_bfsdfsF_28872_29422), .in1(out_conv_in_port_a_32_13), .in2(out_ui_minus_expr_FU_16_16_16_100_i0_fu_bfsdfsF_28872_30024));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_bfsdfsF_28872_29429 (.out1(out_UUdata_converter_FU_43_i0_fu_bfsdfsF_28872_29429), .in1(out_reg_30_reg_30));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_bfsdfsF_28872_29432 (.out1(out_UIdata_converter_FU_44_i0_fu_bfsdfsF_28872_29432), .in1(out_reg_30_reg_30));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_bfsdfsF_28872_29434 (.out1(out_ui_plus_expr_FU_8_0_8_102_i0_fu_bfsdfsF_28872_29434), .in1(out_reg_30_reg_30), .in2(out_const_11));
  read_cond_FU #(.BITSIZE_in1(1)) fu_bfsdfsF_28872_29465 (.out1(out_read_cond_FU_52_i0_fu_bfsdfsF_28872_29465), .in1(out_ne_expr_FU_8_0_8_84_i0_fu_bfsdfsF_28872_30438));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_bfsdfsF_28872_29472 (.out1(out_UUdata_converter_FU_54_i0_fu_bfsdfsF_28872_29472), .in1(out_PROXY_CTRLN_3_i0_PROXY_CTRLN_3_i0));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(32), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_bfsdfsF_28872_29474 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_104_i1_fu_bfsdfsF_28872_29474), .in1(out_conv_in_port_a_32_13), .in2(out_ui_minus_expr_FU_16_16_16_100_i1_fu_bfsdfsF_28872_30057));
  read_cond_FU #(.BITSIZE_in1(1)) fu_bfsdfsF_28872_29476 (.out1(out_read_cond_FU_56_i0_fu_bfsdfsF_28872_29476), .in1(out_gt_expr_FU_8_0_8_77_i0_fu_bfsdfsF_28872_30440));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_bfsdfsF_28872_29488 (.out1(out_UIdata_converter_FU_48_i0_fu_bfsdfsF_28872_29488), .in1(out_reg_31_reg_31));
  minus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) fu_bfsdfsF_28872_29489 (.out1(out_minus_expr_FU_8_8_8_81_i2_fu_bfsdfsF_28872_29489), .in1(out_UIdata_converter_FU_47_i0_fu_bfsdfsF_28872_29395), .in2(out_UIdata_converter_FU_48_i0_fu_bfsdfsF_28872_29488));
  read_cond_FU #(.BITSIZE_in1(1)) fu_bfsdfsF_28872_29490 (.out1(out_read_cond_FU_57_i0_fu_bfsdfsF_28872_29490), .in1(out_reg_22_reg_22));
  read_cond_FU #(.BITSIZE_in1(1)) fu_bfsdfsF_28872_29496 (.out1(out_read_cond_FU_66_i0_fu_bfsdfsF_28872_29496), .in1(out_ui_le_expr_FU_8_0_8_97_i0_fu_bfsdfsF_28872_30444));
  read_cond_FU #(.BITSIZE_in1(1)) fu_bfsdfsF_28872_29500 (.out1(out_read_cond_FU_67_i0_fu_bfsdfsF_28872_29500), .in1(out_ui_ne_expr_FU_8_8_8_101_i0_fu_bfsdfsF_28872_30446));
  read_cond_FU #(.BITSIZE_in1(1)) fu_bfsdfsF_28872_29504 (.out1(out_read_cond_FU_71_i0_fu_bfsdfsF_28872_29504), .in1(out_ui_ne_expr_FU_8_8_8_101_i1_fu_bfsdfsF_28872_30448));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(13)) fu_bfsdfsF_28872_29770 (.out1(out_UUdata_converter_FU_7_i0_fu_bfsdfsF_28872_29770), .in1(out_conv_in_port_a_32_13));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_bfsdfsF_28872_29787 (.out1(out_addr_expr_FU_8_i0_fu_bfsdfsF_28872_29787), .in1(out_conv_out_const_17_12_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_bfsdfsF_28872_29792 (.out1(out_addr_expr_FU_10_i0_fu_bfsdfsF_28872_29792), .in1(out_conv_out_const_14_11_32));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_bfsdfsF_28872_29804 (.out1(out_UUdata_converter_FU_13_i0_fu_bfsdfsF_28872_29804), .in1(out_addr_expr_FU_12_i0_fu_bfsdfsF_28872_29891));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_bfsdfsF_28872_29807 (.out1(out_IUdata_converter_FU_14_i0_fu_bfsdfsF_28872_29807), .in1(out_UIdata_converter_FU_9_i0_fu_bfsdfsF_28872_29317));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_bfsdfsF_28872_29813 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_104_i2_fu_bfsdfsF_28872_29813), .in1(out_reg_2_reg_2), .in2(out_reg_6_reg_6));
  bit_and_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(17), .BITSIZE_out1(10)) fu_bfsdfsF_28872_29820 (.out1(out_bit_and_expr_FU_16_0_16_73_i0_fu_bfsdfsF_28872_29820), .in1(out_plus_expr_FU_16_0_16_85_i0_fu_bfsdfsF_28872_29344), .in2(out_const_10));
  rshift_expr_FU #(.BITSIZE_in1(25), .BITSIZE_in2(6), .BITSIZE_out1(17), .PRECISION(32)) fu_bfsdfsF_28872_29830 (.out1(out_rshift_expr_FU_32_0_32_91_i0_fu_bfsdfsF_28872_29830), .in1(out_widen_mult_expr_FU_16_16_32_0_107_i1_widen_mult_expr_FU_16_16_32_0_107_i1), .in2(out_const_5));
  bit_and_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(17), .BITSIZE_out1(17)) fu_bfsdfsF_28872_29833 (.out1(out_bit_and_expr_FU_32_0_32_74_i0_fu_bfsdfsF_28872_29833), .in1(out_rshift_expr_FU_32_0_32_91_i0_fu_bfsdfsF_28872_29830), .in2(out_const_10));
  bit_and_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(17), .BITSIZE_out1(9)) fu_bfsdfsF_28872_29842 (.out1(out_bit_and_expr_FU_16_0_16_73_i1_fu_bfsdfsF_28872_29842), .in1(out_bit_and_expr_FU_32_0_32_74_i0_fu_bfsdfsF_28872_29833), .in2(out_const_10));
  rshift_expr_FU #(.BITSIZE_in1(30), .BITSIZE_in2(6), .BITSIZE_out1(14), .PRECISION(32)) fu_bfsdfsF_28872_29855 (.out1(out_rshift_expr_FU_32_0_32_91_i1_fu_bfsdfsF_28872_29855), .in1(out_lshift_expr_FU_32_0_32_78_i0_fu_bfsdfsF_28872_30512), .in2(out_const_5));
  ternary_plus_expr_FU #(.BITSIZE_in1(14), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(13)) fu_bfsdfsF_28872_29864 (.out1(out_ternary_plus_expr_FU_16_0_16_16_94_i0_fu_bfsdfsF_28872_29864), .in1(out_rshift_expr_FU_32_0_32_91_i1_fu_bfsdfsF_28872_29855), .in2(out_const_0), .in3(out_const_0));
  plus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(10), .BITSIZE_out1(12)) fu_bfsdfsF_28872_29867 (.out1(out_plus_expr_FU_16_16_16_86_i0_fu_bfsdfsF_28872_29867), .in1(out_ternary_plus_expr_FU_16_0_16_16_94_i0_fu_bfsdfsF_28872_29864), .in2(out_reg_5_reg_5));
  rshift_expr_FU #(.BITSIZE_in1(12), .BITSIZE_in2(4), .BITSIZE_out1(8), .PRECISION(32)) fu_bfsdfsF_28872_29871 (.out1(out_rshift_expr_FU_16_0_16_89_i0_fu_bfsdfsF_28872_29871), .in1(out_plus_expr_FU_16_16_16_86_i0_fu_bfsdfsF_28872_29867), .in2(out_const_3));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_bfsdfsF_28872_29891 (.out1(out_addr_expr_FU_12_i0_fu_bfsdfsF_28872_29891), .in1(out_conv_out_const_20_13_32));
  lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_bfsdfsF_28872_29897 (.out1(out_lshift_expr_FU_8_0_8_79_i0_fu_bfsdfsF_28872_29897), .in1(out_rshift_expr_FU_16_0_16_89_i0_fu_bfsdfsF_28872_29871), .in2(out_const_2));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(5), .OFFSET_PARAMETER(1)) fu_bfsdfsF_28872_29900 (.out1(out_bit_ior_concat_expr_FU_76_i0_fu_bfsdfsF_28872_29900), .in1(out_lshift_expr_FU_8_0_8_79_i3_fu_bfsdfsF_28872_30527), .in2(out_bit_and_expr_FU_8_0_8_75_i0_fu_bfsdfsF_28872_30530), .in3(out_const_2));
  lshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(3), .BITSIZE_out1(8), .PRECISION(32)) fu_bfsdfsF_28872_29904 (.out1(out_lshift_expr_FU_8_0_8_80_i0_fu_bfsdfsF_28872_29904), .in1(out_bit_ior_concat_expr_FU_76_i0_fu_bfsdfsF_28872_29900), .in2(out_const_8));
  minus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(7)) fu_bfsdfsF_28872_29907 (.out1(out_minus_expr_FU_8_8_8_81_i3_fu_bfsdfsF_28872_29907), .in1(out_lshift_expr_FU_8_0_8_80_i0_fu_bfsdfsF_28872_29904), .in2(out_rshift_expr_FU_16_0_16_89_i0_fu_bfsdfsF_28872_29871));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_bfsdfsF_28872_29913 (.out1(out_IUdata_converter_FU_29_i0_fu_bfsdfsF_28872_29913), .in1(out_UIdata_converter_FU_28_i0_fu_bfsdfsF_28872_29362));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_bfsdfsF_28872_29919 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_104_i3_fu_bfsdfsF_28872_29919), .in1(out_reg_2_reg_2), .in2(out_IUdata_converter_FU_29_i0_fu_bfsdfsF_28872_29913));
  bit_and_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(17), .BITSIZE_out1(10)) fu_bfsdfsF_28872_29923 (.out1(out_bit_and_expr_FU_16_0_16_73_i2_fu_bfsdfsF_28872_29923), .in1(out_plus_expr_FU_16_0_16_85_i1_fu_bfsdfsF_28872_29364), .in2(out_const_10));
  widen_mult_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(16), .BITSIZE_out1(25), .PIPE_PARAMETER(0)) fu_bfsdfsF_28872_29929 (.out1(out_widen_mult_expr_FU_16_16_32_0_107_i0_fu_bfsdfsF_28872_29929), .clock(clock), .in1(out_bit_and_expr_FU_16_0_16_73_i2_fu_bfsdfsF_28872_29923), .in2(out_const_6));
  rshift_expr_FU #(.BITSIZE_in1(25), .BITSIZE_in2(6), .BITSIZE_out1(17), .PRECISION(32)) fu_bfsdfsF_28872_29932 (.out1(out_rshift_expr_FU_32_0_32_91_i2_fu_bfsdfsF_28872_29932), .in1(out_widen_mult_expr_FU_16_16_32_0_107_i0_fu_bfsdfsF_28872_29929), .in2(out_const_5));
  bit_and_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(17), .BITSIZE_out1(17)) fu_bfsdfsF_28872_29935 (.out1(out_bit_and_expr_FU_32_0_32_74_i1_fu_bfsdfsF_28872_29935), .in1(out_rshift_expr_FU_32_0_32_91_i2_fu_bfsdfsF_28872_29932), .in2(out_const_10));
  bit_and_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(17), .BITSIZE_out1(9)) fu_bfsdfsF_28872_29944 (.out1(out_bit_and_expr_FU_16_0_16_73_i3_fu_bfsdfsF_28872_29944), .in1(out_bit_and_expr_FU_32_0_32_74_i1_fu_bfsdfsF_28872_29935), .in2(out_const_10));
  rshift_expr_FU #(.BITSIZE_in1(30), .BITSIZE_in2(6), .BITSIZE_out1(14), .PRECISION(32)) fu_bfsdfsF_28872_29956 (.out1(out_rshift_expr_FU_32_0_32_91_i3_fu_bfsdfsF_28872_29956), .in1(out_lshift_expr_FU_32_0_32_78_i1_fu_bfsdfsF_28872_30551), .in2(out_const_5));
  ternary_plus_expr_FU #(.BITSIZE_in1(14), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(13)) fu_bfsdfsF_28872_29965 (.out1(out_ternary_plus_expr_FU_16_0_16_16_94_i1_fu_bfsdfsF_28872_29965), .in1(out_rshift_expr_FU_32_0_32_91_i3_fu_bfsdfsF_28872_29956), .in2(out_const_0), .in3(out_const_0));
  plus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(10), .BITSIZE_out1(12)) fu_bfsdfsF_28872_29968 (.out1(out_plus_expr_FU_16_16_16_86_i1_fu_bfsdfsF_28872_29968), .in1(out_ternary_plus_expr_FU_16_0_16_16_94_i1_fu_bfsdfsF_28872_29965), .in2(out_reg_11_reg_11));
  rshift_expr_FU #(.BITSIZE_in1(12), .BITSIZE_in2(4), .BITSIZE_out1(8), .PRECISION(32)) fu_bfsdfsF_28872_29971 (.out1(out_rshift_expr_FU_16_0_16_89_i1_fu_bfsdfsF_28872_29971), .in1(out_plus_expr_FU_16_16_16_86_i1_fu_bfsdfsF_28872_29968), .in2(out_const_3));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_bfsdfsF_28872_29988 (.out1(out_addr_expr_FU_16_i0_fu_bfsdfsF_28872_29988), .in1(out_conv_out_const_19_13_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_bfsdfsF_28872_29992 (.out1(out_addr_expr_FU_17_i0_fu_bfsdfsF_28872_29992), .in1(out_conv_out_const_18_12_32));
  lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_bfsdfsF_28872_30000 (.out1(out_lshift_expr_FU_8_0_8_79_i1_fu_bfsdfsF_28872_30000), .in1(out_rshift_expr_FU_16_0_16_89_i1_fu_bfsdfsF_28872_29971), .in2(out_const_2));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(5), .OFFSET_PARAMETER(1)) fu_bfsdfsF_28872_30003 (.out1(out_bit_ior_concat_expr_FU_76_i1_fu_bfsdfsF_28872_30003), .in1(out_lshift_expr_FU_8_0_8_79_i4_fu_bfsdfsF_28872_30562), .in2(out_bit_and_expr_FU_8_0_8_75_i1_fu_bfsdfsF_28872_30565), .in3(out_const_2));
  lshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(3), .BITSIZE_out1(8), .PRECISION(32)) fu_bfsdfsF_28872_30006 (.out1(out_lshift_expr_FU_8_0_8_80_i1_fu_bfsdfsF_28872_30006), .in1(out_bit_ior_concat_expr_FU_76_i1_fu_bfsdfsF_28872_30003), .in2(out_const_8));
  minus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(7)) fu_bfsdfsF_28872_30009 (.out1(out_minus_expr_FU_8_8_8_81_i4_fu_bfsdfsF_28872_30009), .in1(out_lshift_expr_FU_8_0_8_80_i1_fu_bfsdfsF_28872_30006), .in2(out_rshift_expr_FU_16_0_16_89_i1_fu_bfsdfsF_28872_29971));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(9), .PRECISION(32)) fu_bfsdfsF_28872_30014 (.out1(out_ui_lshift_expr_FU_16_0_16_98_i0_fu_bfsdfsF_28872_30014), .in1(out_UUdata_converter_FU_43_i0_fu_bfsdfsF_28872_29429), .in2(out_const_11));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(10), .OFFSET_PARAMETER(1)) fu_bfsdfsF_28872_30017 (.out1(out_ui_bit_ior_concat_expr_FU_96_i0_fu_bfsdfsF_28872_30017), .in1(out_ui_lshift_expr_FU_16_0_16_98_i2_fu_bfsdfsF_28872_30580), .in2(out_ui_bit_and_expr_FU_1_0_1_95_i0_fu_bfsdfsF_28872_30584), .in3(out_const_11));
  ui_lshift_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(2), .BITSIZE_out1(13), .PRECISION(32)) fu_bfsdfsF_28872_30021 (.out1(out_ui_lshift_expr_FU_16_0_16_99_i0_fu_bfsdfsF_28872_30021), .in1(out_ui_bit_ior_concat_expr_FU_96_i0_fu_bfsdfsF_28872_30017), .in2(out_const_15));
  ui_minus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(8), .BITSIZE_out1(32)) fu_bfsdfsF_28872_30024 (.out1(out_ui_minus_expr_FU_16_16_16_100_i0_fu_bfsdfsF_28872_30024), .in1(out_ui_lshift_expr_FU_16_0_16_99_i0_fu_bfsdfsF_28872_30021), .in2(out_UUdata_converter_FU_43_i0_fu_bfsdfsF_28872_29429));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_bfsdfsF_28872_30027 (.out1(out_UUdata_converter_FU_45_i0_fu_bfsdfsF_28872_30027), .in1(out_ui_pointer_plus_expr_FU_32_32_32_104_i0_fu_bfsdfsF_28872_29422));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_bfsdfsF_28872_30030 (.out1(out_IUdata_converter_FU_46_i0_fu_bfsdfsF_28872_30030), .in1(out_UIdata_converter_FU_44_i0_fu_bfsdfsF_28872_29432));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_bfsdfsF_28872_30036 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_104_i4_fu_bfsdfsF_28872_30036), .in1(out_UUdata_converter_FU_45_i0_fu_bfsdfsF_28872_30027), .in2(out_IUdata_converter_FU_46_i0_fu_bfsdfsF_28872_30030));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(9), .PRECISION(32)) fu_bfsdfsF_28872_30048 (.out1(out_ui_lshift_expr_FU_16_0_16_98_i1_fu_bfsdfsF_28872_30048), .in1(out_UUdata_converter_FU_54_i0_fu_bfsdfsF_28872_29472), .in2(out_const_11));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(10), .OFFSET_PARAMETER(1)) fu_bfsdfsF_28872_30051 (.out1(out_ui_bit_ior_concat_expr_FU_96_i1_fu_bfsdfsF_28872_30051), .in1(out_ui_lshift_expr_FU_16_0_16_98_i3_fu_bfsdfsF_28872_30596), .in2(out_ui_bit_and_expr_FU_1_0_1_95_i1_fu_bfsdfsF_28872_30599), .in3(out_const_11));
  ui_lshift_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(2), .BITSIZE_out1(13), .PRECISION(32)) fu_bfsdfsF_28872_30054 (.out1(out_ui_lshift_expr_FU_16_0_16_99_i1_fu_bfsdfsF_28872_30054), .in1(out_ui_bit_ior_concat_expr_FU_96_i1_fu_bfsdfsF_28872_30051), .in2(out_const_15));
  ui_minus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(8), .BITSIZE_out1(32)) fu_bfsdfsF_28872_30057 (.out1(out_ui_minus_expr_FU_16_16_16_100_i1_fu_bfsdfsF_28872_30057), .in1(out_ui_lshift_expr_FU_16_0_16_99_i1_fu_bfsdfsF_28872_30054), .in2(out_UUdata_converter_FU_54_i0_fu_bfsdfsF_28872_29472));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_bfsdfsF_28872_30060 (.out1(out_UUdata_converter_FU_55_i0_fu_bfsdfsF_28872_30060), .in1(out_ui_pointer_plus_expr_FU_32_32_32_104_i1_fu_bfsdfsF_28872_29474));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_bfsdfsF_28872_30069 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_104_i5_fu_bfsdfsF_28872_30069), .in1(out_reg_25_reg_25), .in2(out_reg_18_reg_18));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_bfsdfsF_28872_30080 (.out1(out_IUdata_converter_FU_50_i0_fu_bfsdfsF_28872_30080), .in1(out_UIdata_converter_FU_47_i0_fu_bfsdfsF_28872_29395));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_bfsdfsF_28872_30086 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_104_i6_fu_bfsdfsF_28872_30086), .in1(out_reg_2_reg_2), .in2(out_reg_20_reg_20));
  bit_and_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(17), .BITSIZE_out1(10)) fu_bfsdfsF_28872_30090 (.out1(out_bit_and_expr_FU_16_0_16_73_i4_fu_bfsdfsF_28872_30090), .in1(out_plus_expr_FU_16_0_16_85_i2_fu_bfsdfsF_28872_29417), .in2(out_const_10));
  rshift_expr_FU #(.BITSIZE_in1(25), .BITSIZE_in2(6), .BITSIZE_out1(17), .PRECISION(32)) fu_bfsdfsF_28872_30099 (.out1(out_rshift_expr_FU_32_0_32_91_i4_fu_bfsdfsF_28872_30099), .in1(out_widen_mult_expr_FU_16_16_32_0_107_i1_widen_mult_expr_FU_16_16_32_0_107_i1), .in2(out_const_5));
  bit_and_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(17), .BITSIZE_out1(17)) fu_bfsdfsF_28872_30102 (.out1(out_bit_and_expr_FU_32_0_32_74_i2_fu_bfsdfsF_28872_30102), .in1(out_rshift_expr_FU_32_0_32_91_i4_fu_bfsdfsF_28872_30099), .in2(out_const_10));
  bit_and_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(17), .BITSIZE_out1(9)) fu_bfsdfsF_28872_30111 (.out1(out_bit_and_expr_FU_16_0_16_73_i5_fu_bfsdfsF_28872_30111), .in1(out_bit_and_expr_FU_32_0_32_74_i2_fu_bfsdfsF_28872_30102), .in2(out_const_10));
  rshift_expr_FU #(.BITSIZE_in1(30), .BITSIZE_in2(6), .BITSIZE_out1(14), .PRECISION(32)) fu_bfsdfsF_28872_30123 (.out1(out_rshift_expr_FU_32_0_32_91_i5_fu_bfsdfsF_28872_30123), .in1(out_lshift_expr_FU_32_0_32_78_i2_fu_bfsdfsF_28872_30619), .in2(out_const_5));
  ternary_plus_expr_FU #(.BITSIZE_in1(14), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(13)) fu_bfsdfsF_28872_30132 (.out1(out_ternary_plus_expr_FU_16_0_16_16_94_i2_fu_bfsdfsF_28872_30132), .in1(out_rshift_expr_FU_32_0_32_91_i5_fu_bfsdfsF_28872_30123), .in2(out_const_0), .in3(out_const_0));
  plus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(10), .BITSIZE_out1(12)) fu_bfsdfsF_28872_30135 (.out1(out_plus_expr_FU_16_16_16_86_i2_fu_bfsdfsF_28872_30135), .in1(out_reg_27_reg_27), .in2(out_reg_17_reg_17));
  rshift_expr_FU #(.BITSIZE_in1(12), .BITSIZE_in2(4), .BITSIZE_out1(8), .PRECISION(32)) fu_bfsdfsF_28872_30138 (.out1(out_rshift_expr_FU_16_0_16_89_i2_fu_bfsdfsF_28872_30138), .in1(out_plus_expr_FU_16_16_16_86_i2_fu_bfsdfsF_28872_30135), .in2(out_const_3));
  lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_bfsdfsF_28872_30159 (.out1(out_lshift_expr_FU_8_0_8_79_i2_fu_bfsdfsF_28872_30159), .in1(out_rshift_expr_FU_16_0_16_89_i2_fu_bfsdfsF_28872_30138), .in2(out_const_2));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(5), .OFFSET_PARAMETER(1)) fu_bfsdfsF_28872_30162 (.out1(out_bit_ior_concat_expr_FU_76_i2_fu_bfsdfsF_28872_30162), .in1(out_lshift_expr_FU_8_0_8_79_i5_fu_bfsdfsF_28872_30630), .in2(out_bit_and_expr_FU_8_0_8_75_i2_fu_bfsdfsF_28872_30633), .in3(out_const_2));
  lshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(3), .BITSIZE_out1(8), .PRECISION(32)) fu_bfsdfsF_28872_30165 (.out1(out_lshift_expr_FU_8_0_8_80_i2_fu_bfsdfsF_28872_30165), .in1(out_bit_ior_concat_expr_FU_76_i2_fu_bfsdfsF_28872_30162), .in2(out_const_8));
  minus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(7)) fu_bfsdfsF_28872_30168 (.out1(out_minus_expr_FU_8_8_8_81_i5_fu_bfsdfsF_28872_30168), .in1(out_lshift_expr_FU_8_0_8_80_i2_fu_bfsdfsF_28872_30165), .in2(out_rshift_expr_FU_16_0_16_89_i2_fu_bfsdfsF_28872_30138));
  ne_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(6), .BITSIZE_out1(1)) fu_bfsdfsF_28872_30436 (.out1(out_ne_expr_FU_16_0_16_83_i0_fu_bfsdfsF_28872_30436), .in1(out_minus_expr_FU_8_8_8_81_i0_fu_bfsdfsF_28872_29320), .in2(out_const_7));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_bfsdfsF_28872_30438 (.out1(out_ne_expr_FU_8_0_8_84_i0_fu_bfsdfsF_28872_30438), .in1(out_BMEMORY_CTRLN_72_i0_BMEMORY_CTRLN_72_i0), .in2(out_const_12));
  gt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_bfsdfsF_28872_30440 (.out1(out_gt_expr_FU_8_0_8_77_i0_fu_bfsdfsF_28872_30440), .in1(out_BMEMORY_CTRLN_72_i0_BMEMORY_CTRLN_72_i0), .in2(out_const_0));
  ne_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(6), .BITSIZE_out1(1)) fu_bfsdfsF_28872_30442 (.out1(out_ne_expr_FU_16_0_16_83_i1_fu_bfsdfsF_28872_30442), .in1(out_minus_expr_FU_8_8_8_81_i2_fu_bfsdfsF_28872_29489), .in2(out_const_7));
  ui_le_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_bfsdfsF_28872_30444 (.out1(out_ui_le_expr_FU_8_0_8_97_i0_fu_bfsdfsF_28872_30444), .in1(out_ui_plus_expr_FU_8_0_8_102_i0_fu_bfsdfsF_28872_29434), .in2(out_const_13));
  ui_ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_bfsdfsF_28872_30446 (.out1(out_ui_ne_expr_FU_8_8_8_101_i0_fu_bfsdfsF_28872_30446), .in1(out_reg_31_reg_31), .in2(out_reg_29_reg_29));
  ui_ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_bfsdfsF_28872_30448 (.out1(out_ui_ne_expr_FU_8_8_8_101_i1_fu_bfsdfsF_28872_30448), .in1(out_reg_10_reg_10), .in2(out_reg_9_reg_9));
  rshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(32)) fu_bfsdfsF_28872_30500 (.out1(out_rshift_expr_FU_16_0_16_90_i0_fu_bfsdfsF_28872_30500), .in1(out_bit_and_expr_FU_16_0_16_73_i1_fu_bfsdfsF_28872_29842), .in2(out_const_2));
  rshift_expr_FU #(.BITSIZE_in1(25), .BITSIZE_in2(2), .BITSIZE_out1(24), .PRECISION(32)) fu_bfsdfsF_28872_30505 (.out1(out_rshift_expr_FU_32_0_32_92_i0_fu_bfsdfsF_28872_30505), .in1(out_lshift_expr_FU_32_0_32_78_i3_lshift_expr_FU_32_0_32_78_i3), .in2(out_const_2));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(24), .BITSIZE_out1(29)) fu_bfsdfsF_28872_30507 (.out1(out_plus_expr_FU_32_32_32_87_i0_fu_bfsdfsF_28872_30507), .in1(out_reg_7_reg_7), .in2(out_rshift_expr_FU_32_0_32_92_i0_fu_bfsdfsF_28872_30505));
  lshift_expr_FU #(.BITSIZE_in1(29), .BITSIZE_in2(2), .BITSIZE_out1(30), .PRECISION(32)) fu_bfsdfsF_28872_30512 (.out1(out_lshift_expr_FU_32_0_32_78_i0_fu_bfsdfsF_28872_30512), .in1(out_plus_expr_FU_32_32_32_87_i0_fu_bfsdfsF_28872_30507), .in2(out_const_2));
  rshift_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(2), .BITSIZE_out1(5), .PRECISION(32)) fu_bfsdfsF_28872_30515 (.out1(out_rshift_expr_FU_8_0_8_93_i0_fu_bfsdfsF_28872_30515), .in1(out_lshift_expr_FU_8_0_8_79_i0_fu_bfsdfsF_28872_29897), .in2(out_const_2));
  rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(5), .PRECISION(32)) fu_bfsdfsF_28872_30520 (.out1(out_rshift_expr_FU_8_0_8_93_i1_fu_bfsdfsF_28872_30520), .in1(out_rshift_expr_FU_16_0_16_89_i0_fu_bfsdfsF_28872_29871), .in2(out_const_2));
  plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(4)) fu_bfsdfsF_28872_30522 (.out1(out_plus_expr_FU_8_8_8_88_i0_fu_bfsdfsF_28872_30522), .in1(out_rshift_expr_FU_8_0_8_93_i0_fu_bfsdfsF_28872_30515), .in2(out_rshift_expr_FU_8_0_8_93_i1_fu_bfsdfsF_28872_30520));
  lshift_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(2), .BITSIZE_out1(5), .PRECISION(32)) fu_bfsdfsF_28872_30527 (.out1(out_lshift_expr_FU_8_0_8_79_i3_fu_bfsdfsF_28872_30527), .in1(out_plus_expr_FU_8_8_8_88_i0_fu_bfsdfsF_28872_30522), .in2(out_const_2));
  bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_bfsdfsF_28872_30530 (.out1(out_bit_and_expr_FU_8_0_8_75_i0_fu_bfsdfsF_28872_30530), .in1(out_rshift_expr_FU_16_0_16_89_i0_fu_bfsdfsF_28872_29871), .in2(out_const_2));
  rshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(32)) fu_bfsdfsF_28872_30543 (.out1(out_rshift_expr_FU_16_0_16_90_i1_fu_bfsdfsF_28872_30543), .in1(out_bit_and_expr_FU_16_0_16_73_i3_fu_bfsdfsF_28872_29944), .in2(out_const_2));
  rshift_expr_FU #(.BITSIZE_in1(25), .BITSIZE_in2(2), .BITSIZE_out1(24), .PRECISION(32)) fu_bfsdfsF_28872_30546 (.out1(out_rshift_expr_FU_32_0_32_92_i1_fu_bfsdfsF_28872_30546), .in1(out_lshift_expr_FU_32_0_32_78_i3_lshift_expr_FU_32_0_32_78_i3), .in2(out_const_2));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(24), .BITSIZE_out1(29)) fu_bfsdfsF_28872_30548 (.out1(out_plus_expr_FU_32_32_32_87_i1_fu_bfsdfsF_28872_30548), .in1(out_reg_12_reg_12), .in2(out_rshift_expr_FU_32_0_32_92_i1_fu_bfsdfsF_28872_30546));
  lshift_expr_FU #(.BITSIZE_in1(29), .BITSIZE_in2(2), .BITSIZE_out1(30), .PRECISION(32)) fu_bfsdfsF_28872_30551 (.out1(out_lshift_expr_FU_32_0_32_78_i1_fu_bfsdfsF_28872_30551), .in1(out_plus_expr_FU_32_32_32_87_i1_fu_bfsdfsF_28872_30548), .in2(out_const_2));
  rshift_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(2), .BITSIZE_out1(5), .PRECISION(32)) fu_bfsdfsF_28872_30554 (.out1(out_rshift_expr_FU_8_0_8_93_i2_fu_bfsdfsF_28872_30554), .in1(out_lshift_expr_FU_8_0_8_79_i1_fu_bfsdfsF_28872_30000), .in2(out_const_2));
  rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(5), .PRECISION(32)) fu_bfsdfsF_28872_30557 (.out1(out_rshift_expr_FU_8_0_8_93_i3_fu_bfsdfsF_28872_30557), .in1(out_rshift_expr_FU_16_0_16_89_i1_fu_bfsdfsF_28872_29971), .in2(out_const_2));
  plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(4)) fu_bfsdfsF_28872_30559 (.out1(out_plus_expr_FU_8_8_8_88_i1_fu_bfsdfsF_28872_30559), .in1(out_rshift_expr_FU_8_0_8_93_i2_fu_bfsdfsF_28872_30554), .in2(out_rshift_expr_FU_8_0_8_93_i3_fu_bfsdfsF_28872_30557));
  lshift_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(2), .BITSIZE_out1(5), .PRECISION(32)) fu_bfsdfsF_28872_30562 (.out1(out_lshift_expr_FU_8_0_8_79_i4_fu_bfsdfsF_28872_30562), .in1(out_plus_expr_FU_8_8_8_88_i1_fu_bfsdfsF_28872_30559), .in2(out_const_2));
  bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_bfsdfsF_28872_30565 (.out1(out_bit_and_expr_FU_8_0_8_75_i1_fu_bfsdfsF_28872_30565), .in1(out_rshift_expr_FU_16_0_16_89_i1_fu_bfsdfsF_28872_29971), .in2(out_const_2));
  ui_rshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1), .BITSIZE_out1(8), .PRECISION(32)) fu_bfsdfsF_28872_30569 (.out1(out_ui_rshift_expr_FU_16_0_16_105_i0_fu_bfsdfsF_28872_30569), .in1(out_ui_lshift_expr_FU_16_0_16_98_i0_fu_bfsdfsF_28872_30014), .in2(out_const_11));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(7), .PRECISION(32)) fu_bfsdfsF_28872_30573 (.out1(out_ui_rshift_expr_FU_8_0_8_106_i0_fu_bfsdfsF_28872_30573), .in1(out_UUdata_converter_FU_43_i0_fu_bfsdfsF_28872_29429), .in2(out_const_11));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(7), .BITSIZE_out1(9)) fu_bfsdfsF_28872_30576 (.out1(out_ui_plus_expr_FU_8_8_8_103_i0_fu_bfsdfsF_28872_30576), .in1(out_ui_rshift_expr_FU_16_0_16_105_i0_fu_bfsdfsF_28872_30569), .in2(out_ui_rshift_expr_FU_8_0_8_106_i0_fu_bfsdfsF_28872_30573));
  ui_lshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1), .BITSIZE_out1(10), .PRECISION(32)) fu_bfsdfsF_28872_30580 (.out1(out_ui_lshift_expr_FU_16_0_16_98_i2_fu_bfsdfsF_28872_30580), .in1(out_ui_plus_expr_FU_8_8_8_103_i0_fu_bfsdfsF_28872_30576), .in2(out_const_11));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_bfsdfsF_28872_30584 (.out1(out_ui_bit_and_expr_FU_1_0_1_95_i0_fu_bfsdfsF_28872_30584), .in1(out_UUdata_converter_FU_43_i0_fu_bfsdfsF_28872_29429), .in2(out_const_11));
  ui_rshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1), .BITSIZE_out1(8), .PRECISION(32)) fu_bfsdfsF_28872_30588 (.out1(out_ui_rshift_expr_FU_16_0_16_105_i1_fu_bfsdfsF_28872_30588), .in1(out_ui_lshift_expr_FU_16_0_16_98_i1_fu_bfsdfsF_28872_30048), .in2(out_const_11));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(7), .PRECISION(32)) fu_bfsdfsF_28872_30591 (.out1(out_ui_rshift_expr_FU_8_0_8_106_i1_fu_bfsdfsF_28872_30591), .in1(out_UUdata_converter_FU_54_i0_fu_bfsdfsF_28872_29472), .in2(out_const_11));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(7), .BITSIZE_out1(9)) fu_bfsdfsF_28872_30593 (.out1(out_ui_plus_expr_FU_8_8_8_103_i1_fu_bfsdfsF_28872_30593), .in1(out_ui_rshift_expr_FU_16_0_16_105_i1_fu_bfsdfsF_28872_30588), .in2(out_ui_rshift_expr_FU_8_0_8_106_i1_fu_bfsdfsF_28872_30591));
  ui_lshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1), .BITSIZE_out1(10), .PRECISION(32)) fu_bfsdfsF_28872_30596 (.out1(out_ui_lshift_expr_FU_16_0_16_98_i3_fu_bfsdfsF_28872_30596), .in1(out_ui_plus_expr_FU_8_8_8_103_i1_fu_bfsdfsF_28872_30593), .in2(out_const_11));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_bfsdfsF_28872_30599 (.out1(out_ui_bit_and_expr_FU_1_0_1_95_i1_fu_bfsdfsF_28872_30599), .in1(out_UUdata_converter_FU_54_i0_fu_bfsdfsF_28872_29472), .in2(out_const_11));
  rshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(32)) fu_bfsdfsF_28872_30611 (.out1(out_rshift_expr_FU_16_0_16_90_i2_fu_bfsdfsF_28872_30611), .in1(out_bit_and_expr_FU_16_0_16_73_i5_fu_bfsdfsF_28872_30111), .in2(out_const_2));
  rshift_expr_FU #(.BITSIZE_in1(25), .BITSIZE_in2(2), .BITSIZE_out1(24), .PRECISION(32)) fu_bfsdfsF_28872_30614 (.out1(out_rshift_expr_FU_32_0_32_92_i2_fu_bfsdfsF_28872_30614), .in1(out_lshift_expr_FU_32_0_32_78_i3_lshift_expr_FU_32_0_32_78_i3), .in2(out_const_2));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(24), .BITSIZE_out1(29)) fu_bfsdfsF_28872_30616 (.out1(out_plus_expr_FU_32_32_32_87_i2_fu_bfsdfsF_28872_30616), .in1(out_reg_24_reg_24), .in2(out_reg_26_reg_26));
  lshift_expr_FU #(.BITSIZE_in1(29), .BITSIZE_in2(2), .BITSIZE_out1(30), .PRECISION(32)) fu_bfsdfsF_28872_30619 (.out1(out_lshift_expr_FU_32_0_32_78_i2_fu_bfsdfsF_28872_30619), .in1(out_plus_expr_FU_32_32_32_87_i2_fu_bfsdfsF_28872_30616), .in2(out_const_2));
  rshift_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(2), .BITSIZE_out1(5), .PRECISION(32)) fu_bfsdfsF_28872_30622 (.out1(out_rshift_expr_FU_8_0_8_93_i4_fu_bfsdfsF_28872_30622), .in1(out_lshift_expr_FU_8_0_8_79_i2_fu_bfsdfsF_28872_30159), .in2(out_const_2));
  rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(5), .PRECISION(32)) fu_bfsdfsF_28872_30625 (.out1(out_rshift_expr_FU_8_0_8_93_i5_fu_bfsdfsF_28872_30625), .in1(out_rshift_expr_FU_16_0_16_89_i2_fu_bfsdfsF_28872_30138), .in2(out_const_2));
  plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(4)) fu_bfsdfsF_28872_30627 (.out1(out_plus_expr_FU_8_8_8_88_i2_fu_bfsdfsF_28872_30627), .in1(out_rshift_expr_FU_8_0_8_93_i4_fu_bfsdfsF_28872_30622), .in2(out_rshift_expr_FU_8_0_8_93_i5_fu_bfsdfsF_28872_30625));
  lshift_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(2), .BITSIZE_out1(5), .PRECISION(32)) fu_bfsdfsF_28872_30630 (.out1(out_lshift_expr_FU_8_0_8_79_i5_fu_bfsdfsF_28872_30630), .in1(out_plus_expr_FU_8_8_8_88_i2_fu_bfsdfsF_28872_30627), .in2(out_const_2));
  bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_bfsdfsF_28872_30633 (.out1(out_bit_and_expr_FU_8_0_8_75_i2_fu_bfsdfsF_28872_30633), .in1(out_rshift_expr_FU_16_0_16_89_i2_fu_bfsdfsF_28872_30138), .in2(out_const_2));
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(10), .BITSIZE_out1(25)) fu_bfsdfsF_28872_30702 (.out1(out_ASSIGN_SIGNED_FU_15_i0_fu_bfsdfsF_28872_30702), .in1(out_bit_and_expr_FU_16_0_16_73_i0_fu_bfsdfsF_28872_29820));
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(10), .BITSIZE_out1(25)) fu_bfsdfsF_28872_30704 (.out1(out_ASSIGN_SIGNED_FU_30_i0_fu_bfsdfsF_28872_30704), .in1(out_bit_and_expr_FU_16_0_16_73_i2_fu_bfsdfsF_28872_29923));
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(10), .BITSIZE_out1(25)) fu_bfsdfsF_28872_30706 (.out1(out_ASSIGN_SIGNED_FU_51_i0_fu_bfsdfsF_28872_30706), .in1(out_bit_and_expr_FU_16_0_16_73_i4_fu_bfsdfsF_28872_30090));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerMout_data_ram_size2_0 (.out1(sig_in_bus_mergerMout_data_ram_size2_0), .in1(sig_in_vector_bus_mergerMout_data_ram_size2_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_oe_ram3_0 (.out1(sig_in_bus_mergerMout_oe_ram3_0), .in1(sig_in_vector_bus_mergerMout_oe_ram3_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_we_ram4_0 (.out1(sig_in_bus_mergerMout_we_ram4_0), .in1(sig_in_vector_bus_mergerMout_we_ram4_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288595_0 (.out1(sig_in_bus_mergerproxy_in1_288595_0), .in1(sig_in_vector_bus_mergerproxy_in1_288595_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288616_0 (.out1(sig_in_bus_mergerproxy_in1_288616_0), .in1(sig_in_vector_bus_mergerproxy_in1_288616_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288627_0 (.out1(sig_in_bus_mergerproxy_in1_288627_0), .in1(sig_in_vector_bus_mergerproxy_in1_288627_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288638_0 (.out1(sig_in_bus_mergerproxy_in1_288638_0), .in1(sig_in_vector_bus_mergerproxy_in1_288638_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288649_0 (.out1(sig_in_bus_mergerproxy_in1_288649_0), .in1(sig_in_vector_bus_mergerproxy_in1_288649_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in2_2885910_0 (.out1(sig_in_bus_mergerproxy_in2_2885910_0), .in1(sig_in_vector_bus_mergerproxy_in2_2885910_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in2_2886111_0 (.out1(sig_in_bus_mergerproxy_in2_2886111_0), .in1(sig_in_vector_bus_mergerproxy_in2_2886111_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in2_2886212_0 (.out1(sig_in_bus_mergerproxy_in2_2886212_0), .in1(sig_in_vector_bus_mergerproxy_in2_2886212_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in2_2886313_0 (.out1(sig_in_bus_mergerproxy_in2_2886313_0), .in1(sig_in_vector_bus_mergerproxy_in2_2886313_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in2_2886414_0 (.out1(sig_in_bus_mergerproxy_in2_2886414_0), .in1(sig_in_vector_bus_mergerproxy_in2_2886414_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_2885915_0 (.out1(sig_in_bus_mergerproxy_in3_2885915_0), .in1(sig_in_vector_bus_mergerproxy_in3_2885915_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_2886116_0 (.out1(sig_in_bus_mergerproxy_in3_2886116_0), .in1(sig_in_vector_bus_mergerproxy_in3_2886116_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_2886217_0 (.out1(sig_in_bus_mergerproxy_in3_2886217_0), .in1(sig_in_vector_bus_mergerproxy_in3_2886217_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_2886318_0 (.out1(sig_in_bus_mergerproxy_in3_2886318_0), .in1(sig_in_vector_bus_mergerproxy_in3_2886318_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_2886419_0 (.out1(sig_in_bus_mergerproxy_in3_2886419_0), .in1(sig_in_vector_bus_mergerproxy_in3_2886419_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2885920_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2885920_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2885920_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886121_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886121_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886121_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886222_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886222_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886222_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886323_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886323_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886323_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886424_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886424_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886424_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2885925_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2885925_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2885925_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886126_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886126_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886126_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886227_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886227_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886227_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886328_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886328_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886328_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886429_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886429_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886429_0));
  lshift_expr_FU #(.BITSIZE_in1(24), .BITSIZE_in2(2), .BITSIZE_out1(25), .PRECISION(32)) lshift_expr_FU_32_0_32_78_i3 (.out1(out_lshift_expr_FU_32_0_32_78_i3_lshift_expr_FU_32_0_32_78_i3), .in1(out_reg_14_reg_14), .in2(out_const_2));
  minus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(7), .BITSIZE_out1(6)) minus_expr_FU_8_8_8_81_i6 (.out1(out_minus_expr_FU_8_8_8_81_i6_minus_expr_FU_8_8_8_81_i6), .in1(out_reg_5_reg_5), .in2(out_reg_8_reg_8));
  mult_expr_FU #(.BITSIZE_in1(25), .BITSIZE_in2(25), .BITSIZE_out1(24), .PIPE_PARAMETER(0)) mult_expr_FU_32_32_32_0_82_i0 (.out1(out_mult_expr_FU_32_32_32_0_82_i0_mult_expr_FU_32_32_32_0_82_i0), .clock(clock), .in1(out_reg_13_reg_13), .in2(out_const_9));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_8_i0_fu_bfsdfsF_28872_29787), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_10_i0_fu_bfsdfsF_28872_29792), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_MUX_181_reg_10_0_0_0), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_16_0_16_85_i1_fu_bfsdfsF_28872_29364), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_rshift_expr_FU_16_0_16_90_i1_fu_bfsdfsF_28872_30543), .wenable(wrenable_reg_12));
  register_SE #(.BITSIZE_in1(25), .BITSIZE_out1(25)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_MUX_184_reg_13_0_0_1), .wenable(wrenable_reg_13));
  register_STD #(.BITSIZE_in1(24), .BITSIZE_out1(24)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_mult_expr_FU_32_32_32_0_82_i0_mult_expr_FU_32_32_32_0_82_i0), .wenable(wrenable_reg_14));
  register_STD #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_minus_expr_FU_8_8_8_81_i4_fu_bfsdfsF_28872_30009), .wenable(wrenable_reg_15));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_49_i0_fu_bfsdfsF_28872_29404), .wenable(wrenable_reg_16));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_16_0_16_85_i2_fu_bfsdfsF_28872_29417), .wenable(wrenable_reg_17));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_46_i0_fu_bfsdfsF_28872_30030), .wenable(wrenable_reg_18));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_19 (.out1(out_reg_19_reg_19), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_104_i4_fu_bfsdfsF_28872_30036), .wenable(wrenable_reg_19));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_13_i0_fu_bfsdfsF_28872_29804), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_20 (.out1(out_reg_20_reg_20), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_50_i0_fu_bfsdfsF_28872_30080), .wenable(wrenable_reg_20));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_21 (.out1(out_reg_21_reg_21), .clock(clock), .reset(reset), .in1(out_MUX_193_reg_21_0_0_0), .wenable(wrenable_reg_21));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_22 (.out1(out_reg_22_reg_22), .clock(clock), .reset(reset), .in1(out_ne_expr_FU_16_0_16_83_i1_fu_bfsdfsF_28872_30442), .wenable(wrenable_reg_22));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_23 (.out1(out_reg_23_reg_23), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_104_i6_fu_bfsdfsF_28872_30086), .wenable(wrenable_reg_23));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_24 (.out1(out_reg_24_reg_24), .clock(clock), .reset(reset), .in1(out_rshift_expr_FU_16_0_16_90_i2_fu_bfsdfsF_28872_30611), .wenable(wrenable_reg_24));
  register_STD #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_25 (.out1(out_reg_25_reg_25), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_55_i0_fu_bfsdfsF_28872_30060), .wenable(wrenable_reg_25));
  register_SE #(.BITSIZE_in1(24), .BITSIZE_out1(24)) reg_26 (.out1(out_reg_26_reg_26), .clock(clock), .reset(reset), .in1(out_rshift_expr_FU_32_0_32_92_i2_fu_bfsdfsF_28872_30614), .wenable(wrenable_reg_26));
  register_STD #(.BITSIZE_in1(13), .BITSIZE_out1(13)) reg_27 (.out1(out_reg_27_reg_27), .clock(clock), .reset(reset), .in1(out_ternary_plus_expr_FU_16_0_16_16_94_i2_fu_bfsdfsF_28872_30132), .wenable(wrenable_reg_27));
  register_STD #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_28 (.out1(out_reg_28_reg_28), .clock(clock), .reset(reset), .in1(out_IUconvert_expr_FU_59_i0_fu_bfsdfsF_28872_29411), .wenable(wrenable_reg_28));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_29 (.out1(out_reg_29_reg_29), .clock(clock), .reset(reset), .in1(out_MUX_201_reg_29_0_0_0), .wenable(wrenable_reg_29));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_16_i0_fu_bfsdfsF_28872_29988), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_30 (.out1(out_reg_30_reg_30), .clock(clock), .reset(reset), .in1(out_MUX_203_reg_30_0_0_1), .wenable(wrenable_reg_30));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_31 (.out1(out_reg_31_reg_31), .clock(clock), .reset(reset), .in1(out_MUX_204_reg_31_0_0_0), .wenable(wrenable_reg_31));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_17_i0_fu_bfsdfsF_28872_29992), .wenable(wrenable_reg_4));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_16_0_16_85_i0_fu_bfsdfsF_28872_29344), .wenable(wrenable_reg_5));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_14_i0_fu_bfsdfsF_28872_29807), .wenable(wrenable_reg_6));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_rshift_expr_FU_16_0_16_90_i0_fu_bfsdfsF_28872_30500), .wenable(wrenable_reg_7));
  register_STD #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_minus_expr_FU_8_8_8_81_i3_fu_bfsdfsF_28872_29907), .wenable(wrenable_reg_8));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_MUX_210_reg_9_0_0_0), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288595_ (.out1(proxy_in1_28859), .in1(sig_out_bus_mergerproxy_in1_288595_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288616_ (.out1(proxy_in1_28861), .in1(sig_out_bus_mergerproxy_in1_288616_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288627_ (.out1(proxy_in1_28862), .in1(sig_out_bus_mergerproxy_in1_288627_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288638_ (.out1(proxy_in1_28863), .in1(sig_out_bus_mergerproxy_in1_288638_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288649_ (.out1(proxy_in1_28864), .in1(sig_out_bus_mergerproxy_in1_288649_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2885910_ (.out1(proxy_in2_28859), .in1(sig_out_bus_mergerproxy_in2_2885910_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2886111_ (.out1(proxy_in2_28861), .in1(sig_out_bus_mergerproxy_in2_2886111_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2886212_ (.out1(proxy_in2_28862), .in1(sig_out_bus_mergerproxy_in2_2886212_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2886313_ (.out1(proxy_in2_28863), .in1(sig_out_bus_mergerproxy_in2_2886313_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2886414_ (.out1(proxy_in2_28864), .in1(sig_out_bus_mergerproxy_in2_2886414_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2885915_ (.out1(proxy_in3_28859), .in1(sig_out_bus_mergerproxy_in3_2885915_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2886116_ (.out1(proxy_in3_28861), .in1(sig_out_bus_mergerproxy_in3_2886116_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2886217_ (.out1(proxy_in3_28862), .in1(sig_out_bus_mergerproxy_in3_2886217_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2886318_ (.out1(proxy_in3_28863), .in1(sig_out_bus_mergerproxy_in3_2886318_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2886419_ (.out1(proxy_in3_28864), .in1(sig_out_bus_mergerproxy_in3_2886419_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2885920_ (.out1(proxy_sel_LOAD_28859), .in1(sig_out_bus_mergerproxy_sel_LOAD_2885920_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886121_ (.out1(proxy_sel_LOAD_28861), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886121_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886222_ (.out1(proxy_sel_LOAD_28862), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886222_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886323_ (.out1(proxy_sel_LOAD_28863), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886323_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886424_ (.out1(proxy_sel_LOAD_28864), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886424_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2885925_ (.out1(proxy_sel_STORE_28859), .in1(sig_out_bus_mergerproxy_sel_STORE_2885925_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886126_ (.out1(proxy_sel_STORE_28861), .in1(sig_out_bus_mergerproxy_sel_STORE_2886126_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886227_ (.out1(proxy_sel_STORE_28862), .in1(sig_out_bus_mergerproxy_sel_STORE_2886227_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886328_ (.out1(proxy_sel_STORE_28863), .in1(sig_out_bus_mergerproxy_sel_STORE_2886328_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886429_ (.out1(proxy_sel_STORE_28864), .in1(sig_out_bus_mergerproxy_sel_STORE_2886429_));
  widen_mult_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(16), .BITSIZE_out1(25), .PIPE_PARAMETER(0)) widen_mult_expr_FU_16_16_32_0_107_i1 (.out1(out_widen_mult_expr_FU_16_16_32_0_107_i1_widen_mult_expr_FU_16_16_32_0_107_i1), .clock(clock), .in1(out_reg_21_reg_21), .in2(out_const_6));
  // io-signal post fix
  assign OUT_CONDITION_bfsdfsF_28872_29321 = out_read_cond_FU_18_i0_fu_bfsdfsF_28872_29321;
  assign OUT_CONDITION_bfsdfsF_28872_29465 = out_read_cond_FU_52_i0_fu_bfsdfsF_28872_29465;
  assign OUT_CONDITION_bfsdfsF_28872_29476 = out_read_cond_FU_56_i0_fu_bfsdfsF_28872_29476;
  assign OUT_CONDITION_bfsdfsF_28872_29490 = out_read_cond_FU_57_i0_fu_bfsdfsF_28872_29490;
  assign OUT_CONDITION_bfsdfsF_28872_29496 = out_read_cond_FU_66_i0_fu_bfsdfsF_28872_29496;
  assign OUT_CONDITION_bfsdfsF_28872_29500 = out_read_cond_FU_67_i0_fu_bfsdfsF_28872_29500;
  assign OUT_CONDITION_bfsdfsF_28872_29504 = out_read_cond_FU_71_i0_fu_bfsdfsF_28872_29504;

endmodule

// FSM based controller description for bfsdfsF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_bfsdfsF(done_port, fuselector_BMEMORY_CTRLN_72_i0_LOAD, fuselector_BMEMORY_CTRLN_72_i0_STORE, selector_MUX_181_reg_10_0_0_0, selector_MUX_184_reg_13_0_0_0, selector_MUX_184_reg_13_0_0_1, selector_MUX_193_reg_21_0_0_0, selector_MUX_201_reg_29_0_0_0, selector_MUX_203_reg_30_0_0_0, selector_MUX_203_reg_30_0_0_1, selector_MUX_204_reg_31_0_0_0, selector_MUX_210_reg_9_0_0_0, selector_MUX_26_PROXY_CTRLN_1_i0_0_0_0, selector_MUX_30_PROXY_CTRLN_2_i0_0_0_0, selector_MUX_38_PROXY_CTRLN_4_i0_0_0_0, selector_MUX_39_PROXY_CTRLN_4_i0_1_0_0, selector_MUX_39_PROXY_CTRLN_4_i0_1_0_1, selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_0, selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_1, fuselector_PROXY_CTRLN_0_i0_LOAD, fuselector_PROXY_CTRLN_0_i0_STORE, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, fuselector_PROXY_CTRLN_3_i0_LOAD, fuselector_PROXY_CTRLN_3_i0_STORE, fuselector_PROXY_CTRLN_4_i0_LOAD, fuselector_PROXY_CTRLN_4_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_29, wrenable_reg_3, wrenable_reg_30, wrenable_reg_31, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_bfsdfsF_28872_29321, OUT_CONDITION_bfsdfsF_28872_29465, OUT_CONDITION_bfsdfsF_28872_29476, OUT_CONDITION_bfsdfsF_28872_29490, OUT_CONDITION_bfsdfsF_28872_29496, OUT_CONDITION_bfsdfsF_28872_29500, OUT_CONDITION_bfsdfsF_28872_29504, clock, reset, start_port);
  // IN
  input OUT_CONDITION_bfsdfsF_28872_29321;
  input OUT_CONDITION_bfsdfsF_28872_29465;
  input OUT_CONDITION_bfsdfsF_28872_29476;
  input OUT_CONDITION_bfsdfsF_28872_29490;
  input OUT_CONDITION_bfsdfsF_28872_29496;
  input OUT_CONDITION_bfsdfsF_28872_29500;
  input OUT_CONDITION_bfsdfsF_28872_29504;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output fuselector_BMEMORY_CTRLN_72_i0_LOAD;
  output fuselector_BMEMORY_CTRLN_72_i0_STORE;
  output selector_MUX_181_reg_10_0_0_0;
  output selector_MUX_184_reg_13_0_0_0;
  output selector_MUX_184_reg_13_0_0_1;
  output selector_MUX_193_reg_21_0_0_0;
  output selector_MUX_201_reg_29_0_0_0;
  output selector_MUX_203_reg_30_0_0_0;
  output selector_MUX_203_reg_30_0_0_1;
  output selector_MUX_204_reg_31_0_0_0;
  output selector_MUX_210_reg_9_0_0_0;
  output selector_MUX_26_PROXY_CTRLN_1_i0_0_0_0;
  output selector_MUX_30_PROXY_CTRLN_2_i0_0_0_0;
  output selector_MUX_38_PROXY_CTRLN_4_i0_0_0_0;
  output selector_MUX_39_PROXY_CTRLN_4_i0_1_0_0;
  output selector_MUX_39_PROXY_CTRLN_4_i0_1_0_1;
  output selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_0;
  output selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_1;
  output fuselector_PROXY_CTRLN_0_i0_LOAD;
  output fuselector_PROXY_CTRLN_0_i0_STORE;
  output fuselector_PROXY_CTRLN_1_i0_LOAD;
  output fuselector_PROXY_CTRLN_1_i0_STORE;
  output fuselector_PROXY_CTRLN_2_i0_LOAD;
  output fuselector_PROXY_CTRLN_2_i0_STORE;
  output fuselector_PROXY_CTRLN_3_i0_LOAD;
  output fuselector_PROXY_CTRLN_3_i0_STORE;
  output fuselector_PROXY_CTRLN_4_i0_LOAD;
  output fuselector_PROXY_CTRLN_4_i0_STORE;
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
  output wrenable_reg_4;
  output wrenable_reg_5;
  output wrenable_reg_6;
  output wrenable_reg_7;
  output wrenable_reg_8;
  output wrenable_reg_9;
  parameter [27:0] S_0 = 28'b0000000000000000000000000001,
    S_1 = 28'b0000000000000000000000000010,
    S_2 = 28'b0000000000000000000000000100,
    S_3 = 28'b0000000000000000000000001000,
    S_4 = 28'b0000000000000000000000010000,
    S_5 = 28'b0000000000000000000000100000,
    S_25 = 28'b0010000000000000000000000000,
    S_27 = 28'b1000000000000000000000000000,
    S_6 = 28'b0000000000000000000001000000,
    S_7 = 28'b0000000000000000000010000000,
    S_8 = 28'b0000000000000000000100000000,
    S_9 = 28'b0000000000000000001000000000,
    S_10 = 28'b0000000000000000010000000000,
    S_11 = 28'b0000000000000000100000000000,
    S_12 = 28'b0000000000000001000000000000,
    S_13 = 28'b0000000000000010000000000000,
    S_14 = 28'b0000000000000100000000000000,
    S_15 = 28'b0000000000001000000000000000,
    S_16 = 28'b0000000000010000000000000000,
    S_17 = 28'b0000000000100000000000000000,
    S_18 = 28'b0000000001000000000000000000,
    S_19 = 28'b0000000010000000000000000000,
    S_20 = 28'b0000000100000000000000000000,
    S_21 = 28'b0000001000000000000000000000,
    S_22 = 28'b0000010000000000000000000000,
    S_23 = 28'b0000100000000000000000000000,
    S_24 = 28'b0001000000000000000000000000,
    S_26 = 28'b0100000000000000000000000000;
  reg [27:0] _present_state, _next_state;
  reg done_port;
  reg fuselector_BMEMORY_CTRLN_72_i0_LOAD;
  reg fuselector_BMEMORY_CTRLN_72_i0_STORE;
  reg selector_MUX_181_reg_10_0_0_0;
  reg selector_MUX_184_reg_13_0_0_0;
  reg selector_MUX_184_reg_13_0_0_1;
  reg selector_MUX_193_reg_21_0_0_0;
  reg selector_MUX_201_reg_29_0_0_0;
  reg selector_MUX_203_reg_30_0_0_0;
  reg selector_MUX_203_reg_30_0_0_1;
  reg selector_MUX_204_reg_31_0_0_0;
  reg selector_MUX_210_reg_9_0_0_0;
  reg selector_MUX_26_PROXY_CTRLN_1_i0_0_0_0;
  reg selector_MUX_30_PROXY_CTRLN_2_i0_0_0_0;
  reg selector_MUX_38_PROXY_CTRLN_4_i0_0_0_0;
  reg selector_MUX_39_PROXY_CTRLN_4_i0_1_0_0;
  reg selector_MUX_39_PROXY_CTRLN_4_i0_1_0_1;
  reg selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_0;
  reg selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_1;
  reg fuselector_PROXY_CTRLN_0_i0_LOAD;
  reg fuselector_PROXY_CTRLN_0_i0_STORE;
  reg fuselector_PROXY_CTRLN_1_i0_LOAD;
  reg fuselector_PROXY_CTRLN_1_i0_STORE;
  reg fuselector_PROXY_CTRLN_2_i0_LOAD;
  reg fuselector_PROXY_CTRLN_2_i0_STORE;
  reg fuselector_PROXY_CTRLN_3_i0_LOAD;
  reg fuselector_PROXY_CTRLN_3_i0_STORE;
  reg fuselector_PROXY_CTRLN_4_i0_LOAD;
  reg fuselector_PROXY_CTRLN_4_i0_STORE;
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
    fuselector_BMEMORY_CTRLN_72_i0_LOAD = 1'b0;
    fuselector_BMEMORY_CTRLN_72_i0_STORE = 1'b0;
    selector_MUX_181_reg_10_0_0_0 = 1'b0;
    selector_MUX_184_reg_13_0_0_0 = 1'b0;
    selector_MUX_184_reg_13_0_0_1 = 1'b0;
    selector_MUX_193_reg_21_0_0_0 = 1'b0;
    selector_MUX_201_reg_29_0_0_0 = 1'b0;
    selector_MUX_203_reg_30_0_0_0 = 1'b0;
    selector_MUX_203_reg_30_0_0_1 = 1'b0;
    selector_MUX_204_reg_31_0_0_0 = 1'b0;
    selector_MUX_210_reg_9_0_0_0 = 1'b0;
    selector_MUX_26_PROXY_CTRLN_1_i0_0_0_0 = 1'b0;
    selector_MUX_30_PROXY_CTRLN_2_i0_0_0_0 = 1'b0;
    selector_MUX_38_PROXY_CTRLN_4_i0_0_0_0 = 1'b0;
    selector_MUX_39_PROXY_CTRLN_4_i0_1_0_0 = 1'b0;
    selector_MUX_39_PROXY_CTRLN_4_i0_1_0_1 = 1'b0;
    selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_0 = 1'b0;
    selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_1 = 1'b0;
    fuselector_PROXY_CTRLN_0_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_0_i0_STORE = 1'b0;
    fuselector_PROXY_CTRLN_1_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_1_i0_STORE = 1'b0;
    fuselector_PROXY_CTRLN_2_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_2_i0_STORE = 1'b0;
    fuselector_PROXY_CTRLN_3_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_3_i0_STORE = 1'b0;
    fuselector_PROXY_CTRLN_4_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_4_i0_STORE = 1'b0;
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
          fuselector_BMEMORY_CTRLN_72_i0_STORE = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          selector_MUX_181_reg_10_0_0_0 = 1'bX;
          selector_MUX_184_reg_13_0_0_0 = 1'bX;
          selector_MUX_184_reg_13_0_0_1 = 1'bX;
          selector_MUX_193_reg_21_0_0_0 = 1'bX;
          selector_MUX_201_reg_29_0_0_0 = 1'bX;
          selector_MUX_203_reg_30_0_0_0 = 1'bX;
          selector_MUX_203_reg_30_0_0_1 = 1'bX;
          selector_MUX_204_reg_31_0_0_0 = 1'bX;
          selector_MUX_210_reg_9_0_0_0 = 1'bX;
          selector_MUX_26_PROXY_CTRLN_1_i0_0_0_0 = 1'bX;
          selector_MUX_30_PROXY_CTRLN_2_i0_0_0_0 = 1'bX;
          selector_MUX_38_PROXY_CTRLN_4_i0_0_0_0 = 1'bX;
          selector_MUX_39_PROXY_CTRLN_4_i0_1_0_0 = 1'bX;
          selector_MUX_39_PROXY_CTRLN_4_i0_1_0_1 = 1'bX;
          selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_0 = 1'bX;
          selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_1 = 1'bX;
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
          fuselector_PROXY_CTRLN_0_i0_LOAD = 1'b1;
          fuselector_PROXY_CTRLN_1_i0_LOAD = 1'b1;
          _next_state = S_2;
        end
      S_2 :
        begin
          selector_MUX_184_reg_13_0_0_0 = 1'b1;
          selector_MUX_193_reg_21_0_0_0 = 1'b1;
          selector_MUX_210_reg_9_0_0_0 = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_13 = 1'b1;
          wrenable_reg_21 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_6 = 1'b1;
          wrenable_reg_9 = 1'b1;
          if (OUT_CONDITION_bfsdfsF_28872_29321 == 1'b1)
            begin
              _next_state = S_3;
              selector_MUX_210_reg_9_0_0_0 = 1'b0;
              wrenable_reg_9 = 1'b0;
            end
          else
            begin
              _next_state = S_25;
              selector_MUX_184_reg_13_0_0_0 = 1'b0;
              selector_MUX_193_reg_21_0_0_0 = 1'b0;
              wrenable_reg_13 = 1'b0;
              wrenable_reg_21 = 1'b0;
              wrenable_reg_5 = 1'b0;
              wrenable_reg_6 = 1'b0;
            end
        end
      S_3 :
        begin
          selector_MUX_38_PROXY_CTRLN_4_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_4_i0_STORE = 1'b1;
          wrenable_reg_14 = 1'b1;
          wrenable_reg_7 = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          wrenable_reg_8 = 1'b1;
          _next_state = S_5;
        end
      S_5 :
        begin
          fuselector_PROXY_CTRLN_1_i0_STORE = 1'b1;
          wrenable_reg_9 = 1'b1;
          _next_state = S_25;
        end
      S_25 :
        begin
          selector_MUX_201_reg_29_0_0_0 = 1'b1;
          wrenable_reg_29 = 1'b1;
          if (OUT_CONDITION_bfsdfsF_28872_29504 == 1'b1)
            begin
              _next_state = S_6;
            end
          else
            begin
              _next_state = S_27;
              done_port = 1'b1;
              selector_MUX_201_reg_29_0_0_0 = 1'b0;
              wrenable_reg_29 = 1'b0;
            end
        end
      S_27 :
        begin
          _next_state = S_0;
        end
      S_6 :
        begin
          selector_MUX_39_PROXY_CTRLN_4_i0_1_0_1 = 1'b1;
          fuselector_PROXY_CTRLN_4_i0_LOAD = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_12 = 1'b1;
          wrenable_reg_13 = 1'b1;
          _next_state = S_7;
        end
      S_7 :
        begin
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          fuselector_PROXY_CTRLN_3_i0_STORE = 1'b1;
          wrenable_reg_14 = 1'b1;
          _next_state = S_8;
        end
      S_8 :
        begin
          wrenable_reg_15 = 1'b1;
          _next_state = S_9;
        end
      S_9 :
        begin
          fuselector_PROXY_CTRLN_0_i0_STORE = 1'b1;
          wrenable_reg_30 = 1'b1;
          wrenable_reg_31 = 1'b1;
          _next_state = S_10;
        end
      S_10 :
        begin
          selector_MUX_184_reg_13_0_0_1 = 1'b1;
          wrenable_reg_13 = 1'b1;
          wrenable_reg_16 = 1'b1;
          wrenable_reg_17 = 1'b1;
          wrenable_reg_18 = 1'b1;
          wrenable_reg_19 = 1'b1;
          wrenable_reg_20 = 1'b1;
          wrenable_reg_21 = 1'b1;
          wrenable_reg_22 = 1'b1;
          _next_state = S_11;
        end
      S_11 :
        begin
          fuselector_BMEMORY_CTRLN_72_i0_LOAD = 1'b1;
          selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_0 = 1'b1;
          _next_state = S_12;
        end
      S_12 :
        begin
          if (OUT_CONDITION_bfsdfsF_28872_29465 == 1'b1)
            begin
              _next_state = S_13;
            end
          else
            begin
              _next_state = S_23;
            end
        end
      S_13 :
        begin
          fuselector_PROXY_CTRLN_3_i0_LOAD = 1'b1;
          wrenable_reg_14 = 1'b1;
          wrenable_reg_23 = 1'b1;
          wrenable_reg_24 = 1'b1;
          _next_state = S_14;
        end
      S_14 :
        begin
          wrenable_reg_25 = 1'b1;
          wrenable_reg_26 = 1'b1;
          _next_state = S_15;
        end
      S_15 :
        begin
          fuselector_BMEMORY_CTRLN_72_i0_LOAD = 1'b1;
          selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_1 = 1'b1;
          _next_state = S_16;
        end
      S_16 :
        begin
          if (OUT_CONDITION_bfsdfsF_28872_29476 == 1'b1)
            begin
              _next_state = S_17;
            end
          else
            begin
              _next_state = S_23;
            end
        end
      S_17 :
        begin
          wrenable_reg_27 = 1'b1;
          if (OUT_CONDITION_bfsdfsF_28872_29490 == 1'b1)
            begin
              _next_state = S_18;
            end
          else
            begin
              _next_state = S_20;
              wrenable_reg_27 = 1'b0;
            end
        end
      S_18 :
        begin
          selector_MUX_39_PROXY_CTRLN_4_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_4_i0_STORE = 1'b1;
          wrenable_reg_28 = 1'b1;
          _next_state = S_19;
        end
      S_19 :
        begin
          selector_MUX_26_PROXY_CTRLN_1_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_1_i0_STORE = 1'b1;
          _next_state = S_20;
        end
      S_20 :
        begin
          fuselector_BMEMORY_CTRLN_72_i0_STORE = 1'b1;
          selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_0 = 1'b1;
          _next_state = S_21;
        end
      S_21 :
        begin
          fuselector_PROXY_CTRLN_0_i0_LOAD = 1'b1;
          fuselector_PROXY_CTRLN_1_i0_LOAD = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_LOAD = 1'b1;
          _next_state = S_22;
        end
      S_22 :
        begin
          selector_MUX_203_reg_30_0_0_0 = 1'b1;
          selector_MUX_204_reg_31_0_0_0 = 1'b1;
          wrenable_reg_29 = 1'b1;
          wrenable_reg_30 = 1'b1;
          wrenable_reg_31 = 1'b1;
          _next_state = S_23;
        end
      S_23 :
        begin
          selector_MUX_203_reg_30_0_0_1 = 1'b1;
          selector_MUX_30_PROXY_CTRLN_2_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          wrenable_reg_30 = 1'b1;
          if (OUT_CONDITION_bfsdfsF_28872_29496 == 1'b1)
            begin
              _next_state = S_10;
            end
          else
            begin
              _next_state = S_24;
              selector_MUX_203_reg_30_0_0_1 = 1'b0;
              wrenable_reg_30 = 1'b0;
            end
        end
      S_24 :
        begin
          selector_MUX_181_reg_10_0_0_0 = 1'b1;
          wrenable_reg_10 = 1'b1;
          if (OUT_CONDITION_bfsdfsF_28872_29500 == 1'b1)
            begin
              _next_state = S_6;
            end
          else
            begin
              _next_state = S_26;
              done_port = 1'b1;
              selector_MUX_181_reg_10_0_0_0 = 1'b0;
              wrenable_reg_10 = 1'b0;
            end
        end
      S_26 :
        begin
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_181_reg_10_0_0_0 = 1'bX;
          selector_MUX_184_reg_13_0_0_0 = 1'bX;
          selector_MUX_184_reg_13_0_0_1 = 1'bX;
          selector_MUX_193_reg_21_0_0_0 = 1'bX;
          selector_MUX_201_reg_29_0_0_0 = 1'bX;
          selector_MUX_203_reg_30_0_0_0 = 1'bX;
          selector_MUX_203_reg_30_0_0_1 = 1'bX;
          selector_MUX_204_reg_31_0_0_0 = 1'bX;
          selector_MUX_210_reg_9_0_0_0 = 1'bX;
          selector_MUX_26_PROXY_CTRLN_1_i0_0_0_0 = 1'bX;
          selector_MUX_30_PROXY_CTRLN_2_i0_0_0_0 = 1'bX;
          selector_MUX_38_PROXY_CTRLN_4_i0_0_0_0 = 1'bX;
          selector_MUX_39_PROXY_CTRLN_4_i0_1_0_0 = 1'bX;
          selector_MUX_39_PROXY_CTRLN_4_i0_1_0_1 = 1'bX;
          selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_0 = 1'bX;
          selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_1 = 1'bX;
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

// Top component for bfsdfsF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module bfsdfsF(clock, reset, start_port, done_port, a, array_S, M_Rdata_ram, M_DataRdy, proxy_out1_28859, proxy_out1_28861, proxy_out1_28862, proxy_out1_28863, proxy_out1_28864, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, proxy_in1_28859, proxy_in2_28859, proxy_in3_28859, proxy_sel_LOAD_28859, proxy_sel_STORE_28859, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_in1_28862, proxy_in2_28862, proxy_in3_28862, proxy_sel_LOAD_28862, proxy_sel_STORE_28862, proxy_in1_28863, proxy_in2_28863, proxy_in3_28863, proxy_sel_LOAD_28863, proxy_sel_STORE_28863, proxy_in1_28864, proxy_in2_28864, proxy_in3_28864, proxy_sel_LOAD_28864, proxy_sel_STORE_28864, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size);
  parameter MEM_var_28859_28876=1024, MEM_var_28861_28876=2048, MEM_var_28862_28876=3072, MEM_var_28863_28876=4096, MEM_var_28864_28876=5120;
  // IN
  input clock;
  input reset;
  input start_port;
  input [31:0] a;
  input [31:0] array_S;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] proxy_out1_28859;
  input [15:0] proxy_out1_28861;
  input [15:0] proxy_out1_28862;
  input [15:0] proxy_out1_28863;
  input [15:0] proxy_out1_28864;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [25:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  // OUT
  output done_port;
  output [15:0] proxy_in1_28859;
  output [25:0] proxy_in2_28859;
  output [7:0] proxy_in3_28859;
  output [1:0] proxy_sel_LOAD_28859;
  output [1:0] proxy_sel_STORE_28859;
  output [15:0] proxy_in1_28861;
  output [25:0] proxy_in2_28861;
  output [7:0] proxy_in3_28861;
  output [1:0] proxy_sel_LOAD_28861;
  output [1:0] proxy_sel_STORE_28861;
  output [15:0] proxy_in1_28862;
  output [25:0] proxy_in2_28862;
  output [7:0] proxy_in3_28862;
  output [1:0] proxy_sel_LOAD_28862;
  output [1:0] proxy_sel_STORE_28862;
  output [15:0] proxy_in1_28863;
  output [25:0] proxy_in2_28863;
  output [7:0] proxy_in3_28863;
  output [1:0] proxy_sel_LOAD_28863;
  output [1:0] proxy_sel_STORE_28863;
  output [15:0] proxy_in1_28864;
  output [25:0] proxy_in2_28864;
  output [7:0] proxy_in3_28864;
  output [1:0] proxy_sel_LOAD_28864;
  output [1:0] proxy_sel_STORE_28864;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [25:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  // Component and signal declarations
  wire OUT_CONDITION_bfsdfsF_28872_29321;
  wire OUT_CONDITION_bfsdfsF_28872_29465;
  wire OUT_CONDITION_bfsdfsF_28872_29476;
  wire OUT_CONDITION_bfsdfsF_28872_29490;
  wire OUT_CONDITION_bfsdfsF_28872_29496;
  wire OUT_CONDITION_bfsdfsF_28872_29500;
  wire OUT_CONDITION_bfsdfsF_28872_29504;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_BMEMORY_CTRLN_72_i0_LOAD;
  wire fuselector_BMEMORY_CTRLN_72_i0_STORE;
  wire fuselector_PROXY_CTRLN_0_i0_LOAD;
  wire fuselector_PROXY_CTRLN_0_i0_STORE;
  wire fuselector_PROXY_CTRLN_1_i0_LOAD;
  wire fuselector_PROXY_CTRLN_1_i0_STORE;
  wire fuselector_PROXY_CTRLN_2_i0_LOAD;
  wire fuselector_PROXY_CTRLN_2_i0_STORE;
  wire fuselector_PROXY_CTRLN_3_i0_LOAD;
  wire fuselector_PROXY_CTRLN_3_i0_STORE;
  wire fuselector_PROXY_CTRLN_4_i0_LOAD;
  wire fuselector_PROXY_CTRLN_4_i0_STORE;
  wire selector_MUX_181_reg_10_0_0_0;
  wire selector_MUX_184_reg_13_0_0_0;
  wire selector_MUX_184_reg_13_0_0_1;
  wire selector_MUX_193_reg_21_0_0_0;
  wire selector_MUX_201_reg_29_0_0_0;
  wire selector_MUX_203_reg_30_0_0_0;
  wire selector_MUX_203_reg_30_0_0_1;
  wire selector_MUX_204_reg_31_0_0_0;
  wire selector_MUX_210_reg_9_0_0_0;
  wire selector_MUX_26_PROXY_CTRLN_1_i0_0_0_0;
  wire selector_MUX_30_PROXY_CTRLN_2_i0_0_0_0;
  wire selector_MUX_38_PROXY_CTRLN_4_i0_0_0_0;
  wire selector_MUX_39_PROXY_CTRLN_4_i0_1_0_0;
  wire selector_MUX_39_PROXY_CTRLN_4_i0_1_0_1;
  wire selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_0;
  wire selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_1;
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
  wire wrenable_reg_4;
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  controller_bfsdfsF Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_BMEMORY_CTRLN_72_i0_LOAD(fuselector_BMEMORY_CTRLN_72_i0_LOAD), .fuselector_BMEMORY_CTRLN_72_i0_STORE(fuselector_BMEMORY_CTRLN_72_i0_STORE), .selector_MUX_181_reg_10_0_0_0(selector_MUX_181_reg_10_0_0_0), .selector_MUX_184_reg_13_0_0_0(selector_MUX_184_reg_13_0_0_0), .selector_MUX_184_reg_13_0_0_1(selector_MUX_184_reg_13_0_0_1), .selector_MUX_193_reg_21_0_0_0(selector_MUX_193_reg_21_0_0_0), .selector_MUX_201_reg_29_0_0_0(selector_MUX_201_reg_29_0_0_0), .selector_MUX_203_reg_30_0_0_0(selector_MUX_203_reg_30_0_0_0), .selector_MUX_203_reg_30_0_0_1(selector_MUX_203_reg_30_0_0_1), .selector_MUX_204_reg_31_0_0_0(selector_MUX_204_reg_31_0_0_0), .selector_MUX_210_reg_9_0_0_0(selector_MUX_210_reg_9_0_0_0), .selector_MUX_26_PROXY_CTRLN_1_i0_0_0_0(selector_MUX_26_PROXY_CTRLN_1_i0_0_0_0), .selector_MUX_30_PROXY_CTRLN_2_i0_0_0_0(selector_MUX_30_PROXY_CTRLN_2_i0_0_0_0), .selector_MUX_38_PROXY_CTRLN_4_i0_0_0_0(selector_MUX_38_PROXY_CTRLN_4_i0_0_0_0), .selector_MUX_39_PROXY_CTRLN_4_i0_1_0_0(selector_MUX_39_PROXY_CTRLN_4_i0_1_0_0), .selector_MUX_39_PROXY_CTRLN_4_i0_1_0_1(selector_MUX_39_PROXY_CTRLN_4_i0_1_0_1), .selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_0(selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_0), .selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_1(selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_1), .fuselector_PROXY_CTRLN_0_i0_LOAD(fuselector_PROXY_CTRLN_0_i0_LOAD), .fuselector_PROXY_CTRLN_0_i0_STORE(fuselector_PROXY_CTRLN_0_i0_STORE), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .fuselector_PROXY_CTRLN_3_i0_LOAD(fuselector_PROXY_CTRLN_3_i0_LOAD), .fuselector_PROXY_CTRLN_3_i0_STORE(fuselector_PROXY_CTRLN_3_i0_STORE), .fuselector_PROXY_CTRLN_4_i0_LOAD(fuselector_PROXY_CTRLN_4_i0_LOAD), .fuselector_PROXY_CTRLN_4_i0_STORE(fuselector_PROXY_CTRLN_4_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_29(wrenable_reg_29), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_30(wrenable_reg_30), .wrenable_reg_31(wrenable_reg_31), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_bfsdfsF_28872_29321(OUT_CONDITION_bfsdfsF_28872_29321), .OUT_CONDITION_bfsdfsF_28872_29465(OUT_CONDITION_bfsdfsF_28872_29465), .OUT_CONDITION_bfsdfsF_28872_29476(OUT_CONDITION_bfsdfsF_28872_29476), .OUT_CONDITION_bfsdfsF_28872_29490(OUT_CONDITION_bfsdfsF_28872_29490), .OUT_CONDITION_bfsdfsF_28872_29496(OUT_CONDITION_bfsdfsF_28872_29496), .OUT_CONDITION_bfsdfsF_28872_29500(OUT_CONDITION_bfsdfsF_28872_29500), .OUT_CONDITION_bfsdfsF_28872_29504(OUT_CONDITION_bfsdfsF_28872_29504), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_bfsdfsF #(.MEM_var_28859_28876(MEM_var_28859_28876), .MEM_var_28861_28876(MEM_var_28861_28876), .MEM_var_28862_28876(MEM_var_28862_28876), .MEM_var_28863_28876(MEM_var_28863_28876), .MEM_var_28864_28876(MEM_var_28864_28876)) Datapath_i (.proxy_in1_28859(proxy_in1_28859), .proxy_in2_28859(proxy_in2_28859), .proxy_in3_28859(proxy_in3_28859), .proxy_sel_LOAD_28859(proxy_sel_LOAD_28859), .proxy_sel_STORE_28859(proxy_sel_STORE_28859), .proxy_in1_28861(proxy_in1_28861), .proxy_in2_28861(proxy_in2_28861), .proxy_in3_28861(proxy_in3_28861), .proxy_sel_LOAD_28861(proxy_sel_LOAD_28861), .proxy_sel_STORE_28861(proxy_sel_STORE_28861), .proxy_in1_28862(proxy_in1_28862), .proxy_in2_28862(proxy_in2_28862), .proxy_in3_28862(proxy_in3_28862), .proxy_sel_LOAD_28862(proxy_sel_LOAD_28862), .proxy_sel_STORE_28862(proxy_sel_STORE_28862), .proxy_in1_28863(proxy_in1_28863), .proxy_in2_28863(proxy_in2_28863), .proxy_in3_28863(proxy_in3_28863), .proxy_sel_LOAD_28863(proxy_sel_LOAD_28863), .proxy_sel_STORE_28863(proxy_sel_STORE_28863), .proxy_in1_28864(proxy_in1_28864), .proxy_in2_28864(proxy_in2_28864), .proxy_in3_28864(proxy_in3_28864), .proxy_sel_LOAD_28864(proxy_sel_LOAD_28864), .proxy_sel_STORE_28864(proxy_sel_STORE_28864), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_CONDITION_bfsdfsF_28872_29321(OUT_CONDITION_bfsdfsF_28872_29321), .OUT_CONDITION_bfsdfsF_28872_29465(OUT_CONDITION_bfsdfsF_28872_29465), .OUT_CONDITION_bfsdfsF_28872_29476(OUT_CONDITION_bfsdfsF_28872_29476), .OUT_CONDITION_bfsdfsF_28872_29490(OUT_CONDITION_bfsdfsF_28872_29490), .OUT_CONDITION_bfsdfsF_28872_29496(OUT_CONDITION_bfsdfsF_28872_29496), .OUT_CONDITION_bfsdfsF_28872_29500(OUT_CONDITION_bfsdfsF_28872_29500), .OUT_CONDITION_bfsdfsF_28872_29504(OUT_CONDITION_bfsdfsF_28872_29504), .clock(clock), .reset(reset), .in_port_a(a), .in_port_array(array_S), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .proxy_out1_28859(proxy_out1_28859), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28862(proxy_out1_28862), .proxy_out1_28863(proxy_out1_28863), .proxy_out1_28864(proxy_out1_28864), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .fuselector_BMEMORY_CTRLN_72_i0_LOAD(fuselector_BMEMORY_CTRLN_72_i0_LOAD), .fuselector_BMEMORY_CTRLN_72_i0_STORE(fuselector_BMEMORY_CTRLN_72_i0_STORE), .selector_MUX_181_reg_10_0_0_0(selector_MUX_181_reg_10_0_0_0), .selector_MUX_184_reg_13_0_0_0(selector_MUX_184_reg_13_0_0_0), .selector_MUX_184_reg_13_0_0_1(selector_MUX_184_reg_13_0_0_1), .selector_MUX_193_reg_21_0_0_0(selector_MUX_193_reg_21_0_0_0), .selector_MUX_201_reg_29_0_0_0(selector_MUX_201_reg_29_0_0_0), .selector_MUX_203_reg_30_0_0_0(selector_MUX_203_reg_30_0_0_0), .selector_MUX_203_reg_30_0_0_1(selector_MUX_203_reg_30_0_0_1), .selector_MUX_204_reg_31_0_0_0(selector_MUX_204_reg_31_0_0_0), .selector_MUX_210_reg_9_0_0_0(selector_MUX_210_reg_9_0_0_0), .selector_MUX_26_PROXY_CTRLN_1_i0_0_0_0(selector_MUX_26_PROXY_CTRLN_1_i0_0_0_0), .selector_MUX_30_PROXY_CTRLN_2_i0_0_0_0(selector_MUX_30_PROXY_CTRLN_2_i0_0_0_0), .selector_MUX_38_PROXY_CTRLN_4_i0_0_0_0(selector_MUX_38_PROXY_CTRLN_4_i0_0_0_0), .selector_MUX_39_PROXY_CTRLN_4_i0_1_0_0(selector_MUX_39_PROXY_CTRLN_4_i0_1_0_0), .selector_MUX_39_PROXY_CTRLN_4_i0_1_0_1(selector_MUX_39_PROXY_CTRLN_4_i0_1_0_1), .selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_0(selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_0), .selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_1(selector_MUX_4_BMEMORY_CTRLN_72_i0_1_0_1), .fuselector_PROXY_CTRLN_0_i0_LOAD(fuselector_PROXY_CTRLN_0_i0_LOAD), .fuselector_PROXY_CTRLN_0_i0_STORE(fuselector_PROXY_CTRLN_0_i0_STORE), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .fuselector_PROXY_CTRLN_3_i0_LOAD(fuselector_PROXY_CTRLN_3_i0_LOAD), .fuselector_PROXY_CTRLN_3_i0_STORE(fuselector_PROXY_CTRLN_3_i0_STORE), .fuselector_PROXY_CTRLN_4_i0_LOAD(fuselector_PROXY_CTRLN_4_i0_LOAD), .fuselector_PROXY_CTRLN_4_i0_STORE(fuselector_PROXY_CTRLN_4_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_29(wrenable_reg_29), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_30(wrenable_reg_30), .wrenable_reg_31(wrenable_reg_31), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Datapath RTL description for clean_inputF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_clean_inputF(clock, reset, in_port_a, in_port_array, M_Rdata_ram, M_DataRdy, proxy_out1_28859, proxy_in1_28859, proxy_in2_28859, proxy_in3_28859, proxy_sel_LOAD_28859, proxy_sel_STORE_28859, proxy_out1_28861, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_out1_28862, proxy_in1_28862, proxy_in2_28862, proxy_in3_28862, proxy_sel_LOAD_28862, proxy_sel_STORE_28862, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, fuselector_BMEMORY_CTRLN_19_i0_LOAD, fuselector_BMEMORY_CTRLN_19_i0_STORE, selector_MUX_0_BMEMORY_CTRLN_19_i0_0_0_0, selector_MUX_14_PROXY_CTRLN_2_i0_0_0_0, selector_MUX_15_PROXY_CTRLN_2_i0_1_0_0, selector_MUX_1_BMEMORY_CTRLN_19_i0_1_0_0, selector_MUX_28_reg_0_0_0_0, fuselector_PROXY_CTRLN_0_i0_LOAD, fuselector_PROXY_CTRLN_0_i0_STORE, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2, wrenable_reg_3, OUT_CONDITION_clean_inputF_28870_29201);
  parameter MEM_var_28859_28876=1024, MEM_var_28861_28876=2048, MEM_var_28862_28876=3072;
  // IN
  input clock;
  input reset;
  input [31:0] in_port_a;
  input [31:0] in_port_array;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] proxy_out1_28859;
  input [15:0] proxy_out1_28861;
  input [15:0] proxy_out1_28862;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [25:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  input fuselector_BMEMORY_CTRLN_19_i0_LOAD;
  input fuselector_BMEMORY_CTRLN_19_i0_STORE;
  input selector_MUX_0_BMEMORY_CTRLN_19_i0_0_0_0;
  input selector_MUX_14_PROXY_CTRLN_2_i0_0_0_0;
  input selector_MUX_15_PROXY_CTRLN_2_i0_1_0_0;
  input selector_MUX_1_BMEMORY_CTRLN_19_i0_1_0_0;
  input selector_MUX_28_reg_0_0_0_0;
  input fuselector_PROXY_CTRLN_0_i0_LOAD;
  input fuselector_PROXY_CTRLN_0_i0_STORE;
  input fuselector_PROXY_CTRLN_1_i0_LOAD;
  input fuselector_PROXY_CTRLN_1_i0_STORE;
  input fuselector_PROXY_CTRLN_2_i0_LOAD;
  input fuselector_PROXY_CTRLN_2_i0_STORE;
  input wrenable_reg_0;
  input wrenable_reg_1;
  input wrenable_reg_2;
  input wrenable_reg_3;
  // OUT
  output [15:0] proxy_in1_28859;
  output [25:0] proxy_in2_28859;
  output [7:0] proxy_in3_28859;
  output [1:0] proxy_sel_LOAD_28859;
  output [1:0] proxy_sel_STORE_28859;
  output [15:0] proxy_in1_28861;
  output [25:0] proxy_in2_28861;
  output [7:0] proxy_in3_28861;
  output [1:0] proxy_sel_LOAD_28861;
  output [1:0] proxy_sel_STORE_28861;
  output [15:0] proxy_in1_28862;
  output [25:0] proxy_in2_28862;
  output [7:0] proxy_in3_28862;
  output [1:0] proxy_sel_LOAD_28862;
  output [1:0] proxy_sel_STORE_28862;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [25:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  output OUT_CONDITION_clean_inputF_28870_29201;
  // Component and signal declarations
  wire null_out_signal_BMEMORY_CTRLN_19_i0_out1_0;
  wire null_out_signal_BMEMORY_CTRLN_19_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_0_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_0_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_2_i0_out1_1;
  wire [4:0] out_IUdata_converter_FU_15_i0_fu_clean_inputF_28870_30231;
  wire [7:0] out_MUX_0_BMEMORY_CTRLN_19_i0_0_0_0;
  wire [7:0] out_MUX_14_PROXY_CTRLN_2_i0_0_0_0;
  wire [12:0] out_MUX_15_PROXY_CTRLN_2_i0_1_0_0;
  wire [12:0] out_MUX_1_BMEMORY_CTRLN_19_i0_1_0_0;
  wire [7:0] out_MUX_28_reg_0_0_0_0;
  wire [7:0] out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0;
  wire signed [5:0] out_UIdata_converter_FU_13_i0_fu_clean_inputF_28870_29192;
  wire [4:0] out_UUdata_converter_FU_12_i0_fu_clean_inputF_28870_29189;
  wire [31:0] out_UUdata_converter_FU_14_i0_fu_clean_inputF_28870_30228;
  wire [7:0] out_UUdata_converter_FU_16_i0_fu_clean_inputF_28870_29195;
  wire [31:0] out_addr_expr_FU_5_i0_fu_clean_inputF_28870_30204;
  wire [31:0] out_addr_expr_FU_6_i0_fu_clean_inputF_28870_30208;
  wire [31:0] out_addr_expr_FU_7_i0_fu_clean_inputF_28870_30212;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [4:0] out_const_2;
  wire out_const_3;
  wire [4:0] out_const_4;
  wire [10:0] out_const_5;
  wire [1:0] out_const_6;
  wire [7:0] out_const_7;
  wire [11:0] out_const_8;
  wire [11:0] out_const_9;
  wire [12:0] out_conv_in_port_a_32_13;
  wire [4:0] out_conv_out_MUX_28_reg_0_0_0_0_8_5;
  wire [12:0] out_conv_out_addr_expr_FU_5_i0_fu_clean_inputF_28870_30204_32_13;
  wire [12:0] out_conv_out_addr_expr_FU_6_i0_fu_clean_inputF_28870_30208_32_13;
  wire [12:0] out_conv_out_addr_expr_FU_7_i0_fu_clean_inputF_28870_30212_32_13;
  wire [3:0] out_conv_out_const_2_5_4;
  wire [31:0] out_conv_out_const_5_11_32;
  wire [31:0] out_conv_out_const_8_12_32;
  wire [31:0] out_conv_out_const_9_12_32;
  wire [12:0] out_conv_out_reg_1_reg_1_32_13;
  wire [12:0] out_conv_out_reg_2_reg_2_32_13;
  wire [12:0] out_conv_out_reg_3_reg_3_32_13;
  wire [7:0] out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_1_8;
  wire [7:0] out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_0;
  wire [7:0] out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_1;
  wire out_read_cond_FU_17_i0_fu_clean_inputF_28870_29201;
  wire [4:0] out_reg_0_reg_0;
  wire [31:0] out_reg_1_reg_1;
  wire [31:0] out_reg_2_reg_2;
  wire [31:0] out_reg_3_reg_3;
  wire [0:0] out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2;
  wire [7:0] out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_3;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_20_i0_fu_clean_inputF_28870_30652;
  wire [6:0] out_ui_bit_ior_concat_expr_FU_21_i0_fu_clean_inputF_28870_30219;
  wire out_ui_le_expr_FU_8_0_8_22_i0_fu_clean_inputF_28870_30450;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_23_i0_fu_clean_inputF_28870_30222;
  wire [5:0] out_ui_lshift_expr_FU_8_0_8_24_i0_fu_clean_inputF_28870_30216;
  wire [6:0] out_ui_lshift_expr_FU_8_0_8_24_i1_fu_clean_inputF_28870_30649;
  wire [31:0] out_ui_minus_expr_FU_16_16_16_25_i0_fu_clean_inputF_28870_30225;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_26_i0_fu_clean_inputF_28870_29199;
  wire [5:0] out_ui_plus_expr_FU_8_8_8_27_i0_fu_clean_inputF_28870_30645;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_28_i0_fu_clean_inputF_28870_29191;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_28_i1_fu_clean_inputF_28870_29196;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_28_i2_fu_clean_inputF_28870_30237;
  wire [4:0] out_ui_rshift_expr_FU_8_0_8_29_i0_fu_clean_inputF_28870_30638;
  wire [3:0] out_ui_rshift_expr_FU_8_0_8_29_i1_fu_clean_inputF_28870_30642;
  wire [7:0] out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_4;
  wire [7:0] out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5;
  wire [15:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [25:0] sig_in_bus_mergerMout_addr_ram1_0;
  wire [7:0] sig_in_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_bus_mergerMout_we_ram4_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288595_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288616_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288627_0;
  wire [25:0] sig_in_bus_mergerproxy_in2_288598_0;
  wire [25:0] sig_in_bus_mergerproxy_in2_288619_0;
  wire [25:0] sig_in_bus_mergerproxy_in2_2886210_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_2885911_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_2886112_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_2886213_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2885914_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886115_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886216_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2885917_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886118_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886219_0;
  wire [15:0] sig_in_vector_bus_mergerMout_Wdata_ram0_0;
  wire [25:0] sig_in_vector_bus_mergerMout_addr_ram1_0;
  wire [7:0] sig_in_vector_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_vector_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_vector_bus_mergerMout_we_ram4_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288595_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288616_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288627_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in2_288598_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in2_288619_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in2_2886210_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_2885911_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_2886112_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_2886213_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2885914_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886115_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886216_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2885917_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886118_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886219_0;
  wire [15:0] sig_out_bus_mergerMout_Wdata_ram0_;
  wire [25:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [7:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire [1:0] sig_out_bus_mergerMout_oe_ram3_;
  wire [1:0] sig_out_bus_mergerMout_we_ram4_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288595_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288616_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288627_;
  wire [25:0] sig_out_bus_mergerproxy_in2_288598_;
  wire [25:0] sig_out_bus_mergerproxy_in2_288619_;
  wire [25:0] sig_out_bus_mergerproxy_in2_2886210_;
  wire [7:0] sig_out_bus_mergerproxy_in3_2885911_;
  wire [7:0] sig_out_bus_mergerproxy_in3_2886112_;
  wire [7:0] sig_out_bus_mergerproxy_in3_2886213_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2885914_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886115_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886216_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2885917_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886118_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886219_;
  
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_2 (.out1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_UNSIGNED_FU_u_assign_3 (.out1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_3), .in1(out_ui_plus_expr_FU_8_0_8_26_i0_fu_clean_inputF_28870_29199));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_4 (.out1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_4), .in1(out_const_1));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_5 (.out1(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5), .in1(out_ui_plus_expr_FU_8_0_8_26_i0_fu_clean_inputF_28870_29199));
  BMEMORY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(1), .PORTSIZE_out1(2), .BITSIZE_Min_oe_ram(1), .PORTSIZE_Min_oe_ram(2), .BITSIZE_Min_we_ram(1), .PORTSIZE_Min_we_ram(2), .BITSIZE_Mout_oe_ram(1), .PORTSIZE_Mout_oe_ram(2), .BITSIZE_Mout_we_ram(1), .PORTSIZE_Mout_we_ram(2), .BITSIZE_M_DataRdy(1), .PORTSIZE_M_DataRdy(2), .BITSIZE_Min_addr_ram(13), .PORTSIZE_Min_addr_ram(2), .BITSIZE_Mout_addr_ram(13), .PORTSIZE_Mout_addr_ram(2), .BITSIZE_M_Rdata_ram(8), .PORTSIZE_M_Rdata_ram(2), .BITSIZE_Min_Wdata_ram(8), .PORTSIZE_Min_Wdata_ram(2), .BITSIZE_Mout_Wdata_ram(8), .PORTSIZE_Mout_Wdata_ram(2), .BITSIZE_Min_data_ram_size(4), .PORTSIZE_Min_data_ram_size(2), .BITSIZE_Mout_data_ram_size(4), .PORTSIZE_Mout_data_ram_size(2)) BMEMORY_CTRLN_19_i0 (.out1({null_out_signal_BMEMORY_CTRLN_19_i0_out1_1, null_out_signal_BMEMORY_CTRLN_19_i0_out1_0}), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .in1({8'b00000000, out_MUX_0_BMEMORY_CTRLN_19_i0_0_0_0}), .in2({13'b0000000000000, out_MUX_1_BMEMORY_CTRLN_19_i0_1_0_0}), .in3({4'b0000, out_conv_out_const_2_5_4}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_BMEMORY_CTRLN_19_i0_LOAD}), .sel_STORE({1'b0, fuselector_BMEMORY_CTRLN_19_i0_STORE}), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .M_Rdata_ram(M_Rdata_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .M_DataRdy(M_DataRdy));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_0 (.out1(out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_0), .in1(out_const_7));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_1), .in1(out_const_1));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_0_BMEMORY_CTRLN_19_i0_0_0_0 (.out1(out_MUX_0_BMEMORY_CTRLN_19_i0_0_0_0), .sel(selector_MUX_0_BMEMORY_CTRLN_19_i0_0_0_0), .in1(out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_0), .in2(out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_1));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_14_PROXY_CTRLN_2_i0_0_0_0 (.out1(out_MUX_14_PROXY_CTRLN_2_i0_0_0_0), .sel(selector_MUX_14_PROXY_CTRLN_2_i0_0_0_0), .in1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_4), .in2(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_15_PROXY_CTRLN_2_i0_1_0_0 (.out1(out_MUX_15_PROXY_CTRLN_2_i0_1_0_0), .sel(selector_MUX_15_PROXY_CTRLN_2_i0_1_0_0), .in1(out_conv_out_reg_1_reg_1_32_13), .in2(out_conv_out_addr_expr_FU_7_i0_fu_clean_inputF_28870_30212_32_13));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_1_BMEMORY_CTRLN_19_i0_1_0_0 (.out1(out_MUX_1_BMEMORY_CTRLN_19_i0_1_0_0), .sel(selector_MUX_1_BMEMORY_CTRLN_19_i0_1_0_0), .in1(out_conv_out_reg_3_reg_3_32_13), .in2(out_conv_out_reg_2_reg_2_32_13));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_28_reg_0_0_0_0 (.out1(out_MUX_28_reg_0_0_0_0), .sel(selector_MUX_28_reg_0_0_0_0), .in1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_1_8), .in2(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_3));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_0_i0 (.out1({null_out_signal_PROXY_CTRLN_0_i0_out1_1, null_out_signal_PROXY_CTRLN_0_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288595_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288598_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2885911_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2885914_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2885917_0), .in1({8'b00000000, out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_4}), .in2({13'b0000000000000, out_conv_out_addr_expr_FU_5_i0_fu_clean_inputF_28870_30204_32_13}), .in3({4'b0000, out_conv_out_const_2_5_4}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_0_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_0_i0_STORE}), .proxy_out1(proxy_out1_28859));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_1_i0 (.out1({null_out_signal_PROXY_CTRLN_1_i0_out1_1, null_out_signal_PROXY_CTRLN_1_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288616_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288619_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886112_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886115_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886118_0), .in1({8'b00000000, out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_4}), .in2({13'b0000000000000, out_conv_out_addr_expr_FU_6_i0_fu_clean_inputF_28870_30208_32_13}), .in3({4'b0000, out_conv_out_const_2_5_4}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_1_i0_STORE}), .proxy_out1(proxy_out1_28861));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_2_i0 (.out1({null_out_signal_PROXY_CTRLN_2_i0_out1_1, out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288627_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2886210_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886213_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886216_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886219_0), .in1({8'b00000000, out_MUX_14_PROXY_CTRLN_2_i0_0_0_0}), .in2({13'b0000000000000, out_MUX_15_PROXY_CTRLN_2_i0_1_0_0}), .in3({4'b0000, out_conv_out_const_2_5_4}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_2_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_2_i0_STORE}), .proxy_out1(proxy_out1_28862));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288595_ (.out1(sig_out_bus_mergerproxy_in1_288595_), .in1({sig_in_bus_mergerproxy_in1_288595_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288616_ (.out1(sig_out_bus_mergerproxy_in1_288616_), .in1({sig_in_bus_mergerproxy_in1_288616_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288627_ (.out1(sig_out_bus_mergerproxy_in1_288627_), .in1({sig_in_bus_mergerproxy_in1_288627_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in2_288598_ (.out1(sig_out_bus_mergerproxy_in2_288598_), .in1({sig_in_bus_mergerproxy_in2_288598_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in2_288619_ (.out1(sig_out_bus_mergerproxy_in2_288619_), .in1({sig_in_bus_mergerproxy_in2_288619_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in2_2886210_ (.out1(sig_out_bus_mergerproxy_in2_2886210_), .in1({sig_in_bus_mergerproxy_in2_2886210_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_2885911_ (.out1(sig_out_bus_mergerproxy_in3_2885911_), .in1({sig_in_bus_mergerproxy_in3_2885911_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_2886112_ (.out1(sig_out_bus_mergerproxy_in3_2886112_), .in1({sig_in_bus_mergerproxy_in3_2886112_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_2886213_ (.out1(sig_out_bus_mergerproxy_in3_2886213_), .in1({sig_in_bus_mergerproxy_in3_2886213_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2885914_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2885914_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2885914_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886115_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886115_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886115_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886216_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886216_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886216_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2885917_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2885917_), .in1({sig_in_bus_mergerproxy_sel_STORE_2885917_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886118_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886118_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886118_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886219_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886219_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886219_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(5), .value(5'b10110)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(11), .value(MEM_var_28859_28876)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(12), .value(MEM_var_28861_28876)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(12), .value(MEM_var_28862_28876)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_in_port_a_32_13 (.out1(out_conv_in_port_a_32_13), .in1(in_port_a));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(5)) conv_out_MUX_28_reg_0_0_0_0_8_5 (.out1(out_conv_out_MUX_28_reg_0_0_0_0_8_5), .in1(out_MUX_28_reg_0_0_0_0));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_addr_expr_FU_5_i0_fu_clean_inputF_28870_30204_32_13 (.out1(out_conv_out_addr_expr_FU_5_i0_fu_clean_inputF_28870_30204_32_13), .in1(out_addr_expr_FU_5_i0_fu_clean_inputF_28870_30204));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_addr_expr_FU_6_i0_fu_clean_inputF_28870_30208_32_13 (.out1(out_conv_out_addr_expr_FU_6_i0_fu_clean_inputF_28870_30208_32_13), .in1(out_addr_expr_FU_6_i0_fu_clean_inputF_28870_30208));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_addr_expr_FU_7_i0_fu_clean_inputF_28870_30212_32_13 (.out1(out_conv_out_addr_expr_FU_7_i0_fu_clean_inputF_28870_30212_32_13), .in1(out_addr_expr_FU_7_i0_fu_clean_inputF_28870_30212));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_2_5_4 (.out1(out_conv_out_const_2_5_4), .in1(out_const_2));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(32)) conv_out_const_5_11_32 (.out1(out_conv_out_const_5_11_32), .in1(out_const_5));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(32)) conv_out_const_8_12_32 (.out1(out_conv_out_const_8_12_32), .in1(out_const_8));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(32)) conv_out_const_9_12_32 (.out1(out_conv_out_const_9_12_32), .in1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_1_reg_1_32_13 (.out1(out_conv_out_reg_1_reg_1_32_13), .in1(out_reg_1_reg_1));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_2_reg_2_32_13 (.out1(out_conv_out_reg_2_reg_2_32_13), .in1(out_reg_2_reg_2));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_3_reg_3_32_13 (.out1(out_conv_out_reg_3_reg_3_32_13), .in1(out_reg_3_reg_3));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_1_8 (.out1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_1_8), .in1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(5)) fu_clean_inputF_28870_29189 (.out1(out_UUdata_converter_FU_12_i0_fu_clean_inputF_28870_29189), .in1(out_reg_0_reg_0));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(32), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_clean_inputF_28870_29191 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_28_i0_fu_clean_inputF_28870_29191), .in1(out_conv_in_port_a_32_13), .in2(out_ui_minus_expr_FU_16_16_16_25_i0_fu_clean_inputF_28870_30225));
  UIdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(6)) fu_clean_inputF_28870_29192 (.out1(out_UIdata_converter_FU_13_i0_fu_clean_inputF_28870_29192), .in1(out_reg_0_reg_0));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_clean_inputF_28870_29195 (.out1(out_UUdata_converter_FU_16_i0_fu_clean_inputF_28870_29195), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_clean_inputF_28870_29196 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_28_i1_fu_clean_inputF_28870_29196), .in1(in_port_array), .in2(out_UUdata_converter_FU_16_i0_fu_clean_inputF_28870_29195));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_clean_inputF_28870_29199 (.out1(out_ui_plus_expr_FU_8_0_8_26_i0_fu_clean_inputF_28870_29199), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0), .in2(out_const_3));
  read_cond_FU #(.BITSIZE_in1(1)) fu_clean_inputF_28870_29201 (.out1(out_read_cond_FU_17_i0_fu_clean_inputF_28870_29201), .in1(out_ui_le_expr_FU_8_0_8_22_i0_fu_clean_inputF_28870_30450));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_clean_inputF_28870_30204 (.out1(out_addr_expr_FU_5_i0_fu_clean_inputF_28870_30204), .in1(out_conv_out_const_5_11_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_clean_inputF_28870_30208 (.out1(out_addr_expr_FU_6_i0_fu_clean_inputF_28870_30208), .in1(out_conv_out_const_8_12_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_clean_inputF_28870_30212 (.out1(out_addr_expr_FU_7_i0_fu_clean_inputF_28870_30212), .in1(out_conv_out_const_9_12_32));
  ui_lshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(6), .PRECISION(32)) fu_clean_inputF_28870_30216 (.out1(out_ui_lshift_expr_FU_8_0_8_24_i0_fu_clean_inputF_28870_30216), .in1(out_UUdata_converter_FU_12_i0_fu_clean_inputF_28870_29189), .in2(out_const_3));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(7), .OFFSET_PARAMETER(1)) fu_clean_inputF_28870_30219 (.out1(out_ui_bit_ior_concat_expr_FU_21_i0_fu_clean_inputF_28870_30219), .in1(out_ui_lshift_expr_FU_8_0_8_24_i1_fu_clean_inputF_28870_30649), .in2(out_ui_bit_and_expr_FU_1_0_1_20_i0_fu_clean_inputF_28870_30652), .in3(out_const_3));
  ui_lshift_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_out1(10), .PRECISION(32)) fu_clean_inputF_28870_30222 (.out1(out_ui_lshift_expr_FU_16_0_16_23_i0_fu_clean_inputF_28870_30222), .in1(out_ui_bit_ior_concat_expr_FU_21_i0_fu_clean_inputF_28870_30219), .in2(out_const_6));
  ui_minus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(5), .BITSIZE_out1(32)) fu_clean_inputF_28870_30225 (.out1(out_ui_minus_expr_FU_16_16_16_25_i0_fu_clean_inputF_28870_30225), .in1(out_ui_lshift_expr_FU_16_0_16_23_i0_fu_clean_inputF_28870_30222), .in2(out_UUdata_converter_FU_12_i0_fu_clean_inputF_28870_29189));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_clean_inputF_28870_30228 (.out1(out_UUdata_converter_FU_14_i0_fu_clean_inputF_28870_30228), .in1(out_ui_pointer_plus_expr_FU_32_32_32_28_i0_fu_clean_inputF_28870_29191));
  IUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(5)) fu_clean_inputF_28870_30231 (.out1(out_IUdata_converter_FU_15_i0_fu_clean_inputF_28870_30231), .in1(out_UIdata_converter_FU_13_i0_fu_clean_inputF_28870_29192));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_clean_inputF_28870_30237 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_28_i2_fu_clean_inputF_28870_30237), .in1(out_UUdata_converter_FU_14_i0_fu_clean_inputF_28870_30228), .in2(out_IUdata_converter_FU_15_i0_fu_clean_inputF_28870_30231));
  ui_le_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_clean_inputF_28870_30450 (.out1(out_ui_le_expr_FU_8_0_8_22_i0_fu_clean_inputF_28870_30450), .in1(out_ui_plus_expr_FU_8_0_8_26_i0_fu_clean_inputF_28870_29199), .in2(out_const_4));
  ui_rshift_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(1), .BITSIZE_out1(5), .PRECISION(32)) fu_clean_inputF_28870_30638 (.out1(out_ui_rshift_expr_FU_8_0_8_29_i0_fu_clean_inputF_28870_30638), .in1(out_ui_lshift_expr_FU_8_0_8_24_i0_fu_clean_inputF_28870_30216), .in2(out_const_3));
  ui_rshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(4), .PRECISION(32)) fu_clean_inputF_28870_30642 (.out1(out_ui_rshift_expr_FU_8_0_8_29_i1_fu_clean_inputF_28870_30642), .in1(out_UUdata_converter_FU_12_i0_fu_clean_inputF_28870_29189), .in2(out_const_3));
  ui_plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(4), .BITSIZE_out1(6)) fu_clean_inputF_28870_30645 (.out1(out_ui_plus_expr_FU_8_8_8_27_i0_fu_clean_inputF_28870_30645), .in1(out_ui_rshift_expr_FU_8_0_8_29_i0_fu_clean_inputF_28870_30638), .in2(out_ui_rshift_expr_FU_8_0_8_29_i1_fu_clean_inputF_28870_30642));
  ui_lshift_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(1), .BITSIZE_out1(7), .PRECISION(32)) fu_clean_inputF_28870_30649 (.out1(out_ui_lshift_expr_FU_8_0_8_24_i1_fu_clean_inputF_28870_30649), .in1(out_ui_plus_expr_FU_8_8_8_27_i0_fu_clean_inputF_28870_30645), .in2(out_const_3));
  ui_bit_and_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_clean_inputF_28870_30652 (.out1(out_ui_bit_and_expr_FU_1_0_1_20_i0_fu_clean_inputF_28870_30652), .in1(out_UUdata_converter_FU_12_i0_fu_clean_inputF_28870_29189), .in2(out_const_3));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerMout_data_ram_size2_0 (.out1(sig_in_bus_mergerMout_data_ram_size2_0), .in1(sig_in_vector_bus_mergerMout_data_ram_size2_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_oe_ram3_0 (.out1(sig_in_bus_mergerMout_oe_ram3_0), .in1(sig_in_vector_bus_mergerMout_oe_ram3_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_we_ram4_0 (.out1(sig_in_bus_mergerMout_we_ram4_0), .in1(sig_in_vector_bus_mergerMout_we_ram4_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288595_0 (.out1(sig_in_bus_mergerproxy_in1_288595_0), .in1(sig_in_vector_bus_mergerproxy_in1_288595_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288616_0 (.out1(sig_in_bus_mergerproxy_in1_288616_0), .in1(sig_in_vector_bus_mergerproxy_in1_288616_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288627_0 (.out1(sig_in_bus_mergerproxy_in1_288627_0), .in1(sig_in_vector_bus_mergerproxy_in1_288627_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in2_288598_0 (.out1(sig_in_bus_mergerproxy_in2_288598_0), .in1(sig_in_vector_bus_mergerproxy_in2_288598_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in2_288619_0 (.out1(sig_in_bus_mergerproxy_in2_288619_0), .in1(sig_in_vector_bus_mergerproxy_in2_288619_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in2_2886210_0 (.out1(sig_in_bus_mergerproxy_in2_2886210_0), .in1(sig_in_vector_bus_mergerproxy_in2_2886210_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_2885911_0 (.out1(sig_in_bus_mergerproxy_in3_2885911_0), .in1(sig_in_vector_bus_mergerproxy_in3_2885911_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_2886112_0 (.out1(sig_in_bus_mergerproxy_in3_2886112_0), .in1(sig_in_vector_bus_mergerproxy_in3_2886112_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_2886213_0 (.out1(sig_in_bus_mergerproxy_in3_2886213_0), .in1(sig_in_vector_bus_mergerproxy_in3_2886213_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2885914_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2885914_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2885914_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886115_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886115_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886115_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886216_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886216_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886216_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2885917_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2885917_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2885917_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886118_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886118_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886118_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886219_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886219_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886219_0));
  register_SE #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_conv_out_MUX_28_reg_0_0_0_0_8_5), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_7_i0_fu_clean_inputF_28870_30212), .wenable(wrenable_reg_1));
  register_STD #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_28_i2_fu_clean_inputF_28870_30237), .wenable(wrenable_reg_2));
  register_STD #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_28_i1_fu_clean_inputF_28870_29196), .wenable(wrenable_reg_3));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288595_ (.out1(proxy_in1_28859), .in1(sig_out_bus_mergerproxy_in1_288595_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288616_ (.out1(proxy_in1_28861), .in1(sig_out_bus_mergerproxy_in1_288616_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288627_ (.out1(proxy_in1_28862), .in1(sig_out_bus_mergerproxy_in1_288627_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288598_ (.out1(proxy_in2_28859), .in1(sig_out_bus_mergerproxy_in2_288598_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288619_ (.out1(proxy_in2_28861), .in1(sig_out_bus_mergerproxy_in2_288619_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2886210_ (.out1(proxy_in2_28862), .in1(sig_out_bus_mergerproxy_in2_2886210_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2885911_ (.out1(proxy_in3_28859), .in1(sig_out_bus_mergerproxy_in3_2885911_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2886112_ (.out1(proxy_in3_28861), .in1(sig_out_bus_mergerproxy_in3_2886112_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2886213_ (.out1(proxy_in3_28862), .in1(sig_out_bus_mergerproxy_in3_2886213_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2885914_ (.out1(proxy_sel_LOAD_28859), .in1(sig_out_bus_mergerproxy_sel_LOAD_2885914_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886115_ (.out1(proxy_sel_LOAD_28861), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886115_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886216_ (.out1(proxy_sel_LOAD_28862), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886216_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2885917_ (.out1(proxy_sel_STORE_28859), .in1(sig_out_bus_mergerproxy_sel_STORE_2885917_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886118_ (.out1(proxy_sel_STORE_28861), .in1(sig_out_bus_mergerproxy_sel_STORE_2886118_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886219_ (.out1(proxy_sel_STORE_28862), .in1(sig_out_bus_mergerproxy_sel_STORE_2886219_));
  // io-signal post fix
  assign OUT_CONDITION_clean_inputF_28870_29201 = out_read_cond_FU_17_i0_fu_clean_inputF_28870_29201;

endmodule

// FSM based controller description for clean_inputF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_clean_inputF(done_port, fuselector_BMEMORY_CTRLN_19_i0_LOAD, fuselector_BMEMORY_CTRLN_19_i0_STORE, selector_MUX_0_BMEMORY_CTRLN_19_i0_0_0_0, selector_MUX_14_PROXY_CTRLN_2_i0_0_0_0, selector_MUX_15_PROXY_CTRLN_2_i0_1_0_0, selector_MUX_1_BMEMORY_CTRLN_19_i0_1_0_0, selector_MUX_28_reg_0_0_0_0, fuselector_PROXY_CTRLN_0_i0_LOAD, fuselector_PROXY_CTRLN_0_i0_STORE, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2, wrenable_reg_3, OUT_CONDITION_clean_inputF_28870_29201, clock, reset, start_port);
  // IN
  input OUT_CONDITION_clean_inputF_28870_29201;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output fuselector_BMEMORY_CTRLN_19_i0_LOAD;
  output fuselector_BMEMORY_CTRLN_19_i0_STORE;
  output selector_MUX_0_BMEMORY_CTRLN_19_i0_0_0_0;
  output selector_MUX_14_PROXY_CTRLN_2_i0_0_0_0;
  output selector_MUX_15_PROXY_CTRLN_2_i0_1_0_0;
  output selector_MUX_1_BMEMORY_CTRLN_19_i0_1_0_0;
  output selector_MUX_28_reg_0_0_0_0;
  output fuselector_PROXY_CTRLN_0_i0_LOAD;
  output fuselector_PROXY_CTRLN_0_i0_STORE;
  output fuselector_PROXY_CTRLN_1_i0_LOAD;
  output fuselector_PROXY_CTRLN_1_i0_STORE;
  output fuselector_PROXY_CTRLN_2_i0_LOAD;
  output fuselector_PROXY_CTRLN_2_i0_STORE;
  output wrenable_reg_0;
  output wrenable_reg_1;
  output wrenable_reg_2;
  output wrenable_reg_3;
  parameter [8:0] S_0 = 9'b000000001,
    S_1 = 9'b000000010,
    S_2 = 9'b000000100,
    S_3 = 9'b000001000,
    S_4 = 9'b000010000,
    S_5 = 9'b000100000,
    S_6 = 9'b001000000,
    S_7 = 9'b010000000,
    S_8 = 9'b100000000;
  reg [8:0] _present_state, _next_state;
  reg done_port;
  reg fuselector_BMEMORY_CTRLN_19_i0_LOAD;
  reg fuselector_BMEMORY_CTRLN_19_i0_STORE;
  reg selector_MUX_0_BMEMORY_CTRLN_19_i0_0_0_0;
  reg selector_MUX_14_PROXY_CTRLN_2_i0_0_0_0;
  reg selector_MUX_15_PROXY_CTRLN_2_i0_1_0_0;
  reg selector_MUX_1_BMEMORY_CTRLN_19_i0_1_0_0;
  reg selector_MUX_28_reg_0_0_0_0;
  reg fuselector_PROXY_CTRLN_0_i0_LOAD;
  reg fuselector_PROXY_CTRLN_0_i0_STORE;
  reg fuselector_PROXY_CTRLN_1_i0_LOAD;
  reg fuselector_PROXY_CTRLN_1_i0_STORE;
  reg fuselector_PROXY_CTRLN_2_i0_LOAD;
  reg fuselector_PROXY_CTRLN_2_i0_STORE;
  reg wrenable_reg_0;
  reg wrenable_reg_1;
  reg wrenable_reg_2;
  reg wrenable_reg_3;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    fuselector_BMEMORY_CTRLN_19_i0_LOAD = 1'b0;
    fuselector_BMEMORY_CTRLN_19_i0_STORE = 1'b0;
    selector_MUX_0_BMEMORY_CTRLN_19_i0_0_0_0 = 1'b0;
    selector_MUX_14_PROXY_CTRLN_2_i0_0_0_0 = 1'b0;
    selector_MUX_15_PROXY_CTRLN_2_i0_1_0_0 = 1'b0;
    selector_MUX_1_BMEMORY_CTRLN_19_i0_1_0_0 = 1'b0;
    selector_MUX_28_reg_0_0_0_0 = 1'b0;
    fuselector_PROXY_CTRLN_0_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_0_i0_STORE = 1'b0;
    fuselector_PROXY_CTRLN_1_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_1_i0_STORE = 1'b0;
    fuselector_PROXY_CTRLN_2_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_2_i0_STORE = 1'b0;
    wrenable_reg_0 = 1'b0;
    wrenable_reg_1 = 1'b0;
    wrenable_reg_2 = 1'b0;
    wrenable_reg_3 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          selector_MUX_14_PROXY_CTRLN_2_i0_0_0_0 = 1'b1;
          selector_MUX_28_reg_0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_0_i0_STORE = 1'b1;
          fuselector_PROXY_CTRLN_1_i0_STORE = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          selector_MUX_0_BMEMORY_CTRLN_19_i0_0_0_0 = 1'bX;
          selector_MUX_14_PROXY_CTRLN_2_i0_0_0_0 = 1'bX;
          selector_MUX_15_PROXY_CTRLN_2_i0_1_0_0 = 1'bX;
          selector_MUX_1_BMEMORY_CTRLN_19_i0_1_0_0 = 1'bX;
          selector_MUX_28_reg_0_0_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_2 = 1'bX;
          wrenable_reg_3 = 1'bX;
          _next_state = S_0;
        end
      S_1 :
        begin
          wrenable_reg_2 = 1'b1;
          _next_state = S_2;
        end
      S_2 :
        begin
          fuselector_BMEMORY_CTRLN_19_i0_STORE = 1'b1;
          selector_MUX_0_BMEMORY_CTRLN_19_i0_0_0_0 = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          selector_MUX_15_PROXY_CTRLN_2_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_LOAD = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          wrenable_reg_3 = 1'b1;
          _next_state = S_5;
        end
      S_5 :
        begin
          fuselector_BMEMORY_CTRLN_19_i0_STORE = 1'b1;
          selector_MUX_1_BMEMORY_CTRLN_19_i0_1_0_0 = 1'b1;
          _next_state = S_6;
        end
      S_6 :
        begin
          selector_MUX_15_PROXY_CTRLN_2_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_LOAD = 1'b1;
          _next_state = S_7;
        end
      S_7 :
        begin
          selector_MUX_15_PROXY_CTRLN_2_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          wrenable_reg_0 = 1'b1;
          if (OUT_CONDITION_clean_inputF_28870_29201 == 1'b1)
            begin
              _next_state = S_1;
            end
          else
            begin
              _next_state = S_8;
              done_port = 1'b1;
              wrenable_reg_0 = 1'b0;
            end
        end
      S_8 :
        begin
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_0_BMEMORY_CTRLN_19_i0_0_0_0 = 1'bX;
          selector_MUX_14_PROXY_CTRLN_2_i0_0_0_0 = 1'bX;
          selector_MUX_15_PROXY_CTRLN_2_i0_1_0_0 = 1'bX;
          selector_MUX_1_BMEMORY_CTRLN_19_i0_1_0_0 = 1'bX;
          selector_MUX_28_reg_0_0_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_2 = 1'bX;
          wrenable_reg_3 = 1'bX;
        end
    endcase
  end
endmodule

// Top component for clean_inputF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module clean_inputF(clock, reset, start_port, done_port, a, array_S, M_Rdata_ram, M_DataRdy, proxy_out1_28859, proxy_out1_28861, proxy_out1_28862, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, proxy_in1_28859, proxy_in2_28859, proxy_in3_28859, proxy_sel_LOAD_28859, proxy_sel_STORE_28859, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_in1_28862, proxy_in2_28862, proxy_in3_28862, proxy_sel_LOAD_28862, proxy_sel_STORE_28862, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size);
  parameter MEM_var_28859_28876=1024, MEM_var_28861_28876=2048, MEM_var_28862_28876=3072;
  // IN
  input clock;
  input reset;
  input start_port;
  input [31:0] a;
  input [31:0] array_S;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] proxy_out1_28859;
  input [15:0] proxy_out1_28861;
  input [15:0] proxy_out1_28862;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [25:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  // OUT
  output done_port;
  output [15:0] proxy_in1_28859;
  output [25:0] proxy_in2_28859;
  output [7:0] proxy_in3_28859;
  output [1:0] proxy_sel_LOAD_28859;
  output [1:0] proxy_sel_STORE_28859;
  output [15:0] proxy_in1_28861;
  output [25:0] proxy_in2_28861;
  output [7:0] proxy_in3_28861;
  output [1:0] proxy_sel_LOAD_28861;
  output [1:0] proxy_sel_STORE_28861;
  output [15:0] proxy_in1_28862;
  output [25:0] proxy_in2_28862;
  output [7:0] proxy_in3_28862;
  output [1:0] proxy_sel_LOAD_28862;
  output [1:0] proxy_sel_STORE_28862;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [25:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  // Component and signal declarations
  wire OUT_CONDITION_clean_inputF_28870_29201;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_BMEMORY_CTRLN_19_i0_LOAD;
  wire fuselector_BMEMORY_CTRLN_19_i0_STORE;
  wire fuselector_PROXY_CTRLN_0_i0_LOAD;
  wire fuselector_PROXY_CTRLN_0_i0_STORE;
  wire fuselector_PROXY_CTRLN_1_i0_LOAD;
  wire fuselector_PROXY_CTRLN_1_i0_STORE;
  wire fuselector_PROXY_CTRLN_2_i0_LOAD;
  wire fuselector_PROXY_CTRLN_2_i0_STORE;
  wire selector_MUX_0_BMEMORY_CTRLN_19_i0_0_0_0;
  wire selector_MUX_14_PROXY_CTRLN_2_i0_0_0_0;
  wire selector_MUX_15_PROXY_CTRLN_2_i0_1_0_0;
  wire selector_MUX_1_BMEMORY_CTRLN_19_i0_1_0_0;
  wire selector_MUX_28_reg_0_0_0_0;
  wire wrenable_reg_0;
  wire wrenable_reg_1;
  wire wrenable_reg_2;
  wire wrenable_reg_3;
  
  controller_clean_inputF Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_BMEMORY_CTRLN_19_i0_LOAD(fuselector_BMEMORY_CTRLN_19_i0_LOAD), .fuselector_BMEMORY_CTRLN_19_i0_STORE(fuselector_BMEMORY_CTRLN_19_i0_STORE), .selector_MUX_0_BMEMORY_CTRLN_19_i0_0_0_0(selector_MUX_0_BMEMORY_CTRLN_19_i0_0_0_0), .selector_MUX_14_PROXY_CTRLN_2_i0_0_0_0(selector_MUX_14_PROXY_CTRLN_2_i0_0_0_0), .selector_MUX_15_PROXY_CTRLN_2_i0_1_0_0(selector_MUX_15_PROXY_CTRLN_2_i0_1_0_0), .selector_MUX_1_BMEMORY_CTRLN_19_i0_1_0_0(selector_MUX_1_BMEMORY_CTRLN_19_i0_1_0_0), .selector_MUX_28_reg_0_0_0_0(selector_MUX_28_reg_0_0_0_0), .fuselector_PROXY_CTRLN_0_i0_LOAD(fuselector_PROXY_CTRLN_0_i0_LOAD), .fuselector_PROXY_CTRLN_0_i0_STORE(fuselector_PROXY_CTRLN_0_i0_STORE), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .OUT_CONDITION_clean_inputF_28870_29201(OUT_CONDITION_clean_inputF_28870_29201), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_clean_inputF #(.MEM_var_28859_28876(MEM_var_28859_28876), .MEM_var_28861_28876(MEM_var_28861_28876), .MEM_var_28862_28876(MEM_var_28862_28876)) Datapath_i (.proxy_in1_28859(proxy_in1_28859), .proxy_in2_28859(proxy_in2_28859), .proxy_in3_28859(proxy_in3_28859), .proxy_sel_LOAD_28859(proxy_sel_LOAD_28859), .proxy_sel_STORE_28859(proxy_sel_STORE_28859), .proxy_in1_28861(proxy_in1_28861), .proxy_in2_28861(proxy_in2_28861), .proxy_in3_28861(proxy_in3_28861), .proxy_sel_LOAD_28861(proxy_sel_LOAD_28861), .proxy_sel_STORE_28861(proxy_sel_STORE_28861), .proxy_in1_28862(proxy_in1_28862), .proxy_in2_28862(proxy_in2_28862), .proxy_in3_28862(proxy_in3_28862), .proxy_sel_LOAD_28862(proxy_sel_LOAD_28862), .proxy_sel_STORE_28862(proxy_sel_STORE_28862), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_CONDITION_clean_inputF_28870_29201(OUT_CONDITION_clean_inputF_28870_29201), .clock(clock), .reset(reset), .in_port_a(a), .in_port_array(array_S), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .proxy_out1_28859(proxy_out1_28859), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28862(proxy_out1_28862), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .fuselector_BMEMORY_CTRLN_19_i0_LOAD(fuselector_BMEMORY_CTRLN_19_i0_LOAD), .fuselector_BMEMORY_CTRLN_19_i0_STORE(fuselector_BMEMORY_CTRLN_19_i0_STORE), .selector_MUX_0_BMEMORY_CTRLN_19_i0_0_0_0(selector_MUX_0_BMEMORY_CTRLN_19_i0_0_0_0), .selector_MUX_14_PROXY_CTRLN_2_i0_0_0_0(selector_MUX_14_PROXY_CTRLN_2_i0_0_0_0), .selector_MUX_15_PROXY_CTRLN_2_i0_1_0_0(selector_MUX_15_PROXY_CTRLN_2_i0_1_0_0), .selector_MUX_1_BMEMORY_CTRLN_19_i0_1_0_0(selector_MUX_1_BMEMORY_CTRLN_19_i0_1_0_0), .selector_MUX_28_reg_0_0_0_0(selector_MUX_28_reg_0_0_0_0), .fuselector_PROXY_CTRLN_0_i0_LOAD(fuselector_PROXY_CTRLN_0_i0_LOAD), .fuselector_PROXY_CTRLN_0_i0_STORE(fuselector_PROXY_CTRLN_0_i0_STORE), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Datapath RTL description for depth_first_searchF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_depth_first_searchF(clock, reset, in_port_a, in_port_array, M_Rdata_ram, M_DataRdy, proxy_out1_28859, proxy_in1_28859, proxy_in2_28859, proxy_in3_28859, proxy_sel_LOAD_28859, proxy_sel_STORE_28859, proxy_out1_28861, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_out1_28862, proxy_in1_28862, proxy_in2_28862, proxy_in3_28862, proxy_sel_LOAD_28862, proxy_sel_STORE_28862, proxy_out1_28863, proxy_in1_28863, proxy_in2_28863, proxy_in3_28863, proxy_sel_LOAD_28863, proxy_sel_STORE_28863, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, fuselector_BMEMORY_CTRLN_66_i0_LOAD, fuselector_BMEMORY_CTRLN_66_i0_STORE, selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_0, selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_1, selector_MUX_14_PROXY_CTRLN_0_i0_1_0_0, selector_MUX_17_PROXY_CTRLN_1_i0_0_0_0, selector_MUX_17_PROXY_CTRLN_1_i0_0_0_1, selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_0, selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_1, selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_2, selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_0, selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_1, selector_MUX_21_PROXY_CTRLN_2_i0_0_0_0, selector_MUX_65_reg_11_0_0_0, selector_MUX_72_reg_18_0_0_0, selector_MUX_72_reg_18_0_0_1, selector_MUX_72_reg_18_0_1_0, selector_MUX_73_reg_19_0_0_0, selector_MUX_73_reg_19_0_0_1, selector_MUX_78_reg_6_0_0_0, fuselector_PROXY_CTRLN_0_i0_LOAD, fuselector_PROXY_CTRLN_0_i0_STORE, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, fuselector_PROXY_CTRLN_3_i0_LOAD, fuselector_PROXY_CTRLN_3_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_depth_first_searchF_28874_29570, OUT_CONDITION_depth_first_searchF_28874_29683, OUT_CONDITION_depth_first_searchF_28874_29701, OUT_CONDITION_depth_first_searchF_28874_29713, OUT_CONDITION_depth_first_searchF_28874_29715);
  parameter MEM_var_28859_28876=1024, MEM_var_28861_28876=2048, MEM_var_28862_28876=3072, MEM_var_28863_28876=4096;
  // IN
  input clock;
  input reset;
  input [31:0] in_port_a;
  input [31:0] in_port_array;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] proxy_out1_28859;
  input [15:0] proxy_out1_28861;
  input [15:0] proxy_out1_28862;
  input [15:0] proxy_out1_28863;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [25:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  input fuselector_BMEMORY_CTRLN_66_i0_LOAD;
  input fuselector_BMEMORY_CTRLN_66_i0_STORE;
  input selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_0;
  input selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_1;
  input selector_MUX_14_PROXY_CTRLN_0_i0_1_0_0;
  input selector_MUX_17_PROXY_CTRLN_1_i0_0_0_0;
  input selector_MUX_17_PROXY_CTRLN_1_i0_0_0_1;
  input selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_0;
  input selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_1;
  input selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_2;
  input selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_0;
  input selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_1;
  input selector_MUX_21_PROXY_CTRLN_2_i0_0_0_0;
  input selector_MUX_65_reg_11_0_0_0;
  input selector_MUX_72_reg_18_0_0_0;
  input selector_MUX_72_reg_18_0_0_1;
  input selector_MUX_72_reg_18_0_1_0;
  input selector_MUX_73_reg_19_0_0_0;
  input selector_MUX_73_reg_19_0_0_1;
  input selector_MUX_78_reg_6_0_0_0;
  input fuselector_PROXY_CTRLN_0_i0_LOAD;
  input fuselector_PROXY_CTRLN_0_i0_STORE;
  input fuselector_PROXY_CTRLN_1_i0_LOAD;
  input fuselector_PROXY_CTRLN_1_i0_STORE;
  input fuselector_PROXY_CTRLN_2_i0_LOAD;
  input fuselector_PROXY_CTRLN_2_i0_STORE;
  input fuselector_PROXY_CTRLN_3_i0_LOAD;
  input fuselector_PROXY_CTRLN_3_i0_STORE;
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
  output [15:0] proxy_in1_28859;
  output [25:0] proxy_in2_28859;
  output [7:0] proxy_in3_28859;
  output [1:0] proxy_sel_LOAD_28859;
  output [1:0] proxy_sel_STORE_28859;
  output [15:0] proxy_in1_28861;
  output [25:0] proxy_in2_28861;
  output [7:0] proxy_in3_28861;
  output [1:0] proxy_sel_LOAD_28861;
  output [1:0] proxy_sel_STORE_28861;
  output [15:0] proxy_in1_28862;
  output [25:0] proxy_in2_28862;
  output [7:0] proxy_in3_28862;
  output [1:0] proxy_sel_LOAD_28862;
  output [1:0] proxy_sel_STORE_28862;
  output [15:0] proxy_in1_28863;
  output [25:0] proxy_in2_28863;
  output [7:0] proxy_in3_28863;
  output [1:0] proxy_sel_LOAD_28863;
  output [1:0] proxy_sel_STORE_28863;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [25:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  output OUT_CONDITION_depth_first_searchF_28874_29570;
  output OUT_CONDITION_depth_first_searchF_28874_29683;
  output OUT_CONDITION_depth_first_searchF_28874_29701;
  output OUT_CONDITION_depth_first_searchF_28874_29713;
  output OUT_CONDITION_depth_first_searchF_28874_29715;
  // Component and signal declarations
  wire [7:0] null_out_signal_BMEMORY_CTRLN_66_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_0_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_2_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_3_i0_out1_1;
  wire [7:0] out_BMEMORY_CTRLN_66_i0_BMEMORY_CTRLN_66_i0;
  wire [7:0] out_IUdata_converter_FU_12_i0_fu_depth_first_searchF_28874_29561;
  wire [7:0] out_IUdata_converter_FU_16_i0_fu_depth_first_searchF_28874_30292;
  wire [4:0] out_IUdata_converter_FU_32_i0_fu_depth_first_searchF_28874_30346;
  wire [7:0] out_IUdata_converter_FU_41_i0_fu_depth_first_searchF_28874_29593;
  wire [7:0] out_MUX_0_BMEMORY_CTRLN_66_i0_0_0_0;
  wire [7:0] out_MUX_0_BMEMORY_CTRLN_66_i0_0_0_1;
  wire [12:0] out_MUX_14_PROXY_CTRLN_0_i0_1_0_0;
  wire [7:0] out_MUX_17_PROXY_CTRLN_1_i0_0_0_0;
  wire [7:0] out_MUX_17_PROXY_CTRLN_1_i0_0_0_1;
  wire [12:0] out_MUX_1_BMEMORY_CTRLN_66_i0_1_0_0;
  wire [12:0] out_MUX_1_BMEMORY_CTRLN_66_i0_1_0_1;
  wire [12:0] out_MUX_1_BMEMORY_CTRLN_66_i0_1_0_2;
  wire [12:0] out_MUX_1_BMEMORY_CTRLN_66_i0_1_1_0;
  wire [12:0] out_MUX_1_BMEMORY_CTRLN_66_i0_1_1_1;
  wire [7:0] out_MUX_21_PROXY_CTRLN_2_i0_0_0_0;
  wire [7:0] out_MUX_65_reg_11_0_0_0;
  wire [7:0] out_MUX_72_reg_18_0_0_0;
  wire [7:0] out_MUX_72_reg_18_0_0_1;
  wire [7:0] out_MUX_72_reg_18_0_1_0;
  wire [7:0] out_MUX_73_reg_19_0_0_0;
  wire [7:0] out_MUX_73_reg_19_0_0_1;
  wire [7:0] out_MUX_78_reg_6_0_0_0;
  wire [7:0] out_PROXY_CTRLN_0_i0_PROXY_CTRLN_0_i0;
  wire [7:0] out_PROXY_CTRLN_1_i0_PROXY_CTRLN_1_i0;
  wire [7:0] out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0;
  wire [7:0] out_PROXY_CTRLN_3_i0_PROXY_CTRLN_3_i0;
  wire signed [8:0] out_UIdata_converter_FU_14_i0_fu_depth_first_searchF_28874_29568;
  wire signed [5:0] out_UIdata_converter_FU_30_i0_fu_depth_first_searchF_28874_29681;
  wire signed [5:0] out_UIdata_converter_FU_34_i0_fu_depth_first_searchF_28874_29640;
  wire signed [7:0] out_UIdata_converter_FU_40_i0_fu_depth_first_searchF_28874_29603;
  wire [7:0] out_UUdata_converter_FU_13_i0_fu_depth_first_searchF_28874_29565;
  wire [31:0] out_UUdata_converter_FU_15_i0_fu_depth_first_searchF_28874_30289;
  wire [4:0] out_UUdata_converter_FU_29_i0_fu_depth_first_searchF_28874_29678;
  wire [31:0] out_UUdata_converter_FU_31_i0_fu_depth_first_searchF_28874_30343;
  wire [7:0] out_UUdata_converter_FU_33_i0_fu_depth_first_searchF_28874_29632;
  wire [7:0] out_UUdata_converter_FU_37_i0_fu_depth_first_searchF_28874_29697;
  wire [31:0] out_UUdata_converter_FU_38_i0_fu_depth_first_searchF_28874_30376;
  wire [7:0] out_UUdata_converter_FU_55_i0_fu_depth_first_searchF_28874_29650;
  wire [7:0] out_UUdata_converter_FU_7_i0_fu_depth_first_searchF_28874_29539;
  wire [31:0] out_addr_expr_FU_10_i0_fu_depth_first_searchF_28874_30319;
  wire [31:0] out_addr_expr_FU_6_i0_fu_depth_first_searchF_28874_30257;
  wire [31:0] out_addr_expr_FU_8_i0_fu_depth_first_searchF_28874_30261;
  wire [31:0] out_addr_expr_FU_9_i0_fu_depth_first_searchF_28874_30269;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [11:0] out_const_10;
  wire [11:0] out_const_11;
  wire [12:0] out_const_12;
  wire [4:0] out_const_2;
  wire out_const_3;
  wire [1:0] out_const_4;
  wire [4:0] out_const_5;
  wire [10:0] out_const_6;
  wire [1:0] out_const_7;
  wire [7:0] out_const_8;
  wire [7:0] out_const_9;
  wire [12:0] out_conv_in_port_a_32_13;
  wire [12:0] out_conv_out_addr_expr_FU_6_i0_fu_depth_first_searchF_28874_30257_32_13;
  wire [31:0] out_conv_out_const_10_12_32;
  wire [31:0] out_conv_out_const_11_12_32;
  wire [31:0] out_conv_out_const_12_13_32;
  wire [3:0] out_conv_out_const_2_5_4;
  wire [31:0] out_conv_out_const_6_11_32;
  wire [12:0] out_conv_out_reg_0_reg_0_32_13;
  wire [12:0] out_conv_out_reg_10_reg_10_32_13;
  wire signed [7:0] out_conv_out_reg_12_reg_12_I_6_I_8;
  wire [12:0] out_conv_out_reg_13_reg_13_32_13;
  wire [12:0] out_conv_out_reg_16_reg_16_32_13;
  wire [4:0] out_conv_out_reg_18_reg_18_8_5;
  wire [12:0] out_conv_out_reg_1_reg_1_32_13;
  wire [12:0] out_conv_out_reg_2_reg_2_32_13;
  wire [12:0] out_conv_out_reg_3_reg_3_32_13;
  wire [12:0] out_conv_out_reg_4_reg_4_32_13;
  wire [12:0] out_conv_out_reg_5_reg_5_32_13;
  wire [7:0] out_conv_out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_3_5_8;
  wire [7:0] out_conv_out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_4_1_8;
  wire [12:0] out_conv_out_ui_pointer_plus_expr_FU_32_32_32_82_i8_fu_depth_first_searchF_28874_30385_32_13;
  wire out_gt_expr_FU_8_0_8_67_i0_fu_depth_first_searchF_28874_30456;
  wire [7:0] out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_0;
  wire [7:0] out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_1;
  wire [7:0] out_iu_conv_conn_obj_9_IUdata_converter_FU_iu_conv_2;
  wire out_ne_expr_FU_8_0_8_68_i0_fu_depth_first_searchF_28874_30452;
  wire out_ne_expr_FU_8_0_8_68_i1_fu_depth_first_searchF_28874_30454;
  wire signed [7:0] out_plus_expr_FU_8_0_8_69_i0_fu_depth_first_searchF_28874_29597;
  wire out_read_cond_FU_17_i0_fu_depth_first_searchF_28874_29570;
  wire out_read_cond_FU_35_i0_fu_depth_first_searchF_28874_29683;
  wire out_read_cond_FU_39_i0_fu_depth_first_searchF_28874_29701;
  wire out_read_cond_FU_46_i0_fu_depth_first_searchF_28874_29713;
  wire out_read_cond_FU_64_i0_fu_depth_first_searchF_28874_29715;
  wire [31:0] out_reg_0_reg_0;
  wire [31:0] out_reg_10_reg_10;
  wire [7:0] out_reg_11_reg_11;
  wire [5:0] out_reg_12_reg_12;
  wire [31:0] out_reg_13_reg_13;
  wire [7:0] out_reg_14_reg_14;
  wire [4:0] out_reg_15_reg_15;
  wire [31:0] out_reg_16_reg_16;
  wire [31:0] out_reg_17_reg_17;
  wire [7:0] out_reg_18_reg_18;
  wire [7:0] out_reg_19_reg_19;
  wire [31:0] out_reg_1_reg_1;
  wire [31:0] out_reg_2_reg_2;
  wire [31:0] out_reg_3_reg_3;
  wire [31:0] out_reg_4_reg_4;
  wire [31:0] out_reg_5_reg_5;
  wire [7:0] out_reg_6_reg_6;
  wire [7:0] out_reg_7_reg_7;
  wire [31:0] out_reg_8_reg_8;
  wire [7:0] out_reg_9_reg_9;
  wire [4:0] out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_3;
  wire [0:0] out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_4;
  wire [7:0] out_u_assign_conn_obj_7_ASSIGN_UNSIGNED_FU_u_assign_5;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_70_i0_fu_depth_first_searchF_28874_30667;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_70_i1_fu_depth_first_searchF_28874_30682;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_70_i2_fu_depth_first_searchF_28874_30697;
  wire [9:0] out_ui_bit_ior_concat_expr_FU_71_i0_fu_depth_first_searchF_28874_30280;
  wire [9:0] out_ui_bit_ior_concat_expr_FU_71_i1_fu_depth_first_searchF_28874_30367;
  wire [6:0] out_ui_bit_ior_concat_expr_FU_72_i0_fu_depth_first_searchF_28874_30334;
  wire out_ui_le_expr_FU_8_0_8_73_i0_fu_depth_first_searchF_28874_30458;
  wire [8:0] out_ui_lshift_expr_FU_16_0_16_74_i0_fu_depth_first_searchF_28874_30277;
  wire [8:0] out_ui_lshift_expr_FU_16_0_16_74_i1_fu_depth_first_searchF_28874_30364;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_74_i2_fu_depth_first_searchF_28874_30664;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_74_i3_fu_depth_first_searchF_28874_30694;
  wire [12:0] out_ui_lshift_expr_FU_16_0_16_75_i0_fu_depth_first_searchF_28874_30283;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_75_i1_fu_depth_first_searchF_28874_30337;
  wire [12:0] out_ui_lshift_expr_FU_16_0_16_75_i2_fu_depth_first_searchF_28874_30370;
  wire [5:0] out_ui_lshift_expr_FU_8_0_8_76_i0_fu_depth_first_searchF_28874_30331;
  wire [6:0] out_ui_lshift_expr_FU_8_0_8_76_i1_fu_depth_first_searchF_28874_30679;
  wire [31:0] out_ui_minus_expr_FU_16_16_16_77_i0_fu_depth_first_searchF_28874_30286;
  wire [31:0] out_ui_minus_expr_FU_16_16_16_77_i1_fu_depth_first_searchF_28874_30340;
  wire [31:0] out_ui_minus_expr_FU_16_16_16_77_i2_fu_depth_first_searchF_28874_30373;
  wire out_ui_ne_expr_FU_8_0_8_78_i0_fu_depth_first_searchF_28874_30460;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_79_i0_fu_depth_first_searchF_28874_29543;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_79_i1_fu_depth_first_searchF_28874_29607;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_79_i2_fu_depth_first_searchF_28874_29644;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_80_i0_fu_depth_first_searchF_28874_29563;
  wire [8:0] out_ui_plus_expr_FU_8_8_8_81_i0_fu_depth_first_searchF_28874_30661;
  wire [5:0] out_ui_plus_expr_FU_8_8_8_81_i1_fu_depth_first_searchF_28874_30676;
  wire [8:0] out_ui_plus_expr_FU_8_8_8_81_i2_fu_depth_first_searchF_28874_30691;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_82_i0_fu_depth_first_searchF_28874_29540;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_82_i1_fu_depth_first_searchF_28874_29567;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_82_i2_fu_depth_first_searchF_28874_29629;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_82_i3_fu_depth_first_searchF_28874_29647;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_82_i4_fu_depth_first_searchF_28874_29680;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_82_i5_fu_depth_first_searchF_28874_29699;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_82_i6_fu_depth_first_searchF_28874_30298;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_82_i7_fu_depth_first_searchF_28874_30352;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_82_i8_fu_depth_first_searchF_28874_30385;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_83_i0_fu_depth_first_searchF_28874_30656;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_83_i1_fu_depth_first_searchF_28874_30686;
  wire [6:0] out_ui_rshift_expr_FU_8_0_8_84_i0_fu_depth_first_searchF_28874_30659;
  wire [4:0] out_ui_rshift_expr_FU_8_0_8_84_i1_fu_depth_first_searchF_28874_30671;
  wire [3:0] out_ui_rshift_expr_FU_8_0_8_84_i2_fu_depth_first_searchF_28874_30674;
  wire [6:0] out_ui_rshift_expr_FU_8_0_8_84_i3_fu_depth_first_searchF_28874_30689;
  wire [7:0] out_vb_assign_conn_obj_10_ASSIGN_VECTOR_BOOL_FU_vb_assign_7;
  wire [7:0] out_vb_assign_conn_obj_12_ASSIGN_VECTOR_BOOL_FU_vb_assign_8;
  wire [7:0] out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_6;
  wire [7:0] out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_9;
  wire [7:0] out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_10;
  wire [7:0] out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_11;
  wire [7:0] out_vb_assign_conn_obj_8_ASSIGN_VECTOR_BOOL_FU_vb_assign_12;
  wire [15:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [25:0] sig_in_bus_mergerMout_addr_ram1_0;
  wire [7:0] sig_in_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_bus_mergerMout_we_ram4_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288595_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288616_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288627_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288638_0;
  wire [25:0] sig_in_bus_mergerproxy_in2_288599_0;
  wire [25:0] sig_in_bus_mergerproxy_in2_2886110_0;
  wire [25:0] sig_in_bus_mergerproxy_in2_2886211_0;
  wire [25:0] sig_in_bus_mergerproxy_in2_2886312_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_2885913_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_2886114_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_2886215_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_2886316_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2885917_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886118_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886219_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886320_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2885921_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886122_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886223_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886324_0;
  wire [15:0] sig_in_vector_bus_mergerMout_Wdata_ram0_0;
  wire [25:0] sig_in_vector_bus_mergerMout_addr_ram1_0;
  wire [7:0] sig_in_vector_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_vector_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_vector_bus_mergerMout_we_ram4_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288595_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288616_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288627_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288638_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in2_288599_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in2_2886110_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in2_2886211_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in2_2886312_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_2885913_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_2886114_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_2886215_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_2886316_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2885917_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886118_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886219_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886320_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2885921_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886122_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886223_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886324_0;
  wire [15:0] sig_out_bus_mergerMout_Wdata_ram0_;
  wire [25:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [7:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire [1:0] sig_out_bus_mergerMout_oe_ram3_;
  wire [1:0] sig_out_bus_mergerMout_we_ram4_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288595_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288616_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288627_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288638_;
  wire [25:0] sig_out_bus_mergerproxy_in2_288599_;
  wire [25:0] sig_out_bus_mergerproxy_in2_2886110_;
  wire [25:0] sig_out_bus_mergerproxy_in2_2886211_;
  wire [25:0] sig_out_bus_mergerproxy_in2_2886312_;
  wire [7:0] sig_out_bus_mergerproxy_in3_2885913_;
  wire [7:0] sig_out_bus_mergerproxy_in3_2886114_;
  wire [7:0] sig_out_bus_mergerproxy_in3_2886215_;
  wire [7:0] sig_out_bus_mergerproxy_in3_2886316_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2885917_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886118_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886219_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886320_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2885921_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886122_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886223_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886324_;
  
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(5), .BITSIZE_out1(5)) ASSIGN_UNSIGNED_FU_u_assign_3 (.out1(out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_3), .in1(out_conv_out_reg_18_reg_18_8_5));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_4 (.out1(out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_4), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_UNSIGNED_FU_u_assign_5 (.out1(out_u_assign_conn_obj_7_ASSIGN_UNSIGNED_FU_u_assign_5), .in1(out_ui_plus_expr_FU_8_0_8_79_i1_fu_depth_first_searchF_28874_29607));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_10 (.out1(out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_10), .in1(out_reg_6_reg_6));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_11 (.out1(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_11), .in1(out_const_1));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_12 (.out1(out_vb_assign_conn_obj_8_ASSIGN_VECTOR_BOOL_FU_vb_assign_12), .in1(out_reg_14_reg_14));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_6 (.out1(out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_6), .in1(out_ui_plus_expr_FU_8_0_8_79_i0_fu_depth_first_searchF_28874_29543));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_7 (.out1(out_vb_assign_conn_obj_10_ASSIGN_VECTOR_BOOL_FU_vb_assign_7), .in1(out_IUdata_converter_FU_41_i0_fu_depth_first_searchF_28874_29593));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_8 (.out1(out_vb_assign_conn_obj_12_ASSIGN_VECTOR_BOOL_FU_vb_assign_8), .in1(out_ui_plus_expr_FU_8_0_8_79_i1_fu_depth_first_searchF_28874_29607));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_9 (.out1(out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_9), .in1(out_reg_7_reg_7));
  BMEMORY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_Min_oe_ram(1), .PORTSIZE_Min_oe_ram(2), .BITSIZE_Min_we_ram(1), .PORTSIZE_Min_we_ram(2), .BITSIZE_Mout_oe_ram(1), .PORTSIZE_Mout_oe_ram(2), .BITSIZE_Mout_we_ram(1), .PORTSIZE_Mout_we_ram(2), .BITSIZE_M_DataRdy(1), .PORTSIZE_M_DataRdy(2), .BITSIZE_Min_addr_ram(13), .PORTSIZE_Min_addr_ram(2), .BITSIZE_Mout_addr_ram(13), .PORTSIZE_Mout_addr_ram(2), .BITSIZE_M_Rdata_ram(8), .PORTSIZE_M_Rdata_ram(2), .BITSIZE_Min_Wdata_ram(8), .PORTSIZE_Min_Wdata_ram(2), .BITSIZE_Mout_Wdata_ram(8), .PORTSIZE_Mout_Wdata_ram(2), .BITSIZE_Min_data_ram_size(4), .PORTSIZE_Min_data_ram_size(2), .BITSIZE_Mout_data_ram_size(4), .PORTSIZE_Mout_data_ram_size(2)) BMEMORY_CTRLN_66_i0 (.out1({null_out_signal_BMEMORY_CTRLN_66_i0_out1_1, out_BMEMORY_CTRLN_66_i0_BMEMORY_CTRLN_66_i0}), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .in1({8'b00000000, out_MUX_0_BMEMORY_CTRLN_66_i0_0_0_1}), .in2({13'b0000000000000, out_MUX_1_BMEMORY_CTRLN_66_i0_1_1_1}), .in3({4'b0000, out_conv_out_const_2_5_4}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_BMEMORY_CTRLN_66_i0_LOAD}), .sel_STORE({1'b0, fuselector_BMEMORY_CTRLN_66_i0_STORE}), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .M_Rdata_ram(M_Rdata_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .M_DataRdy(M_DataRdy));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_0 (.out1(out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_0), .in1(out_const_1));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_1), .in1(out_const_8));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_2 (.out1(out_iu_conv_conn_obj_9_IUdata_converter_FU_iu_conv_2), .in1(out_conv_out_reg_12_reg_12_I_6_I_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_0_BMEMORY_CTRLN_66_i0_0_0_0 (.out1(out_MUX_0_BMEMORY_CTRLN_66_i0_0_0_0), .sel(selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_0), .in1(out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_0), .in2(out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_1));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_0_BMEMORY_CTRLN_66_i0_0_0_1 (.out1(out_MUX_0_BMEMORY_CTRLN_66_i0_0_0_1), .sel(selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_1), .in1(out_iu_conv_conn_obj_9_IUdata_converter_FU_iu_conv_2), .in2(out_MUX_0_BMEMORY_CTRLN_66_i0_0_0_0));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_14_PROXY_CTRLN_0_i0_1_0_0 (.out1(out_MUX_14_PROXY_CTRLN_0_i0_1_0_0), .sel(selector_MUX_14_PROXY_CTRLN_0_i0_1_0_0), .in1(out_conv_out_reg_0_reg_0_32_13), .in2(out_conv_out_addr_expr_FU_6_i0_fu_depth_first_searchF_28874_30257_32_13));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_17_PROXY_CTRLN_1_i0_0_0_0 (.out1(out_MUX_17_PROXY_CTRLN_1_i0_0_0_0), .sel(selector_MUX_17_PROXY_CTRLN_1_i0_0_0_0), .in1(out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_6), .in2(out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_10));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_17_PROXY_CTRLN_1_i0_0_0_1 (.out1(out_MUX_17_PROXY_CTRLN_1_i0_0_0_1), .sel(selector_MUX_17_PROXY_CTRLN_1_i0_0_0_1), .in1(out_vb_assign_conn_obj_8_ASSIGN_VECTOR_BOOL_FU_vb_assign_12), .in2(out_MUX_17_PROXY_CTRLN_1_i0_0_0_0));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_1_BMEMORY_CTRLN_66_i0_1_0_0 (.out1(out_MUX_1_BMEMORY_CTRLN_66_i0_1_0_0), .sel(selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_0), .in1(out_conv_out_reg_5_reg_5_32_13), .in2(out_conv_out_reg_4_reg_4_32_13));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_1_BMEMORY_CTRLN_66_i0_1_0_1 (.out1(out_MUX_1_BMEMORY_CTRLN_66_i0_1_0_1), .sel(selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_1), .in1(out_conv_out_reg_16_reg_16_32_13), .in2(out_conv_out_reg_13_reg_13_32_13));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_1_BMEMORY_CTRLN_66_i0_1_0_2 (.out1(out_MUX_1_BMEMORY_CTRLN_66_i0_1_0_2), .sel(selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_2), .in1(out_conv_out_reg_10_reg_10_32_13), .in2(out_conv_out_ui_pointer_plus_expr_FU_32_32_32_82_i8_fu_depth_first_searchF_28874_30385_32_13));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_1_BMEMORY_CTRLN_66_i0_1_1_0 (.out1(out_MUX_1_BMEMORY_CTRLN_66_i0_1_1_0), .sel(selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_0), .in1(out_MUX_1_BMEMORY_CTRLN_66_i0_1_0_0), .in2(out_MUX_1_BMEMORY_CTRLN_66_i0_1_0_1));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_1_BMEMORY_CTRLN_66_i0_1_1_1 (.out1(out_MUX_1_BMEMORY_CTRLN_66_i0_1_1_1), .sel(selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_1), .in1(out_MUX_1_BMEMORY_CTRLN_66_i0_1_0_2), .in2(out_MUX_1_BMEMORY_CTRLN_66_i0_1_1_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_21_PROXY_CTRLN_2_i0_0_0_0 (.out1(out_MUX_21_PROXY_CTRLN_2_i0_0_0_0), .sel(selector_MUX_21_PROXY_CTRLN_2_i0_0_0_0), .in1(out_vb_assign_conn_obj_12_ASSIGN_VECTOR_BOOL_FU_vb_assign_8), .in2(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_11));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_65_reg_11_0_0_0 (.out1(out_MUX_65_reg_11_0_0_0), .sel(selector_MUX_65_reg_11_0_0_0), .in1(out_reg_19_reg_19), .in2(out_PROXY_CTRLN_1_i0_PROXY_CTRLN_1_i0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_72_reg_18_0_0_0 (.out1(out_MUX_72_reg_18_0_0_0), .sel(selector_MUX_72_reg_18_0_0_0), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0), .in2(out_conv_out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_3_5_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_72_reg_18_0_0_1 (.out1(out_MUX_72_reg_18_0_0_1), .sel(selector_MUX_72_reg_18_0_0_1), .in1(out_conv_out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_4_1_8), .in2(out_u_assign_conn_obj_7_ASSIGN_UNSIGNED_FU_u_assign_5));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_72_reg_18_0_1_0 (.out1(out_MUX_72_reg_18_0_1_0), .sel(selector_MUX_72_reg_18_0_1_0), .in1(out_MUX_72_reg_18_0_0_0), .in2(out_MUX_72_reg_18_0_0_1));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_73_reg_19_0_0_0 (.out1(out_MUX_73_reg_19_0_0_0), .sel(selector_MUX_73_reg_19_0_0_0), .in1(out_reg_11_reg_11), .in2(out_PROXY_CTRLN_1_i0_PROXY_CTRLN_1_i0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_73_reg_19_0_0_1 (.out1(out_MUX_73_reg_19_0_0_1), .sel(selector_MUX_73_reg_19_0_0_1), .in1(out_ui_plus_expr_FU_8_0_8_79_i0_fu_depth_first_searchF_28874_29543), .in2(out_MUX_73_reg_19_0_0_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_78_reg_6_0_0_0 (.out1(out_MUX_78_reg_6_0_0_0), .sel(selector_MUX_78_reg_6_0_0_0), .in1(out_reg_19_reg_19), .in2(out_ui_plus_expr_FU_8_0_8_80_i0_fu_depth_first_searchF_28874_29563));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_0_i0 (.out1({null_out_signal_PROXY_CTRLN_0_i0_out1_1, out_PROXY_CTRLN_0_i0_PROXY_CTRLN_0_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288595_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288599_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2885913_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2885917_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2885921_0), .in1({8'b00000000, out_vb_assign_conn_obj_10_ASSIGN_VECTOR_BOOL_FU_vb_assign_7}), .in2({13'b0000000000000, out_MUX_14_PROXY_CTRLN_0_i0_1_0_0}), .in3({4'b0000, out_conv_out_const_2_5_4}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_0_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_0_i0_STORE}), .proxy_out1(proxy_out1_28859));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_1_i0 (.out1({null_out_signal_PROXY_CTRLN_1_i0_out1_1, out_PROXY_CTRLN_1_i0_PROXY_CTRLN_1_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288616_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2886110_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886114_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886118_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886122_0), .in1({8'b00000000, out_MUX_17_PROXY_CTRLN_1_i0_0_0_1}), .in2({13'b0000000000000, out_conv_out_reg_1_reg_1_32_13}), .in3({4'b0000, out_conv_out_const_2_5_4}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_1_i0_STORE}), .proxy_out1(proxy_out1_28861));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_2_i0 (.out1({null_out_signal_PROXY_CTRLN_2_i0_out1_1, out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288627_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2886211_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886215_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886219_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886223_0), .in1({8'b00000000, out_MUX_21_PROXY_CTRLN_2_i0_0_0_0}), .in2({13'b0000000000000, out_conv_out_reg_3_reg_3_32_13}), .in3({4'b0000, out_conv_out_const_2_5_4}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_2_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_2_i0_STORE}), .proxy_out1(proxy_out1_28862));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_3_i0 (.out1({null_out_signal_PROXY_CTRLN_3_i0_out1_1, out_PROXY_CTRLN_3_i0_PROXY_CTRLN_3_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288638_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2886312_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886316_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886320_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886324_0), .in1({8'b00000000, out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_9}), .in2({13'b0000000000000, out_conv_out_reg_2_reg_2_32_13}), .in3({4'b0000, out_conv_out_const_2_5_4}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_3_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_3_i0_STORE}), .proxy_out1(proxy_out1_28863));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288595_ (.out1(sig_out_bus_mergerproxy_in1_288595_), .in1({sig_in_bus_mergerproxy_in1_288595_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288616_ (.out1(sig_out_bus_mergerproxy_in1_288616_), .in1({sig_in_bus_mergerproxy_in1_288616_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288627_ (.out1(sig_out_bus_mergerproxy_in1_288627_), .in1({sig_in_bus_mergerproxy_in1_288627_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288638_ (.out1(sig_out_bus_mergerproxy_in1_288638_), .in1({sig_in_bus_mergerproxy_in1_288638_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in2_288599_ (.out1(sig_out_bus_mergerproxy_in2_288599_), .in1({sig_in_bus_mergerproxy_in2_288599_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in2_2886110_ (.out1(sig_out_bus_mergerproxy_in2_2886110_), .in1({sig_in_bus_mergerproxy_in2_2886110_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in2_2886211_ (.out1(sig_out_bus_mergerproxy_in2_2886211_), .in1({sig_in_bus_mergerproxy_in2_2886211_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in2_2886312_ (.out1(sig_out_bus_mergerproxy_in2_2886312_), .in1({sig_in_bus_mergerproxy_in2_2886312_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_2885913_ (.out1(sig_out_bus_mergerproxy_in3_2885913_), .in1({sig_in_bus_mergerproxy_in3_2885913_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_2886114_ (.out1(sig_out_bus_mergerproxy_in3_2886114_), .in1({sig_in_bus_mergerproxy_in3_2886114_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_2886215_ (.out1(sig_out_bus_mergerproxy_in3_2886215_), .in1({sig_in_bus_mergerproxy_in3_2886215_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_2886316_ (.out1(sig_out_bus_mergerproxy_in3_2886316_), .in1({sig_in_bus_mergerproxy_in3_2886316_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2885917_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2885917_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2885917_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886118_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886118_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886118_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886219_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886219_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886219_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886320_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886320_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886320_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2885921_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2885921_), .in1({sig_in_bus_mergerproxy_sel_STORE_2885921_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886122_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886122_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886122_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886223_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886223_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886223_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886324_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886324_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886324_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(12), .value(MEM_var_28861_28876)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(12), .value(MEM_var_28862_28876)) const_11 (.out1(out_const_11));
  constant_value #(.BITSIZE_out1(13), .value(MEM_var_28863_28876)) const_12 (.out1(out_const_12));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(2), .value(2'b10)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(5), .value(5'b10110)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(11), .value(MEM_var_28859_28876)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111110)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_in_port_a_32_13 (.out1(out_conv_in_port_a_32_13), .in1(in_port_a));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_addr_expr_FU_6_i0_fu_depth_first_searchF_28874_30257_32_13 (.out1(out_conv_out_addr_expr_FU_6_i0_fu_depth_first_searchF_28874_30257_32_13), .in1(out_addr_expr_FU_6_i0_fu_depth_first_searchF_28874_30257));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(32)) conv_out_const_10_12_32 (.out1(out_conv_out_const_10_12_32), .in1(out_const_10));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(32)) conv_out_const_11_12_32 (.out1(out_conv_out_const_11_12_32), .in1(out_const_11));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_const_12_13_32 (.out1(out_conv_out_const_12_13_32), .in1(out_const_12));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_2_5_4 (.out1(out_conv_out_const_2_5_4), .in1(out_const_2));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(32)) conv_out_const_6_11_32 (.out1(out_conv_out_const_6_11_32), .in1(out_const_6));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_0_reg_0_32_13 (.out1(out_conv_out_reg_0_reg_0_32_13), .in1(out_reg_0_reg_0));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_10_reg_10_32_13 (.out1(out_conv_out_reg_10_reg_10_32_13), .in1(out_reg_10_reg_10));
  IIdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(8)) conv_out_reg_12_reg_12_I_6_I_8 (.out1(out_conv_out_reg_12_reg_12_I_6_I_8), .in1(out_reg_12_reg_12));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_13_reg_13_32_13 (.out1(out_conv_out_reg_13_reg_13_32_13), .in1(out_reg_13_reg_13));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_16_reg_16_32_13 (.out1(out_conv_out_reg_16_reg_16_32_13), .in1(out_reg_16_reg_16));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(5)) conv_out_reg_18_reg_18_8_5 (.out1(out_conv_out_reg_18_reg_18_8_5), .in1(out_reg_18_reg_18));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_1_reg_1_32_13 (.out1(out_conv_out_reg_1_reg_1_32_13), .in1(out_reg_1_reg_1));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_2_reg_2_32_13 (.out1(out_conv_out_reg_2_reg_2_32_13), .in1(out_reg_2_reg_2));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_3_reg_3_32_13 (.out1(out_conv_out_reg_3_reg_3_32_13), .in1(out_reg_3_reg_3));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_4_reg_4_32_13 (.out1(out_conv_out_reg_4_reg_4_32_13), .in1(out_reg_4_reg_4));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_5_reg_5_32_13 (.out1(out_conv_out_reg_5_reg_5_32_13), .in1(out_reg_5_reg_5));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_3_5_8 (.out1(out_conv_out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_3_5_8), .in1(out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_3));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_4_1_8 (.out1(out_conv_out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_4_1_8), .in1(out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_4));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_ui_pointer_plus_expr_FU_32_32_32_82_i8_fu_depth_first_searchF_28874_30385_32_13 (.out1(out_conv_out_ui_pointer_plus_expr_FU_32_32_32_82_i8_fu_depth_first_searchF_28874_30385_32_13), .in1(out_ui_pointer_plus_expr_FU_32_32_32_82_i8_fu_depth_first_searchF_28874_30385));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_depth_first_searchF_28874_29539 (.out1(out_UUdata_converter_FU_7_i0_fu_depth_first_searchF_28874_29539), .in1(out_PROXY_CTRLN_0_i0_PROXY_CTRLN_0_i0));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_depth_first_searchF_28874_29540 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_82_i0_fu_depth_first_searchF_28874_29540), .in1(in_port_array), .in2(out_UUdata_converter_FU_7_i0_fu_depth_first_searchF_28874_29539));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_depth_first_searchF_28874_29543 (.out1(out_ui_plus_expr_FU_8_0_8_79_i0_fu_depth_first_searchF_28874_29543), .in1(out_PROXY_CTRLN_1_i0_PROXY_CTRLN_1_i0), .in2(out_const_3));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_depth_first_searchF_28874_29561 (.out1(out_IUdata_converter_FU_12_i0_fu_depth_first_searchF_28874_29561), .in1(out_BMEMORY_CTRLN_66_i0_BMEMORY_CTRLN_66_i0));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) fu_depth_first_searchF_28874_29563 (.out1(out_ui_plus_expr_FU_8_0_8_80_i0_fu_depth_first_searchF_28874_29563), .in1(out_reg_6_reg_6), .in2(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_depth_first_searchF_28874_29565 (.out1(out_UUdata_converter_FU_13_i0_fu_depth_first_searchF_28874_29565), .in1(out_IUdata_converter_FU_12_i0_fu_depth_first_searchF_28874_29561));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(32), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_depth_first_searchF_28874_29567 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_82_i1_fu_depth_first_searchF_28874_29567), .in1(out_conv_in_port_a_32_13), .in2(out_reg_8_reg_8));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_depth_first_searchF_28874_29568 (.out1(out_UIdata_converter_FU_14_i0_fu_depth_first_searchF_28874_29568), .in1(out_IUdata_converter_FU_12_i0_fu_depth_first_searchF_28874_29561));
  read_cond_FU #(.BITSIZE_in1(1)) fu_depth_first_searchF_28874_29570 (.out1(out_read_cond_FU_17_i0_fu_depth_first_searchF_28874_29570), .in1(out_ne_expr_FU_8_0_8_68_i0_fu_depth_first_searchF_28874_30452));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_depth_first_searchF_28874_29593 (.out1(out_IUdata_converter_FU_41_i0_fu_depth_first_searchF_28874_29593), .in1(out_plus_expr_FU_8_0_8_69_i0_fu_depth_first_searchF_28874_29597));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_depth_first_searchF_28874_29597 (.out1(out_plus_expr_FU_8_0_8_69_i0_fu_depth_first_searchF_28874_29597), .in1(out_UIdata_converter_FU_40_i0_fu_depth_first_searchF_28874_29603), .in2(out_const_7));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_depth_first_searchF_28874_29603 (.out1(out_UIdata_converter_FU_40_i0_fu_depth_first_searchF_28874_29603), .in1(out_PROXY_CTRLN_1_i0_PROXY_CTRLN_1_i0));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_depth_first_searchF_28874_29607 (.out1(out_ui_plus_expr_FU_8_0_8_79_i1_fu_depth_first_searchF_28874_29607), .in1(out_reg_18_reg_18), .in2(out_const_3));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_depth_first_searchF_28874_29629 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_82_i2_fu_depth_first_searchF_28874_29629), .in1(in_port_array), .in2(out_UUdata_converter_FU_33_i0_fu_depth_first_searchF_28874_29632));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_depth_first_searchF_28874_29632 (.out1(out_UUdata_converter_FU_33_i0_fu_depth_first_searchF_28874_29632), .in1(out_reg_11_reg_11));
  UIdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(6)) fu_depth_first_searchF_28874_29640 (.out1(out_UIdata_converter_FU_34_i0_fu_depth_first_searchF_28874_29640), .in1(out_conv_out_reg_18_reg_18_8_5));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_depth_first_searchF_28874_29644 (.out1(out_ui_plus_expr_FU_8_0_8_79_i2_fu_depth_first_searchF_28874_29644), .in1(out_reg_11_reg_11), .in2(out_const_3));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_depth_first_searchF_28874_29647 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_82_i3_fu_depth_first_searchF_28874_29647), .in1(in_port_array), .in2(out_UUdata_converter_FU_55_i0_fu_depth_first_searchF_28874_29650));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_depth_first_searchF_28874_29650 (.out1(out_UUdata_converter_FU_55_i0_fu_depth_first_searchF_28874_29650), .in1(out_PROXY_CTRLN_0_i0_PROXY_CTRLN_0_i0));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(5)) fu_depth_first_searchF_28874_29678 (.out1(out_UUdata_converter_FU_29_i0_fu_depth_first_searchF_28874_29678), .in1(out_conv_out_reg_18_reg_18_8_5));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(32), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_depth_first_searchF_28874_29680 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_82_i4_fu_depth_first_searchF_28874_29680), .in1(out_conv_in_port_a_32_13), .in2(out_ui_minus_expr_FU_16_16_16_77_i1_fu_depth_first_searchF_28874_30340));
  UIdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(6)) fu_depth_first_searchF_28874_29681 (.out1(out_UIdata_converter_FU_30_i0_fu_depth_first_searchF_28874_29681), .in1(out_conv_out_reg_18_reg_18_8_5));
  read_cond_FU #(.BITSIZE_in1(1)) fu_depth_first_searchF_28874_29683 (.out1(out_read_cond_FU_35_i0_fu_depth_first_searchF_28874_29683), .in1(out_ne_expr_FU_8_0_8_68_i1_fu_depth_first_searchF_28874_30454));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_depth_first_searchF_28874_29697 (.out1(out_UUdata_converter_FU_37_i0_fu_depth_first_searchF_28874_29697), .in1(out_PROXY_CTRLN_3_i0_PROXY_CTRLN_3_i0));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(32), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_depth_first_searchF_28874_29699 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_82_i5_fu_depth_first_searchF_28874_29699), .in1(out_conv_in_port_a_32_13), .in2(out_ui_minus_expr_FU_16_16_16_77_i2_fu_depth_first_searchF_28874_30373));
  read_cond_FU #(.BITSIZE_in1(1)) fu_depth_first_searchF_28874_29701 (.out1(out_read_cond_FU_39_i0_fu_depth_first_searchF_28874_29701), .in1(out_gt_expr_FU_8_0_8_67_i0_fu_depth_first_searchF_28874_30456));
  read_cond_FU #(.BITSIZE_in1(1)) fu_depth_first_searchF_28874_29713 (.out1(out_read_cond_FU_46_i0_fu_depth_first_searchF_28874_29713), .in1(out_ui_le_expr_FU_8_0_8_73_i0_fu_depth_first_searchF_28874_30458));
  read_cond_FU #(.BITSIZE_in1(1)) fu_depth_first_searchF_28874_29715 (.out1(out_read_cond_FU_64_i0_fu_depth_first_searchF_28874_29715), .in1(out_ui_ne_expr_FU_8_0_8_78_i0_fu_depth_first_searchF_28874_30460));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_depth_first_searchF_28874_30257 (.out1(out_addr_expr_FU_6_i0_fu_depth_first_searchF_28874_30257), .in1(out_conv_out_const_6_11_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_depth_first_searchF_28874_30261 (.out1(out_addr_expr_FU_8_i0_fu_depth_first_searchF_28874_30261), .in1(out_conv_out_const_10_12_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_depth_first_searchF_28874_30269 (.out1(out_addr_expr_FU_9_i0_fu_depth_first_searchF_28874_30269), .in1(out_conv_out_const_12_13_32));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(9), .PRECISION(32)) fu_depth_first_searchF_28874_30277 (.out1(out_ui_lshift_expr_FU_16_0_16_74_i0_fu_depth_first_searchF_28874_30277), .in1(out_UUdata_converter_FU_13_i0_fu_depth_first_searchF_28874_29565), .in2(out_const_3));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(10), .OFFSET_PARAMETER(1)) fu_depth_first_searchF_28874_30280 (.out1(out_ui_bit_ior_concat_expr_FU_71_i0_fu_depth_first_searchF_28874_30280), .in1(out_ui_lshift_expr_FU_16_0_16_74_i2_fu_depth_first_searchF_28874_30664), .in2(out_ui_bit_and_expr_FU_1_0_1_70_i0_fu_depth_first_searchF_28874_30667), .in3(out_const_3));
  ui_lshift_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(2), .BITSIZE_out1(13), .PRECISION(32)) fu_depth_first_searchF_28874_30283 (.out1(out_ui_lshift_expr_FU_16_0_16_75_i0_fu_depth_first_searchF_28874_30283), .in1(out_ui_bit_ior_concat_expr_FU_71_i0_fu_depth_first_searchF_28874_30280), .in2(out_const_7));
  ui_minus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(8), .BITSIZE_out1(32)) fu_depth_first_searchF_28874_30286 (.out1(out_ui_minus_expr_FU_16_16_16_77_i0_fu_depth_first_searchF_28874_30286), .in1(out_ui_lshift_expr_FU_16_0_16_75_i0_fu_depth_first_searchF_28874_30283), .in2(out_UUdata_converter_FU_13_i0_fu_depth_first_searchF_28874_29565));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_depth_first_searchF_28874_30289 (.out1(out_UUdata_converter_FU_15_i0_fu_depth_first_searchF_28874_30289), .in1(out_ui_pointer_plus_expr_FU_32_32_32_82_i1_fu_depth_first_searchF_28874_29567));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_depth_first_searchF_28874_30292 (.out1(out_IUdata_converter_FU_16_i0_fu_depth_first_searchF_28874_30292), .in1(out_UIdata_converter_FU_14_i0_fu_depth_first_searchF_28874_29568));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_depth_first_searchF_28874_30298 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_82_i6_fu_depth_first_searchF_28874_30298), .in1(out_UUdata_converter_FU_15_i0_fu_depth_first_searchF_28874_30289), .in2(out_reg_9_reg_9));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_depth_first_searchF_28874_30319 (.out1(out_addr_expr_FU_10_i0_fu_depth_first_searchF_28874_30319), .in1(out_conv_out_const_11_12_32));
  ui_lshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(6), .PRECISION(32)) fu_depth_first_searchF_28874_30331 (.out1(out_ui_lshift_expr_FU_8_0_8_76_i0_fu_depth_first_searchF_28874_30331), .in1(out_UUdata_converter_FU_29_i0_fu_depth_first_searchF_28874_29678), .in2(out_const_3));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(7), .OFFSET_PARAMETER(1)) fu_depth_first_searchF_28874_30334 (.out1(out_ui_bit_ior_concat_expr_FU_72_i0_fu_depth_first_searchF_28874_30334), .in1(out_ui_lshift_expr_FU_8_0_8_76_i1_fu_depth_first_searchF_28874_30679), .in2(out_ui_bit_and_expr_FU_1_0_1_70_i1_fu_depth_first_searchF_28874_30682), .in3(out_const_3));
  ui_lshift_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_out1(10), .PRECISION(32)) fu_depth_first_searchF_28874_30337 (.out1(out_ui_lshift_expr_FU_16_0_16_75_i1_fu_depth_first_searchF_28874_30337), .in1(out_ui_bit_ior_concat_expr_FU_72_i0_fu_depth_first_searchF_28874_30334), .in2(out_const_7));
  ui_minus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(5), .BITSIZE_out1(32)) fu_depth_first_searchF_28874_30340 (.out1(out_ui_minus_expr_FU_16_16_16_77_i1_fu_depth_first_searchF_28874_30340), .in1(out_ui_lshift_expr_FU_16_0_16_75_i1_fu_depth_first_searchF_28874_30337), .in2(out_UUdata_converter_FU_29_i0_fu_depth_first_searchF_28874_29678));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_depth_first_searchF_28874_30343 (.out1(out_UUdata_converter_FU_31_i0_fu_depth_first_searchF_28874_30343), .in1(out_ui_pointer_plus_expr_FU_32_32_32_82_i4_fu_depth_first_searchF_28874_29680));
  IUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(5)) fu_depth_first_searchF_28874_30346 (.out1(out_IUdata_converter_FU_32_i0_fu_depth_first_searchF_28874_30346), .in1(out_UIdata_converter_FU_30_i0_fu_depth_first_searchF_28874_29681));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_depth_first_searchF_28874_30352 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_82_i7_fu_depth_first_searchF_28874_30352), .in1(out_UUdata_converter_FU_31_i0_fu_depth_first_searchF_28874_30343), .in2(out_IUdata_converter_FU_32_i0_fu_depth_first_searchF_28874_30346));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(9), .PRECISION(32)) fu_depth_first_searchF_28874_30364 (.out1(out_ui_lshift_expr_FU_16_0_16_74_i1_fu_depth_first_searchF_28874_30364), .in1(out_UUdata_converter_FU_37_i0_fu_depth_first_searchF_28874_29697), .in2(out_const_3));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(10), .OFFSET_PARAMETER(1)) fu_depth_first_searchF_28874_30367 (.out1(out_ui_bit_ior_concat_expr_FU_71_i1_fu_depth_first_searchF_28874_30367), .in1(out_ui_lshift_expr_FU_16_0_16_74_i3_fu_depth_first_searchF_28874_30694), .in2(out_ui_bit_and_expr_FU_1_0_1_70_i2_fu_depth_first_searchF_28874_30697), .in3(out_const_3));
  ui_lshift_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(2), .BITSIZE_out1(13), .PRECISION(32)) fu_depth_first_searchF_28874_30370 (.out1(out_ui_lshift_expr_FU_16_0_16_75_i2_fu_depth_first_searchF_28874_30370), .in1(out_ui_bit_ior_concat_expr_FU_71_i1_fu_depth_first_searchF_28874_30367), .in2(out_const_7));
  ui_minus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(8), .BITSIZE_out1(32)) fu_depth_first_searchF_28874_30373 (.out1(out_ui_minus_expr_FU_16_16_16_77_i2_fu_depth_first_searchF_28874_30373), .in1(out_ui_lshift_expr_FU_16_0_16_75_i2_fu_depth_first_searchF_28874_30370), .in2(out_UUdata_converter_FU_37_i0_fu_depth_first_searchF_28874_29697));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_depth_first_searchF_28874_30376 (.out1(out_UUdata_converter_FU_38_i0_fu_depth_first_searchF_28874_30376), .in1(out_ui_pointer_plus_expr_FU_32_32_32_82_i5_fu_depth_first_searchF_28874_29699));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_depth_first_searchF_28874_30385 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_82_i8_fu_depth_first_searchF_28874_30385), .in1(out_reg_17_reg_17), .in2(out_reg_15_reg_15));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_depth_first_searchF_28874_30452 (.out1(out_ne_expr_FU_8_0_8_68_i0_fu_depth_first_searchF_28874_30452), .in1(out_BMEMORY_CTRLN_66_i0_BMEMORY_CTRLN_66_i0), .in2(out_const_4));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_depth_first_searchF_28874_30454 (.out1(out_ne_expr_FU_8_0_8_68_i1_fu_depth_first_searchF_28874_30454), .in1(out_BMEMORY_CTRLN_66_i0_BMEMORY_CTRLN_66_i0), .in2(out_const_4));
  gt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_depth_first_searchF_28874_30456 (.out1(out_gt_expr_FU_8_0_8_67_i0_fu_depth_first_searchF_28874_30456), .in1(out_BMEMORY_CTRLN_66_i0_BMEMORY_CTRLN_66_i0), .in2(out_const_0));
  ui_le_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_depth_first_searchF_28874_30458 (.out1(out_ui_le_expr_FU_8_0_8_73_i0_fu_depth_first_searchF_28874_30458), .in1(out_ui_plus_expr_FU_8_0_8_79_i1_fu_depth_first_searchF_28874_29607), .in2(out_const_5));
  ui_ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_depth_first_searchF_28874_30460 (.out1(out_ui_ne_expr_FU_8_0_8_78_i0_fu_depth_first_searchF_28874_30460), .in1(out_reg_6_reg_6), .in2(out_const_0));
  ui_rshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1), .BITSIZE_out1(8), .PRECISION(32)) fu_depth_first_searchF_28874_30656 (.out1(out_ui_rshift_expr_FU_16_0_16_83_i0_fu_depth_first_searchF_28874_30656), .in1(out_ui_lshift_expr_FU_16_0_16_74_i0_fu_depth_first_searchF_28874_30277), .in2(out_const_3));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(7), .PRECISION(32)) fu_depth_first_searchF_28874_30659 (.out1(out_ui_rshift_expr_FU_8_0_8_84_i0_fu_depth_first_searchF_28874_30659), .in1(out_UUdata_converter_FU_13_i0_fu_depth_first_searchF_28874_29565), .in2(out_const_3));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(7), .BITSIZE_out1(9)) fu_depth_first_searchF_28874_30661 (.out1(out_ui_plus_expr_FU_8_8_8_81_i0_fu_depth_first_searchF_28874_30661), .in1(out_ui_rshift_expr_FU_16_0_16_83_i0_fu_depth_first_searchF_28874_30656), .in2(out_ui_rshift_expr_FU_8_0_8_84_i0_fu_depth_first_searchF_28874_30659));
  ui_lshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1), .BITSIZE_out1(10), .PRECISION(32)) fu_depth_first_searchF_28874_30664 (.out1(out_ui_lshift_expr_FU_16_0_16_74_i2_fu_depth_first_searchF_28874_30664), .in1(out_ui_plus_expr_FU_8_8_8_81_i0_fu_depth_first_searchF_28874_30661), .in2(out_const_3));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_depth_first_searchF_28874_30667 (.out1(out_ui_bit_and_expr_FU_1_0_1_70_i0_fu_depth_first_searchF_28874_30667), .in1(out_UUdata_converter_FU_13_i0_fu_depth_first_searchF_28874_29565), .in2(out_const_3));
  ui_rshift_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(1), .BITSIZE_out1(5), .PRECISION(32)) fu_depth_first_searchF_28874_30671 (.out1(out_ui_rshift_expr_FU_8_0_8_84_i1_fu_depth_first_searchF_28874_30671), .in1(out_ui_lshift_expr_FU_8_0_8_76_i0_fu_depth_first_searchF_28874_30331), .in2(out_const_3));
  ui_rshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(4), .PRECISION(32)) fu_depth_first_searchF_28874_30674 (.out1(out_ui_rshift_expr_FU_8_0_8_84_i2_fu_depth_first_searchF_28874_30674), .in1(out_UUdata_converter_FU_29_i0_fu_depth_first_searchF_28874_29678), .in2(out_const_3));
  ui_plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(4), .BITSIZE_out1(6)) fu_depth_first_searchF_28874_30676 (.out1(out_ui_plus_expr_FU_8_8_8_81_i1_fu_depth_first_searchF_28874_30676), .in1(out_ui_rshift_expr_FU_8_0_8_84_i1_fu_depth_first_searchF_28874_30671), .in2(out_ui_rshift_expr_FU_8_0_8_84_i2_fu_depth_first_searchF_28874_30674));
  ui_lshift_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(1), .BITSIZE_out1(7), .PRECISION(32)) fu_depth_first_searchF_28874_30679 (.out1(out_ui_lshift_expr_FU_8_0_8_76_i1_fu_depth_first_searchF_28874_30679), .in1(out_ui_plus_expr_FU_8_8_8_81_i1_fu_depth_first_searchF_28874_30676), .in2(out_const_3));
  ui_bit_and_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_depth_first_searchF_28874_30682 (.out1(out_ui_bit_and_expr_FU_1_0_1_70_i1_fu_depth_first_searchF_28874_30682), .in1(out_UUdata_converter_FU_29_i0_fu_depth_first_searchF_28874_29678), .in2(out_const_3));
  ui_rshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1), .BITSIZE_out1(8), .PRECISION(32)) fu_depth_first_searchF_28874_30686 (.out1(out_ui_rshift_expr_FU_16_0_16_83_i1_fu_depth_first_searchF_28874_30686), .in1(out_ui_lshift_expr_FU_16_0_16_74_i1_fu_depth_first_searchF_28874_30364), .in2(out_const_3));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(7), .PRECISION(32)) fu_depth_first_searchF_28874_30689 (.out1(out_ui_rshift_expr_FU_8_0_8_84_i3_fu_depth_first_searchF_28874_30689), .in1(out_UUdata_converter_FU_37_i0_fu_depth_first_searchF_28874_29697), .in2(out_const_3));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(7), .BITSIZE_out1(9)) fu_depth_first_searchF_28874_30691 (.out1(out_ui_plus_expr_FU_8_8_8_81_i2_fu_depth_first_searchF_28874_30691), .in1(out_ui_rshift_expr_FU_16_0_16_83_i1_fu_depth_first_searchF_28874_30686), .in2(out_ui_rshift_expr_FU_8_0_8_84_i3_fu_depth_first_searchF_28874_30689));
  ui_lshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1), .BITSIZE_out1(10), .PRECISION(32)) fu_depth_first_searchF_28874_30694 (.out1(out_ui_lshift_expr_FU_16_0_16_74_i3_fu_depth_first_searchF_28874_30694), .in1(out_ui_plus_expr_FU_8_8_8_81_i2_fu_depth_first_searchF_28874_30691), .in2(out_const_3));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_depth_first_searchF_28874_30697 (.out1(out_ui_bit_and_expr_FU_1_0_1_70_i2_fu_depth_first_searchF_28874_30697), .in1(out_UUdata_converter_FU_37_i0_fu_depth_first_searchF_28874_29697), .in2(out_const_3));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerMout_data_ram_size2_0 (.out1(sig_in_bus_mergerMout_data_ram_size2_0), .in1(sig_in_vector_bus_mergerMout_data_ram_size2_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_oe_ram3_0 (.out1(sig_in_bus_mergerMout_oe_ram3_0), .in1(sig_in_vector_bus_mergerMout_oe_ram3_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_we_ram4_0 (.out1(sig_in_bus_mergerMout_we_ram4_0), .in1(sig_in_vector_bus_mergerMout_we_ram4_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288595_0 (.out1(sig_in_bus_mergerproxy_in1_288595_0), .in1(sig_in_vector_bus_mergerproxy_in1_288595_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288616_0 (.out1(sig_in_bus_mergerproxy_in1_288616_0), .in1(sig_in_vector_bus_mergerproxy_in1_288616_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288627_0 (.out1(sig_in_bus_mergerproxy_in1_288627_0), .in1(sig_in_vector_bus_mergerproxy_in1_288627_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288638_0 (.out1(sig_in_bus_mergerproxy_in1_288638_0), .in1(sig_in_vector_bus_mergerproxy_in1_288638_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in2_288599_0 (.out1(sig_in_bus_mergerproxy_in2_288599_0), .in1(sig_in_vector_bus_mergerproxy_in2_288599_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in2_2886110_0 (.out1(sig_in_bus_mergerproxy_in2_2886110_0), .in1(sig_in_vector_bus_mergerproxy_in2_2886110_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in2_2886211_0 (.out1(sig_in_bus_mergerproxy_in2_2886211_0), .in1(sig_in_vector_bus_mergerproxy_in2_2886211_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in2_2886312_0 (.out1(sig_in_bus_mergerproxy_in2_2886312_0), .in1(sig_in_vector_bus_mergerproxy_in2_2886312_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_2885913_0 (.out1(sig_in_bus_mergerproxy_in3_2885913_0), .in1(sig_in_vector_bus_mergerproxy_in3_2885913_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_2886114_0 (.out1(sig_in_bus_mergerproxy_in3_2886114_0), .in1(sig_in_vector_bus_mergerproxy_in3_2886114_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_2886215_0 (.out1(sig_in_bus_mergerproxy_in3_2886215_0), .in1(sig_in_vector_bus_mergerproxy_in3_2886215_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_2886316_0 (.out1(sig_in_bus_mergerproxy_in3_2886316_0), .in1(sig_in_vector_bus_mergerproxy_in3_2886316_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2885917_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2885917_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2885917_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886118_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886118_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886118_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886219_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886219_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886219_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886320_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886320_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886320_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2885921_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2885921_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2885921_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886122_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886122_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886122_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886223_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886223_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886223_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886324_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886324_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886324_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_6_i0_fu_depth_first_searchF_28874_30257), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_8_i0_fu_depth_first_searchF_28874_30261), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_82_i6_fu_depth_first_searchF_28874_30298), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_MUX_65_reg_11_0_0_0), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_34_i0_fu_depth_first_searchF_28874_29640), .wenable(wrenable_reg_12));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_82_i2_fu_depth_first_searchF_28874_29629), .wenable(wrenable_reg_13));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_79_i2_fu_depth_first_searchF_28874_29644), .wenable(wrenable_reg_14));
  register_SE #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_32_i0_fu_depth_first_searchF_28874_30346), .wenable(wrenable_reg_15));
  register_STD #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_82_i7_fu_depth_first_searchF_28874_30352), .wenable(wrenable_reg_16));
  register_STD #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_38_i0_fu_depth_first_searchF_28874_30376), .wenable(wrenable_reg_17));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_MUX_72_reg_18_0_1_0), .wenable(wrenable_reg_18));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_19 (.out1(out_reg_19_reg_19), .clock(clock), .reset(reset), .in1(out_MUX_73_reg_19_0_0_1), .wenable(wrenable_reg_19));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_9_i0_fu_depth_first_searchF_28874_30269), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_10_i0_fu_depth_first_searchF_28874_30319), .wenable(wrenable_reg_3));
  register_STD #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_82_i0_fu_depth_first_searchF_28874_29540), .wenable(wrenable_reg_4));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_82_i3_fu_depth_first_searchF_28874_29647), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_MUX_78_reg_6_0_0_0), .wenable(wrenable_reg_6));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_12_i0_fu_depth_first_searchF_28874_29561), .wenable(wrenable_reg_7));
  register_STD #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_ui_minus_expr_FU_16_16_16_77_i0_fu_depth_first_searchF_28874_30286), .wenable(wrenable_reg_8));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_16_i0_fu_depth_first_searchF_28874_30292), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288595_ (.out1(proxy_in1_28859), .in1(sig_out_bus_mergerproxy_in1_288595_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288616_ (.out1(proxy_in1_28861), .in1(sig_out_bus_mergerproxy_in1_288616_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288627_ (.out1(proxy_in1_28862), .in1(sig_out_bus_mergerproxy_in1_288627_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288638_ (.out1(proxy_in1_28863), .in1(sig_out_bus_mergerproxy_in1_288638_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288599_ (.out1(proxy_in2_28859), .in1(sig_out_bus_mergerproxy_in2_288599_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2886110_ (.out1(proxy_in2_28861), .in1(sig_out_bus_mergerproxy_in2_2886110_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2886211_ (.out1(proxy_in2_28862), .in1(sig_out_bus_mergerproxy_in2_2886211_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2886312_ (.out1(proxy_in2_28863), .in1(sig_out_bus_mergerproxy_in2_2886312_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2885913_ (.out1(proxy_in3_28859), .in1(sig_out_bus_mergerproxy_in3_2885913_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2886114_ (.out1(proxy_in3_28861), .in1(sig_out_bus_mergerproxy_in3_2886114_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2886215_ (.out1(proxy_in3_28862), .in1(sig_out_bus_mergerproxy_in3_2886215_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2886316_ (.out1(proxy_in3_28863), .in1(sig_out_bus_mergerproxy_in3_2886316_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2885917_ (.out1(proxy_sel_LOAD_28859), .in1(sig_out_bus_mergerproxy_sel_LOAD_2885917_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886118_ (.out1(proxy_sel_LOAD_28861), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886118_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886219_ (.out1(proxy_sel_LOAD_28862), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886219_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886320_ (.out1(proxy_sel_LOAD_28863), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886320_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2885921_ (.out1(proxy_sel_STORE_28859), .in1(sig_out_bus_mergerproxy_sel_STORE_2885921_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886122_ (.out1(proxy_sel_STORE_28861), .in1(sig_out_bus_mergerproxy_sel_STORE_2886122_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886223_ (.out1(proxy_sel_STORE_28862), .in1(sig_out_bus_mergerproxy_sel_STORE_2886223_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886324_ (.out1(proxy_sel_STORE_28863), .in1(sig_out_bus_mergerproxy_sel_STORE_2886324_));
  // io-signal post fix
  assign OUT_CONDITION_depth_first_searchF_28874_29570 = out_read_cond_FU_17_i0_fu_depth_first_searchF_28874_29570;
  assign OUT_CONDITION_depth_first_searchF_28874_29683 = out_read_cond_FU_35_i0_fu_depth_first_searchF_28874_29683;
  assign OUT_CONDITION_depth_first_searchF_28874_29701 = out_read_cond_FU_39_i0_fu_depth_first_searchF_28874_29701;
  assign OUT_CONDITION_depth_first_searchF_28874_29713 = out_read_cond_FU_46_i0_fu_depth_first_searchF_28874_29713;
  assign OUT_CONDITION_depth_first_searchF_28874_29715 = out_read_cond_FU_64_i0_fu_depth_first_searchF_28874_29715;

endmodule

// FSM based controller description for depth_first_searchF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_depth_first_searchF(done_port, fuselector_BMEMORY_CTRLN_66_i0_LOAD, fuselector_BMEMORY_CTRLN_66_i0_STORE, selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_0, selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_1, selector_MUX_14_PROXY_CTRLN_0_i0_1_0_0, selector_MUX_17_PROXY_CTRLN_1_i0_0_0_0, selector_MUX_17_PROXY_CTRLN_1_i0_0_0_1, selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_0, selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_1, selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_2, selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_0, selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_1, selector_MUX_21_PROXY_CTRLN_2_i0_0_0_0, selector_MUX_65_reg_11_0_0_0, selector_MUX_72_reg_18_0_0_0, selector_MUX_72_reg_18_0_0_1, selector_MUX_72_reg_18_0_1_0, selector_MUX_73_reg_19_0_0_0, selector_MUX_73_reg_19_0_0_1, selector_MUX_78_reg_6_0_0_0, fuselector_PROXY_CTRLN_0_i0_LOAD, fuselector_PROXY_CTRLN_0_i0_STORE, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, fuselector_PROXY_CTRLN_3_i0_LOAD, fuselector_PROXY_CTRLN_3_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_depth_first_searchF_28874_29570, OUT_CONDITION_depth_first_searchF_28874_29683, OUT_CONDITION_depth_first_searchF_28874_29701, OUT_CONDITION_depth_first_searchF_28874_29713, OUT_CONDITION_depth_first_searchF_28874_29715, clock, reset, start_port);
  // IN
  input OUT_CONDITION_depth_first_searchF_28874_29570;
  input OUT_CONDITION_depth_first_searchF_28874_29683;
  input OUT_CONDITION_depth_first_searchF_28874_29701;
  input OUT_CONDITION_depth_first_searchF_28874_29713;
  input OUT_CONDITION_depth_first_searchF_28874_29715;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output fuselector_BMEMORY_CTRLN_66_i0_LOAD;
  output fuselector_BMEMORY_CTRLN_66_i0_STORE;
  output selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_0;
  output selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_1;
  output selector_MUX_14_PROXY_CTRLN_0_i0_1_0_0;
  output selector_MUX_17_PROXY_CTRLN_1_i0_0_0_0;
  output selector_MUX_17_PROXY_CTRLN_1_i0_0_0_1;
  output selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_0;
  output selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_1;
  output selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_2;
  output selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_0;
  output selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_1;
  output selector_MUX_21_PROXY_CTRLN_2_i0_0_0_0;
  output selector_MUX_65_reg_11_0_0_0;
  output selector_MUX_72_reg_18_0_0_0;
  output selector_MUX_72_reg_18_0_0_1;
  output selector_MUX_72_reg_18_0_1_0;
  output selector_MUX_73_reg_19_0_0_0;
  output selector_MUX_73_reg_19_0_0_1;
  output selector_MUX_78_reg_6_0_0_0;
  output fuselector_PROXY_CTRLN_0_i0_LOAD;
  output fuselector_PROXY_CTRLN_0_i0_STORE;
  output fuselector_PROXY_CTRLN_1_i0_LOAD;
  output fuselector_PROXY_CTRLN_1_i0_STORE;
  output fuselector_PROXY_CTRLN_2_i0_LOAD;
  output fuselector_PROXY_CTRLN_2_i0_STORE;
  output fuselector_PROXY_CTRLN_3_i0_LOAD;
  output fuselector_PROXY_CTRLN_3_i0_STORE;
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
  parameter [28:0] S_0 = 29'b00000000000000000000000000001,
    S_1 = 29'b00000000000000000000000000010,
    S_2 = 29'b00000000000000000000000000100,
    S_3 = 29'b00000000000000000000000001000,
    S_4 = 29'b00000000000000000000000010000,
    S_25 = 29'b00010000000000000000000000000,
    S_26 = 29'b00100000000000000000000000000,
    S_27 = 29'b01000000000000000000000000000,
    S_28 = 29'b10000000000000000000000000000,
    S_5 = 29'b00000000000000000000000100000,
    S_6 = 29'b00000000000000000000001000000,
    S_7 = 29'b00000000000000000000010000000,
    S_8 = 29'b00000000000000000000100000000,
    S_9 = 29'b00000000000000000001000000000,
    S_10 = 29'b00000000000000000010000000000,
    S_11 = 29'b00000000000000000100000000000,
    S_12 = 29'b00000000000000001000000000000,
    S_13 = 29'b00000000000000010000000000000,
    S_14 = 29'b00000000000000100000000000000,
    S_15 = 29'b00000000000001000000000000000,
    S_16 = 29'b00000000000010000000000000000,
    S_17 = 29'b00000000000100000000000000000,
    S_18 = 29'b00000000001000000000000000000,
    S_19 = 29'b00000000010000000000000000000,
    S_20 = 29'b00000000100000000000000000000,
    S_21 = 29'b00000001000000000000000000000,
    S_22 = 29'b00000010000000000000000000000,
    S_23 = 29'b00000100000000000000000000000,
    S_24 = 29'b00001000000000000000000000000;
  reg [28:0] _present_state, _next_state;
  reg done_port;
  reg fuselector_BMEMORY_CTRLN_66_i0_LOAD;
  reg fuselector_BMEMORY_CTRLN_66_i0_STORE;
  reg selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_0;
  reg selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_1;
  reg selector_MUX_14_PROXY_CTRLN_0_i0_1_0_0;
  reg selector_MUX_17_PROXY_CTRLN_1_i0_0_0_0;
  reg selector_MUX_17_PROXY_CTRLN_1_i0_0_0_1;
  reg selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_0;
  reg selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_1;
  reg selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_2;
  reg selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_0;
  reg selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_1;
  reg selector_MUX_21_PROXY_CTRLN_2_i0_0_0_0;
  reg selector_MUX_65_reg_11_0_0_0;
  reg selector_MUX_72_reg_18_0_0_0;
  reg selector_MUX_72_reg_18_0_0_1;
  reg selector_MUX_72_reg_18_0_1_0;
  reg selector_MUX_73_reg_19_0_0_0;
  reg selector_MUX_73_reg_19_0_0_1;
  reg selector_MUX_78_reg_6_0_0_0;
  reg fuselector_PROXY_CTRLN_0_i0_LOAD;
  reg fuselector_PROXY_CTRLN_0_i0_STORE;
  reg fuselector_PROXY_CTRLN_1_i0_LOAD;
  reg fuselector_PROXY_CTRLN_1_i0_STORE;
  reg fuselector_PROXY_CTRLN_2_i0_LOAD;
  reg fuselector_PROXY_CTRLN_2_i0_STORE;
  reg fuselector_PROXY_CTRLN_3_i0_LOAD;
  reg fuselector_PROXY_CTRLN_3_i0_STORE;
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
    fuselector_BMEMORY_CTRLN_66_i0_LOAD = 1'b0;
    fuselector_BMEMORY_CTRLN_66_i0_STORE = 1'b0;
    selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_0 = 1'b0;
    selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_1 = 1'b0;
    selector_MUX_14_PROXY_CTRLN_0_i0_1_0_0 = 1'b0;
    selector_MUX_17_PROXY_CTRLN_1_i0_0_0_0 = 1'b0;
    selector_MUX_17_PROXY_CTRLN_1_i0_0_0_1 = 1'b0;
    selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_0 = 1'b0;
    selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_1 = 1'b0;
    selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_2 = 1'b0;
    selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_0 = 1'b0;
    selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_1 = 1'b0;
    selector_MUX_21_PROXY_CTRLN_2_i0_0_0_0 = 1'b0;
    selector_MUX_65_reg_11_0_0_0 = 1'b0;
    selector_MUX_72_reg_18_0_0_0 = 1'b0;
    selector_MUX_72_reg_18_0_0_1 = 1'b0;
    selector_MUX_72_reg_18_0_1_0 = 1'b0;
    selector_MUX_73_reg_19_0_0_0 = 1'b0;
    selector_MUX_73_reg_19_0_0_1 = 1'b0;
    selector_MUX_78_reg_6_0_0_0 = 1'b0;
    fuselector_PROXY_CTRLN_0_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_0_i0_STORE = 1'b0;
    fuselector_PROXY_CTRLN_1_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_1_i0_STORE = 1'b0;
    fuselector_PROXY_CTRLN_2_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_2_i0_STORE = 1'b0;
    fuselector_PROXY_CTRLN_3_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_3_i0_STORE = 1'b0;
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
          fuselector_PROXY_CTRLN_0_i0_LOAD = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_0 = 1'bX;
          selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_1 = 1'bX;
          selector_MUX_14_PROXY_CTRLN_0_i0_1_0_0 = 1'bX;
          selector_MUX_17_PROXY_CTRLN_1_i0_0_0_0 = 1'bX;
          selector_MUX_17_PROXY_CTRLN_1_i0_0_0_1 = 1'bX;
          selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_0 = 1'bX;
          selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_1 = 1'bX;
          selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_2 = 1'bX;
          selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_0 = 1'bX;
          selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_1 = 1'bX;
          selector_MUX_21_PROXY_CTRLN_2_i0_0_0_0 = 1'bX;
          selector_MUX_65_reg_11_0_0_0 = 1'bX;
          selector_MUX_72_reg_18_0_0_0 = 1'bX;
          selector_MUX_72_reg_18_0_0_1 = 1'bX;
          selector_MUX_72_reg_18_0_1_0 = 1'bX;
          selector_MUX_73_reg_19_0_0_0 = 1'bX;
          selector_MUX_73_reg_19_0_0_1 = 1'bX;
          selector_MUX_78_reg_6_0_0_0 = 1'bX;
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
          wrenable_reg_4 = 1'b1;
          _next_state = S_2;
        end
      S_2 :
        begin
          fuselector_BMEMORY_CTRLN_66_i0_STORE = 1'b1;
          selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_0 = 1'b1;
          selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_0 = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          fuselector_PROXY_CTRLN_1_i0_LOAD = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          selector_MUX_17_PROXY_CTRLN_1_i0_0_0_0 = 1'b1;
          selector_MUX_73_reg_19_0_0_1 = 1'b1;
          fuselector_PROXY_CTRLN_1_i0_STORE = 1'b1;
          wrenable_reg_19 = 1'b1;
          _next_state = S_25;
        end
      S_25 :
        begin
          selector_MUX_14_PROXY_CTRLN_0_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_0_i0_LOAD = 1'b1;
          _next_state = S_26;
        end
      S_26 :
        begin
          selector_MUX_78_reg_6_0_0_0 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_6 = 1'b1;
          _next_state = S_27;
        end
      S_27 :
        begin
          wrenable_reg_6 = 1'b1;
          if (OUT_CONDITION_depth_first_searchF_28874_29715 == 1'b1)
            begin
              _next_state = S_5;
            end
          else
            begin
              _next_state = S_28;
              done_port = 1'b1;
              wrenable_reg_6 = 1'b0;
            end
        end
      S_28 :
        begin
          _next_state = S_0;
        end
      S_5 :
        begin
          fuselector_BMEMORY_CTRLN_66_i0_LOAD = 1'b1;
          selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_0 = 1'b1;
          selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_0 = 1'b1;
          _next_state = S_6;
        end
      S_6 :
        begin
          wrenable_reg_7 = 1'b1;
          wrenable_reg_8 = 1'b1;
          wrenable_reg_9 = 1'b1;
          _next_state = S_7;
        end
      S_7 :
        begin
          fuselector_PROXY_CTRLN_1_i0_STORE = 1'b1;
          fuselector_PROXY_CTRLN_3_i0_STORE = 1'b1;
          wrenable_reg_10 = 1'b1;
          _next_state = S_8;
        end
      S_8 :
        begin
          fuselector_BMEMORY_CTRLN_66_i0_LOAD = 1'b1;
          selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_2 = 1'b1;
          selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_1 = 1'b1;
          _next_state = S_9;
        end
      S_9 :
        begin
          if (OUT_CONDITION_depth_first_searchF_28874_29570 == 1'b1)
            begin
              _next_state = S_10;
            end
          else
            begin
              _next_state = S_27;
            end
        end
      S_10 :
        begin
          fuselector_BMEMORY_CTRLN_66_i0_STORE = 1'b1;
          selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_2 = 1'b1;
          selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_1 = 1'b1;
          _next_state = S_11;
        end
      S_11 :
        begin
          fuselector_PROXY_CTRLN_1_i0_LOAD = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          _next_state = S_12;
        end
      S_12 :
        begin
          selector_MUX_72_reg_18_0_0_1 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_18 = 1'b1;
          _next_state = S_13;
        end
      S_13 :
        begin
          wrenable_reg_12 = 1'b1;
          wrenable_reg_13 = 1'b1;
          wrenable_reg_14 = 1'b1;
          wrenable_reg_15 = 1'b1;
          wrenable_reg_16 = 1'b1;
          _next_state = S_14;
        end
      S_14 :
        begin
          fuselector_BMEMORY_CTRLN_66_i0_LOAD = 1'b1;
          selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_1 = 1'b1;
          _next_state = S_15;
        end
      S_15 :
        begin
          selector_MUX_72_reg_18_0_1_0 = 1'b1;
          selector_MUX_73_reg_19_0_0_0 = 1'b1;
          wrenable_reg_18 = 1'b1;
          wrenable_reg_19 = 1'b1;
          if (OUT_CONDITION_depth_first_searchF_28874_29683 == 1'b1)
            begin
              _next_state = S_16;
              selector_MUX_72_reg_18_0_1_0 = 1'b0;
              selector_MUX_73_reg_19_0_0_0 = 1'b0;
              wrenable_reg_18 = 1'b0;
              wrenable_reg_19 = 1'b0;
            end
          else
            begin
              _next_state = S_24;
            end
        end
      S_16 :
        begin
          fuselector_PROXY_CTRLN_3_i0_LOAD = 1'b1;
          _next_state = S_17;
        end
      S_17 :
        begin
          wrenable_reg_17 = 1'b1;
          _next_state = S_18;
        end
      S_18 :
        begin
          fuselector_BMEMORY_CTRLN_66_i0_LOAD = 1'b1;
          selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_1 = 1'b1;
          _next_state = S_19;
        end
      S_19 :
        begin
          selector_MUX_72_reg_18_0_1_0 = 1'b1;
          selector_MUX_73_reg_19_0_0_0 = 1'b1;
          wrenable_reg_18 = 1'b1;
          wrenable_reg_19 = 1'b1;
          if (OUT_CONDITION_depth_first_searchF_28874_29701 == 1'b1)
            begin
              _next_state = S_20;
              selector_MUX_72_reg_18_0_1_0 = 1'b0;
              selector_MUX_73_reg_19_0_0_0 = 1'b0;
              wrenable_reg_18 = 1'b0;
              wrenable_reg_19 = 1'b0;
            end
          else
            begin
              _next_state = S_24;
            end
        end
      S_20 :
        begin
          selector_MUX_17_PROXY_CTRLN_1_i0_0_0_1 = 1'b1;
          fuselector_PROXY_CTRLN_1_i0_STORE = 1'b1;
          _next_state = S_21;
        end
      S_21 :
        begin
          fuselector_BMEMORY_CTRLN_66_i0_STORE = 1'b1;
          selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_1 = 1'b1;
          _next_state = S_22;
        end
      S_22 :
        begin
          fuselector_PROXY_CTRLN_1_i0_LOAD = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_LOAD = 1'b1;
          _next_state = S_23;
        end
      S_23 :
        begin
          selector_MUX_14_PROXY_CTRLN_0_i0_1_0_0 = 1'b1;
          selector_MUX_72_reg_18_0_0_0 = 1'b1;
          selector_MUX_72_reg_18_0_1_0 = 1'b1;
          fuselector_PROXY_CTRLN_0_i0_STORE = 1'b1;
          wrenable_reg_18 = 1'b1;
          wrenable_reg_19 = 1'b1;
          _next_state = S_24;
        end
      S_24 :
        begin
          selector_MUX_21_PROXY_CTRLN_2_i0_0_0_0 = 1'b1;
          selector_MUX_65_reg_11_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_18 = 1'b1;
          if (OUT_CONDITION_depth_first_searchF_28874_29713 == 1'b1)
            begin
              _next_state = S_13;
            end
          else
            begin
              _next_state = S_25;
              selector_MUX_65_reg_11_0_0_0 = 1'b0;
              wrenable_reg_11 = 1'b0;
              wrenable_reg_18 = 1'b0;
            end
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_0 = 1'bX;
          selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_1 = 1'bX;
          selector_MUX_14_PROXY_CTRLN_0_i0_1_0_0 = 1'bX;
          selector_MUX_17_PROXY_CTRLN_1_i0_0_0_0 = 1'bX;
          selector_MUX_17_PROXY_CTRLN_1_i0_0_0_1 = 1'bX;
          selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_0 = 1'bX;
          selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_1 = 1'bX;
          selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_2 = 1'bX;
          selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_0 = 1'bX;
          selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_1 = 1'bX;
          selector_MUX_21_PROXY_CTRLN_2_i0_0_0_0 = 1'bX;
          selector_MUX_65_reg_11_0_0_0 = 1'bX;
          selector_MUX_72_reg_18_0_0_0 = 1'bX;
          selector_MUX_72_reg_18_0_0_1 = 1'bX;
          selector_MUX_72_reg_18_0_1_0 = 1'bX;
          selector_MUX_73_reg_19_0_0_0 = 1'bX;
          selector_MUX_73_reg_19_0_0_1 = 1'bX;
          selector_MUX_78_reg_6_0_0_0 = 1'bX;
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

// Top component for depth_first_searchF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module depth_first_searchF(clock, reset, start_port, done_port, a, array_S, M_Rdata_ram, M_DataRdy, proxy_out1_28859, proxy_out1_28861, proxy_out1_28862, proxy_out1_28863, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, proxy_in1_28859, proxy_in2_28859, proxy_in3_28859, proxy_sel_LOAD_28859, proxy_sel_STORE_28859, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_in1_28862, proxy_in2_28862, proxy_in3_28862, proxy_sel_LOAD_28862, proxy_sel_STORE_28862, proxy_in1_28863, proxy_in2_28863, proxy_in3_28863, proxy_sel_LOAD_28863, proxy_sel_STORE_28863, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size);
  parameter MEM_var_28859_28876=1024, MEM_var_28861_28876=2048, MEM_var_28862_28876=3072, MEM_var_28863_28876=4096;
  // IN
  input clock;
  input reset;
  input start_port;
  input [31:0] a;
  input [31:0] array_S;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] proxy_out1_28859;
  input [15:0] proxy_out1_28861;
  input [15:0] proxy_out1_28862;
  input [15:0] proxy_out1_28863;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [25:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  // OUT
  output done_port;
  output [15:0] proxy_in1_28859;
  output [25:0] proxy_in2_28859;
  output [7:0] proxy_in3_28859;
  output [1:0] proxy_sel_LOAD_28859;
  output [1:0] proxy_sel_STORE_28859;
  output [15:0] proxy_in1_28861;
  output [25:0] proxy_in2_28861;
  output [7:0] proxy_in3_28861;
  output [1:0] proxy_sel_LOAD_28861;
  output [1:0] proxy_sel_STORE_28861;
  output [15:0] proxy_in1_28862;
  output [25:0] proxy_in2_28862;
  output [7:0] proxy_in3_28862;
  output [1:0] proxy_sel_LOAD_28862;
  output [1:0] proxy_sel_STORE_28862;
  output [15:0] proxy_in1_28863;
  output [25:0] proxy_in2_28863;
  output [7:0] proxy_in3_28863;
  output [1:0] proxy_sel_LOAD_28863;
  output [1:0] proxy_sel_STORE_28863;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [25:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  // Component and signal declarations
  wire OUT_CONDITION_depth_first_searchF_28874_29570;
  wire OUT_CONDITION_depth_first_searchF_28874_29683;
  wire OUT_CONDITION_depth_first_searchF_28874_29701;
  wire OUT_CONDITION_depth_first_searchF_28874_29713;
  wire OUT_CONDITION_depth_first_searchF_28874_29715;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_BMEMORY_CTRLN_66_i0_LOAD;
  wire fuselector_BMEMORY_CTRLN_66_i0_STORE;
  wire fuselector_PROXY_CTRLN_0_i0_LOAD;
  wire fuselector_PROXY_CTRLN_0_i0_STORE;
  wire fuselector_PROXY_CTRLN_1_i0_LOAD;
  wire fuselector_PROXY_CTRLN_1_i0_STORE;
  wire fuselector_PROXY_CTRLN_2_i0_LOAD;
  wire fuselector_PROXY_CTRLN_2_i0_STORE;
  wire fuselector_PROXY_CTRLN_3_i0_LOAD;
  wire fuselector_PROXY_CTRLN_3_i0_STORE;
  wire selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_0;
  wire selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_1;
  wire selector_MUX_14_PROXY_CTRLN_0_i0_1_0_0;
  wire selector_MUX_17_PROXY_CTRLN_1_i0_0_0_0;
  wire selector_MUX_17_PROXY_CTRLN_1_i0_0_0_1;
  wire selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_0;
  wire selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_1;
  wire selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_2;
  wire selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_0;
  wire selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_1;
  wire selector_MUX_21_PROXY_CTRLN_2_i0_0_0_0;
  wire selector_MUX_65_reg_11_0_0_0;
  wire selector_MUX_72_reg_18_0_0_0;
  wire selector_MUX_72_reg_18_0_0_1;
  wire selector_MUX_72_reg_18_0_1_0;
  wire selector_MUX_73_reg_19_0_0_0;
  wire selector_MUX_73_reg_19_0_0_1;
  wire selector_MUX_78_reg_6_0_0_0;
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
  
  controller_depth_first_searchF Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_BMEMORY_CTRLN_66_i0_LOAD(fuselector_BMEMORY_CTRLN_66_i0_LOAD), .fuselector_BMEMORY_CTRLN_66_i0_STORE(fuselector_BMEMORY_CTRLN_66_i0_STORE), .selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_0(selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_0), .selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_1(selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_1), .selector_MUX_14_PROXY_CTRLN_0_i0_1_0_0(selector_MUX_14_PROXY_CTRLN_0_i0_1_0_0), .selector_MUX_17_PROXY_CTRLN_1_i0_0_0_0(selector_MUX_17_PROXY_CTRLN_1_i0_0_0_0), .selector_MUX_17_PROXY_CTRLN_1_i0_0_0_1(selector_MUX_17_PROXY_CTRLN_1_i0_0_0_1), .selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_0(selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_0), .selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_1(selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_1), .selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_2(selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_2), .selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_0(selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_0), .selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_1(selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_1), .selector_MUX_21_PROXY_CTRLN_2_i0_0_0_0(selector_MUX_21_PROXY_CTRLN_2_i0_0_0_0), .selector_MUX_65_reg_11_0_0_0(selector_MUX_65_reg_11_0_0_0), .selector_MUX_72_reg_18_0_0_0(selector_MUX_72_reg_18_0_0_0), .selector_MUX_72_reg_18_0_0_1(selector_MUX_72_reg_18_0_0_1), .selector_MUX_72_reg_18_0_1_0(selector_MUX_72_reg_18_0_1_0), .selector_MUX_73_reg_19_0_0_0(selector_MUX_73_reg_19_0_0_0), .selector_MUX_73_reg_19_0_0_1(selector_MUX_73_reg_19_0_0_1), .selector_MUX_78_reg_6_0_0_0(selector_MUX_78_reg_6_0_0_0), .fuselector_PROXY_CTRLN_0_i0_LOAD(fuselector_PROXY_CTRLN_0_i0_LOAD), .fuselector_PROXY_CTRLN_0_i0_STORE(fuselector_PROXY_CTRLN_0_i0_STORE), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .fuselector_PROXY_CTRLN_3_i0_LOAD(fuselector_PROXY_CTRLN_3_i0_LOAD), .fuselector_PROXY_CTRLN_3_i0_STORE(fuselector_PROXY_CTRLN_3_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_depth_first_searchF_28874_29570(OUT_CONDITION_depth_first_searchF_28874_29570), .OUT_CONDITION_depth_first_searchF_28874_29683(OUT_CONDITION_depth_first_searchF_28874_29683), .OUT_CONDITION_depth_first_searchF_28874_29701(OUT_CONDITION_depth_first_searchF_28874_29701), .OUT_CONDITION_depth_first_searchF_28874_29713(OUT_CONDITION_depth_first_searchF_28874_29713), .OUT_CONDITION_depth_first_searchF_28874_29715(OUT_CONDITION_depth_first_searchF_28874_29715), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_depth_first_searchF #(.MEM_var_28859_28876(MEM_var_28859_28876), .MEM_var_28861_28876(MEM_var_28861_28876), .MEM_var_28862_28876(MEM_var_28862_28876), .MEM_var_28863_28876(MEM_var_28863_28876)) Datapath_i (.proxy_in1_28859(proxy_in1_28859), .proxy_in2_28859(proxy_in2_28859), .proxy_in3_28859(proxy_in3_28859), .proxy_sel_LOAD_28859(proxy_sel_LOAD_28859), .proxy_sel_STORE_28859(proxy_sel_STORE_28859), .proxy_in1_28861(proxy_in1_28861), .proxy_in2_28861(proxy_in2_28861), .proxy_in3_28861(proxy_in3_28861), .proxy_sel_LOAD_28861(proxy_sel_LOAD_28861), .proxy_sel_STORE_28861(proxy_sel_STORE_28861), .proxy_in1_28862(proxy_in1_28862), .proxy_in2_28862(proxy_in2_28862), .proxy_in3_28862(proxy_in3_28862), .proxy_sel_LOAD_28862(proxy_sel_LOAD_28862), .proxy_sel_STORE_28862(proxy_sel_STORE_28862), .proxy_in1_28863(proxy_in1_28863), .proxy_in2_28863(proxy_in2_28863), .proxy_in3_28863(proxy_in3_28863), .proxy_sel_LOAD_28863(proxy_sel_LOAD_28863), .proxy_sel_STORE_28863(proxy_sel_STORE_28863), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_CONDITION_depth_first_searchF_28874_29570(OUT_CONDITION_depth_first_searchF_28874_29570), .OUT_CONDITION_depth_first_searchF_28874_29683(OUT_CONDITION_depth_first_searchF_28874_29683), .OUT_CONDITION_depth_first_searchF_28874_29701(OUT_CONDITION_depth_first_searchF_28874_29701), .OUT_CONDITION_depth_first_searchF_28874_29713(OUT_CONDITION_depth_first_searchF_28874_29713), .OUT_CONDITION_depth_first_searchF_28874_29715(OUT_CONDITION_depth_first_searchF_28874_29715), .clock(clock), .reset(reset), .in_port_a(a), .in_port_array(array_S), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .proxy_out1_28859(proxy_out1_28859), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28862(proxy_out1_28862), .proxy_out1_28863(proxy_out1_28863), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .fuselector_BMEMORY_CTRLN_66_i0_LOAD(fuselector_BMEMORY_CTRLN_66_i0_LOAD), .fuselector_BMEMORY_CTRLN_66_i0_STORE(fuselector_BMEMORY_CTRLN_66_i0_STORE), .selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_0(selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_0), .selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_1(selector_MUX_0_BMEMORY_CTRLN_66_i0_0_0_1), .selector_MUX_14_PROXY_CTRLN_0_i0_1_0_0(selector_MUX_14_PROXY_CTRLN_0_i0_1_0_0), .selector_MUX_17_PROXY_CTRLN_1_i0_0_0_0(selector_MUX_17_PROXY_CTRLN_1_i0_0_0_0), .selector_MUX_17_PROXY_CTRLN_1_i0_0_0_1(selector_MUX_17_PROXY_CTRLN_1_i0_0_0_1), .selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_0(selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_0), .selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_1(selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_1), .selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_2(selector_MUX_1_BMEMORY_CTRLN_66_i0_1_0_2), .selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_0(selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_0), .selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_1(selector_MUX_1_BMEMORY_CTRLN_66_i0_1_1_1), .selector_MUX_21_PROXY_CTRLN_2_i0_0_0_0(selector_MUX_21_PROXY_CTRLN_2_i0_0_0_0), .selector_MUX_65_reg_11_0_0_0(selector_MUX_65_reg_11_0_0_0), .selector_MUX_72_reg_18_0_0_0(selector_MUX_72_reg_18_0_0_0), .selector_MUX_72_reg_18_0_0_1(selector_MUX_72_reg_18_0_0_1), .selector_MUX_72_reg_18_0_1_0(selector_MUX_72_reg_18_0_1_0), .selector_MUX_73_reg_19_0_0_0(selector_MUX_73_reg_19_0_0_0), .selector_MUX_73_reg_19_0_0_1(selector_MUX_73_reg_19_0_0_1), .selector_MUX_78_reg_6_0_0_0(selector_MUX_78_reg_6_0_0_0), .fuselector_PROXY_CTRLN_0_i0_LOAD(fuselector_PROXY_CTRLN_0_i0_LOAD), .fuselector_PROXY_CTRLN_0_i0_STORE(fuselector_PROXY_CTRLN_0_i0_STORE), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .fuselector_PROXY_CTRLN_3_i0_LOAD(fuselector_PROXY_CTRLN_3_i0_LOAD), .fuselector_PROXY_CTRLN_3_i0_STORE(fuselector_PROXY_CTRLN_3_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Datapath RTL description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_main(clock, reset, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, selector_IN_UNBOUNDED_main_28876_29746, selector_IN_UNBOUNDED_main_28876_29747, selector_IN_UNBOUNDED_main_28876_29748, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2, OUT_UNBOUNDED_main_28876_29746, OUT_UNBOUNDED_main_28876_29747, OUT_UNBOUNDED_main_28876_29748);
  parameter MEM_var_28859_28876=1024, MEM_var_28861_28876=2048, MEM_var_28862_28876=3072, MEM_var_28863_28876=4096, MEM_var_28864_28876=5120, MEM_var_28866_28876=6144;
  // IN
  input clock;
  input reset;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [25:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [25:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  input selector_IN_UNBOUNDED_main_28876_29746;
  input selector_IN_UNBOUNDED_main_28876_29747;
  input selector_IN_UNBOUNDED_main_28876_29748;
  input wrenable_reg_0;
  input wrenable_reg_1;
  input wrenable_reg_2;
  // OUT
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [25:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  output OUT_UNBOUNDED_main_28876_29746;
  output OUT_UNBOUNDED_main_28876_29747;
  output OUT_UNBOUNDED_main_28876_29748;
  // Component and signal declarations
  wire [7:0] null_out_signal_array_28859_0_out1_0;
  wire [7:0] null_out_signal_array_28859_0_out1_1;
  wire [7:0] null_out_signal_array_28861_0_out1_0;
  wire [7:0] null_out_signal_array_28861_0_out1_1;
  wire [7:0] null_out_signal_array_28862_0_out1_0;
  wire [7:0] null_out_signal_array_28862_0_out1_1;
  wire [7:0] null_out_signal_array_28863_0_out1_0;
  wire [7:0] null_out_signal_array_28863_0_out1_1;
  wire [7:0] null_out_signal_array_28864_0_out1_0;
  wire [7:0] null_out_signal_array_28864_0_out1_1;
  wire [7:0] null_out_signal_array_28866_0_out1_0;
  wire [7:0] null_out_signal_array_28866_0_out1_1;
  wire [7:0] null_out_signal_array_28866_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_28866_0_proxy_out1_1;
  wire [12:0] out_UUdata_converter_FU_10_i0_fu_main_28876_30463;
  wire out_UUdata_converter_FU_11_i0_fu_main_28876_30466;
  wire [31:0] out_UUdata_converter_FU_13_i0_fu_main_28876_30472;
  wire [31:0] out_addr_expr_FU_12_i0_fu_main_28876_30426;
  wire [12:0] out_addr_expr_FU_8_i0_fu_main_28876_30417;
  wire out_addr_expr_FU_9_i0_fu_main_28876_30420;
  wire [12:0] out_const_0;
  wire [12:0] out_const_1;
  wire [31:0] out_conv_out_const_0_13_32;
  wire [31:0] out_conv_out_const_1_13_32;
  wire [31:0] out_conv_out_reg_0_reg_0_13_32;
  wire [31:0] out_conv_out_reg_1_reg_1_1_32;
  wire [12:0] out_reg_0_reg_0;
  wire out_reg_1_reg_1;
  wire [31:0] out_reg_2_reg_2;
  wire [15:0] proxy_out1_28859;
  wire [15:0] proxy_out1_28861;
  wire [15:0] proxy_out1_28862;
  wire [15:0] proxy_out1_28863;
  wire [15:0] proxy_out1_28864;
  wire s_done_fu_main_28876_29746;
  wire s_done_fu_main_28876_29747;
  wire s_done_fu_main_28876_29748;
  wire [15:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [15:0] sig_in_bus_mergerMout_Wdata_ram0_1;
  wire [15:0] sig_in_bus_mergerMout_Wdata_ram0_2;
  wire [25:0] sig_in_bus_mergerMout_addr_ram1_0;
  wire [25:0] sig_in_bus_mergerMout_addr_ram1_1;
  wire [25:0] sig_in_bus_mergerMout_addr_ram1_2;
  wire [7:0] sig_in_bus_mergerMout_data_ram_size2_0;
  wire [7:0] sig_in_bus_mergerMout_data_ram_size2_1;
  wire [7:0] sig_in_bus_mergerMout_data_ram_size2_2;
  wire [1:0] sig_in_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_bus_mergerMout_oe_ram3_1;
  wire [1:0] sig_in_bus_mergerMout_oe_ram3_2;
  wire [1:0] sig_in_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_bus_mergerMout_we_ram4_1;
  wire [1:0] sig_in_bus_mergerMout_we_ram4_2;
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
  wire [15:0] sig_in_bus_mergerproxy_in112_0;
  wire [15:0] sig_in_bus_mergerproxy_in112_1;
  wire [15:0] sig_in_bus_mergerproxy_in112_2;
  wire [15:0] sig_in_bus_mergerproxy_in117_0;
  wire [15:0] sig_in_bus_mergerproxy_in117_1;
  wire [15:0] sig_in_bus_mergerproxy_in117_2;
  wire [15:0] sig_in_bus_mergerproxy_in122_0;
  wire [15:0] sig_in_bus_mergerproxy_in122_1;
  wire [15:0] sig_in_bus_mergerproxy_in127_0;
  wire [15:0] sig_in_bus_mergerproxy_in17_0;
  wire [15:0] sig_in_bus_mergerproxy_in17_1;
  wire [15:0] sig_in_bus_mergerproxy_in17_2;
  wire [25:0] sig_in_bus_mergerproxy_in213_0;
  wire [25:0] sig_in_bus_mergerproxy_in213_1;
  wire [25:0] sig_in_bus_mergerproxy_in213_2;
  wire [25:0] sig_in_bus_mergerproxy_in218_0;
  wire [25:0] sig_in_bus_mergerproxy_in218_1;
  wire [25:0] sig_in_bus_mergerproxy_in218_2;
  wire [25:0] sig_in_bus_mergerproxy_in223_0;
  wire [25:0] sig_in_bus_mergerproxy_in223_1;
  wire [25:0] sig_in_bus_mergerproxy_in228_0;
  wire [25:0] sig_in_bus_mergerproxy_in28_0;
  wire [25:0] sig_in_bus_mergerproxy_in28_1;
  wire [25:0] sig_in_bus_mergerproxy_in28_2;
  wire [7:0] sig_in_bus_mergerproxy_in314_0;
  wire [7:0] sig_in_bus_mergerproxy_in314_1;
  wire [7:0] sig_in_bus_mergerproxy_in314_2;
  wire [7:0] sig_in_bus_mergerproxy_in319_0;
  wire [7:0] sig_in_bus_mergerproxy_in319_1;
  wire [7:0] sig_in_bus_mergerproxy_in319_2;
  wire [7:0] sig_in_bus_mergerproxy_in324_0;
  wire [7:0] sig_in_bus_mergerproxy_in324_1;
  wire [7:0] sig_in_bus_mergerproxy_in329_0;
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
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD20_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD20_2;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD25_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD25_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD30_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE11_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE11_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE11_2;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE16_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE16_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE16_2;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE21_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE21_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE21_2;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE26_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE26_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE31_0;
  wire [15:0] sig_in_vector_bus_mergerMout_Wdata_ram0_0;
  wire [15:0] sig_in_vector_bus_mergerMout_Wdata_ram0_1;
  wire [15:0] sig_in_vector_bus_mergerMout_Wdata_ram0_2;
  wire [25:0] sig_in_vector_bus_mergerMout_addr_ram1_0;
  wire [25:0] sig_in_vector_bus_mergerMout_addr_ram1_1;
  wire [25:0] sig_in_vector_bus_mergerMout_addr_ram1_2;
  wire [7:0] sig_in_vector_bus_mergerMout_data_ram_size2_0;
  wire [7:0] sig_in_vector_bus_mergerMout_data_ram_size2_1;
  wire [7:0] sig_in_vector_bus_mergerMout_data_ram_size2_2;
  wire [1:0] sig_in_vector_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_vector_bus_mergerMout_oe_ram3_1;
  wire [1:0] sig_in_vector_bus_mergerMout_oe_ram3_2;
  wire [1:0] sig_in_vector_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_vector_bus_mergerMout_we_ram4_1;
  wire [1:0] sig_in_vector_bus_mergerMout_we_ram4_2;
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
  wire [15:0] sig_in_vector_bus_mergerproxy_in112_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in112_1;
  wire [15:0] sig_in_vector_bus_mergerproxy_in112_2;
  wire [15:0] sig_in_vector_bus_mergerproxy_in117_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in117_1;
  wire [15:0] sig_in_vector_bus_mergerproxy_in117_2;
  wire [15:0] sig_in_vector_bus_mergerproxy_in122_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in122_1;
  wire [15:0] sig_in_vector_bus_mergerproxy_in127_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in17_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in17_1;
  wire [15:0] sig_in_vector_bus_mergerproxy_in17_2;
  wire [25:0] sig_in_vector_bus_mergerproxy_in213_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in213_1;
  wire [25:0] sig_in_vector_bus_mergerproxy_in213_2;
  wire [25:0] sig_in_vector_bus_mergerproxy_in218_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in218_1;
  wire [25:0] sig_in_vector_bus_mergerproxy_in218_2;
  wire [25:0] sig_in_vector_bus_mergerproxy_in223_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in223_1;
  wire [25:0] sig_in_vector_bus_mergerproxy_in228_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in28_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in28_1;
  wire [25:0] sig_in_vector_bus_mergerproxy_in28_2;
  wire [7:0] sig_in_vector_bus_mergerproxy_in314_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in314_1;
  wire [7:0] sig_in_vector_bus_mergerproxy_in314_2;
  wire [7:0] sig_in_vector_bus_mergerproxy_in319_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in319_1;
  wire [7:0] sig_in_vector_bus_mergerproxy_in319_2;
  wire [7:0] sig_in_vector_bus_mergerproxy_in324_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in324_1;
  wire [7:0] sig_in_vector_bus_mergerproxy_in329_0;
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
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD20_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD20_2;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD25_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD25_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD30_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE11_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE11_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE11_2;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE16_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE16_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE16_2;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE21_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE21_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE21_2;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE26_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE26_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE31_0;
  wire [15:0] sig_out_bus_mergerMout_Wdata_ram0_;
  wire [25:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [7:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire [1:0] sig_out_bus_mergerMout_oe_ram3_;
  wire [1:0] sig_out_bus_mergerMout_we_ram4_;
  wire [1:0] sig_out_bus_mergerSout_DataRdy5_;
  wire [15:0] sig_out_bus_mergerSout_Rdata_ram6_;
  wire [15:0] sig_out_bus_mergerproxy_in112_;
  wire [15:0] sig_out_bus_mergerproxy_in117_;
  wire [15:0] sig_out_bus_mergerproxy_in122_;
  wire [15:0] sig_out_bus_mergerproxy_in127_;
  wire [15:0] sig_out_bus_mergerproxy_in17_;
  wire [25:0] sig_out_bus_mergerproxy_in213_;
  wire [25:0] sig_out_bus_mergerproxy_in218_;
  wire [25:0] sig_out_bus_mergerproxy_in223_;
  wire [25:0] sig_out_bus_mergerproxy_in228_;
  wire [25:0] sig_out_bus_mergerproxy_in28_;
  wire [7:0] sig_out_bus_mergerproxy_in314_;
  wire [7:0] sig_out_bus_mergerproxy_in319_;
  wire [7:0] sig_out_bus_mergerproxy_in324_;
  wire [7:0] sig_out_bus_mergerproxy_in329_;
  wire [7:0] sig_out_bus_mergerproxy_in39_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD10_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD15_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD20_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD25_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD30_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE11_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE16_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE21_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE26_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE31_;
  wire [15:0] sig_out_vector_bus_mergerproxy_in112_;
  wire [15:0] sig_out_vector_bus_mergerproxy_in117_;
  wire [15:0] sig_out_vector_bus_mergerproxy_in122_;
  wire [15:0] sig_out_vector_bus_mergerproxy_in127_;
  wire [15:0] sig_out_vector_bus_mergerproxy_in17_;
  wire [25:0] sig_out_vector_bus_mergerproxy_in213_;
  wire [25:0] sig_out_vector_bus_mergerproxy_in218_;
  wire [25:0] sig_out_vector_bus_mergerproxy_in223_;
  wire [25:0] sig_out_vector_bus_mergerproxy_in228_;
  wire [25:0] sig_out_vector_bus_mergerproxy_in28_;
  wire [7:0] sig_out_vector_bus_mergerproxy_in314_;
  wire [7:0] sig_out_vector_bus_mergerproxy_in319_;
  wire [7:0] sig_out_vector_bus_mergerproxy_in324_;
  wire [7:0] sig_out_vector_bus_mergerproxy_in329_;
  wire [7:0] sig_out_vector_bus_mergerproxy_in39_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_LOAD10_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_LOAD15_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_LOAD20_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_LOAD25_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_LOAD30_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_STORE11_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_STORE16_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_STORE21_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_STORE26_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_STORE31_;
  
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(13), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28859.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28859_28876), .address_space_rangesize(1024), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28859_0 (.out1({null_out_signal_array_28859_0_out1_1, null_out_signal_array_28859_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_0), .proxy_out1(proxy_out1_28859), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({13'b0000000000000, 13'b0000000000000}), .in3({4'b0000, 4'b0000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in17_), .proxy_in2(sig_out_vector_bus_mergerproxy_in28_), .proxy_in3(sig_out_vector_bus_mergerproxy_in39_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD10_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE11_));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(13), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28861.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28861_28876), .address_space_rangesize(1024), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28861_0 (.out1({null_out_signal_array_28861_0_out1_1, null_out_signal_array_28861_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_1), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_1), .proxy_out1(proxy_out1_28861), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({13'b0000000000000, 13'b0000000000000}), .in3({4'b0000, 4'b0000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in112_), .proxy_in2(sig_out_vector_bus_mergerproxy_in213_), .proxy_in3(sig_out_vector_bus_mergerproxy_in314_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD15_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE16_));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(13), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28862.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28862_28876), .address_space_rangesize(1024), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28862_0 (.out1({null_out_signal_array_28862_0_out1_1, null_out_signal_array_28862_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_2), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_2), .proxy_out1(proxy_out1_28862), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({13'b0000000000000, 13'b0000000000000}), .in3({4'b0000, 4'b0000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in117_), .proxy_in2(sig_out_vector_bus_mergerproxy_in218_), .proxy_in3(sig_out_vector_bus_mergerproxy_in319_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD20_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE21_));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(13), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28863.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28863_28876), .address_space_rangesize(1024), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28863_0 (.out1({null_out_signal_array_28863_0_out1_1, null_out_signal_array_28863_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_3), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_3), .proxy_out1(proxy_out1_28863), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({13'b0000000000000, 13'b0000000000000}), .in3({4'b0000, 4'b0000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in122_), .proxy_in2(sig_out_vector_bus_mergerproxy_in223_), .proxy_in3(sig_out_vector_bus_mergerproxy_in324_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD25_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE26_));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(13), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28864.mem"), .n_elements(23), .data_size(8), .address_space_begin(MEM_var_28864_28876), .address_space_rangesize(1024), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28864_0 (.out1({null_out_signal_array_28864_0_out1_1, null_out_signal_array_28864_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_4), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_4), .proxy_out1(proxy_out1_28864), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({13'b0000000000000, 13'b0000000000000}), .in3({4'b0000, 4'b0000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in127_), .proxy_in2(sig_out_vector_bus_mergerproxy_in228_), .proxy_in3(sig_out_vector_bus_mergerproxy_in329_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD30_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE31_));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(13), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28866.mem"), .n_elements(529), .data_size(8), .address_space_begin(MEM_var_28866_28876), .address_space_rangesize(1024), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28866_0 (.out1({null_out_signal_array_28866_0_out1_1, null_out_signal_array_28866_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_5), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_5), .proxy_out1({null_out_signal_array_28866_0_proxy_out1_1, null_out_signal_array_28866_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({13'b0000000000000, 13'b0000000000000}), .in3({4'b0000, 4'b0000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({13'b0000000000000, 13'b0000000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(3), .BITSIZE_out1(16)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_2, sig_in_bus_mergerMout_Wdata_ram0_1, sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(3), .BITSIZE_out1(26)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_2, sig_in_bus_mergerMout_addr_ram1_1, sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(3), .BITSIZE_out1(8)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_2, sig_in_bus_mergerMout_data_ram_size2_1, sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(3), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_2, sig_in_bus_mergerMout_oe_ram3_1, sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(3), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_2, sig_in_bus_mergerMout_we_ram4_1, sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(6), .BITSIZE_out1(2)) bus_mergerSout_DataRdy5_ (.out1(sig_out_bus_mergerSout_DataRdy5_), .in1({sig_in_bus_mergerSout_DataRdy5_5, sig_in_bus_mergerSout_DataRdy5_4, sig_in_bus_mergerSout_DataRdy5_3, sig_in_bus_mergerSout_DataRdy5_2, sig_in_bus_mergerSout_DataRdy5_1, sig_in_bus_mergerSout_DataRdy5_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(6), .BITSIZE_out1(16)) bus_mergerSout_Rdata_ram6_ (.out1(sig_out_bus_mergerSout_Rdata_ram6_), .in1({sig_in_bus_mergerSout_Rdata_ram6_5, sig_in_bus_mergerSout_Rdata_ram6_4, sig_in_bus_mergerSout_Rdata_ram6_3, sig_in_bus_mergerSout_Rdata_ram6_2, sig_in_bus_mergerSout_Rdata_ram6_1, sig_in_bus_mergerSout_Rdata_ram6_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(3), .BITSIZE_out1(16)) bus_mergerproxy_in112_ (.out1(sig_out_bus_mergerproxy_in112_), .in1({sig_in_bus_mergerproxy_in112_2, sig_in_bus_mergerproxy_in112_1, sig_in_bus_mergerproxy_in112_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(3), .BITSIZE_out1(16)) bus_mergerproxy_in117_ (.out1(sig_out_bus_mergerproxy_in117_), .in1({sig_in_bus_mergerproxy_in117_2, sig_in_bus_mergerproxy_in117_1, sig_in_bus_mergerproxy_in117_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(2), .BITSIZE_out1(16)) bus_mergerproxy_in122_ (.out1(sig_out_bus_mergerproxy_in122_), .in1({sig_in_bus_mergerproxy_in122_1, sig_in_bus_mergerproxy_in122_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in127_ (.out1(sig_out_bus_mergerproxy_in127_), .in1({sig_in_bus_mergerproxy_in127_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(3), .BITSIZE_out1(16)) bus_mergerproxy_in17_ (.out1(sig_out_bus_mergerproxy_in17_), .in1({sig_in_bus_mergerproxy_in17_2, sig_in_bus_mergerproxy_in17_1, sig_in_bus_mergerproxy_in17_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(3), .BITSIZE_out1(26)) bus_mergerproxy_in213_ (.out1(sig_out_bus_mergerproxy_in213_), .in1({sig_in_bus_mergerproxy_in213_2, sig_in_bus_mergerproxy_in213_1, sig_in_bus_mergerproxy_in213_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(3), .BITSIZE_out1(26)) bus_mergerproxy_in218_ (.out1(sig_out_bus_mergerproxy_in218_), .in1({sig_in_bus_mergerproxy_in218_2, sig_in_bus_mergerproxy_in218_1, sig_in_bus_mergerproxy_in218_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(2), .BITSIZE_out1(26)) bus_mergerproxy_in223_ (.out1(sig_out_bus_mergerproxy_in223_), .in1({sig_in_bus_mergerproxy_in223_1, sig_in_bus_mergerproxy_in223_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in228_ (.out1(sig_out_bus_mergerproxy_in228_), .in1({sig_in_bus_mergerproxy_in228_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(3), .BITSIZE_out1(26)) bus_mergerproxy_in28_ (.out1(sig_out_bus_mergerproxy_in28_), .in1({sig_in_bus_mergerproxy_in28_2, sig_in_bus_mergerproxy_in28_1, sig_in_bus_mergerproxy_in28_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(3), .BITSIZE_out1(8)) bus_mergerproxy_in314_ (.out1(sig_out_bus_mergerproxy_in314_), .in1({sig_in_bus_mergerproxy_in314_2, sig_in_bus_mergerproxy_in314_1, sig_in_bus_mergerproxy_in314_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(3), .BITSIZE_out1(8)) bus_mergerproxy_in319_ (.out1(sig_out_bus_mergerproxy_in319_), .in1({sig_in_bus_mergerproxy_in319_2, sig_in_bus_mergerproxy_in319_1, sig_in_bus_mergerproxy_in319_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(8)) bus_mergerproxy_in324_ (.out1(sig_out_bus_mergerproxy_in324_), .in1({sig_in_bus_mergerproxy_in324_1, sig_in_bus_mergerproxy_in324_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in329_ (.out1(sig_out_bus_mergerproxy_in329_), .in1({sig_in_bus_mergerproxy_in329_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(3), .BITSIZE_out1(8)) bus_mergerproxy_in39_ (.out1(sig_out_bus_mergerproxy_in39_), .in1({sig_in_bus_mergerproxy_in39_2, sig_in_bus_mergerproxy_in39_1, sig_in_bus_mergerproxy_in39_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(3), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD10_ (.out1(sig_out_bus_mergerproxy_sel_LOAD10_), .in1({sig_in_bus_mergerproxy_sel_LOAD10_2, sig_in_bus_mergerproxy_sel_LOAD10_1, sig_in_bus_mergerproxy_sel_LOAD10_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(3), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD15_ (.out1(sig_out_bus_mergerproxy_sel_LOAD15_), .in1({sig_in_bus_mergerproxy_sel_LOAD15_2, sig_in_bus_mergerproxy_sel_LOAD15_1, sig_in_bus_mergerproxy_sel_LOAD15_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(3), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD20_ (.out1(sig_out_bus_mergerproxy_sel_LOAD20_), .in1({sig_in_bus_mergerproxy_sel_LOAD20_2, sig_in_bus_mergerproxy_sel_LOAD20_1, sig_in_bus_mergerproxy_sel_LOAD20_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(2), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD25_ (.out1(sig_out_bus_mergerproxy_sel_LOAD25_), .in1({sig_in_bus_mergerproxy_sel_LOAD25_1, sig_in_bus_mergerproxy_sel_LOAD25_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD30_ (.out1(sig_out_bus_mergerproxy_sel_LOAD30_), .in1({sig_in_bus_mergerproxy_sel_LOAD30_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(3), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE11_ (.out1(sig_out_bus_mergerproxy_sel_STORE11_), .in1({sig_in_bus_mergerproxy_sel_STORE11_2, sig_in_bus_mergerproxy_sel_STORE11_1, sig_in_bus_mergerproxy_sel_STORE11_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(3), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE16_ (.out1(sig_out_bus_mergerproxy_sel_STORE16_), .in1({sig_in_bus_mergerproxy_sel_STORE16_2, sig_in_bus_mergerproxy_sel_STORE16_1, sig_in_bus_mergerproxy_sel_STORE16_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(3), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE21_ (.out1(sig_out_bus_mergerproxy_sel_STORE21_), .in1({sig_in_bus_mergerproxy_sel_STORE21_2, sig_in_bus_mergerproxy_sel_STORE21_1, sig_in_bus_mergerproxy_sel_STORE21_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(2), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE26_ (.out1(sig_out_bus_mergerproxy_sel_STORE26_), .in1({sig_in_bus_mergerproxy_sel_STORE26_1, sig_in_bus_mergerproxy_sel_STORE26_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE31_ (.out1(sig_out_bus_mergerproxy_sel_STORE31_), .in1({sig_in_bus_mergerproxy_sel_STORE31_0}));
  constant_value #(.BITSIZE_out1(13), .value(MEM_var_28864_28876)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(13), .value(MEM_var_28866_28876)) const_1 (.out1(out_const_1));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_const_0_13_32 (.out1(out_conv_out_const_0_13_32), .in1(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_const_1_13_32 (.out1(out_conv_out_const_1_13_32), .in1(out_const_1));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_reg_0_reg_0_13_32 (.out1(out_conv_out_reg_0_reg_0_13_32), .in1(out_reg_0_reg_0));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(32)) conv_out_reg_1_reg_1_1_32 (.out1(out_conv_out_reg_1_reg_1_1_32), .in1(out_reg_1_reg_1));
  bfsdfsF #(.MEM_var_28859_28876(MEM_var_28859_28876), .MEM_var_28861_28876(MEM_var_28861_28876), .MEM_var_28862_28876(MEM_var_28862_28876), .MEM_var_28863_28876(MEM_var_28863_28876), .MEM_var_28864_28876(MEM_var_28864_28876)) fu_main_28876_29746 (.done_port(s_done_fu_main_28876_29746), .proxy_in1_28859(sig_in_vector_bus_mergerproxy_in17_0), .proxy_in2_28859(sig_in_vector_bus_mergerproxy_in28_0), .proxy_in3_28859(sig_in_vector_bus_mergerproxy_in39_0), .proxy_sel_LOAD_28859(sig_in_vector_bus_mergerproxy_sel_LOAD10_0), .proxy_sel_STORE_28859(sig_in_vector_bus_mergerproxy_sel_STORE11_0), .proxy_in1_28861(sig_in_vector_bus_mergerproxy_in112_0), .proxy_in2_28861(sig_in_vector_bus_mergerproxy_in213_0), .proxy_in3_28861(sig_in_vector_bus_mergerproxy_in314_0), .proxy_sel_LOAD_28861(sig_in_vector_bus_mergerproxy_sel_LOAD15_0), .proxy_sel_STORE_28861(sig_in_vector_bus_mergerproxy_sel_STORE16_0), .proxy_in1_28862(sig_in_vector_bus_mergerproxy_in117_0), .proxy_in2_28862(sig_in_vector_bus_mergerproxy_in218_0), .proxy_in3_28862(sig_in_vector_bus_mergerproxy_in319_0), .proxy_sel_LOAD_28862(sig_in_vector_bus_mergerproxy_sel_LOAD20_0), .proxy_sel_STORE_28862(sig_in_vector_bus_mergerproxy_sel_STORE21_0), .proxy_in1_28863(sig_in_vector_bus_mergerproxy_in122_0), .proxy_in2_28863(sig_in_vector_bus_mergerproxy_in223_0), .proxy_in3_28863(sig_in_vector_bus_mergerproxy_in324_0), .proxy_sel_LOAD_28863(sig_in_vector_bus_mergerproxy_sel_LOAD25_0), .proxy_sel_STORE_28863(sig_in_vector_bus_mergerproxy_sel_STORE26_0), .proxy_in1_28864(sig_in_vector_bus_mergerproxy_in127_0), .proxy_in2_28864(sig_in_vector_bus_mergerproxy_in228_0), .proxy_in3_28864(sig_in_vector_bus_mergerproxy_in329_0), .proxy_sel_LOAD_28864(sig_in_vector_bus_mergerproxy_sel_LOAD30_0), .proxy_sel_STORE_28864(sig_in_vector_bus_mergerproxy_sel_STORE31_0), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28876_29746), .a(out_conv_out_reg_0_reg_0_13_32), .array_S(out_conv_out_reg_1_reg_1_1_32), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .proxy_out1_28859(proxy_out1_28859), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28862(proxy_out1_28862), .proxy_out1_28863(proxy_out1_28863), .proxy_out1_28864(proxy_out1_28864), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size));
  clean_inputF #(.MEM_var_28859_28876(MEM_var_28859_28876), .MEM_var_28861_28876(MEM_var_28861_28876), .MEM_var_28862_28876(MEM_var_28862_28876)) fu_main_28876_29747 (.done_port(s_done_fu_main_28876_29747), .proxy_in1_28859(sig_in_vector_bus_mergerproxy_in17_1), .proxy_in2_28859(sig_in_vector_bus_mergerproxy_in28_1), .proxy_in3_28859(sig_in_vector_bus_mergerproxy_in39_1), .proxy_sel_LOAD_28859(sig_in_vector_bus_mergerproxy_sel_LOAD10_1), .proxy_sel_STORE_28859(sig_in_vector_bus_mergerproxy_sel_STORE11_1), .proxy_in1_28861(sig_in_vector_bus_mergerproxy_in112_1), .proxy_in2_28861(sig_in_vector_bus_mergerproxy_in213_1), .proxy_in3_28861(sig_in_vector_bus_mergerproxy_in314_1), .proxy_sel_LOAD_28861(sig_in_vector_bus_mergerproxy_sel_LOAD15_1), .proxy_sel_STORE_28861(sig_in_vector_bus_mergerproxy_sel_STORE16_1), .proxy_in1_28862(sig_in_vector_bus_mergerproxy_in117_1), .proxy_in2_28862(sig_in_vector_bus_mergerproxy_in218_1), .proxy_in3_28862(sig_in_vector_bus_mergerproxy_in319_1), .proxy_sel_LOAD_28862(sig_in_vector_bus_mergerproxy_sel_LOAD20_1), .proxy_sel_STORE_28862(sig_in_vector_bus_mergerproxy_sel_STORE21_1), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_1), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_1), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_1), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_1), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_1), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28876_29747), .a(out_conv_out_reg_0_reg_0_13_32), .array_S(out_reg_2_reg_2), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .proxy_out1_28859(proxy_out1_28859), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28862(proxy_out1_28862), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size));
  depth_first_searchF #(.MEM_var_28859_28876(MEM_var_28859_28876), .MEM_var_28861_28876(MEM_var_28861_28876), .MEM_var_28862_28876(MEM_var_28862_28876), .MEM_var_28863_28876(MEM_var_28863_28876)) fu_main_28876_29748 (.done_port(s_done_fu_main_28876_29748), .proxy_in1_28859(sig_in_vector_bus_mergerproxy_in17_2), .proxy_in2_28859(sig_in_vector_bus_mergerproxy_in28_2), .proxy_in3_28859(sig_in_vector_bus_mergerproxy_in39_2), .proxy_sel_LOAD_28859(sig_in_vector_bus_mergerproxy_sel_LOAD10_2), .proxy_sel_STORE_28859(sig_in_vector_bus_mergerproxy_sel_STORE11_2), .proxy_in1_28861(sig_in_vector_bus_mergerproxy_in112_2), .proxy_in2_28861(sig_in_vector_bus_mergerproxy_in213_2), .proxy_in3_28861(sig_in_vector_bus_mergerproxy_in314_2), .proxy_sel_LOAD_28861(sig_in_vector_bus_mergerproxy_sel_LOAD15_2), .proxy_sel_STORE_28861(sig_in_vector_bus_mergerproxy_sel_STORE16_2), .proxy_in1_28862(sig_in_vector_bus_mergerproxy_in117_2), .proxy_in2_28862(sig_in_vector_bus_mergerproxy_in218_2), .proxy_in3_28862(sig_in_vector_bus_mergerproxy_in319_2), .proxy_sel_LOAD_28862(sig_in_vector_bus_mergerproxy_sel_LOAD20_2), .proxy_sel_STORE_28862(sig_in_vector_bus_mergerproxy_sel_STORE21_2), .proxy_in1_28863(sig_in_vector_bus_mergerproxy_in122_1), .proxy_in2_28863(sig_in_vector_bus_mergerproxy_in223_1), .proxy_in3_28863(sig_in_vector_bus_mergerproxy_in324_1), .proxy_sel_LOAD_28863(sig_in_vector_bus_mergerproxy_sel_LOAD25_1), .proxy_sel_STORE_28863(sig_in_vector_bus_mergerproxy_sel_STORE26_1), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_2), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_2), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_2), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_2), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_2), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28876_29748), .a(out_conv_out_reg_0_reg_0_13_32), .array_S(out_reg_2_reg_2), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .proxy_out1_28859(proxy_out1_28859), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28862(proxy_out1_28862), .proxy_out1_28863(proxy_out1_28863), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) fu_main_28876_30417 (.out1(out_addr_expr_FU_8_i0_fu_main_28876_30417), .in1(out_conv_out_const_1_13_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(1)) fu_main_28876_30420 (.out1(out_addr_expr_FU_9_i0_fu_main_28876_30420), .in1(out_conv_out_const_0_13_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_main_28876_30426 (.out1(out_addr_expr_FU_12_i0_fu_main_28876_30426), .in1(out_conv_out_const_0_13_32));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(13)) fu_main_28876_30463 (.out1(out_UUdata_converter_FU_10_i0_fu_main_28876_30463), .in1(out_addr_expr_FU_8_i0_fu_main_28876_30417));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_main_28876_30466 (.out1(out_UUdata_converter_FU_11_i0_fu_main_28876_30466), .in1(out_addr_expr_FU_9_i0_fu_main_28876_30420));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_main_28876_30472 (.out1(out_UUdata_converter_FU_13_i0_fu_main_28876_30472), .in1(out_addr_expr_FU_12_i0_fu_main_28876_30426));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_Wdata_ram0_1 (.out1(sig_in_bus_mergerMout_Wdata_ram0_1), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_1));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_Wdata_ram0_2 (.out1(sig_in_bus_mergerMout_Wdata_ram0_2), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_2));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerMout_addr_ram1_1 (.out1(sig_in_bus_mergerMout_addr_ram1_1), .in1(sig_in_vector_bus_mergerMout_addr_ram1_1));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerMout_addr_ram1_2 (.out1(sig_in_bus_mergerMout_addr_ram1_2), .in1(sig_in_vector_bus_mergerMout_addr_ram1_2));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerMout_data_ram_size2_0 (.out1(sig_in_bus_mergerMout_data_ram_size2_0), .in1(sig_in_vector_bus_mergerMout_data_ram_size2_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerMout_data_ram_size2_1 (.out1(sig_in_bus_mergerMout_data_ram_size2_1), .in1(sig_in_vector_bus_mergerMout_data_ram_size2_1));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerMout_data_ram_size2_2 (.out1(sig_in_bus_mergerMout_data_ram_size2_2), .in1(sig_in_vector_bus_mergerMout_data_ram_size2_2));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_oe_ram3_0 (.out1(sig_in_bus_mergerMout_oe_ram3_0), .in1(sig_in_vector_bus_mergerMout_oe_ram3_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_oe_ram3_1 (.out1(sig_in_bus_mergerMout_oe_ram3_1), .in1(sig_in_vector_bus_mergerMout_oe_ram3_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_oe_ram3_2 (.out1(sig_in_bus_mergerMout_oe_ram3_2), .in1(sig_in_vector_bus_mergerMout_oe_ram3_2));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_we_ram4_0 (.out1(sig_in_bus_mergerMout_we_ram4_0), .in1(sig_in_vector_bus_mergerMout_we_ram4_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_we_ram4_1 (.out1(sig_in_bus_mergerMout_we_ram4_1), .in1(sig_in_vector_bus_mergerMout_we_ram4_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_we_ram4_2 (.out1(sig_in_bus_mergerMout_we_ram4_2), .in1(sig_in_vector_bus_mergerMout_we_ram4_2));
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
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in112_0 (.out1(sig_in_bus_mergerproxy_in112_0), .in1(sig_in_vector_bus_mergerproxy_in112_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in112_1 (.out1(sig_in_bus_mergerproxy_in112_1), .in1(sig_in_vector_bus_mergerproxy_in112_1));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in112_2 (.out1(sig_in_bus_mergerproxy_in112_2), .in1(sig_in_vector_bus_mergerproxy_in112_2));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in117_0 (.out1(sig_in_bus_mergerproxy_in117_0), .in1(sig_in_vector_bus_mergerproxy_in117_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in117_1 (.out1(sig_in_bus_mergerproxy_in117_1), .in1(sig_in_vector_bus_mergerproxy_in117_1));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in117_2 (.out1(sig_in_bus_mergerproxy_in117_2), .in1(sig_in_vector_bus_mergerproxy_in117_2));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in122_0 (.out1(sig_in_bus_mergerproxy_in122_0), .in1(sig_in_vector_bus_mergerproxy_in122_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in122_1 (.out1(sig_in_bus_mergerproxy_in122_1), .in1(sig_in_vector_bus_mergerproxy_in122_1));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in127_0 (.out1(sig_in_bus_mergerproxy_in127_0), .in1(sig_in_vector_bus_mergerproxy_in127_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in17_0 (.out1(sig_in_bus_mergerproxy_in17_0), .in1(sig_in_vector_bus_mergerproxy_in17_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in17_1 (.out1(sig_in_bus_mergerproxy_in17_1), .in1(sig_in_vector_bus_mergerproxy_in17_1));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in17_2 (.out1(sig_in_bus_mergerproxy_in17_2), .in1(sig_in_vector_bus_mergerproxy_in17_2));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in213_0 (.out1(sig_in_bus_mergerproxy_in213_0), .in1(sig_in_vector_bus_mergerproxy_in213_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in213_1 (.out1(sig_in_bus_mergerproxy_in213_1), .in1(sig_in_vector_bus_mergerproxy_in213_1));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in213_2 (.out1(sig_in_bus_mergerproxy_in213_2), .in1(sig_in_vector_bus_mergerproxy_in213_2));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in218_0 (.out1(sig_in_bus_mergerproxy_in218_0), .in1(sig_in_vector_bus_mergerproxy_in218_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in218_1 (.out1(sig_in_bus_mergerproxy_in218_1), .in1(sig_in_vector_bus_mergerproxy_in218_1));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in218_2 (.out1(sig_in_bus_mergerproxy_in218_2), .in1(sig_in_vector_bus_mergerproxy_in218_2));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in223_0 (.out1(sig_in_bus_mergerproxy_in223_0), .in1(sig_in_vector_bus_mergerproxy_in223_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in223_1 (.out1(sig_in_bus_mergerproxy_in223_1), .in1(sig_in_vector_bus_mergerproxy_in223_1));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in228_0 (.out1(sig_in_bus_mergerproxy_in228_0), .in1(sig_in_vector_bus_mergerproxy_in228_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in28_0 (.out1(sig_in_bus_mergerproxy_in28_0), .in1(sig_in_vector_bus_mergerproxy_in28_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in28_1 (.out1(sig_in_bus_mergerproxy_in28_1), .in1(sig_in_vector_bus_mergerproxy_in28_1));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in28_2 (.out1(sig_in_bus_mergerproxy_in28_2), .in1(sig_in_vector_bus_mergerproxy_in28_2));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in314_0 (.out1(sig_in_bus_mergerproxy_in314_0), .in1(sig_in_vector_bus_mergerproxy_in314_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in314_1 (.out1(sig_in_bus_mergerproxy_in314_1), .in1(sig_in_vector_bus_mergerproxy_in314_1));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in314_2 (.out1(sig_in_bus_mergerproxy_in314_2), .in1(sig_in_vector_bus_mergerproxy_in314_2));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in319_0 (.out1(sig_in_bus_mergerproxy_in319_0), .in1(sig_in_vector_bus_mergerproxy_in319_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in319_1 (.out1(sig_in_bus_mergerproxy_in319_1), .in1(sig_in_vector_bus_mergerproxy_in319_1));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in319_2 (.out1(sig_in_bus_mergerproxy_in319_2), .in1(sig_in_vector_bus_mergerproxy_in319_2));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in324_0 (.out1(sig_in_bus_mergerproxy_in324_0), .in1(sig_in_vector_bus_mergerproxy_in324_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in324_1 (.out1(sig_in_bus_mergerproxy_in324_1), .in1(sig_in_vector_bus_mergerproxy_in324_1));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in329_0 (.out1(sig_in_bus_mergerproxy_in329_0), .in1(sig_in_vector_bus_mergerproxy_in329_0));
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
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD20_1 (.out1(sig_in_bus_mergerproxy_sel_LOAD20_1), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD20_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD20_2 (.out1(sig_in_bus_mergerproxy_sel_LOAD20_2), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD20_2));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD25_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD25_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD25_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD25_1 (.out1(sig_in_bus_mergerproxy_sel_LOAD25_1), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD25_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD30_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD30_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD30_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE11_0 (.out1(sig_in_bus_mergerproxy_sel_STORE11_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE11_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE11_1 (.out1(sig_in_bus_mergerproxy_sel_STORE11_1), .in1(sig_in_vector_bus_mergerproxy_sel_STORE11_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE11_2 (.out1(sig_in_bus_mergerproxy_sel_STORE11_2), .in1(sig_in_vector_bus_mergerproxy_sel_STORE11_2));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE16_0 (.out1(sig_in_bus_mergerproxy_sel_STORE16_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE16_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE16_1 (.out1(sig_in_bus_mergerproxy_sel_STORE16_1), .in1(sig_in_vector_bus_mergerproxy_sel_STORE16_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE16_2 (.out1(sig_in_bus_mergerproxy_sel_STORE16_2), .in1(sig_in_vector_bus_mergerproxy_sel_STORE16_2));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE21_0 (.out1(sig_in_bus_mergerproxy_sel_STORE21_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE21_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE21_1 (.out1(sig_in_bus_mergerproxy_sel_STORE21_1), .in1(sig_in_vector_bus_mergerproxy_sel_STORE21_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE21_2 (.out1(sig_in_bus_mergerproxy_sel_STORE21_2), .in1(sig_in_vector_bus_mergerproxy_sel_STORE21_2));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE26_0 (.out1(sig_in_bus_mergerproxy_sel_STORE26_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE26_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE26_1 (.out1(sig_in_bus_mergerproxy_sel_STORE26_1), .in1(sig_in_vector_bus_mergerproxy_sel_STORE26_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE31_0 (.out1(sig_in_bus_mergerproxy_sel_STORE31_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE31_0));
  register_SE #(.BITSIZE_in1(13), .BITSIZE_out1(13)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_10_i0_fu_main_28876_30463), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_11_i0_fu_main_28876_30466), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_13_i0_fu_main_28876_30472), .wenable(wrenable_reg_2));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy5_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy5_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram6_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram6_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in112_ (.out1(sig_out_vector_bus_mergerproxy_in112_), .in1(sig_out_bus_mergerproxy_in112_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in117_ (.out1(sig_out_vector_bus_mergerproxy_in117_), .in1(sig_out_bus_mergerproxy_in117_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in122_ (.out1(sig_out_vector_bus_mergerproxy_in122_), .in1(sig_out_bus_mergerproxy_in122_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in127_ (.out1(sig_out_vector_bus_mergerproxy_in127_), .in1(sig_out_bus_mergerproxy_in127_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in17_ (.out1(sig_out_vector_bus_mergerproxy_in17_), .in1(sig_out_bus_mergerproxy_in17_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in213_ (.out1(sig_out_vector_bus_mergerproxy_in213_), .in1(sig_out_bus_mergerproxy_in213_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in218_ (.out1(sig_out_vector_bus_mergerproxy_in218_), .in1(sig_out_bus_mergerproxy_in218_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in223_ (.out1(sig_out_vector_bus_mergerproxy_in223_), .in1(sig_out_bus_mergerproxy_in223_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in228_ (.out1(sig_out_vector_bus_mergerproxy_in228_), .in1(sig_out_bus_mergerproxy_in228_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in28_ (.out1(sig_out_vector_bus_mergerproxy_in28_), .in1(sig_out_bus_mergerproxy_in28_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in314_ (.out1(sig_out_vector_bus_mergerproxy_in314_), .in1(sig_out_bus_mergerproxy_in314_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in319_ (.out1(sig_out_vector_bus_mergerproxy_in319_), .in1(sig_out_bus_mergerproxy_in319_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in324_ (.out1(sig_out_vector_bus_mergerproxy_in324_), .in1(sig_out_bus_mergerproxy_in324_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in329_ (.out1(sig_out_vector_bus_mergerproxy_in329_), .in1(sig_out_bus_mergerproxy_in329_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in39_ (.out1(sig_out_vector_bus_mergerproxy_in39_), .in1(sig_out_bus_mergerproxy_in39_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD10_ (.out1(sig_out_vector_bus_mergerproxy_sel_LOAD10_), .in1(sig_out_bus_mergerproxy_sel_LOAD10_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD15_ (.out1(sig_out_vector_bus_mergerproxy_sel_LOAD15_), .in1(sig_out_bus_mergerproxy_sel_LOAD15_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD20_ (.out1(sig_out_vector_bus_mergerproxy_sel_LOAD20_), .in1(sig_out_bus_mergerproxy_sel_LOAD20_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD25_ (.out1(sig_out_vector_bus_mergerproxy_sel_LOAD25_), .in1(sig_out_bus_mergerproxy_sel_LOAD25_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD30_ (.out1(sig_out_vector_bus_mergerproxy_sel_LOAD30_), .in1(sig_out_bus_mergerproxy_sel_LOAD30_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE11_ (.out1(sig_out_vector_bus_mergerproxy_sel_STORE11_), .in1(sig_out_bus_mergerproxy_sel_STORE11_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE16_ (.out1(sig_out_vector_bus_mergerproxy_sel_STORE16_), .in1(sig_out_bus_mergerproxy_sel_STORE16_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE21_ (.out1(sig_out_vector_bus_mergerproxy_sel_STORE21_), .in1(sig_out_bus_mergerproxy_sel_STORE21_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE26_ (.out1(sig_out_vector_bus_mergerproxy_sel_STORE26_), .in1(sig_out_bus_mergerproxy_sel_STORE26_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE31_ (.out1(sig_out_vector_bus_mergerproxy_sel_STORE31_), .in1(sig_out_bus_mergerproxy_sel_STORE31_));
  // io-signal post fix
  assign OUT_UNBOUNDED_main_28876_29746 = s_done_fu_main_28876_29746;
  assign OUT_UNBOUNDED_main_28876_29747 = s_done_fu_main_28876_29747;
  assign OUT_UNBOUNDED_main_28876_29748 = s_done_fu_main_28876_29748;

endmodule

// FSM based controller description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_main(done_port, selector_IN_UNBOUNDED_main_28876_29746, selector_IN_UNBOUNDED_main_28876_29747, selector_IN_UNBOUNDED_main_28876_29748, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2, OUT_UNBOUNDED_main_28876_29746, OUT_UNBOUNDED_main_28876_29747, OUT_UNBOUNDED_main_28876_29748, clock, reset, start_port);
  // IN
  input OUT_UNBOUNDED_main_28876_29746;
  input OUT_UNBOUNDED_main_28876_29747;
  input OUT_UNBOUNDED_main_28876_29748;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_IN_UNBOUNDED_main_28876_29746;
  output selector_IN_UNBOUNDED_main_28876_29747;
  output selector_IN_UNBOUNDED_main_28876_29748;
  output wrenable_reg_0;
  output wrenable_reg_1;
  output wrenable_reg_2;
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
  reg selector_IN_UNBOUNDED_main_28876_29746;
  reg selector_IN_UNBOUNDED_main_28876_29747;
  reg selector_IN_UNBOUNDED_main_28876_29748;
  reg wrenable_reg_0;
  reg wrenable_reg_1;
  reg wrenable_reg_2;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    selector_IN_UNBOUNDED_main_28876_29746 = 1'b0;
    selector_IN_UNBOUNDED_main_28876_29747 = 1'b0;
    selector_IN_UNBOUNDED_main_28876_29748 = 1'b0;
    wrenable_reg_0 = 1'b0;
    wrenable_reg_1 = 1'b0;
    wrenable_reg_2 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_2 = 1'bX;
          _next_state = S_0;
        end
      S_1 :
        begin
          selector_IN_UNBOUNDED_main_28876_29746 = 1'b1;
          if (OUT_UNBOUNDED_main_28876_29746 == 1'b0)
            begin
              _next_state = S_2;
            end
          else
            begin
              _next_state = S_3;
            end
        end
      S_2 :
        begin
          if (OUT_UNBOUNDED_main_28876_29746 == 1'b0)
            begin
              _next_state = S_2;
            end
          else
            begin
              _next_state = S_3;
            end
        end
      S_3 :
        begin
          selector_IN_UNBOUNDED_main_28876_29747 = 1'b1;
          if (OUT_UNBOUNDED_main_28876_29747 == 1'b0)
            begin
              _next_state = S_4;
            end
          else
            begin
              _next_state = S_5;
            end
        end
      S_4 :
        begin
          if (OUT_UNBOUNDED_main_28876_29747 == 1'b0)
            begin
              _next_state = S_4;
            end
          else
            begin
              _next_state = S_5;
            end
        end
      S_5 :
        begin
          selector_IN_UNBOUNDED_main_28876_29748 = 1'b1;
          if (OUT_UNBOUNDED_main_28876_29748 == 1'b0)
            begin
              _next_state = S_6;
            end
          else
            begin
              _next_state = S_7;
              done_port = 1'b1;
            end
        end
      S_6 :
        begin
          if (OUT_UNBOUNDED_main_28876_29748 == 1'b0)
            begin
              _next_state = S_6;
            end
          else
            begin
              _next_state = S_7;
              done_port = 1'b1;
            end
        end
      S_7 :
        begin
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_2 = 1'bX;
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
  parameter MEM_var_28859_28876=1024, MEM_var_28861_28876=2048, MEM_var_28862_28876=3072, MEM_var_28863_28876=4096, MEM_var_28864_28876=5120, MEM_var_28866_28876=6144;
  // IN
  input clock;
  input reset;
  input start_port;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [25:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [25:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  // OUT
  output done_port;
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [25:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  // Component and signal declarations
  wire OUT_UNBOUNDED_main_28876_29746;
  wire OUT_UNBOUNDED_main_28876_29747;
  wire OUT_UNBOUNDED_main_28876_29748;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire selector_IN_UNBOUNDED_main_28876_29746;
  wire selector_IN_UNBOUNDED_main_28876_29747;
  wire selector_IN_UNBOUNDED_main_28876_29748;
  wire wrenable_reg_0;
  wire wrenable_reg_1;
  wire wrenable_reg_2;
  
  controller_main Controller_i (.done_port(done_delayed_REG_signal_in), .selector_IN_UNBOUNDED_main_28876_29746(selector_IN_UNBOUNDED_main_28876_29746), .selector_IN_UNBOUNDED_main_28876_29747(selector_IN_UNBOUNDED_main_28876_29747), .selector_IN_UNBOUNDED_main_28876_29748(selector_IN_UNBOUNDED_main_28876_29748), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2), .OUT_UNBOUNDED_main_28876_29746(OUT_UNBOUNDED_main_28876_29746), .OUT_UNBOUNDED_main_28876_29747(OUT_UNBOUNDED_main_28876_29747), .OUT_UNBOUNDED_main_28876_29748(OUT_UNBOUNDED_main_28876_29748), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_main #(.MEM_var_28859_28876(MEM_var_28859_28876), .MEM_var_28861_28876(MEM_var_28861_28876), .MEM_var_28862_28876(MEM_var_28862_28876), .MEM_var_28863_28876(MEM_var_28863_28876), .MEM_var_28864_28876(MEM_var_28864_28876), .MEM_var_28866_28876(MEM_var_28866_28876)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_UNBOUNDED_main_28876_29746(OUT_UNBOUNDED_main_28876_29746), .OUT_UNBOUNDED_main_28876_29747(OUT_UNBOUNDED_main_28876_29747), .OUT_UNBOUNDED_main_28876_29748(OUT_UNBOUNDED_main_28876_29748), .clock(clock), .reset(reset), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .selector_IN_UNBOUNDED_main_28876_29746(selector_IN_UNBOUNDED_main_28876_29746), .selector_IN_UNBOUNDED_main_28876_29747(selector_IN_UNBOUNDED_main_28876_29747), .selector_IN_UNBOUNDED_main_28876_29748(selector_IN_UNBOUNDED_main_28876_29748), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2));
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
  parameter MEM_var_28859_28876=1024, MEM_var_28861_28876=2048, MEM_var_28862_28876=3072, MEM_var_28863_28876=4096, MEM_var_28864_28876=5120, MEM_var_28866_28876=6144;
  // IN
  input clock;
  input reset;
  input start_port;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [25:0] S_addr_ram;
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
  output [25:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  // Component and signal declarations
  
  _main #(.MEM_var_28859_28876(MEM_var_28859_28876), .MEM_var_28861_28876(MEM_var_28861_28876), .MEM_var_28862_28876(MEM_var_28862_28876), .MEM_var_28863_28876(MEM_var_28863_28876), .MEM_var_28864_28876(MEM_var_28864_28876), .MEM_var_28866_28876(MEM_var_28866_28876)) _main_i0 (.done_port(done_port), .Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .clock(clock), .reset(reset), .start_port(start_port), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram({8'b00000000, 8'b00000000}), .Sin_DataRdy({1'b0, 1'b0}), .Min_oe_ram({1'b0, 1'b0}), .Min_we_ram({1'b0, 1'b0}), .Min_addr_ram({13'b0000000000000, 13'b0000000000000}), .Min_Wdata_ram({8'b00000000, 8'b00000000}), .Min_data_ram_size({4'b0000, 4'b0000}));

endmodule


