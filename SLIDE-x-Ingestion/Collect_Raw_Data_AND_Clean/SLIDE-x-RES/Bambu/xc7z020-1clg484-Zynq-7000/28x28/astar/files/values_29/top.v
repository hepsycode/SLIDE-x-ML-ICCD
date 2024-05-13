// 
// Politecnico di Milano
// Code created using PandA - Version: PandA 0.9.6 - Revision 891ec3caed502474cab0813cc4a9fc678deabaa5 - Date 2022-06-10T16:53:37
// bambu executed with: bambu -I/home/dews/Scrivania/bambu-hls/RESULTS/Bambu/xc7z020-1clg484-Zynq-7000/28x28/astar/includes/values_29 --simulate --simulator=VERILATOR --clock-period=5 --device-name=xc7z020-1clg484-VVD /home/dews/Scrivania/bambu-hls/cc4cs_bambu/benchmarkBasic/astar/thrd.c 
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
module datapath_astarF(clock, reset, in_port_a, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, proxy_out1_28861, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_out1_28868, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE, fuselector_BMEMORY_CTRLN_107_i0_LOAD, fuselector_BMEMORY_CTRLN_107_i0_STORE, fuselector_BMEMORY_CTRLN_107_i1_LOAD, fuselector_BMEMORY_CTRLN_107_i1_STORE, selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0, selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1, selector_MUX_155_reg_11_0_0_0, selector_MUX_155_reg_11_0_0_1, selector_MUX_160_reg_16_0_0_0, selector_MUX_165_reg_20_0_0_0, selector_MUX_167_reg_22_0_0_0, selector_MUX_169_reg_24_0_0_0, selector_MUX_169_reg_24_0_0_1, selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0, selector_MUX_176_reg_30_0_0_0, selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0, selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1, selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_1_0, selector_MUX_180_reg_34_0_0_0, selector_MUX_207_reg_59_0_0_0, selector_MUX_213_reg_64_0_0_0, selector_MUX_214_reg_65_0_0_0, selector_MUX_215_reg_66_0_0_0, selector_MUX_215_reg_66_0_0_1, selector_MUX_21_BMEMORY_CTRLN_107_i0_1_0_0, selector_MUX_24_BMEMORY_CTRLN_107_i1_1_0_0, selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0, selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1, selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0, selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0, selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0, selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1, selector_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0, selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0, fuselector_PROXY_CTRLN_5_i0_LOAD, fuselector_PROXY_CTRLN_5_i0_STORE, fuselector_PROXY_CTRLN_6_i0_LOAD, fuselector_PROXY_CTRLN_6_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_29, wrenable_reg_3, wrenable_reg_30, wrenable_reg_31, wrenable_reg_32, wrenable_reg_33, wrenable_reg_34, wrenable_reg_35, wrenable_reg_36, wrenable_reg_37, wrenable_reg_38, wrenable_reg_39, wrenable_reg_4, wrenable_reg_40, wrenable_reg_41, wrenable_reg_42, wrenable_reg_43, wrenable_reg_44, wrenable_reg_45, wrenable_reg_46, wrenable_reg_47, wrenable_reg_48, wrenable_reg_49, wrenable_reg_5, wrenable_reg_50, wrenable_reg_51, wrenable_reg_52, wrenable_reg_53, wrenable_reg_54, wrenable_reg_55, wrenable_reg_56, wrenable_reg_57, wrenable_reg_58, wrenable_reg_59, wrenable_reg_6, wrenable_reg_60, wrenable_reg_61, wrenable_reg_62, wrenable_reg_63, wrenable_reg_64, wrenable_reg_65, wrenable_reg_66, wrenable_reg_67, wrenable_reg_68, wrenable_reg_69, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_astarF_28877_29378, OUT_CONDITION_astarF_28877_29400, OUT_CONDITION_astarF_28877_29418, OUT_CONDITION_astarF_28877_29433, OUT_CONDITION_astarF_28877_29633, OUT_CONDITION_astarF_28877_29635, OUT_CONDITION_astarF_28877_29641, OUT_CONDITION_astarF_28877_29648, OUT_CONDITION_astarF_28877_29664, OUT_CONDITION_astarF_28877_29670, OUT_CONDITION_astarF_28877_29673);
  parameter MEM_var_28861_28879=64, MEM_var_28862_28877=256, MEM_var_28864_28877=320, MEM_var_28865_28877=384, MEM_var_28866_28877=448, MEM_var_28867_28877=512, MEM_var_28868_28879=128;
  // IN
  input clock;
  input reset;
  input [31:0] in_port_a;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [19:0] S_addr_ram;
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
  input [19:0] Min_addr_ram;
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
  input fuselector_BMEMORY_CTRLN_107_i0_LOAD;
  input fuselector_BMEMORY_CTRLN_107_i0_STORE;
  input fuselector_BMEMORY_CTRLN_107_i1_LOAD;
  input fuselector_BMEMORY_CTRLN_107_i1_STORE;
  input selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0;
  input selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1;
  input selector_MUX_155_reg_11_0_0_0;
  input selector_MUX_155_reg_11_0_0_1;
  input selector_MUX_160_reg_16_0_0_0;
  input selector_MUX_165_reg_20_0_0_0;
  input selector_MUX_167_reg_22_0_0_0;
  input selector_MUX_169_reg_24_0_0_0;
  input selector_MUX_169_reg_24_0_0_1;
  input selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0;
  input selector_MUX_176_reg_30_0_0_0;
  input selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0;
  input selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1;
  input selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_1_0;
  input selector_MUX_180_reg_34_0_0_0;
  input selector_MUX_207_reg_59_0_0_0;
  input selector_MUX_213_reg_64_0_0_0;
  input selector_MUX_214_reg_65_0_0_0;
  input selector_MUX_215_reg_66_0_0_0;
  input selector_MUX_215_reg_66_0_0_1;
  input selector_MUX_21_BMEMORY_CTRLN_107_i0_1_0_0;
  input selector_MUX_24_BMEMORY_CTRLN_107_i1_1_0_0;
  input selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0;
  input selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1;
  input selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0;
  input selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0;
  input selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0;
  input selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1;
  input selector_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0;
  input selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0;
  input fuselector_PROXY_CTRLN_5_i0_LOAD;
  input fuselector_PROXY_CTRLN_5_i0_STORE;
  input fuselector_PROXY_CTRLN_6_i0_LOAD;
  input fuselector_PROXY_CTRLN_6_i0_STORE;
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
  input wrenable_reg_63;
  input wrenable_reg_64;
  input wrenable_reg_65;
  input wrenable_reg_66;
  input wrenable_reg_67;
  input wrenable_reg_68;
  input wrenable_reg_69;
  input wrenable_reg_7;
  input wrenable_reg_8;
  input wrenable_reg_9;
  // OUT
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [15:0] proxy_in1_28861;
  output [19:0] proxy_in2_28861;
  output [7:0] proxy_in3_28861;
  output [1:0] proxy_sel_LOAD_28861;
  output [1:0] proxy_sel_STORE_28861;
  output [15:0] proxy_in1_28868;
  output [19:0] proxy_in2_28868;
  output [7:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [19:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  output OUT_CONDITION_astarF_28877_29378;
  output OUT_CONDITION_astarF_28877_29400;
  output OUT_CONDITION_astarF_28877_29418;
  output OUT_CONDITION_astarF_28877_29433;
  output OUT_CONDITION_astarF_28877_29633;
  output OUT_CONDITION_astarF_28877_29635;
  output OUT_CONDITION_astarF_28877_29641;
  output OUT_CONDITION_astarF_28877_29648;
  output OUT_CONDITION_astarF_28877_29664;
  output OUT_CONDITION_astarF_28877_29670;
  output OUT_CONDITION_astarF_28877_29673;
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
  wire [7:0] null_out_signal_array_28867_0_out1_1;
  wire [7:0] null_out_signal_array_28867_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_28867_0_proxy_out1_1;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_array_28864_0;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28866_0;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_array_28867_0;
  wire [7:0] out_BMEMORY_CTRLN_107_i0_BMEMORY_CTRLN_107_i0;
  wire [7:0] out_BMEMORY_CTRLN_107_i1_BMEMORY_CTRLN_107_i0;
  wire signed [7:0] out_IIconvert_expr_FU_98_i0_fu_astarF_28877_29598;
  wire signed [7:0] out_IIdata_converter_FU_82_i0_fu_astarF_28877_29644;
  wire signed [7:0] out_IIdata_converter_FU_87_i0_fu_astarF_28877_29643;
  wire signed [7:0] out_IIdata_converter_FU_88_i0_fu_astarF_28877_29647;
  wire signed [7:0] out_IIdata_converter_FU_95_i0_fu_astarF_28877_29604;
  wire [7:0] out_IUdata_converter_FU_61_i0_fu_astarF_28877_29877;
  wire [2:0] out_IUdata_converter_FU_79_i0_fu_astarF_28877_29900;
  wire [7:0] out_IUdata_converter_FU_81_i0_fu_astarF_28877_29917;
  wire [7:0] out_IUdata_converter_FU_93_i0_fu_astarF_28877_29970;
  wire [7:0] out_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0;
  wire [7:0] out_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1;
  wire [3:0] out_MUX_155_reg_11_0_0_0;
  wire [3:0] out_MUX_155_reg_11_0_0_1;
  wire [31:0] out_MUX_160_reg_16_0_0_0;
  wire [7:0] out_MUX_165_reg_20_0_0_0;
  wire [7:0] out_MUX_167_reg_22_0_0_0;
  wire [3:0] out_MUX_169_reg_24_0_0_0;
  wire [3:0] out_MUX_169_reg_24_0_0_1;
  wire [7:0] out_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0;
  wire [7:0] out_MUX_176_reg_30_0_0_0;
  wire [9:0] out_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0;
  wire [9:0] out_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1;
  wire [9:0] out_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_1_0;
  wire [7:0] out_MUX_180_reg_34_0_0_0;
  wire [7:0] out_MUX_207_reg_59_0_0_0;
  wire [7:0] out_MUX_213_reg_64_0_0_0;
  wire [7:0] out_MUX_214_reg_65_0_0_0;
  wire [7:0] out_MUX_215_reg_66_0_0_0;
  wire [7:0] out_MUX_215_reg_66_0_0_1;
  wire [9:0] out_MUX_21_BMEMORY_CTRLN_107_i0_1_0_0;
  wire [9:0] out_MUX_24_BMEMORY_CTRLN_107_i1_1_0_0;
  wire [7:0] out_MUX_47_PROXY_CTRLN_5_i0_0_0_0;
  wire [7:0] out_MUX_47_PROXY_CTRLN_5_i0_0_0_1;
  wire [9:0] out_MUX_48_PROXY_CTRLN_5_i0_1_0_0;
  wire [7:0] out_MUX_51_PROXY_CTRLN_6_i0_0_0_0;
  wire [9:0] out_MUX_52_PROXY_CTRLN_6_i0_1_0_0;
  wire [9:0] out_MUX_52_PROXY_CTRLN_6_i0_1_0_1;
  wire [7:0] out_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0;
  wire [9:0] out_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0;
  wire [7:0] out_PROXY_CTRLN_5_i0_PROXY_CTRLN_5_i0;
  wire [7:0] out_PROXY_CTRLN_6_i0_PROXY_CTRLN_6_i0;
  wire signed [8:0] out_UIdata_converter_FU_60_i0_fu_astarF_28877_29520;
  wire signed [3:0] out_UIdata_converter_FU_77_i0_fu_astarF_28877_29553;
  wire signed [8:0] out_UIdata_converter_FU_80_i0_fu_astarF_28877_29579;
  wire signed [8:0] out_UIdata_converter_FU_91_i0_fu_astarF_28877_29585;
  wire [9:0] out_UUdata_converter_FU_12_i0_fu_astarF_28877_29740;
  wire [9:0] out_UUdata_converter_FU_13_i0_fu_astarF_28877_29723;
  wire [31:0] out_UUdata_converter_FU_15_i0_fu_astarF_28877_29402;
  wire [31:0] out_UUdata_converter_FU_16_i0_fu_astarF_28877_29403;
  wire [31:0] out_UUdata_converter_FU_18_i0_fu_astarF_28877_29815;
  wire [31:0] out_UUdata_converter_FU_24_i0_fu_astarF_28877_30054;
  wire [31:0] out_UUdata_converter_FU_34_i0_fu_astarF_28877_29415;
  wire [2:0] out_UUdata_converter_FU_58_i0_fu_astarF_28877_29513;
  wire [7:0] out_UUdata_converter_FU_76_i0_fu_astarF_28877_29572;
  wire [11:0] out_UUdata_converter_FU_78_i0_fu_astarF_28877_29897;
  wire [2:0] out_UUdata_converter_FU_83_i0_fu_astarF_28877_29548;
  wire [9:0] out_UUdata_converter_FU_84_i0_fu_astarF_28877_29928;
  wire [7:0] out_UUdata_converter_FU_90_i0_fu_astarF_28877_29619;
  wire [11:0] out_UUdata_converter_FU_92_i0_fu_astarF_28877_29967;
  wire [11:0] out_UUdata_converter_FU_94_i0_fu_astarF_28877_29980;
  wire signed [8:0] out___builtin_abs_8_8_108_i0_fu_astarF_28877_29601;
  wire [9:0] out_addr_expr_FU_10_i0_fu_astarF_28877_29786;
  wire [9:0] out_addr_expr_FU_11_i0_fu_astarF_28877_29761;
  wire [31:0] out_addr_expr_FU_14_i0_fu_astarF_28877_29792;
  wire [31:0] out_addr_expr_FU_17_i0_fu_astarF_28877_29839;
  wire [31:0] out_addr_expr_FU_19_i0_fu_astarF_28877_29829;
  wire [31:0] out_addr_expr_FU_20_i0_fu_astarF_28877_29843;
  wire [31:0] out_addr_expr_FU_21_i0_fu_astarF_28877_29851;
  wire [31:0] out_addr_expr_FU_22_i0_fu_astarF_28877_30025;
  wire [31:0] out_addr_expr_FU_23_i0_fu_astarF_28877_30073;
  wire [31:0] out_addr_expr_FU_9_i0_fu_astarF_28877_29716;
  wire signed [2:0] out_bit_and_expr_FU_8_0_8_109_i0_fu_astarF_28877_30316;
  wire signed [2:0] out_bit_and_expr_FU_8_0_8_110_i0_fu_astarF_28877_30332;
  wire signed [7:0] out_bit_ior_concat_expr_FU_111_i0_fu_astarF_28877_29595;
  wire signed [7:0] out_bit_ior_concat_expr_FU_112_i0_fu_astarF_28877_29607;
  wire signed [7:0] out_cond_expr_FU_8_8_8_8_113_i0_fu_astarF_28877_29509;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [3:0] out_const_10;
  wire [1:0] out_const_11;
  wire [5:0] out_const_12;
  wire [2:0] out_const_13;
  wire [7:0] out_const_14;
  wire [7:0] out_const_15;
  wire [8:0] out_const_16;
  wire [8:0] out_const_17;
  wire [9:0] out_const_18;
  wire [8:0] out_const_19;
  wire [7:0] out_const_2;
  wire [9:0] out_const_20;
  wire [6:0] out_const_21;
  wire [1:0] out_const_3;
  wire [2:0] out_const_4;
  wire [4:0] out_const_5;
  wire [2:0] out_const_6;
  wire [7:0] out_const_7;
  wire out_const_8;
  wire [1:0] out_const_9;
  wire [9:0] out_conv_in_port_a_32_10;
  wire [9:0] out_conv_out_UUdata_converter_FU_34_i0_fu_astarF_28877_29415_32_10;
  wire [9:0] out_conv_out_addr_expr_FU_9_i0_fu_astarF_28877_29716_32_10;
  wire [31:0] out_conv_out_const_15_8_32;
  wire [31:0] out_conv_out_const_16_9_32;
  wire [31:0] out_conv_out_const_17_9_32;
  wire [31:0] out_conv_out_const_18_10_32;
  wire [31:0] out_conv_out_const_19_9_32;
  wire [31:0] out_conv_out_const_20_10_32;
  wire [31:0] out_conv_out_const_21_7_32;
  wire [3:0] out_conv_out_const_5_5_4;
  wire [7:0] out_conv_out_i_assign_conn_obj_16_ASSIGN_SIGNED_FU_i_assign_0_I_2_8;
  wire [2:0] out_conv_out_reg_11_reg_11_4_3;
  wire [9:0] out_conv_out_reg_15_reg_15_32_10;
  wire [9:0] out_conv_out_reg_1_reg_1_32_10;
  wire [2:0] out_conv_out_reg_24_reg_24_4_3;
  wire [9:0] out_conv_out_reg_25_reg_25_32_10;
  wire [9:0] out_conv_out_reg_33_reg_33_32_10;
  wire [9:0] out_conv_out_reg_37_reg_37_12_10;
  wire [9:0] out_conv_out_reg_42_reg_42_13_10;
  wire [9:0] out_conv_out_reg_52_reg_52_13_10;
  wire [9:0] out_conv_out_reg_53_reg_53_13_10;
  wire [9:0] out_conv_out_reg_5_reg_5_32_10;
  wire [9:0] out_conv_out_reg_61_reg_61_32_10;
  wire [9:0] out_conv_out_reg_62_reg_62_32_10;
  wire [2:0] out_conv_out_reg_66_reg_66_8_3;
  wire [9:0] out_conv_out_reg_6_reg_6_32_10;
  wire [9:0] out_conv_out_reg_7_reg_7_32_10;
  wire [9:0] out_conv_out_reg_9_reg_9_32_10;
  wire [7:0] out_conv_out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_10_1_8;
  wire [7:0] out_conv_out_u_assign_conn_obj_14_ASSIGN_UNSIGNED_FU_u_assign_12_3_8;
  wire [3:0] out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_9_1_4;
  wire [3:0] out_conv_out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_14_1_4;
  wire out_ge_expr_FU_8_0_8_114_i0_fu_astarF_28877_29992;
  wire out_gt_expr_FU_8_0_8_115_i0_fu_astarF_28877_30250;
  wire out_gt_expr_FU_8_0_8_115_i1_fu_astarF_28877_30262;
  wire signed [1:0] out_i_assign_conn_obj_16_ASSIGN_SIGNED_FU_i_assign_0;
  wire [7:0] out_iu_conv_conn_obj_11_IUdata_converter_FU_iu_conv_1;
  wire [7:0] out_iu_conv_conn_obj_15_IUdata_converter_FU_iu_conv_2;
  wire [7:0] out_iu_conv_conn_obj_17_IUdata_converter_FU_iu_conv_3;
  wire [7:0] out_iu_conv_conn_obj_18_IUdata_converter_FU_iu_conv_4;
  wire [7:0] out_iu_conv_conn_obj_19_IUdata_converter_FU_iu_conv_5;
  wire [7:0] out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_6;
  wire [7:0] out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_7;
  wire [7:0] out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_8;
  wire out_le_expr_FU_8_8_8_116_i0_fu_astarF_28877_29493;
  wire signed [7:0] out_lshift_expr_FU_8_0_8_117_i0_fu_astarF_28877_30312;
  wire signed [7:0] out_lshift_expr_FU_8_0_8_118_i0_fu_astarF_28877_30328;
  wire out_lt_expr_FU_16_16_16_119_i0_fu_astarF_28877_30258;
  wire out_ne_expr_FU_8_0_8_120_i0_fu_astarF_28877_29511;
  wire out_ne_expr_FU_8_0_8_121_i0_fu_astarF_28877_30256;
  wire signed [7:0] out_plus_expr_FU_8_0_8_122_i0_fu_astarF_28877_29431;
  wire signed [7:0] out_plus_expr_FU_8_0_8_122_i1_fu_astarF_28877_29621;
  wire signed [7:0] out_plus_expr_FU_8_0_8_123_i0_fu_astarF_28877_29528;
  wire signed [5:0] out_plus_expr_FU_8_0_8_124_i0_fu_astarF_28877_30307;
  wire signed [5:0] out_plus_expr_FU_8_0_8_125_i0_fu_astarF_28877_30325;
  wire signed [7:0] out_plus_expr_FU_8_8_8_126_i0_fu_astarF_28877_29556;
  wire signed [7:0] out_plus_expr_FU_8_8_8_126_i1_fu_astarF_28877_29589;
  wire signed [8:0] out_plus_expr_FU_8_8_8_126_i2_fu_astarF_28877_29645;
  wire out_read_cond_FU_105_i0_fu_astarF_28877_29670;
  wire out_read_cond_FU_106_i0_fu_astarF_28877_29673;
  wire out_read_cond_FU_28_i0_fu_astarF_28877_29378;
  wire out_read_cond_FU_31_i0_fu_astarF_28877_29400;
  wire out_read_cond_FU_35_i0_fu_astarF_28877_29418;
  wire out_read_cond_FU_36_i0_fu_astarF_28877_29433;
  wire out_read_cond_FU_59_i0_fu_astarF_28877_29633;
  wire out_read_cond_FU_62_i0_fu_astarF_28877_29635;
  wire out_read_cond_FU_85_i0_fu_astarF_28877_29641;
  wire out_read_cond_FU_89_i0_fu_astarF_28877_29648;
  wire out_read_cond_FU_96_i0_fu_astarF_28877_29664;
  wire [31:0] out_reg_0_reg_0;
  wire [31:0] out_reg_10_reg_10;
  wire [3:0] out_reg_11_reg_11;
  wire [31:0] out_reg_12_reg_12;
  wire out_reg_13_reg_13;
  wire out_reg_14_reg_14;
  wire [31:0] out_reg_15_reg_15;
  wire [31:0] out_reg_16_reg_16;
  wire [31:0] out_reg_17_reg_17;
  wire out_reg_18_reg_18;
  wire out_reg_19_reg_19;
  wire [31:0] out_reg_1_reg_1;
  wire [7:0] out_reg_20_reg_20;
  wire [7:0] out_reg_21_reg_21;
  wire [7:0] out_reg_22_reg_22;
  wire [2:0] out_reg_23_reg_23;
  wire [3:0] out_reg_24_reg_24;
  wire [31:0] out_reg_25_reg_25;
  wire out_reg_26_reg_26;
  wire out_reg_27_reg_27;
  wire out_reg_28_reg_28;
  wire [7:0] out_reg_29_reg_29;
  wire [9:0] out_reg_2_reg_2;
  wire [7:0] out_reg_30_reg_30;
  wire [7:0] out_reg_31_reg_31;
  wire out_reg_32_reg_32;
  wire [31:0] out_reg_33_reg_33;
  wire [7:0] out_reg_34_reg_34;
  wire [11:0] out_reg_35_reg_35;
  wire [2:0] out_reg_36_reg_36;
  wire [11:0] out_reg_37_reg_37;
  wire [7:0] out_reg_38_reg_38;
  wire [9:0] out_reg_39_reg_39;
  wire [9:0] out_reg_3_reg_3;
  wire [7:0] out_reg_40_reg_40;
  wire [7:0] out_reg_41_reg_41;
  wire [12:0] out_reg_42_reg_42;
  wire [9:0] out_reg_43_reg_43;
  wire [7:0] out_reg_44_reg_44;
  wire [7:0] out_reg_45_reg_45;
  wire [7:0] out_reg_46_reg_46;
  wire [7:0] out_reg_47_reg_47;
  wire out_reg_48_reg_48;
  wire [11:0] out_reg_49_reg_49;
  wire [9:0] out_reg_4_reg_4;
  wire [7:0] out_reg_50_reg_50;
  wire [11:0] out_reg_51_reg_51;
  wire [12:0] out_reg_52_reg_52;
  wire [12:0] out_reg_53_reg_53;
  wire [7:0] out_reg_54_reg_54;
  wire [5:0] out_reg_55_reg_55;
  wire [2:0] out_reg_56_reg_56;
  wire [7:0] out_reg_57_reg_57;
  wire out_reg_58_reg_58;
  wire [7:0] out_reg_59_reg_59;
  wire [31:0] out_reg_5_reg_5;
  wire [7:0] out_reg_60_reg_60;
  wire [31:0] out_reg_61_reg_61;
  wire [31:0] out_reg_62_reg_62;
  wire [7:0] out_reg_63_reg_63;
  wire [7:0] out_reg_64_reg_64;
  wire [7:0] out_reg_65_reg_65;
  wire [7:0] out_reg_66_reg_66;
  wire out_reg_67_reg_67;
  wire [7:0] out_reg_68_reg_68;
  wire out_reg_69_reg_69;
  wire [31:0] out_reg_6_reg_6;
  wire [31:0] out_reg_7_reg_7;
  wire [31:0] out_reg_8_reg_8;
  wire [31:0] out_reg_9_reg_9;
  wire signed [5:0] out_rshift_expr_FU_8_0_8_127_i0_fu_astarF_28877_30302;
  wire signed [5:0] out_rshift_expr_FU_8_0_8_128_i0_fu_astarF_28877_30322;
  wire [0:0] out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_10;
  wire [7:0] out_u_assign_conn_obj_13_ASSIGN_UNSIGNED_FU_u_assign_11;
  wire [2:0] out_u_assign_conn_obj_14_ASSIGN_UNSIGNED_FU_u_assign_12;
  wire [0:0] out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_9;
  wire [3:0] out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_13;
  wire [0:0] out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_14;
  wire [3:0] out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_15;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_129_i0_fu_astarF_28877_30296;
  wire [0:0] out_ui_bit_and_expr_FU_1_1_1_130_i0_fu_astarF_28877_29489;
  wire [4:0] out_ui_bit_ior_concat_expr_FU_131_i0_fu_astarF_28877_29772;
  wire [7:0] out_ui_cond_expr_FU_8_8_8_8_132_i0_fu_astarF_28877_29484;
  wire out_ui_eq_expr_FU_8_0_8_133_i0_fu_astarF_28877_30244;
  wire out_ui_eq_expr_FU_8_0_8_134_i0_fu_astarF_28877_30254;
  wire out_ui_le_expr_FU_8_0_8_135_i0_fu_astarF_28877_30260;
  wire [10:0] out_ui_lshift_expr_FU_16_0_16_136_i0_fu_astarF_28877_29568;
  wire [10:0] out_ui_lshift_expr_FU_16_0_16_136_i1_fu_astarF_28877_29616;
  wire [10:0] out_ui_lshift_expr_FU_16_0_16_137_i0_fu_astarF_28877_30009;
  wire [5:0] out_ui_lshift_expr_FU_8_0_8_138_i0_fu_astarF_28877_29541;
  wire [3:0] out_ui_lshift_expr_FU_8_0_8_139_i0_fu_astarF_28877_29769;
  wire [4:0] out_ui_lshift_expr_FU_8_0_8_139_i1_fu_astarF_28877_30291;
  wire [6:0] out_ui_lshift_expr_FU_8_0_8_140_i0_fu_astarF_28877_29776;
  wire [31:0] out_ui_minus_expr_FU_8_8_8_141_i0_fu_astarF_28877_29779;
  wire out_ui_ne_expr_FU_32_32_32_142_i0_fu_astarF_28877_30248;
  wire out_ui_ne_expr_FU_8_0_8_143_i0_fu_astarF_28877_30246;
  wire out_ui_ne_expr_FU_8_0_8_143_i1_fu_astarF_28877_30252;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_144_i0_fu_astarF_28877_29417;
  wire [3:0] out_ui_plus_expr_FU_8_0_8_145_i0_fu_astarF_28877_29397;
  wire [3:0] out_ui_plus_expr_FU_8_0_8_145_i1_fu_astarF_28877_29505;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_146_i0_fu_astarF_28877_29626;
  wire [3:0] out_ui_plus_expr_FU_8_8_8_147_i0_fu_astarF_28877_30287;
  wire [12:0] out_ui_pointer_plus_expr_FU_16_0_16_148_i0_fu_astarF_28877_29989;
  wire [9:0] out_ui_pointer_plus_expr_FU_16_16_16_149_i0_fu_astarF_28877_29535;
  wire [11:0] out_ui_pointer_plus_expr_FU_16_16_16_149_i1_fu_astarF_28877_29565;
  wire [11:0] out_ui_pointer_plus_expr_FU_16_16_16_149_i2_fu_astarF_28877_29613;
  wire [11:0] out_ui_pointer_plus_expr_FU_16_16_16_149_i3_fu_astarF_28877_29906;
  wire [12:0] out_ui_pointer_plus_expr_FU_16_16_16_149_i4_fu_astarF_28877_29923;
  wire [9:0] out_ui_pointer_plus_expr_FU_16_16_16_149_i5_fu_astarF_28877_29937;
  wire [12:0] out_ui_pointer_plus_expr_FU_16_16_16_149_i6_fu_astarF_28877_29976;
  wire [11:0] out_ui_pointer_plus_expr_FU_16_16_16_149_i7_fu_astarF_28877_30012;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_0_32_150_i0_fu_astarF_28877_29800;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_151_i0_fu_astarF_28877_29789;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_151_i1_fu_astarF_28877_29854;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_151_i2_fu_astarF_28877_29883;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_151_i3_fu_astarF_28877_30038;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_151_i4_fu_astarF_28877_30063;
  wire [2:0] out_ui_rshift_expr_FU_8_0_8_152_i0_fu_astarF_28877_30279;
  wire [1:0] out_ui_rshift_expr_FU_8_0_8_152_i1_fu_astarF_28877_30283;
  wire [7:0] out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_16;
  wire [7:0] out_vb_assign_conn_obj_10_ASSIGN_VECTOR_BOOL_FU_vb_assign_17;
  wire [7:0] out_vb_assign_conn_obj_20_ASSIGN_VECTOR_BOOL_FU_vb_assign_18;
  wire [7:0] out_vb_assign_conn_obj_21_ASSIGN_VECTOR_BOOL_FU_vb_assign_19;
  wire [7:0] out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_20;
  wire [7:0] out_vb_assign_conn_obj_6_ASSIGN_VECTOR_BOOL_FU_vb_assign_21;
  wire [15:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [19:0] sig_in_bus_mergerMout_addr_ram1_0;
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
  wire [19:0] sig_in_bus_mergerproxy_in2_288619_0;
  wire [19:0] sig_in_bus_mergerproxy_in2_2886810_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_2886111_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_2886812_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886113_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886814_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886115_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886816_0;
  wire [15:0] sig_in_vector_bus_mergerMout_Wdata_ram0_0;
  wire [19:0] sig_in_vector_bus_mergerMout_addr_ram1_0;
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
  wire [19:0] sig_in_vector_bus_mergerproxy_in2_288619_0;
  wire [19:0] sig_in_vector_bus_mergerproxy_in2_2886810_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_2886111_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_2886812_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886113_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886814_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886115_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886816_0;
  wire [15:0] sig_out_bus_mergerMout_Wdata_ram0_;
  wire [19:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [7:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire [1:0] sig_out_bus_mergerMout_oe_ram3_;
  wire [1:0] sig_out_bus_mergerMout_we_ram4_;
  wire [1:0] sig_out_bus_mergerSout_DataRdy5_;
  wire [15:0] sig_out_bus_mergerSout_Rdata_ram6_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288617_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288688_;
  wire [19:0] sig_out_bus_mergerproxy_in2_288619_;
  wire [19:0] sig_out_bus_mergerproxy_in2_2886810_;
  wire [7:0] sig_out_bus_mergerproxy_in3_2886111_;
  wire [7:0] sig_out_bus_mergerproxy_in3_2886812_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886113_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886814_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886115_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886816_;
  
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) ASSIGN_SIGNED_FU_i_assign_0 (.out1(out_i_assign_conn_obj_16_ASSIGN_SIGNED_FU_i_assign_0), .in1(out_const_3));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_10 (.out1(out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_10), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_UNSIGNED_FU_u_assign_11 (.out1(out_u_assign_conn_obj_13_ASSIGN_UNSIGNED_FU_u_assign_11), .in1(out_reg_66_reg_66));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(3), .BITSIZE_out1(3)) ASSIGN_UNSIGNED_FU_u_assign_12 (.out1(out_u_assign_conn_obj_14_ASSIGN_UNSIGNED_FU_u_assign_12), .in1(out_conv_out_reg_66_reg_66_8_3));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(4), .BITSIZE_out1(4)) ASSIGN_UNSIGNED_FU_u_assign_13 (.out1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_13), .in1(out_reg_11_reg_11));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_14 (.out1(out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_14), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(4), .BITSIZE_out1(4)) ASSIGN_UNSIGNED_FU_u_assign_15 (.out1(out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_15), .in1(out_reg_24_reg_24));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_9 (.out1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_9), .in1(out_const_0));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_16 (.out1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_16), .in1(out_const_1));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_17 (.out1(out_vb_assign_conn_obj_10_ASSIGN_VECTOR_BOOL_FU_vb_assign_17), .in1(out_reg_30_reg_30));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_18 (.out1(out_vb_assign_conn_obj_20_ASSIGN_VECTOR_BOOL_FU_vb_assign_18), .in1(out_reg_64_reg_64));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_19 (.out1(out_vb_assign_conn_obj_21_ASSIGN_VECTOR_BOOL_FU_vb_assign_19), .in1(out_reg_66_reg_66));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_20 (.out1(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_20), .in1(out_const_14));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_21 (.out1(out_vb_assign_conn_obj_6_ASSIGN_VECTOR_BOOL_FU_vb_assign_21), .in1(out_const_2));
  BMEMORY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(10), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_Min_oe_ram(1), .PORTSIZE_Min_oe_ram(2), .BITSIZE_Min_we_ram(1), .PORTSIZE_Min_we_ram(2), .BITSIZE_Mout_oe_ram(1), .PORTSIZE_Mout_oe_ram(2), .BITSIZE_Mout_we_ram(1), .PORTSIZE_Mout_we_ram(2), .BITSIZE_M_DataRdy(1), .PORTSIZE_M_DataRdy(2), .BITSIZE_Min_addr_ram(10), .PORTSIZE_Min_addr_ram(2), .BITSIZE_Mout_addr_ram(10), .PORTSIZE_Mout_addr_ram(2), .BITSIZE_M_Rdata_ram(8), .PORTSIZE_M_Rdata_ram(2), .BITSIZE_Min_Wdata_ram(8), .PORTSIZE_Min_Wdata_ram(2), .BITSIZE_Mout_Wdata_ram(8), .PORTSIZE_Mout_Wdata_ram(2), .BITSIZE_Min_data_ram_size(4), .PORTSIZE_Min_data_ram_size(2), .BITSIZE_Mout_data_ram_size(4), .PORTSIZE_Mout_data_ram_size(2)) BMEMORY_CTRLN_107_i0 (.out1({out_BMEMORY_CTRLN_107_i1_BMEMORY_CTRLN_107_i0, out_BMEMORY_CTRLN_107_i0_BMEMORY_CTRLN_107_i0}), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .in1({8'b00000000, out_iu_conv_conn_obj_15_IUdata_converter_FU_iu_conv_2}), .in2({out_MUX_24_BMEMORY_CTRLN_107_i1_1_0_0, out_MUX_21_BMEMORY_CTRLN_107_i0_1_0_0}), .in3({out_conv_out_const_5_5_4, out_conv_out_const_5_5_4}), .in4({out_const_8, out_const_8}), .sel_LOAD({fuselector_BMEMORY_CTRLN_107_i1_LOAD, fuselector_BMEMORY_CTRLN_107_i0_LOAD}), .sel_STORE({fuselector_BMEMORY_CTRLN_107_i1_STORE, fuselector_BMEMORY_CTRLN_107_i0_STORE}), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .M_Rdata_ram(M_Rdata_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .M_DataRdy(M_DataRdy));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_11_IUdata_converter_FU_iu_conv_1), .in1(out_reg_21_reg_21));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_2 (.out1(out_iu_conv_conn_obj_15_IUdata_converter_FU_iu_conv_2), .in1(out_reg_47_reg_47));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_3 (.out1(out_iu_conv_conn_obj_17_IUdata_converter_FU_iu_conv_3), .in1(out_reg_60_reg_60));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_4 (.out1(out_iu_conv_conn_obj_18_IUdata_converter_FU_iu_conv_4), .in1(out_reg_60_reg_60));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_5 (.out1(out_iu_conv_conn_obj_19_IUdata_converter_FU_iu_conv_5), .in1(out_reg_63_reg_63));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_6 (.out1(out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_6), .in1(out_const_1));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_7 (.out1(out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_7), .in1(out_const_7));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_8 (.out1(out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_8), .in1(out_reg_20_reg_20));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0 (.out1(out_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0), .sel(selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0), .in1(out_iu_conv_conn_obj_11_IUdata_converter_FU_iu_conv_1), .in2(out_iu_conv_conn_obj_19_IUdata_converter_FU_iu_conv_5));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1 (.out1(out_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1), .sel(selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1), .in1(out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_8), .in2(out_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0));
  MUX_GATE #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(4)) MUX_155_reg_11_0_0_0 (.out1(out_MUX_155_reg_11_0_0_0), .sel(selector_MUX_155_reg_11_0_0_0), .in1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_9_1_4), .in2(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_13));
  MUX_GATE #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(4)) MUX_155_reg_11_0_0_1 (.out1(out_MUX_155_reg_11_0_0_1), .sel(selector_MUX_155_reg_11_0_0_1), .in1(out_ui_plus_expr_FU_8_0_8_145_i0_fu_astarF_28877_29397), .in2(out_MUX_155_reg_11_0_0_0));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_160_reg_16_0_0_0 (.out1(out_MUX_160_reg_16_0_0_0), .sel(selector_MUX_160_reg_16_0_0_0), .in1(out_reg_17_reg_17), .in2(out_UUdata_converter_FU_15_i0_fu_astarF_28877_29402));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_165_reg_20_0_0_0 (.out1(out_MUX_165_reg_20_0_0_0), .sel(selector_MUX_165_reg_20_0_0_0), .in1(out_reg_68_reg_68), .in2(out_plus_expr_FU_8_0_8_122_i0_fu_astarF_28877_29431));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_167_reg_22_0_0_0 (.out1(out_MUX_167_reg_22_0_0_0), .sel(selector_MUX_167_reg_22_0_0_0), .in1(out_const_7), .in2(out_cond_expr_FU_8_8_8_8_113_i0_fu_astarF_28877_29509));
  MUX_GATE #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(4)) MUX_169_reg_24_0_0_0 (.out1(out_MUX_169_reg_24_0_0_0), .sel(selector_MUX_169_reg_24_0_0_0), .in1(out_conv_out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_14_1_4), .in2(out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_15));
  MUX_GATE #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(4)) MUX_169_reg_24_0_0_1 (.out1(out_MUX_169_reg_24_0_0_1), .sel(selector_MUX_169_reg_24_0_0_1), .in1(out_ui_plus_expr_FU_8_0_8_145_i1_fu_astarF_28877_29505), .in2(out_MUX_169_reg_24_0_0_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0 (.out1(out_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0), .sel(selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0), .in1(out_iu_conv_conn_obj_18_IUdata_converter_FU_iu_conv_4), .in2(out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_6));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_176_reg_30_0_0_0 (.out1(out_MUX_176_reg_30_0_0_0), .sel(selector_MUX_176_reg_30_0_0_0), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_array_28864_0), .in2(out_ui_cond_expr_FU_8_8_8_8_132_i0_fu_astarF_28877_29484));
  MUX_GATE #(.BITSIZE_in1(10), .BITSIZE_in2(10), .BITSIZE_out1(10)) MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0 (.out1(out_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0), .sel(selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0), .in1(out_conv_out_reg_61_reg_61_32_10), .in2(out_conv_out_reg_5_reg_5_32_10));
  MUX_GATE #(.BITSIZE_in1(10), .BITSIZE_in2(10), .BITSIZE_out1(10)) MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1 (.out1(out_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1), .sel(selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1), .in1(out_conv_out_reg_33_reg_33_32_10), .in2(out_conv_out_reg_25_reg_25_32_10));
  MUX_GATE #(.BITSIZE_in1(10), .BITSIZE_in2(10), .BITSIZE_out1(10)) MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_1_0 (.out1(out_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_1_0), .sel(selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_1_0), .in1(out_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0), .in2(out_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_180_reg_34_0_0_0 (.out1(out_MUX_180_reg_34_0_0_0), .sel(selector_MUX_180_reg_34_0_0_0), .in1(out_reg_64_reg_64), .in2(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_array_28864_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_207_reg_59_0_0_0 (.out1(out_MUX_207_reg_59_0_0_0), .sel(selector_MUX_207_reg_59_0_0_0), .in1(out_bit_ior_concat_expr_FU_111_i0_fu_astarF_28877_29595), .in2(out_conv_out_i_assign_conn_obj_16_ASSIGN_SIGNED_FU_i_assign_0_I_2_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_213_reg_64_0_0_0 (.out1(out_MUX_213_reg_64_0_0_0), .sel(selector_MUX_213_reg_64_0_0_0), .in1(out_reg_34_reg_34), .in2(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_array_28864_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_214_reg_65_0_0_0 (.out1(out_MUX_214_reg_65_0_0_0), .sel(selector_MUX_214_reg_65_0_0_0), .in1(out_PROXY_CTRLN_5_i0_PROXY_CTRLN_5_i0), .in2(out_conv_out_u_assign_conn_obj_14_ASSIGN_UNSIGNED_FU_u_assign_12_3_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_215_reg_66_0_0_0 (.out1(out_MUX_215_reg_66_0_0_0), .sel(selector_MUX_215_reg_66_0_0_0), .in1(out_conv_out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_10_1_8), .in2(out_u_assign_conn_obj_13_ASSIGN_UNSIGNED_FU_u_assign_11));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_215_reg_66_0_0_1 (.out1(out_MUX_215_reg_66_0_0_1), .sel(selector_MUX_215_reg_66_0_0_1), .in1(out_ui_plus_expr_FU_8_0_8_146_i0_fu_astarF_28877_29626), .in2(out_MUX_215_reg_66_0_0_0));
  MUX_GATE #(.BITSIZE_in1(10), .BITSIZE_in2(10), .BITSIZE_out1(10)) MUX_21_BMEMORY_CTRLN_107_i0_1_0_0 (.out1(out_MUX_21_BMEMORY_CTRLN_107_i0_1_0_0), .sel(selector_MUX_21_BMEMORY_CTRLN_107_i0_1_0_0), .in1(out_conv_out_reg_52_reg_52_13_10), .in2(out_reg_43_reg_43));
  MUX_GATE #(.BITSIZE_in1(10), .BITSIZE_in2(10), .BITSIZE_out1(10)) MUX_24_BMEMORY_CTRLN_107_i1_1_0_0 (.out1(out_MUX_24_BMEMORY_CTRLN_107_i1_1_0_0), .sel(selector_MUX_24_BMEMORY_CTRLN_107_i1_1_0_0), .in1(out_conv_out_reg_42_reg_42_13_10), .in2(out_conv_out_reg_37_reg_37_12_10));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_47_PROXY_CTRLN_5_i0_0_0_0 (.out1(out_MUX_47_PROXY_CTRLN_5_i0_0_0_0), .sel(selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0), .in1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_16), .in2(out_vb_assign_conn_obj_21_ASSIGN_VECTOR_BOOL_FU_vb_assign_19));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_47_PROXY_CTRLN_5_i0_0_0_1 (.out1(out_MUX_47_PROXY_CTRLN_5_i0_0_0_1), .sel(selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1), .in1(out_vb_assign_conn_obj_6_ASSIGN_VECTOR_BOOL_FU_vb_assign_21), .in2(out_MUX_47_PROXY_CTRLN_5_i0_0_0_0));
  MUX_GATE #(.BITSIZE_in1(10), .BITSIZE_in2(10), .BITSIZE_out1(10)) MUX_48_PROXY_CTRLN_5_i0_1_0_0 (.out1(out_MUX_48_PROXY_CTRLN_5_i0_1_0_0), .sel(selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0), .in1(out_conv_out_reg_1_reg_1_32_10), .in2(out_conv_out_addr_expr_FU_9_i0_fu_astarF_28877_29716_32_10));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_51_PROXY_CTRLN_6_i0_0_0_0 (.out1(out_MUX_51_PROXY_CTRLN_6_i0_0_0_0), .sel(selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0), .in1(out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_6), .in2(out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_7));
  MUX_GATE #(.BITSIZE_in1(10), .BITSIZE_in2(10), .BITSIZE_out1(10)) MUX_52_PROXY_CTRLN_6_i0_1_0_0 (.out1(out_MUX_52_PROXY_CTRLN_6_i0_1_0_0), .sel(selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0), .in1(out_conv_out_reg_53_reg_53_13_10), .in2(out_reg_2_reg_2));
  MUX_GATE #(.BITSIZE_in1(10), .BITSIZE_in2(10), .BITSIZE_out1(10)) MUX_52_PROXY_CTRLN_6_i0_1_0_1 (.out1(out_MUX_52_PROXY_CTRLN_6_i0_1_0_1), .sel(selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1), .in1(out_conv_out_reg_15_reg_15_32_10), .in2(out_MUX_52_PROXY_CTRLN_6_i0_1_0_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0 (.out1(out_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0), .sel(selector_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0), .in1(out_vb_assign_conn_obj_20_ASSIGN_VECTOR_BOOL_FU_vb_assign_18), .in2(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_20));
  MUX_GATE #(.BITSIZE_in1(10), .BITSIZE_in2(10), .BITSIZE_out1(10)) MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0 (.out1(out_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0), .sel(selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0), .in1(out_conv_out_reg_62_reg_62_32_10), .in2(out_conv_out_UUdata_converter_FU_34_i0_fu_astarF_28877_29415_32_10));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(10), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(10), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_5_i0 (.out1({null_out_signal_PROXY_CTRLN_5_i0_out1_1, out_PROXY_CTRLN_5_i0_PROXY_CTRLN_5_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288617_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288619_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886111_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886113_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886115_0), .in1({8'b00000000, out_MUX_47_PROXY_CTRLN_5_i0_0_0_1}), .in2({10'b0000000000, out_MUX_48_PROXY_CTRLN_5_i0_1_0_0}), .in3({4'b0000, out_conv_out_const_5_5_4}), .in4({1'b0, out_const_8}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_5_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_5_i0_STORE}), .proxy_out1(proxy_out1_28861));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(10), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(10), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_6_i0 (.out1({null_out_signal_PROXY_CTRLN_6_i0_out1_1, out_PROXY_CTRLN_6_i0_PROXY_CTRLN_6_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288688_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2886810_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886812_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886814_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886816_0), .in1({8'b00000000, out_MUX_51_PROXY_CTRLN_6_i0_0_0_0}), .in2({10'b0000000000, out_MUX_52_PROXY_CTRLN_6_i0_1_0_1}), .in3({4'b0000, out_conv_out_const_5_5_4}), .in4({1'b0, out_const_8}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_6_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_6_i0_STORE}), .proxy_out1(proxy_out1_28868));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(10), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(10), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28862.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28862_28877), .address_space_rangesize(64), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(10), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28862_0 (.out1({null_out_signal_array_28862_0_out1_1, null_out_signal_array_28862_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_0), .proxy_out1({null_out_signal_array_28862_0_proxy_out1_1, null_out_signal_array_28862_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_iu_conv_conn_obj_17_IUdata_converter_FU_iu_conv_3}), .in2({10'b0000000000, out_conv_out_reg_9_reg_9_32_10}), .in3({4'b0000, out_conv_out_const_5_5_4}), .in4({1'b0, out_const_8}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({10'b0000000000, 10'b0000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(10), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(10), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28864.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28864_28877), .address_space_rangesize(64), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(10), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28864_0 (.out1({null_out_signal_array_28864_0_out1_1, out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_array_28864_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_1), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_1), .proxy_out1({null_out_signal_array_28864_0_proxy_out1_1, null_out_signal_array_28864_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_vb_assign_conn_obj_10_ASSIGN_VECTOR_BOOL_FU_vb_assign_17}), .in2({10'b0000000000, out_conv_out_reg_7_reg_7_32_10}), .in3({4'b0000, out_conv_out_const_5_5_4}), .in4({1'b0, out_const_8}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({10'b0000000000, 10'b0000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(10), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(10), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28865.mem"), .n_elements(8), .data_size(8), .address_space_begin(MEM_var_28865_28877), .address_space_rangesize(64), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(10), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28865_0 (.out1({null_out_signal_array_28865_0_out1_1, null_out_signal_array_28865_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_2), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_2), .proxy_out1({null_out_signal_array_28865_0_proxy_out1_1, null_out_signal_array_28865_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0}), .in2({10'b0000000000, out_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0}), .in3({4'b0000, out_conv_out_const_5_5_4}), .in4({1'b0, out_const_8}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({10'b0000000000, 10'b0000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(10), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(10), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28866.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28866_28877), .address_space_rangesize(64), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(10), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28866_0 (.out1({null_out_signal_array_28866_0_out1_1, out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28866_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_3), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_3), .proxy_out1({null_out_signal_array_28866_0_proxy_out1_1, null_out_signal_array_28866_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1}), .in2({10'b0000000000, out_conv_out_reg_6_reg_6_32_10}), .in3({4'b0000, out_conv_out_const_5_5_4}), .in4({1'b0, out_const_8}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({10'b0000000000, 10'b0000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(10), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(10), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28867.mem"), .n_elements(8), .data_size(8), .address_space_begin(MEM_var_28867_28877), .address_space_rangesize(64), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(10), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28867_0 (.out1({null_out_signal_array_28867_0_out1_1, out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_array_28867_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_4), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_4), .proxy_out1({null_out_signal_array_28867_0_proxy_out1_1, null_out_signal_array_28867_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0}), .in2({10'b0000000000, out_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_1_0}), .in3({4'b0000, out_conv_out_const_5_5_4}), .in4({1'b0, out_const_8}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({10'b0000000000, 10'b0000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(20), .PORTSIZE_in1(1), .BITSIZE_out1(20)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(5), .BITSIZE_out1(2)) bus_mergerSout_DataRdy5_ (.out1(sig_out_bus_mergerSout_DataRdy5_), .in1({sig_in_bus_mergerSout_DataRdy5_4, sig_in_bus_mergerSout_DataRdy5_3, sig_in_bus_mergerSout_DataRdy5_2, sig_in_bus_mergerSout_DataRdy5_1, sig_in_bus_mergerSout_DataRdy5_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(5), .BITSIZE_out1(16)) bus_mergerSout_Rdata_ram6_ (.out1(sig_out_bus_mergerSout_Rdata_ram6_), .in1({sig_in_bus_mergerSout_Rdata_ram6_4, sig_in_bus_mergerSout_Rdata_ram6_3, sig_in_bus_mergerSout_Rdata_ram6_2, sig_in_bus_mergerSout_Rdata_ram6_1, sig_in_bus_mergerSout_Rdata_ram6_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288617_ (.out1(sig_out_bus_mergerproxy_in1_288617_), .in1({sig_in_bus_mergerproxy_in1_288617_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288688_ (.out1(sig_out_bus_mergerproxy_in1_288688_), .in1({sig_in_bus_mergerproxy_in1_288688_0}));
  bus_merger #(.BITSIZE_in1(20), .PORTSIZE_in1(1), .BITSIZE_out1(20)) bus_mergerproxy_in2_288619_ (.out1(sig_out_bus_mergerproxy_in2_288619_), .in1({sig_in_bus_mergerproxy_in2_288619_0}));
  bus_merger #(.BITSIZE_in1(20), .PORTSIZE_in1(1), .BITSIZE_out1(20)) bus_mergerproxy_in2_2886810_ (.out1(sig_out_bus_mergerproxy_in2_2886810_), .in1({sig_in_bus_mergerproxy_in2_2886810_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_2886111_ (.out1(sig_out_bus_mergerproxy_in3_2886111_), .in1({sig_in_bus_mergerproxy_in3_2886111_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_2886812_ (.out1(sig_out_bus_mergerproxy_in3_2886812_), .in1({sig_in_bus_mergerproxy_in3_2886812_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886113_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886113_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886113_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886814_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886814_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886814_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886115_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886115_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886115_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886816_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886816_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886816_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(4), .value(4'b1000)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_11 (.out1(out_const_11));
  constant_value #(.BITSIZE_out1(6), .value(6'b110001)) const_12 (.out1(out_const_12));
  constant_value #(.BITSIZE_out1(3), .value(3'b111)) const_13 (.out1(out_const_13));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_14 (.out1(out_const_14));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28868_28879)) const_15 (.out1(out_const_15));
  constant_value #(.BITSIZE_out1(9), .value(MEM_var_28862_28877)) const_16 (.out1(out_const_16));
  constant_value #(.BITSIZE_out1(9), .value(MEM_var_28864_28877)) const_17 (.out1(out_const_17));
  constant_value #(.BITSIZE_out1(10), .value(MEM_var_28865_28877)) const_18 (.out1(out_const_18));
  constant_value #(.BITSIZE_out1(9), .value(MEM_var_28866_28877)) const_19 (.out1(out_const_19));
  constant_value #(.BITSIZE_out1(8), .value(8'b00001000)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(10), .value(MEM_var_28867_28877)) const_20 (.out1(out_const_20));
  constant_value #(.BITSIZE_out1(7), .value(MEM_var_28861_28879)) const_21 (.out1(out_const_21));
  constant_value #(.BITSIZE_out1(2), .value(2'b01)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(3), .value(3'b010)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(3), .value(3'b011)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(8), .value(8'b01111111)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(2), .value(2'b10)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(10)) conv_in_port_a_32_10 (.out1(out_conv_in_port_a_32_10), .in1(in_port_a));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(10)) conv_out_UUdata_converter_FU_34_i0_fu_astarF_28877_29415_32_10 (.out1(out_conv_out_UUdata_converter_FU_34_i0_fu_astarF_28877_29415_32_10), .in1(out_UUdata_converter_FU_34_i0_fu_astarF_28877_29415));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(10)) conv_out_addr_expr_FU_9_i0_fu_astarF_28877_29716_32_10 (.out1(out_conv_out_addr_expr_FU_9_i0_fu_astarF_28877_29716_32_10), .in1(out_addr_expr_FU_9_i0_fu_astarF_28877_29716));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_15_8_32 (.out1(out_conv_out_const_15_8_32), .in1(out_const_15));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(32)) conv_out_const_16_9_32 (.out1(out_conv_out_const_16_9_32), .in1(out_const_16));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(32)) conv_out_const_17_9_32 (.out1(out_conv_out_const_17_9_32), .in1(out_const_17));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(32)) conv_out_const_18_10_32 (.out1(out_conv_out_const_18_10_32), .in1(out_const_18));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(32)) conv_out_const_19_9_32 (.out1(out_conv_out_const_19_9_32), .in1(out_const_19));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(32)) conv_out_const_20_10_32 (.out1(out_conv_out_const_20_10_32), .in1(out_const_20));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(32)) conv_out_const_21_7_32 (.out1(out_conv_out_const_21_7_32), .in1(out_const_21));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_5_5_4 (.out1(out_conv_out_const_5_5_4), .in1(out_const_5));
  IUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(8)) conv_out_i_assign_conn_obj_16_ASSIGN_SIGNED_FU_i_assign_0_I_2_8 (.out1(out_conv_out_i_assign_conn_obj_16_ASSIGN_SIGNED_FU_i_assign_0_I_2_8), .in1(out_i_assign_conn_obj_16_ASSIGN_SIGNED_FU_i_assign_0));
  UUdata_converter_FU #(.BITSIZE_in1(4), .BITSIZE_out1(3)) conv_out_reg_11_reg_11_4_3 (.out1(out_conv_out_reg_11_reg_11_4_3), .in1(out_reg_11_reg_11));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(10)) conv_out_reg_15_reg_15_32_10 (.out1(out_conv_out_reg_15_reg_15_32_10), .in1(out_reg_15_reg_15));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(10)) conv_out_reg_1_reg_1_32_10 (.out1(out_conv_out_reg_1_reg_1_32_10), .in1(out_reg_1_reg_1));
  UUdata_converter_FU #(.BITSIZE_in1(4), .BITSIZE_out1(3)) conv_out_reg_24_reg_24_4_3 (.out1(out_conv_out_reg_24_reg_24_4_3), .in1(out_reg_24_reg_24));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(10)) conv_out_reg_25_reg_25_32_10 (.out1(out_conv_out_reg_25_reg_25_32_10), .in1(out_reg_25_reg_25));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(10)) conv_out_reg_33_reg_33_32_10 (.out1(out_conv_out_reg_33_reg_33_32_10), .in1(out_reg_33_reg_33));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(10)) conv_out_reg_37_reg_37_12_10 (.out1(out_conv_out_reg_37_reg_37_12_10), .in1(out_reg_37_reg_37));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(10)) conv_out_reg_42_reg_42_13_10 (.out1(out_conv_out_reg_42_reg_42_13_10), .in1(out_reg_42_reg_42));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(10)) conv_out_reg_52_reg_52_13_10 (.out1(out_conv_out_reg_52_reg_52_13_10), .in1(out_reg_52_reg_52));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(10)) conv_out_reg_53_reg_53_13_10 (.out1(out_conv_out_reg_53_reg_53_13_10), .in1(out_reg_53_reg_53));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(10)) conv_out_reg_5_reg_5_32_10 (.out1(out_conv_out_reg_5_reg_5_32_10), .in1(out_reg_5_reg_5));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(10)) conv_out_reg_61_reg_61_32_10 (.out1(out_conv_out_reg_61_reg_61_32_10), .in1(out_reg_61_reg_61));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(10)) conv_out_reg_62_reg_62_32_10 (.out1(out_conv_out_reg_62_reg_62_32_10), .in1(out_reg_62_reg_62));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(3)) conv_out_reg_66_reg_66_8_3 (.out1(out_conv_out_reg_66_reg_66_8_3), .in1(out_reg_66_reg_66));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(10)) conv_out_reg_6_reg_6_32_10 (.out1(out_conv_out_reg_6_reg_6_32_10), .in1(out_reg_6_reg_6));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(10)) conv_out_reg_7_reg_7_32_10 (.out1(out_conv_out_reg_7_reg_7_32_10), .in1(out_reg_7_reg_7));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(10)) conv_out_reg_9_reg_9_32_10 (.out1(out_conv_out_reg_9_reg_9_32_10), .in1(out_reg_9_reg_9));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_10_1_8 (.out1(out_conv_out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_10_1_8), .in1(out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_10));
  UUdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_14_ASSIGN_UNSIGNED_FU_u_assign_12_3_8 (.out1(out_conv_out_u_assign_conn_obj_14_ASSIGN_UNSIGNED_FU_u_assign_12_3_8), .in1(out_u_assign_conn_obj_14_ASSIGN_UNSIGNED_FU_u_assign_12));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(4)) conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_9_1_4 (.out1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_9_1_4), .in1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_9));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(4)) conv_out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_14_1_4 (.out1(out_conv_out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_14_1_4), .in1(out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_14));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29378 (.out1(out_read_cond_FU_28_i0_fu_astarF_28877_29378), .in1(out_reg_13_reg_13));
  ui_plus_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(4)) fu_astarF_28877_29397 (.out1(out_ui_plus_expr_FU_8_0_8_145_i0_fu_astarF_28877_29397), .in1(out_conv_out_reg_11_reg_11_4_3), .in2(out_const_8));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29400 (.out1(out_read_cond_FU_31_i0_fu_astarF_28877_29400), .in1(out_reg_14_reg_14));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_29402 (.out1(out_UUdata_converter_FU_15_i0_fu_astarF_28877_29402), .in1(out_addr_expr_FU_14_i0_fu_astarF_28877_29792));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_29403 (.out1(out_UUdata_converter_FU_16_i0_fu_astarF_28877_29403), .in1(out_ui_pointer_plus_expr_FU_32_0_32_150_i0_fu_astarF_28877_29800));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_29415 (.out1(out_UUdata_converter_FU_34_i0_fu_astarF_28877_29415), .in1(out_reg_16_reg_16));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(32)) fu_astarF_28877_29417 (.out1(out_ui_plus_expr_FU_32_0_32_144_i0_fu_astarF_28877_29417), .in1(out_reg_16_reg_16), .in2(out_const_8));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29418 (.out1(out_read_cond_FU_35_i0_fu_astarF_28877_29418), .in1(out_reg_18_reg_18));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_astarF_28877_29431 (.out1(out_plus_expr_FU_8_0_8_122_i0_fu_astarF_28877_29431), .in1(out_reg_68_reg_68), .in2(out_const_3));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29433 (.out1(out_read_cond_FU_36_i0_fu_astarF_28877_29433), .in1(out_reg_19_reg_19));
  ui_cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(3), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_astarF_28877_29484 (.out1(out_ui_cond_expr_FU_8_8_8_8_132_i0_fu_astarF_28877_29484), .in1(out_ui_bit_and_expr_FU_1_1_1_130_i0_fu_astarF_28877_29489), .in2(out_reg_23_reg_23), .in3(out_reg_30_reg_30));
  ui_bit_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_astarF_28877_29489 (.out1(out_ui_bit_and_expr_FU_1_1_1_130_i0_fu_astarF_28877_29489), .in1(out_reg_27_reg_27), .in2(out_reg_28_reg_28));
  le_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_astarF_28877_29493 (.out1(out_le_expr_FU_8_8_8_116_i0_fu_astarF_28877_29493), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_array_28867_0), .in2(out_reg_22_reg_22));
  ui_plus_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(4)) fu_astarF_28877_29505 (.out1(out_ui_plus_expr_FU_8_0_8_145_i1_fu_astarF_28877_29505), .in1(out_conv_out_reg_24_reg_24_4_3), .in2(out_const_8));
  cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_astarF_28877_29509 (.out1(out_cond_expr_FU_8_8_8_8_113_i0_fu_astarF_28877_29509), .in1(out_ui_bit_and_expr_FU_1_1_1_130_i0_fu_astarF_28877_29489), .in2(out_reg_29_reg_29), .in3(out_reg_22_reg_22));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_astarF_28877_29511 (.out1(out_ne_expr_FU_8_0_8_120_i0_fu_astarF_28877_29511), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_array_28867_0), .in2(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(3)) fu_astarF_28877_29513 (.out1(out_UUdata_converter_FU_58_i0_fu_astarF_28877_29513), .in1(out_conv_out_reg_24_reg_24_4_3));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_astarF_28877_29520 (.out1(out_UIdata_converter_FU_60_i0_fu_astarF_28877_29520), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_array_28864_0));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_astarF_28877_29528 (.out1(out_plus_expr_FU_8_0_8_123_i0_fu_astarF_28877_29528), .in1(out_reg_20_reg_20), .in2(out_const_11));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(6), .BITSIZE_out1(10), .LSB_PARAMETER(0)) fu_astarF_28877_29535 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_149_i0_fu_astarF_28877_29535), .in1(out_conv_in_port_a_32_10), .in2(out_ui_lshift_expr_FU_8_0_8_138_i0_fu_astarF_28877_29541));
  ui_lshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_astarF_28877_29541 (.out1(out_ui_lshift_expr_FU_8_0_8_138_i0_fu_astarF_28877_29541), .in1(out_UUdata_converter_FU_83_i0_fu_astarF_28877_29548), .in2(out_const_11));
  UUdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(3)) fu_astarF_28877_29548 (.out1(out_UUdata_converter_FU_83_i0_fu_astarF_28877_29548), .in1(out_conv_out_reg_66_reg_66_8_3));
  UIdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(4)) fu_astarF_28877_29553 (.out1(out_UIdata_converter_FU_77_i0_fu_astarF_28877_29553), .in1(out_conv_out_reg_66_reg_66_8_3));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) fu_astarF_28877_29556 (.out1(out_plus_expr_FU_8_8_8_126_i0_fu_astarF_28877_29556), .in1(out_reg_44_reg_44), .in2(out_reg_40_reg_40));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(11), .BITSIZE_out1(12), .LSB_PARAMETER(0)) fu_astarF_28877_29565 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_149_i1_fu_astarF_28877_29565), .in1(out_conv_in_port_a_32_10), .in2(out_ui_lshift_expr_FU_16_0_16_136_i0_fu_astarF_28877_29568));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(11), .PRECISION(32)) fu_astarF_28877_29568 (.out1(out_ui_lshift_expr_FU_16_0_16_136_i0_fu_astarF_28877_29568), .in1(out_UUdata_converter_FU_76_i0_fu_astarF_28877_29572), .in2(out_const_11));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29572 (.out1(out_UUdata_converter_FU_76_i0_fu_astarF_28877_29572), .in1(out_reg_34_reg_34));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_astarF_28877_29579 (.out1(out_UIdata_converter_FU_80_i0_fu_astarF_28877_29579), .in1(out_reg_34_reg_34));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_astarF_28877_29585 (.out1(out_UIdata_converter_FU_91_i0_fu_astarF_28877_29585), .in1(out_PROXY_CTRLN_5_i0_PROXY_CTRLN_5_i0));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) fu_astarF_28877_29589 (.out1(out_plus_expr_FU_8_8_8_126_i1_fu_astarF_28877_29589), .in1(out_reg_59_reg_59), .in2(out_reg_54_reg_54));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_in3(3), .BITSIZE_out1(8), .OFFSET_PARAMETER(2)) fu_astarF_28877_29595 (.out1(out_bit_ior_concat_expr_FU_111_i0_fu_astarF_28877_29595), .in1(out_lshift_expr_FU_8_0_8_118_i0_fu_astarF_28877_30328), .in2(out_bit_and_expr_FU_8_0_8_110_i0_fu_astarF_28877_30332), .in3(out_const_4));
  IIconvert_expr_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_astarF_28877_29598 (.out1(out_IIconvert_expr_FU_98_i0_fu_astarF_28877_29598), .in1(out___builtin_abs_8_8_108_i0_fu_astarF_28877_29601));
  __builtin_abs #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_astarF_28877_29601 (.out1(out___builtin_abs_8_8_108_i0_fu_astarF_28877_29601), .in1(out_reg_57_reg_57));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29604 (.out1(out_IIdata_converter_FU_95_i0_fu_astarF_28877_29604), .in1(out_bit_ior_concat_expr_FU_112_i0_fu_astarF_28877_29607));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_in3(3), .BITSIZE_out1(8), .OFFSET_PARAMETER(2)) fu_astarF_28877_29607 (.out1(out_bit_ior_concat_expr_FU_112_i0_fu_astarF_28877_29607), .in1(out_lshift_expr_FU_8_0_8_117_i0_fu_astarF_28877_30312), .in2(out_reg_56_reg_56), .in3(out_const_4));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(11), .BITSIZE_out1(12), .LSB_PARAMETER(0)) fu_astarF_28877_29613 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_149_i2_fu_astarF_28877_29613), .in1(out_conv_in_port_a_32_10), .in2(out_ui_lshift_expr_FU_16_0_16_136_i1_fu_astarF_28877_29616));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(11), .PRECISION(32)) fu_astarF_28877_29616 (.out1(out_ui_lshift_expr_FU_16_0_16_136_i1_fu_astarF_28877_29616), .in1(out_UUdata_converter_FU_90_i0_fu_astarF_28877_29619), .in2(out_const_11));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29619 (.out1(out_UUdata_converter_FU_90_i0_fu_astarF_28877_29619), .in1(out_PROXY_CTRLN_5_i0_PROXY_CTRLN_5_i0));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_astarF_28877_29621 (.out1(out_plus_expr_FU_8_0_8_122_i1_fu_astarF_28877_29621), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28866_0), .in2(out_const_3));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_astarF_28877_29626 (.out1(out_ui_plus_expr_FU_8_0_8_146_i0_fu_astarF_28877_29626), .in1(out_reg_65_reg_65), .in2(out_const_8));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29633 (.out1(out_read_cond_FU_59_i0_fu_astarF_28877_29633), .in1(out_reg_26_reg_26));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29635 (.out1(out_read_cond_FU_62_i0_fu_astarF_28877_29635), .in1(out_reg_32_reg_32));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29641 (.out1(out_read_cond_FU_85_i0_fu_astarF_28877_29641), .in1(out_ne_expr_FU_8_0_8_121_i0_fu_astarF_28877_30256));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29643 (.out1(out_IIdata_converter_FU_87_i0_fu_astarF_28877_29643), .in1(out_BMEMORY_CTRLN_107_i1_BMEMORY_CTRLN_107_i0));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29644 (.out1(out_IIdata_converter_FU_82_i0_fu_astarF_28877_29644), .in1(out_BMEMORY_CTRLN_107_i1_BMEMORY_CTRLN_107_i0));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(9)) fu_astarF_28877_29645 (.out1(out_plus_expr_FU_8_8_8_126_i2_fu_astarF_28877_29645), .in1(out_reg_41_reg_41), .in2(out_reg_45_reg_45));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29647 (.out1(out_IIdata_converter_FU_88_i0_fu_astarF_28877_29647), .in1(out_BMEMORY_CTRLN_107_i0_BMEMORY_CTRLN_107_i0));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29648 (.out1(out_read_cond_FU_89_i0_fu_astarF_28877_29648), .in1(out_reg_48_reg_48));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29664 (.out1(out_read_cond_FU_96_i0_fu_astarF_28877_29664), .in1(out_reg_58_reg_58));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29670 (.out1(out_read_cond_FU_105_i0_fu_astarF_28877_29670), .in1(out_reg_67_reg_67));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29673 (.out1(out_read_cond_FU_106_i0_fu_astarF_28877_29673), .in1(out_reg_69_reg_69));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_29716 (.out1(out_addr_expr_FU_9_i0_fu_astarF_28877_29716), .in1(out_conv_out_const_21_7_32));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(10)) fu_astarF_28877_29723 (.out1(out_UUdata_converter_FU_13_i0_fu_astarF_28877_29723), .in1(out_UUdata_converter_FU_12_i0_fu_astarF_28877_29740));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(10)) fu_astarF_28877_29740 (.out1(out_UUdata_converter_FU_12_i0_fu_astarF_28877_29740), .in1(out_addr_expr_FU_11_i0_fu_astarF_28877_29761));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(10)) fu_astarF_28877_29761 (.out1(out_addr_expr_FU_11_i0_fu_astarF_28877_29761), .in1(out_conv_out_const_15_8_32));
  ui_lshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(4), .PRECISION(32)) fu_astarF_28877_29769 (.out1(out_ui_lshift_expr_FU_8_0_8_139_i0_fu_astarF_28877_29769), .in1(out_conv_out_reg_11_reg_11_4_3), .in2(out_const_8));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(5), .OFFSET_PARAMETER(1)) fu_astarF_28877_29772 (.out1(out_ui_bit_ior_concat_expr_FU_131_i0_fu_astarF_28877_29772), .in1(out_ui_lshift_expr_FU_8_0_8_139_i1_fu_astarF_28877_30291), .in2(out_ui_bit_and_expr_FU_1_0_1_129_i0_fu_astarF_28877_30296), .in3(out_const_8));
  ui_lshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_out1(7), .PRECISION(32)) fu_astarF_28877_29776 (.out1(out_ui_lshift_expr_FU_8_0_8_140_i0_fu_astarF_28877_29776), .in1(out_ui_bit_ior_concat_expr_FU_131_i0_fu_astarF_28877_29772), .in2(out_const_9));
  ui_minus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(5), .BITSIZE_out1(32)) fu_astarF_28877_29779 (.out1(out_ui_minus_expr_FU_8_8_8_141_i0_fu_astarF_28877_29779), .in1(out_ui_lshift_expr_FU_8_0_8_140_i0_fu_astarF_28877_29776), .in2(out_ui_bit_ior_concat_expr_FU_131_i0_fu_astarF_28877_29772));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(10)) fu_astarF_28877_29786 (.out1(out_addr_expr_FU_10_i0_fu_astarF_28877_29786), .in1(out_conv_out_const_15_8_32));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(32), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_astarF_28877_29789 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_151_i0_fu_astarF_28877_29789), .in1(out_reg_4_reg_4), .in2(out_reg_12_reg_12));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_29792 (.out1(out_addr_expr_FU_14_i0_fu_astarF_28877_29792), .in1(out_conv_out_const_18_10_32));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(4), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_astarF_28877_29800 (.out1(out_ui_pointer_plus_expr_FU_32_0_32_150_i0_fu_astarF_28877_29800), .in1(out_addr_expr_FU_14_i0_fu_astarF_28877_29792), .in2(out_const_10));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_29815 (.out1(out_UUdata_converter_FU_18_i0_fu_astarF_28877_29815), .in1(out_addr_expr_FU_17_i0_fu_astarF_28877_29839));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_29829 (.out1(out_addr_expr_FU_19_i0_fu_astarF_28877_29829), .in1(out_conv_out_const_19_9_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_29839 (.out1(out_addr_expr_FU_17_i0_fu_astarF_28877_29839), .in1(out_conv_out_const_20_10_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_29843 (.out1(out_addr_expr_FU_20_i0_fu_astarF_28877_29843), .in1(out_conv_out_const_17_9_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_29851 (.out1(out_addr_expr_FU_21_i0_fu_astarF_28877_29851), .in1(out_conv_out_const_20_10_32));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(3), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_astarF_28877_29854 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_151_i1_fu_astarF_28877_29854), .in1(out_reg_8_reg_8), .in2(out_conv_out_reg_24_reg_24_4_3));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_astarF_28877_29877 (.out1(out_IUdata_converter_FU_61_i0_fu_astarF_28877_29877), .in1(out_UIdata_converter_FU_60_i0_fu_astarF_28877_29520));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_astarF_28877_29883 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_151_i2_fu_astarF_28877_29883), .in1(out_reg_5_reg_5), .in2(out_reg_31_reg_31));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(12)) fu_astarF_28877_29897 (.out1(out_UUdata_converter_FU_78_i0_fu_astarF_28877_29897), .in1(out_ui_pointer_plus_expr_FU_16_16_16_149_i1_fu_astarF_28877_29565));
  IUdata_converter_FU #(.BITSIZE_in1(4), .BITSIZE_out1(3)) fu_astarF_28877_29900 (.out1(out_IUdata_converter_FU_79_i0_fu_astarF_28877_29900), .in1(out_UIdata_converter_FU_77_i0_fu_astarF_28877_29553));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(12), .BITSIZE_in2(3), .BITSIZE_out1(12), .LSB_PARAMETER(0)) fu_astarF_28877_29906 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_149_i3_fu_astarF_28877_29906), .in1(out_UUdata_converter_FU_78_i0_fu_astarF_28877_29897), .in2(out_IUdata_converter_FU_79_i0_fu_astarF_28877_29900));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_astarF_28877_29917 (.out1(out_IUdata_converter_FU_81_i0_fu_astarF_28877_29917), .in1(out_UIdata_converter_FU_80_i0_fu_astarF_28877_29579));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(12), .BITSIZE_in2(8), .BITSIZE_out1(13), .LSB_PARAMETER(0)) fu_astarF_28877_29923 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_149_i4_fu_astarF_28877_29923), .in1(out_reg_35_reg_35), .in2(out_reg_38_reg_38));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(10)) fu_astarF_28877_29928 (.out1(out_UUdata_converter_FU_84_i0_fu_astarF_28877_29928), .in1(out_ui_pointer_plus_expr_FU_16_16_16_149_i0_fu_astarF_28877_29535));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(3), .BITSIZE_out1(10), .LSB_PARAMETER(0)) fu_astarF_28877_29937 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_149_i5_fu_astarF_28877_29937), .in1(out_reg_39_reg_39), .in2(out_reg_36_reg_36));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(12)) fu_astarF_28877_29967 (.out1(out_UUdata_converter_FU_92_i0_fu_astarF_28877_29967), .in1(out_reg_49_reg_49));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_astarF_28877_29970 (.out1(out_IUdata_converter_FU_93_i0_fu_astarF_28877_29970), .in1(out_UIdata_converter_FU_91_i0_fu_astarF_28877_29585));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(12), .BITSIZE_in2(8), .BITSIZE_out1(13), .LSB_PARAMETER(0)) fu_astarF_28877_29976 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_149_i6_fu_astarF_28877_29976), .in1(out_UUdata_converter_FU_92_i0_fu_astarF_28877_29967), .in2(out_reg_50_reg_50));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(12)) fu_astarF_28877_29980 (.out1(out_UUdata_converter_FU_94_i0_fu_astarF_28877_29980), .in1(out_reg_51_reg_51));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(12), .BITSIZE_in2(6), .BITSIZE_out1(13), .LSB_PARAMETER(0)) fu_astarF_28877_29989 (.out1(out_ui_pointer_plus_expr_FU_16_0_16_148_i0_fu_astarF_28877_29989), .in1(out_UUdata_converter_FU_94_i0_fu_astarF_28877_29980), .in2(out_const_12));
  ge_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_astarF_28877_29992 (.out1(out_ge_expr_FU_8_0_8_114_i0_fu_astarF_28877_29992), .in1(out_PROXY_CTRLN_6_i0_PROXY_CTRLN_6_i0), .in2(out_const_0));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(11), .PRECISION(32)) fu_astarF_28877_30009 (.out1(out_ui_lshift_expr_FU_16_0_16_137_i0_fu_astarF_28877_30009), .in1(out_IUdata_converter_FU_93_i0_fu_astarF_28877_29970), .in2(out_const_11));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(11), .BITSIZE_out1(12), .LSB_PARAMETER(0)) fu_astarF_28877_30012 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_149_i7_fu_astarF_28877_30012), .in1(out_reg_3_reg_3), .in2(out_ui_lshift_expr_FU_16_0_16_137_i0_fu_astarF_28877_30009));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_30025 (.out1(out_addr_expr_FU_22_i0_fu_astarF_28877_30025), .in1(out_conv_out_const_16_9_32));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_astarF_28877_30038 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_151_i3_fu_astarF_28877_30038), .in1(out_reg_5_reg_5), .in2(out_reg_50_reg_50));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_30054 (.out1(out_UUdata_converter_FU_24_i0_fu_astarF_28877_30054), .in1(out_addr_expr_FU_23_i0_fu_astarF_28877_30073));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_astarF_28877_30063 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_151_i4_fu_astarF_28877_30063), .in1(out_reg_10_reg_10), .in2(out_reg_50_reg_50));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_30073 (.out1(out_addr_expr_FU_23_i0_fu_astarF_28877_30073), .in1(out_conv_out_const_18_10_32));
  ui_eq_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_astarF_28877_30244 (.out1(out_ui_eq_expr_FU_8_0_8_133_i0_fu_astarF_28877_30244), .in1(out_conv_out_reg_11_reg_11_4_3), .in2(out_const_0));
  ui_ne_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(1)) fu_astarF_28877_30246 (.out1(out_ui_ne_expr_FU_8_0_8_143_i0_fu_astarF_28877_30246), .in1(out_ui_plus_expr_FU_8_0_8_145_i0_fu_astarF_28877_29397), .in2(out_const_10));
  ui_ne_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(1)) fu_astarF_28877_30248 (.out1(out_ui_ne_expr_FU_32_32_32_142_i0_fu_astarF_28877_30248), .in1(out_ui_plus_expr_FU_32_0_32_144_i0_fu_astarF_28877_29417), .in2(out_reg_0_reg_0));
  gt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_astarF_28877_30250 (.out1(out_gt_expr_FU_8_0_8_115_i0_fu_astarF_28877_30250), .in1(out_plus_expr_FU_8_0_8_122_i0_fu_astarF_28877_29431), .in2(out_const_0));
  ui_ne_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(1)) fu_astarF_28877_30252 (.out1(out_ui_ne_expr_FU_8_0_8_143_i1_fu_astarF_28877_30252), .in1(out_ui_plus_expr_FU_8_0_8_145_i1_fu_astarF_28877_29505), .in2(out_const_10));
  ui_eq_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(6), .BITSIZE_out1(1)) fu_astarF_28877_30254 (.out1(out_ui_eq_expr_FU_8_0_8_134_i0_fu_astarF_28877_30254), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_array_28864_0), .in2(out_const_12));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_astarF_28877_30256 (.out1(out_ne_expr_FU_8_0_8_121_i0_fu_astarF_28877_30256), .in1(out_reg_40_reg_40), .in2(out_const_11));
  lt_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_astarF_28877_30258 (.out1(out_lt_expr_FU_16_16_16_119_i0_fu_astarF_28877_30258), .in1(out_plus_expr_FU_8_8_8_126_i2_fu_astarF_28877_29645), .in2(out_reg_46_reg_46));
  ui_le_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(1)) fu_astarF_28877_30260 (.out1(out_ui_le_expr_FU_8_0_8_135_i0_fu_astarF_28877_30260), .in1(out_ui_plus_expr_FU_8_0_8_146_i0_fu_astarF_28877_29626), .in2(out_const_13));
  gt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_astarF_28877_30262 (.out1(out_gt_expr_FU_8_0_8_115_i1_fu_astarF_28877_30262), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28866_0), .in2(out_const_0));
  ui_rshift_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(1), .BITSIZE_out1(3), .PRECISION(32)) fu_astarF_28877_30279 (.out1(out_ui_rshift_expr_FU_8_0_8_152_i0_fu_astarF_28877_30279), .in1(out_ui_lshift_expr_FU_8_0_8_139_i0_fu_astarF_28877_29769), .in2(out_const_8));
  ui_rshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(2), .PRECISION(32)) fu_astarF_28877_30283 (.out1(out_ui_rshift_expr_FU_8_0_8_152_i1_fu_astarF_28877_30283), .in1(out_conv_out_reg_11_reg_11_4_3), .in2(out_const_8));
  ui_plus_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(2), .BITSIZE_out1(4)) fu_astarF_28877_30287 (.out1(out_ui_plus_expr_FU_8_8_8_147_i0_fu_astarF_28877_30287), .in1(out_ui_rshift_expr_FU_8_0_8_152_i0_fu_astarF_28877_30279), .in2(out_ui_rshift_expr_FU_8_0_8_152_i1_fu_astarF_28877_30283));
  ui_lshift_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(1), .BITSIZE_out1(5), .PRECISION(32)) fu_astarF_28877_30291 (.out1(out_ui_lshift_expr_FU_8_0_8_139_i1_fu_astarF_28877_30291), .in1(out_ui_plus_expr_FU_8_8_8_147_i0_fu_astarF_28877_30287), .in2(out_const_8));
  ui_bit_and_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_astarF_28877_30296 (.out1(out_ui_bit_and_expr_FU_1_0_1_129_i0_fu_astarF_28877_30296), .in1(out_conv_out_reg_11_reg_11_4_3), .in2(out_const_8));
  rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(6), .PRECISION(8)) fu_astarF_28877_30302 (.out1(out_rshift_expr_FU_8_0_8_127_i0_fu_astarF_28877_30302), .in1(out_BMEMORY_CTRLN_107_i0_BMEMORY_CTRLN_107_i0), .in2(out_const_4));
  plus_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(2), .BITSIZE_out1(6)) fu_astarF_28877_30307 (.out1(out_plus_expr_FU_8_0_8_124_i0_fu_astarF_28877_30307), .in1(out_reg_55_reg_55), .in2(out_const_11));
  lshift_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(3), .BITSIZE_out1(8), .PRECISION(8)) fu_astarF_28877_30312 (.out1(out_lshift_expr_FU_8_0_8_117_i0_fu_astarF_28877_30312), .in1(out_plus_expr_FU_8_0_8_124_i0_fu_astarF_28877_30307), .in2(out_const_4));
  bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(3)) fu_astarF_28877_30316 (.out1(out_bit_and_expr_FU_8_0_8_109_i0_fu_astarF_28877_30316), .in1(out_BMEMORY_CTRLN_107_i0_BMEMORY_CTRLN_107_i0), .in2(out_const_6));
  rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(6), .PRECISION(8)) fu_astarF_28877_30322 (.out1(out_rshift_expr_FU_8_0_8_128_i0_fu_astarF_28877_30322), .in1(out_IIconvert_expr_FU_98_i0_fu_astarF_28877_29598), .in2(out_const_4));
  plus_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(2), .BITSIZE_out1(6)) fu_astarF_28877_30325 (.out1(out_plus_expr_FU_8_0_8_125_i0_fu_astarF_28877_30325), .in1(out_rshift_expr_FU_8_0_8_128_i0_fu_astarF_28877_30322), .in2(out_const_3));
  lshift_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(3), .BITSIZE_out1(8), .PRECISION(8)) fu_astarF_28877_30328 (.out1(out_lshift_expr_FU_8_0_8_118_i0_fu_astarF_28877_30328), .in1(out_plus_expr_FU_8_0_8_125_i0_fu_astarF_28877_30325), .in2(out_const_4));
  bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(3)) fu_astarF_28877_30332 (.out1(out_bit_and_expr_FU_8_0_8_110_i0_fu_astarF_28877_30332), .in1(out_IIconvert_expr_FU_98_i0_fu_astarF_28877_29598), .in2(out_const_6));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(10), .PORTSIZE_in1(2), .BITSIZE_out1(20)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
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
  join_signal #(.BITSIZE_in1(10), .PORTSIZE_in1(2), .BITSIZE_out1(20)) join_signalbus_mergerproxy_in2_288619_0 (.out1(sig_in_bus_mergerproxy_in2_288619_0), .in1(sig_in_vector_bus_mergerproxy_in2_288619_0));
  join_signal #(.BITSIZE_in1(10), .PORTSIZE_in1(2), .BITSIZE_out1(20)) join_signalbus_mergerproxy_in2_2886810_0 (.out1(sig_in_bus_mergerproxy_in2_2886810_0), .in1(sig_in_vector_bus_mergerproxy_in2_2886810_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_2886111_0 (.out1(sig_in_bus_mergerproxy_in3_2886111_0), .in1(sig_in_vector_bus_mergerproxy_in3_2886111_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_2886812_0 (.out1(sig_in_bus_mergerproxy_in3_2886812_0), .in1(sig_in_vector_bus_mergerproxy_in3_2886812_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886113_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886113_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886113_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886814_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886814_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886814_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886115_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886115_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886115_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886816_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886816_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886816_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_16_i0_fu_astarF_28877_29403), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_9_i0_fu_astarF_28877_29716), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_24_i0_fu_astarF_28877_30054), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(4), .BITSIZE_out1(4)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_MUX_155_reg_11_0_0_1), .wenable(wrenable_reg_11));
  register_STD #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_ui_minus_expr_FU_8_8_8_141_i0_fu_astarF_28877_29779), .wenable(wrenable_reg_12));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_ui_eq_expr_FU_8_0_8_133_i0_fu_astarF_28877_30244), .wenable(wrenable_reg_13));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_143_i0_fu_astarF_28877_30246), .wenable(wrenable_reg_14));
  register_STD #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_151_i0_fu_astarF_28877_29789), .wenable(wrenable_reg_15));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_MUX_160_reg_16_0_0_0), .wenable(wrenable_reg_16));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_32_0_32_144_i0_fu_astarF_28877_29417), .wenable(wrenable_reg_17));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_32_32_32_142_i0_fu_astarF_28877_30248), .wenable(wrenable_reg_18));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_19 (.out1(out_reg_19_reg_19), .clock(clock), .reset(reset), .in1(out_gt_expr_FU_8_0_8_115_i0_fu_astarF_28877_30250), .wenable(wrenable_reg_19));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_13_i0_fu_astarF_28877_29723), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_20 (.out1(out_reg_20_reg_20), .clock(clock), .reset(reset), .in1(out_MUX_165_reg_20_0_0_0), .wenable(wrenable_reg_20));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_21 (.out1(out_reg_21_reg_21), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_0_8_123_i0_fu_astarF_28877_29528), .wenable(wrenable_reg_21));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_22 (.out1(out_reg_22_reg_22), .clock(clock), .reset(reset), .in1(out_MUX_167_reg_22_0_0_0), .wenable(wrenable_reg_22));
  register_SE #(.BITSIZE_in1(3), .BITSIZE_out1(3)) reg_23 (.out1(out_reg_23_reg_23), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_58_i0_fu_astarF_28877_29513), .wenable(wrenable_reg_23));
  register_SE #(.BITSIZE_in1(4), .BITSIZE_out1(4)) reg_24 (.out1(out_reg_24_reg_24), .clock(clock), .reset(reset), .in1(out_MUX_169_reg_24_0_0_1), .wenable(wrenable_reg_24));
  register_STD #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_25 (.out1(out_reg_25_reg_25), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_151_i1_fu_astarF_28877_29854), .wenable(wrenable_reg_25));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_26 (.out1(out_reg_26_reg_26), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_143_i1_fu_astarF_28877_30252), .wenable(wrenable_reg_26));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_27 (.out1(out_reg_27_reg_27), .clock(clock), .reset(reset), .in1(out_le_expr_FU_8_8_8_116_i0_fu_astarF_28877_29493), .wenable(wrenable_reg_27));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_28 (.out1(out_reg_28_reg_28), .clock(clock), .reset(reset), .in1(out_ne_expr_FU_8_0_8_120_i0_fu_astarF_28877_29511), .wenable(wrenable_reg_28));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_29 (.out1(out_reg_29_reg_29), .clock(clock), .reset(reset), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_array_28867_0), .wenable(wrenable_reg_29));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_12_i0_fu_astarF_28877_29740), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_30 (.out1(out_reg_30_reg_30), .clock(clock), .reset(reset), .in1(out_MUX_176_reg_30_0_0_0), .wenable(wrenable_reg_30));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_31 (.out1(out_reg_31_reg_31), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_61_i0_fu_astarF_28877_29877), .wenable(wrenable_reg_31));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_32 (.out1(out_reg_32_reg_32), .clock(clock), .reset(reset), .in1(out_ui_eq_expr_FU_8_0_8_134_i0_fu_astarF_28877_30254), .wenable(wrenable_reg_32));
  register_STD #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_33 (.out1(out_reg_33_reg_33), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_151_i2_fu_astarF_28877_29883), .wenable(wrenable_reg_33));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_34 (.out1(out_reg_34_reg_34), .clock(clock), .reset(reset), .in1(out_MUX_180_reg_34_0_0_0), .wenable(wrenable_reg_34));
  register_SE #(.BITSIZE_in1(12), .BITSIZE_out1(12)) reg_35 (.out1(out_reg_35_reg_35), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_78_i0_fu_astarF_28877_29897), .wenable(wrenable_reg_35));
  register_SE #(.BITSIZE_in1(3), .BITSIZE_out1(3)) reg_36 (.out1(out_reg_36_reg_36), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_79_i0_fu_astarF_28877_29900), .wenable(wrenable_reg_36));
  register_STD #(.BITSIZE_in1(12), .BITSIZE_out1(12)) reg_37 (.out1(out_reg_37_reg_37), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_149_i3_fu_astarF_28877_29906), .wenable(wrenable_reg_37));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_38 (.out1(out_reg_38_reg_38), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_81_i0_fu_astarF_28877_29917), .wenable(wrenable_reg_38));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_39 (.out1(out_reg_39_reg_39), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_84_i0_fu_astarF_28877_29928), .wenable(wrenable_reg_39));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_10_i0_fu_astarF_28877_29786), .wenable(wrenable_reg_4));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_40 (.out1(out_reg_40_reg_40), .clock(clock), .reset(reset), .in1(out_BMEMORY_CTRLN_107_i1_BMEMORY_CTRLN_107_i0), .wenable(wrenable_reg_40));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_41 (.out1(out_reg_41_reg_41), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_82_i0_fu_astarF_28877_29644), .wenable(wrenable_reg_41));
  register_STD #(.BITSIZE_in1(13), .BITSIZE_out1(13)) reg_42 (.out1(out_reg_42_reg_42), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_149_i4_fu_astarF_28877_29923), .wenable(wrenable_reg_42));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_43 (.out1(out_reg_43_reg_43), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_149_i5_fu_astarF_28877_29937), .wenable(wrenable_reg_43));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_44 (.out1(out_reg_44_reg_44), .clock(clock), .reset(reset), .in1(out_BMEMORY_CTRLN_107_i1_BMEMORY_CTRLN_107_i0), .wenable(wrenable_reg_44));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_45 (.out1(out_reg_45_reg_45), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_87_i0_fu_astarF_28877_29643), .wenable(wrenable_reg_45));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_46 (.out1(out_reg_46_reg_46), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_88_i0_fu_astarF_28877_29647), .wenable(wrenable_reg_46));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_47 (.out1(out_reg_47_reg_47), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_8_8_126_i0_fu_astarF_28877_29556), .wenable(wrenable_reg_47));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_48 (.out1(out_reg_48_reg_48), .clock(clock), .reset(reset), .in1(out_lt_expr_FU_16_16_16_119_i0_fu_astarF_28877_30258), .wenable(wrenable_reg_48));
  register_STD #(.BITSIZE_in1(12), .BITSIZE_out1(12)) reg_49 (.out1(out_reg_49_reg_49), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_149_i2_fu_astarF_28877_29613), .wenable(wrenable_reg_49));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_18_i0_fu_astarF_28877_29815), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_50 (.out1(out_reg_50_reg_50), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_93_i0_fu_astarF_28877_29970), .wenable(wrenable_reg_50));
  register_STD #(.BITSIZE_in1(12), .BITSIZE_out1(12)) reg_51 (.out1(out_reg_51_reg_51), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_149_i7_fu_astarF_28877_30012), .wenable(wrenable_reg_51));
  register_STD #(.BITSIZE_in1(13), .BITSIZE_out1(13)) reg_52 (.out1(out_reg_52_reg_52), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_149_i6_fu_astarF_28877_29976), .wenable(wrenable_reg_52));
  register_SE #(.BITSIZE_in1(13), .BITSIZE_out1(13)) reg_53 (.out1(out_reg_53_reg_53), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_0_16_148_i0_fu_astarF_28877_29989), .wenable(wrenable_reg_53));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_54 (.out1(out_reg_54_reg_54), .clock(clock), .reset(reset), .in1(out_BMEMORY_CTRLN_107_i0_BMEMORY_CTRLN_107_i0), .wenable(wrenable_reg_54));
  register_STD #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_55 (.out1(out_reg_55_reg_55), .clock(clock), .reset(reset), .in1(out_rshift_expr_FU_8_0_8_127_i0_fu_astarF_28877_30302), .wenable(wrenable_reg_55));
  register_STD #(.BITSIZE_in1(3), .BITSIZE_out1(3)) reg_56 (.out1(out_reg_56_reg_56), .clock(clock), .reset(reset), .in1(out_bit_and_expr_FU_8_0_8_109_i0_fu_astarF_28877_30316), .wenable(wrenable_reg_56));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_57 (.out1(out_reg_57_reg_57), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_95_i0_fu_astarF_28877_29604), .wenable(wrenable_reg_57));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_58 (.out1(out_reg_58_reg_58), .clock(clock), .reset(reset), .in1(out_ge_expr_FU_8_0_8_114_i0_fu_astarF_28877_29992), .wenable(wrenable_reg_58));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_59 (.out1(out_reg_59_reg_59), .clock(clock), .reset(reset), .in1(out_MUX_207_reg_59_0_0_0), .wenable(wrenable_reg_59));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_19_i0_fu_astarF_28877_29829), .wenable(wrenable_reg_6));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_60 (.out1(out_reg_60_reg_60), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_8_8_126_i1_fu_astarF_28877_29589), .wenable(wrenable_reg_60));
  register_STD #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_61 (.out1(out_reg_61_reg_61), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_151_i3_fu_astarF_28877_30038), .wenable(wrenable_reg_61));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_62 (.out1(out_reg_62_reg_62), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_151_i4_fu_astarF_28877_30063), .wenable(wrenable_reg_62));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_63 (.out1(out_reg_63_reg_63), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_0_8_122_i1_fu_astarF_28877_29621), .wenable(wrenable_reg_63));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_64 (.out1(out_reg_64_reg_64), .clock(clock), .reset(reset), .in1(out_MUX_213_reg_64_0_0_0), .wenable(wrenable_reg_64));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_65 (.out1(out_reg_65_reg_65), .clock(clock), .reset(reset), .in1(out_MUX_214_reg_65_0_0_0), .wenable(wrenable_reg_65));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_66 (.out1(out_reg_66_reg_66), .clock(clock), .reset(reset), .in1(out_MUX_215_reg_66_0_0_1), .wenable(wrenable_reg_66));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_67 (.out1(out_reg_67_reg_67), .clock(clock), .reset(reset), .in1(out_ui_le_expr_FU_8_0_8_135_i0_fu_astarF_28877_30260), .wenable(wrenable_reg_67));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_68 (.out1(out_reg_68_reg_68), .clock(clock), .reset(reset), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28866_0), .wenable(wrenable_reg_68));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_69 (.out1(out_reg_69_reg_69), .clock(clock), .reset(reset), .in1(out_gt_expr_FU_8_0_8_115_i1_fu_astarF_28877_30262), .wenable(wrenable_reg_69));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_20_i0_fu_astarF_28877_29843), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_21_i0_fu_astarF_28877_29851), .wenable(wrenable_reg_8));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_22_i0_fu_astarF_28877_30025), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(20), .BITSIZE_out1(10), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy5_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy5_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram6_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram6_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288617_ (.out1(proxy_in1_28861), .in1(sig_out_bus_mergerproxy_in1_288617_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288688_ (.out1(proxy_in1_28868), .in1(sig_out_bus_mergerproxy_in1_288688_));
  split_signal #(.BITSIZE_in1(20), .BITSIZE_out1(10), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288619_ (.out1(proxy_in2_28861), .in1(sig_out_bus_mergerproxy_in2_288619_));
  split_signal #(.BITSIZE_in1(20), .BITSIZE_out1(10), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2886810_ (.out1(proxy_in2_28868), .in1(sig_out_bus_mergerproxy_in2_2886810_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2886111_ (.out1(proxy_in3_28861), .in1(sig_out_bus_mergerproxy_in3_2886111_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2886812_ (.out1(proxy_in3_28868), .in1(sig_out_bus_mergerproxy_in3_2886812_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886113_ (.out1(proxy_sel_LOAD_28861), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886113_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886814_ (.out1(proxy_sel_LOAD_28868), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886814_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886115_ (.out1(proxy_sel_STORE_28861), .in1(sig_out_bus_mergerproxy_sel_STORE_2886115_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886816_ (.out1(proxy_sel_STORE_28868), .in1(sig_out_bus_mergerproxy_sel_STORE_2886816_));
  // io-signal post fix
  assign OUT_CONDITION_astarF_28877_29378 = out_read_cond_FU_28_i0_fu_astarF_28877_29378;
  assign OUT_CONDITION_astarF_28877_29400 = out_read_cond_FU_31_i0_fu_astarF_28877_29400;
  assign OUT_CONDITION_astarF_28877_29418 = out_read_cond_FU_35_i0_fu_astarF_28877_29418;
  assign OUT_CONDITION_astarF_28877_29433 = out_read_cond_FU_36_i0_fu_astarF_28877_29433;
  assign OUT_CONDITION_astarF_28877_29633 = out_read_cond_FU_59_i0_fu_astarF_28877_29633;
  assign OUT_CONDITION_astarF_28877_29635 = out_read_cond_FU_62_i0_fu_astarF_28877_29635;
  assign OUT_CONDITION_astarF_28877_29641 = out_read_cond_FU_85_i0_fu_astarF_28877_29641;
  assign OUT_CONDITION_astarF_28877_29648 = out_read_cond_FU_89_i0_fu_astarF_28877_29648;
  assign OUT_CONDITION_astarF_28877_29664 = out_read_cond_FU_96_i0_fu_astarF_28877_29664;
  assign OUT_CONDITION_astarF_28877_29670 = out_read_cond_FU_105_i0_fu_astarF_28877_29670;
  assign OUT_CONDITION_astarF_28877_29673 = out_read_cond_FU_106_i0_fu_astarF_28877_29673;

