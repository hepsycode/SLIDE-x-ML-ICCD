// 
// Politecnico di Milano
// Code created using PandA - Version: PandA 0.9.6 - Revision 891ec3caed502474cab0813cc4a9fc678deabaa5 - Date 2022-06-14T17:23:54
// bambu executed with: bambu -I/home/dews/Scrivania/bambu-hls/RESULTS/Bambu/xc7z020-1clg484-Zynq-7000/28x28/quicksort/includes/values_76 --simulate --simulator=VERILATOR --clock-period=5 --device-name=xc7z020-1clg484-VVD /home/dews/Scrivania/bambu-hls/cc4cs_bambu/benchmarkBasic/quicksort/thrd.c 
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
module ARRAY_1D_STD_DISTRAM_NN_SDS(clock, reset, in1, in2, in3, in4, out1, sel_LOAD, sel_STORE, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, Sin_Rdata_ram, Sout_Rdata_ram, S_data_ram_size, Sin_DataRdy, Sout_DataRdy, proxy_in1, proxy_in2, proxy_in3, proxy_sel_LOAD, proxy_sel_STORE, proxy_out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_in2=1, PORTSIZE_in2=2, BITSIZE_in3=1, PORTSIZE_in3=2, BITSIZE_in4=1, PORTSIZE_in4=2, BITSIZE_sel_LOAD=1, PORTSIZE_sel_LOAD=2, BITSIZE_sel_STORE=1, PORTSIZE_sel_STORE=2, BITSIZE_S_oe_ram=1, PORTSIZE_S_oe_ram=2, BITSIZE_S_we_ram=1, PORTSIZE_S_we_ram=2, BITSIZE_out1=1, PORTSIZE_out1=2, BITSIZE_S_addr_ram=1, PORTSIZE_S_addr_ram=2, BITSIZE_S_Wdata_ram=8, PORTSIZE_S_Wdata_ram=2, BITSIZE_Sin_Rdata_ram=8, PORTSIZE_Sin_Rdata_ram=2, BITSIZE_Sout_Rdata_ram=8, PORTSIZE_Sout_Rdata_ram=2, BITSIZE_S_data_ram_size=1, PORTSIZE_S_data_ram_size=2, BITSIZE_Sin_DataRdy=1, PORTSIZE_Sin_DataRdy=2, BITSIZE_Sout_DataRdy=1, PORTSIZE_Sout_DataRdy=2, MEMORY_INIT_file="array.mem", n_elements=1, data_size=32, address_space_begin=0, address_space_rangesize=4, BUS_PIPELINED=1, BRAM_BITSIZE=32, PRIVATE_MEMORY=0, READ_ONLY_MEMORY=0, USE_SPARSE_MEMORY=1, BITSIZE_proxy_in1=1, PORTSIZE_proxy_in1=2, BITSIZE_proxy_in2=1, PORTSIZE_proxy_in2=2, BITSIZE_proxy_in3=1, PORTSIZE_proxy_in3=2, BITSIZE_proxy_sel_LOAD=1, PORTSIZE_proxy_sel_LOAD=2, BITSIZE_proxy_sel_STORE=1, PORTSIZE_proxy_sel_STORE=2, BITSIZE_proxy_out1=1, PORTSIZE_proxy_out1=2;
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
  parameter n_mem_elements = n_bytes/(n_byte_on_databus) + (n_bytes % (n_byte_on_databus) == 0 ? 0 : 1);
  parameter nbit_addr = BITSIZE_in2 > BITSIZE_proxy_in2 ? BITSIZE_in2 : BITSIZE_proxy_in2;
  `ifdef _SIM_HAVE_CLOG2
    parameter nbit_read_addr = n_mem_elements == 1 ? 1 : $clog2(n_mem_elements);
    parameter nbits_byte_offset = n_byte_on_databus==1 ? 0 : $clog2(n_byte_on_databus);
  `else
    parameter nbit_read_addr = n_mem_elements == 1 ? 1 : log2(n_mem_elements);
    parameter nbits_byte_offset = n_byte_on_databus==1 ? 0 : log2(n_byte_on_databus);
  `endif
  parameter max_n_writes = PORTSIZE_sel_STORE;
  parameter max_n_reads = PORTSIZE_sel_LOAD;
  parameter max_n_rw = max_n_writes > max_n_reads ? max_n_writes : max_n_reads;
  
  wire [max_n_writes-1:0] bram_write;
  
  wire [nbit_read_addr*max_n_rw-1:0] memory_addr_a;
  wire [nbit_read_addr-1:0] memory_addr_a_0;
  wire [nbit_read_addr-1:0] memory_addr_a_1;
  
  wire [data_size*max_n_writes-1:0] din_value_aggregated;
  wire [data_size*max_n_reads-1:0] dout_a;
  wire [nbit_addr*max_n_rw-1:0] tmp_addr;
  wire [nbit_addr*max_n_rw-1:0] relative_addr;
  wire [PORTSIZE_sel_LOAD-1:0] int_sel_LOAD;
  wire [PORTSIZE_sel_STORE-1:0] int_sel_STORE;
  integer index2;
  
  reg [data_size-1:0] memory [0:n_elements-1] /* synthesis syn_ramstyle = "no_rw_check" */;
  
  initial
  begin
    $readmemb(MEMORY_INIT_file, memory, 0, n_elements-1);
  end
  
  generate
  genvar ind2;
  for (ind2=0; ind2<max_n_rw; ind2=ind2+1)
    begin : Lind2
      assign tmp_addr[(ind2+1)*nbit_addr-1:ind2*nbit_addr] = (proxy_sel_LOAD[ind2]||proxy_sel_STORE[ind2]) ? proxy_in2[(ind2+1)*BITSIZE_proxy_in2-1:ind2*BITSIZE_proxy_in2] : in2[(ind2+1)*BITSIZE_in2-1:ind2*BITSIZE_in2];
    end
  endgenerate
  
  generate
  genvar i6;
    for (i6=0; i6<max_n_rw; i6=i6+1)
    begin : L6
      if(USE_SPARSE_MEMORY==1)
        assign relative_addr[(i6)*nbit_addr+nbit_addr-1:i6*nbit_addr] = tmp_addr[(i6)*nbit_addr+nbit_addr-1:i6*nbit_addr];
      else
        assign relative_addr[(i6+1)*nbit_addr-1:i6*nbit_addr] = tmp_addr[(i6+1)*nbit_addr-1:i6*nbit_addr]-address_space_begin;
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
  genvar i14;
    for (i14=0; i14<max_n_writes; i14=i14+1)
    begin : L14
      assign din_value_aggregated[(i14+1)*data_size-1:i14*data_size] = proxy_sel_STORE[i14] ? proxy_in1[(i14+1)*BITSIZE_proxy_in1-1:i14*BITSIZE_proxy_in1] : in1[(i14+1)*BITSIZE_in1-1:i14*BITSIZE_in1];
    end
  endgenerate
  
  generate
  genvar i11;
    for (i11=0; i11<max_n_reads; i11=i11+1)
    begin : asynchronous_read
      assign dout_a[data_size*i11+:data_size] = memory[memory_addr_a[nbit_read_addr*i11+:nbit_read_addr]];
    end
  endgenerate
  
  assign memory_addr_a_0 = memory_addr_a[nbit_read_addr*0+:nbit_read_addr];
  assign memory_addr_a_1 = memory_addr_a[nbit_read_addr*1+:nbit_read_addr];
  
  generate if(READ_ONLY_MEMORY==0)
    always @(posedge clock)
    begin
      if(bram_write[0])
        memory[memory_addr_a_0] <= din_value_aggregated[data_size*0+:data_size];
      if(bram_write[1])
        memory[memory_addr_a_1] <= din_value_aggregated[data_size*1+:data_size];
    end
  endgenerate
  
  generate
  genvar i21;
    for (i21=0; i21<max_n_writes; i21=i21+1)
    begin : L21
        assign bram_write[i21] = int_sel_STORE[i21] || proxy_sel_STORE[i21];
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
  assign Sout_Rdata_ram =Sin_Rdata_ram;
  assign Sout_DataRdy = Sin_DataRdy;
  assign int_sel_LOAD = sel_LOAD & in4;
  assign int_sel_STORE = sel_STORE & in4;
  
  assign Sout_DataRdy = Sin_DataRdy;

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

// Datapath RTL description for quicksortF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_quicksortF(clock, reset, in_port_arr, M_Rdata_ram, M_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE, fuselector_BMEMORY_CTRLN_65_i0_LOAD, fuselector_BMEMORY_CTRLN_65_i0_STORE, selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0, selector_MUX_112_reg_14_0_0_0, selector_MUX_113_reg_15_0_0_0, selector_MUX_114_reg_16_0_0_0, selector_MUX_123_reg_24_0_0_0, selector_MUX_126_reg_27_0_0_0, selector_MUX_127_reg_28_0_0_0, selector_MUX_131_reg_31_0_0_0, selector_MUX_131_reg_31_0_0_1, selector_MUX_140_reg_9_0_0_0, selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0, selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_1, selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_0, selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_1, selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_0, selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_1, selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_1_0, selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_0, selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_1, selector_MUX_8_BMEMORY_CTRLN_65_i0_0_1_0, selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_0, selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_1, selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_2, selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_0, selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_1, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_29, wrenable_reg_3, wrenable_reg_30, wrenable_reg_31, wrenable_reg_32, wrenable_reg_33, wrenable_reg_34, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_quicksortF_28866_29328, OUT_CONDITION_quicksortF_28866_29336, OUT_CONDITION_quicksortF_28866_29339, OUT_CONDITION_quicksortF_28866_29345, OUT_CONDITION_quicksortF_28866_29356, OUT_MULTIIF_quicksortF_28866_29666);
  parameter MEM_var_29111_28866=32;
  // IN
  input clock;
  input reset;
  input [31:0] in_port_arr;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [13:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE;
  input fuselector_BMEMORY_CTRLN_65_i0_LOAD;
  input fuselector_BMEMORY_CTRLN_65_i0_STORE;
  input selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0;
  input selector_MUX_112_reg_14_0_0_0;
  input selector_MUX_113_reg_15_0_0_0;
  input selector_MUX_114_reg_16_0_0_0;
  input selector_MUX_123_reg_24_0_0_0;
  input selector_MUX_126_reg_27_0_0_0;
  input selector_MUX_127_reg_28_0_0_0;
  input selector_MUX_131_reg_31_0_0_0;
  input selector_MUX_131_reg_31_0_0_1;
  input selector_MUX_140_reg_9_0_0_0;
  input selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0;
  input selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_1;
  input selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_0;
  input selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_1;
  input selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_0;
  input selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_1;
  input selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_1_0;
  input selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_0;
  input selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_1;
  input selector_MUX_8_BMEMORY_CTRLN_65_i0_0_1_0;
  input selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_0;
  input selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_1;
  input selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_2;
  input selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_0;
  input selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_1;
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
  output OUT_CONDITION_quicksortF_28866_29328;
  output OUT_CONDITION_quicksortF_28866_29336;
  output OUT_CONDITION_quicksortF_28866_29339;
  output OUT_CONDITION_quicksortF_28866_29345;
  output OUT_CONDITION_quicksortF_28866_29356;
  output [1:0] OUT_MULTIIF_quicksortF_28866_29666;
  // Component and signal declarations
  wire [7:0] null_out_signal_BMEMORY_CTRLN_65_i0_out1_1;
  wire null_out_signal_array_29111_0_Sout_DataRdy_0;
  wire null_out_signal_array_29111_0_Sout_DataRdy_1;
  wire [7:0] null_out_signal_array_29111_0_Sout_Rdata_ram_0;
  wire [7:0] null_out_signal_array_29111_0_Sout_Rdata_ram_1;
  wire [7:0] null_out_signal_array_29111_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_29111_0_proxy_out1_1;
  wire [7:0] out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_array_29111_0;
  wire [7:0] out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_array_29111_0;
  wire [7:0] out_BMEMORY_CTRLN_65_i0_BMEMORY_CTRLN_65_i0;
  wire signed [7:0] out_IIdata_converter_FU_52_i0_fu_quicksortF_28866_29292;
  wire [7:0] out_IUdata_converter_FU_16_i0_fu_quicksortF_28866_29255;
  wire [7:0] out_IUdata_converter_FU_17_i0_fu_quicksortF_28866_29174;
  wire [7:0] out_IUdata_converter_FU_21_i0_fu_quicksortF_28866_29222;
  wire [6:0] out_IUdata_converter_FU_22_i0_fu_quicksortF_28866_29449;
  wire [6:0] out_IUdata_converter_FU_56_i0_fu_quicksortF_28866_29521;
  wire [6:0] out_IUdata_converter_FU_57_i0_fu_quicksortF_28866_29534;
  wire [6:0] out_IUdata_converter_FU_60_i0_fu_quicksortF_28866_29466;
  wire [6:0] out_IUdata_converter_FU_61_i0_fu_quicksortF_28866_29479;
  wire [7:0] out_IUdata_converter_FU_63_i0_fu_quicksortF_28866_29275;
  wire [7:0] out_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0;
  wire [7:0] out_MUX_112_reg_14_0_0_0;
  wire [7:0] out_MUX_113_reg_15_0_0_0;
  wire [7:0] out_MUX_114_reg_16_0_0_0;
  wire [31:0] out_MUX_123_reg_24_0_0_0;
  wire [7:0] out_MUX_126_reg_27_0_0_0;
  wire [7:0] out_MUX_127_reg_28_0_0_0;
  wire [31:0] out_MUX_131_reg_31_0_0_0;
  wire [31:0] out_MUX_131_reg_31_0_0_1;
  wire [7:0] out_MUX_140_reg_9_0_0_0;
  wire [6:0] out_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0;
  wire [6:0] out_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_1;
  wire [7:0] out_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_0;
  wire [7:0] out_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_1;
  wire [6:0] out_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_0;
  wire [6:0] out_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_1;
  wire [6:0] out_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_1_0;
  wire [7:0] out_MUX_8_BMEMORY_CTRLN_65_i0_0_0_0;
  wire [7:0] out_MUX_8_BMEMORY_CTRLN_65_i0_0_0_1;
  wire [7:0] out_MUX_8_BMEMORY_CTRLN_65_i0_0_1_0;
  wire [6:0] out_MUX_9_BMEMORY_CTRLN_65_i0_1_0_0;
  wire [6:0] out_MUX_9_BMEMORY_CTRLN_65_i0_1_0_1;
  wire [6:0] out_MUX_9_BMEMORY_CTRLN_65_i0_1_0_2;
  wire [6:0] out_MUX_9_BMEMORY_CTRLN_65_i0_1_1_0;
  wire [6:0] out_MUX_9_BMEMORY_CTRLN_65_i0_1_1_1;
  wire signed [8:0] out_UIdata_converter_FU_18_i0_fu_quicksortF_28866_29325;
  wire signed [8:0] out_UIdata_converter_FU_19_i0_fu_quicksortF_28866_29326;
  wire signed [8:0] out_UIdata_converter_FU_36_i0_fu_quicksortF_28866_29338;
  wire signed [8:0] out_UIdata_converter_FU_51_i0_fu_quicksortF_28866_29298;
  wire [7:0] out_UUdata_converter_FU_20_i0_fu_quicksortF_28866_29251;
  wire [7:0] out_UUdata_converter_FU_34_i0_fu_quicksortF_28866_29165;
  wire [7:0] out_UUdata_converter_FU_35_i0_fu_quicksortF_28866_29210;
  wire [5:0] out_UUdata_converter_FU_4_i0_fu_quicksortF_28866_29402;
  wire [7:0] out_UUdata_converter_FU_50_i0_fu_quicksortF_28866_29236;
  wire [7:0] out_UUdata_converter_FU_64_i0_fu_quicksortF_28866_29272;
  wire [5:0] out_addr_expr_FU_3_i0_fu_quicksortF_28866_29436;
  wire signed [8:0] out_bit_and_expr_FU_16_0_16_66_i0_fu_quicksortF_28866_29343;
  wire signed [31:0] out_bit_ior_concat_expr_FU_67_i0_fu_quicksortF_28866_29195;
  wire signed [31:0] out_bit_ior_concat_expr_FU_67_i1_fu_quicksortF_28866_29314;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [5:0] out_const_10;
  wire [7:0] out_const_2;
  wire [1:0] out_const_3;
  wire [4:0] out_const_4;
  wire [3:0] out_const_5;
  wire [8:0] out_const_6;
  wire out_const_7;
  wire [1:0] out_const_8;
  wire [2:0] out_const_9;
  wire [6:0] out_conv_out_UUdata_converter_FU_4_i0_fu_quicksortF_28866_29402_6_7;
  wire [31:0] out_conv_out_const_10_6_32;
  wire [3:0] out_conv_out_const_4_5_4;
  wire [31:0] out_conv_out_i_assign_conn_obj_2_ASSIGN_SIGNED_FU_i_assign_0_I_2_32;
  wire [7:0] out_conv_out_i_assign_conn_obj_3_ASSIGN_SIGNED_FU_i_assign_1_I_4_8;
  wire [7:0] out_conv_out_i_assign_conn_obj_4_ASSIGN_SIGNED_FU_i_assign_2_I_1_8;
  wire [6:0] out_conv_out_reg_1_reg_1_6_7;
  wire [6:0] out_conv_out_reg_25_reg_25_6_7;
  wire [6:0] out_conv_out_reg_26_reg_26_6_7;
  wire [6:0] out_conv_out_reg_32_reg_32_6_7;
  wire [6:0] out_conv_out_reg_33_reg_33_6_7;
  wire [6:0] out_conv_out_reg_7_reg_7_6_7;
  wire out_ge_expr_FU_32_0_32_68_i0_fu_quicksortF_28866_29488;
  wire out_ge_expr_FU_32_0_32_68_i1_fu_quicksortF_28866_29515;
  wire out_gt_expr_FU_16_16_16_69_i0_fu_quicksortF_28866_29561;
  wire signed [1:0] out_i_assign_conn_obj_2_ASSIGN_SIGNED_FU_i_assign_0;
  wire signed [3:0] out_i_assign_conn_obj_3_ASSIGN_SIGNED_FU_i_assign_1;
  wire signed [0:0] out_i_assign_conn_obj_4_ASSIGN_SIGNED_FU_i_assign_2;
  wire [7:0] out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_3;
  wire [7:0] out_iu_conv_conn_obj_10_IUdata_converter_FU_iu_conv_5;
  wire [7:0] out_iu_conv_conn_obj_11_IUdata_converter_FU_iu_conv_6;
  wire [7:0] out_iu_conv_conn_obj_1_IUdata_converter_FU_iu_conv_4;
  wire [7:0] out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_7;
  wire [7:0] out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_8;
  wire [7:0] out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_9;
  wire [7:0] out_iu_conv_conn_obj_8_IUdata_converter_FU_iu_conv_10;
  wire [7:0] out_iu_conv_conn_obj_9_IUdata_converter_FU_iu_conv_11;
  wire out_le_expr_FU_16_16_16_70_i0_fu_quicksortF_28866_29553;
  wire out_le_expr_FU_16_16_16_70_i1_fu_quicksortF_28866_29557;
  wire out_le_expr_FU_8_8_8_71_i0_fu_quicksortF_28866_29555;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_72_i0_fu_quicksortF_28866_29580;
  wire signed [31:0] out_lshift_expr_FU_32_0_32_72_i1_fu_quicksortF_28866_29593;
  wire out_lt_expr_FU_16_16_16_73_i0_fu_quicksortF_28866_29559;
  wire [1:0] out_multi_read_cond_FU_58_i0_fu_quicksortF_28866_29666;
  wire signed [9:0] out_plus_expr_FU_16_0_16_74_i0_fu_quicksortF_28866_29295;
  wire signed [9:0] out_plus_expr_FU_16_0_16_74_i1_fu_quicksortF_28866_29351;
  wire signed [31:0] out_plus_expr_FU_32_0_32_75_i0_fu_quicksortF_28866_29183;
  wire signed [31:0] out_plus_expr_FU_32_0_32_76_i0_fu_quicksortF_28866_29301;
  wire signed [30:0] out_plus_expr_FU_32_0_32_77_i0_fu_quicksortF_28866_29577;
  wire signed [30:0] out_plus_expr_FU_32_0_32_78_i0_fu_quicksortF_28866_29590;
  wire signed [7:0] out_plus_expr_FU_8_0_8_79_i0_fu_quicksortF_28866_29225;
  wire signed [7:0] out_plus_expr_FU_8_0_8_80_i0_fu_quicksortF_28866_29288;
  wire signed [7:0] out_plus_expr_FU_8_0_8_81_i0_fu_quicksortF_28866_29305;
  wire signed [8:0] out_plus_expr_FU_8_0_8_82_i0_fu_quicksortF_28866_29327;
  wire signed [8:0] out_plus_expr_FU_8_0_8_82_i1_fu_quicksortF_28866_29344;
  wire out_read_cond_FU_23_i0_fu_quicksortF_28866_29328;
  wire out_read_cond_FU_37_i0_fu_quicksortF_28866_29336;
  wire out_read_cond_FU_41_i0_fu_quicksortF_28866_29339;
  wire out_read_cond_FU_53_i0_fu_quicksortF_28866_29345;
  wire out_read_cond_FU_62_i0_fu_quicksortF_28866_29356;
  wire [5:0] out_reg_0_reg_0;
  wire [6:0] out_reg_10_reg_10;
  wire [7:0] out_reg_11_reg_11;
  wire out_reg_12_reg_12;
  wire [7:0] out_reg_13_reg_13;
  wire [7:0] out_reg_14_reg_14;
  wire [7:0] out_reg_15_reg_15;
  wire [7:0] out_reg_16_reg_16;
  wire [6:0] out_reg_17_reg_17;
  wire [7:0] out_reg_18_reg_18;
  wire [7:0] out_reg_19_reg_19;
  wire [5:0] out_reg_1_reg_1;
  wire [8:0] out_reg_20_reg_20;
  wire [9:0] out_reg_21_reg_21;
  wire out_reg_22_reg_22;
  wire [7:0] out_reg_23_reg_23;
  wire [31:0] out_reg_24_reg_24;
  wire [5:0] out_reg_25_reg_25;
  wire [5:0] out_reg_26_reg_26;
  wire [7:0] out_reg_27_reg_27;
  wire [7:0] out_reg_28_reg_28;
  wire [6:0] out_reg_29_reg_29;
  wire [6:0] out_reg_2_reg_2;
  wire [7:0] out_reg_30_reg_30;
  wire [31:0] out_reg_31_reg_31;
  wire [5:0] out_reg_32_reg_32;
  wire [5:0] out_reg_33_reg_33;
  wire out_reg_34_reg_34;
  wire [6:0] out_reg_3_reg_3;
  wire [8:0] out_reg_4_reg_4;
  wire [8:0] out_reg_5_reg_5;
  wire [8:0] out_reg_6_reg_6;
  wire [5:0] out_reg_7_reg_7;
  wire [6:0] out_reg_8_reg_8;
  wire [7:0] out_reg_9_reg_9;
  wire signed [30:0] out_rshift_expr_FU_32_0_32_83_i0_fu_quicksortF_28866_29572;
  wire signed [30:0] out_rshift_expr_FU_32_0_32_83_i1_fu_quicksortF_28866_29588;
  wire out_truth_and_expr_FU_1_1_1_84_i0_fu_quicksortF_28866_29672;
  wire out_truth_not_expr_FU_1_1_85_i0_fu_quicksortF_28866_29669;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_86_i0_fu_quicksortF_28866_29201;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_86_i1_fu_quicksortF_28866_29214;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_87_i0_fu_quicksortF_28866_29233;
  wire [5:0] out_ui_pointer_plus_expr_FU_8_0_8_88_i0_fu_quicksortF_28866_29426;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_0_8_89_i0_fu_quicksortF_28866_29430;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_8_8_90_i0_fu_quicksortF_28866_29162;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_8_8_90_i1_fu_quicksortF_28866_29207;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_8_8_90_i2_fu_quicksortF_28866_29230;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_8_8_90_i3_fu_quicksortF_28866_29248;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_8_8_90_i4_fu_quicksortF_28866_29269;
  wire [5:0] out_ui_pointer_plus_expr_FU_8_8_8_90_i5_fu_quicksortF_28866_29455;
  wire [5:0] out_ui_pointer_plus_expr_FU_8_8_8_90_i6_fu_quicksortF_28866_29472;
  wire [5:0] out_ui_pointer_plus_expr_FU_8_8_8_90_i7_fu_quicksortF_28866_29485;
  wire [5:0] out_ui_pointer_plus_expr_FU_8_8_8_90_i8_fu_quicksortF_28866_29527;
  wire [5:0] out_ui_pointer_plus_expr_FU_8_8_8_90_i9_fu_quicksortF_28866_29540;
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
  
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) ASSIGN_SIGNED_FU_i_assign_0 (.out1(out_i_assign_conn_obj_2_ASSIGN_SIGNED_FU_i_assign_0), .in1(out_const_3));
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(4), .BITSIZE_out1(4)) ASSIGN_SIGNED_FU_i_assign_1 (.out1(out_i_assign_conn_obj_3_ASSIGN_SIGNED_FU_i_assign_1), .in1(out_const_5));
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_SIGNED_FU_i_assign_2 (.out1(out_i_assign_conn_obj_4_ASSIGN_SIGNED_FU_i_assign_2), .in1(out_const_0));
  BMEMORY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(7), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_Min_oe_ram(1), .PORTSIZE_Min_oe_ram(2), .BITSIZE_Min_we_ram(1), .PORTSIZE_Min_we_ram(2), .BITSIZE_Mout_oe_ram(1), .PORTSIZE_Mout_oe_ram(2), .BITSIZE_Mout_we_ram(1), .PORTSIZE_Mout_we_ram(2), .BITSIZE_M_DataRdy(1), .PORTSIZE_M_DataRdy(2), .BITSIZE_Min_addr_ram(7), .PORTSIZE_Min_addr_ram(2), .BITSIZE_Mout_addr_ram(7), .PORTSIZE_Mout_addr_ram(2), .BITSIZE_M_Rdata_ram(8), .PORTSIZE_M_Rdata_ram(2), .BITSIZE_Min_Wdata_ram(8), .PORTSIZE_Min_Wdata_ram(2), .BITSIZE_Mout_Wdata_ram(8), .PORTSIZE_Mout_Wdata_ram(2), .BITSIZE_Min_data_ram_size(4), .PORTSIZE_Min_data_ram_size(2), .BITSIZE_Mout_data_ram_size(4), .PORTSIZE_Mout_data_ram_size(2)) BMEMORY_CTRLN_65_i0 (.out1({null_out_signal_BMEMORY_CTRLN_65_i0_out1_1, out_BMEMORY_CTRLN_65_i0_BMEMORY_CTRLN_65_i0}), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .in1({8'b00000000, out_MUX_8_BMEMORY_CTRLN_65_i0_0_1_0}), .in2({7'b0000000, out_MUX_9_BMEMORY_CTRLN_65_i0_1_1_1}), .in3({4'b0000, out_conv_out_const_4_5_4}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_BMEMORY_CTRLN_65_i0_LOAD}), .sel_STORE({1'b0, fuselector_BMEMORY_CTRLN_65_i0_STORE}), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .M_Rdata_ram(M_Rdata_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .M_DataRdy(M_DataRdy));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_10 (.out1(out_iu_conv_conn_obj_8_IUdata_converter_FU_iu_conv_10), .in1(out_reg_23_reg_23));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_11 (.out1(out_iu_conv_conn_obj_9_IUdata_converter_FU_iu_conv_11), .in1(out_reg_18_reg_18));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_3 (.out1(out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_3), .in1(out_const_1));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_4 (.out1(out_iu_conv_conn_obj_1_IUdata_converter_FU_iu_conv_4), .in1(out_const_2));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_5 (.out1(out_iu_conv_conn_obj_10_IUdata_converter_FU_iu_conv_5), .in1(out_reg_30_reg_30));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_6 (.out1(out_iu_conv_conn_obj_11_IUdata_converter_FU_iu_conv_6), .in1(out_reg_28_reg_28));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_7 (.out1(out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_7), .in1(out_reg_23_reg_23));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_8 (.out1(out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_8), .in1(out_reg_13_reg_13));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_9 (.out1(out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_9), .in1(out_reg_15_reg_15));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0 (.out1(out_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0), .sel(selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0), .in1(out_iu_conv_conn_obj_10_IUdata_converter_FU_iu_conv_5), .in2(out_iu_conv_conn_obj_11_IUdata_converter_FU_iu_conv_6));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_112_reg_14_0_0_0 (.out1(out_MUX_112_reg_14_0_0_0), .sel(selector_MUX_112_reg_14_0_0_0), .in1(out_reg_11_reg_11), .in2(out_IUdata_converter_FU_21_i0_fu_quicksortF_28866_29222));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_113_reg_15_0_0_0 (.out1(out_MUX_113_reg_15_0_0_0), .sel(selector_MUX_113_reg_15_0_0_0), .in1(out_reg_23_reg_23), .in2(out_BMEMORY_CTRLN_65_i0_BMEMORY_CTRLN_65_i0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_114_reg_16_0_0_0 (.out1(out_MUX_114_reg_16_0_0_0), .sel(selector_MUX_114_reg_16_0_0_0), .in1(out_reg_14_reg_14), .in2(out_IUdata_converter_FU_21_i0_fu_quicksortF_28866_29222));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_123_reg_24_0_0_0 (.out1(out_MUX_123_reg_24_0_0_0), .sel(selector_MUX_123_reg_24_0_0_0), .in1(out_reg_31_reg_31), .in2(out_bit_ior_concat_expr_FU_67_i0_fu_quicksortF_28866_29195));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_126_reg_27_0_0_0 (.out1(out_MUX_126_reg_27_0_0_0), .sel(selector_MUX_126_reg_27_0_0_0), .in1(out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_array_29111_0), .in2(out_conv_out_i_assign_conn_obj_4_ASSIGN_SIGNED_FU_i_assign_2_I_1_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_127_reg_28_0_0_0 (.out1(out_MUX_127_reg_28_0_0_0), .sel(selector_MUX_127_reg_28_0_0_0), .in1(out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_array_29111_0), .in2(out_conv_out_i_assign_conn_obj_3_ASSIGN_SIGNED_FU_i_assign_1_I_4_8));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_131_reg_31_0_0_0 (.out1(out_MUX_131_reg_31_0_0_0), .sel(selector_MUX_131_reg_31_0_0_0), .in1(out_reg_24_reg_24), .in2(out_bit_ior_concat_expr_FU_67_i1_fu_quicksortF_28866_29314));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_131_reg_31_0_0_1 (.out1(out_MUX_131_reg_31_0_0_1), .sel(selector_MUX_131_reg_31_0_0_1), .in1(out_conv_out_i_assign_conn_obj_2_ASSIGN_SIGNED_FU_i_assign_0_I_2_32), .in2(out_MUX_131_reg_31_0_0_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_140_reg_9_0_0_0 (.out1(out_MUX_140_reg_9_0_0_0), .sel(selector_MUX_140_reg_9_0_0_0), .in1(out_IUdata_converter_FU_17_i0_fu_quicksortF_28866_29174), .in2(out_ui_plus_expr_FU_8_0_8_86_i0_fu_quicksortF_28866_29201));
  MUX_GATE #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(7)) MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0 (.out1(out_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0), .sel(selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0), .in1(out_conv_out_reg_33_reg_33_6_7), .in2(out_conv_out_reg_32_reg_32_6_7));
  MUX_GATE #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(7)) MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_1 (.out1(out_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_1), .sel(selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_1), .in1(out_conv_out_reg_26_reg_26_6_7), .in2(out_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_0 (.out1(out_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_0), .sel(selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_0), .in1(out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_3), .in2(out_iu_conv_conn_obj_1_IUdata_converter_FU_iu_conv_4));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_1 (.out1(out_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_1), .sel(selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_1), .in1(out_iu_conv_conn_obj_9_IUdata_converter_FU_iu_conv_11), .in2(out_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_0));
  MUX_GATE #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(7)) MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_0 (.out1(out_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_0), .sel(selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_0), .in1(out_conv_out_reg_7_reg_7_6_7), .in2(out_conv_out_reg_25_reg_25_6_7));
  MUX_GATE #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(7)) MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_1 (.out1(out_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_1), .sel(selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_1), .in1(out_conv_out_reg_1_reg_1_6_7), .in2(out_conv_out_UUdata_converter_FU_4_i0_fu_quicksortF_28866_29402_6_7));
  MUX_GATE #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(7)) MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_1_0 (.out1(out_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_1_0), .sel(selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_1_0), .in1(out_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_0), .in2(out_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_1));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_8_BMEMORY_CTRLN_65_i0_0_0_0 (.out1(out_MUX_8_BMEMORY_CTRLN_65_i0_0_0_0), .sel(selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_0), .in1(out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_7), .in2(out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_8_BMEMORY_CTRLN_65_i0_0_0_1 (.out1(out_MUX_8_BMEMORY_CTRLN_65_i0_0_0_1), .sel(selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_1), .in1(out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_9), .in2(out_iu_conv_conn_obj_8_IUdata_converter_FU_iu_conv_10));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_8_BMEMORY_CTRLN_65_i0_0_1_0 (.out1(out_MUX_8_BMEMORY_CTRLN_65_i0_0_1_0), .sel(selector_MUX_8_BMEMORY_CTRLN_65_i0_0_1_0), .in1(out_MUX_8_BMEMORY_CTRLN_65_i0_0_0_0), .in2(out_MUX_8_BMEMORY_CTRLN_65_i0_0_0_1));
  MUX_GATE #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(7)) MUX_9_BMEMORY_CTRLN_65_i0_1_0_0 (.out1(out_MUX_9_BMEMORY_CTRLN_65_i0_1_0_0), .sel(selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_0), .in1(out_reg_8_reg_8), .in2(out_reg_3_reg_3));
  MUX_GATE #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(7)) MUX_9_BMEMORY_CTRLN_65_i0_1_0_1 (.out1(out_MUX_9_BMEMORY_CTRLN_65_i0_1_0_1), .sel(selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_1), .in1(out_reg_29_reg_29), .in2(out_reg_2_reg_2));
  MUX_GATE #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(7)) MUX_9_BMEMORY_CTRLN_65_i0_1_0_2 (.out1(out_MUX_9_BMEMORY_CTRLN_65_i0_1_0_2), .sel(selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_2), .in1(out_reg_17_reg_17), .in2(out_reg_10_reg_10));
  MUX_GATE #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(7)) MUX_9_BMEMORY_CTRLN_65_i0_1_1_0 (.out1(out_MUX_9_BMEMORY_CTRLN_65_i0_1_1_0), .sel(selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_0), .in1(out_MUX_9_BMEMORY_CTRLN_65_i0_1_0_0), .in2(out_MUX_9_BMEMORY_CTRLN_65_i0_1_0_1));
  MUX_GATE #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(7)) MUX_9_BMEMORY_CTRLN_65_i0_1_1_1 (.out1(out_MUX_9_BMEMORY_CTRLN_65_i0_1_1_1), .sel(selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_1), .in1(out_MUX_9_BMEMORY_CTRLN_65_i0_1_0_2), .in2(out_MUX_9_BMEMORY_CTRLN_65_i0_1_1_0));
  ARRAY_1D_STD_DISTRAM_NN_SDS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(7), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(7), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_29111.mem"), .n_elements(8), .data_size(8), .address_space_begin(MEM_var_29111_28866), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(1), .READ_ONLY_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(7), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_29111_0 (.out1({out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_array_29111_0, out_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_array_29111_0}), .Sout_Rdata_ram({null_out_signal_array_29111_0_Sout_Rdata_ram_1, null_out_signal_array_29111_0_Sout_Rdata_ram_0}), .Sout_DataRdy({null_out_signal_array_29111_0_Sout_DataRdy_1, null_out_signal_array_29111_0_Sout_DataRdy_0}), .proxy_out1({null_out_signal_array_29111_0_proxy_out1_1, null_out_signal_array_29111_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({out_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_1, out_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0}), .in2({out_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_1_0, out_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_1}), .in3({out_conv_out_const_4_5_4, out_conv_out_const_4_5_4}), .in4({out_const_7, out_const_7}), .sel_LOAD({fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD}), .sel_STORE({fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE}), .S_oe_ram({1'b0, 1'b0}), .S_we_ram({1'b0, 1'b0}), .S_addr_ram({7'b0000000, 7'b0000000}), .S_Wdata_ram({8'b00000000, 8'b00000000}), .Sin_Rdata_ram({8'b00000000, 8'b00000000}), .S_data_ram_size({4'b0000, 4'b0000}), .Sin_DataRdy({1'b0, 1'b0}), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({7'b0000000, 7'b0000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(14), .PORTSIZE_in1(1), .BITSIZE_out1(14)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(6), .value(MEM_var_29111_28866)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000111)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(2), .value(2'b01)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(4), .value(4'b0111)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(9), .value(9'b011111111)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(3), .value(3'b111)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(7)) conv_out_UUdata_converter_FU_4_i0_fu_quicksortF_28866_29402_6_7 (.out1(out_conv_out_UUdata_converter_FU_4_i0_fu_quicksortF_28866_29402_6_7), .in1(out_UUdata_converter_FU_4_i0_fu_quicksortF_28866_29402));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(32)) conv_out_const_10_6_32 (.out1(out_conv_out_const_10_6_32), .in1(out_const_10));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_4_5_4 (.out1(out_conv_out_const_4_5_4), .in1(out_const_4));
  IUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(32)) conv_out_i_assign_conn_obj_2_ASSIGN_SIGNED_FU_i_assign_0_I_2_32 (.out1(out_conv_out_i_assign_conn_obj_2_ASSIGN_SIGNED_FU_i_assign_0_I_2_32), .in1(out_i_assign_conn_obj_2_ASSIGN_SIGNED_FU_i_assign_0));
  IUdata_converter_FU #(.BITSIZE_in1(4), .BITSIZE_out1(8)) conv_out_i_assign_conn_obj_3_ASSIGN_SIGNED_FU_i_assign_1_I_4_8 (.out1(out_conv_out_i_assign_conn_obj_3_ASSIGN_SIGNED_FU_i_assign_1_I_4_8), .in1(out_i_assign_conn_obj_3_ASSIGN_SIGNED_FU_i_assign_1));
  IUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_i_assign_conn_obj_4_ASSIGN_SIGNED_FU_i_assign_2_I_1_8 (.out1(out_conv_out_i_assign_conn_obj_4_ASSIGN_SIGNED_FU_i_assign_2_I_1_8), .in1(out_i_assign_conn_obj_4_ASSIGN_SIGNED_FU_i_assign_2));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(7)) conv_out_reg_1_reg_1_6_7 (.out1(out_conv_out_reg_1_reg_1_6_7), .in1(out_reg_1_reg_1));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(7)) conv_out_reg_25_reg_25_6_7 (.out1(out_conv_out_reg_25_reg_25_6_7), .in1(out_reg_25_reg_25));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(7)) conv_out_reg_26_reg_26_6_7 (.out1(out_conv_out_reg_26_reg_26_6_7), .in1(out_reg_26_reg_26));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(7)) conv_out_reg_32_reg_32_6_7 (.out1(out_conv_out_reg_32_reg_32_6_7), .in1(out_reg_32_reg_32));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(7)) conv_out_reg_33_reg_33_6_7 (.out1(out_conv_out_reg_33_reg_33_6_7), .in1(out_reg_33_reg_33));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(7)) conv_out_reg_7_reg_7_6_7 (.out1(out_conv_out_reg_7_reg_7_6_7), .in1(out_reg_7_reg_7));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_quicksortF_28866_29162 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_90_i0_fu_quicksortF_28866_29162), .in1(in_port_arr), .in2(out_UUdata_converter_FU_34_i0_fu_quicksortF_28866_29165));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_quicksortF_28866_29165 (.out1(out_UUdata_converter_FU_34_i0_fu_quicksortF_28866_29165), .in1(out_reg_9_reg_9));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_quicksortF_28866_29174 (.out1(out_IUdata_converter_FU_17_i0_fu_quicksortF_28866_29174), .in1(out_reg_27_reg_27));
  plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(32)) fu_quicksortF_28866_29183 (.out1(out_plus_expr_FU_32_0_32_75_i0_fu_quicksortF_28866_29183), .in1(out_reg_24_reg_24), .in2(out_const_8));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(32), .OFFSET_PARAMETER(1)) fu_quicksortF_28866_29195 (.out1(out_bit_ior_concat_expr_FU_67_i0_fu_quicksortF_28866_29195), .in1(out_lshift_expr_FU_32_0_32_72_i0_fu_quicksortF_28866_29580), .in2(out_const_3), .in3(out_const_3));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_quicksortF_28866_29201 (.out1(out_ui_plus_expr_FU_8_0_8_86_i0_fu_quicksortF_28866_29201), .in1(out_reg_9_reg_9), .in2(out_const_7));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_quicksortF_28866_29207 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_90_i1_fu_quicksortF_28866_29207), .in1(in_port_arr), .in2(out_UUdata_converter_FU_35_i0_fu_quicksortF_28866_29210));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_quicksortF_28866_29210 (.out1(out_UUdata_converter_FU_35_i0_fu_quicksortF_28866_29210), .in1(out_ui_plus_expr_FU_8_0_8_86_i1_fu_quicksortF_28866_29214));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_quicksortF_28866_29214 (.out1(out_ui_plus_expr_FU_8_0_8_86_i1_fu_quicksortF_28866_29214), .in1(out_reg_14_reg_14), .in2(out_const_7));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_quicksortF_28866_29222 (.out1(out_IUdata_converter_FU_21_i0_fu_quicksortF_28866_29222), .in1(out_plus_expr_FU_8_0_8_79_i0_fu_quicksortF_28866_29225));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_quicksortF_28866_29225 (.out1(out_plus_expr_FU_8_0_8_79_i0_fu_quicksortF_28866_29225), .in1(out_reg_27_reg_27), .in2(out_const_8));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_quicksortF_28866_29230 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_90_i2_fu_quicksortF_28866_29230), .in1(in_port_arr), .in2(out_ui_plus_expr_FU_8_0_8_87_i0_fu_quicksortF_28866_29233));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_quicksortF_28866_29233 (.out1(out_ui_plus_expr_FU_8_0_8_87_i0_fu_quicksortF_28866_29233), .in1(out_UUdata_converter_FU_50_i0_fu_quicksortF_28866_29236), .in2(out_const_7));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_quicksortF_28866_29236 (.out1(out_UUdata_converter_FU_50_i0_fu_quicksortF_28866_29236), .in1(out_reg_16_reg_16));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_quicksortF_28866_29248 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_90_i3_fu_quicksortF_28866_29248), .in1(in_port_arr), .in2(out_UUdata_converter_FU_20_i0_fu_quicksortF_28866_29251));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_quicksortF_28866_29251 (.out1(out_UUdata_converter_FU_20_i0_fu_quicksortF_28866_29251), .in1(out_IUdata_converter_FU_16_i0_fu_quicksortF_28866_29255));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_quicksortF_28866_29255 (.out1(out_IUdata_converter_FU_16_i0_fu_quicksortF_28866_29255), .in1(out_reg_28_reg_28));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_quicksortF_28866_29269 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_90_i4_fu_quicksortF_28866_29269), .in1(in_port_arr), .in2(out_UUdata_converter_FU_64_i0_fu_quicksortF_28866_29272));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_quicksortF_28866_29272 (.out1(out_UUdata_converter_FU_64_i0_fu_quicksortF_28866_29272), .in1(out_IUdata_converter_FU_63_i0_fu_quicksortF_28866_29275));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_quicksortF_28866_29275 (.out1(out_IUdata_converter_FU_63_i0_fu_quicksortF_28866_29275), .in1(out_reg_28_reg_28));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_quicksortF_28866_29288 (.out1(out_plus_expr_FU_8_0_8_80_i0_fu_quicksortF_28866_29288), .in1(out_IIdata_converter_FU_52_i0_fu_quicksortF_28866_29292), .in2(out_const_8));
  IIdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(8)) fu_quicksortF_28866_29292 (.out1(out_IIdata_converter_FU_52_i0_fu_quicksortF_28866_29292), .in1(out_plus_expr_FU_16_0_16_74_i0_fu_quicksortF_28866_29295));
  plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(10)) fu_quicksortF_28866_29295 (.out1(out_plus_expr_FU_16_0_16_74_i0_fu_quicksortF_28866_29295), .in1(out_UIdata_converter_FU_51_i0_fu_quicksortF_28866_29298), .in2(out_const_3));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_quicksortF_28866_29298 (.out1(out_UIdata_converter_FU_51_i0_fu_quicksortF_28866_29298), .in1(out_reg_16_reg_16));
  plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(32)) fu_quicksortF_28866_29301 (.out1(out_plus_expr_FU_32_0_32_76_i0_fu_quicksortF_28866_29301), .in1(out_reg_24_reg_24), .in2(out_const_3));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_quicksortF_28866_29305 (.out1(out_plus_expr_FU_8_0_8_81_i0_fu_quicksortF_28866_29305), .in1(out_reg_19_reg_19), .in2(out_const_3));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(32), .OFFSET_PARAMETER(1)) fu_quicksortF_28866_29314 (.out1(out_bit_ior_concat_expr_FU_67_i1_fu_quicksortF_28866_29314), .in1(out_lshift_expr_FU_32_0_32_72_i1_fu_quicksortF_28866_29593), .in2(out_const_3), .in3(out_const_3));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_quicksortF_28866_29325 (.out1(out_UIdata_converter_FU_18_i0_fu_quicksortF_28866_29325), .in1(out_IUdata_converter_FU_16_i0_fu_quicksortF_28866_29255));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_quicksortF_28866_29326 (.out1(out_UIdata_converter_FU_19_i0_fu_quicksortF_28866_29326), .in1(out_IUdata_converter_FU_17_i0_fu_quicksortF_28866_29174));
  plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(9)) fu_quicksortF_28866_29327 (.out1(out_plus_expr_FU_8_0_8_82_i0_fu_quicksortF_28866_29327), .in1(out_UIdata_converter_FU_18_i0_fu_quicksortF_28866_29325), .in2(out_const_8));
  read_cond_FU #(.BITSIZE_in1(1)) fu_quicksortF_28866_29328 (.out1(out_read_cond_FU_23_i0_fu_quicksortF_28866_29328), .in1(out_le_expr_FU_16_16_16_70_i0_fu_quicksortF_28866_29553));
  read_cond_FU #(.BITSIZE_in1(1)) fu_quicksortF_28866_29336 (.out1(out_read_cond_FU_37_i0_fu_quicksortF_28866_29336), .in1(out_le_expr_FU_8_8_8_71_i0_fu_quicksortF_28866_29555));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_quicksortF_28866_29338 (.out1(out_UIdata_converter_FU_36_i0_fu_quicksortF_28866_29338), .in1(out_ui_plus_expr_FU_8_0_8_86_i0_fu_quicksortF_28866_29201));
  read_cond_FU #(.BITSIZE_in1(1)) fu_quicksortF_28866_29339 (.out1(out_read_cond_FU_41_i0_fu_quicksortF_28866_29339), .in1(out_reg_12_reg_12));
  bit_and_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(9), .BITSIZE_out1(9)) fu_quicksortF_28866_29343 (.out1(out_bit_and_expr_FU_16_0_16_66_i0_fu_quicksortF_28866_29343), .in1(out_plus_expr_FU_16_0_16_74_i0_fu_quicksortF_28866_29295), .in2(out_const_6));
  plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(9)) fu_quicksortF_28866_29344 (.out1(out_plus_expr_FU_8_0_8_82_i1_fu_quicksortF_28866_29344), .in1(out_bit_and_expr_FU_16_0_16_66_i0_fu_quicksortF_28866_29343), .in2(out_const_8));
  read_cond_FU #(.BITSIZE_in1(1)) fu_quicksortF_28866_29345 (.out1(out_read_cond_FU_53_i0_fu_quicksortF_28866_29345), .in1(out_reg_22_reg_22));
  plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(10)) fu_quicksortF_28866_29351 (.out1(out_plus_expr_FU_16_0_16_74_i1_fu_quicksortF_28866_29351), .in1(out_bit_and_expr_FU_16_0_16_66_i0_fu_quicksortF_28866_29343), .in2(out_const_3));
  read_cond_FU #(.BITSIZE_in1(1)) fu_quicksortF_28866_29356 (.out1(out_read_cond_FU_62_i0_fu_quicksortF_28866_29356), .in1(out_reg_34_reg_34));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(6)) fu_quicksortF_28866_29402 (.out1(out_UUdata_converter_FU_4_i0_fu_quicksortF_28866_29402), .in1(out_addr_expr_FU_3_i0_fu_quicksortF_28866_29436));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(1), .BITSIZE_out1(6), .LSB_PARAMETER(0)) fu_quicksortF_28866_29426 (.out1(out_ui_pointer_plus_expr_FU_8_0_8_88_i0_fu_quicksortF_28866_29426), .in1(out_UUdata_converter_FU_4_i0_fu_quicksortF_28866_29402), .in2(out_const_7));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(3), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_quicksortF_28866_29430 (.out1(out_ui_pointer_plus_expr_FU_8_0_8_89_i0_fu_quicksortF_28866_29430), .in1(in_port_arr), .in2(out_const_9));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(6)) fu_quicksortF_28866_29436 (.out1(out_addr_expr_FU_3_i0_fu_quicksortF_28866_29436), .in1(out_conv_out_const_10_6_32));
  IUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_quicksortF_28866_29449 (.out1(out_IUdata_converter_FU_22_i0_fu_quicksortF_28866_29449), .in1(out_reg_31_reg_31));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(7), .BITSIZE_out1(6), .LSB_PARAMETER(0)) fu_quicksortF_28866_29455 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_90_i5_fu_quicksortF_28866_29455), .in1(out_reg_0_reg_0), .in2(out_IUdata_converter_FU_22_i0_fu_quicksortF_28866_29449));
  IUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_quicksortF_28866_29466 (.out1(out_IUdata_converter_FU_60_i0_fu_quicksortF_28866_29466), .in1(out_plus_expr_FU_32_0_32_76_i0_fu_quicksortF_28866_29301));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(7), .BITSIZE_out1(6), .LSB_PARAMETER(0)) fu_quicksortF_28866_29472 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_90_i6_fu_quicksortF_28866_29472), .in1(out_reg_0_reg_0), .in2(out_IUdata_converter_FU_60_i0_fu_quicksortF_28866_29466));
  IUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_quicksortF_28866_29479 (.out1(out_IUdata_converter_FU_61_i0_fu_quicksortF_28866_29479), .in1(out_bit_ior_concat_expr_FU_67_i1_fu_quicksortF_28866_29314));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(7), .BITSIZE_out1(6), .LSB_PARAMETER(0)) fu_quicksortF_28866_29485 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_90_i7_fu_quicksortF_28866_29485), .in1(out_reg_0_reg_0), .in2(out_IUdata_converter_FU_61_i0_fu_quicksortF_28866_29479));
  ge_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_quicksortF_28866_29488 (.out1(out_ge_expr_FU_32_0_32_68_i0_fu_quicksortF_28866_29488), .in1(out_bit_ior_concat_expr_FU_67_i1_fu_quicksortF_28866_29314), .in2(out_const_0));
  ge_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_quicksortF_28866_29515 (.out1(out_ge_expr_FU_32_0_32_68_i1_fu_quicksortF_28866_29515), .in1(out_reg_24_reg_24), .in2(out_const_0));
  IUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_quicksortF_28866_29521 (.out1(out_IUdata_converter_FU_56_i0_fu_quicksortF_28866_29521), .in1(out_reg_24_reg_24));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(7), .BITSIZE_out1(6), .LSB_PARAMETER(0)) fu_quicksortF_28866_29527 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_90_i8_fu_quicksortF_28866_29527), .in1(out_reg_0_reg_0), .in2(out_IUdata_converter_FU_56_i0_fu_quicksortF_28866_29521));
  IUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_quicksortF_28866_29534 (.out1(out_IUdata_converter_FU_57_i0_fu_quicksortF_28866_29534), .in1(out_plus_expr_FU_32_0_32_75_i0_fu_quicksortF_28866_29183));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(7), .BITSIZE_out1(6), .LSB_PARAMETER(0)) fu_quicksortF_28866_29540 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_90_i9_fu_quicksortF_28866_29540), .in1(out_reg_0_reg_0), .in2(out_IUdata_converter_FU_57_i0_fu_quicksortF_28866_29534));
  le_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(1)) fu_quicksortF_28866_29553 (.out1(out_le_expr_FU_16_16_16_70_i0_fu_quicksortF_28866_29553), .in1(out_UIdata_converter_FU_19_i0_fu_quicksortF_28866_29326), .in2(out_plus_expr_FU_8_0_8_82_i0_fu_quicksortF_28866_29327));
  le_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_quicksortF_28866_29555 (.out1(out_le_expr_FU_8_8_8_71_i0_fu_quicksortF_28866_29555), .in1(out_reg_23_reg_23), .in2(out_reg_15_reg_15));
  le_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(1)) fu_quicksortF_28866_29557 (.out1(out_le_expr_FU_16_16_16_70_i1_fu_quicksortF_28866_29557), .in1(out_UIdata_converter_FU_36_i0_fu_quicksortF_28866_29338), .in2(out_reg_6_reg_6));
  lt_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(1)) fu_quicksortF_28866_29559 (.out1(out_lt_expr_FU_16_16_16_73_i0_fu_quicksortF_28866_29559), .in1(out_reg_5_reg_5), .in2(out_reg_20_reg_20));
  gt_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(10), .BITSIZE_out1(1)) fu_quicksortF_28866_29561 (.out1(out_gt_expr_FU_16_16_16_69_i0_fu_quicksortF_28866_29561), .in1(out_reg_4_reg_4), .in2(out_reg_21_reg_21));
  rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(31), .PRECISION(32)) fu_quicksortF_28866_29572 (.out1(out_rshift_expr_FU_32_0_32_83_i0_fu_quicksortF_28866_29572), .in1(out_reg_31_reg_31), .in2(out_const_3));
  plus_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(2), .BITSIZE_out1(31)) fu_quicksortF_28866_29577 (.out1(out_plus_expr_FU_32_0_32_77_i0_fu_quicksortF_28866_29577), .in1(out_rshift_expr_FU_32_0_32_83_i0_fu_quicksortF_28866_29572), .in2(out_const_8));
  lshift_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(2), .BITSIZE_out1(32), .PRECISION(32)) fu_quicksortF_28866_29580 (.out1(out_lshift_expr_FU_32_0_32_72_i0_fu_quicksortF_28866_29580), .in1(out_plus_expr_FU_32_0_32_77_i0_fu_quicksortF_28866_29577), .in2(out_const_3));
  rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(31), .PRECISION(32)) fu_quicksortF_28866_29588 (.out1(out_rshift_expr_FU_32_0_32_83_i1_fu_quicksortF_28866_29588), .in1(out_reg_24_reg_24), .in2(out_const_3));
  plus_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(2), .BITSIZE_out1(31)) fu_quicksortF_28866_29590 (.out1(out_plus_expr_FU_32_0_32_78_i0_fu_quicksortF_28866_29590), .in1(out_rshift_expr_FU_32_0_32_83_i1_fu_quicksortF_28866_29588), .in2(out_const_3));
  lshift_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(2), .BITSIZE_out1(32), .PRECISION(32)) fu_quicksortF_28866_29593 (.out1(out_lshift_expr_FU_32_0_32_72_i1_fu_quicksortF_28866_29593), .in1(out_plus_expr_FU_32_0_32_78_i0_fu_quicksortF_28866_29590), .in2(out_const_3));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) fu_quicksortF_28866_29666 (.out1(out_multi_read_cond_FU_58_i0_fu_quicksortF_28866_29666), .in1({out_truth_and_expr_FU_1_1_1_84_i0_fu_quicksortF_28866_29672, out_gt_expr_FU_16_16_16_69_i0_fu_quicksortF_28866_29561}));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_quicksortF_28866_29669 (.out1(out_truth_not_expr_FU_1_1_85_i0_fu_quicksortF_28866_29669), .in1(out_gt_expr_FU_16_16_16_69_i0_fu_quicksortF_28866_29561));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_quicksortF_28866_29672 (.out1(out_truth_and_expr_FU_1_1_1_84_i0_fu_quicksortF_28866_29672), .in1(out_ge_expr_FU_32_0_32_68_i1_fu_quicksortF_28866_29515), .in2(out_truth_not_expr_FU_1_1_85_i0_fu_quicksortF_28866_29669));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(7), .PORTSIZE_in1(2), .BITSIZE_out1(14)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerMout_data_ram_size2_0 (.out1(sig_in_bus_mergerMout_data_ram_size2_0), .in1(sig_in_vector_bus_mergerMout_data_ram_size2_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_oe_ram3_0 (.out1(sig_in_bus_mergerMout_oe_ram3_0), .in1(sig_in_vector_bus_mergerMout_oe_ram3_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_we_ram4_0 (.out1(sig_in_bus_mergerMout_we_ram4_0), .in1(sig_in_vector_bus_mergerMout_we_ram4_0));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_4_i0_fu_quicksortF_28866_29402), .wenable(wrenable_reg_0));
  register_STD #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_0_8_88_i0_fu_quicksortF_28866_29426), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_90_i1_fu_quicksortF_28866_29207), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_86_i1_fu_quicksortF_28866_29214), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_le_expr_FU_16_16_16_70_i1_fu_quicksortF_28866_29557), .wenable(wrenable_reg_12));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_BMEMORY_CTRLN_65_i0_BMEMORY_CTRLN_65_i0), .wenable(wrenable_reg_13));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_MUX_112_reg_14_0_0_0), .wenable(wrenable_reg_14));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_MUX_113_reg_15_0_0_0), .wenable(wrenable_reg_15));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_MUX_114_reg_16_0_0_0), .wenable(wrenable_reg_16));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_90_i2_fu_quicksortF_28866_29230), .wenable(wrenable_reg_17));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_0_8_80_i0_fu_quicksortF_28866_29288), .wenable(wrenable_reg_18));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_19 (.out1(out_reg_19_reg_19), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_52_i0_fu_quicksortF_28866_29292), .wenable(wrenable_reg_19));
  register_STD #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_0_8_89_i0_fu_quicksortF_28866_29430), .wenable(wrenable_reg_2));
  register_STD #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_20 (.out1(out_reg_20_reg_20), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_0_8_82_i1_fu_quicksortF_28866_29344), .wenable(wrenable_reg_20));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_21 (.out1(out_reg_21_reg_21), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_16_0_16_74_i1_fu_quicksortF_28866_29351), .wenable(wrenable_reg_21));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_22 (.out1(out_reg_22_reg_22), .clock(clock), .reset(reset), .in1(out_lt_expr_FU_16_16_16_73_i0_fu_quicksortF_28866_29559), .wenable(wrenable_reg_22));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_23 (.out1(out_reg_23_reg_23), .clock(clock), .reset(reset), .in1(out_BMEMORY_CTRLN_65_i0_BMEMORY_CTRLN_65_i0), .wenable(wrenable_reg_23));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_24 (.out1(out_reg_24_reg_24), .clock(clock), .reset(reset), .in1(out_MUX_123_reg_24_0_0_0), .wenable(wrenable_reg_24));
  register_STD #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_25 (.out1(out_reg_25_reg_25), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_90_i8_fu_quicksortF_28866_29527), .wenable(wrenable_reg_25));
  register_STD #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_26 (.out1(out_reg_26_reg_26), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_90_i9_fu_quicksortF_28866_29540), .wenable(wrenable_reg_26));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_27 (.out1(out_reg_27_reg_27), .clock(clock), .reset(reset), .in1(out_MUX_126_reg_27_0_0_0), .wenable(wrenable_reg_27));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_28 (.out1(out_reg_28_reg_28), .clock(clock), .reset(reset), .in1(out_MUX_127_reg_28_0_0_0), .wenable(wrenable_reg_28));
  register_STD #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_29 (.out1(out_reg_29_reg_29), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_90_i4_fu_quicksortF_28866_29269), .wenable(wrenable_reg_29));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_90_i3_fu_quicksortF_28866_29248), .wenable(wrenable_reg_3));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_30 (.out1(out_reg_30_reg_30), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_0_8_81_i0_fu_quicksortF_28866_29305), .wenable(wrenable_reg_30));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_31 (.out1(out_reg_31_reg_31), .clock(clock), .reset(reset), .in1(out_MUX_131_reg_31_0_0_1), .wenable(wrenable_reg_31));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_32 (.out1(out_reg_32_reg_32), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_90_i6_fu_quicksortF_28866_29472), .wenable(wrenable_reg_32));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_33 (.out1(out_reg_33_reg_33), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_90_i7_fu_quicksortF_28866_29485), .wenable(wrenable_reg_33));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_34 (.out1(out_reg_34_reg_34), .clock(clock), .reset(reset), .in1(out_ge_expr_FU_32_0_32_68_i0_fu_quicksortF_28866_29488), .wenable(wrenable_reg_34));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_18_i0_fu_quicksortF_28866_29325), .wenable(wrenable_reg_4));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_19_i0_fu_quicksortF_28866_29326), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_0_8_82_i0_fu_quicksortF_28866_29327), .wenable(wrenable_reg_6));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_90_i5_fu_quicksortF_28866_29455), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_90_i0_fu_quicksortF_28866_29162), .wenable(wrenable_reg_8));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_MUX_140_reg_9_0_0_0), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(14), .BITSIZE_out1(7), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  // io-signal post fix
  assign OUT_CONDITION_quicksortF_28866_29328 = out_read_cond_FU_23_i0_fu_quicksortF_28866_29328;
  assign OUT_CONDITION_quicksortF_28866_29336 = out_read_cond_FU_37_i0_fu_quicksortF_28866_29336;
  assign OUT_CONDITION_quicksortF_28866_29339 = out_read_cond_FU_41_i0_fu_quicksortF_28866_29339;
  assign OUT_CONDITION_quicksortF_28866_29345 = out_read_cond_FU_53_i0_fu_quicksortF_28866_29345;
  assign OUT_CONDITION_quicksortF_28866_29356 = out_read_cond_FU_62_i0_fu_quicksortF_28866_29356;
  assign OUT_MULTIIF_quicksortF_28866_29666 = out_multi_read_cond_FU_58_i0_fu_quicksortF_28866_29666;

endmodule

// FSM based controller description for quicksortF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_quicksortF(done_port, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE, fuselector_BMEMORY_CTRLN_65_i0_LOAD, fuselector_BMEMORY_CTRLN_65_i0_STORE, selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0, selector_MUX_112_reg_14_0_0_0, selector_MUX_113_reg_15_0_0_0, selector_MUX_114_reg_16_0_0_0, selector_MUX_123_reg_24_0_0_0, selector_MUX_126_reg_27_0_0_0, selector_MUX_127_reg_28_0_0_0, selector_MUX_131_reg_31_0_0_0, selector_MUX_131_reg_31_0_0_1, selector_MUX_140_reg_9_0_0_0, selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0, selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_1, selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_0, selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_1, selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_0, selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_1, selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_1_0, selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_0, selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_1, selector_MUX_8_BMEMORY_CTRLN_65_i0_0_1_0, selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_0, selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_1, selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_2, selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_0, selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_1, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_29, wrenable_reg_3, wrenable_reg_30, wrenable_reg_31, wrenable_reg_32, wrenable_reg_33, wrenable_reg_34, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_quicksortF_28866_29328, OUT_CONDITION_quicksortF_28866_29336, OUT_CONDITION_quicksortF_28866_29339, OUT_CONDITION_quicksortF_28866_29345, OUT_CONDITION_quicksortF_28866_29356, OUT_MULTIIF_quicksortF_28866_29666, clock, reset, start_port);
  // IN
  input OUT_CONDITION_quicksortF_28866_29328;
  input OUT_CONDITION_quicksortF_28866_29336;
  input OUT_CONDITION_quicksortF_28866_29339;
  input OUT_CONDITION_quicksortF_28866_29345;
  input OUT_CONDITION_quicksortF_28866_29356;
  input [1:0] OUT_MULTIIF_quicksortF_28866_29666;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE;
  output fuselector_BMEMORY_CTRLN_65_i0_LOAD;
  output fuselector_BMEMORY_CTRLN_65_i0_STORE;
  output selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0;
  output selector_MUX_112_reg_14_0_0_0;
  output selector_MUX_113_reg_15_0_0_0;
  output selector_MUX_114_reg_16_0_0_0;
  output selector_MUX_123_reg_24_0_0_0;
  output selector_MUX_126_reg_27_0_0_0;
  output selector_MUX_127_reg_28_0_0_0;
  output selector_MUX_131_reg_31_0_0_0;
  output selector_MUX_131_reg_31_0_0_1;
  output selector_MUX_140_reg_9_0_0_0;
  output selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0;
  output selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_1;
  output selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_0;
  output selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_1;
  output selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_0;
  output selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_1;
  output selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_1_0;
  output selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_0;
  output selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_1;
  output selector_MUX_8_BMEMORY_CTRLN_65_i0_0_1_0;
  output selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_0;
  output selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_1;
  output selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_2;
  output selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_0;
  output selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_1;
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
  output wrenable_reg_4;
  output wrenable_reg_5;
  output wrenable_reg_6;
  output wrenable_reg_7;
  output wrenable_reg_8;
  output wrenable_reg_9;
  parameter [31:0] S_0 = 32'b00000000000000000000000000000001,
    S_1 = 32'b00000000000000000000000000000010,
    S_2 = 32'b00000000000000000000000000000100,
    S_3 = 32'b00000000000000000000000000001000,
    S_4 = 32'b00000000000000000000000000010000,
    S_5 = 32'b00000000000000000000000000100000,
    S_6 = 32'b00000000000000000000000001000000,
    S_7 = 32'b00000000000000000000000010000000,
    S_8 = 32'b00000000000000000000000100000000,
    S_9 = 32'b00000000000000000000001000000000,
    S_10 = 32'b00000000000000000000010000000000,
    S_11 = 32'b00000000000000000000100000000000,
    S_12 = 32'b00000000000000000001000000000000,
    S_13 = 32'b00000000000000000010000000000000,
    S_14 = 32'b00000000000000000100000000000000,
    S_15 = 32'b00000000000000001000000000000000,
    S_16 = 32'b00000000000000010000000000000000,
    S_17 = 32'b00000000000000100000000000000000,
    S_18 = 32'b00000000000001000000000000000000,
    S_19 = 32'b00000000000010000000000000000000,
    S_20 = 32'b00000000000100000000000000000000,
    S_21 = 32'b00000000001000000000000000000000,
    S_31 = 32'b10000000000000000000000000000000,
    S_26 = 32'b00000100000000000000000000000000,
    S_27 = 32'b00001000000000000000000000000000,
    S_28 = 32'b00010000000000000000000000000000,
    S_29 = 32'b00100000000000000000000000000000,
    S_22 = 32'b00000000010000000000000000000000,
    S_23 = 32'b00000000100000000000000000000000,
    S_24 = 32'b00000001000000000000000000000000,
    S_30 = 32'b01000000000000000000000000000000,
    S_25 = 32'b00000010000000000000000000000000;
  reg [31:0] _present_state, _next_state;
  reg done_port;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE;
  reg fuselector_BMEMORY_CTRLN_65_i0_LOAD;
  reg fuselector_BMEMORY_CTRLN_65_i0_STORE;
  reg selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0;
  reg selector_MUX_112_reg_14_0_0_0;
  reg selector_MUX_113_reg_15_0_0_0;
  reg selector_MUX_114_reg_16_0_0_0;
  reg selector_MUX_123_reg_24_0_0_0;
  reg selector_MUX_126_reg_27_0_0_0;
  reg selector_MUX_127_reg_28_0_0_0;
  reg selector_MUX_131_reg_31_0_0_0;
  reg selector_MUX_131_reg_31_0_0_1;
  reg selector_MUX_140_reg_9_0_0_0;
  reg selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0;
  reg selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_1;
  reg selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_0;
  reg selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_1;
  reg selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_0;
  reg selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_1;
  reg selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_1_0;
  reg selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_0;
  reg selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_1;
  reg selector_MUX_8_BMEMORY_CTRLN_65_i0_0_1_0;
  reg selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_0;
  reg selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_1;
  reg selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_2;
  reg selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_0;
  reg selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_1;
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
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE = 1'b0;
    fuselector_BMEMORY_CTRLN_65_i0_LOAD = 1'b0;
    fuselector_BMEMORY_CTRLN_65_i0_STORE = 1'b0;
    selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0 = 1'b0;
    selector_MUX_112_reg_14_0_0_0 = 1'b0;
    selector_MUX_113_reg_15_0_0_0 = 1'b0;
    selector_MUX_114_reg_16_0_0_0 = 1'b0;
    selector_MUX_123_reg_24_0_0_0 = 1'b0;
    selector_MUX_126_reg_27_0_0_0 = 1'b0;
    selector_MUX_127_reg_28_0_0_0 = 1'b0;
    selector_MUX_131_reg_31_0_0_0 = 1'b0;
    selector_MUX_131_reg_31_0_0_1 = 1'b0;
    selector_MUX_140_reg_9_0_0_0 = 1'b0;
    selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0 = 1'b0;
    selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_1 = 1'b0;
    selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_0 = 1'b0;
    selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_1 = 1'b0;
    selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_0 = 1'b0;
    selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_1 = 1'b0;
    selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_1_0 = 1'b0;
    selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_0 = 1'b0;
    selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_1 = 1'b0;
    selector_MUX_8_BMEMORY_CTRLN_65_i0_0_1_0 = 1'b0;
    selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_0 = 1'b0;
    selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_1 = 1'b0;
    selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_2 = 1'b0;
    selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_0 = 1'b0;
    selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_1 = 1'b0;
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
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE = 1'b1;
          selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_0 = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0 = 1'bX;
          selector_MUX_112_reg_14_0_0_0 = 1'bX;
          selector_MUX_113_reg_15_0_0_0 = 1'bX;
          selector_MUX_114_reg_16_0_0_0 = 1'bX;
          selector_MUX_123_reg_24_0_0_0 = 1'bX;
          selector_MUX_126_reg_27_0_0_0 = 1'bX;
          selector_MUX_127_reg_28_0_0_0 = 1'bX;
          selector_MUX_131_reg_31_0_0_0 = 1'bX;
          selector_MUX_131_reg_31_0_0_1 = 1'bX;
          selector_MUX_140_reg_9_0_0_0 = 1'bX;
          selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0 = 1'bX;
          selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_1 = 1'bX;
          selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_0 = 1'bX;
          selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_1 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_0 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_1 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_1_0 = 1'bX;
          selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_0 = 1'bX;
          selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_1 = 1'bX;
          selector_MUX_8_BMEMORY_CTRLN_65_i0_0_1_0 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_0 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_1 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_2 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_0 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_1 = 1'bX;
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
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE = 1'b1;
          fuselector_BMEMORY_CTRLN_65_i0_LOAD = 1'b1;
          selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_1 = 1'b1;
          _next_state = S_2;
        end
      S_2 :
        begin
          selector_MUX_131_reg_31_0_0_1 = 1'b1;
          wrenable_reg_15 = 1'b1;
          wrenable_reg_27 = 1'b1;
          wrenable_reg_28 = 1'b1;
          wrenable_reg_31 = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          selector_MUX_140_reg_9_0_0_0 = 1'b1;
          wrenable_reg_14 = 1'b1;
          wrenable_reg_16 = 1'b1;
          wrenable_reg_24 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_6 = 1'b1;
          wrenable_reg_7 = 1'b1;
          wrenable_reg_9 = 1'b1;
          if (OUT_CONDITION_quicksortF_28866_29328 == 1'b1)
            begin
              _next_state = S_4;
              wrenable_reg_16 = 1'b0;
            end
          else
            begin
              _next_state = S_15;
              selector_MUX_140_reg_9_0_0_0 = 1'b0;
              wrenable_reg_14 = 1'b0;
              wrenable_reg_6 = 1'b0;
              wrenable_reg_9 = 1'b0;
            end
        end
      S_4 :
        begin
          wrenable_reg_10 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_12 = 1'b1;
          wrenable_reg_8 = 1'b1;
          wrenable_reg_9 = 1'b1;
          _next_state = S_5;
        end
      S_5 :
        begin
          fuselector_BMEMORY_CTRLN_65_i0_LOAD = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_0 = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_0 = 1'b1;
          _next_state = S_6;
        end
      S_6 :
        begin
          wrenable_reg_23 = 1'b1;
          _next_state = S_7;
        end
      S_7 :
        begin
          if (OUT_CONDITION_quicksortF_28866_29336 == 1'b1)
            begin
              _next_state = S_8;
            end
          else
            begin
              _next_state = S_12;
            end
        end
      S_8 :
        begin
          fuselector_BMEMORY_CTRLN_65_i0_LOAD = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_1 = 1'b1;
          _next_state = S_9;
        end
      S_9 :
        begin
          wrenable_reg_13 = 1'b1;
          _next_state = S_10;
        end
      S_10 :
        begin
          fuselector_BMEMORY_CTRLN_65_i0_STORE = 1'b1;
          selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_0 = 1'b1;
          selector_MUX_8_BMEMORY_CTRLN_65_i0_0_1_0 = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_1 = 1'b1;
          _next_state = S_11;
        end
      S_11 :
        begin
          fuselector_BMEMORY_CTRLN_65_i0_STORE = 1'b1;
          selector_MUX_112_reg_14_0_0_0 = 1'b1;
          selector_MUX_8_BMEMORY_CTRLN_65_i0_0_1_0 = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_0 = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_0 = 1'b1;
          wrenable_reg_14 = 1'b1;
          _next_state = S_12;
        end
      S_12 :
        begin
          if (OUT_CONDITION_quicksortF_28866_29339 == 1'b1)
            begin
              _next_state = S_4;
            end
          else
            begin
              _next_state = S_13;
            end
        end
      S_13 :
        begin
          fuselector_BMEMORY_CTRLN_65_i0_LOAD = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_0 = 1'b1;
          _next_state = S_14;
        end
      S_14 :
        begin
          selector_MUX_114_reg_16_0_0_0 = 1'b1;
          wrenable_reg_15 = 1'b1;
          wrenable_reg_16 = 1'b1;
          _next_state = S_15;
        end
      S_15 :
        begin
          wrenable_reg_17 = 1'b1;
          wrenable_reg_18 = 1'b1;
          wrenable_reg_19 = 1'b1;
          wrenable_reg_20 = 1'b1;
          wrenable_reg_21 = 1'b1;
          _next_state = S_16;
        end
      S_16 :
        begin
          fuselector_BMEMORY_CTRLN_65_i0_LOAD = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_2 = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_1 = 1'b1;
          wrenable_reg_22 = 1'b1;
          _next_state = S_17;
        end
      S_17 :
        begin
          wrenable_reg_23 = 1'b1;
          _next_state = S_18;
        end
      S_18 :
        begin
          fuselector_BMEMORY_CTRLN_65_i0_STORE = 1'b1;
          selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_1 = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_2 = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_1 = 1'b1;
          _next_state = S_19;
        end
      S_19 :
        begin
          fuselector_BMEMORY_CTRLN_65_i0_STORE = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_0 = 1'b1;
          if (OUT_CONDITION_quicksortF_28866_29345 == 1'b1)
            begin
              _next_state = S_20;
            end
          else
            begin
              _next_state = S_21;
            end
        end
      S_20 :
        begin
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE = 1'b1;
          selector_MUX_123_reg_24_0_0_0 = 1'b1;
          selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_1 = 1'b1;
          selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_0 = 1'b1;
          selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_1_0 = 1'b1;
          wrenable_reg_24 = 1'b1;
          _next_state = S_21;
        end
      S_21 :
        begin
          wrenable_reg_25 = 1'b1;
          wrenable_reg_26 = 1'b1;
          if (OUT_MULTIIF_quicksortF_28866_29666[0] == 1'b1)
            begin
              _next_state = S_22;
              wrenable_reg_25 = 1'b0;
              wrenable_reg_26 = 1'b0;
            end
          else if (OUT_MULTIIF_quicksortF_28866_29666[1] == 1'b1)
            begin
              _next_state = S_26;
            end
          else
            begin
              _next_state = S_31;
              done_port = 1'b1;
              wrenable_reg_25 = 1'b0;
              wrenable_reg_26 = 1'b0;
            end
        end
      S_31 :
        begin
          _next_state = S_0;
        end
      S_26 :
        begin
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD = 1'b1;
          selector_MUX_126_reg_27_0_0_0 = 1'b1;
          selector_MUX_127_reg_28_0_0_0 = 1'b1;
          selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_1 = 1'b1;
          selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_1_0 = 1'b1;
          wrenable_reg_27 = 1'b1;
          wrenable_reg_28 = 1'b1;
          _next_state = S_27;
        end
      S_27 :
        begin
          wrenable_reg_29 = 1'b1;
          _next_state = S_28;
        end
      S_28 :
        begin
          fuselector_BMEMORY_CTRLN_65_i0_LOAD = 1'b1;
          selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_1 = 1'b1;
          _next_state = S_29;
        end
      S_29 :
        begin
          selector_MUX_131_reg_31_0_0_0 = 1'b1;
          wrenable_reg_15 = 1'b1;
          wrenable_reg_31 = 1'b1;
          _next_state = S_3;
        end
      S_22 :
        begin
          wrenable_reg_30 = 1'b1;
          wrenable_reg_31 = 1'b1;
          wrenable_reg_32 = 1'b1;
          wrenable_reg_33 = 1'b1;
          wrenable_reg_34 = 1'b1;
          _next_state = S_23;
        end
      S_23 :
        begin
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE = 1'b1;
          selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0 = 1'b1;
          _next_state = S_24;
        end
      S_24 :
        begin
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE = 1'b1;
          selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0 = 1'b1;
          if (OUT_CONDITION_quicksortF_28866_29356 == 1'b1)
            begin
              _next_state = S_25;
            end
          else
            begin
              _next_state = S_30;
              done_port = 1'b1;
            end
        end
      S_30 :
        begin
          _next_state = S_0;
        end
      S_25 :
        begin
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD = 1'b1;
          selector_MUX_113_reg_15_0_0_0 = 1'b1;
          selector_MUX_126_reg_27_0_0_0 = 1'b1;
          wrenable_reg_15 = 1'b1;
          wrenable_reg_27 = 1'b1;
          _next_state = S_3;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0 = 1'bX;
          selector_MUX_112_reg_14_0_0_0 = 1'bX;
          selector_MUX_113_reg_15_0_0_0 = 1'bX;
          selector_MUX_114_reg_16_0_0_0 = 1'bX;
          selector_MUX_123_reg_24_0_0_0 = 1'bX;
          selector_MUX_126_reg_27_0_0_0 = 1'bX;
          selector_MUX_127_reg_28_0_0_0 = 1'bX;
          selector_MUX_131_reg_31_0_0_0 = 1'bX;
          selector_MUX_131_reg_31_0_0_1 = 1'bX;
          selector_MUX_140_reg_9_0_0_0 = 1'bX;
          selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0 = 1'bX;
          selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_1 = 1'bX;
          selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_0 = 1'bX;
          selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_1 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_0 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_1 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_1_0 = 1'bX;
          selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_0 = 1'bX;
          selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_1 = 1'bX;
          selector_MUX_8_BMEMORY_CTRLN_65_i0_0_1_0 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_0 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_1 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_2 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_0 = 1'bX;
          selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_1 = 1'bX;
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

// Top component for quicksortF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module quicksortF(clock, reset, start_port, done_port, arr, M_Rdata_ram, M_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size);
  parameter MEM_var_29111_28866=32;
  // IN
  input clock;
  input reset;
  input start_port;
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
  wire OUT_CONDITION_quicksortF_28866_29328;
  wire OUT_CONDITION_quicksortF_28866_29336;
  wire OUT_CONDITION_quicksortF_28866_29339;
  wire OUT_CONDITION_quicksortF_28866_29345;
  wire OUT_CONDITION_quicksortF_28866_29356;
  wire [1:0] OUT_MULTIIF_quicksortF_28866_29666;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE;
  wire fuselector_BMEMORY_CTRLN_65_i0_LOAD;
  wire fuselector_BMEMORY_CTRLN_65_i0_STORE;
  wire selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0;
  wire selector_MUX_112_reg_14_0_0_0;
  wire selector_MUX_113_reg_15_0_0_0;
  wire selector_MUX_114_reg_16_0_0_0;
  wire selector_MUX_123_reg_24_0_0_0;
  wire selector_MUX_126_reg_27_0_0_0;
  wire selector_MUX_127_reg_28_0_0_0;
  wire selector_MUX_131_reg_31_0_0_0;
  wire selector_MUX_131_reg_31_0_0_1;
  wire selector_MUX_140_reg_9_0_0_0;
  wire selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0;
  wire selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_1;
  wire selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_0;
  wire selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_1;
  wire selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_0;
  wire selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_1;
  wire selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_1_0;
  wire selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_0;
  wire selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_1;
  wire selector_MUX_8_BMEMORY_CTRLN_65_i0_0_1_0;
  wire selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_0;
  wire selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_1;
  wire selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_2;
  wire selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_0;
  wire selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_1;
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
  wire wrenable_reg_4;
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  controller_quicksortF Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE), .fuselector_BMEMORY_CTRLN_65_i0_LOAD(fuselector_BMEMORY_CTRLN_65_i0_LOAD), .fuselector_BMEMORY_CTRLN_65_i0_STORE(fuselector_BMEMORY_CTRLN_65_i0_STORE), .selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0(selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0), .selector_MUX_112_reg_14_0_0_0(selector_MUX_112_reg_14_0_0_0), .selector_MUX_113_reg_15_0_0_0(selector_MUX_113_reg_15_0_0_0), .selector_MUX_114_reg_16_0_0_0(selector_MUX_114_reg_16_0_0_0), .selector_MUX_123_reg_24_0_0_0(selector_MUX_123_reg_24_0_0_0), .selector_MUX_126_reg_27_0_0_0(selector_MUX_126_reg_27_0_0_0), .selector_MUX_127_reg_28_0_0_0(selector_MUX_127_reg_28_0_0_0), .selector_MUX_131_reg_31_0_0_0(selector_MUX_131_reg_31_0_0_0), .selector_MUX_131_reg_31_0_0_1(selector_MUX_131_reg_31_0_0_1), .selector_MUX_140_reg_9_0_0_0(selector_MUX_140_reg_9_0_0_0), .selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0(selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0), .selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_1(selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_1), .selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_0(selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_0), .selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_1(selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_1), .selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_0(selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_0), .selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_1(selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_1), .selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_1_0(selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_1_0), .selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_0(selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_0), .selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_1(selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_1), .selector_MUX_8_BMEMORY_CTRLN_65_i0_0_1_0(selector_MUX_8_BMEMORY_CTRLN_65_i0_0_1_0), .selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_0(selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_0), .selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_1(selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_1), .selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_2(selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_2), .selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_0(selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_0), .selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_1(selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_1), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_29(wrenable_reg_29), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_30(wrenable_reg_30), .wrenable_reg_31(wrenable_reg_31), .wrenable_reg_32(wrenable_reg_32), .wrenable_reg_33(wrenable_reg_33), .wrenable_reg_34(wrenable_reg_34), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_quicksortF_28866_29328(OUT_CONDITION_quicksortF_28866_29328), .OUT_CONDITION_quicksortF_28866_29336(OUT_CONDITION_quicksortF_28866_29336), .OUT_CONDITION_quicksortF_28866_29339(OUT_CONDITION_quicksortF_28866_29339), .OUT_CONDITION_quicksortF_28866_29345(OUT_CONDITION_quicksortF_28866_29345), .OUT_CONDITION_quicksortF_28866_29356(OUT_CONDITION_quicksortF_28866_29356), .OUT_MULTIIF_quicksortF_28866_29666(OUT_MULTIIF_quicksortF_28866_29666), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_quicksortF #(.MEM_var_29111_28866(MEM_var_29111_28866)) Datapath_i (.Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_CONDITION_quicksortF_28866_29328(OUT_CONDITION_quicksortF_28866_29328), .OUT_CONDITION_quicksortF_28866_29336(OUT_CONDITION_quicksortF_28866_29336), .OUT_CONDITION_quicksortF_28866_29339(OUT_CONDITION_quicksortF_28866_29339), .OUT_CONDITION_quicksortF_28866_29345(OUT_CONDITION_quicksortF_28866_29345), .OUT_CONDITION_quicksortF_28866_29356(OUT_CONDITION_quicksortF_28866_29356), .OUT_MULTIIF_quicksortF_28866_29666(OUT_MULTIIF_quicksortF_28866_29666), .clock(clock), .reset(reset), .in_port_arr(arr), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_LOAD), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_STORE), .fuselector_BMEMORY_CTRLN_65_i0_LOAD(fuselector_BMEMORY_CTRLN_65_i0_LOAD), .fuselector_BMEMORY_CTRLN_65_i0_STORE(fuselector_BMEMORY_CTRLN_65_i0_STORE), .selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0(selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0), .selector_MUX_112_reg_14_0_0_0(selector_MUX_112_reg_14_0_0_0), .selector_MUX_113_reg_15_0_0_0(selector_MUX_113_reg_15_0_0_0), .selector_MUX_114_reg_16_0_0_0(selector_MUX_114_reg_16_0_0_0), .selector_MUX_123_reg_24_0_0_0(selector_MUX_123_reg_24_0_0_0), .selector_MUX_126_reg_27_0_0_0(selector_MUX_126_reg_27_0_0_0), .selector_MUX_127_reg_28_0_0_0(selector_MUX_127_reg_28_0_0_0), .selector_MUX_131_reg_31_0_0_0(selector_MUX_131_reg_31_0_0_0), .selector_MUX_131_reg_31_0_0_1(selector_MUX_131_reg_31_0_0_1), .selector_MUX_140_reg_9_0_0_0(selector_MUX_140_reg_9_0_0_0), .selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0(selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_0), .selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_1(selector_MUX_1_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_1_0_1), .selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_0(selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_0), .selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_1(selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_0_0_1), .selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_0(selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_0), .selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_1(selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_0_1), .selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_1_0(selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i1_1_1_0), .selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_0(selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_0), .selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_1(selector_MUX_8_BMEMORY_CTRLN_65_i0_0_0_1), .selector_MUX_8_BMEMORY_CTRLN_65_i0_0_1_0(selector_MUX_8_BMEMORY_CTRLN_65_i0_0_1_0), .selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_0(selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_0), .selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_1(selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_1), .selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_2(selector_MUX_9_BMEMORY_CTRLN_65_i0_1_0_2), .selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_0(selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_0), .selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_1(selector_MUX_9_BMEMORY_CTRLN_65_i0_1_1_1), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_29(wrenable_reg_29), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_30(wrenable_reg_30), .wrenable_reg_31(wrenable_reg_31), .wrenable_reg_32(wrenable_reg_32), .wrenable_reg_33(wrenable_reg_33), .wrenable_reg_34(wrenable_reg_34), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Datapath RTL description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_main(clock, reset, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, selector_IN_UNBOUNDED_main_28869_29387, wrenable_reg_0, OUT_UNBOUNDED_main_28869_29387);
  parameter MEM_var_28860_28869=32, MEM_var_29111_28866=32;
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
  input selector_IN_UNBOUNDED_main_28869_29387;
  input wrenable_reg_0;
  // OUT
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [13:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  output OUT_UNBOUNDED_main_28869_29387;
  // Component and signal declarations
  wire [7:0] null_out_signal_array_28860_0_out1_0;
  wire [7:0] null_out_signal_array_28860_0_out1_1;
  wire [7:0] null_out_signal_array_28860_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_28860_0_proxy_out1_1;
  wire [31:0] out_UUdata_converter_FU_4_i0_fu_main_28869_29564;
  wire [31:0] out_addr_expr_FU_3_i0_fu_main_28869_29397;
  wire [6:0] out_const_0;
  wire [31:0] out_conv_out_const_0_7_32;
  wire [31:0] out_reg_0_reg_0;
  wire s_done_fu_main_28869_29387;
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
  
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(7), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(7), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28860.mem"), .n_elements(8), .data_size(8), .address_space_begin(MEM_var_28860_28869), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(7), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28860_0 (.out1({null_out_signal_array_28860_0_out1_1, null_out_signal_array_28860_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_0), .proxy_out1({null_out_signal_array_28860_0_proxy_out1_1, null_out_signal_array_28860_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({7'b0000000, 7'b0000000}), .in3({4'b0000, 4'b0000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({7'b0000000, 7'b0000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(14), .PORTSIZE_in1(1), .BITSIZE_out1(14)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerSout_DataRdy5_ (.out1(sig_out_bus_mergerSout_DataRdy5_), .in1({sig_in_bus_mergerSout_DataRdy5_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerSout_Rdata_ram6_ (.out1(sig_out_bus_mergerSout_Rdata_ram6_), .in1({sig_in_bus_mergerSout_Rdata_ram6_0}));
  constant_value #(.BITSIZE_out1(7), .value(MEM_var_28860_28869)) const_0 (.out1(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(32)) conv_out_const_0_7_32 (.out1(out_conv_out_const_0_7_32), .in1(out_const_0));
  quicksortF #(.MEM_var_29111_28866(MEM_var_29111_28866)) fu_main_28869_29387 (.done_port(s_done_fu_main_28869_29387), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28869_29387), .arr(out_reg_0_reg_0), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_main_28869_29397 (.out1(out_addr_expr_FU_3_i0_fu_main_28869_29397), .in1(out_conv_out_const_0_7_32));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_main_28869_29564 (.out1(out_UUdata_converter_FU_4_i0_fu_main_28869_29564), .in1(out_addr_expr_FU_3_i0_fu_main_28869_29397));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(7), .PORTSIZE_in1(2), .BITSIZE_out1(14)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerMout_data_ram_size2_0 (.out1(sig_in_bus_mergerMout_data_ram_size2_0), .in1(sig_in_vector_bus_mergerMout_data_ram_size2_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_oe_ram3_0 (.out1(sig_in_bus_mergerMout_oe_ram3_0), .in1(sig_in_vector_bus_mergerMout_oe_ram3_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_we_ram4_0 (.out1(sig_in_bus_mergerMout_we_ram4_0), .in1(sig_in_vector_bus_mergerMout_we_ram4_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_0 (.out1(sig_in_bus_mergerSout_DataRdy5_0), .in1(sig_in_vector_bus_mergerSout_DataRdy5_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram6_0 (.out1(sig_in_bus_mergerSout_Rdata_ram6_0), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_4_i0_fu_main_28869_29564), .wenable(wrenable_reg_0));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(14), .BITSIZE_out1(7), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy5_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy5_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram6_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram6_));
  // io-signal post fix
  assign OUT_UNBOUNDED_main_28869_29387 = s_done_fu_main_28869_29387;

endmodule

// FSM based controller description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_main(done_port, selector_IN_UNBOUNDED_main_28869_29387, wrenable_reg_0, OUT_UNBOUNDED_main_28869_29387, clock, reset, start_port);
  // IN
  input OUT_UNBOUNDED_main_28869_29387;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_IN_UNBOUNDED_main_28869_29387;
  output wrenable_reg_0;
  parameter [3:0] S_0 = 4'b0001,
    S_1 = 4'b0010,
    S_2 = 4'b0100,
    S_3 = 4'b1000;
  reg [3:0] _present_state, _next_state;
  reg done_port;
  reg selector_IN_UNBOUNDED_main_28869_29387;
  reg wrenable_reg_0;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    selector_IN_UNBOUNDED_main_28869_29387 = 1'b0;
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
          selector_IN_UNBOUNDED_main_28869_29387 = 1'b1;
          if (OUT_UNBOUNDED_main_28869_29387 == 1'b0)
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
          if (OUT_UNBOUNDED_main_28869_29387 == 1'b0)
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
  parameter MEM_var_28860_28869=32, MEM_var_29111_28866=32;
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
  wire OUT_UNBOUNDED_main_28869_29387;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire selector_IN_UNBOUNDED_main_28869_29387;
  wire wrenable_reg_0;
  
  controller_main Controller_i (.done_port(done_delayed_REG_signal_in), .selector_IN_UNBOUNDED_main_28869_29387(selector_IN_UNBOUNDED_main_28869_29387), .wrenable_reg_0(wrenable_reg_0), .OUT_UNBOUNDED_main_28869_29387(OUT_UNBOUNDED_main_28869_29387), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_main #(.MEM_var_28860_28869(MEM_var_28860_28869), .MEM_var_29111_28866(MEM_var_29111_28866)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_UNBOUNDED_main_28869_29387(OUT_UNBOUNDED_main_28869_29387), .clock(clock), .reset(reset), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .selector_IN_UNBOUNDED_main_28869_29387(selector_IN_UNBOUNDED_main_28869_29387), .wrenable_reg_0(wrenable_reg_0));
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
  parameter MEM_var_28860_28869=32, MEM_var_29111_28866=32;
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
  
  _main #(.MEM_var_28860_28869(MEM_var_28860_28869), .MEM_var_29111_28866(MEM_var_29111_28866)) _main_i0 (.done_port(done_port), .Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .clock(clock), .reset(reset), .start_port(start_port), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram({8'b00000000, 8'b00000000}), .Sin_DataRdy({1'b0, 1'b0}), .Min_oe_ram({1'b0, 1'b0}), .Min_we_ram({1'b0, 1'b0}), .Min_addr_ram({7'b0000000, 7'b0000000}), .Min_Wdata_ram({8'b00000000, 8'b00000000}), .Min_data_ram_size({4'b0000, 4'b0000}));

endmodule


