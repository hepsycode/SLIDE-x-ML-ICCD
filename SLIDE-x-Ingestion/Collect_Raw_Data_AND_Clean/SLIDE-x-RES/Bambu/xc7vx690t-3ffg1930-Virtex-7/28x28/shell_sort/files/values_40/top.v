// 
// Politecnico di Milano
// Code created using PandA - Version: PandA 0.9.6 - Revision 891ec3caed502474cab0813cc4a9fc678deabaa5 - Date 2022-06-07T23:05:50
// bambu executed with: bambu -I/home/dews/Scrivania/bambu-hls/RESULTS/Bambu/xc7vx690t-3ffg1930-Virtex-7/28x28/shell_sort/includes/values_40 --simulate --simulator=VERILATOR --clock-period=5 --device-name=xc7vx690t-3ffg1930-VVD /home/dews/Scrivania/bambu-hls/cc4cs_bambu/benchmarkBasic/shell_sort/thrd.c 
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
module datapath_shell_sort(clock, reset, in_port_size, in_port_arr, M_Rdata_ram, M_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, fuselector_BMEMORY_CTRLN_28_i0_LOAD, fuselector_BMEMORY_CTRLN_28_i0_STORE, selector_MUX_0_BMEMORY_CTRLN_28_i0_0_0_0, selector_MUX_199_reg_0_0_0_0, selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0, selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1, selector_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0, selector_MUX_200_reg_1_0_0_0, selector_MUX_206_reg_15_0_0_0, selector_MUX_206_reg_15_0_0_1, selector_MUX_210_reg_19_0_0_0, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_shell_sort_28861_28919, OUT_CONDITION_shell_sort_28861_28938, OUT_CONDITION_shell_sort_28861_29035, OUT_CONDITION_shell_sort_28861_29038, OUT_CONDITION_shell_sort_28861_29042, OUT_CONDITION_shell_sort_28861_29044);
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
  output OUT_CONDITION_shell_sort_28861_28919;
  output OUT_CONDITION_shell_sort_28861_28938;
  output OUT_CONDITION_shell_sort_28861_29035;
  output OUT_CONDITION_shell_sort_28861_29038;
  output OUT_CONDITION_shell_sort_28861_29042;
  output OUT_CONDITION_shell_sort_28861_29044;
  // Component and signal declarations
  wire [7:0] null_out_signal_BMEMORY_CTRLN_28_i0_out1_1;
  wire [7:0] out_BMEMORY_CTRLN_28_i0_BMEMORY_CTRLN_28_i0;
  wire [7:0] out_IUconvert_expr_FU_6_i0_fu_shell_sort_28861_28937;
  wire [7:0] out_IUdata_converter_FU_21_i0_fu_shell_sort_28861_28999;
  wire [7:0] out_IUdata_converter_FU_7_i0_fu_shell_sort_28861_28989;
  wire [7:0] out_MUX_0_BMEMORY_CTRLN_28_i0_0_0_0;
  wire [31:0] out_MUX_199_reg_0_0_0_0;
  wire [6:0] out_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0;
  wire [6:0] out_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1;
  wire [6:0] out_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0;
  wire [31:0] out_MUX_200_reg_1_0_0_0;
  wire [7:0] out_MUX_206_reg_15_0_0_0;
  wire [7:0] out_MUX_206_reg_15_0_0_1;
  wire [7:0] out_MUX_210_reg_19_0_0_0;
  wire signed [8:0] out_UIdata_converter_FU_20_i0_fu_shell_sort_28861_29007;
  wire signed [8:0] out_UIdata_converter_FU_23_i0_fu_shell_sort_28861_29037;
  wire [7:0] out_UUdata_converter_FU_14_i0_fu_shell_sort_28861_29027;
  wire [7:0] out_UUdata_converter_FU_22_i0_fu_shell_sort_28861_28965;
  wire [7:0] out_UUdata_converter_FU_26_i0_fu_shell_sort_28861_29016;
  wire signed [8:0] out_bit_and_expr_FU_16_0_16_29_i0_fu_shell_sort_28861_29474;
  wire signed [8:0] out_bit_and_expr_FU_16_0_16_29_i1_fu_shell_sort_28861_29520;
  wire signed [16:0] out_bit_and_expr_FU_32_0_32_30_i0_fu_shell_sort_28861_29078;
  wire signed [16:0] out_bit_and_expr_FU_32_0_32_30_i1_fu_shell_sort_28861_29091;
  wire signed [16:0] out_bit_and_expr_FU_32_0_32_30_i2_fu_shell_sort_28861_29100;
  wire signed [1:0] out_bit_and_expr_FU_8_0_8_31_i0_fu_shell_sort_28861_29262;
  wire signed [1:0] out_bit_and_expr_FU_8_0_8_31_i1_fu_shell_sort_28861_29328;
  wire signed [1:0] out_bit_and_expr_FU_8_0_8_31_i2_fu_shell_sort_28861_29392;
  wire signed [1:0] out_bit_and_expr_FU_8_0_8_31_i3_fu_shell_sort_28861_29424;
  wire signed [2:0] out_bit_and_expr_FU_8_0_8_32_i0_fu_shell_sort_28861_29286;
  wire signed [2:0] out_bit_and_expr_FU_8_0_8_32_i1_fu_shell_sort_28861_29360;
  wire signed [5:0] out_bit_and_expr_FU_8_0_8_33_i0_fu_shell_sort_28861_29306;
  wire signed [5:0] out_bit_and_expr_FU_8_0_8_33_i1_fu_shell_sort_28861_29377;
  wire signed [5:0] out_bit_and_expr_FU_8_0_8_33_i2_fu_shell_sort_28861_29409;
  wire signed [4:0] out_bit_and_expr_FU_8_0_8_34_i0_fu_shell_sort_28861_29455;
  wire signed [4:0] out_bit_and_expr_FU_8_0_8_34_i1_fu_shell_sort_28861_29505;
  wire signed [31:0] out_bit_ior_concat_expr_FU_35_i0_fu_shell_sort_28861_29073;
  wire signed [31:0] out_bit_ior_concat_expr_FU_35_i1_fu_shell_sort_28861_29097;
  wire signed [27:0] out_bit_ior_concat_expr_FU_35_i2_fu_shell_sort_28861_29147;
  wire signed [26:0] out_bit_ior_concat_expr_FU_35_i3_fu_shell_sort_28861_29174;
  wire signed [19:0] out_bit_ior_concat_expr_FU_36_i0_fu_shell_sort_28861_29134;
  wire signed [18:0] out_bit_ior_concat_expr_FU_36_i1_fu_shell_sort_28861_29162;
  wire signed [25:0] out_bit_ior_concat_expr_FU_37_i0_fu_shell_sort_28861_29141;
  wire signed [24:0] out_bit_ior_concat_expr_FU_37_i1_fu_shell_sort_28861_29168;
  wire signed [31:0] out_bit_ior_concat_expr_FU_37_i2_fu_shell_sort_28861_29180;
  wire signed [24:0] out_bit_ior_concat_expr_FU_38_i0_fu_shell_sort_28861_29196;
  wire signed [23:0] out_bit_ior_concat_expr_FU_38_i1_fu_shell_sort_28861_29215;
  wire signed [31:0] out_bit_ior_concat_expr_FU_39_i0_fu_shell_sort_28861_29203;
  wire signed [31:0] out_bit_ior_concat_expr_FU_39_i1_fu_shell_sort_28861_29221;
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
  wire [3:0] out_const_7;
  wire [4:0] out_const_8;
  wire [5:0] out_const_9;
  wire [2:0] out_conv_in_port_size_8_3;
  wire [3:0] out_conv_out_const_3_5_4;
  wire [31:0] out_conv_out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0_I_2_32;
  wire [31:0] out_conv_out_i_assign_conn_obj_1_ASSIGN_SIGNED_FU_i_assign_1_I_31_32;
  wire out_gt_expr_FU_32_32_32_40_i0_fu_shell_sort_28861_29231;
  wire signed [1:0] out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0;
  wire signed [30:0] out_i_assign_conn_obj_1_ASSIGN_SIGNED_FU_i_assign_1;
  wire [7:0] out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_2;
  wire [7:0] out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_3;
  wire out_le_expr_FU_32_0_32_41_i0_fu_shell_sort_28861_29225;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_42_i0_fu_shell_sort_28861_29070;
  wire signed [26:0] out_lshift_expr_FU_32_0_32_42_i1_fu_shell_sort_28861_29144;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_42_i2_fu_shell_sort_28861_29156;
  wire signed [25:0] out_lshift_expr_FU_32_0_32_42_i3_fu_shell_sort_28861_29171;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_42_i4_fu_shell_sort_28861_29183;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_42_i5_fu_shell_sort_28861_29259;
  wire signed [27:0] out_lshift_expr_FU_32_0_32_42_i6_fu_shell_sort_28861_29323;
  wire signed [26:0] out_lshift_expr_FU_32_0_32_42_i7_fu_shell_sort_28861_29389;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_42_i8_fu_shell_sort_28861_29421;
  wire signed [18:0] out_lshift_expr_FU_32_0_32_43_i0_fu_shell_sort_28861_29131;
  wire signed [17:0] out_lshift_expr_FU_32_0_32_43_i1_fu_shell_sort_28861_29159;
  wire signed [19:0] out_lshift_expr_FU_32_0_32_43_i2_fu_shell_sort_28861_29280;
  wire signed [18:0] out_lshift_expr_FU_32_0_32_43_i3_fu_shell_sort_28861_29355;
  wire signed [24:0] out_lshift_expr_FU_32_0_32_44_i0_fu_shell_sort_28861_29138;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_44_i1_fu_shell_sort_28861_29150;
  wire signed [23:0] out_lshift_expr_FU_32_0_32_44_i2_fu_shell_sort_28861_29165;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_44_i3_fu_shell_sort_28861_29177;
  wire signed [25:0] out_lshift_expr_FU_32_0_32_44_i4_fu_shell_sort_28861_29301;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_44_i5_fu_shell_sort_28861_29342;
  wire signed [24:0] out_lshift_expr_FU_32_0_32_44_i6_fu_shell_sort_28861_29372;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_44_i7_fu_shell_sort_28861_29406;
  wire signed [23:0] out_lshift_expr_FU_32_0_32_45_i0_fu_shell_sort_28861_29193;
  wire signed [22:0] out_lshift_expr_FU_32_0_32_45_i1_fu_shell_sort_28861_29212;
  wire signed [24:0] out_lshift_expr_FU_32_0_32_45_i2_fu_shell_sort_28861_29451;
  wire signed [23:0] out_lshift_expr_FU_32_0_32_45_i3_fu_shell_sort_28861_29502;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_46_i0_fu_shell_sort_28861_29200;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_46_i1_fu_shell_sort_28861_29218;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_46_i2_fu_shell_sort_28861_29470;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_46_i3_fu_shell_sort_28861_29517;
  wire out_lt_expr_FU_8_8_8_47_i0_fu_shell_sort_28861_29233;
  wire signed [30:0] out_minus_expr_FU_32_32_32_48_i0_fu_shell_sort_28861_29002;
  wire out_ne_expr_FU_32_0_32_49_i0_fu_shell_sort_28861_29229;
  wire signed [16:0] out_plus_expr_FU_16_16_16_50_i0_fu_shell_sort_28861_29352;
  wire signed [31:0] out_plus_expr_FU_32_0_32_51_i0_fu_shell_sort_28861_28918;
  wire signed [31:0] out_plus_expr_FU_32_32_32_52_i0_fu_shell_sort_28861_29110;
  wire signed [20:0] out_plus_expr_FU_32_32_32_52_i10_fu_shell_sort_28861_29448;
  wire signed [23:0] out_plus_expr_FU_32_32_32_52_i11_fu_shell_sort_28861_29467;
  wire signed [19:0] out_plus_expr_FU_32_32_32_52_i12_fu_shell_sort_28861_29499;
  wire signed [23:0] out_plus_expr_FU_32_32_32_52_i13_fu_shell_sort_28861_29514;
  wire signed [30:0] out_plus_expr_FU_32_32_32_52_i1_fu_shell_sort_28861_29256;
  wire signed [17:0] out_plus_expr_FU_32_32_32_52_i2_fu_shell_sort_28861_29275;
  wire signed [20:0] out_plus_expr_FU_32_32_32_52_i3_fu_shell_sort_28861_29296;
  wire signed [26:0] out_plus_expr_FU_32_32_32_52_i4_fu_shell_sort_28861_29318;
  wire signed [26:0] out_plus_expr_FU_32_32_32_52_i5_fu_shell_sort_28861_29339;
  wire signed [19:0] out_plus_expr_FU_32_32_32_52_i6_fu_shell_sort_28861_29369;
  wire signed [25:0] out_plus_expr_FU_32_32_32_52_i7_fu_shell_sort_28861_29386;
  wire signed [26:0] out_plus_expr_FU_32_32_32_52_i8_fu_shell_sort_28861_29403;
  wire signed [30:0] out_plus_expr_FU_32_32_32_52_i9_fu_shell_sort_28861_29418;
  wire out_read_cond_FU_10_i0_fu_shell_sort_28861_29035;
  wire out_read_cond_FU_16_i0_fu_shell_sort_28861_29038;
  wire out_read_cond_FU_24_i0_fu_shell_sort_28861_29042;
  wire out_read_cond_FU_27_i0_fu_shell_sort_28861_29044;
  wire out_read_cond_FU_4_i0_fu_shell_sort_28861_28919;
  wire out_read_cond_FU_8_i0_fu_shell_sort_28861_28938;
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
  wire signed [13:0] out_rshift_expr_FU_16_0_16_53_i0_fu_shell_sort_28861_29348;
  wire signed [14:0] out_rshift_expr_FU_16_0_16_54_i0_fu_shell_sort_28861_29384;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_55_i0_fu_shell_sort_28861_29081;
  wire signed [16:0] out_rshift_expr_FU_32_0_32_55_i1_fu_shell_sort_28861_29088;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_55_i2_fu_shell_sort_28861_29103;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_55_i3_fu_shell_sort_28861_29113;
  wire signed [31:0] out_rshift_expr_FU_32_0_32_56_i0_fu_shell_sort_28861_29126;
  wire signed [30:0] out_rshift_expr_FU_32_0_32_57_i0_fu_shell_sort_28861_29249;
  wire signed [30:0] out_rshift_expr_FU_32_0_32_57_i1_fu_shell_sort_28861_29254;
  wire signed [25:0] out_rshift_expr_FU_32_0_32_57_i2_fu_shell_sort_28861_29311;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_57_i3_fu_shell_sort_28861_29314;
  wire signed [24:0] out_rshift_expr_FU_32_0_32_57_i4_fu_shell_sort_28861_29381;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_57_i5_fu_shell_sort_28861_29413;
  wire signed [30:0] out_rshift_expr_FU_32_0_32_57_i6_fu_shell_sort_28861_29416;
  wire signed [16:0] out_rshift_expr_FU_32_0_32_58_i0_fu_shell_sort_28861_29267;
  wire signed [14:0] out_rshift_expr_FU_32_0_32_58_i1_fu_shell_sort_28861_29271;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_58_i2_fu_shell_sort_28861_29345;
  wire signed [14:0] out_rshift_expr_FU_32_0_32_59_i0_fu_shell_sort_28861_29291;
  wire signed [19:0] out_rshift_expr_FU_32_0_32_59_i1_fu_shell_sort_28861_29294;
  wire signed [22:0] out_rshift_expr_FU_32_0_32_59_i2_fu_shell_sort_28861_29332;
  wire signed [26:0] out_rshift_expr_FU_32_0_32_59_i3_fu_shell_sort_28861_29337;
  wire signed [13:0] out_rshift_expr_FU_32_0_32_59_i4_fu_shell_sort_28861_29364;
  wire signed [18:0] out_rshift_expr_FU_32_0_32_59_i5_fu_shell_sort_28861_29367;
  wire signed [21:0] out_rshift_expr_FU_32_0_32_59_i6_fu_shell_sort_28861_29396;
  wire signed [26:0] out_rshift_expr_FU_32_0_32_59_i7_fu_shell_sort_28861_29401;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_60_i0_fu_shell_sort_28861_29443;
  wire signed [19:0] out_rshift_expr_FU_32_0_32_60_i1_fu_shell_sort_28861_29446;
  wire signed [14:0] out_rshift_expr_FU_32_0_32_60_i2_fu_shell_sort_28861_29494;
  wire signed [18:0] out_rshift_expr_FU_32_0_32_60_i3_fu_shell_sort_28861_29497;
  wire signed [16:0] out_rshift_expr_FU_32_0_32_61_i0_fu_shell_sort_28861_29460;
  wire signed [23:0] out_rshift_expr_FU_32_0_32_61_i1_fu_shell_sort_28861_29463;
  wire signed [15:0] out_rshift_expr_FU_32_0_32_61_i2_fu_shell_sort_28861_29509;
  wire signed [23:0] out_rshift_expr_FU_32_0_32_61_i3_fu_shell_sort_28861_29512;
  wire signed [30:0] out_ternary_mp_expr_FU_32_32_0_32_62_i0_fu_shell_sort_28861_28936;
  wire signed [31:0] out_ternary_plus_expr_FU_32_32_32_32_63_i0_fu_shell_sort_28861_29122;
  wire out_ui_gt_expr_FU_8_8_8_64_i0_fu_shell_sort_28861_29227;
  wire [7:0] out_ui_minus_expr_FU_8_8_8_65_i0_fu_shell_sort_28861_28985;
  wire out_ui_ne_expr_FU_8_8_8_66_i0_fu_shell_sort_28861_29235;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_67_i0_fu_shell_sort_28861_28982;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_8_8_68_i0_fu_shell_sort_28861_28960;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_8_8_68_i1_fu_shell_sort_28861_28996;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_8_8_68_i2_fu_shell_sort_28861_29013;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_8_8_68_i3_fu_shell_sort_28861_29024;
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
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_199_reg_0_0_0_0 (.out1(out_MUX_199_reg_0_0_0_0), .sel(selector_MUX_199_reg_0_0_0_0), .in1(out_conv_out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0_I_2_32), .in2(out_plus_expr_FU_32_0_32_51_i0_fu_shell_sort_28861_28918));
  MUX_GATE #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(7)) MUX_1_BMEMORY_CTRLN_28_i0_1_0_0 (.out1(out_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0), .sel(selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0), .in1(out_reg_16_reg_16), .in2(out_ui_pointer_plus_expr_FU_8_8_8_68_i1_fu_shell_sort_28861_28996));
  MUX_GATE #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(7)) MUX_1_BMEMORY_CTRLN_28_i0_1_0_1 (.out1(out_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1), .sel(selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1), .in1(out_ui_pointer_plus_expr_FU_8_8_8_68_i2_fu_shell_sort_28861_29013), .in2(out_ui_pointer_plus_expr_FU_8_8_8_68_i3_fu_shell_sort_28861_29024));
  MUX_GATE #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(7)) MUX_1_BMEMORY_CTRLN_28_i0_1_1_0 (.out1(out_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0), .sel(selector_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0), .in1(out_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0), .in2(out_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_200_reg_1_0_0_0 (.out1(out_MUX_200_reg_1_0_0_0), .sel(selector_MUX_200_reg_1_0_0_0), .in1(out_conv_out_i_assign_conn_obj_1_ASSIGN_SIGNED_FU_i_assign_1_I_31_32), .in2(out_plus_expr_FU_32_0_32_51_i0_fu_shell_sort_28861_28918));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_206_reg_15_0_0_0 (.out1(out_MUX_206_reg_15_0_0_0), .sel(selector_MUX_206_reg_15_0_0_0), .in1(out_reg_19_reg_19), .in2(out_reg_12_reg_12));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_206_reg_15_0_0_1 (.out1(out_MUX_206_reg_15_0_0_1), .sel(selector_MUX_206_reg_15_0_0_1), .in1(out_IUconvert_expr_FU_6_i0_fu_shell_sort_28861_28937), .in2(out_MUX_206_reg_15_0_0_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_210_reg_19_0_0_0 (.out1(out_MUX_210_reg_19_0_0_0), .sel(selector_MUX_210_reg_19_0_0_0), .in1(out_reg_15_reg_15), .in2(out_ui_minus_expr_FU_8_8_8_65_i0_fu_shell_sort_28861_28985));
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
  constant_value #(.BITSIZE_out1(4), .value(4'b0110)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(5), .value(5'b01111)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(6), .value(6'b011111)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(3)) conv_in_port_size_8_3 (.out1(out_conv_in_port_size_8_3), .in1(in_port_size));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_3_5_4 (.out1(out_conv_out_const_3_5_4), .in1(out_const_3));
  IUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(32)) conv_out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0_I_2_32 (.out1(out_conv_out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0_I_2_32), .in1(out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0));
  IUdata_converter_FU #(.BITSIZE_in1(31), .BITSIZE_out1(32)) conv_out_i_assign_conn_obj_1_ASSIGN_SIGNED_FU_i_assign_1_I_31_32 (.out1(out_conv_out_i_assign_conn_obj_1_ASSIGN_SIGNED_FU_i_assign_1_I_31_32), .in1(out_i_assign_conn_obj_1_ASSIGN_SIGNED_FU_i_assign_1));
  plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(32)) fu_shell_sort_28861_28918 (.out1(out_plus_expr_FU_32_0_32_51_i0_fu_shell_sort_28861_28918), .in1(out_bit_ior_concat_expr_FU_35_i0_fu_shell_sort_28861_29073), .in2(out_const_0));
  read_cond_FU #(.BITSIZE_in1(1)) fu_shell_sort_28861_28919 (.out1(out_read_cond_FU_4_i0_fu_shell_sort_28861_28919), .in1(out_le_expr_FU_32_0_32_41_i0_fu_shell_sort_28861_29225));
  ternary_mp_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_in3(2), .BITSIZE_out1(31)) fu_shell_sort_28861_28936 (.out1(out_ternary_mp_expr_FU_32_32_0_32_62_i0_fu_shell_sort_28861_28936), .in1(out_reg_8_reg_8), .in2(out_reg_2_reg_2), .in3(out_const_0));
  IUconvert_expr_FU #(.BITSIZE_in1(31), .BITSIZE_out1(8)) fu_shell_sort_28861_28937 (.out1(out_IUconvert_expr_FU_6_i0_fu_shell_sort_28861_28937), .in1(out_ternary_mp_expr_FU_32_32_0_32_62_i0_fu_shell_sort_28861_28936));
  read_cond_FU #(.BITSIZE_in1(1)) fu_shell_sort_28861_28938 (.out1(out_read_cond_FU_8_i0_fu_shell_sort_28861_28938), .in1(out_ui_gt_expr_FU_8_8_8_64_i0_fu_shell_sort_28861_29227));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_shell_sort_28861_28960 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_68_i0_fu_shell_sort_28861_28960), .in1(in_port_arr), .in2(out_UUdata_converter_FU_22_i0_fu_shell_sort_28861_28965));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_shell_sort_28861_28965 (.out1(out_UUdata_converter_FU_22_i0_fu_shell_sort_28861_28965), .in1(out_reg_15_reg_15));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_shell_sort_28861_28982 (.out1(out_ui_plus_expr_FU_8_0_8_67_i0_fu_shell_sort_28861_28982), .in1(out_reg_15_reg_15), .in2(out_const_12));
  ui_minus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) fu_shell_sort_28861_28985 (.out1(out_ui_minus_expr_FU_8_8_8_65_i0_fu_shell_sort_28861_28985), .in1(out_reg_15_reg_15), .in2(out_reg_10_reg_10));
  IUdata_converter_FU #(.BITSIZE_in1(31), .BITSIZE_out1(8)) fu_shell_sort_28861_28989 (.out1(out_IUdata_converter_FU_7_i0_fu_shell_sort_28861_28989), .in1(out_ternary_mp_expr_FU_32_32_0_32_62_i0_fu_shell_sort_28861_28936));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_shell_sort_28861_28996 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_68_i1_fu_shell_sort_28861_28996), .in1(in_port_arr), .in2(out_IUdata_converter_FU_21_i0_fu_shell_sort_28861_28999));
  IUdata_converter_FU #(.BITSIZE_in1(31), .BITSIZE_out1(8)) fu_shell_sort_28861_28999 (.out1(out_IUdata_converter_FU_21_i0_fu_shell_sort_28861_28999), .in1(out_minus_expr_FU_32_32_32_48_i0_fu_shell_sort_28861_29002));
  minus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(31), .BITSIZE_out1(31)) fu_shell_sort_28861_29002 (.out1(out_minus_expr_FU_32_32_32_48_i0_fu_shell_sort_28861_29002), .in1(out_UIdata_converter_FU_20_i0_fu_shell_sort_28861_29007), .in2(out_reg_9_reg_9));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_shell_sort_28861_29007 (.out1(out_UIdata_converter_FU_20_i0_fu_shell_sort_28861_29007), .in1(out_reg_15_reg_15));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_shell_sort_28861_29013 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_68_i2_fu_shell_sort_28861_29013), .in1(in_port_arr), .in2(out_UUdata_converter_FU_26_i0_fu_shell_sort_28861_29016));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_shell_sort_28861_29016 (.out1(out_UUdata_converter_FU_26_i0_fu_shell_sort_28861_29016), .in1(out_reg_19_reg_19));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_shell_sort_28861_29024 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_68_i3_fu_shell_sort_28861_29024), .in1(in_port_arr), .in2(out_UUdata_converter_FU_14_i0_fu_shell_sort_28861_29027));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_shell_sort_28861_29027 (.out1(out_UUdata_converter_FU_14_i0_fu_shell_sort_28861_29027), .in1(out_reg_15_reg_15));
  read_cond_FU #(.BITSIZE_in1(1)) fu_shell_sort_28861_29035 (.out1(out_read_cond_FU_10_i0_fu_shell_sort_28861_29035), .in1(out_reg_11_reg_11));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_shell_sort_28861_29037 (.out1(out_UIdata_converter_FU_23_i0_fu_shell_sort_28861_29037), .in1(out_ui_minus_expr_FU_8_8_8_65_i0_fu_shell_sort_28861_28985));
  read_cond_FU #(.BITSIZE_in1(1)) fu_shell_sort_28861_29038 (.out1(out_read_cond_FU_16_i0_fu_shell_sort_28861_29038), .in1(out_reg_17_reg_17));
  read_cond_FU #(.BITSIZE_in1(1)) fu_shell_sort_28861_29042 (.out1(out_read_cond_FU_24_i0_fu_shell_sort_28861_29042), .in1(out_lt_expr_FU_8_8_8_47_i0_fu_shell_sort_28861_29233));
  read_cond_FU #(.BITSIZE_in1(1)) fu_shell_sort_28861_29044 (.out1(out_read_cond_FU_27_i0_fu_shell_sort_28861_29044), .in1(out_reg_13_reg_13));
  lshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29070 (.out1(out_lshift_expr_FU_32_0_32_42_i0_fu_shell_sort_28861_29070), .in1(out_reg_0_reg_0), .in2(out_const_0));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(32), .OFFSET_PARAMETER(1)) fu_shell_sort_28861_29073 (.out1(out_bit_ior_concat_expr_FU_35_i0_fu_shell_sort_28861_29073), .in1(out_lshift_expr_FU_32_0_32_42_i5_fu_shell_sort_28861_29259), .in2(out_bit_and_expr_FU_8_0_8_31_i0_fu_shell_sort_28861_29262), .in3(out_const_0));
  bit_and_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(17), .BITSIZE_out1(17)) fu_shell_sort_28861_29078 (.out1(out_bit_and_expr_FU_32_0_32_30_i0_fu_shell_sort_28861_29078), .in1(out_reg_1_reg_1), .in2(out_const_11));
  rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(6), .BITSIZE_out1(16), .PRECISION(32)) fu_shell_sort_28861_29081 (.out1(out_rshift_expr_FU_32_0_32_55_i0_fu_shell_sort_28861_29081), .in1(out_reg_1_reg_1), .in2(out_const_4));
  rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(6), .BITSIZE_out1(17), .PRECISION(32)) fu_shell_sort_28861_29088 (.out1(out_rshift_expr_FU_32_0_32_55_i1_fu_shell_sort_28861_29088), .in1(out_lshift_expr_FU_32_0_32_42_i2_fu_shell_sort_28861_29156), .in2(out_const_4));
  bit_and_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(17), .BITSIZE_out1(17)) fu_shell_sort_28861_29091 (.out1(out_bit_and_expr_FU_32_0_32_30_i1_fu_shell_sort_28861_29091), .in1(out_rshift_expr_FU_32_0_32_55_i1_fu_shell_sort_28861_29088), .in2(out_const_11));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(32), .OFFSET_PARAMETER(1)) fu_shell_sort_28861_29097 (.out1(out_bit_ior_concat_expr_FU_35_i1_fu_shell_sort_28861_29097), .in1(out_lshift_expr_FU_32_0_32_42_i8_fu_shell_sort_28861_29421), .in2(out_reg_7_reg_7), .in3(out_const_0));
  bit_and_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(17), .BITSIZE_out1(17)) fu_shell_sort_28861_29100 (.out1(out_bit_and_expr_FU_32_0_32_30_i2_fu_shell_sort_28861_29100), .in1(out_bit_ior_concat_expr_FU_35_i1_fu_shell_sort_28861_29097), .in2(out_const_11));
  rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(6), .BITSIZE_out1(16), .PRECISION(32)) fu_shell_sort_28861_29103 (.out1(out_rshift_expr_FU_32_0_32_55_i2_fu_shell_sort_28861_29103), .in1(out_bit_ior_concat_expr_FU_35_i1_fu_shell_sort_28861_29097), .in2(out_const_4));
  plus_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(32), .BITSIZE_out1(32)) fu_shell_sort_28861_29110 (.out1(out_plus_expr_FU_32_32_32_52_i0_fu_shell_sort_28861_29110), .in1(out_bit_and_expr_FU_32_0_32_30_i2_fu_shell_sort_28861_29100), .in2(out_reg_3_reg_3));
  rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(6), .BITSIZE_out1(16), .PRECISION(32)) fu_shell_sort_28861_29113 (.out1(out_rshift_expr_FU_32_0_32_55_i3_fu_shell_sort_28861_29113), .in1(out_plus_expr_FU_32_32_32_52_i0_fu_shell_sort_28861_29110), .in2(out_const_4));
  ternary_plus_expr_FU #(.BITSIZE_in1(16), .BITSIZE_in2(16), .BITSIZE_in3(32), .BITSIZE_out1(32)) fu_shell_sort_28861_29122 (.out1(out_ternary_plus_expr_FU_32_32_32_32_63_i0_fu_shell_sort_28861_29122), .in1(out_rshift_expr_FU_32_0_32_55_i3_fu_shell_sort_28861_29113), .in2(out_rshift_expr_FU_32_0_32_55_i2_fu_shell_sort_28861_29103), .in3(out_reg_4_reg_4));
  rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(6), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29126 (.out1(out_rshift_expr_FU_32_0_32_56_i0_fu_shell_sort_28861_29126), .in1(out_reg_1_reg_1), .in2(out_const_9));
  lshift_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(3), .BITSIZE_out1(19), .PRECISION(32)) fu_shell_sort_28861_29131 (.out1(out_lshift_expr_FU_32_0_32_43_i0_fu_shell_sort_28861_29131), .in1(out_bit_and_expr_FU_32_0_32_30_i0_fu_shell_sort_28861_29078), .in2(out_const_1));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(20), .BITSIZE_in2(3), .BITSIZE_in3(3), .BITSIZE_out1(20), .OFFSET_PARAMETER(2)) fu_shell_sort_28861_29134 (.out1(out_bit_ior_concat_expr_FU_36_i0_fu_shell_sort_28861_29134), .in1(out_lshift_expr_FU_32_0_32_43_i2_fu_shell_sort_28861_29280), .in2(out_bit_and_expr_FU_8_0_8_32_i0_fu_shell_sort_28861_29286), .in3(out_const_1));
  lshift_expr_FU #(.BITSIZE_in1(20), .BITSIZE_in2(4), .BITSIZE_out1(25), .PRECISION(32)) fu_shell_sort_28861_29138 (.out1(out_lshift_expr_FU_32_0_32_44_i0_fu_shell_sort_28861_29138), .in1(out_bit_ior_concat_expr_FU_36_i0_fu_shell_sort_28861_29134), .in2(out_const_5));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(26), .BITSIZE_in2(6), .BITSIZE_in3(4), .BITSIZE_out1(26), .OFFSET_PARAMETER(5)) fu_shell_sort_28861_29141 (.out1(out_bit_ior_concat_expr_FU_37_i0_fu_shell_sort_28861_29141), .in1(out_lshift_expr_FU_32_0_32_44_i4_fu_shell_sort_28861_29301), .in2(out_bit_and_expr_FU_8_0_8_33_i0_fu_shell_sort_28861_29306), .in3(out_const_5));
  lshift_expr_FU #(.BITSIZE_in1(26), .BITSIZE_in2(2), .BITSIZE_out1(27), .PRECISION(32)) fu_shell_sort_28861_29144 (.out1(out_lshift_expr_FU_32_0_32_42_i1_fu_shell_sort_28861_29144), .in1(out_bit_ior_concat_expr_FU_37_i0_fu_shell_sort_28861_29141), .in2(out_const_0));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(28), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(28), .OFFSET_PARAMETER(1)) fu_shell_sort_28861_29147 (.out1(out_bit_ior_concat_expr_FU_35_i2_fu_shell_sort_28861_29147), .in1(out_lshift_expr_FU_32_0_32_42_i6_fu_shell_sort_28861_29323), .in2(out_bit_and_expr_FU_8_0_8_31_i1_fu_shell_sort_28861_29328), .in3(out_const_0));
  lshift_expr_FU #(.BITSIZE_in1(28), .BITSIZE_in2(4), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29150 (.out1(out_lshift_expr_FU_32_0_32_44_i1_fu_shell_sort_28861_29150), .in1(out_bit_ior_concat_expr_FU_35_i2_fu_shell_sort_28861_29147), .in2(out_const_5));
  lshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29156 (.out1(out_lshift_expr_FU_32_0_32_42_i2_fu_shell_sort_28861_29156), .in1(out_lshift_expr_FU_32_0_32_44_i5_fu_shell_sort_28861_29342), .in2(out_const_0));
  lshift_expr_FU #(.BITSIZE_in1(16), .BITSIZE_in2(3), .BITSIZE_out1(18), .PRECISION(32)) fu_shell_sort_28861_29159 (.out1(out_lshift_expr_FU_32_0_32_43_i1_fu_shell_sort_28861_29159), .in1(out_rshift_expr_FU_32_0_32_55_i0_fu_shell_sort_28861_29081), .in2(out_const_1));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(19), .BITSIZE_in2(3), .BITSIZE_in3(3), .BITSIZE_out1(19), .OFFSET_PARAMETER(2)) fu_shell_sort_28861_29162 (.out1(out_bit_ior_concat_expr_FU_36_i1_fu_shell_sort_28861_29162), .in1(out_lshift_expr_FU_32_0_32_43_i3_fu_shell_sort_28861_29355), .in2(out_bit_and_expr_FU_8_0_8_32_i1_fu_shell_sort_28861_29360), .in3(out_const_1));
  lshift_expr_FU #(.BITSIZE_in1(19), .BITSIZE_in2(4), .BITSIZE_out1(24), .PRECISION(32)) fu_shell_sort_28861_29165 (.out1(out_lshift_expr_FU_32_0_32_44_i2_fu_shell_sort_28861_29165), .in1(out_bit_ior_concat_expr_FU_36_i1_fu_shell_sort_28861_29162), .in2(out_const_5));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(25), .BITSIZE_in2(6), .BITSIZE_in3(4), .BITSIZE_out1(25), .OFFSET_PARAMETER(5)) fu_shell_sort_28861_29168 (.out1(out_bit_ior_concat_expr_FU_37_i1_fu_shell_sort_28861_29168), .in1(out_lshift_expr_FU_32_0_32_44_i6_fu_shell_sort_28861_29372), .in2(out_bit_and_expr_FU_8_0_8_33_i1_fu_shell_sort_28861_29377), .in3(out_const_5));
  lshift_expr_FU #(.BITSIZE_in1(25), .BITSIZE_in2(2), .BITSIZE_out1(26), .PRECISION(32)) fu_shell_sort_28861_29171 (.out1(out_lshift_expr_FU_32_0_32_42_i3_fu_shell_sort_28861_29171), .in1(out_bit_ior_concat_expr_FU_37_i1_fu_shell_sort_28861_29168), .in2(out_const_0));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(27), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(27), .OFFSET_PARAMETER(1)) fu_shell_sort_28861_29174 (.out1(out_bit_ior_concat_expr_FU_35_i3_fu_shell_sort_28861_29174), .in1(out_lshift_expr_FU_32_0_32_42_i7_fu_shell_sort_28861_29389), .in2(out_bit_and_expr_FU_8_0_8_31_i2_fu_shell_sort_28861_29392), .in3(out_const_0));
  lshift_expr_FU #(.BITSIZE_in1(27), .BITSIZE_in2(4), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29177 (.out1(out_lshift_expr_FU_32_0_32_44_i3_fu_shell_sort_28861_29177), .in1(out_bit_ior_concat_expr_FU_35_i3_fu_shell_sort_28861_29174), .in2(out_const_5));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(6), .BITSIZE_in3(4), .BITSIZE_out1(32), .OFFSET_PARAMETER(5)) fu_shell_sort_28861_29180 (.out1(out_bit_ior_concat_expr_FU_37_i2_fu_shell_sort_28861_29180), .in1(out_lshift_expr_FU_32_0_32_44_i7_fu_shell_sort_28861_29406), .in2(out_bit_and_expr_FU_8_0_8_33_i2_fu_shell_sort_28861_29409), .in3(out_const_5));
  lshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29183 (.out1(out_lshift_expr_FU_32_0_32_42_i4_fu_shell_sort_28861_29183), .in1(out_bit_ior_concat_expr_FU_37_i2_fu_shell_sort_28861_29180), .in2(out_const_0));
  lshift_expr_FU #(.BITSIZE_in1(20), .BITSIZE_in2(4), .BITSIZE_out1(24), .PRECISION(32)) fu_shell_sort_28861_29193 (.out1(out_lshift_expr_FU_32_0_32_45_i0_fu_shell_sort_28861_29193), .in1(out_bit_ior_concat_expr_FU_36_i0_fu_shell_sort_28861_29134), .in2(out_const_2));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(25), .BITSIZE_in2(5), .BITSIZE_in3(4), .BITSIZE_out1(25), .OFFSET_PARAMETER(4)) fu_shell_sort_28861_29196 (.out1(out_bit_ior_concat_expr_FU_38_i0_fu_shell_sort_28861_29196), .in1(out_lshift_expr_FU_32_0_32_45_i2_fu_shell_sort_28861_29451), .in2(out_bit_and_expr_FU_8_0_8_34_i0_fu_shell_sort_28861_29455), .in3(out_const_2));
  lshift_expr_FU #(.BITSIZE_in1(25), .BITSIZE_in2(5), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29200 (.out1(out_lshift_expr_FU_32_0_32_46_i0_fu_shell_sort_28861_29200), .in1(out_bit_ior_concat_expr_FU_38_i0_fu_shell_sort_28861_29196), .in2(out_const_3));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(9), .BITSIZE_in3(5), .BITSIZE_out1(32), .OFFSET_PARAMETER(8)) fu_shell_sort_28861_29203 (.out1(out_bit_ior_concat_expr_FU_39_i0_fu_shell_sort_28861_29203), .in1(out_lshift_expr_FU_32_0_32_46_i2_fu_shell_sort_28861_29470), .in2(out_bit_and_expr_FU_16_0_16_29_i0_fu_shell_sort_28861_29474), .in3(out_const_3));
  lshift_expr_FU #(.BITSIZE_in1(19), .BITSIZE_in2(4), .BITSIZE_out1(23), .PRECISION(32)) fu_shell_sort_28861_29212 (.out1(out_lshift_expr_FU_32_0_32_45_i1_fu_shell_sort_28861_29212), .in1(out_bit_ior_concat_expr_FU_36_i1_fu_shell_sort_28861_29162), .in2(out_const_2));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(24), .BITSIZE_in2(5), .BITSIZE_in3(4), .BITSIZE_out1(24), .OFFSET_PARAMETER(4)) fu_shell_sort_28861_29215 (.out1(out_bit_ior_concat_expr_FU_38_i1_fu_shell_sort_28861_29215), .in1(out_lshift_expr_FU_32_0_32_45_i3_fu_shell_sort_28861_29502), .in2(out_bit_and_expr_FU_8_0_8_34_i1_fu_shell_sort_28861_29505), .in3(out_const_2));
  lshift_expr_FU #(.BITSIZE_in1(24), .BITSIZE_in2(5), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29218 (.out1(out_lshift_expr_FU_32_0_32_46_i1_fu_shell_sort_28861_29218), .in1(out_bit_ior_concat_expr_FU_38_i1_fu_shell_sort_28861_29215), .in2(out_const_3));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(9), .BITSIZE_in3(5), .BITSIZE_out1(32), .OFFSET_PARAMETER(8)) fu_shell_sort_28861_29221 (.out1(out_bit_ior_concat_expr_FU_39_i1_fu_shell_sort_28861_29221), .in1(out_lshift_expr_FU_32_0_32_46_i3_fu_shell_sort_28861_29517), .in2(out_bit_and_expr_FU_16_0_16_29_i1_fu_shell_sort_28861_29520), .in3(out_const_3));
  le_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(4), .BITSIZE_out1(1)) fu_shell_sort_28861_29225 (.out1(out_le_expr_FU_32_0_32_41_i0_fu_shell_sort_28861_29225), .in1(out_plus_expr_FU_32_0_32_51_i0_fu_shell_sort_28861_28918), .in2(out_const_7));
  ui_gt_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_shell_sort_28861_29227 (.out1(out_ui_gt_expr_FU_8_8_8_64_i0_fu_shell_sort_28861_29227), .in1(out_conv_in_port_size_8_3), .in2(out_IUconvert_expr_FU_6_i0_fu_shell_sort_28861_28937));
  ne_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_shell_sort_28861_29229 (.out1(out_ne_expr_FU_32_0_32_49_i0_fu_shell_sort_28861_29229), .in1(out_ternary_mp_expr_FU_32_32_0_32_62_i0_fu_shell_sort_28861_28936), .in2(out_const_0));
  gt_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(9), .BITSIZE_out1(1)) fu_shell_sort_28861_29231 (.out1(out_gt_expr_FU_32_32_32_40_i0_fu_shell_sort_28861_29231), .in1(out_reg_9_reg_9), .in2(out_UIdata_converter_FU_23_i0_fu_shell_sort_28861_29037));
  lt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_shell_sort_28861_29233 (.out1(out_lt_expr_FU_8_8_8_47_i0_fu_shell_sort_28861_29233), .in1(out_reg_14_reg_14), .in2(out_BMEMORY_CTRLN_28_i0_BMEMORY_CTRLN_28_i0));
  ui_ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(1)) fu_shell_sort_28861_29235 (.out1(out_ui_ne_expr_FU_8_8_8_66_i0_fu_shell_sort_28861_29235), .in1(out_ui_plus_expr_FU_8_0_8_67_i0_fu_shell_sort_28861_28982), .in2(out_conv_in_port_size_8_3));
  rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(31), .PRECISION(32)) fu_shell_sort_28861_29249 (.out1(out_rshift_expr_FU_32_0_32_57_i0_fu_shell_sort_28861_29249), .in1(out_lshift_expr_FU_32_0_32_42_i0_fu_shell_sort_28861_29070), .in2(out_const_0));
  rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(31), .PRECISION(32)) fu_shell_sort_28861_29254 (.out1(out_rshift_expr_FU_32_0_32_57_i1_fu_shell_sort_28861_29254), .in1(out_reg_0_reg_0), .in2(out_const_0));
  plus_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(31), .BITSIZE_out1(31)) fu_shell_sort_28861_29256 (.out1(out_plus_expr_FU_32_32_32_52_i1_fu_shell_sort_28861_29256), .in1(out_rshift_expr_FU_32_0_32_57_i0_fu_shell_sort_28861_29249), .in2(out_rshift_expr_FU_32_0_32_57_i1_fu_shell_sort_28861_29254));
  lshift_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(2), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29259 (.out1(out_lshift_expr_FU_32_0_32_42_i5_fu_shell_sort_28861_29259), .in1(out_plus_expr_FU_32_32_32_52_i1_fu_shell_sort_28861_29256), .in2(out_const_0));
  bit_and_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_shell_sort_28861_29262 (.out1(out_bit_and_expr_FU_8_0_8_31_i0_fu_shell_sort_28861_29262), .in1(out_reg_0_reg_0), .in2(out_const_0));
  rshift_expr_FU #(.BITSIZE_in1(19), .BITSIZE_in2(3), .BITSIZE_out1(17), .PRECISION(32)) fu_shell_sort_28861_29267 (.out1(out_rshift_expr_FU_32_0_32_58_i0_fu_shell_sort_28861_29267), .in1(out_lshift_expr_FU_32_0_32_43_i0_fu_shell_sort_28861_29131), .in2(out_const_1));
  rshift_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(3), .BITSIZE_out1(15), .PRECISION(32)) fu_shell_sort_28861_29271 (.out1(out_rshift_expr_FU_32_0_32_58_i1_fu_shell_sort_28861_29271), .in1(out_bit_and_expr_FU_32_0_32_30_i0_fu_shell_sort_28861_29078), .in2(out_const_1));
  plus_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(15), .BITSIZE_out1(18)) fu_shell_sort_28861_29275 (.out1(out_plus_expr_FU_32_32_32_52_i2_fu_shell_sort_28861_29275), .in1(out_rshift_expr_FU_32_0_32_58_i0_fu_shell_sort_28861_29267), .in2(out_rshift_expr_FU_32_0_32_58_i1_fu_shell_sort_28861_29271));
  lshift_expr_FU #(.BITSIZE_in1(18), .BITSIZE_in2(3), .BITSIZE_out1(20), .PRECISION(32)) fu_shell_sort_28861_29280 (.out1(out_lshift_expr_FU_32_0_32_43_i2_fu_shell_sort_28861_29280), .in1(out_plus_expr_FU_32_32_32_52_i2_fu_shell_sort_28861_29275), .in2(out_const_1));
  bit_and_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(3), .BITSIZE_out1(3)) fu_shell_sort_28861_29286 (.out1(out_bit_and_expr_FU_8_0_8_32_i0_fu_shell_sort_28861_29286), .in1(out_bit_and_expr_FU_32_0_32_30_i0_fu_shell_sort_28861_29078), .in2(out_const_6));
  rshift_expr_FU #(.BITSIZE_in1(20), .BITSIZE_in2(4), .BITSIZE_out1(15), .PRECISION(32)) fu_shell_sort_28861_29291 (.out1(out_rshift_expr_FU_32_0_32_59_i0_fu_shell_sort_28861_29291), .in1(out_bit_ior_concat_expr_FU_36_i0_fu_shell_sort_28861_29134), .in2(out_const_5));
  rshift_expr_FU #(.BITSIZE_in1(25), .BITSIZE_in2(4), .BITSIZE_out1(20), .PRECISION(32)) fu_shell_sort_28861_29294 (.out1(out_rshift_expr_FU_32_0_32_59_i1_fu_shell_sort_28861_29294), .in1(out_lshift_expr_FU_32_0_32_44_i0_fu_shell_sort_28861_29138), .in2(out_const_5));
  plus_expr_FU #(.BITSIZE_in1(15), .BITSIZE_in2(20), .BITSIZE_out1(21)) fu_shell_sort_28861_29296 (.out1(out_plus_expr_FU_32_32_32_52_i3_fu_shell_sort_28861_29296), .in1(out_rshift_expr_FU_32_0_32_59_i0_fu_shell_sort_28861_29291), .in2(out_rshift_expr_FU_32_0_32_59_i1_fu_shell_sort_28861_29294));
  lshift_expr_FU #(.BITSIZE_in1(21), .BITSIZE_in2(4), .BITSIZE_out1(26), .PRECISION(32)) fu_shell_sort_28861_29301 (.out1(out_lshift_expr_FU_32_0_32_44_i4_fu_shell_sort_28861_29301), .in1(out_plus_expr_FU_32_32_32_52_i3_fu_shell_sort_28861_29296), .in2(out_const_5));
  bit_and_expr_FU #(.BITSIZE_in1(20), .BITSIZE_in2(6), .BITSIZE_out1(6)) fu_shell_sort_28861_29306 (.out1(out_bit_and_expr_FU_8_0_8_33_i0_fu_shell_sort_28861_29306), .in1(out_bit_ior_concat_expr_FU_36_i0_fu_shell_sort_28861_29134), .in2(out_const_9));
  rshift_expr_FU #(.BITSIZE_in1(27), .BITSIZE_in2(2), .BITSIZE_out1(26), .PRECISION(32)) fu_shell_sort_28861_29311 (.out1(out_rshift_expr_FU_32_0_32_57_i2_fu_shell_sort_28861_29311), .in1(out_lshift_expr_FU_32_0_32_42_i1_fu_shell_sort_28861_29144), .in2(out_const_0));
  rshift_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(2), .BITSIZE_out1(16), .PRECISION(32)) fu_shell_sort_28861_29314 (.out1(out_rshift_expr_FU_32_0_32_57_i3_fu_shell_sort_28861_29314), .in1(out_bit_and_expr_FU_32_0_32_30_i0_fu_shell_sort_28861_29078), .in2(out_const_0));
  plus_expr_FU #(.BITSIZE_in1(26), .BITSIZE_in2(16), .BITSIZE_out1(27)) fu_shell_sort_28861_29318 (.out1(out_plus_expr_FU_32_32_32_52_i4_fu_shell_sort_28861_29318), .in1(out_rshift_expr_FU_32_0_32_57_i2_fu_shell_sort_28861_29311), .in2(out_rshift_expr_FU_32_0_32_57_i3_fu_shell_sort_28861_29314));
  lshift_expr_FU #(.BITSIZE_in1(27), .BITSIZE_in2(2), .BITSIZE_out1(28), .PRECISION(32)) fu_shell_sort_28861_29323 (.out1(out_lshift_expr_FU_32_0_32_42_i6_fu_shell_sort_28861_29323), .in1(out_plus_expr_FU_32_32_32_52_i4_fu_shell_sort_28861_29318), .in2(out_const_0));
  bit_and_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_shell_sort_28861_29328 (.out1(out_bit_and_expr_FU_8_0_8_31_i1_fu_shell_sort_28861_29328), .in1(out_bit_and_expr_FU_32_0_32_30_i0_fu_shell_sort_28861_29078), .in2(out_const_0));
  rshift_expr_FU #(.BITSIZE_in1(28), .BITSIZE_in2(4), .BITSIZE_out1(23), .PRECISION(32)) fu_shell_sort_28861_29332 (.out1(out_rshift_expr_FU_32_0_32_59_i2_fu_shell_sort_28861_29332), .in1(out_bit_ior_concat_expr_FU_35_i2_fu_shell_sort_28861_29147), .in2(out_const_5));
  rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(4), .BITSIZE_out1(27), .PRECISION(32)) fu_shell_sort_28861_29337 (.out1(out_rshift_expr_FU_32_0_32_59_i3_fu_shell_sort_28861_29337), .in1(out_lshift_expr_FU_32_0_32_44_i1_fu_shell_sort_28861_29150), .in2(out_const_5));
  plus_expr_FU #(.BITSIZE_in1(23), .BITSIZE_in2(27), .BITSIZE_out1(27)) fu_shell_sort_28861_29339 (.out1(out_plus_expr_FU_32_32_32_52_i5_fu_shell_sort_28861_29339), .in1(out_rshift_expr_FU_32_0_32_59_i2_fu_shell_sort_28861_29332), .in2(out_rshift_expr_FU_32_0_32_59_i3_fu_shell_sort_28861_29337));
  lshift_expr_FU #(.BITSIZE_in1(27), .BITSIZE_in2(4), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29342 (.out1(out_lshift_expr_FU_32_0_32_44_i5_fu_shell_sort_28861_29342), .in1(out_plus_expr_FU_32_32_32_52_i5_fu_shell_sort_28861_29339), .in2(out_const_5));
  rshift_expr_FU #(.BITSIZE_in1(18), .BITSIZE_in2(3), .BITSIZE_out1(16), .PRECISION(32)) fu_shell_sort_28861_29345 (.out1(out_rshift_expr_FU_32_0_32_58_i2_fu_shell_sort_28861_29345), .in1(out_lshift_expr_FU_32_0_32_43_i1_fu_shell_sort_28861_29159), .in2(out_const_1));
  rshift_expr_FU #(.BITSIZE_in1(16), .BITSIZE_in2(3), .BITSIZE_out1(14), .PRECISION(32)) fu_shell_sort_28861_29348 (.out1(out_rshift_expr_FU_16_0_16_53_i0_fu_shell_sort_28861_29348), .in1(out_rshift_expr_FU_32_0_32_55_i0_fu_shell_sort_28861_29081), .in2(out_const_1));
  plus_expr_FU #(.BITSIZE_in1(16), .BITSIZE_in2(14), .BITSIZE_out1(17)) fu_shell_sort_28861_29352 (.out1(out_plus_expr_FU_16_16_16_50_i0_fu_shell_sort_28861_29352), .in1(out_rshift_expr_FU_32_0_32_58_i2_fu_shell_sort_28861_29345), .in2(out_rshift_expr_FU_16_0_16_53_i0_fu_shell_sort_28861_29348));
  lshift_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(3), .BITSIZE_out1(19), .PRECISION(32)) fu_shell_sort_28861_29355 (.out1(out_lshift_expr_FU_32_0_32_43_i3_fu_shell_sort_28861_29355), .in1(out_plus_expr_FU_16_16_16_50_i0_fu_shell_sort_28861_29352), .in2(out_const_1));
  bit_and_expr_FU #(.BITSIZE_in1(16), .BITSIZE_in2(3), .BITSIZE_out1(3)) fu_shell_sort_28861_29360 (.out1(out_bit_and_expr_FU_8_0_8_32_i1_fu_shell_sort_28861_29360), .in1(out_rshift_expr_FU_32_0_32_55_i0_fu_shell_sort_28861_29081), .in2(out_const_6));
  rshift_expr_FU #(.BITSIZE_in1(19), .BITSIZE_in2(4), .BITSIZE_out1(14), .PRECISION(32)) fu_shell_sort_28861_29364 (.out1(out_rshift_expr_FU_32_0_32_59_i4_fu_shell_sort_28861_29364), .in1(out_bit_ior_concat_expr_FU_36_i1_fu_shell_sort_28861_29162), .in2(out_const_5));
  rshift_expr_FU #(.BITSIZE_in1(24), .BITSIZE_in2(4), .BITSIZE_out1(19), .PRECISION(32)) fu_shell_sort_28861_29367 (.out1(out_rshift_expr_FU_32_0_32_59_i5_fu_shell_sort_28861_29367), .in1(out_lshift_expr_FU_32_0_32_44_i2_fu_shell_sort_28861_29165), .in2(out_const_5));
  plus_expr_FU #(.BITSIZE_in1(14), .BITSIZE_in2(19), .BITSIZE_out1(20)) fu_shell_sort_28861_29369 (.out1(out_plus_expr_FU_32_32_32_52_i6_fu_shell_sort_28861_29369), .in1(out_rshift_expr_FU_32_0_32_59_i4_fu_shell_sort_28861_29364), .in2(out_rshift_expr_FU_32_0_32_59_i5_fu_shell_sort_28861_29367));
  lshift_expr_FU #(.BITSIZE_in1(20), .BITSIZE_in2(4), .BITSIZE_out1(25), .PRECISION(32)) fu_shell_sort_28861_29372 (.out1(out_lshift_expr_FU_32_0_32_44_i6_fu_shell_sort_28861_29372), .in1(out_plus_expr_FU_32_32_32_52_i6_fu_shell_sort_28861_29369), .in2(out_const_5));
  bit_and_expr_FU #(.BITSIZE_in1(19), .BITSIZE_in2(6), .BITSIZE_out1(6)) fu_shell_sort_28861_29377 (.out1(out_bit_and_expr_FU_8_0_8_33_i1_fu_shell_sort_28861_29377), .in1(out_bit_ior_concat_expr_FU_36_i1_fu_shell_sort_28861_29162), .in2(out_const_9));
  rshift_expr_FU #(.BITSIZE_in1(26), .BITSIZE_in2(2), .BITSIZE_out1(25), .PRECISION(32)) fu_shell_sort_28861_29381 (.out1(out_rshift_expr_FU_32_0_32_57_i4_fu_shell_sort_28861_29381), .in1(out_lshift_expr_FU_32_0_32_42_i3_fu_shell_sort_28861_29171), .in2(out_const_0));
  rshift_expr_FU #(.BITSIZE_in1(16), .BITSIZE_in2(2), .BITSIZE_out1(15), .PRECISION(32)) fu_shell_sort_28861_29384 (.out1(out_rshift_expr_FU_16_0_16_54_i0_fu_shell_sort_28861_29384), .in1(out_rshift_expr_FU_32_0_32_55_i0_fu_shell_sort_28861_29081), .in2(out_const_0));
  plus_expr_FU #(.BITSIZE_in1(25), .BITSIZE_in2(15), .BITSIZE_out1(26)) fu_shell_sort_28861_29386 (.out1(out_plus_expr_FU_32_32_32_52_i7_fu_shell_sort_28861_29386), .in1(out_rshift_expr_FU_32_0_32_57_i4_fu_shell_sort_28861_29381), .in2(out_rshift_expr_FU_16_0_16_54_i0_fu_shell_sort_28861_29384));
  lshift_expr_FU #(.BITSIZE_in1(26), .BITSIZE_in2(2), .BITSIZE_out1(27), .PRECISION(32)) fu_shell_sort_28861_29389 (.out1(out_lshift_expr_FU_32_0_32_42_i7_fu_shell_sort_28861_29389), .in1(out_plus_expr_FU_32_32_32_52_i7_fu_shell_sort_28861_29386), .in2(out_const_0));
  bit_and_expr_FU #(.BITSIZE_in1(16), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_shell_sort_28861_29392 (.out1(out_bit_and_expr_FU_8_0_8_31_i2_fu_shell_sort_28861_29392), .in1(out_rshift_expr_FU_32_0_32_55_i0_fu_shell_sort_28861_29081), .in2(out_const_0));
  rshift_expr_FU #(.BITSIZE_in1(27), .BITSIZE_in2(4), .BITSIZE_out1(22), .PRECISION(32)) fu_shell_sort_28861_29396 (.out1(out_rshift_expr_FU_32_0_32_59_i6_fu_shell_sort_28861_29396), .in1(out_bit_ior_concat_expr_FU_35_i3_fu_shell_sort_28861_29174), .in2(out_const_5));
  rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(4), .BITSIZE_out1(27), .PRECISION(32)) fu_shell_sort_28861_29401 (.out1(out_rshift_expr_FU_32_0_32_59_i7_fu_shell_sort_28861_29401), .in1(out_lshift_expr_FU_32_0_32_44_i3_fu_shell_sort_28861_29177), .in2(out_const_5));
  plus_expr_FU #(.BITSIZE_in1(22), .BITSIZE_in2(27), .BITSIZE_out1(27)) fu_shell_sort_28861_29403 (.out1(out_plus_expr_FU_32_32_32_52_i8_fu_shell_sort_28861_29403), .in1(out_rshift_expr_FU_32_0_32_59_i6_fu_shell_sort_28861_29396), .in2(out_rshift_expr_FU_32_0_32_59_i7_fu_shell_sort_28861_29401));
  lshift_expr_FU #(.BITSIZE_in1(27), .BITSIZE_in2(4), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29406 (.out1(out_lshift_expr_FU_32_0_32_44_i7_fu_shell_sort_28861_29406), .in1(out_plus_expr_FU_32_32_32_52_i8_fu_shell_sort_28861_29403), .in2(out_const_5));
  bit_and_expr_FU #(.BITSIZE_in1(27), .BITSIZE_in2(6), .BITSIZE_out1(6)) fu_shell_sort_28861_29409 (.out1(out_bit_and_expr_FU_8_0_8_33_i2_fu_shell_sort_28861_29409), .in1(out_bit_ior_concat_expr_FU_35_i3_fu_shell_sort_28861_29174), .in2(out_const_9));
  rshift_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(2), .BITSIZE_out1(16), .PRECISION(32)) fu_shell_sort_28861_29413 (.out1(out_rshift_expr_FU_32_0_32_57_i5_fu_shell_sort_28861_29413), .in1(out_bit_and_expr_FU_32_0_32_30_i1_fu_shell_sort_28861_29091), .in2(out_const_0));
  rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(31), .PRECISION(32)) fu_shell_sort_28861_29416 (.out1(out_rshift_expr_FU_32_0_32_57_i6_fu_shell_sort_28861_29416), .in1(out_lshift_expr_FU_32_0_32_42_i4_fu_shell_sort_28861_29183), .in2(out_const_0));
  plus_expr_FU #(.BITSIZE_in1(16), .BITSIZE_in2(31), .BITSIZE_out1(31)) fu_shell_sort_28861_29418 (.out1(out_plus_expr_FU_32_32_32_52_i9_fu_shell_sort_28861_29418), .in1(out_reg_5_reg_5), .in2(out_reg_6_reg_6));
  lshift_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(2), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29421 (.out1(out_lshift_expr_FU_32_0_32_42_i8_fu_shell_sort_28861_29421), .in1(out_plus_expr_FU_32_32_32_52_i9_fu_shell_sort_28861_29418), .in2(out_const_0));
  bit_and_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_shell_sort_28861_29424 (.out1(out_bit_and_expr_FU_8_0_8_31_i3_fu_shell_sort_28861_29424), .in1(out_bit_and_expr_FU_32_0_32_30_i1_fu_shell_sort_28861_29091), .in2(out_const_0));
  rshift_expr_FU #(.BITSIZE_in1(20), .BITSIZE_in2(4), .BITSIZE_out1(16), .PRECISION(32)) fu_shell_sort_28861_29443 (.out1(out_rshift_expr_FU_32_0_32_60_i0_fu_shell_sort_28861_29443), .in1(out_bit_ior_concat_expr_FU_36_i0_fu_shell_sort_28861_29134), .in2(out_const_2));
  rshift_expr_FU #(.BITSIZE_in1(24), .BITSIZE_in2(4), .BITSIZE_out1(20), .PRECISION(32)) fu_shell_sort_28861_29446 (.out1(out_rshift_expr_FU_32_0_32_60_i1_fu_shell_sort_28861_29446), .in1(out_lshift_expr_FU_32_0_32_45_i0_fu_shell_sort_28861_29193), .in2(out_const_2));
  plus_expr_FU #(.BITSIZE_in1(16), .BITSIZE_in2(20), .BITSIZE_out1(21)) fu_shell_sort_28861_29448 (.out1(out_plus_expr_FU_32_32_32_52_i10_fu_shell_sort_28861_29448), .in1(out_rshift_expr_FU_32_0_32_60_i0_fu_shell_sort_28861_29443), .in2(out_rshift_expr_FU_32_0_32_60_i1_fu_shell_sort_28861_29446));
  lshift_expr_FU #(.BITSIZE_in1(21), .BITSIZE_in2(4), .BITSIZE_out1(25), .PRECISION(32)) fu_shell_sort_28861_29451 (.out1(out_lshift_expr_FU_32_0_32_45_i2_fu_shell_sort_28861_29451), .in1(out_plus_expr_FU_32_32_32_52_i10_fu_shell_sort_28861_29448), .in2(out_const_2));
  bit_and_expr_FU #(.BITSIZE_in1(20), .BITSIZE_in2(5), .BITSIZE_out1(5)) fu_shell_sort_28861_29455 (.out1(out_bit_and_expr_FU_8_0_8_34_i0_fu_shell_sort_28861_29455), .in1(out_bit_ior_concat_expr_FU_36_i0_fu_shell_sort_28861_29134), .in2(out_const_8));
  rshift_expr_FU #(.BITSIZE_in1(25), .BITSIZE_in2(5), .BITSIZE_out1(17), .PRECISION(32)) fu_shell_sort_28861_29460 (.out1(out_rshift_expr_FU_32_0_32_61_i0_fu_shell_sort_28861_29460), .in1(out_bit_ior_concat_expr_FU_38_i0_fu_shell_sort_28861_29196), .in2(out_const_3));
  rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(24), .PRECISION(32)) fu_shell_sort_28861_29463 (.out1(out_rshift_expr_FU_32_0_32_61_i1_fu_shell_sort_28861_29463), .in1(out_lshift_expr_FU_32_0_32_46_i0_fu_shell_sort_28861_29200), .in2(out_const_3));
  plus_expr_FU #(.BITSIZE_in1(17), .BITSIZE_in2(24), .BITSIZE_out1(24)) fu_shell_sort_28861_29467 (.out1(out_plus_expr_FU_32_32_32_52_i11_fu_shell_sort_28861_29467), .in1(out_rshift_expr_FU_32_0_32_61_i0_fu_shell_sort_28861_29460), .in2(out_rshift_expr_FU_32_0_32_61_i1_fu_shell_sort_28861_29463));
  lshift_expr_FU #(.BITSIZE_in1(24), .BITSIZE_in2(5), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29470 (.out1(out_lshift_expr_FU_32_0_32_46_i2_fu_shell_sort_28861_29470), .in1(out_plus_expr_FU_32_32_32_52_i11_fu_shell_sort_28861_29467), .in2(out_const_3));
  bit_and_expr_FU #(.BITSIZE_in1(25), .BITSIZE_in2(9), .BITSIZE_out1(9)) fu_shell_sort_28861_29474 (.out1(out_bit_and_expr_FU_16_0_16_29_i0_fu_shell_sort_28861_29474), .in1(out_bit_ior_concat_expr_FU_38_i0_fu_shell_sort_28861_29196), .in2(out_const_10));
  rshift_expr_FU #(.BITSIZE_in1(19), .BITSIZE_in2(4), .BITSIZE_out1(15), .PRECISION(32)) fu_shell_sort_28861_29494 (.out1(out_rshift_expr_FU_32_0_32_60_i2_fu_shell_sort_28861_29494), .in1(out_bit_ior_concat_expr_FU_36_i1_fu_shell_sort_28861_29162), .in2(out_const_2));
  rshift_expr_FU #(.BITSIZE_in1(23), .BITSIZE_in2(4), .BITSIZE_out1(19), .PRECISION(32)) fu_shell_sort_28861_29497 (.out1(out_rshift_expr_FU_32_0_32_60_i3_fu_shell_sort_28861_29497), .in1(out_lshift_expr_FU_32_0_32_45_i1_fu_shell_sort_28861_29212), .in2(out_const_2));
  plus_expr_FU #(.BITSIZE_in1(15), .BITSIZE_in2(19), .BITSIZE_out1(20)) fu_shell_sort_28861_29499 (.out1(out_plus_expr_FU_32_32_32_52_i12_fu_shell_sort_28861_29499), .in1(out_rshift_expr_FU_32_0_32_60_i2_fu_shell_sort_28861_29494), .in2(out_rshift_expr_FU_32_0_32_60_i3_fu_shell_sort_28861_29497));
  lshift_expr_FU #(.BITSIZE_in1(20), .BITSIZE_in2(4), .BITSIZE_out1(24), .PRECISION(32)) fu_shell_sort_28861_29502 (.out1(out_lshift_expr_FU_32_0_32_45_i3_fu_shell_sort_28861_29502), .in1(out_plus_expr_FU_32_32_32_52_i12_fu_shell_sort_28861_29499), .in2(out_const_2));
  bit_and_expr_FU #(.BITSIZE_in1(19), .BITSIZE_in2(5), .BITSIZE_out1(5)) fu_shell_sort_28861_29505 (.out1(out_bit_and_expr_FU_8_0_8_34_i1_fu_shell_sort_28861_29505), .in1(out_bit_ior_concat_expr_FU_36_i1_fu_shell_sort_28861_29162), .in2(out_const_8));
  rshift_expr_FU #(.BITSIZE_in1(24), .BITSIZE_in2(5), .BITSIZE_out1(16), .PRECISION(32)) fu_shell_sort_28861_29509 (.out1(out_rshift_expr_FU_32_0_32_61_i2_fu_shell_sort_28861_29509), .in1(out_bit_ior_concat_expr_FU_38_i1_fu_shell_sort_28861_29215), .in2(out_const_3));
  rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(24), .PRECISION(32)) fu_shell_sort_28861_29512 (.out1(out_rshift_expr_FU_32_0_32_61_i3_fu_shell_sort_28861_29512), .in1(out_lshift_expr_FU_32_0_32_46_i1_fu_shell_sort_28861_29218), .in2(out_const_3));
  plus_expr_FU #(.BITSIZE_in1(16), .BITSIZE_in2(24), .BITSIZE_out1(24)) fu_shell_sort_28861_29514 (.out1(out_plus_expr_FU_32_32_32_52_i13_fu_shell_sort_28861_29514), .in1(out_rshift_expr_FU_32_0_32_61_i2_fu_shell_sort_28861_29509), .in2(out_rshift_expr_FU_32_0_32_61_i3_fu_shell_sort_28861_29512));
  lshift_expr_FU #(.BITSIZE_in1(24), .BITSIZE_in2(5), .BITSIZE_out1(32), .PRECISION(32)) fu_shell_sort_28861_29517 (.out1(out_lshift_expr_FU_32_0_32_46_i3_fu_shell_sort_28861_29517), .in1(out_plus_expr_FU_32_32_32_52_i13_fu_shell_sort_28861_29514), .in2(out_const_3));
  bit_and_expr_FU #(.BITSIZE_in1(24), .BITSIZE_in2(9), .BITSIZE_out1(9)) fu_shell_sort_28861_29520 (.out1(out_bit_and_expr_FU_16_0_16_29_i1_fu_shell_sort_28861_29520), .in1(out_bit_ior_concat_expr_FU_38_i1_fu_shell_sort_28861_29215), .in2(out_const_10));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(7), .PORTSIZE_in1(2), .BITSIZE_out1(14)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerMout_data_ram_size2_0 (.out1(sig_in_bus_mergerMout_data_ram_size2_0), .in1(sig_in_vector_bus_mergerMout_data_ram_size2_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_oe_ram3_0 (.out1(sig_in_bus_mergerMout_oe_ram3_0), .in1(sig_in_vector_bus_mergerMout_oe_ram3_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_we_ram4_0 (.out1(sig_in_bus_mergerMout_we_ram4_0), .in1(sig_in_vector_bus_mergerMout_we_ram4_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_MUX_199_reg_0_0_0_0), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_MUX_200_reg_1_0_0_0), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_7_i0_fu_shell_sort_28861_28989), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_ne_expr_FU_32_0_32_49_i0_fu_shell_sort_28861_29229), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_67_i0_fu_shell_sort_28861_28982), .wenable(wrenable_reg_12));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_8_8_66_i0_fu_shell_sort_28861_29235), .wenable(wrenable_reg_13));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_BMEMORY_CTRLN_28_i0_BMEMORY_CTRLN_28_i0), .wenable(wrenable_reg_14));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_MUX_206_reg_15_0_0_1), .wenable(wrenable_reg_15));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_68_i0_fu_shell_sort_28861_28960), .wenable(wrenable_reg_16));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_gt_expr_FU_32_32_32_40_i0_fu_shell_sort_28861_29231), .wenable(wrenable_reg_17));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_BMEMORY_CTRLN_28_i0_BMEMORY_CTRLN_28_i0), .wenable(wrenable_reg_18));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_19 (.out1(out_reg_19_reg_19), .clock(clock), .reset(reset), .in1(out_MUX_210_reg_19_0_0_0), .wenable(wrenable_reg_19));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_rshift_expr_FU_32_0_32_56_i0_fu_shell_sort_28861_29126), .wenable(wrenable_reg_2));
  register_STD #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_bit_ior_concat_expr_FU_39_i0_fu_shell_sort_28861_29203), .wenable(wrenable_reg_3));
  register_STD #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_bit_ior_concat_expr_FU_39_i1_fu_shell_sort_28861_29221), .wenable(wrenable_reg_4));
  register_STD #(.BITSIZE_in1(16), .BITSIZE_out1(16)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_rshift_expr_FU_32_0_32_57_i5_fu_shell_sort_28861_29413), .wenable(wrenable_reg_5));
  register_STD #(.BITSIZE_in1(31), .BITSIZE_out1(31)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_rshift_expr_FU_32_0_32_57_i6_fu_shell_sort_28861_29416), .wenable(wrenable_reg_6));
  register_STD #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_bit_and_expr_FU_8_0_8_31_i3_fu_shell_sort_28861_29424), .wenable(wrenable_reg_7));
  register_STD #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_ternary_plus_expr_FU_32_32_32_32_63_i0_fu_shell_sort_28861_29122), .wenable(wrenable_reg_8));
  register_SE #(.BITSIZE_in1(31), .BITSIZE_out1(31)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_ternary_mp_expr_FU_32_32_0_32_62_i0_fu_shell_sort_28861_28936), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(14), .BITSIZE_out1(7), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  // io-signal post fix
  assign OUT_CONDITION_shell_sort_28861_28919 = out_read_cond_FU_4_i0_fu_shell_sort_28861_28919;
  assign OUT_CONDITION_shell_sort_28861_28938 = out_read_cond_FU_8_i0_fu_shell_sort_28861_28938;
  assign OUT_CONDITION_shell_sort_28861_29035 = out_read_cond_FU_10_i0_fu_shell_sort_28861_29035;
  assign OUT_CONDITION_shell_sort_28861_29038 = out_read_cond_FU_16_i0_fu_shell_sort_28861_29038;
  assign OUT_CONDITION_shell_sort_28861_29042 = out_read_cond_FU_24_i0_fu_shell_sort_28861_29042;
  assign OUT_CONDITION_shell_sort_28861_29044 = out_read_cond_FU_27_i0_fu_shell_sort_28861_29044;