endmodule

// FSM based controller description for astarF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_astarF(done_port, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE, fuselector_BMEMORY_CTRLN_107_i0_LOAD, fuselector_BMEMORY_CTRLN_107_i0_STORE, fuselector_BMEMORY_CTRLN_107_i1_LOAD, fuselector_BMEMORY_CTRLN_107_i1_STORE, selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0, selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1, selector_MUX_155_reg_11_0_0_0, selector_MUX_155_reg_11_0_0_1, selector_MUX_160_reg_16_0_0_0, selector_MUX_165_reg_20_0_0_0, selector_MUX_167_reg_22_0_0_0, selector_MUX_169_reg_24_0_0_0, selector_MUX_169_reg_24_0_0_1, selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0, selector_MUX_176_reg_30_0_0_0, selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0, selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1, selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_1_0, selector_MUX_180_reg_34_0_0_0, selector_MUX_207_reg_59_0_0_0, selector_MUX_213_reg_64_0_0_0, selector_MUX_214_reg_65_0_0_0, selector_MUX_215_reg_66_0_0_0, selector_MUX_215_reg_66_0_0_1, selector_MUX_21_BMEMORY_CTRLN_107_i0_1_0_0, selector_MUX_24_BMEMORY_CTRLN_107_i1_1_0_0, selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0, selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1, selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0, selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0, selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0, selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1, selector_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0, selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0, fuselector_PROXY_CTRLN_5_i0_LOAD, fuselector_PROXY_CTRLN_5_i0_STORE, fuselector_PROXY_CTRLN_6_i0_LOAD, fuselector_PROXY_CTRLN_6_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_29, wrenable_reg_3, wrenable_reg_30, wrenable_reg_31, wrenable_reg_32, wrenable_reg_33, wrenable_reg_34, wrenable_reg_35, wrenable_reg_36, wrenable_reg_37, wrenable_reg_38, wrenable_reg_39, wrenable_reg_4, wrenable_reg_40, wrenable_reg_41, wrenable_reg_42, wrenable_reg_43, wrenable_reg_44, wrenable_reg_45, wrenable_reg_46, wrenable_reg_47, wrenable_reg_48, wrenable_reg_49, wrenable_reg_5, wrenable_reg_50, wrenable_reg_51, wrenable_reg_52, wrenable_reg_53, wrenable_reg_54, wrenable_reg_55, wrenable_reg_56, wrenable_reg_57, wrenable_reg_58, wrenable_reg_59, wrenable_reg_6, wrenable_reg_60, wrenable_reg_61, wrenable_reg_62, wrenable_reg_63, wrenable_reg_64, wrenable_reg_65, wrenable_reg_66, wrenable_reg_67, wrenable_reg_68, wrenable_reg_69, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_astarF_28877_29378, OUT_CONDITION_astarF_28877_29400, OUT_CONDITION_astarF_28877_29418, OUT_CONDITION_astarF_28877_29433, OUT_CONDITION_astarF_28877_29633, OUT_CONDITION_astarF_28877_29635, OUT_CONDITION_astarF_28877_29641, OUT_CONDITION_astarF_28877_29648, OUT_CONDITION_astarF_28877_29664, OUT_CONDITION_astarF_28877_29670, OUT_CONDITION_astarF_28877_29673, clock, reset, start_port);
  // IN
  input OUT_CONDITION_astarF_28877_29378;
  input OUT_CONDITION_astarF_28877_29400;
  input OUT_CONDITION_astarF_28877_29418;
  input OUT_CONDITION_astarF_28877_29433;
  input OUT_CONDITION_astarF_28877_29633;
  input OUT_CONDITION_astarF_28877_29635;
  input OUT_CONDITION_astarF_28877_29641;
  input OUT_CONDITION_astarF_28877_29648;
  input OUT_CONDITION_astarF_28877_29664;
  input OUT_CONDITION_astarF_28877_29670;
  input OUT_CONDITION_astarF_28877_29673;
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
  output fuselector_BMEMORY_CTRLN_107_i0_LOAD;
  output fuselector_BMEMORY_CTRLN_107_i0_STORE;
  output fuselector_BMEMORY_CTRLN_107_i1_LOAD;
  output fuselector_BMEMORY_CTRLN_107_i1_STORE;
  output selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0;
  output selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1;
  output selector_MUX_155_reg_11_0_0_0;
  output selector_MUX_155_reg_11_0_0_1;
  output selector_MUX_160_reg_16_0_0_0;
  output selector_MUX_165_reg_20_0_0_0;
  output selector_MUX_167_reg_22_0_0_0;
  output selector_MUX_169_reg_24_0_0_0;
  output selector_MUX_169_reg_24_0_0_1;
  output selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0;
  output selector_MUX_176_reg_30_0_0_0;
  output selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0;
  output selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1;
  output selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_1_0;
  output selector_MUX_180_reg_34_0_0_0;
  output selector_MUX_207_reg_59_0_0_0;
  output selector_MUX_213_reg_64_0_0_0;
  output selector_MUX_214_reg_65_0_0_0;
  output selector_MUX_215_reg_66_0_0_0;
  output selector_MUX_215_reg_66_0_0_1;
  output selector_MUX_21_BMEMORY_CTRLN_107_i0_1_0_0;
  output selector_MUX_24_BMEMORY_CTRLN_107_i1_1_0_0;
  output selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0;
  output selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1;
  output selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0;
  output selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0;
  output selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0;
  output selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1;
  output selector_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0;
  output selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0;
  output fuselector_PROXY_CTRLN_5_i0_LOAD;
  output fuselector_PROXY_CTRLN_5_i0_STORE;
  output fuselector_PROXY_CTRLN_6_i0_LOAD;
  output fuselector_PROXY_CTRLN_6_i0_STORE;
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
  output wrenable_reg_63;
  output wrenable_reg_64;
  output wrenable_reg_65;
  output wrenable_reg_66;
  output wrenable_reg_67;
  output wrenable_reg_68;
  output wrenable_reg_69;
  output wrenable_reg_7;
  output wrenable_reg_8;
  output wrenable_reg_9;
  parameter [52:0] S_0 = 53'b00000000000000000000000000000000000000000000000000001,
    S_1 = 53'b00000000000000000000000000000000000000000000000000010,
    S_2 = 53'b00000000000000000000000000000000000000000000000000100,
    S_4 = 53'b00000000000000000000000000000000000000000000000010000,
    S_3 = 53'b00000000000000000000000000000000000000000000000001000,
    S_5 = 53'b00000000000000000000000000000000000000000000000100000,
    S_6 = 53'b00000000000000000000000000000000000000000000001000000,
    S_7 = 53'b00000000000000000000000000000000000000000000010000000,
    S_8 = 53'b00000000000000000000000000000000000000000000100000000,
    S_9 = 53'b00000000000000000000000000000000000000000001000000000,
    S_10 = 53'b00000000000000000000000000000000000000000010000000000,
    S_11 = 53'b00000000000000000000000000000000000000000100000000000,
    S_52 = 53'b10000000000000000000000000000000000000000000000000000,
    S_12 = 53'b00000000000000000000000000000000000000001000000000000,
    S_13 = 53'b00000000000000000000000000000000000000010000000000000,
    S_14 = 53'b00000000000000000000000000000000000000100000000000000,
    S_15 = 53'b00000000000000000000000000000000000001000000000000000,
    S_16 = 53'b00000000000000000000000000000000000010000000000000000,
    S_17 = 53'b00000000000000000000000000000000000100000000000000000,
    S_18 = 53'b00000000000000000000000000000000001000000000000000000,
    S_19 = 53'b00000000000000000000000000000000010000000000000000000,
    S_20 = 53'b00000000000000000000000000000000100000000000000000000,
    S_21 = 53'b00000000000000000000000000000001000000000000000000000,
    S_22 = 53'b00000000000000000000000000000010000000000000000000000,
    S_50 = 53'b00100000000000000000000000000000000000000000000000000,
    S_23 = 53'b00000000000000000000000000000100000000000000000000000,
    S_24 = 53'b00000000000000000000000000001000000000000000000000000,
    S_25 = 53'b00000000000000000000000000010000000000000000000000000,
    S_26 = 53'b00000000000000000000000000100000000000000000000000000,
    S_27 = 53'b00000000000000000000000001000000000000000000000000000,
    S_28 = 53'b00000000000000000000000010000000000000000000000000000,
    S_29 = 53'b00000000000000000000000100000000000000000000000000000,
    S_30 = 53'b00000000000000000000001000000000000000000000000000000,
    S_31 = 53'b00000000000000000000010000000000000000000000000000000,
    S_32 = 53'b00000000000000000000100000000000000000000000000000000,
    S_33 = 53'b00000000000000000001000000000000000000000000000000000,
    S_34 = 53'b00000000000000000010000000000000000000000000000000000,
    S_35 = 53'b00000000000000000100000000000000000000000000000000000,
    S_36 = 53'b00000000000000001000000000000000000000000000000000000,
    S_37 = 53'b00000000000000010000000000000000000000000000000000000,
    S_38 = 53'b00000000000000100000000000000000000000000000000000000,
    S_39 = 53'b00000000000001000000000000000000000000000000000000000,
    S_40 = 53'b00000000000010000000000000000000000000000000000000000,
    S_41 = 53'b00000000000100000000000000000000000000000000000000000,
    S_42 = 53'b00000000001000000000000000000000000000000000000000000,
    S_43 = 53'b00000000010000000000000000000000000000000000000000000,
    S_44 = 53'b00000000100000000000000000000000000000000000000000000,
    S_45 = 53'b00000001000000000000000000000000000000000000000000000,
    S_46 = 53'b00000010000000000000000000000000000000000000000000000,
    S_47 = 53'b00000100000000000000000000000000000000000000000000000,
    S_48 = 53'b00001000000000000000000000000000000000000000000000000,
    S_49 = 53'b00010000000000000000000000000000000000000000000000000,
    S_51 = 53'b01000000000000000000000000000000000000000000000000000;
  reg [52:0] _present_state, _next_state;
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
  reg fuselector_BMEMORY_CTRLN_107_i0_LOAD;
  reg fuselector_BMEMORY_CTRLN_107_i0_STORE;
  reg fuselector_BMEMORY_CTRLN_107_i1_LOAD;
  reg fuselector_BMEMORY_CTRLN_107_i1_STORE;
  reg selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0;
  reg selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1;
  reg selector_MUX_155_reg_11_0_0_0;
  reg selector_MUX_155_reg_11_0_0_1;
  reg selector_MUX_160_reg_16_0_0_0;
  reg selector_MUX_165_reg_20_0_0_0;
  reg selector_MUX_167_reg_22_0_0_0;
  reg selector_MUX_169_reg_24_0_0_0;
  reg selector_MUX_169_reg_24_0_0_1;
  reg selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0;
  reg selector_MUX_176_reg_30_0_0_0;
  reg selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0;
  reg selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1;
  reg selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_1_0;
  reg selector_MUX_180_reg_34_0_0_0;
  reg selector_MUX_207_reg_59_0_0_0;
  reg selector_MUX_213_reg_64_0_0_0;
  reg selector_MUX_214_reg_65_0_0_0;
  reg selector_MUX_215_reg_66_0_0_0;
  reg selector_MUX_215_reg_66_0_0_1;
  reg selector_MUX_21_BMEMORY_CTRLN_107_i0_1_0_0;
  reg selector_MUX_24_BMEMORY_CTRLN_107_i1_1_0_0;
  reg selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0;
  reg selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1;
  reg selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0;
  reg selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0;
  reg selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0;
  reg selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1;
  reg selector_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0;
  reg selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0;
  reg fuselector_PROXY_CTRLN_5_i0_LOAD;
  reg fuselector_PROXY_CTRLN_5_i0_STORE;
  reg fuselector_PROXY_CTRLN_6_i0_LOAD;
  reg fuselector_PROXY_CTRLN_6_i0_STORE;
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
  reg wrenable_reg_63;
  reg wrenable_reg_64;
  reg wrenable_reg_65;
  reg wrenable_reg_66;
  reg wrenable_reg_67;
  reg wrenable_reg_68;
  reg wrenable_reg_69;
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
    fuselector_BMEMORY_CTRLN_107_i0_LOAD = 1'b0;
    fuselector_BMEMORY_CTRLN_107_i0_STORE = 1'b0;
    fuselector_BMEMORY_CTRLN_107_i1_LOAD = 1'b0;
    fuselector_BMEMORY_CTRLN_107_i1_STORE = 1'b0;
    selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0 = 1'b0;
    selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1 = 1'b0;
    selector_MUX_155_reg_11_0_0_0 = 1'b0;
    selector_MUX_155_reg_11_0_0_1 = 1'b0;
    selector_MUX_160_reg_16_0_0_0 = 1'b0;
    selector_MUX_165_reg_20_0_0_0 = 1'b0;
    selector_MUX_167_reg_22_0_0_0 = 1'b0;
    selector_MUX_169_reg_24_0_0_0 = 1'b0;
    selector_MUX_169_reg_24_0_0_1 = 1'b0;
    selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0 = 1'b0;
    selector_MUX_176_reg_30_0_0_0 = 1'b0;
    selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0 = 1'b0;
    selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1 = 1'b0;
    selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_1_0 = 1'b0;
    selector_MUX_180_reg_34_0_0_0 = 1'b0;
    selector_MUX_207_reg_59_0_0_0 = 1'b0;
    selector_MUX_213_reg_64_0_0_0 = 1'b0;
    selector_MUX_214_reg_65_0_0_0 = 1'b0;
    selector_MUX_215_reg_66_0_0_0 = 1'b0;
    selector_MUX_215_reg_66_0_0_1 = 1'b0;
    selector_MUX_21_BMEMORY_CTRLN_107_i0_1_0_0 = 1'b0;
    selector_MUX_24_BMEMORY_CTRLN_107_i1_1_0_0 = 1'b0;
    selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0 = 1'b0;
    selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1 = 1'b0;
    selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0 = 1'b0;
    selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0 = 1'b0;
    selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0 = 1'b0;
    selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1 = 1'b0;
    selector_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0 = 1'b0;
    selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0 = 1'b0;
    fuselector_PROXY_CTRLN_5_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_5_i0_STORE = 1'b0;
    fuselector_PROXY_CTRLN_6_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRLN_6_i0_STORE = 1'b0;
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
    wrenable_reg_63 = 1'b0;
    wrenable_reg_64 = 1'b0;
    wrenable_reg_65 = 1'b0;
    wrenable_reg_66 = 1'b0;
    wrenable_reg_67 = 1'b0;
    wrenable_reg_68 = 1'b0;
    wrenable_reg_69 = 1'b0;
    wrenable_reg_7 = 1'b0;
    wrenable_reg_8 = 1'b0;
    wrenable_reg_9 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          selector_MUX_155_reg_11_0_0_0 = 1'b1;
          selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_5_i0_STORE = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_16 = 1'b1;
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
          selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0 = 1'bX;
          selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1 = 1'bX;
          selector_MUX_155_reg_11_0_0_0 = 1'bX;
          selector_MUX_155_reg_11_0_0_1 = 1'bX;
          selector_MUX_160_reg_16_0_0_0 = 1'bX;
          selector_MUX_165_reg_20_0_0_0 = 1'bX;
          selector_MUX_167_reg_22_0_0_0 = 1'bX;
          selector_MUX_169_reg_24_0_0_0 = 1'bX;
          selector_MUX_169_reg_24_0_0_1 = 1'bX;
          selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0 = 1'bX;
          selector_MUX_176_reg_30_0_0_0 = 1'bX;
          selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0 = 1'bX;
          selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1 = 1'bX;
          selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_1_0 = 1'bX;
          selector_MUX_180_reg_34_0_0_0 = 1'bX;
          selector_MUX_207_reg_59_0_0_0 = 1'bX;
          selector_MUX_213_reg_64_0_0_0 = 1'bX;
          selector_MUX_214_reg_65_0_0_0 = 1'bX;
          selector_MUX_215_reg_66_0_0_0 = 1'bX;
          selector_MUX_215_reg_66_0_0_1 = 1'bX;
          selector_MUX_21_BMEMORY_CTRLN_107_i0_1_0_0 = 1'bX;
          selector_MUX_24_BMEMORY_CTRLN_107_i1_1_0_0 = 1'bX;
          selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0 = 1'bX;
          selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1 = 1'bX;
          selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0 = 1'bX;
          selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0 = 1'bX;
          selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0 = 1'bX;
          selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1 = 1'bX;
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
          wrenable_reg_63 = 1'bX;
          wrenable_reg_64 = 1'bX;
          wrenable_reg_65 = 1'bX;
          wrenable_reg_66 = 1'bX;
          wrenable_reg_67 = 1'bX;
          wrenable_reg_68 = 1'bX;
          wrenable_reg_69 = 1'bX;
          wrenable_reg_7 = 1'bX;
          wrenable_reg_8 = 1'bX;
          wrenable_reg_9 = 1'bX;
          _next_state = S_0;
        end
      S_1 :
        begin
          selector_MUX_155_reg_11_0_0_1 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_12 = 1'b1;
          wrenable_reg_13 = 1'b1;
          wrenable_reg_14 = 1'b1;
          _next_state = S_2;
        end
      S_2 :
        begin
          wrenable_reg_15 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29378 == 1'b1)
            begin
              _next_state = S_3;
              wrenable_reg_15 = 1'b0;
            end
          else
            begin
              _next_state = S_4;
            end
        end
      S_4 :
        begin
          selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1 = 1'b1;
          fuselector_PROXY_CTRLN_6_i0_STORE = 1'b1;
          _next_state = S_5;
        end
      S_3 :
        begin
          selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_6_i0_STORE = 1'b1;
          _next_state = S_5;
        end
      S_5 :
        begin
          wrenable_reg_11 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29400 == 1'b1)
            begin
              _next_state = S_1;
            end
          else
            begin
              _next_state = S_6;
              wrenable_reg_11 = 1'b0;
            end
        end
      S_6 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE = 1'b1;
          wrenable_reg_17 = 1'b1;
          wrenable_reg_18 = 1'b1;
          _next_state = S_7;
        end
      S_7 :
        begin
          selector_MUX_160_reg_16_0_0_0 = 1'b1;
          wrenable_reg_16 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29418 == 1'b1)
            begin
              _next_state = S_6;
            end
          else
            begin
              _next_state = S_8;
              selector_MUX_160_reg_16_0_0_0 = 1'b0;
              wrenable_reg_16 = 1'b0;
            end
        end
      S_8 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE = 1'b1;
          selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_1_0 = 1'b1;
          selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1 = 1'b1;
          selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_5_i0_STORE = 1'b1;
          _next_state = S_9;
        end
      S_9 :
        begin
          wrenable_reg_68 = 1'b1;
          _next_state = S_10;
        end
      S_10 :
        begin
          wrenable_reg_19 = 1'b1;
          wrenable_reg_20 = 1'b1;
          _next_state = S_11;
        end
      S_11 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE = 1'b1;
          selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29433 == 1'b1)
            begin
              _next_state = S_12;
            end
          else
            begin
              _next_state = S_52;
              done_port = 1'b1;
            end
        end
      S_52 :
        begin
          _next_state = S_0;
        end
      S_12 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD = 1'b1;
          wrenable_reg_21 = 1'b1;
          _next_state = S_13;
        end
      S_13 :
        begin
          selector_MUX_167_reg_22_0_0_0 = 1'b1;
          selector_MUX_169_reg_24_0_0_0 = 1'b1;
          selector_MUX_176_reg_30_0_0_0 = 1'b1;
          wrenable_reg_22 = 1'b1;
          wrenable_reg_24 = 1'b1;
          wrenable_reg_30 = 1'b1;
          _next_state = S_14;
        end
      S_14 :
        begin
          selector_MUX_169_reg_24_0_0_1 = 1'b1;
          wrenable_reg_23 = 1'b1;
          wrenable_reg_24 = 1'b1;
          wrenable_reg_25 = 1'b1;
          wrenable_reg_26 = 1'b1;
          _next_state = S_15;
        end
      S_15 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD = 1'b1;
          _next_state = S_16;
        end
      S_16 :
        begin
          wrenable_reg_27 = 1'b1;
          wrenable_reg_28 = 1'b1;
          wrenable_reg_29 = 1'b1;
          _next_state = S_17;
        end
      S_17 :
        begin
          wrenable_reg_22 = 1'b1;
          wrenable_reg_24 = 1'b1;
          wrenable_reg_30 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29633 == 1'b1)
            begin
              _next_state = S_14;
            end
          else
            begin
              _next_state = S_18;
              wrenable_reg_22 = 1'b0;
              wrenable_reg_24 = 1'b0;
            end
        end
      S_18 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE = 1'b1;
          selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0 = 1'b1;
          selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1 = 1'b1;
          selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_5_i0_STORE = 1'b1;
          _next_state = S_19;
        end
      S_19 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD = 1'b1;
          _next_state = S_20;
        end
      S_20 :
        begin
          wrenable_reg_31 = 1'b1;
          wrenable_reg_32 = 1'b1;
          wrenable_reg_34 = 1'b1;
          _next_state = S_21;
        end
      S_21 :
        begin
          wrenable_reg_33 = 1'b1;
          _next_state = S_22;
        end
      S_22 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE = 1'b1;
          selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29635 == 1'b0)
            begin
              _next_state = S_23;
            end
          else
            begin
              _next_state = S_50;
              done_port = 1'b1;
            end
        end
      S_50 :
        begin
          _next_state = S_0;
        end
      S_23 :
        begin
          selector_MUX_215_reg_66_0_0_0 = 1'b1;
          selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0 = 1'b1;
          selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_5_i0_STORE = 1'b1;
          wrenable_reg_66 = 1'b1;
          _next_state = S_24;
        end
      S_24 :
        begin
          wrenable_reg_35 = 1'b1;
          wrenable_reg_36 = 1'b1;
          wrenable_reg_37 = 1'b1;
          wrenable_reg_38 = 1'b1;
          wrenable_reg_39 = 1'b1;
          _next_state = S_25;
        end
      S_25 :
        begin
          fuselector_BMEMORY_CTRLN_107_i1_LOAD = 1'b1;
          _next_state = S_26;
        end
      S_26 :
        begin
          wrenable_reg_40 = 1'b1;
          wrenable_reg_41 = 1'b1;
          _next_state = S_27;
        end
      S_27 :
        begin
          selector_MUX_213_reg_64_0_0_0 = 1'b1;
          wrenable_reg_64 = 1'b1;
          wrenable_reg_65 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29641 == 1'b1)
            begin
              _next_state = S_28;
              selector_MUX_213_reg_64_0_0_0 = 1'b0;
              wrenable_reg_64 = 1'b0;
              wrenable_reg_65 = 1'b0;
            end
          else
            begin
              _next_state = S_45;
            end
        end
      S_28 :
        begin
          wrenable_reg_42 = 1'b1;
          wrenable_reg_43 = 1'b1;
          _next_state = S_29;
        end
      S_29 :
        begin
          fuselector_BMEMORY_CTRLN_107_i0_LOAD = 1'b1;
          fuselector_BMEMORY_CTRLN_107_i1_LOAD = 1'b1;
          selector_MUX_24_BMEMORY_CTRLN_107_i1_1_0_0 = 1'b1;
          _next_state = S_30;
        end
      S_30 :
        begin
          wrenable_reg_44 = 1'b1;
          wrenable_reg_45 = 1'b1;
          wrenable_reg_46 = 1'b1;
          _next_state = S_31;
        end
      S_31 :
        begin
          wrenable_reg_47 = 1'b1;
          wrenable_reg_48 = 1'b1;
          _next_state = S_32;
        end
      S_32 :
        begin
          selector_MUX_213_reg_64_0_0_0 = 1'b1;
          wrenable_reg_64 = 1'b1;
          wrenable_reg_65 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29648 == 1'b1)
            begin
              _next_state = S_33;
              selector_MUX_213_reg_64_0_0_0 = 1'b0;
              wrenable_reg_64 = 1'b0;
              wrenable_reg_65 = 1'b0;
            end
          else
            begin
              _next_state = S_45;
            end
        end
      S_33 :
        begin
          fuselector_BMEMORY_CTRLN_107_i0_STORE = 1'b1;
          _next_state = S_34;
        end
      S_34 :
        begin
          selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_5_i0_LOAD = 1'b1;
          _next_state = S_35;
        end
      S_35 :
        begin
          selector_MUX_214_reg_65_0_0_0 = 1'b1;
          wrenable_reg_49 = 1'b1;
          wrenable_reg_50 = 1'b1;
          wrenable_reg_51 = 1'b1;
          wrenable_reg_65 = 1'b1;
          _next_state = S_36;
        end
      S_36 :
        begin
          wrenable_reg_52 = 1'b1;
          wrenable_reg_53 = 1'b1;
          _next_state = S_37;
        end
      S_37 :
        begin
          fuselector_BMEMORY_CTRLN_107_i0_LOAD = 1'b1;
          selector_MUX_21_BMEMORY_CTRLN_107_i0_1_0_0 = 1'b1;
          _next_state = S_38;
        end
      S_38 :
        begin
          selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_6_i0_LOAD = 1'b1;
          wrenable_reg_54 = 1'b1;
          wrenable_reg_55 = 1'b1;
          wrenable_reg_56 = 1'b1;
          _next_state = S_39;
        end
      S_39 :
        begin
          wrenable_reg_57 = 1'b1;
          wrenable_reg_58 = 1'b1;
          _next_state = S_40;
        end
      S_40 :
        begin
          wrenable_reg_59 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29664 == 1'b1)
            begin
              _next_state = S_42;
            end
          else
            begin
              _next_state = S_41;
              wrenable_reg_59 = 1'b0;
            end
        end
      S_41 :
        begin
          selector_MUX_207_reg_59_0_0_0 = 1'b1;
          wrenable_reg_59 = 1'b1;
          _next_state = S_42;
        end
      S_42 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD = 1'b1;
          wrenable_reg_60 = 1'b1;
          wrenable_reg_61 = 1'b1;
          wrenable_reg_62 = 1'b1;
          _next_state = S_43;
        end
      S_43 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE = 1'b1;
          selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0 = 1'b1;
          selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0 = 1'b1;
          selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_1_0 = 1'b1;
          wrenable_reg_63 = 1'b1;
          wrenable_reg_64 = 1'b1;
          _next_state = S_44;
        end
      S_44 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE = 1'b1;
          selector_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0 = 1'b1;
          selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0 = 1'b1;
          _next_state = S_45;
        end
      S_45 :
        begin
          selector_MUX_215_reg_66_0_0_1 = 1'b1;
          wrenable_reg_66 = 1'b1;
          wrenable_reg_67 = 1'b1;
          _next_state = S_46;
        end
      S_46 :
        begin
          selector_MUX_180_reg_34_0_0_0 = 1'b1;
          selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_5_i0_STORE = 1'b1;
          wrenable_reg_34 = 1'b1;
          wrenable_reg_66 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29670 == 1'b1)
            begin
              _next_state = S_24;
            end
          else
            begin
              _next_state = S_47;
              selector_MUX_180_reg_34_0_0_0 = 1'b0;
              wrenable_reg_34 = 1'b0;
              wrenable_reg_66 = 1'b0;
            end
        end
      S_47 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD = 1'b1;
          _next_state = S_48;
        end
      S_48 :
        begin
          wrenable_reg_68 = 1'b1;
          wrenable_reg_69 = 1'b1;
          _next_state = S_49;
        end
      S_49 :
        begin
          selector_MUX_165_reg_20_0_0_0 = 1'b1;
          wrenable_reg_20 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29673 == 1'b1)
            begin
              _next_state = S_12;
            end
          else
            begin
              _next_state = S_51;
              done_port = 1'b1;
              selector_MUX_165_reg_20_0_0_0 = 1'b0;
              wrenable_reg_20 = 1'b0;
            end
        end
      S_51 :
        begin
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0 = 1'bX;
          selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1 = 1'bX;
          selector_MUX_155_reg_11_0_0_0 = 1'bX;
          selector_MUX_155_reg_11_0_0_1 = 1'bX;
          selector_MUX_160_reg_16_0_0_0 = 1'bX;
          selector_MUX_165_reg_20_0_0_0 = 1'bX;
          selector_MUX_167_reg_22_0_0_0 = 1'bX;
          selector_MUX_169_reg_24_0_0_0 = 1'bX;
          selector_MUX_169_reg_24_0_0_1 = 1'bX;
          selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0 = 1'bX;
          selector_MUX_176_reg_30_0_0_0 = 1'bX;
          selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0 = 1'bX;
          selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1 = 1'bX;
          selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_1_0 = 1'bX;
          selector_MUX_180_reg_34_0_0_0 = 1'bX;
          selector_MUX_207_reg_59_0_0_0 = 1'bX;
          selector_MUX_213_reg_64_0_0_0 = 1'bX;
          selector_MUX_214_reg_65_0_0_0 = 1'bX;
          selector_MUX_215_reg_66_0_0_0 = 1'bX;
          selector_MUX_215_reg_66_0_0_1 = 1'bX;
          selector_MUX_21_BMEMORY_CTRLN_107_i0_1_0_0 = 1'bX;
          selector_MUX_24_BMEMORY_CTRLN_107_i1_1_0_0 = 1'bX;
          selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0 = 1'bX;
          selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1 = 1'bX;
          selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0 = 1'bX;
          selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0 = 1'bX;
          selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0 = 1'bX;
          selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1 = 1'bX;
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
          wrenable_reg_63 = 1'bX;
          wrenable_reg_64 = 1'bX;
          wrenable_reg_65 = 1'bX;
          wrenable_reg_66 = 1'bX;
          wrenable_reg_67 = 1'bX;
          wrenable_reg_68 = 1'bX;
          wrenable_reg_69 = 1'bX;
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
  parameter MEM_var_28861_28879=64, MEM_var_28862_28877=256, MEM_var_28864_28877=320, MEM_var_28865_28877=384, MEM_var_28866_28877=448, MEM_var_28867_28877=512, MEM_var_28868_28879=128;
  // IN
  input clock;
  input reset;
  input start_port;
  input [31:0] a;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [19:0] S_addr_ram;
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
  input [19:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  // OUT
  output done_port;
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [15:0] proxy_in1_28861;
  output [19:0] proxy_in2_28861;
  output [7:0] proxy_in3_28861;
  output [1:0] proxy_sel_LOAD_28861;
  output [1:0] proxy_sel_STORE_28861;
  output [15:0] proxy_in1_28868;
  output [19:0] proxy_in2_28868;
  output [7:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [19:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  // Component and signal declarations
  wire OUT_CONDITION_astarF_28877_29378;
  wire OUT_CONDITION_astarF_28877_29400;
  wire OUT_CONDITION_astarF_28877_29418;
  wire OUT_CONDITION_astarF_28877_29433;
  wire OUT_CONDITION_astarF_28877_29633;
  wire OUT_CONDITION_astarF_28877_29635;
  wire OUT_CONDITION_astarF_28877_29641;
  wire OUT_CONDITION_astarF_28877_29648;
  wire OUT_CONDITION_astarF_28877_29664;
  wire OUT_CONDITION_astarF_28877_29670;
  wire OUT_CONDITION_astarF_28877_29673;
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
  wire fuselector_BMEMORY_CTRLN_107_i0_LOAD;
  wire fuselector_BMEMORY_CTRLN_107_i0_STORE;
  wire fuselector_BMEMORY_CTRLN_107_i1_LOAD;
  wire fuselector_BMEMORY_CTRLN_107_i1_STORE;
  wire fuselector_PROXY_CTRLN_5_i0_LOAD;
  wire fuselector_PROXY_CTRLN_5_i0_STORE;
  wire fuselector_PROXY_CTRLN_6_i0_LOAD;
  wire fuselector_PROXY_CTRLN_6_i0_STORE;
  wire selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0;
  wire selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1;
  wire selector_MUX_155_reg_11_0_0_0;
  wire selector_MUX_155_reg_11_0_0_1;
  wire selector_MUX_160_reg_16_0_0_0;
  wire selector_MUX_165_reg_20_0_0_0;
  wire selector_MUX_167_reg_22_0_0_0;
  wire selector_MUX_169_reg_24_0_0_0;
  wire selector_MUX_169_reg_24_0_0_1;
  wire selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0;
  wire selector_MUX_176_reg_30_0_0_0;
  wire selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0;
  wire selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1;
  wire selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_1_0;
  wire selector_MUX_180_reg_34_0_0_0;
  wire selector_MUX_207_reg_59_0_0_0;
  wire selector_MUX_213_reg_64_0_0_0;
  wire selector_MUX_214_reg_65_0_0_0;
  wire selector_MUX_215_reg_66_0_0_0;
  wire selector_MUX_215_reg_66_0_0_1;
  wire selector_MUX_21_BMEMORY_CTRLN_107_i0_1_0_0;
  wire selector_MUX_24_BMEMORY_CTRLN_107_i1_1_0_0;
  wire selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0;
  wire selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1;
  wire selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0;
  wire selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0;
  wire selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0;
  wire selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1;
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
  wire wrenable_reg_63;
  wire wrenable_reg_64;
  wire wrenable_reg_65;
  wire wrenable_reg_66;
  wire wrenable_reg_67;
  wire wrenable_reg_68;
  wire wrenable_reg_69;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  controller_astarF Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE), .fuselector_BMEMORY_CTRLN_107_i0_LOAD(fuselector_BMEMORY_CTRLN_107_i0_LOAD), .fuselector_BMEMORY_CTRLN_107_i0_STORE(fuselector_BMEMORY_CTRLN_107_i0_STORE), .fuselector_BMEMORY_CTRLN_107_i1_LOAD(fuselector_BMEMORY_CTRLN_107_i1_LOAD), .fuselector_BMEMORY_CTRLN_107_i1_STORE(fuselector_BMEMORY_CTRLN_107_i1_STORE), .selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0(selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0), .selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1(selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1), .selector_MUX_155_reg_11_0_0_0(selector_MUX_155_reg_11_0_0_0), .selector_MUX_155_reg_11_0_0_1(selector_MUX_155_reg_11_0_0_1), .selector_MUX_160_reg_16_0_0_0(selector_MUX_160_reg_16_0_0_0), .selector_MUX_165_reg_20_0_0_0(selector_MUX_165_reg_20_0_0_0), .selector_MUX_167_reg_22_0_0_0(selector_MUX_167_reg_22_0_0_0), .selector_MUX_169_reg_24_0_0_0(selector_MUX_169_reg_24_0_0_0), .selector_MUX_169_reg_24_0_0_1(selector_MUX_169_reg_24_0_0_1), .selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0(selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0), .selector_MUX_176_reg_30_0_0_0(selector_MUX_176_reg_30_0_0_0), .selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0(selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0), .selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1(selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1), .selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_1_0(selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_1_0), .selector_MUX_180_reg_34_0_0_0(selector_MUX_180_reg_34_0_0_0), .selector_MUX_207_reg_59_0_0_0(selector_MUX_207_reg_59_0_0_0), .selector_MUX_213_reg_64_0_0_0(selector_MUX_213_reg_64_0_0_0), .selector_MUX_214_reg_65_0_0_0(selector_MUX_214_reg_65_0_0_0), .selector_MUX_215_reg_66_0_0_0(selector_MUX_215_reg_66_0_0_0), .selector_MUX_215_reg_66_0_0_1(selector_MUX_215_reg_66_0_0_1), .selector_MUX_21_BMEMORY_CTRLN_107_i0_1_0_0(selector_MUX_21_BMEMORY_CTRLN_107_i0_1_0_0), .selector_MUX_24_BMEMORY_CTRLN_107_i1_1_0_0(selector_MUX_24_BMEMORY_CTRLN_107_i1_1_0_0), .selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0(selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0), .selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1(selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1), .selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0(selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0), .selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0(selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0), .selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0(selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0), .selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1(selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1), .selector_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0(selector_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0), .selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0(selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0), .fuselector_PROXY_CTRLN_5_i0_LOAD(fuselector_PROXY_CTRLN_5_i0_LOAD), .fuselector_PROXY_CTRLN_5_i0_STORE(fuselector_PROXY_CTRLN_5_i0_STORE), .fuselector_PROXY_CTRLN_6_i0_LOAD(fuselector_PROXY_CTRLN_6_i0_LOAD), .fuselector_PROXY_CTRLN_6_i0_STORE(fuselector_PROXY_CTRLN_6_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_29(wrenable_reg_29), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_30(wrenable_reg_30), .wrenable_reg_31(wrenable_reg_31), .wrenable_reg_32(wrenable_reg_32), .wrenable_reg_33(wrenable_reg_33), .wrenable_reg_34(wrenable_reg_34), .wrenable_reg_35(wrenable_reg_35), .wrenable_reg_36(wrenable_reg_36), .wrenable_reg_37(wrenable_reg_37), .wrenable_reg_38(wrenable_reg_38), .wrenable_reg_39(wrenable_reg_39), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_40(wrenable_reg_40), .wrenable_reg_41(wrenable_reg_41), .wrenable_reg_42(wrenable_reg_42), .wrenable_reg_43(wrenable_reg_43), .wrenable_reg_44(wrenable_reg_44), .wrenable_reg_45(wrenable_reg_45), .wrenable_reg_46(wrenable_reg_46), .wrenable_reg_47(wrenable_reg_47), .wrenable_reg_48(wrenable_reg_48), .wrenable_reg_49(wrenable_reg_49), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_50(wrenable_reg_50), .wrenable_reg_51(wrenable_reg_51), .wrenable_reg_52(wrenable_reg_52), .wrenable_reg_53(wrenable_reg_53), .wrenable_reg_54(wrenable_reg_54), .wrenable_reg_55(wrenable_reg_55), .wrenable_reg_56(wrenable_reg_56), .wrenable_reg_57(wrenable_reg_57), .wrenable_reg_58(wrenable_reg_58), .wrenable_reg_59(wrenable_reg_59), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_60(wrenable_reg_60), .wrenable_reg_61(wrenable_reg_61), .wrenable_reg_62(wrenable_reg_62), .wrenable_reg_63(wrenable_reg_63), .wrenable_reg_64(wrenable_reg_64), .wrenable_reg_65(wrenable_reg_65), .wrenable_reg_66(wrenable_reg_66), .wrenable_reg_67(wrenable_reg_67), .wrenable_reg_68(wrenable_reg_68), .wrenable_reg_69(wrenable_reg_69), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_astarF_28877_29378(OUT_CONDITION_astarF_28877_29378), .OUT_CONDITION_astarF_28877_29400(OUT_CONDITION_astarF_28877_29400), .OUT_CONDITION_astarF_28877_29418(OUT_CONDITION_astarF_28877_29418), .OUT_CONDITION_astarF_28877_29433(OUT_CONDITION_astarF_28877_29433), .OUT_CONDITION_astarF_28877_29633(OUT_CONDITION_astarF_28877_29633), .OUT_CONDITION_astarF_28877_29635(OUT_CONDITION_astarF_28877_29635), .OUT_CONDITION_astarF_28877_29641(OUT_CONDITION_astarF_28877_29641), .OUT_CONDITION_astarF_28877_29648(OUT_CONDITION_astarF_28877_29648), .OUT_CONDITION_astarF_28877_29664(OUT_CONDITION_astarF_28877_29664), .OUT_CONDITION_astarF_28877_29670(OUT_CONDITION_astarF_28877_29670), .OUT_CONDITION_astarF_28877_29673(OUT_CONDITION_astarF_28877_29673), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_astarF #(.MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28862_28877(MEM_var_28862_28877), .MEM_var_28864_28877(MEM_var_28864_28877), .MEM_var_28865_28877(MEM_var_28865_28877), .MEM_var_28866_28877(MEM_var_28866_28877), .MEM_var_28867_28877(MEM_var_28867_28877), .MEM_var_28868_28879(MEM_var_28868_28879)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .proxy_in1_28861(proxy_in1_28861), .proxy_in2_28861(proxy_in2_28861), .proxy_in3_28861(proxy_in3_28861), .proxy_sel_LOAD_28861(proxy_sel_LOAD_28861), .proxy_sel_STORE_28861(proxy_sel_STORE_28861), .proxy_in1_28868(proxy_in1_28868), .proxy_in2_28868(proxy_in2_28868), .proxy_in3_28868(proxy_in3_28868), .proxy_sel_LOAD_28868(proxy_sel_LOAD_28868), .proxy_sel_STORE_28868(proxy_sel_STORE_28868), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_CONDITION_astarF_28877_29378(OUT_CONDITION_astarF_28877_29378), .OUT_CONDITION_astarF_28877_29400(OUT_CONDITION_astarF_28877_29400), .OUT_CONDITION_astarF_28877_29418(OUT_CONDITION_astarF_28877_29418), .OUT_CONDITION_astarF_28877_29433(OUT_CONDITION_astarF_28877_29433), .OUT_CONDITION_astarF_28877_29633(OUT_CONDITION_astarF_28877_29633), .OUT_CONDITION_astarF_28877_29635(OUT_CONDITION_astarF_28877_29635), .OUT_CONDITION_astarF_28877_29641(OUT_CONDITION_astarF_28877_29641), .OUT_CONDITION_astarF_28877_29648(OUT_CONDITION_astarF_28877_29648), .OUT_CONDITION_astarF_28877_29664(OUT_CONDITION_astarF_28877_29664), .OUT_CONDITION_astarF_28877_29670(OUT_CONDITION_astarF_28877_29670), .OUT_CONDITION_astarF_28877_29673(OUT_CONDITION_astarF_28877_29673), .clock(clock), .reset(reset), .in_port_a(a), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28868(proxy_out1_28868), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE), .fuselector_BMEMORY_CTRLN_107_i0_LOAD(fuselector_BMEMORY_CTRLN_107_i0_LOAD), .fuselector_BMEMORY_CTRLN_107_i0_STORE(fuselector_BMEMORY_CTRLN_107_i0_STORE), .fuselector_BMEMORY_CTRLN_107_i1_LOAD(fuselector_BMEMORY_CTRLN_107_i1_LOAD), .fuselector_BMEMORY_CTRLN_107_i1_STORE(fuselector_BMEMORY_CTRLN_107_i1_STORE), .selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0(selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_0), .selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1(selector_MUX_12_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_0_0_1), .selector_MUX_155_reg_11_0_0_0(selector_MUX_155_reg_11_0_0_0), .selector_MUX_155_reg_11_0_0_1(selector_MUX_155_reg_11_0_0_1), .selector_MUX_160_reg_16_0_0_0(selector_MUX_160_reg_16_0_0_0), .selector_MUX_165_reg_20_0_0_0(selector_MUX_165_reg_20_0_0_0), .selector_MUX_167_reg_22_0_0_0(selector_MUX_167_reg_22_0_0_0), .selector_MUX_169_reg_24_0_0_0(selector_MUX_169_reg_24_0_0_0), .selector_MUX_169_reg_24_0_0_1(selector_MUX_169_reg_24_0_0_1), .selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0(selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0), .selector_MUX_176_reg_30_0_0_0(selector_MUX_176_reg_30_0_0_0), .selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0(selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_0), .selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1(selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_0_1), .selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_1_0(selector_MUX_17_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_1_1_0), .selector_MUX_180_reg_34_0_0_0(selector_MUX_180_reg_34_0_0_0), .selector_MUX_207_reg_59_0_0_0(selector_MUX_207_reg_59_0_0_0), .selector_MUX_213_reg_64_0_0_0(selector_MUX_213_reg_64_0_0_0), .selector_MUX_214_reg_65_0_0_0(selector_MUX_214_reg_65_0_0_0), .selector_MUX_215_reg_66_0_0_0(selector_MUX_215_reg_66_0_0_0), .selector_MUX_215_reg_66_0_0_1(selector_MUX_215_reg_66_0_0_1), .selector_MUX_21_BMEMORY_CTRLN_107_i0_1_0_0(selector_MUX_21_BMEMORY_CTRLN_107_i0_1_0_0), .selector_MUX_24_BMEMORY_CTRLN_107_i1_1_0_0(selector_MUX_24_BMEMORY_CTRLN_107_i1_1_0_0), .selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0(selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0), .selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1(selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1), .selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0(selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0), .selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0(selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0), .selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0(selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0), .selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1(selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1), .selector_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0(selector_MUX_8_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_0_0_0), .selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0(selector_MUX_9_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_1_0_0), .fuselector_PROXY_CTRLN_5_i0_LOAD(fuselector_PROXY_CTRLN_5_i0_LOAD), .fuselector_PROXY_CTRLN_5_i0_STORE(fuselector_PROXY_CTRLN_5_i0_STORE), .fuselector_PROXY_CTRLN_6_i0_LOAD(fuselector_PROXY_CTRLN_6_i0_LOAD), .fuselector_PROXY_CTRLN_6_i0_STORE(fuselector_PROXY_CTRLN_6_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_29(wrenable_reg_29), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_30(wrenable_reg_30), .wrenable_reg_31(wrenable_reg_31), .wrenable_reg_32(wrenable_reg_32), .wrenable_reg_33(wrenable_reg_33), .wrenable_reg_34(wrenable_reg_34), .wrenable_reg_35(wrenable_reg_35), .wrenable_reg_36(wrenable_reg_36), .wrenable_reg_37(wrenable_reg_37), .wrenable_reg_38(wrenable_reg_38), .wrenable_reg_39(wrenable_reg_39), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_40(wrenable_reg_40), .wrenable_reg_41(wrenable_reg_41), .wrenable_reg_42(wrenable_reg_42), .wrenable_reg_43(wrenable_reg_43), .wrenable_reg_44(wrenable_reg_44), .wrenable_reg_45(wrenable_reg_45), .wrenable_reg_46(wrenable_reg_46), .wrenable_reg_47(wrenable_reg_47), .wrenable_reg_48(wrenable_reg_48), .wrenable_reg_49(wrenable_reg_49), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_50(wrenable_reg_50), .wrenable_reg_51(wrenable_reg_51), .wrenable_reg_52(wrenable_reg_52), .wrenable_reg_53(wrenable_reg_53), .wrenable_reg_54(wrenable_reg_54), .wrenable_reg_55(wrenable_reg_55), .wrenable_reg_56(wrenable_reg_56), .wrenable_reg_57(wrenable_reg_57), .wrenable_reg_58(wrenable_reg_58), .wrenable_reg_59(wrenable_reg_59), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_60(wrenable_reg_60), .wrenable_reg_61(wrenable_reg_61), .wrenable_reg_62(wrenable_reg_62), .wrenable_reg_63(wrenable_reg_63), .wrenable_reg_64(wrenable_reg_64), .wrenable_reg_65(wrenable_reg_65), .wrenable_reg_66(wrenable_reg_66), .wrenable_reg_67(wrenable_reg_67), .wrenable_reg_68(wrenable_reg_68), .wrenable_reg_69(wrenable_reg_69), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

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
module ui_negate_expr_FU(in1, out1);
  parameter BITSIZE_in1=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = -in1;
endmodule

// Datapath RTL description for make_oriented
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_make_oriented(clock, reset, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, proxy_out1_28861, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_out1_28868, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE, selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0, selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0, selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1, selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2, selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0, selector_MUX_37_reg_11_0_0_0, selector_MUX_37_reg_11_0_0_1, selector_MUX_47_reg_3_0_0_0, selector_MUX_47_reg_3_0_0_1, selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0, selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_make_oriented_28870_29080, OUT_CONDITION_make_oriented_28870_29094, OUT_MULTIIF_make_oriented_28870_30429);
  parameter MEM_var_28859_28870=192, MEM_var_28861_28879=64, MEM_var_28868_28879=128;
  // IN
  input clock;
  input reset;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [19:0] S_addr_ram;
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
  input selector_MUX_37_reg_11_0_0_0;
  input selector_MUX_37_reg_11_0_0_1;
  input selector_MUX_47_reg_3_0_0_0;
  input selector_MUX_47_reg_3_0_0_1;
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
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [15:0] proxy_in1_28861;
  output [19:0] proxy_in2_28861;
  output [7:0] proxy_in3_28861;
  output [1:0] proxy_sel_LOAD_28861;
  output [1:0] proxy_sel_STORE_28861;
  output [15:0] proxy_in1_28868;
  output [19:0] proxy_in2_28868;
  output [7:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output OUT_CONDITION_make_oriented_28870_29080;
  output OUT_CONDITION_make_oriented_28870_29094;
  output [1:0] OUT_MULTIIF_make_oriented_28870_30429;
  // Component and signal declarations
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_2_i0_out1_1;
  wire [7:0] null_out_signal_array_28859_0_out1_0;
  wire [7:0] null_out_signal_array_28859_0_out1_1;
  wire [7:0] null_out_signal_array_28859_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_28859_0_proxy_out1_1;
  wire [7:0] out_IUdata_converter_FU_21_i0_fu_make_oriented_28870_29049;
  wire [7:0] out_MUX_12_PROXY_CTRLN_2_i0_0_0_0;
  wire [9:0] out_MUX_13_PROXY_CTRLN_2_i0_1_0_0;
  wire [9:0] out_MUX_13_PROXY_CTRLN_2_i0_1_0_1;
  wire [9:0] out_MUX_13_PROXY_CTRLN_2_i0_1_0_2;
  wire [9:0] out_MUX_13_PROXY_CTRLN_2_i0_1_1_0;
  wire [3:0] out_MUX_37_reg_11_0_0_0;
  wire [3:0] out_MUX_37_reg_11_0_0_1;
  wire [3:0] out_MUX_47_reg_3_0_0_0;
  wire [3:0] out_MUX_47_reg_3_0_0_1;
  wire [7:0] out_MUX_8_PROXY_CTRLN_1_i0_0_0_0;
  wire [9:0] out_MUX_9_PROXY_CTRLN_1_i0_1_0_0;
  wire [7:0] out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0;
  wire signed [7:0] out_UIdata_converter_FU_22_i0_fu_make_oriented_28870_29038;
  wire [2:0] out_UUdata_converter_FU_11_i0_fu_make_oriented_28870_28999;
  wire [2:0] out_UUdata_converter_FU_12_i0_fu_make_oriented_28870_30202;
  wire [2:0] out_UUdata_converter_FU_19_i0_fu_make_oriented_28870_30140;
  wire [2:0] out_UUdata_converter_FU_20_i0_fu_make_oriented_28870_29076;
  wire [6:0] out_addr_expr_FU_5_i0_fu_make_oriented_28870_30088;
  wire [8:0] out_addr_expr_FU_6_i0_fu_make_oriented_28870_30112;
  wire [7:0] out_addr_expr_FU_7_i0_fu_make_oriented_28870_30235;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [7:0] out_const_10;
  wire [7:0] out_const_11;
  wire [7:0] out_const_12;
  wire [6:0] out_const_13;
  wire [7:0] out_const_2;
  wire [4:0] out_const_3;
  wire out_const_4;
  wire [1:0] out_const_5;
  wire [3:0] out_const_6;
  wire [1:0] out_const_7;
  wire [2:0] out_const_8;
  wire [5:0] out_const_9;
  wire [9:0] out_conv_out_addr_expr_FU_5_i0_fu_make_oriented_28870_30088_7_10;
  wire [31:0] out_conv_out_const_11_8_32;
  wire [31:0] out_conv_out_const_12_8_32;
  wire [31:0] out_conv_out_const_13_7_32;
  wire [3:0] out_conv_out_const_3_5_4;
  wire [9:0] out_conv_out_reg_0_reg_0_7_10;
  wire [2:0] out_conv_out_reg_11_reg_11_4_3;
  wire [9:0] out_conv_out_reg_13_reg_13_8_10;
  wire [9:0] out_conv_out_reg_14_reg_14_8_10;
  wire [9:0] out_conv_out_reg_2_reg_2_8_10;
  wire [2:0] out_conv_out_reg_3_reg_3_4_3;
  wire [9:0] out_conv_out_reg_6_reg_6_8_10;
  wire [3:0] out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_1_4;
  wire [3:0] out_conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_4_1_4;
  wire [9:0] out_conv_out_ui_pointer_plus_expr_FU_8_8_8_51_i1_fu_make_oriented_28870_30149_8_10;
  wire out_ge_expr_FU_8_0_8_30_i0_fu_make_oriented_28870_30196;
  wire [7:0] out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_0;
  wire [7:0] out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_1;
  wire out_lt_expr_FU_8_0_8_31_i0_fu_make_oriented_28870_29078;
  wire [1:0] out_multi_read_cond_FU_28_i0_fu_make_oriented_28870_30429;
  wire out_read_cond_FU_23_i0_fu_make_oriented_28870_29080;
  wire out_read_cond_FU_25_i0_fu_make_oriented_28870_29094;
  wire [6:0] out_reg_0_reg_0;
  wire [9:0] out_reg_10_reg_10;
  wire [3:0] out_reg_11_reg_11;
  wire out_reg_12_reg_12;
  wire [7:0] out_reg_13_reg_13;
  wire [7:0] out_reg_14_reg_14;
  wire out_reg_15_reg_15;
  wire out_reg_16_reg_16;
  wire [7:0] out_reg_17_reg_17;
  wire out_reg_18_reg_18;
  wire out_reg_19_reg_19;
  wire [8:0] out_reg_1_reg_1;
  wire [7:0] out_reg_2_reg_2;
  wire [3:0] out_reg_3_reg_3;
  wire [2:0] out_reg_4_reg_4;
  wire [8:0] out_reg_5_reg_5;
  wire [7:0] out_reg_6_reg_6;
  wire out_reg_7_reg_7;
  wire [5:0] out_reg_8_reg_8;
  wire [2:0] out_reg_9_reg_9;
  wire out_truth_and_expr_FU_1_1_1_32_i0_fu_make_oriented_28870_30435;
  wire out_truth_not_expr_FU_1_1_33_i0_fu_make_oriented_28870_30432;
  wire [0:0] out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2;
  wire [3:0] out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_3;
  wire [0:0] out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_4;
  wire [3:0] out_u_assign_conn_obj_5_ASSIGN_UNSIGNED_FU_u_assign_5;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_34_i0_fu_make_oriented_28870_30348;
  wire [0:0] out_ui_bit_and_expr_FU_1_1_1_35_i0_fu_make_oriented_28870_29079;
  wire [2:0] out_ui_bit_and_expr_FU_8_0_8_36_i0_fu_make_oriented_28870_30361;
  wire [2:0] out_ui_bit_and_expr_FU_8_0_8_37_i0_fu_make_oriented_28870_30374;
  wire [2:0] out_ui_bit_and_expr_FU_8_0_8_37_i1_fu_make_oriented_28870_30412;
  wire [4:0] out_ui_bit_ior_concat_expr_FU_38_i0_fu_make_oriented_28870_30095;
  wire [5:0] out_ui_bit_ior_concat_expr_FU_39_i0_fu_make_oriented_28870_30122;
  wire [5:0] out_ui_bit_ior_concat_expr_FU_40_i0_fu_make_oriented_28870_30143;
  wire [5:0] out_ui_bit_ior_concat_expr_FU_40_i1_fu_make_oriented_28870_30205;
  wire [3:0] out_ui_lshift_expr_FU_8_0_8_41_i0_fu_make_oriented_28870_30092;
  wire [4:0] out_ui_lshift_expr_FU_8_0_8_41_i1_fu_make_oriented_28870_30345;
  wire [6:0] out_ui_lshift_expr_FU_8_0_8_42_i0_fu_make_oriented_28870_30098;
  wire [5:0] out_ui_lshift_expr_FU_8_0_8_43_i0_fu_make_oriented_28870_30137;
  wire [5:0] out_ui_lshift_expr_FU_8_0_8_43_i1_fu_make_oriented_28870_30199;
  wire [5:0] out_ui_lshift_expr_FU_8_0_8_43_i2_fu_make_oriented_28870_30370;
  wire [5:0] out_ui_lshift_expr_FU_8_0_8_43_i3_fu_make_oriented_28870_30409;
  wire [8:0] out_ui_minus_expr_FU_8_8_8_44_i0_fu_make_oriented_28870_30101;
  wire out_ui_ne_expr_FU_8_0_8_45_i0_fu_make_oriented_28870_30266;
  wire out_ui_ne_expr_FU_8_0_8_45_i1_fu_make_oriented_28870_30268;
  wire out_ui_ne_expr_FU_8_8_8_46_i0_fu_make_oriented_28870_29077;
  wire [7:0] out_ui_negate_expr_FU_8_8_47_i0_fu_make_oriented_28870_29042;
  wire [3:0] out_ui_plus_expr_FU_8_0_8_48_i0_fu_make_oriented_28870_29034;
  wire [3:0] out_ui_plus_expr_FU_8_0_8_48_i1_fu_make_oriented_28870_29062;
  wire [3:0] out_ui_plus_expr_FU_8_8_8_49_i0_fu_make_oriented_28870_30342;
  wire [9:0] out_ui_pointer_plus_expr_FU_16_16_16_50_i0_fu_make_oriented_28870_30115;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_51_i0_fu_make_oriented_28870_30128;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_51_i1_fu_make_oriented_28870_30149;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_51_i2_fu_make_oriented_28870_30211;
  wire [2:0] out_ui_rshift_expr_FU_8_0_8_52_i0_fu_make_oriented_28870_30337;
  wire [1:0] out_ui_rshift_expr_FU_8_0_8_52_i1_fu_make_oriented_28870_30340;
  wire [2:0] out_ui_rshift_expr_FU_8_0_8_53_i0_fu_make_oriented_28870_30365;
  wire [2:0] out_ui_rshift_expr_FU_8_0_8_53_i1_fu_make_oriented_28870_30404;
  wire [7:0] out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_6;
  wire [7:0] out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_7;
  wire [1:0] sig_in_bus_mergerSout_DataRdy0_0;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram1_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288612_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288683_0;
  wire [19:0] sig_in_bus_mergerproxy_in2_288614_0;
  wire [19:0] sig_in_bus_mergerproxy_in2_288685_0;
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
  wire [19:0] sig_in_vector_bus_mergerproxy_in2_288614_0;
  wire [19:0] sig_in_vector_bus_mergerproxy_in2_288685_0;
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
  wire [19:0] sig_out_bus_mergerproxy_in2_288614_;
  wire [19:0] sig_out_bus_mergerproxy_in2_288685_;
  wire [7:0] sig_out_bus_mergerproxy_in3_288616_;
  wire [7:0] sig_out_bus_mergerproxy_in3_288687_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_288618_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_288689_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886110_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886811_;
  
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_2 (.out1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(4), .BITSIZE_out1(4)) ASSIGN_UNSIGNED_FU_u_assign_3 (.out1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_3), .in1(out_reg_3_reg_3));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_4 (.out1(out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_4), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(4), .BITSIZE_out1(4)) ASSIGN_UNSIGNED_FU_u_assign_5 (.out1(out_u_assign_conn_obj_5_ASSIGN_UNSIGNED_FU_u_assign_5), .in1(out_reg_11_reg_11));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_6 (.out1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_6), .in1(out_const_1));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_7 (.out1(out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_7), .in1(out_const_2));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_0 (.out1(out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_0), .in1(out_const_10));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_1), .in1(out_reg_17_reg_17));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_12_PROXY_CTRLN_2_i0_0_0_0 (.out1(out_MUX_12_PROXY_CTRLN_2_i0_0_0_0), .sel(selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0), .in1(out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_0), .in2(out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_1));
  MUX_GATE #(.BITSIZE_in1(10), .BITSIZE_in2(10), .BITSIZE_out1(10)) MUX_13_PROXY_CTRLN_2_i0_1_0_0 (.out1(out_MUX_13_PROXY_CTRLN_2_i0_1_0_0), .sel(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0), .in1(out_conv_out_reg_6_reg_6_8_10), .in2(out_conv_out_reg_14_reg_14_8_10));
  MUX_GATE #(.BITSIZE_in1(10), .BITSIZE_in2(10), .BITSIZE_out1(10)) MUX_13_PROXY_CTRLN_2_i0_1_0_1 (.out1(out_MUX_13_PROXY_CTRLN_2_i0_1_0_1), .sel(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1), .in1(out_conv_out_reg_13_reg_13_8_10), .in2(out_reg_10_reg_10));
  MUX_GATE #(.BITSIZE_in1(10), .BITSIZE_in2(10), .BITSIZE_out1(10)) MUX_13_PROXY_CTRLN_2_i0_1_0_2 (.out1(out_MUX_13_PROXY_CTRLN_2_i0_1_0_2), .sel(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2), .in1(out_conv_out_ui_pointer_plus_expr_FU_8_8_8_51_i1_fu_make_oriented_28870_30149_8_10), .in2(out_MUX_13_PROXY_CTRLN_2_i0_1_0_0));
  MUX_GATE #(.BITSIZE_in1(10), .BITSIZE_in2(10), .BITSIZE_out1(10)) MUX_13_PROXY_CTRLN_2_i0_1_1_0 (.out1(out_MUX_13_PROXY_CTRLN_2_i0_1_1_0), .sel(selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0), .in1(out_MUX_13_PROXY_CTRLN_2_i0_1_0_1), .in2(out_MUX_13_PROXY_CTRLN_2_i0_1_0_2));
  MUX_GATE #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(4)) MUX_37_reg_11_0_0_0 (.out1(out_MUX_37_reg_11_0_0_0), .sel(selector_MUX_37_reg_11_0_0_0), .in1(out_conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_4_1_4), .in2(out_u_assign_conn_obj_5_ASSIGN_UNSIGNED_FU_u_assign_5));
  MUX_GATE #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(4)) MUX_37_reg_11_0_0_1 (.out1(out_MUX_37_reg_11_0_0_1), .sel(selector_MUX_37_reg_11_0_0_1), .in1(out_ui_plus_expr_FU_8_0_8_48_i0_fu_make_oriented_28870_29034), .in2(out_MUX_37_reg_11_0_0_0));
  MUX_GATE #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(4)) MUX_47_reg_3_0_0_0 (.out1(out_MUX_47_reg_3_0_0_0), .sel(selector_MUX_47_reg_3_0_0_0), .in1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_1_4), .in2(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_3));
  MUX_GATE #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(4)) MUX_47_reg_3_0_0_1 (.out1(out_MUX_47_reg_3_0_0_1), .sel(selector_MUX_47_reg_3_0_0_1), .in1(out_ui_plus_expr_FU_8_0_8_48_i1_fu_make_oriented_28870_29062), .in2(out_MUX_47_reg_3_0_0_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_8_PROXY_CTRLN_1_i0_0_0_0 (.out1(out_MUX_8_PROXY_CTRLN_1_i0_0_0_0), .sel(selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0), .in1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_6), .in2(out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_7));
  MUX_GATE #(.BITSIZE_in1(10), .BITSIZE_in2(10), .BITSIZE_out1(10)) MUX_9_PROXY_CTRLN_1_i0_1_0_0 (.out1(out_MUX_9_PROXY_CTRLN_1_i0_1_0_0), .sel(selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0), .in1(out_conv_out_reg_0_reg_0_7_10), .in2(out_conv_out_addr_expr_FU_5_i0_fu_make_oriented_28870_30088_7_10));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(10), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(10), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_1_i0 (.out1({null_out_signal_PROXY_CTRLN_1_i0_out1_1, null_out_signal_PROXY_CTRLN_1_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288612_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288614_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288616_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_288618_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886110_0), .in1({8'b00000000, out_MUX_8_PROXY_CTRLN_1_i0_0_0_0}), .in2({10'b0000000000, out_MUX_9_PROXY_CTRLN_1_i0_1_0_0}), .in3({4'b0000, out_conv_out_const_3_5_4}), .in4({1'b0, out_const_4}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_1_i0_STORE}), .proxy_out1(proxy_out1_28861));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(10), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(10), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_2_i0 (.out1({null_out_signal_PROXY_CTRLN_2_i0_out1_1, out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288683_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288685_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288687_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_288689_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886811_0), .in1({8'b00000000, out_MUX_12_PROXY_CTRLN_2_i0_0_0_0}), .in2({10'b0000000000, out_MUX_13_PROXY_CTRLN_2_i0_1_1_0}), .in3({4'b0000, out_conv_out_const_3_5_4}), .in4({1'b0, out_const_4}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_2_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_2_i0_STORE}), .proxy_out1(proxy_out1_28868));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(10), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(10), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28859.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28859_28870), .address_space_rangesize(64), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(10), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28859_0 (.out1({null_out_signal_array_28859_0_out1_1, null_out_signal_array_28859_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram1_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy0_0), .proxy_out1({null_out_signal_array_28859_0_proxy_out1_1, null_out_signal_array_28859_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_7}), .in2({10'b0000000000, out_conv_out_reg_2_reg_2_8_10}), .in3({4'b0000, out_conv_out_const_3_5_4}), .in4({1'b0, out_const_4}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({10'b0000000000, 10'b0000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerSout_DataRdy0_ (.out1(sig_out_bus_mergerSout_DataRdy0_), .in1({sig_in_bus_mergerSout_DataRdy0_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerSout_Rdata_ram1_ (.out1(sig_out_bus_mergerSout_Rdata_ram1_), .in1({sig_in_bus_mergerSout_Rdata_ram1_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288612_ (.out1(sig_out_bus_mergerproxy_in1_288612_), .in1({sig_in_bus_mergerproxy_in1_288612_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288683_ (.out1(sig_out_bus_mergerproxy_in1_288683_), .in1({sig_in_bus_mergerproxy_in1_288683_0}));
  bus_merger #(.BITSIZE_in1(20), .PORTSIZE_in1(1), .BITSIZE_out1(20)) bus_mergerproxy_in2_288614_ (.out1(sig_out_bus_mergerproxy_in2_288614_), .in1({sig_in_bus_mergerproxy_in2_288614_0}));
  bus_merger #(.BITSIZE_in1(20), .PORTSIZE_in1(1), .BITSIZE_out1(20)) bus_mergerproxy_in2_288685_ (.out1(sig_out_bus_mergerproxy_in2_288685_), .in1({sig_in_bus_mergerproxy_in2_288685_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_288616_ (.out1(sig_out_bus_mergerproxy_in3_288616_), .in1({sig_in_bus_mergerproxy_in3_288616_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_288687_ (.out1(sig_out_bus_mergerproxy_in3_288687_), .in1({sig_in_bus_mergerproxy_in3_288687_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_288618_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288618_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288618_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_288689_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288689_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288689_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886110_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886110_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886110_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886811_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886811_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886811_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28868_28879)) const_11 (.out1(out_const_11));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28859_28870)) const_12 (.out1(out_const_12));
  constant_value #(.BITSIZE_out1(7), .value(MEM_var_28861_28879)) const_13 (.out1(out_const_13));
  constant_value #(.BITSIZE_out1(8), .value(8'b00001000)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(2), .value(2'b10)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(4), .value(4'b1000)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(3), .value(3'b111)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(6), .value(6'b111000)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(10)) conv_out_addr_expr_FU_5_i0_fu_make_oriented_28870_30088_7_10 (.out1(out_conv_out_addr_expr_FU_5_i0_fu_make_oriented_28870_30088_7_10), .in1(out_addr_expr_FU_5_i0_fu_make_oriented_28870_30088));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_11_8_32 (.out1(out_conv_out_const_11_8_32), .in1(out_const_11));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_12_8_32 (.out1(out_conv_out_const_12_8_32), .in1(out_const_12));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(32)) conv_out_const_13_7_32 (.out1(out_conv_out_const_13_7_32), .in1(out_const_13));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_3_5_4 (.out1(out_conv_out_const_3_5_4), .in1(out_const_3));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(10)) conv_out_reg_0_reg_0_7_10 (.out1(out_conv_out_reg_0_reg_0_7_10), .in1(out_reg_0_reg_0));
  UUdata_converter_FU #(.BITSIZE_in1(4), .BITSIZE_out1(3)) conv_out_reg_11_reg_11_4_3 (.out1(out_conv_out_reg_11_reg_11_4_3), .in1(out_reg_11_reg_11));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(10)) conv_out_reg_13_reg_13_8_10 (.out1(out_conv_out_reg_13_reg_13_8_10), .in1(out_reg_13_reg_13));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(10)) conv_out_reg_14_reg_14_8_10 (.out1(out_conv_out_reg_14_reg_14_8_10), .in1(out_reg_14_reg_14));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(10)) conv_out_reg_2_reg_2_8_10 (.out1(out_conv_out_reg_2_reg_2_8_10), .in1(out_reg_2_reg_2));
  UUdata_converter_FU #(.BITSIZE_in1(4), .BITSIZE_out1(3)) conv_out_reg_3_reg_3_4_3 (.out1(out_conv_out_reg_3_reg_3_4_3), .in1(out_reg_3_reg_3));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(10)) conv_out_reg_6_reg_6_8_10 (.out1(out_conv_out_reg_6_reg_6_8_10), .in1(out_reg_6_reg_6));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(4)) conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_1_4 (.out1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_1_4), .in1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(4)) conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_4_1_4 (.out1(out_conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_4_1_4), .in1(out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_4));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(10)) conv_out_ui_pointer_plus_expr_FU_8_8_8_51_i1_fu_make_oriented_28870_30149_8_10 (.out1(out_conv_out_ui_pointer_plus_expr_FU_8_8_8_51_i1_fu_make_oriented_28870_30149_8_10), .in1(out_ui_pointer_plus_expr_FU_8_8_8_51_i1_fu_make_oriented_28870_30149));
  UUdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(3)) fu_make_oriented_28870_28999 (.out1(out_UUdata_converter_FU_11_i0_fu_make_oriented_28870_28999), .in1(out_conv_out_reg_3_reg_3_4_3));
  ui_plus_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(4)) fu_make_oriented_28870_29034 (.out1(out_ui_plus_expr_FU_8_0_8_48_i0_fu_make_oriented_28870_29034), .in1(out_conv_out_reg_11_reg_11_4_3), .in2(out_const_4));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_oriented_28870_29038 (.out1(out_UIdata_converter_FU_22_i0_fu_make_oriented_28870_29038), .in1(out_ui_negate_expr_FU_8_8_47_i0_fu_make_oriented_28870_29042));
  ui_negate_expr_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_oriented_28870_29042 (.out1(out_ui_negate_expr_FU_8_8_47_i0_fu_make_oriented_28870_29042), .in1(out_IUdata_converter_FU_21_i0_fu_make_oriented_28870_29049));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_oriented_28870_29049 (.out1(out_IUdata_converter_FU_21_i0_fu_make_oriented_28870_29049), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0));
  ui_plus_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(4)) fu_make_oriented_28870_29062 (.out1(out_ui_plus_expr_FU_8_0_8_48_i1_fu_make_oriented_28870_29062), .in1(out_conv_out_reg_3_reg_3_4_3), .in2(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(3)) fu_make_oriented_28870_29076 (.out1(out_UUdata_converter_FU_20_i0_fu_make_oriented_28870_29076), .in1(out_conv_out_reg_11_reg_11_4_3));
  ui_ne_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(1)) fu_make_oriented_28870_29077 (.out1(out_ui_ne_expr_FU_8_8_8_46_i0_fu_make_oriented_28870_29077), .in1(out_reg_4_reg_4), .in2(out_UUdata_converter_FU_20_i0_fu_make_oriented_28870_29076));
  lt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_make_oriented_28870_29078 (.out1(out_lt_expr_FU_8_0_8_31_i0_fu_make_oriented_28870_29078), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0), .in2(out_const_7));
  ui_bit_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_oriented_28870_29079 (.out1(out_ui_bit_and_expr_FU_1_1_1_35_i0_fu_make_oriented_28870_29079), .in1(out_reg_18_reg_18), .in2(out_reg_12_reg_12));
  read_cond_FU #(.BITSIZE_in1(1)) fu_make_oriented_28870_29080 (.out1(out_read_cond_FU_23_i0_fu_make_oriented_28870_29080), .in1(out_ui_bit_and_expr_FU_1_1_1_35_i0_fu_make_oriented_28870_29079));
  read_cond_FU #(.BITSIZE_in1(1)) fu_make_oriented_28870_29094 (.out1(out_read_cond_FU_25_i0_fu_make_oriented_28870_29094), .in1(out_reg_19_reg_19));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_make_oriented_28870_30088 (.out1(out_addr_expr_FU_5_i0_fu_make_oriented_28870_30088), .in1(out_conv_out_const_13_7_32));
  ui_lshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(4), .PRECISION(32)) fu_make_oriented_28870_30092 (.out1(out_ui_lshift_expr_FU_8_0_8_41_i0_fu_make_oriented_28870_30092), .in1(out_conv_out_reg_3_reg_3_4_3), .in2(out_const_4));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(5), .OFFSET_PARAMETER(1)) fu_make_oriented_28870_30095 (.out1(out_ui_bit_ior_concat_expr_FU_38_i0_fu_make_oriented_28870_30095), .in1(out_ui_lshift_expr_FU_8_0_8_41_i1_fu_make_oriented_28870_30345), .in2(out_ui_bit_and_expr_FU_1_0_1_34_i0_fu_make_oriented_28870_30348), .in3(out_const_4));
  ui_lshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_out1(7), .PRECISION(32)) fu_make_oriented_28870_30098 (.out1(out_ui_lshift_expr_FU_8_0_8_42_i0_fu_make_oriented_28870_30098), .in1(out_ui_bit_ior_concat_expr_FU_38_i0_fu_make_oriented_28870_30095), .in2(out_const_5));
  ui_minus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(5), .BITSIZE_out1(9)) fu_make_oriented_28870_30101 (.out1(out_ui_minus_expr_FU_8_8_8_44_i0_fu_make_oriented_28870_30101), .in1(out_ui_lshift_expr_FU_8_0_8_42_i0_fu_make_oriented_28870_30098), .in2(out_ui_bit_ior_concat_expr_FU_38_i0_fu_make_oriented_28870_30095));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(9)) fu_make_oriented_28870_30112 (.out1(out_addr_expr_FU_6_i0_fu_make_oriented_28870_30112), .in1(out_conv_out_const_11_8_32));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(10), .LSB_PARAMETER(0)) fu_make_oriented_28870_30115 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_50_i0_fu_make_oriented_28870_30115), .in1(out_reg_1_reg_1), .in2(out_reg_5_reg_5));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(3), .BITSIZE_in3(2), .BITSIZE_out1(6), .OFFSET_PARAMETER(3)) fu_make_oriented_28870_30122 (.out1(out_ui_bit_ior_concat_expr_FU_39_i0_fu_make_oriented_28870_30122), .in1(out_const_9), .in2(out_ui_bit_and_expr_FU_8_0_8_36_i0_fu_make_oriented_28870_30361), .in3(out_const_7));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(6), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_make_oriented_28870_30128 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_51_i0_fu_make_oriented_28870_30128), .in1(out_reg_1_reg_1), .in2(out_ui_bit_ior_concat_expr_FU_39_i0_fu_make_oriented_28870_30122));
  ui_lshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_make_oriented_28870_30137 (.out1(out_ui_lshift_expr_FU_8_0_8_43_i0_fu_make_oriented_28870_30137), .in1(out_conv_out_reg_3_reg_3_4_3), .in2(out_const_7));
  UUdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(3)) fu_make_oriented_28870_30140 (.out1(out_UUdata_converter_FU_19_i0_fu_make_oriented_28870_30140), .in1(out_conv_out_reg_11_reg_11_4_3));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(3), .BITSIZE_in3(2), .BITSIZE_out1(6), .OFFSET_PARAMETER(3)) fu_make_oriented_28870_30143 (.out1(out_ui_bit_ior_concat_expr_FU_40_i0_fu_make_oriented_28870_30143), .in1(out_reg_8_reg_8), .in2(out_ui_bit_and_expr_FU_8_0_8_37_i0_fu_make_oriented_28870_30374), .in3(out_const_7));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(6), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_make_oriented_28870_30149 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_51_i1_fu_make_oriented_28870_30149), .in1(out_reg_1_reg_1), .in2(out_ui_bit_ior_concat_expr_FU_40_i0_fu_make_oriented_28870_30143));
  ge_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_oriented_28870_30196 (.out1(out_ge_expr_FU_8_0_8_30_i0_fu_make_oriented_28870_30196), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0), .in2(out_const_0));
  ui_lshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_make_oriented_28870_30199 (.out1(out_ui_lshift_expr_FU_8_0_8_43_i1_fu_make_oriented_28870_30199), .in1(out_conv_out_reg_11_reg_11_4_3), .in2(out_const_7));
  UUdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(3)) fu_make_oriented_28870_30202 (.out1(out_UUdata_converter_FU_12_i0_fu_make_oriented_28870_30202), .in1(out_conv_out_reg_3_reg_3_4_3));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(3), .BITSIZE_in3(2), .BITSIZE_out1(6), .OFFSET_PARAMETER(3)) fu_make_oriented_28870_30205 (.out1(out_ui_bit_ior_concat_expr_FU_40_i1_fu_make_oriented_28870_30205), .in1(out_ui_lshift_expr_FU_8_0_8_43_i3_fu_make_oriented_28870_30409), .in2(out_reg_9_reg_9), .in3(out_const_7));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(6), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_make_oriented_28870_30211 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_51_i2_fu_make_oriented_28870_30211), .in1(out_reg_1_reg_1), .in2(out_ui_bit_ior_concat_expr_FU_40_i1_fu_make_oriented_28870_30205));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_make_oriented_28870_30235 (.out1(out_addr_expr_FU_7_i0_fu_make_oriented_28870_30235), .in1(out_conv_out_const_12_8_32));
  ui_ne_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(1)) fu_make_oriented_28870_30266 (.out1(out_ui_ne_expr_FU_8_0_8_45_i0_fu_make_oriented_28870_30266), .in1(out_ui_plus_expr_FU_8_0_8_48_i0_fu_make_oriented_28870_29034), .in2(out_const_6));
  ui_ne_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(1)) fu_make_oriented_28870_30268 (.out1(out_ui_ne_expr_FU_8_0_8_45_i1_fu_make_oriented_28870_30268), .in1(out_ui_plus_expr_FU_8_0_8_48_i1_fu_make_oriented_28870_29062), .in2(out_const_6));
  ui_rshift_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(1), .BITSIZE_out1(3), .PRECISION(32)) fu_make_oriented_28870_30337 (.out1(out_ui_rshift_expr_FU_8_0_8_52_i0_fu_make_oriented_28870_30337), .in1(out_ui_lshift_expr_FU_8_0_8_41_i0_fu_make_oriented_28870_30092), .in2(out_const_4));
  ui_rshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(2), .PRECISION(32)) fu_make_oriented_28870_30340 (.out1(out_ui_rshift_expr_FU_8_0_8_52_i1_fu_make_oriented_28870_30340), .in1(out_conv_out_reg_3_reg_3_4_3), .in2(out_const_4));
  ui_plus_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(2), .BITSIZE_out1(4)) fu_make_oriented_28870_30342 (.out1(out_ui_plus_expr_FU_8_8_8_49_i0_fu_make_oriented_28870_30342), .in1(out_ui_rshift_expr_FU_8_0_8_52_i0_fu_make_oriented_28870_30337), .in2(out_ui_rshift_expr_FU_8_0_8_52_i1_fu_make_oriented_28870_30340));
  ui_lshift_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(1), .BITSIZE_out1(5), .PRECISION(32)) fu_make_oriented_28870_30345 (.out1(out_ui_lshift_expr_FU_8_0_8_41_i1_fu_make_oriented_28870_30345), .in1(out_ui_plus_expr_FU_8_8_8_49_i0_fu_make_oriented_28870_30342), .in2(out_const_4));
  ui_bit_and_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_oriented_28870_30348 (.out1(out_ui_bit_and_expr_FU_1_0_1_34_i0_fu_make_oriented_28870_30348), .in1(out_conv_out_reg_3_reg_3_4_3), .in2(out_const_4));
  ui_bit_and_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(3)) fu_make_oriented_28870_30361 (.out1(out_ui_bit_and_expr_FU_8_0_8_36_i0_fu_make_oriented_28870_30361), .in1(out_conv_out_reg_3_reg_3_4_3), .in2(out_const_8));
  ui_rshift_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(2), .BITSIZE_out1(3), .PRECISION(32)) fu_make_oriented_28870_30365 (.out1(out_ui_rshift_expr_FU_8_0_8_53_i0_fu_make_oriented_28870_30365), .in1(out_ui_lshift_expr_FU_8_0_8_43_i0_fu_make_oriented_28870_30137), .in2(out_const_7));
  ui_lshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_make_oriented_28870_30370 (.out1(out_ui_lshift_expr_FU_8_0_8_43_i2_fu_make_oriented_28870_30370), .in1(out_ui_rshift_expr_FU_8_0_8_53_i0_fu_make_oriented_28870_30365), .in2(out_const_7));
  ui_bit_and_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(3)) fu_make_oriented_28870_30374 (.out1(out_ui_bit_and_expr_FU_8_0_8_37_i0_fu_make_oriented_28870_30374), .in1(out_UUdata_converter_FU_19_i0_fu_make_oriented_28870_30140), .in2(out_const_8));
  ui_rshift_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(2), .BITSIZE_out1(3), .PRECISION(32)) fu_make_oriented_28870_30404 (.out1(out_ui_rshift_expr_FU_8_0_8_53_i1_fu_make_oriented_28870_30404), .in1(out_ui_lshift_expr_FU_8_0_8_43_i1_fu_make_oriented_28870_30199), .in2(out_const_7));
  ui_lshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_make_oriented_28870_30409 (.out1(out_ui_lshift_expr_FU_8_0_8_43_i3_fu_make_oriented_28870_30409), .in1(out_ui_rshift_expr_FU_8_0_8_53_i1_fu_make_oriented_28870_30404), .in2(out_const_7));
  ui_bit_and_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(3)) fu_make_oriented_28870_30412 (.out1(out_ui_bit_and_expr_FU_8_0_8_37_i1_fu_make_oriented_28870_30412), .in1(out_UUdata_converter_FU_12_i0_fu_make_oriented_28870_30202), .in2(out_const_8));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) fu_make_oriented_28870_30429 (.out1(out_multi_read_cond_FU_28_i0_fu_make_oriented_28870_30429), .in1({out_reg_16_reg_16, out_reg_15_reg_15}));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_make_oriented_28870_30432 (.out1(out_truth_not_expr_FU_1_1_33_i0_fu_make_oriented_28870_30432), .in1(out_ui_ne_expr_FU_8_0_8_45_i0_fu_make_oriented_28870_30266));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_oriented_28870_30435 (.out1(out_truth_and_expr_FU_1_1_1_32_i0_fu_make_oriented_28870_30435), .in1(out_reg_7_reg_7), .in2(out_truth_not_expr_FU_1_1_33_i0_fu_make_oriented_28870_30432));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy0_0 (.out1(sig_in_bus_mergerSout_DataRdy0_0), .in1(sig_in_vector_bus_mergerSout_DataRdy0_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram1_0 (.out1(sig_in_bus_mergerSout_Rdata_ram1_0), .in1(sig_in_vector_bus_mergerSout_Rdata_ram1_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288612_0 (.out1(sig_in_bus_mergerproxy_in1_288612_0), .in1(sig_in_vector_bus_mergerproxy_in1_288612_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288683_0 (.out1(sig_in_bus_mergerproxy_in1_288683_0), .in1(sig_in_vector_bus_mergerproxy_in1_288683_0));
  join_signal #(.BITSIZE_in1(10), .PORTSIZE_in1(2), .BITSIZE_out1(20)) join_signalbus_mergerproxy_in2_288614_0 (.out1(sig_in_bus_mergerproxy_in2_288614_0), .in1(sig_in_vector_bus_mergerproxy_in2_288614_0));
  join_signal #(.BITSIZE_in1(10), .PORTSIZE_in1(2), .BITSIZE_out1(20)) join_signalbus_mergerproxy_in2_288685_0 (.out1(sig_in_bus_mergerproxy_in2_288685_0), .in1(sig_in_vector_bus_mergerproxy_in2_288685_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_288616_0 (.out1(sig_in_bus_mergerproxy_in3_288616_0), .in1(sig_in_vector_bus_mergerproxy_in3_288616_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_288687_0 (.out1(sig_in_bus_mergerproxy_in3_288687_0), .in1(sig_in_vector_bus_mergerproxy_in3_288687_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_288618_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_288618_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_288618_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_288689_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_288689_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_288689_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886110_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886110_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886110_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886811_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886811_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886811_0));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_5_i0_fu_make_oriented_28870_30088), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_6_i0_fu_make_oriented_28870_30112), .wenable(wrenable_reg_1));
  register_STD #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_50_i0_fu_make_oriented_28870_30115), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(4), .BITSIZE_out1(4)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_MUX_37_reg_11_0_0_1), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_8_8_46_i0_fu_make_oriented_28870_29077), .wenable(wrenable_reg_12));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_51_i1_fu_make_oriented_28870_30149), .wenable(wrenable_reg_13));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_51_i2_fu_make_oriented_28870_30211), .wenable(wrenable_reg_14));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_45_i0_fu_make_oriented_28870_30266), .wenable(wrenable_reg_15));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_truth_and_expr_FU_1_1_1_32_i0_fu_make_oriented_28870_30435), .wenable(wrenable_reg_16));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_22_i0_fu_make_oriented_28870_29038), .wenable(wrenable_reg_17));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_lt_expr_FU_8_0_8_31_i0_fu_make_oriented_28870_29078), .wenable(wrenable_reg_18));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_19 (.out1(out_reg_19_reg_19), .clock(clock), .reset(reset), .in1(out_ge_expr_FU_8_0_8_30_i0_fu_make_oriented_28870_30196), .wenable(wrenable_reg_19));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_7_i0_fu_make_oriented_28870_30235), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(4), .BITSIZE_out1(4)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_MUX_47_reg_3_0_0_1), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(3), .BITSIZE_out1(3)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_11_i0_fu_make_oriented_28870_28999), .wenable(wrenable_reg_4));
  register_STD #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_ui_minus_expr_FU_8_8_8_44_i0_fu_make_oriented_28870_30101), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_51_i0_fu_make_oriented_28870_30128), .wenable(wrenable_reg_6));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_45_i1_fu_make_oriented_28870_30268), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_ui_lshift_expr_FU_8_0_8_43_i2_fu_make_oriented_28870_30370), .wenable(wrenable_reg_8));
  register_SE #(.BITSIZE_in1(3), .BITSIZE_out1(3)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_ui_bit_and_expr_FU_8_0_8_37_i1_fu_make_oriented_28870_30412), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy0_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy0_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram1_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram1_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288612_ (.out1(proxy_in1_28861), .in1(sig_out_bus_mergerproxy_in1_288612_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288683_ (.out1(proxy_in1_28868), .in1(sig_out_bus_mergerproxy_in1_288683_));
  split_signal #(.BITSIZE_in1(20), .BITSIZE_out1(10), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288614_ (.out1(proxy_in2_28861), .in1(sig_out_bus_mergerproxy_in2_288614_));
  split_signal #(.BITSIZE_in1(20), .BITSIZE_out1(10), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288685_ (.out1(proxy_in2_28868), .in1(sig_out_bus_mergerproxy_in2_288685_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288616_ (.out1(proxy_in3_28861), .in1(sig_out_bus_mergerproxy_in3_288616_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288687_ (.out1(proxy_in3_28868), .in1(sig_out_bus_mergerproxy_in3_288687_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_288618_ (.out1(proxy_sel_LOAD_28861), .in1(sig_out_bus_mergerproxy_sel_LOAD_288618_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_288689_ (.out1(proxy_sel_LOAD_28868), .in1(sig_out_bus_mergerproxy_sel_LOAD_288689_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886110_ (.out1(proxy_sel_STORE_28861), .in1(sig_out_bus_mergerproxy_sel_STORE_2886110_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886811_ (.out1(proxy_sel_STORE_28868), .in1(sig_out_bus_mergerproxy_sel_STORE_2886811_));
  // io-signal post fix
  assign OUT_CONDITION_make_oriented_28870_29080 = out_read_cond_FU_23_i0_fu_make_oriented_28870_29080;
  assign OUT_CONDITION_make_oriented_28870_29094 = out_read_cond_FU_25_i0_fu_make_oriented_28870_29094;
  assign OUT_MULTIIF_make_oriented_28870_30429 = out_multi_read_cond_FU_28_i0_fu_make_oriented_28870_30429;

endmodule

// FSM based controller description for make_oriented
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_make_oriented(done_port, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE, selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0, selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0, selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1, selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2, selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0, selector_MUX_37_reg_11_0_0_0, selector_MUX_37_reg_11_0_0_1, selector_MUX_47_reg_3_0_0_0, selector_MUX_47_reg_3_0_0_1, selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0, selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_make_oriented_28870_29080, OUT_CONDITION_make_oriented_28870_29094, OUT_MULTIIF_make_oriented_28870_30429, clock, reset, start_port);
  // IN
  input OUT_CONDITION_make_oriented_28870_29080;
  input OUT_CONDITION_make_oriented_28870_29094;
  input [1:0] OUT_MULTIIF_make_oriented_28870_30429;
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
  output selector_MUX_37_reg_11_0_0_0;
  output selector_MUX_37_reg_11_0_0_1;
  output selector_MUX_47_reg_3_0_0_0;
  output selector_MUX_47_reg_3_0_0_1;
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
  output wrenable_reg_19;
  output wrenable_reg_2;
  output wrenable_reg_3;
  output wrenable_reg_4;
  output wrenable_reg_5;
  output wrenable_reg_6;
  output wrenable_reg_7;
  output wrenable_reg_8;
  output wrenable_reg_9;
  parameter [15:0] S_0 = 16'b0000000000000001,
    S_1 = 16'b0000000000000010,
    S_2 = 16'b0000000000000100,
    S_3 = 16'b0000000000001000,
    S_4 = 16'b0000000000010000,
    S_5 = 16'b0000000000100000,
    S_6 = 16'b0000000001000000,
    S_7 = 16'b0000000010000000,
    S_10 = 16'b0000010000000000,
    S_11 = 16'b0000100000000000,
    S_12 = 16'b0001000000000000,
    S_13 = 16'b0010000000000000,
    S_8 = 16'b0000000100000000,
    S_9 = 16'b0000001000000000,
    S_14 = 16'b0100000000000000,
    S_15 = 16'b1000000000000000;
  reg [15:0] _present_state, _next_state;
  reg done_port;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE;
  reg selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0;
  reg selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0;
  reg selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1;
  reg selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2;
  reg selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0;
  reg selector_MUX_37_reg_11_0_0_0;
  reg selector_MUX_37_reg_11_0_0_1;
  reg selector_MUX_47_reg_3_0_0_0;
  reg selector_MUX_47_reg_3_0_0_1;
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
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE = 1'b0;
    selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0 = 1'b0;
    selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0 = 1'b0;
    selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1 = 1'b0;
    selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2 = 1'b0;
    selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0 = 1'b0;
    selector_MUX_37_reg_11_0_0_0 = 1'b0;
    selector_MUX_37_reg_11_0_0_1 = 1'b0;
    selector_MUX_47_reg_3_0_0_0 = 1'b0;
    selector_MUX_47_reg_3_0_0_1 = 1'b0;
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
          selector_MUX_47_reg_3_0_0_0 = 1'b1;
          selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_1_i0_STORE = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0 = 1'bX;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0 = 1'bX;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1 = 1'bX;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2 = 1'bX;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0 = 1'bX;
          selector_MUX_37_reg_11_0_0_0 = 1'bX;
          selector_MUX_37_reg_11_0_0_1 = 1'bX;
          selector_MUX_47_reg_3_0_0_0 = 1'bX;
          selector_MUX_47_reg_3_0_0_1 = 1'bX;
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
          selector_MUX_47_reg_3_0_0_1 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_6 = 1'b1;
          wrenable_reg_7 = 1'b1;
          wrenable_reg_8 = 1'b1;
          wrenable_reg_9 = 1'b1;
          _next_state = S_2;
        end
      S_2 :
        begin
          wrenable_reg_10 = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0 = 1'b1;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0 = 1'b1;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0 = 1'b1;
          selector_MUX_37_reg_11_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          wrenable_reg_11 = 1'b1;
          _next_state = S_5;
        end
      S_5 :
        begin
          selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2 = 1'b1;
          selector_MUX_37_reg_11_0_0_1 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_LOAD = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_12 = 1'b1;
          wrenable_reg_13 = 1'b1;
          wrenable_reg_14 = 1'b1;
          wrenable_reg_15 = 1'b1;
          wrenable_reg_16 = 1'b1;
          _next_state = S_6;
        end
      S_6 :
        begin
          wrenable_reg_17 = 1'b1;
          wrenable_reg_18 = 1'b1;
          _next_state = S_7;
        end
      S_7 :
        begin
          if (OUT_CONDITION_make_oriented_28870_29080 == 1'b1)
            begin
              _next_state = S_8;
            end
          else
            begin
              _next_state = S_10;
            end
        end
      S_10 :
        begin
          fuselector_PROXY_CTRLN_2_i0_LOAD = 1'b1;
          _next_state = S_11;
        end
      S_11 :
        begin
          wrenable_reg_19 = 1'b1;
          _next_state = S_12;
        end
      S_12 :
        begin
          if (OUT_CONDITION_make_oriented_28870_29094 == 1'b1)
            begin
              _next_state = S_13;
            end
          else
            begin
              _next_state = S_14;
            end
        end
      S_13 :
        begin
          selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0 = 1'b1;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1 = 1'b1;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          _next_state = S_14;
        end
      S_8 :
        begin
          selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1 = 1'b1;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          _next_state = S_9;
        end
      S_9 :
        begin
          selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          _next_state = S_14;
        end
      S_14 :
        begin
          wrenable_reg_11 = 1'b1;
          wrenable_reg_3 = 1'b1;
          if (OUT_MULTIIF_make_oriented_28870_30429[0] == 1'b1)
            begin
              _next_state = S_5;
              wrenable_reg_3 = 1'b0;
            end
          else if (OUT_MULTIIF_make_oriented_28870_30429[1] == 1'b1)
            begin
              _next_state = S_1;
              wrenable_reg_11 = 1'b0;
            end
          else
            begin
              _next_state = S_15;
              done_port = 1'b1;
              wrenable_reg_11 = 1'b0;
              wrenable_reg_3 = 1'b0;
            end
        end
      S_15 :
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
          selector_MUX_37_reg_11_0_0_0 = 1'bX;
          selector_MUX_37_reg_11_0_0_1 = 1'bX;
          selector_MUX_47_reg_3_0_0_0 = 1'bX;
          selector_MUX_47_reg_3_0_0_1 = 1'bX;
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

// Top component for make_oriented
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module make_oriented(clock, reset, start_port, done_port, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, Sin_Rdata_ram, Sin_DataRdy, proxy_out1_28861, proxy_out1_28868, Sout_Rdata_ram, Sout_DataRdy, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868);
  parameter MEM_var_28859_28870=192, MEM_var_28861_28879=64, MEM_var_28868_28879=128;
  // IN
  input clock;
  input reset;
  input start_port;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [19:0] S_addr_ram;
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
  output [19:0] proxy_in2_28861;
  output [7:0] proxy_in3_28861;
  output [1:0] proxy_sel_LOAD_28861;
  output [1:0] proxy_sel_STORE_28861;
  output [15:0] proxy_in1_28868;
  output [19:0] proxy_in2_28868;
  output [7:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  // Component and signal declarations
  wire OUT_CONDITION_make_oriented_28870_29080;
  wire OUT_CONDITION_make_oriented_28870_29094;
  wire [1:0] OUT_MULTIIF_make_oriented_28870_30429;
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
  wire selector_MUX_37_reg_11_0_0_0;
  wire selector_MUX_37_reg_11_0_0_1;
  wire selector_MUX_47_reg_3_0_0_0;
  wire selector_MUX_47_reg_3_0_0_1;
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
  wire wrenable_reg_19;
  wire wrenable_reg_2;
  wire wrenable_reg_3;
  wire wrenable_reg_4;
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  controller_make_oriented Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE), .selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0(selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0), .selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0), .selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1), .selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2), .selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0(selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0), .selector_MUX_37_reg_11_0_0_0(selector_MUX_37_reg_11_0_0_0), .selector_MUX_37_reg_11_0_0_1(selector_MUX_37_reg_11_0_0_1), .selector_MUX_47_reg_3_0_0_0(selector_MUX_47_reg_3_0_0_0), .selector_MUX_47_reg_3_0_0_1(selector_MUX_47_reg_3_0_0_1), .selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0(selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0), .selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0(selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_make_oriented_28870_29080(OUT_CONDITION_make_oriented_28870_29080), .OUT_CONDITION_make_oriented_28870_29094(OUT_CONDITION_make_oriented_28870_29094), .OUT_MULTIIF_make_oriented_28870_30429(OUT_MULTIIF_make_oriented_28870_30429), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_make_oriented #(.MEM_var_28859_28870(MEM_var_28859_28870), .MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28868_28879(MEM_var_28868_28879)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .proxy_in1_28861(proxy_in1_28861), .proxy_in2_28861(proxy_in2_28861), .proxy_in3_28861(proxy_in3_28861), .proxy_sel_LOAD_28861(proxy_sel_LOAD_28861), .proxy_sel_STORE_28861(proxy_sel_STORE_28861), .proxy_in1_28868(proxy_in1_28868), .proxy_in2_28868(proxy_in2_28868), .proxy_in3_28868(proxy_in3_28868), .proxy_sel_LOAD_28868(proxy_sel_LOAD_28868), .proxy_sel_STORE_28868(proxy_sel_STORE_28868), .OUT_CONDITION_make_oriented_28870_29080(OUT_CONDITION_make_oriented_28870_29080), .OUT_CONDITION_make_oriented_28870_29094(OUT_CONDITION_make_oriented_28870_29094), .OUT_MULTIIF_make_oriented_28870_30429(OUT_MULTIIF_make_oriented_28870_30429), .clock(clock), .reset(reset), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28868(proxy_out1_28868), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE), .selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0(selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0), .selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0), .selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1), .selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2), .selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0(selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0), .selector_MUX_37_reg_11_0_0_0(selector_MUX_37_reg_11_0_0_0), .selector_MUX_37_reg_11_0_0_1(selector_MUX_37_reg_11_0_0_1), .selector_MUX_47_reg_3_0_0_0(selector_MUX_47_reg_3_0_0_0), .selector_MUX_47_reg_3_0_0_1(selector_MUX_47_reg_3_0_0_1), .selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0(selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0), .selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0(selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Datapath RTL description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_main(clock, reset, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, selector_IN_UNBOUNDED_main_28879_29701, selector_IN_UNBOUNDED_main_28879_29702, wrenable_reg_0, OUT_UNBOUNDED_main_28879_29701, OUT_UNBOUNDED_main_28879_29702);
  parameter MEM_var_28859_28870=192, MEM_var_28861_28879=64, MEM_var_28862_28877=256, MEM_var_28864_28877=320, MEM_var_28865_28877=384, MEM_var_28866_28877=448, MEM_var_28867_28877=512, MEM_var_28868_28879=128;
  // IN
  input clock;
  input reset;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [19:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [19:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  input selector_IN_UNBOUNDED_main_28879_29701;
  input selector_IN_UNBOUNDED_main_28879_29702;
  input wrenable_reg_0;
  // OUT
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [19:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  output OUT_UNBOUNDED_main_28879_29701;
  output OUT_UNBOUNDED_main_28879_29702;
  // Component and signal declarations
  wire [7:0] null_out_signal_array_28861_0_out1_0;
  wire [7:0] null_out_signal_array_28861_0_out1_1;
  wire [7:0] null_out_signal_array_28868_0_out1_0;
  wire [7:0] null_out_signal_array_28868_0_out1_1;
  wire [9:0] out_UUdata_converter_FU_5_i0_fu_main_28879_30271;
  wire [9:0] out_addr_expr_FU_4_i0_fu_main_28879_30085;
  wire [9:0] out_const_0;
  wire [31:0] out_conv_out_const_0_10_32;
  wire [31:0] out_conv_out_reg_0_reg_0_10_32;
  wire [9:0] out_reg_0_reg_0;
  wire [15:0] proxy_out1_28861;
  wire [15:0] proxy_out1_28868;
  wire s_done_fu_main_28879_29701;
  wire s_done_fu_main_28879_29702;
  wire [15:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [19:0] sig_in_bus_mergerMout_addr_ram1_0;
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
  wire [19:0] sig_in_bus_mergerproxy_in213_0;
  wire [19:0] sig_in_bus_mergerproxy_in213_1;
  wire [19:0] sig_in_bus_mergerproxy_in28_0;
  wire [19:0] sig_in_bus_mergerproxy_in28_1;
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
  wire [19:0] sig_in_vector_bus_mergerMout_addr_ram1_0;
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
  wire [19:0] sig_in_vector_bus_mergerproxy_in213_0;
  wire [19:0] sig_in_vector_bus_mergerproxy_in213_1;
  wire [19:0] sig_in_vector_bus_mergerproxy_in28_0;
  wire [19:0] sig_in_vector_bus_mergerproxy_in28_1;
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
  wire [19:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [7:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire [1:0] sig_out_bus_mergerMout_oe_ram3_;
  wire [1:0] sig_out_bus_mergerMout_we_ram4_;
  wire [1:0] sig_out_bus_mergerSout_DataRdy5_;
  wire [15:0] sig_out_bus_mergerSout_Rdata_ram6_;
  wire [15:0] sig_out_bus_mergerproxy_in112_;
  wire [15:0] sig_out_bus_mergerproxy_in17_;
  wire [19:0] sig_out_bus_mergerproxy_in213_;
  wire [19:0] sig_out_bus_mergerproxy_in28_;
  wire [7:0] sig_out_bus_mergerproxy_in314_;
  wire [7:0] sig_out_bus_mergerproxy_in39_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD10_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD15_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE11_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE16_;
  wire [15:0] sig_out_vector_bus_mergerproxy_in112_;
  wire [15:0] sig_out_vector_bus_mergerproxy_in17_;
  wire [19:0] sig_out_vector_bus_mergerproxy_in213_;
  wire [19:0] sig_out_vector_bus_mergerproxy_in28_;
  wire [7:0] sig_out_vector_bus_mergerproxy_in314_;
  wire [7:0] sig_out_vector_bus_mergerproxy_in39_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_LOAD10_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_LOAD15_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_STORE11_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_STORE16_;
  
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(10), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(10), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28861.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28861_28879), .address_space_rangesize(64), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(10), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28861_0 (.out1({null_out_signal_array_28861_0_out1_1, null_out_signal_array_28861_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_0), .proxy_out1(proxy_out1_28861), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({10'b0000000000, 10'b0000000000}), .in3({4'b0000, 4'b0000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in17_), .proxy_in2(sig_out_vector_bus_mergerproxy_in28_), .proxy_in3(sig_out_vector_bus_mergerproxy_in39_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD10_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE11_));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(10), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(10), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28868.mem"), .n_elements(64), .data_size(8), .address_space_begin(MEM_var_28868_28879), .address_space_rangesize(64), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(10), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28868_0 (.out1({null_out_signal_array_28868_0_out1_1, null_out_signal_array_28868_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_1), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_1), .proxy_out1(proxy_out1_28868), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({10'b0000000000, 10'b0000000000}), .in3({4'b0000, 4'b0000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in112_), .proxy_in2(sig_out_vector_bus_mergerproxy_in213_), .proxy_in3(sig_out_vector_bus_mergerproxy_in314_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD15_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE16_));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(20), .PORTSIZE_in1(1), .BITSIZE_out1(20)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(4), .BITSIZE_out1(2)) bus_mergerSout_DataRdy5_ (.out1(sig_out_bus_mergerSout_DataRdy5_), .in1({sig_in_bus_mergerSout_DataRdy5_3, sig_in_bus_mergerSout_DataRdy5_2, sig_in_bus_mergerSout_DataRdy5_1, sig_in_bus_mergerSout_DataRdy5_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(4), .BITSIZE_out1(16)) bus_mergerSout_Rdata_ram6_ (.out1(sig_out_bus_mergerSout_Rdata_ram6_), .in1({sig_in_bus_mergerSout_Rdata_ram6_3, sig_in_bus_mergerSout_Rdata_ram6_2, sig_in_bus_mergerSout_Rdata_ram6_1, sig_in_bus_mergerSout_Rdata_ram6_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(2), .BITSIZE_out1(16)) bus_mergerproxy_in112_ (.out1(sig_out_bus_mergerproxy_in112_), .in1({sig_in_bus_mergerproxy_in112_1, sig_in_bus_mergerproxy_in112_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(2), .BITSIZE_out1(16)) bus_mergerproxy_in17_ (.out1(sig_out_bus_mergerproxy_in17_), .in1({sig_in_bus_mergerproxy_in17_1, sig_in_bus_mergerproxy_in17_0}));
  bus_merger #(.BITSIZE_in1(20), .PORTSIZE_in1(2), .BITSIZE_out1(20)) bus_mergerproxy_in213_ (.out1(sig_out_bus_mergerproxy_in213_), .in1({sig_in_bus_mergerproxy_in213_1, sig_in_bus_mergerproxy_in213_0}));
  bus_merger #(.BITSIZE_in1(20), .PORTSIZE_in1(2), .BITSIZE_out1(20)) bus_mergerproxy_in28_ (.out1(sig_out_bus_mergerproxy_in28_), .in1({sig_in_bus_mergerproxy_in28_1, sig_in_bus_mergerproxy_in28_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(8)) bus_mergerproxy_in314_ (.out1(sig_out_bus_mergerproxy_in314_), .in1({sig_in_bus_mergerproxy_in314_1, sig_in_bus_mergerproxy_in314_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(8)) bus_mergerproxy_in39_ (.out1(sig_out_bus_mergerproxy_in39_), .in1({sig_in_bus_mergerproxy_in39_1, sig_in_bus_mergerproxy_in39_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(2), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD10_ (.out1(sig_out_bus_mergerproxy_sel_LOAD10_), .in1({sig_in_bus_mergerproxy_sel_LOAD10_1, sig_in_bus_mergerproxy_sel_LOAD10_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(2), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD15_ (.out1(sig_out_bus_mergerproxy_sel_LOAD15_), .in1({sig_in_bus_mergerproxy_sel_LOAD15_1, sig_in_bus_mergerproxy_sel_LOAD15_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(2), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE11_ (.out1(sig_out_bus_mergerproxy_sel_STORE11_), .in1({sig_in_bus_mergerproxy_sel_STORE11_1, sig_in_bus_mergerproxy_sel_STORE11_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(2), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE16_ (.out1(sig_out_bus_mergerproxy_sel_STORE16_), .in1({sig_in_bus_mergerproxy_sel_STORE16_1, sig_in_bus_mergerproxy_sel_STORE16_0}));
  constant_value #(.BITSIZE_out1(10), .value(MEM_var_28868_28879)) const_0 (.out1(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(32)) conv_out_const_0_10_32 (.out1(out_conv_out_const_0_10_32), .in1(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(32)) conv_out_reg_0_reg_0_10_32 (.out1(out_conv_out_reg_0_reg_0_10_32), .in1(out_reg_0_reg_0));
  make_oriented #(.MEM_var_28859_28870(MEM_var_28859_28870), .MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28868_28879(MEM_var_28868_28879)) fu_main_28879_29701 (.done_port(s_done_fu_main_28879_29701), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_3), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_3), .proxy_in1_28861(sig_in_vector_bus_mergerproxy_in17_1), .proxy_in2_28861(sig_in_vector_bus_mergerproxy_in28_1), .proxy_in3_28861(sig_in_vector_bus_mergerproxy_in39_1), .proxy_sel_LOAD_28861(sig_in_vector_bus_mergerproxy_sel_LOAD10_1), .proxy_sel_STORE_28861(sig_in_vector_bus_mergerproxy_sel_STORE11_1), .proxy_in1_28868(sig_in_vector_bus_mergerproxy_in112_1), .proxy_in2_28868(sig_in_vector_bus_mergerproxy_in213_1), .proxy_in3_28868(sig_in_vector_bus_mergerproxy_in314_1), .proxy_sel_LOAD_28868(sig_in_vector_bus_mergerproxy_sel_LOAD15_1), .proxy_sel_STORE_28868(sig_in_vector_bus_mergerproxy_sel_STORE16_1), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28879_29701), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28868(proxy_out1_28868));
  astarF #(.MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28862_28877(MEM_var_28862_28877), .MEM_var_28864_28877(MEM_var_28864_28877), .MEM_var_28865_28877(MEM_var_28865_28877), .MEM_var_28866_28877(MEM_var_28866_28877), .MEM_var_28867_28877(MEM_var_28867_28877), .MEM_var_28868_28879(MEM_var_28868_28879)) fu_main_28879_29702 (.done_port(s_done_fu_main_28879_29702), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_2), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_2), .proxy_in1_28861(sig_in_vector_bus_mergerproxy_in17_0), .proxy_in2_28861(sig_in_vector_bus_mergerproxy_in28_0), .proxy_in3_28861(sig_in_vector_bus_mergerproxy_in39_0), .proxy_sel_LOAD_28861(sig_in_vector_bus_mergerproxy_sel_LOAD10_0), .proxy_sel_STORE_28861(sig_in_vector_bus_mergerproxy_sel_STORE11_0), .proxy_in1_28868(sig_in_vector_bus_mergerproxy_in112_0), .proxy_in2_28868(sig_in_vector_bus_mergerproxy_in213_0), .proxy_in3_28868(sig_in_vector_bus_mergerproxy_in314_0), .proxy_sel_LOAD_28868(sig_in_vector_bus_mergerproxy_sel_LOAD15_0), .proxy_sel_STORE_28868(sig_in_vector_bus_mergerproxy_sel_STORE16_0), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28879_29702), .a(out_conv_out_reg_0_reg_0_10_32), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28868(proxy_out1_28868), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(10)) fu_main_28879_30085 (.out1(out_addr_expr_FU_4_i0_fu_main_28879_30085), .in1(out_conv_out_const_0_10_32));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(10)) fu_main_28879_30271 (.out1(out_UUdata_converter_FU_5_i0_fu_main_28879_30271), .in1(out_addr_expr_FU_4_i0_fu_main_28879_30085));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(10), .PORTSIZE_in1(2), .BITSIZE_out1(20)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
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
  join_signal #(.BITSIZE_in1(10), .PORTSIZE_in1(2), .BITSIZE_out1(20)) join_signalbus_mergerproxy_in213_0 (.out1(sig_in_bus_mergerproxy_in213_0), .in1(sig_in_vector_bus_mergerproxy_in213_0));
  join_signal #(.BITSIZE_in1(10), .PORTSIZE_in1(2), .BITSIZE_out1(20)) join_signalbus_mergerproxy_in213_1 (.out1(sig_in_bus_mergerproxy_in213_1), .in1(sig_in_vector_bus_mergerproxy_in213_1));
  join_signal #(.BITSIZE_in1(10), .PORTSIZE_in1(2), .BITSIZE_out1(20)) join_signalbus_mergerproxy_in28_0 (.out1(sig_in_bus_mergerproxy_in28_0), .in1(sig_in_vector_bus_mergerproxy_in28_0));
  join_signal #(.BITSIZE_in1(10), .PORTSIZE_in1(2), .BITSIZE_out1(20)) join_signalbus_mergerproxy_in28_1 (.out1(sig_in_bus_mergerproxy_in28_1), .in1(sig_in_vector_bus_mergerproxy_in28_1));
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
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_5_i0_fu_main_28879_30271), .wenable(wrenable_reg_0));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(20), .BITSIZE_out1(10), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy5_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy5_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram6_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram6_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in112_ (.out1(sig_out_vector_bus_mergerproxy_in112_), .in1(sig_out_bus_mergerproxy_in112_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in17_ (.out1(sig_out_vector_bus_mergerproxy_in17_), .in1(sig_out_bus_mergerproxy_in17_));
  split_signal #(.BITSIZE_in1(20), .BITSIZE_out1(10), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in213_ (.out1(sig_out_vector_bus_mergerproxy_in213_), .in1(sig_out_bus_mergerproxy_in213_));
  split_signal #(.BITSIZE_in1(20), .BITSIZE_out1(10), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in28_ (.out1(sig_out_vector_bus_mergerproxy_in28_), .in1(sig_out_bus_mergerproxy_in28_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in314_ (.out1(sig_out_vector_bus_mergerproxy_in314_), .in1(sig_out_bus_mergerproxy_in314_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in39_ (.out1(sig_out_vector_bus_mergerproxy_in39_), .in1(sig_out_bus_mergerproxy_in39_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD10_ (.out1(sig_out_vector_bus_mergerproxy_sel_LOAD10_), .in1(sig_out_bus_mergerproxy_sel_LOAD10_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD15_ (.out1(sig_out_vector_bus_mergerproxy_sel_LOAD15_), .in1(sig_out_bus_mergerproxy_sel_LOAD15_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE11_ (.out1(sig_out_vector_bus_mergerproxy_sel_STORE11_), .in1(sig_out_bus_mergerproxy_sel_STORE11_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE16_ (.out1(sig_out_vector_bus_mergerproxy_sel_STORE16_), .in1(sig_out_bus_mergerproxy_sel_STORE16_));
  // io-signal post fix
  assign OUT_UNBOUNDED_main_28879_29701 = s_done_fu_main_28879_29701;
  assign OUT_UNBOUNDED_main_28879_29702 = s_done_fu_main_28879_29702;

endmodule

// FSM based controller description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_main(done_port, selector_IN_UNBOUNDED_main_28879_29701, selector_IN_UNBOUNDED_main_28879_29702, wrenable_reg_0, OUT_UNBOUNDED_main_28879_29701, OUT_UNBOUNDED_main_28879_29702, clock, reset, start_port);
  // IN
  input OUT_UNBOUNDED_main_28879_29701;
  input OUT_UNBOUNDED_main_28879_29702;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_IN_UNBOUNDED_main_28879_29701;
  output selector_IN_UNBOUNDED_main_28879_29702;
  output wrenable_reg_0;
  parameter [4:0] S_0 = 5'b00001,
    S_1 = 5'b00010,
    S_2 = 5'b00100,
    S_3 = 5'b01000,
    S_4 = 5'b10000;
  reg [4:0] _present_state, _next_state;
  reg done_port;
  reg selector_IN_UNBOUNDED_main_28879_29701;
  reg selector_IN_UNBOUNDED_main_28879_29702;
  reg wrenable_reg_0;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    selector_IN_UNBOUNDED_main_28879_29701 = 1'b0;
    selector_IN_UNBOUNDED_main_28879_29702 = 1'b0;
    wrenable_reg_0 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          selector_IN_UNBOUNDED_main_28879_29701 = 1'b1;
          wrenable_reg_0 = 1'b1;
          if (OUT_UNBOUNDED_main_28879_29701 == 1'b0)
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
          if (OUT_UNBOUNDED_main_28879_29701 == 1'b0)
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
          selector_IN_UNBOUNDED_main_28879_29702 = 1'b1;
          if (OUT_UNBOUNDED_main_28879_29702 == 1'b0)
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
          if (OUT_UNBOUNDED_main_28879_29702 == 1'b0)
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
  parameter MEM_var_28859_28870=192, MEM_var_28861_28879=64, MEM_var_28862_28877=256, MEM_var_28864_28877=320, MEM_var_28865_28877=384, MEM_var_28866_28877=448, MEM_var_28867_28877=512, MEM_var_28868_28879=128;
  // IN
  input clock;
  input reset;
  input start_port;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [19:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [19:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  // OUT
  output done_port;
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [19:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  // Component and signal declarations
  wire OUT_UNBOUNDED_main_28879_29701;
  wire OUT_UNBOUNDED_main_28879_29702;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire selector_IN_UNBOUNDED_main_28879_29701;
  wire selector_IN_UNBOUNDED_main_28879_29702;
  wire wrenable_reg_0;
  
  controller_main Controller_i (.done_port(done_delayed_REG_signal_in), .selector_IN_UNBOUNDED_main_28879_29701(selector_IN_UNBOUNDED_main_28879_29701), .selector_IN_UNBOUNDED_main_28879_29702(selector_IN_UNBOUNDED_main_28879_29702), .wrenable_reg_0(wrenable_reg_0), .OUT_UNBOUNDED_main_28879_29701(OUT_UNBOUNDED_main_28879_29701), .OUT_UNBOUNDED_main_28879_29702(OUT_UNBOUNDED_main_28879_29702), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_main #(.MEM_var_28859_28870(MEM_var_28859_28870), .MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28862_28877(MEM_var_28862_28877), .MEM_var_28864_28877(MEM_var_28864_28877), .MEM_var_28865_28877(MEM_var_28865_28877), .MEM_var_28866_28877(MEM_var_28866_28877), .MEM_var_28867_28877(MEM_var_28867_28877), .MEM_var_28868_28879(MEM_var_28868_28879)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_UNBOUNDED_main_28879_29701(OUT_UNBOUNDED_main_28879_29701), .OUT_UNBOUNDED_main_28879_29702(OUT_UNBOUNDED_main_28879_29702), .clock(clock), .reset(reset), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .selector_IN_UNBOUNDED_main_28879_29701(selector_IN_UNBOUNDED_main_28879_29701), .selector_IN_UNBOUNDED_main_28879_29702(selector_IN_UNBOUNDED_main_28879_29702), .wrenable_reg_0(wrenable_reg_0));
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
  parameter MEM_var_28859_28870=192, MEM_var_28861_28879=64, MEM_var_28862_28877=256, MEM_var_28864_28877=320, MEM_var_28865_28877=384, MEM_var_28866_28877=448, MEM_var_28867_28877=512, MEM_var_28868_28879=128;
  // IN
  input clock;
  input reset;
  input start_port;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [19:0] S_addr_ram;
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
  output [19:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  // Component and signal declarations
  
  _main #(.MEM_var_28859_28870(MEM_var_28859_28870), .MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28862_28877(MEM_var_28862_28877), .MEM_var_28864_28877(MEM_var_28864_28877), .MEM_var_28865_28877(MEM_var_28865_28877), .MEM_var_28866_28877(MEM_var_28866_28877), .MEM_var_28867_28877(MEM_var_28867_28877), .MEM_var_28868_28879(MEM_var_28868_28879)) _main_i0 (.done_port(done_port), .Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .clock(clock), .reset(reset), .start_port(start_port), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram({8'b00000000, 8'b00000000}), .Sin_DataRdy({1'b0, 1'b0}), .Min_oe_ram({1'b0, 1'b0}), .Min_we_ram({1'b0, 1'b0}), .Min_addr_ram({10'b0000000000, 10'b0000000000}), .Min_Wdata_ram({8'b00000000, 8'b00000000}), .Min_data_ram_size({4'b0000, 4'b0000}));

endmodule