endmodule

// FSM based controller description for shell_sort
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_shell_sort(done_port, fuselector_BMEMORY_CTRLN_28_i0_LOAD, fuselector_BMEMORY_CTRLN_28_i0_STORE, selector_MUX_0_BMEMORY_CTRLN_28_i0_0_0_0, selector_MUX_199_reg_0_0_0_0, selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0, selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1, selector_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0, selector_MUX_200_reg_1_0_0_0, selector_MUX_206_reg_15_0_0_0, selector_MUX_206_reg_15_0_0_1, selector_MUX_210_reg_19_0_0_0, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_shell_sort_28861_28919, OUT_CONDITION_shell_sort_28861_28938, OUT_CONDITION_shell_sort_28861_29035, OUT_CONDITION_shell_sort_28861_29038, OUT_CONDITION_shell_sort_28861_29042, OUT_CONDITION_shell_sort_28861_29044, clock, reset, start_port);
  // IN
  input OUT_CONDITION_shell_sort_28861_28919;
  input OUT_CONDITION_shell_sort_28861_28938;
  input OUT_CONDITION_shell_sort_28861_29035;
  input OUT_CONDITION_shell_sort_28861_29038;
  input OUT_CONDITION_shell_sort_28861_29042;
  input OUT_CONDITION_shell_sort_28861_29044;
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
          if (OUT_CONDITION_shell_sort_28861_28919 == 1'b1)
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
          if (OUT_CONDITION_shell_sort_28861_28938 == 1'b1)
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
          if (OUT_CONDITION_shell_sort_28861_29042 == 1'b1)
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
          if (OUT_CONDITION_shell_sort_28861_29038 == 1'b1)
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
          if (OUT_CONDITION_shell_sort_28861_29044 == 1'b1)
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
          if (OUT_CONDITION_shell_sort_28861_29035 == 1'b1)
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
  wire OUT_CONDITION_shell_sort_28861_28919;
  wire OUT_CONDITION_shell_sort_28861_28938;
  wire OUT_CONDITION_shell_sort_28861_29035;
  wire OUT_CONDITION_shell_sort_28861_29038;
  wire OUT_CONDITION_shell_sort_28861_29042;
  wire OUT_CONDITION_shell_sort_28861_29044;
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
  
  controller_shell_sort Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_BMEMORY_CTRLN_28_i0_LOAD(fuselector_BMEMORY_CTRLN_28_i0_LOAD), .fuselector_BMEMORY_CTRLN_28_i0_STORE(fuselector_BMEMORY_CTRLN_28_i0_STORE), .selector_MUX_0_BMEMORY_CTRLN_28_i0_0_0_0(selector_MUX_0_BMEMORY_CTRLN_28_i0_0_0_0), .selector_MUX_199_reg_0_0_0_0(selector_MUX_199_reg_0_0_0_0), .selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0(selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0), .selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1(selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1), .selector_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0(selector_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0), .selector_MUX_200_reg_1_0_0_0(selector_MUX_200_reg_1_0_0_0), .selector_MUX_206_reg_15_0_0_0(selector_MUX_206_reg_15_0_0_0), .selector_MUX_206_reg_15_0_0_1(selector_MUX_206_reg_15_0_0_1), .selector_MUX_210_reg_19_0_0_0(selector_MUX_210_reg_19_0_0_0), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_shell_sort_28861_28919(OUT_CONDITION_shell_sort_28861_28919), .OUT_CONDITION_shell_sort_28861_28938(OUT_CONDITION_shell_sort_28861_28938), .OUT_CONDITION_shell_sort_28861_29035(OUT_CONDITION_shell_sort_28861_29035), .OUT_CONDITION_shell_sort_28861_29038(OUT_CONDITION_shell_sort_28861_29038), .OUT_CONDITION_shell_sort_28861_29042(OUT_CONDITION_shell_sort_28861_29042), .OUT_CONDITION_shell_sort_28861_29044(OUT_CONDITION_shell_sort_28861_29044), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_shell_sort Datapath_i (.Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_CONDITION_shell_sort_28861_28919(OUT_CONDITION_shell_sort_28861_28919), .OUT_CONDITION_shell_sort_28861_28938(OUT_CONDITION_shell_sort_28861_28938), .OUT_CONDITION_shell_sort_28861_29035(OUT_CONDITION_shell_sort_28861_29035), .OUT_CONDITION_shell_sort_28861_29038(OUT_CONDITION_shell_sort_28861_29038), .OUT_CONDITION_shell_sort_28861_29042(OUT_CONDITION_shell_sort_28861_29042), .OUT_CONDITION_shell_sort_28861_29044(OUT_CONDITION_shell_sort_28861_29044), .clock(clock), .reset(reset), .in_port_size(size), .in_port_arr(arr), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .fuselector_BMEMORY_CTRLN_28_i0_LOAD(fuselector_BMEMORY_CTRLN_28_i0_LOAD), .fuselector_BMEMORY_CTRLN_28_i0_STORE(fuselector_BMEMORY_CTRLN_28_i0_STORE), .selector_MUX_0_BMEMORY_CTRLN_28_i0_0_0_0(selector_MUX_0_BMEMORY_CTRLN_28_i0_0_0_0), .selector_MUX_199_reg_0_0_0_0(selector_MUX_199_reg_0_0_0_0), .selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0(selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_0), .selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1(selector_MUX_1_BMEMORY_CTRLN_28_i0_1_0_1), .selector_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0(selector_MUX_1_BMEMORY_CTRLN_28_i0_1_1_0), .selector_MUX_200_reg_1_0_0_0(selector_MUX_200_reg_1_0_0_0), .selector_MUX_206_reg_15_0_0_0(selector_MUX_206_reg_15_0_0_0), .selector_MUX_206_reg_15_0_0_1(selector_MUX_206_reg_15_0_0_1), .selector_MUX_210_reg_19_0_0_0(selector_MUX_210_reg_19_0_0_0), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Datapath RTL description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_main(clock, reset, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, selector_IN_UNBOUNDED_main_28864_29053, wrenable_reg_0, OUT_UNBOUNDED_main_28864_29053);
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
  input selector_IN_UNBOUNDED_main_28864_29053;
  input wrenable_reg_0;
  // OUT
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [13:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  output OUT_UNBOUNDED_main_28864_29053;
  // Component and signal declarations
  wire [7:0] null_out_signal_array_28859_0_out1_0;
  wire [7:0] null_out_signal_array_28859_0_out1_1;
  wire [7:0] null_out_signal_array_28859_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_28859_0_proxy_out1_1;
  wire [31:0] out_UUdata_converter_FU_4_i0_fu_main_28864_29241;
  wire [31:0] out_addr_expr_FU_3_i0_fu_main_28864_29065;
  wire [2:0] out_const_0;
  wire [6:0] out_const_1;
  wire [7:0] out_conv_out_const_0_3_8;
  wire [31:0] out_conv_out_const_1_7_32;
  wire [31:0] out_reg_0_reg_0;
  wire s_done_fu_main_28864_29053;
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
  
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(7), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(7), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28859.mem"), .n_elements(6), .data_size(8), .address_space_begin(MEM_var_28859_28864), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(7), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28859_0 (.out1({null_out_signal_array_28859_0_out1_1, null_out_signal_array_28859_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_0), .proxy_out1({null_out_signal_array_28859_0_proxy_out1_1, null_out_signal_array_28859_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({7'b0000000, 7'b0000000}), .in3({4'b0000, 4'b0000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({7'b0000000, 7'b0000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(14), .PORTSIZE_in1(1), .BITSIZE_out1(14)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerSout_DataRdy5_ (.out1(sig_out_bus_mergerSout_DataRdy5_), .in1({sig_in_bus_mergerSout_DataRdy5_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerSout_Rdata_ram6_ (.out1(sig_out_bus_mergerSout_Rdata_ram6_), .in1({sig_in_bus_mergerSout_Rdata_ram6_0}));
  constant_value #(.BITSIZE_out1(3), .value(3'b110)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(7), .value(MEM_var_28859_28864)) const_1 (.out1(out_const_1));
  UUdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(8)) conv_out_const_0_3_8 (.out1(out_conv_out_const_0_3_8), .in1(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(32)) conv_out_const_1_7_32 (.out1(out_conv_out_const_1_7_32), .in1(out_const_1));
  shell_sort fu_main_28864_29053 (.done_port(s_done_fu_main_28864_29053), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28864_29053), .size(out_conv_out_const_0_3_8), .arr(out_reg_0_reg_0), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_main_28864_29065 (.out1(out_addr_expr_FU_3_i0_fu_main_28864_29065), .in1(out_conv_out_const_1_7_32));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_main_28864_29241 (.out1(out_UUdata_converter_FU_4_i0_fu_main_28864_29241), .in1(out_addr_expr_FU_3_i0_fu_main_28864_29065));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(7), .PORTSIZE_in1(2), .BITSIZE_out1(14)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerMout_data_ram_size2_0 (.out1(sig_in_bus_mergerMout_data_ram_size2_0), .in1(sig_in_vector_bus_mergerMout_data_ram_size2_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_oe_ram3_0 (.out1(sig_in_bus_mergerMout_oe_ram3_0), .in1(sig_in_vector_bus_mergerMout_oe_ram3_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_we_ram4_0 (.out1(sig_in_bus_mergerMout_we_ram4_0), .in1(sig_in_vector_bus_mergerMout_we_ram4_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_0 (.out1(sig_in_bus_mergerSout_DataRdy5_0), .in1(sig_in_vector_bus_mergerSout_DataRdy5_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_0 (.out1(sig_in_bus_mergerSout_Rdata_ram6_0), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_4_i0_fu_main_28864_29241), .wenable(wrenable_reg_0));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(14), .BITSIZE_out1(7), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy5_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy5_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram6_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram6_));
  // io-signal post fix
  assign OUT_UNBOUNDED_main_28864_29053 = s_done_fu_main_28864_29053;

endmodule

// FSM based controller description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_main(done_port, selector_IN_UNBOUNDED_main_28864_29053, wrenable_reg_0, OUT_UNBOUNDED_main_28864_29053, clock, reset, start_port);
  // IN
  input OUT_UNBOUNDED_main_28864_29053;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_IN_UNBOUNDED_main_28864_29053;
  output wrenable_reg_0;
  parameter [3:0] S_0 = 4'b0001,
    S_1 = 4'b0010,
    S_2 = 4'b0100,
    S_3 = 4'b1000;
  reg [3:0] _present_state, _next_state;
  reg done_port;
  reg selector_IN_UNBOUNDED_main_28864_29053;
  reg wrenable_reg_0;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    selector_IN_UNBOUNDED_main_28864_29053 = 1'b0;
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
          selector_IN_UNBOUNDED_main_28864_29053 = 1'b1;
          if (OUT_UNBOUNDED_main_28864_29053 == 1'b0)
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
          if (OUT_UNBOUNDED_main_28864_29053 == 1'b0)
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
  wire OUT_UNBOUNDED_main_28864_29053;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire selector_IN_UNBOUNDED_main_28864_29053;
  wire wrenable_reg_0;
  
  controller_main Controller_i (.done_port(done_delayed_REG_signal_in), .selector_IN_UNBOUNDED_main_28864_29053(selector_IN_UNBOUNDED_main_28864_29053), .wrenable_reg_0(wrenable_reg_0), .OUT_UNBOUNDED_main_28864_29053(OUT_UNBOUNDED_main_28864_29053), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_main #(.MEM_var_28859_28864(MEM_var_28859_28864)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_UNBOUNDED_main_28864_29053(OUT_UNBOUNDED_main_28864_29053), .clock(clock), .reset(reset), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .selector_IN_UNBOUNDED_main_28864_29053(selector_IN_UNBOUNDED_main_28864_29053), .wrenable_reg_0(wrenable_reg_0));
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


