// 
// Politecnico di Milano
// Code created using PandA - Version: PandA 0.9.6 - Revision 891ec3caed502474cab0813cc4a9fc678deabaa5 - Date 2022-05-27T22:49:06
// bambu executed with: bambu -I/home/dews/Scrivania/bambu-hls/RESULTS/BAMBU/28x28/kruskal/includes/values_15 --simulate --simulator=VERILATOR --clock-period=5 --device-name=xc7a100t-1csg324-VVD /home/dews/Scrivania/bambu-hls/cc4cs_bambu/benchmarkBasic/kruskal/thrd.c 
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
module ADDRESS_DECODING_LOGIC_NN(clock, reset, in1, in2, in3, out1, sel_LOAD, sel_STORE, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, Sin_Rdata_ram, Sout_Rdata_ram, S_data_ram_size, Sin_DataRdy, Sout_DataRdy, proxy_in1, proxy_in2, proxy_in3, proxy_sel_LOAD, proxy_sel_STORE, proxy_out1, dout_a, dout_b, memory_addr_a, memory_addr_b, din_value_aggregated_swapped, be_swapped, bram_write);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_in2=1, PORTSIZE_in2=2, BITSIZE_in3=1, PORTSIZE_in3=2, BITSIZE_sel_LOAD=1, PORTSIZE_sel_LOAD=2, BITSIZE_sel_STORE=1, PORTSIZE_sel_STORE=2, BITSIZE_out1=1, PORTSIZE_out1=2, BITSIZE_S_oe_ram=1, PORTSIZE_S_oe_ram=2, BITSIZE_S_we_ram=1, PORTSIZE_S_we_ram=2, BITSIZE_Sin_DataRdy=1, PORTSIZE_Sin_DataRdy=2, BITSIZE_Sout_DataRdy=1, PORTSIZE_Sout_DataRdy=2, BITSIZE_S_addr_ram=1, PORTSIZE_S_addr_ram=2, BITSIZE_S_Wdata_ram=8, PORTSIZE_S_Wdata_ram=2, BITSIZE_Sin_Rdata_ram=8, PORTSIZE_Sin_Rdata_ram=2, BITSIZE_Sout_Rdata_ram=8, PORTSIZE_Sout_Rdata_ram=2, BITSIZE_S_data_ram_size=1, PORTSIZE_S_data_ram_size=2, address_space_begin=0, address_space_rangesize=4, BUS_PIPELINED=1, BRAM_BITSIZE=32, PRIVATE_MEMORY=0, USE_SPARSE_MEMORY=1, HIGH_LATENCY=0, BITSIZE_proxy_in1=1, PORTSIZE_proxy_in1=2, BITSIZE_proxy_in2=1, PORTSIZE_proxy_in2=2, BITSIZE_proxy_in3=1, PORTSIZE_proxy_in3=2, BITSIZE_proxy_sel_LOAD=1, PORTSIZE_proxy_sel_LOAD=2, BITSIZE_proxy_sel_STORE=1, PORTSIZE_proxy_sel_STORE=2, BITSIZE_proxy_out1=1, PORTSIZE_proxy_out1=2, BITSIZE_dout_a=1, PORTSIZE_dout_a=2, BITSIZE_dout_b=1, PORTSIZE_dout_b=2, BITSIZE_memory_addr_a=1, PORTSIZE_memory_addr_a=2, BITSIZE_memory_addr_b=1, PORTSIZE_memory_addr_b=2, BITSIZE_din_value_aggregated_swapped=1, PORTSIZE_din_value_aggregated_swapped=2, BITSIZE_be_swapped=1, PORTSIZE_be_swapped=2, BITSIZE_bram_write=1, PORTSIZE_bram_write=2, nbit_read_addr=32, n_byte_on_databus=4, n_mem_elements=4, max_n_reads=2, max_n_writes=2, max_n_rw=2;
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
  input [(PORTSIZE_dout_a*BITSIZE_dout_a)+(-1):0] dout_a;
  input [(PORTSIZE_dout_b*BITSIZE_dout_b)+(-1):0] dout_b;
  // OUT
  output [(PORTSIZE_out1*BITSIZE_out1)+(-1):0] out1;
  output [(PORTSIZE_Sout_Rdata_ram*BITSIZE_Sout_Rdata_ram)+(-1):0] Sout_Rdata_ram;
  output [PORTSIZE_Sout_DataRdy-1:0] Sout_DataRdy;
  output [(PORTSIZE_proxy_out1*BITSIZE_proxy_out1)+(-1):0] proxy_out1;
  output [(PORTSIZE_memory_addr_a*BITSIZE_memory_addr_a)+(-1):0] memory_addr_a;
  output [(PORTSIZE_memory_addr_b*BITSIZE_memory_addr_b)+(-1):0] memory_addr_b;
  output [(PORTSIZE_din_value_aggregated_swapped*BITSIZE_din_value_aggregated_swapped)+(-1):0] din_value_aggregated_swapped;
  output [(PORTSIZE_be_swapped*BITSIZE_be_swapped)+(-1):0] be_swapped;
  output [PORTSIZE_bram_write-1:0] bram_write;
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
    parameter nbit_addr = BITSIZE_S_addr_ram/*n_bytes ==  1 ? 1 : $clog2(n_bytes)*/;
    parameter nbits_byte_offset = n_byte_on_databus==1 ? 1 : $clog2(n_byte_on_databus);
    parameter nbits_address_space_rangesize = $clog2(address_space_rangesize);
  `else
    parameter nbit_addr = BITSIZE_S_addr_ram/*n_bytes ==  1 ? 1 : log2(n_bytes)*/;
    parameter nbits_address_space_rangesize = log2(address_space_rangesize);
    parameter nbits_byte_offset = n_byte_on_databus==1 ? 1 : log2(n_byte_on_databus);
  `endif
   parameter memory_bitsize = 2*BRAM_BITSIZE;
  
  function [n_byte_on_databus*max_n_writes-1:0] CONV;
    input [n_byte_on_databus*max_n_writes-1:0] po2;
  begin
    case (po2)
      1:CONV=(1<<1)-1;
      2:CONV=(1<<2)-1;
      4:CONV=(1<<4)-1;
      8:CONV=(1<<8)-1;
      16:CONV=(1<<16)-1;
      32:CONV=(1<<32)-1;
      default:CONV=-1;
    endcase
  end
  endfunction
  
  wire [(PORTSIZE_in2*BITSIZE_in2)+(-1):0] tmp_addr;
  wire [n_byte_on_databus*max_n_writes-1:0] conv_in;
  wire [n_byte_on_databus*max_n_writes-1:0] conv_out;
  wire [PORTSIZE_S_addr_ram-1:0] cs;
  wire [PORTSIZE_S_oe_ram-1:0] oe_ram_cs;
  wire [PORTSIZE_S_we_ram-1:0] we_ram_cs;
  wire [nbit_addr*max_n_rw-1:0] relative_addr;
  wire [memory_bitsize*max_n_writes-1:0] din_value_aggregated;
  wire [memory_bitsize*PORTSIZE_S_Wdata_ram-1:0] S_Wdata_ram_int;
  wire [memory_bitsize*max_n_reads-1:0] out1_shifted;
  wire [memory_bitsize*max_n_reads-1:0] dout;
  wire [nbits_byte_offset*max_n_rw-1:0] byte_offset;
  wire [n_byte_on_databus*max_n_writes-1:0] be;
  
  reg [PORTSIZE_S_we_ram-1:0] we_ram_cs_delayed =0;
  reg [PORTSIZE_S_oe_ram-1:0] oe_ram_cs_delayed =0;
  reg [PORTSIZE_S_oe_ram-1:0] oe_ram_cs_delayed_registered =0;
  reg [PORTSIZE_S_oe_ram-1:0] oe_ram_cs_delayed_registered1 =0;
  reg [max_n_reads-1:0] delayed_swapped_bit =0;
  reg [max_n_reads-1:0] delayed_swapped_bit_registered =0;
  reg [max_n_reads-1:0] delayed_swapped_bit_registered1 =0;
  reg [nbits_byte_offset*max_n_reads-1:0] delayed_byte_offset =0;
  reg [nbits_byte_offset*max_n_reads-1:0] delayed_byte_offset_registered =0;
  reg [nbits_byte_offset*max_n_reads-1:0] delayed_byte_offset_registered1 =0;
  
  generate
  genvar ind2;
  for (ind2=0; ind2<PORTSIZE_in2; ind2=ind2+1)
    begin : Lind2
      assign tmp_addr[(ind2+1)*BITSIZE_in2-1:ind2*BITSIZE_in2] = (proxy_sel_LOAD[ind2]||proxy_sel_STORE[ind2]) ? proxy_in2[(ind2+1)*BITSIZE_proxy_in2-1:ind2*BITSIZE_proxy_in2] : in2[(ind2+1)*BITSIZE_in2-1:ind2*BITSIZE_in2];
    end
  endgenerate
  
  generate
  genvar i2;
    for (i2=0;i2<max_n_reads;i2=i2+1)
    begin : L_copy
        assign dout[(memory_bitsize/2)+memory_bitsize*i2-1:memory_bitsize*i2] = delayed_swapped_bit[i2] ? dout_a[(memory_bitsize/2)*(i2+1)-1:(memory_bitsize/2)*i2] : dout_b[(memory_bitsize/2)*(i2+1)-1:(memory_bitsize/2)*i2];
        assign dout[memory_bitsize*(i2+1)-1:memory_bitsize*i2+(memory_bitsize/2)] = delayed_swapped_bit[i2] ? dout_b[(memory_bitsize/2)*(i2+1)-1:(memory_bitsize/2)*i2] : dout_a[(memory_bitsize/2)*(i2+1)-1:(memory_bitsize/2)*i2];
        always @(posedge clock)
        begin
          if(HIGH_LATENCY == 0)
            delayed_swapped_bit[i2] <= !relative_addr[nbits_byte_offset+i2*nbit_addr-1];
          else if(HIGH_LATENCY == 1)
          begin
            delayed_swapped_bit_registered[i2] <= !relative_addr[nbits_byte_offset+i2*nbit_addr-1];
            delayed_swapped_bit[i2] <= delayed_swapped_bit_registered[i2];
          end
          else
          begin
            delayed_swapped_bit_registered1[i2] <= !relative_addr[nbits_byte_offset+i2*nbit_addr-1];
            delayed_swapped_bit_registered[i2] <= delayed_swapped_bit_registered1[i2];
            delayed_swapped_bit[i2] <= delayed_swapped_bit_registered[i2];
          end
        end
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
        assign memory_addr_a[(i7+1)*nbit_read_addr-1:i7*nbit_read_addr] = !relative_addr[nbits_byte_offset+i7*nbit_addr-1] ? relative_addr[nbit_read_addr+nbits_byte_offset-1+i7*nbit_addr:nbits_byte_offset+i7*nbit_addr] : (relative_addr[nbit_read_addr+nbits_byte_offset-1+i7*nbit_addr:nbits_byte_offset+i7*nbit_addr-1]+ 1'b1) >> 1;
    end
  endgenerate
  
  generate
    for (i7=0; i7<max_n_rw; i7=i7+1)
    begin : L7_B
      if (n_mem_elements==1)
        assign memory_addr_b[(i7+1)*nbit_read_addr-1:i7*nbit_read_addr] = {nbit_read_addr{1'b0}};
      else
        assign memory_addr_b[(i7+1)*nbit_read_addr-1:i7*nbit_read_addr] = !relative_addr[nbits_byte_offset+i7*nbit_addr-1] ? (relative_addr[nbit_read_addr+nbits_byte_offset-1+i7*nbit_addr:nbits_byte_offset+i7*nbit_addr-1] + 1'b1) >> 1 : relative_addr[nbit_read_addr+nbits_byte_offset-1+i7*nbit_addr:nbits_byte_offset+i7*nbit_addr];
    end
  endgenerate
  
  generate
  genvar i8;
    for (i8=0; i8<max_n_rw; i8=i8+1)
    begin : L8
      if (n_byte_on_databus==2)
        assign byte_offset[(i8+1)*nbits_byte_offset-1:i8*nbits_byte_offset] = {nbits_byte_offset{1'b0}};
      else
        assign byte_offset[(i8+1)*nbits_byte_offset-1:i8*nbits_byte_offset] = {1'b0, relative_addr[nbits_byte_offset+i8*nbit_addr-2:i8*nbit_addr]};
    end
  endgenerate
  
  generate
  genvar i9, i10;
    for (i9=0; i9<max_n_writes; i9=i9+1)
    begin : byte_enable
      if(PRIVATE_MEMORY==0 && i9 < PORTSIZE_S_data_ram_size)
      begin
        assign conv_in[(i9+1)*n_byte_on_databus-1:i9*n_byte_on_databus] = proxy_sel_STORE[i9] ? proxy_in3[BITSIZE_proxy_in3+BITSIZE_proxy_in3*i9-1:3+BITSIZE_proxy_in3*i9] : (sel_STORE[i9] ? in3[BITSIZE_in3+BITSIZE_in3*i9-1:3+BITSIZE_in3*i9] : S_data_ram_size[BITSIZE_S_data_ram_size+BITSIZE_S_data_ram_size*i9-1:3+BITSIZE_S_data_ram_size*i9]);
        assign conv_out[(i9+1)*n_byte_on_databus-1:i9*n_byte_on_databus] = CONV(conv_in[(i9+1)*n_byte_on_databus-1:i9*n_byte_on_databus]);
        assign be[(i9+1)*n_byte_on_databus-1:i9*n_byte_on_databus] = conv_out[(i9+1)*n_byte_on_databus-1:i9*n_byte_on_databus] << byte_offset[(i9+1)*nbits_byte_offset-1:i9*nbits_byte_offset];
      end
      else
      begin
        assign conv_in[(i9+1)*n_byte_on_databus-1:i9*n_byte_on_databus] = proxy_sel_STORE[i9] ? proxy_in3[BITSIZE_proxy_in3+BITSIZE_proxy_in3*i9-1:3+BITSIZE_proxy_in3*i9] : in3[BITSIZE_in3+BITSIZE_in3*i9-1:3+BITSIZE_in3*i9];
        assign conv_out[(i9+1)*n_byte_on_databus-1:i9*n_byte_on_databus] = CONV(conv_in[(i9+1)*n_byte_on_databus-1:i9*n_byte_on_databus]);
        assign be[(i9+1)*n_byte_on_databus-1:i9*n_byte_on_databus] = conv_out[(i9+1)*n_byte_on_databus-1:i9*n_byte_on_databus] << byte_offset[(i9+1)*nbits_byte_offset-1:i9*nbits_byte_offset];
      end
    end
  endgenerate
  
  generate
    for (i9=0; i9<max_n_writes; i9=i9+1)
    begin : L9_swapped
      for (i10=0; i10<n_byte_on_databus/2; i10=i10+1)
      begin  : byte_enable_swapped
        assign be_swapped[i10+i9*n_byte_on_databus] = !relative_addr[nbits_byte_offset+i9*nbit_addr-1] ? be[i10+i9*n_byte_on_databus] : be[i10+i9*n_byte_on_databus+n_byte_on_databus/2];
        assign be_swapped[i10+i9*n_byte_on_databus+n_byte_on_databus/2] =  !relative_addr[nbits_byte_offset+i9*nbit_addr-1] ? be[i10+i9*n_byte_on_databus+n_byte_on_databus/2] : be[i10+i9*n_byte_on_databus];
      end
    end
  endgenerate
    
  generate
  genvar i13;
    for (i13=0; i13<PORTSIZE_S_Wdata_ram; i13=i13+1)
    begin : L13
      if (BITSIZE_S_Wdata_ram < memory_bitsize)
        assign S_Wdata_ram_int[memory_bitsize*(i13+1)-1:memory_bitsize*i13] = {{memory_bitsize-BITSIZE_S_Wdata_ram{1'b0}}, S_Wdata_ram[(i13+1)*BITSIZE_S_Wdata_ram-1:BITSIZE_S_Wdata_ram*i13]};
      else
        assign S_Wdata_ram_int[memory_bitsize*(i13+1)-1:memory_bitsize*i13] = S_Wdata_ram[memory_bitsize+BITSIZE_S_Wdata_ram*i13-1:BITSIZE_S_Wdata_ram*i13];
    end
  endgenerate
  
  generate
  genvar i14;
    for (i14=0; i14<max_n_writes; i14=i14+1)
    begin : L14
      if(PRIVATE_MEMORY==0 && i14 < PORTSIZE_S_Wdata_ram)
        assign din_value_aggregated[(i14+1)*memory_bitsize-1:i14*memory_bitsize] = proxy_sel_STORE[i14] ? proxy_in1[(i14+1)*BITSIZE_proxy_in1-1:i14*BITSIZE_proxy_in1] << byte_offset[(i14+1)*nbits_byte_offset-1:i14*nbits_byte_offset]*8 : (sel_STORE[i14] ? in1[(i14+1)*BITSIZE_in1-1:i14*BITSIZE_in1] << byte_offset[(i14+1)*nbits_byte_offset-1:i14*nbits_byte_offset]*8 : S_Wdata_ram_int[memory_bitsize*(i14+1)-1:memory_bitsize*i14] << byte_offset[(i14+1)*nbits_byte_offset-1:i14*nbits_byte_offset]*8);
      else
        assign din_value_aggregated[(i14+1)*memory_bitsize-1:i14*memory_bitsize] = proxy_sel_STORE[i14] ? proxy_in1[(i14+1)*BITSIZE_proxy_in1-1:i14*BITSIZE_proxy_in1] << byte_offset[(i14+1)*nbits_byte_offset-1:i14*nbits_byte_offset]*8 : in1[(i14+1)*BITSIZE_in1-1:i14*BITSIZE_in1] << byte_offset[(i14+1)*nbits_byte_offset-1:i14*nbits_byte_offset]*8;
    end
  endgenerate
  
  generate
    for (i14=0; i14<max_n_writes; i14=i14+1)
    begin : L14_swapped
      assign din_value_aggregated_swapped[(i14)*memory_bitsize+memory_bitsize/2-1:i14*memory_bitsize] = !relative_addr[nbits_byte_offset+i14*nbit_addr-1] ? din_value_aggregated[(i14)*memory_bitsize+memory_bitsize/2-1:i14*memory_bitsize] : din_value_aggregated[(i14+1)*memory_bitsize-1:i14*memory_bitsize+memory_bitsize/2];
      assign din_value_aggregated_swapped[(i14+1)*memory_bitsize-1:i14*memory_bitsize+memory_bitsize/2] = !relative_addr[nbits_byte_offset+i14*nbit_addr-1] ?  din_value_aggregated[(i14+1)*memory_bitsize-1:i14*memory_bitsize+memory_bitsize/2] : din_value_aggregated[(i14)*memory_bitsize+memory_bitsize/2-1:i14*memory_bitsize];
    end
  endgenerate
  
  generate
  genvar i15;
    for (i15=0; i15<max_n_reads; i15=i15+1)
    begin : L15
      assign out1_shifted[(i15+1)*memory_bitsize-1:i15*memory_bitsize] = dout[(i15+1)*memory_bitsize-1:i15*memory_bitsize] >> delayed_byte_offset[(i15+1)*nbits_byte_offset-1:i15*nbits_byte_offset]*8;
    end
  endgenerate
  
  generate
  genvar i20;
    for (i20=0; i20<max_n_reads; i20=i20+1)
    begin : L20
      assign out1[(i20+1)*BITSIZE_out1-1:i20*BITSIZE_out1] = out1_shifted[i20*memory_bitsize+BITSIZE_out1-1:i20*memory_bitsize];
      assign proxy_out1[(i20+1)*BITSIZE_proxy_out1-1:i20*BITSIZE_proxy_out1] = out1_shifted[i20*memory_bitsize+BITSIZE_proxy_out1-1:i20*memory_bitsize];
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
            if(HIGH_LATENCY != 0) oe_ram_cs_delayed_registered[i16] <= 1'b0;
            if(HIGH_LATENCY == 2) oe_ram_cs_delayed_registered1[i16] <= 1'b0;
          end
        else
          if(HIGH_LATENCY == 0)
          begin
            oe_ram_cs_delayed[i16] <= oe_ram_cs[i16] & (!oe_ram_cs_delayed[i16] | BUS_PIPELINED);
          end
          else if(HIGH_LATENCY == 1)
          begin
            oe_ram_cs_delayed_registered[i16] <= oe_ram_cs[i16] & ((!oe_ram_cs_delayed_registered[i16] & !oe_ram_cs_delayed[i16]) | BUS_PIPELINED);
            oe_ram_cs_delayed[i16] <= oe_ram_cs_delayed_registered[i16];
          end
          else
          begin
            oe_ram_cs_delayed_registered1[i16] <= oe_ram_cs[i16] & ((!oe_ram_cs_delayed_registered1[i16] & !oe_ram_cs_delayed_registered[i16] & !oe_ram_cs_delayed[i16]) | BUS_PIPELINED);
            oe_ram_cs_delayed_registered[i16] <= oe_ram_cs_delayed_registered1[i16];
            oe_ram_cs_delayed[i16] <= oe_ram_cs_delayed_registered[i16];
          end
        end
      end
  endgenerate
  
  always @(posedge clock)
  begin
    if(HIGH_LATENCY == 0)
      delayed_byte_offset <= byte_offset[nbits_byte_offset*max_n_reads-1:0];
    else if(HIGH_LATENCY == 1)
    begin
      delayed_byte_offset_registered <= byte_offset[nbits_byte_offset*max_n_reads-1:0];
      delayed_byte_offset <= delayed_byte_offset_registered;
    end
    else
    begin
      delayed_byte_offset_registered1 <= byte_offset[nbits_byte_offset*max_n_reads-1:0];
      delayed_byte_offset_registered <= delayed_byte_offset_registered1;
      delayed_byte_offset <= delayed_byte_offset_registered;
    end
  end
  
  
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
      else if (BITSIZE_Sout_Rdata_ram <= memory_bitsize)
        assign Sout_Rdata_ram[(i18+1)*BITSIZE_Sout_Rdata_ram-1:i18*BITSIZE_Sout_Rdata_ram] = oe_ram_cs_delayed[i18] ? out1_shifted[BITSIZE_Sout_Rdata_ram+i18*memory_bitsize-1:i18*memory_bitsize] : Sin_Rdata_ram[(i18+1)*BITSIZE_Sin_Rdata_ram-1:i18*BITSIZE_Sin_Rdata_ram];
      else
        assign Sout_Rdata_ram[(i18+1)*BITSIZE_Sout_Rdata_ram-1:i18*BITSIZE_Sout_Rdata_ram] = oe_ram_cs_delayed[i18] ? {{BITSIZE_S_Wdata_ram-memory_bitsize{1'b0}}, out1_shifted[(i18+1)*memory_bitsize-1:i18*memory_bitsize]} : Sin_Rdata_ram[(i18+1)*BITSIZE_Sin_Rdata_ram-1:i18*BITSIZE_Sin_Rdata_ram];
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
    for (i21=0; i21<PORTSIZE_bram_write; i21=i21+1)
    begin : L21
      if(i21 < PORTSIZE_S_we_ram)
        assign bram_write[i21] = (sel_STORE[i21] || proxy_sel_STORE[i21] || we_ram_cs[i21]);
      else
        assign bram_write[i21] = (sel_STORE[i21] || proxy_sel_STORE[i21]);
    end
    endgenerate

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2016-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module BRAM_MEMORY_CORE_SMALL(clock, bram_write0, bram_write1, memory_addr_a, memory_addr_b, din_value_aggregated, be, dout_a, dout_b);
  parameter BITSIZE_dout_a=1, BITSIZE_dout_b=1, BITSIZE_memory_addr_a=1, BITSIZE_memory_addr_b=1, BITSIZE_din_value_aggregated=1, BITSIZE_be=1, MEMORY_INIT_file="array.mem", BRAM_BITSIZE=32, n_byte_on_databus=4, n_mem_elements=4, n_bytes=4, HIGH_LATENCY=0;
  // IN
  input clock;
  input bram_write0;
  input bram_write1;
  input [BITSIZE_memory_addr_a-1:0] memory_addr_a;
  input [BITSIZE_memory_addr_b-1:0] memory_addr_b;
  input [BITSIZE_din_value_aggregated-1:0] din_value_aggregated;
  input [BITSIZE_be-1:0] be;
  // OUT
  output [BITSIZE_dout_a-1:0] dout_a;
  output [BITSIZE_dout_b-1:0] dout_b;
  
  reg bram_write01 =0;
  reg bram_write11 =0;
  reg [BITSIZE_memory_addr_a-1:0] memory_addr_a1 =0;
  reg [BITSIZE_memory_addr_b-1:0] memory_addr_b1 =0;
  reg [BITSIZE_be-1:0] be1 =0;
  reg [BITSIZE_din_value_aggregated-1:0] din_value_aggregated1 =0;
  reg [(n_byte_on_databus)*8-1:0] dout_a_tmp =0;
  reg [(n_byte_on_databus)*8-1:0] dout_b_tmp =0;
  reg [(n_byte_on_databus)*8-1:0] dout_a_registered =0;
  reg [(n_byte_on_databus)*8-1:0] dout_b_registered =0;
  reg [(n_byte_on_databus)*8-1:0] memory [n_mem_elements-1:0]/* synthesis syn_ramstyle = "no_rw_check" */ ;
  
  generate
    if(HIGH_LATENCY==2)
    begin
      always @ (posedge clock)
      begin
         memory_addr_a1 <= memory_addr_a;
         memory_addr_b1 <= memory_addr_b;
         bram_write01 <= bram_write0;
         bram_write11 <= bram_write1;
         be1 <= be;
         din_value_aggregated1 <= din_value_aggregated;
      end
    end
  endgenerate
  
  assign dout_a = dout_a_tmp;
  assign dout_b = dout_b_tmp;
  initial
  begin
    $readmemb(MEMORY_INIT_file, memory, 0, n_mem_elements-1);
  end
  
  always @(posedge clock)
  begin
    if(HIGH_LATENCY == 0||HIGH_LATENCY == 1)
    begin
      if (bram_write0)
      begin : L11_write
        integer i11;
        for (i11=0; i11<n_byte_on_databus; i11=i11+1)
        begin
          if(be[i11])
            memory[memory_addr_a][i11*8+:8] <= din_value_aggregated[i11*8+:8];
        end
      end
    end
    else
    begin
      if (bram_write01)
      begin : L11_write1
        integer i11;
        for (i11=0; i11<n_byte_on_databus; i11=i11+1)
        begin
          if(be1[i11])
            memory[memory_addr_a1][i11*8+:8] <= din_value_aggregated1[i11*8+:8];
        end
      end
    end
    if(HIGH_LATENCY == 0)
      dout_a_tmp <= memory[memory_addr_a];
    else if(HIGH_LATENCY == 1)
    begin
      dout_a_registered <= memory[memory_addr_a];
      dout_a_tmp <= dout_a_registered;
    end
    else
    begin
      dout_a_registered <= memory[memory_addr_a1];
      dout_a_tmp <= dout_a_registered;
    end
    if(HIGH_LATENCY == 0||HIGH_LATENCY == 1)
    begin
      if (bram_write1)
      begin : L22_write
        integer i22;
        for (i22=0; i22<n_byte_on_databus; i22=i22+1)
        begin
          if(be[i22+n_byte_on_databus])
            memory[memory_addr_b][i22*8+:8] <= din_value_aggregated[(i22+n_byte_on_databus)*8+:8];
        end
      end
    end
    else
    begin
      if (bram_write11)
      begin : L22_write1
        integer i22;
        for (i22=0; i22<n_byte_on_databus; i22=i22+1)
        begin
          if(be1[i22+n_byte_on_databus])
            memory[memory_addr_b1][i22*8+:8] <= din_value_aggregated1[(i22+n_byte_on_databus)*8+:8];
        end
      end
    end
    if(HIGH_LATENCY == 0)
      dout_b_tmp <= memory[memory_addr_b];
    else if(HIGH_LATENCY == 1)
    begin
      dout_b_registered <= memory[memory_addr_b];
      dout_b_tmp <= dout_b_registered;
    end
    else
    begin
      dout_b_registered <= memory[memory_addr_b1];
      dout_b_tmp <= dout_b_registered;
    end
  end

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2016-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module TRUE_DUAL_PORT_BYTE_ENABLING_RAM(clock, bram_write0, bram_write1, memory_addr_a, memory_addr_b, din_value_aggregated, be, dout_a, dout_b);
  parameter BITSIZE_dout_a=1, BITSIZE_dout_b=1, BITSIZE_memory_addr_a=1, BITSIZE_memory_addr_b=1, BITSIZE_din_value_aggregated=1, BITSIZE_be=1, MEMORY_INIT_file="array.mem", BRAM_BITSIZE=32, n_byte_on_databus=4, n_mem_elements=4, HIGH_LATENCY=0;
  // IN
  input clock;
  input bram_write0;
  input bram_write1;
  input [BITSIZE_memory_addr_a-1:0] memory_addr_a;
  input [BITSIZE_memory_addr_b-1:0] memory_addr_b;
  input [BITSIZE_din_value_aggregated-1:0] din_value_aggregated;
  input [BITSIZE_be-1:0] be;
  // OUT
  output [BITSIZE_dout_a-1:0] dout_a;
  output [BITSIZE_dout_b-1:0] dout_b;
  
  wire [n_byte_on_databus-1:0] we_a;
  wire [n_byte_on_databus-1:0] we_b;
  reg [n_byte_on_databus-1:0] we_a1 =0;
  reg [n_byte_on_databus-1:0] we_b1 =0;
  reg [BITSIZE_din_value_aggregated-1:0] din_value_aggregated1 =0;
  
  reg [BITSIZE_dout_a-1:0] dout_a =0;
  reg [BITSIZE_dout_a-1:0] dout_a_registered =0;
  reg [BITSIZE_dout_b-1:0] dout_b =0;
  reg [BITSIZE_dout_b-1:0] dout_b_registered =0;
  reg [BITSIZE_memory_addr_a-1:0] memory_addr_a1 =0;
  reg [BITSIZE_memory_addr_b-1:0] memory_addr_b1 =0;
  reg [BRAM_BITSIZE-1:0] memory [0:n_mem_elements-1] /* synthesis syn_ramstyle = "no_rw_check" */;
  
  initial
  begin
    $readmemb(MEMORY_INIT_file, memory, 0, n_mem_elements-1);
  end
  
  always @(posedge clock)
  begin
    if(HIGH_LATENCY==0)
    begin
      dout_a <= memory[memory_addr_a];
    end
    else if(HIGH_LATENCY==1)
    begin
      dout_a_registered <= memory[memory_addr_a];
      dout_a <= dout_a_registered;
    end
    else
    begin
      memory_addr_a1 <= memory_addr_a;
      we_a1 <= we_a;
      din_value_aggregated1 <= din_value_aggregated;
      dout_a_registered <= memory[memory_addr_a1];
      dout_a <= dout_a_registered;
    end
  end
  
  generate
  genvar i11;
    for (i11=0; i11<n_byte_on_databus; i11=i11+1)
    begin : L11_write_a
      always @(posedge clock)
      begin
        if(HIGH_LATENCY==0||HIGH_LATENCY==1)
        begin
          if(we_a[i11])
            memory[memory_addr_a][(i11+1)*8-1:i11*8] <= din_value_aggregated[(i11+1)*8-1:i11*8];
        end
        else
        begin
          if(we_a1[i11])
            memory[memory_addr_a1][(i11+1)*8-1:i11*8] <= din_value_aggregated1[(i11+1)*8-1:i11*8];
        end
      end
    end
  endgenerate
  
    always @(posedge clock)
    begin
      if(HIGH_LATENCY==0)
      begin
        dout_b <= memory[memory_addr_b];
      end
      else if(HIGH_LATENCY==1)
      begin
        dout_b_registered <= memory[memory_addr_b];
        dout_b <= dout_b_registered;
      end
      else
      begin
        memory_addr_b1 <= memory_addr_b;
        we_b1 <= we_b;
        dout_b_registered <= memory[memory_addr_b1];
        dout_b <= dout_b_registered;
      end
    end
    for (i11=0; i11<n_byte_on_databus; i11=i11+1)
    begin : L11_write_b
      always @(posedge clock)
      begin
        if(HIGH_LATENCY==0||HIGH_LATENCY==1)
        begin
          if(we_b[i11])
            memory[memory_addr_b][(i11+1)*8-1:i11*8] <= din_value_aggregated[(i11+1+n_byte_on_databus)*8-1:(i11+n_byte_on_databus)*8];
        end
        else
        begin
          if(we_b1[i11])
            memory[memory_addr_b1][(i11+1)*8-1:i11*8] <= din_value_aggregated1[(i11+1+n_byte_on_databus)*8-1:(i11+n_byte_on_databus)*8];
        end
      end
    end
  
  generate
  genvar i2_a;
    for (i2_a=0; i2_a<n_byte_on_databus; i2_a=i2_a+1)
    begin  : write_enable_a
      assign we_a[i2_a] = (bram_write0) && be[i2_a];
    end
  endgenerate
  
  generate
  genvar i2_b;
    for (i2_b=0; i2_b<n_byte_on_databus; i2_b=i2_b+1)
    begin  : write_enable_b
      assign we_b[i2_b] = (bram_write1) && be[i2_b+n_byte_on_databus];
    end
  endgenerate
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2016-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module BRAM_MEMORY_NN_CORE(clock, bram_write, memory_addr_a, din_value_aggregated_swapped, be_swapped, dout_a);
  parameter BITSIZE_bram_write=1, PORTSIZE_bram_write=2, BITSIZE_dout_a=1, PORTSIZE_dout_a=2, BITSIZE_memory_addr_a=1, PORTSIZE_memory_addr_a=2, BITSIZE_din_value_aggregated_swapped=1, PORTSIZE_din_value_aggregated_swapped=2, BITSIZE_be_swapped=1, PORTSIZE_be_swapped=2, MEMORY_INIT_file="array.mem", BRAM_BITSIZE=32, n_bytes=32, n_byte_on_databus=4, n_mem_elements=4, max_n_reads=2, max_n_writes=2, memory_offset=16, n_byte_on_databus_offset=2, HIGH_LATENCY=0;
  // IN
  input clock;
  input [PORTSIZE_bram_write-1:0] bram_write;
  input [(PORTSIZE_memory_addr_a*BITSIZE_memory_addr_a)+(-1):0] memory_addr_a;
  input [(PORTSIZE_din_value_aggregated_swapped*BITSIZE_din_value_aggregated_swapped)+(-1):0] din_value_aggregated_swapped;
  input [(PORTSIZE_be_swapped*BITSIZE_be_swapped)+(-1):0] be_swapped;
  // OUT
  output [(PORTSIZE_dout_a*BITSIZE_dout_a)+(-1):0] dout_a;
  
  generate
  if(n_mem_elements == 1)
  begin
    BRAM_MEMORY_CORE_SMALL #(.BITSIZE_memory_addr_a(BITSIZE_memory_addr_a), .BITSIZE_memory_addr_b(BITSIZE_memory_addr_a), .BITSIZE_din_value_aggregated((n_byte_on_databus)*8), .BITSIZE_be(n_byte_on_databus), .BITSIZE_dout_a((n_byte_on_databus/2)*8), .BITSIZE_dout_b((n_byte_on_databus/2)*8), .MEMORY_INIT_file(MEMORY_INIT_file), .BRAM_BITSIZE(BRAM_BITSIZE), .n_byte_on_databus(n_byte_on_databus/2), .n_mem_elements(n_mem_elements), .n_bytes(n_bytes), .HIGH_LATENCY(HIGH_LATENCY)) BRAM_MEMORY_instance_small (.clock(clock), .bram_write0(bram_write[0]), .bram_write1(bram_write[1]), .memory_addr_a(memory_addr_a[BITSIZE_memory_addr_a-1:0]), .memory_addr_b(memory_addr_a[2*BITSIZE_memory_addr_a-1:BITSIZE_memory_addr_a]), .din_value_aggregated({din_value_aggregated_swapped[2*BRAM_BITSIZE+(n_byte_on_databus/2)*8+memory_offset-1:2*BRAM_BITSIZE+memory_offset],din_value_aggregated_swapped[(n_byte_on_databus/2)*8+memory_offset-1:memory_offset]}), .be({be_swapped[n_byte_on_databus+n_byte_on_databus/2+n_byte_on_databus_offset-1:n_byte_on_databus+n_byte_on_databus_offset],be_swapped[n_byte_on_databus/2+n_byte_on_databus_offset-1:n_byte_on_databus_offset]}), .dout_a(dout_a[BRAM_BITSIZE-1:0]), .dout_b(dout_a[2*BRAM_BITSIZE-1:BRAM_BITSIZE]));
  end
  else
  begin
    TRUE_DUAL_PORT_BYTE_ENABLING_RAM #(.BITSIZE_memory_addr_a(BITSIZE_memory_addr_a), .BITSIZE_memory_addr_b(BITSIZE_memory_addr_a), .BITSIZE_din_value_aggregated((n_byte_on_databus)*8), .BITSIZE_be(n_byte_on_databus), .BITSIZE_dout_a((n_byte_on_databus/2)*8), .BITSIZE_dout_b((n_byte_on_databus/2)*8), .MEMORY_INIT_file(MEMORY_INIT_file), .BRAM_BITSIZE(BRAM_BITSIZE), .n_byte_on_databus(n_byte_on_databus/2), .n_mem_elements(n_mem_elements), .HIGH_LATENCY(HIGH_LATENCY)) TRUE_DUAL_PORT_BYTE_ENABLING_RAM_instance (.clock(clock), .bram_write0(bram_write[0]), .bram_write1(bram_write[1]), .memory_addr_a(memory_addr_a[BITSIZE_memory_addr_a-1:0]), .memory_addr_b(memory_addr_a[2*BITSIZE_memory_addr_a-1:BITSIZE_memory_addr_a]), .din_value_aggregated({din_value_aggregated_swapped[2*BRAM_BITSIZE+(n_byte_on_databus/2)*8+memory_offset-1:2*BRAM_BITSIZE+memory_offset],din_value_aggregated_swapped[(n_byte_on_databus/2)*8+memory_offset-1:memory_offset]}), .be({be_swapped[n_byte_on_databus+n_byte_on_databus/2+n_byte_on_databus_offset-1:n_byte_on_databus+n_byte_on_databus_offset],be_swapped[n_byte_on_databus/2+n_byte_on_databus_offset-1:n_byte_on_databus_offset]}), .dout_a(dout_a[BRAM_BITSIZE-1:0]), .dout_b(dout_a[2*BRAM_BITSIZE-1:BRAM_BITSIZE]));
  end
  endgenerate

endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ARRAY_1D_STD_BRAM_NN_SP(clock, reset, in1, in2, in3, out1, sel_LOAD, sel_STORE, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, Sin_Rdata_ram, Sout_Rdata_ram, S_data_ram_size, Sin_DataRdy, Sout_DataRdy, proxy_in1, proxy_in2, proxy_in3, proxy_sel_LOAD, proxy_sel_STORE, proxy_out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_in2=1, PORTSIZE_in2=2, BITSIZE_in3=1, PORTSIZE_in3=2, BITSIZE_sel_LOAD=1, PORTSIZE_sel_LOAD=2, BITSIZE_sel_STORE=1, PORTSIZE_sel_STORE=2, BITSIZE_S_oe_ram=1, PORTSIZE_S_oe_ram=2, BITSIZE_S_we_ram=1, PORTSIZE_S_we_ram=2, BITSIZE_out1=1, PORTSIZE_out1=2, BITSIZE_S_addr_ram=1, PORTSIZE_S_addr_ram=2, BITSIZE_S_Wdata_ram=8, PORTSIZE_S_Wdata_ram=2, BITSIZE_Sin_Rdata_ram=8, PORTSIZE_Sin_Rdata_ram=2, BITSIZE_Sout_Rdata_ram=8, PORTSIZE_Sout_Rdata_ram=2, BITSIZE_S_data_ram_size=1, PORTSIZE_S_data_ram_size=2, BITSIZE_Sin_DataRdy=1, PORTSIZE_Sin_DataRdy=2, BITSIZE_Sout_DataRdy=1, PORTSIZE_Sout_DataRdy=2, MEMORY_INIT_file_a="array_a.mem", MEMORY_INIT_file_b="array_b.mem", n_elements=1, data_size=32, address_space_begin=0, address_space_rangesize=4, BUS_PIPELINED=1, BRAM_BITSIZE=32, PRIVATE_MEMORY=0, USE_SPARSE_MEMORY=1, HIGH_LATENCY=0, BITSIZE_proxy_in1=1, PORTSIZE_proxy_in1=2, BITSIZE_proxy_in2=1, PORTSIZE_proxy_in2=2, BITSIZE_proxy_in3=1, PORTSIZE_proxy_in3=2, BITSIZE_proxy_sel_LOAD=1, PORTSIZE_proxy_sel_LOAD=2, BITSIZE_proxy_sel_STORE=1, PORTSIZE_proxy_sel_STORE=2, BITSIZE_proxy_out1=1, PORTSIZE_proxy_out1=2;
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
  parameter n_byte_data = data_size/8;
  parameter n_bytes = n_elements*n_byte_data;
  parameter memory_bitsize = 2*BRAM_BITSIZE;
  parameter n_byte_on_databus = memory_bitsize/8;
  parameter n_mem_elements = n_bytes/(n_byte_on_databus) + (n_bytes%(n_byte_on_databus) == 0 ? 0 : 1);
  `ifdef _SIM_HAVE_CLOG2
    parameter nbit_read_addr = n_mem_elements == 1 ? 1 : $clog2(n_mem_elements);
  `else
    parameter nbit_read_addr = n_mem_elements == 1 ? 1 : log2(n_mem_elements);
  `endif
  parameter max_n_writes = PORTSIZE_sel_STORE > PORTSIZE_S_we_ram ? PORTSIZE_sel_STORE : PORTSIZE_S_we_ram;
  parameter max_n_reads = PORTSIZE_sel_LOAD > PORTSIZE_S_oe_ram ? PORTSIZE_sel_LOAD : PORTSIZE_S_oe_ram;
  parameter max_n_rw = max_n_writes > max_n_reads ? max_n_writes : max_n_reads;
  
  wire [max_n_writes-1:0] bram_write;
  
  wire [nbit_read_addr*max_n_rw-1:0] memory_addr_a;
  wire [nbit_read_addr*max_n_rw-1:0] memory_addr_b;
  wire [n_byte_on_databus*max_n_writes-1:0] be_swapped;
  
  wire [memory_bitsize*max_n_writes-1:0] din_value_aggregated_swapped;
  wire [(memory_bitsize/2)*max_n_reads-1:0] dout_a;
  wire [(memory_bitsize/2)*max_n_reads-1:0] dout_b;
  
  
  BRAM_MEMORY_NN_CORE #(.PORTSIZE_bram_write(max_n_writes), .BITSIZE_bram_write(1), .BITSIZE_dout_a(memory_bitsize/2), .PORTSIZE_dout_a(max_n_reads), .BITSIZE_memory_addr_a(nbit_read_addr), .PORTSIZE_memory_addr_a(max_n_rw), .BITSIZE_din_value_aggregated_swapped(memory_bitsize), .PORTSIZE_din_value_aggregated_swapped(max_n_writes), .BITSIZE_be_swapped(n_byte_on_databus), .PORTSIZE_be_swapped(max_n_writes), .MEMORY_INIT_file(MEMORY_INIT_file_a), .BRAM_BITSIZE(BRAM_BITSIZE), .n_bytes(n_bytes), .n_byte_on_databus(n_byte_on_databus), .n_mem_elements(n_mem_elements), .max_n_reads(max_n_reads), .max_n_writes(max_n_writes), .memory_offset(0), .n_byte_on_databus_offset(0), .HIGH_LATENCY(HIGH_LATENCY)) BRAM_MEMORY_NN_instance_a(.clock(clock), .bram_write(bram_write), .memory_addr_a(memory_addr_a), .din_value_aggregated_swapped(din_value_aggregated_swapped), .be_swapped(be_swapped), .dout_a(dout_a));
  
  generate
    if (n_bytes > BRAM_BITSIZE/8)
    begin : SECOND_MEMORY
      BRAM_MEMORY_NN_CORE #(.PORTSIZE_bram_write(max_n_writes), .BITSIZE_bram_write(1), .BITSIZE_dout_a((memory_bitsize/2)), .PORTSIZE_dout_a(max_n_reads), .BITSIZE_memory_addr_a(nbit_read_addr), .PORTSIZE_memory_addr_a(max_n_rw), .BITSIZE_din_value_aggregated_swapped(memory_bitsize), .PORTSIZE_din_value_aggregated_swapped(max_n_writes), .BITSIZE_be_swapped(n_byte_on_databus), .PORTSIZE_be_swapped(max_n_writes), .MEMORY_INIT_file(MEMORY_INIT_file_b), .BRAM_BITSIZE(BRAM_BITSIZE), .n_bytes(n_bytes), .n_byte_on_databus(n_byte_on_databus), .n_mem_elements(n_mem_elements), .max_n_reads(max_n_reads), .max_n_writes(max_n_writes), .memory_offset(memory_bitsize/2), .n_byte_on_databus_offset(n_byte_on_databus/2), .HIGH_LATENCY(HIGH_LATENCY)) BRAM_MEMORY_NN_instance_b(.clock(clock), .bram_write(bram_write), .memory_addr_a(memory_addr_b), .din_value_aggregated_swapped(din_value_aggregated_swapped), .be_swapped(be_swapped), .dout_a(dout_b));
    end
  else
    assign dout_b = {(memory_bitsize/2)*max_n_reads{1'b0}};
  endgenerate
  
  ADDRESS_DECODING_LOGIC_NN #(.BITSIZE_in1(BITSIZE_in1), .PORTSIZE_in1(PORTSIZE_in1), .BITSIZE_in2(BITSIZE_in2), .PORTSIZE_in2(PORTSIZE_in2), .BITSIZE_in3(BITSIZE_in3), .PORTSIZE_in3(PORTSIZE_in3), .BITSIZE_sel_LOAD(BITSIZE_sel_LOAD), .PORTSIZE_sel_LOAD(PORTSIZE_sel_LOAD), .BITSIZE_sel_STORE(BITSIZE_sel_STORE), .PORTSIZE_sel_STORE(PORTSIZE_sel_STORE), .BITSIZE_out1(BITSIZE_out1), .PORTSIZE_out1(PORTSIZE_out1), .BITSIZE_S_oe_ram(BITSIZE_S_oe_ram), .PORTSIZE_S_oe_ram(PORTSIZE_S_oe_ram), .BITSIZE_S_we_ram(BITSIZE_S_we_ram), .PORTSIZE_S_we_ram(PORTSIZE_S_we_ram), .BITSIZE_Sin_DataRdy(BITSIZE_Sin_DataRdy), .PORTSIZE_Sin_DataRdy(PORTSIZE_Sin_DataRdy), .BITSIZE_Sout_DataRdy(BITSIZE_Sout_DataRdy), .PORTSIZE_Sout_DataRdy(PORTSIZE_Sout_DataRdy), .BITSIZE_S_addr_ram(BITSIZE_S_addr_ram), .PORTSIZE_S_addr_ram(PORTSIZE_S_addr_ram), .BITSIZE_S_Wdata_ram(BITSIZE_S_Wdata_ram), .PORTSIZE_S_Wdata_ram(PORTSIZE_S_Wdata_ram), .BITSIZE_Sin_Rdata_ram(BITSIZE_Sin_Rdata_ram), .PORTSIZE_Sin_Rdata_ram(PORTSIZE_Sin_Rdata_ram), .BITSIZE_Sout_Rdata_ram(BITSIZE_Sout_Rdata_ram), .PORTSIZE_Sout_Rdata_ram(PORTSIZE_Sout_Rdata_ram), .BITSIZE_S_data_ram_size(BITSIZE_S_data_ram_size), .PORTSIZE_S_data_ram_size(PORTSIZE_S_data_ram_size), .address_space_begin(address_space_begin), .address_space_rangesize(address_space_rangesize), .BUS_PIPELINED(BUS_PIPELINED), .BRAM_BITSIZE(BRAM_BITSIZE), .PRIVATE_MEMORY(PRIVATE_MEMORY), .USE_SPARSE_MEMORY(USE_SPARSE_MEMORY), .HIGH_LATENCY(HIGH_LATENCY), .BITSIZE_proxy_in1(BITSIZE_proxy_in1), .PORTSIZE_proxy_in1(PORTSIZE_proxy_in1), .BITSIZE_proxy_in2(BITSIZE_proxy_in2), .PORTSIZE_proxy_in2(PORTSIZE_proxy_in2), .BITSIZE_proxy_in3(BITSIZE_proxy_in3), .PORTSIZE_proxy_in3(PORTSIZE_proxy_in3), .BITSIZE_proxy_sel_LOAD(BITSIZE_proxy_sel_LOAD), .PORTSIZE_proxy_sel_LOAD(PORTSIZE_proxy_sel_LOAD), .BITSIZE_proxy_sel_STORE(BITSIZE_proxy_sel_STORE), .PORTSIZE_proxy_sel_STORE(PORTSIZE_proxy_sel_STORE), .BITSIZE_proxy_out1(BITSIZE_proxy_out1), .PORTSIZE_proxy_out1(PORTSIZE_proxy_out1), .BITSIZE_dout_a(memory_bitsize/2), .PORTSIZE_dout_a(max_n_reads), .BITSIZE_dout_b(memory_bitsize/2), .PORTSIZE_dout_b(max_n_reads), .BITSIZE_memory_addr_a(nbit_read_addr), .PORTSIZE_memory_addr_a(max_n_rw), .BITSIZE_memory_addr_b(nbit_read_addr), .PORTSIZE_memory_addr_b(max_n_rw), .BITSIZE_din_value_aggregated_swapped(memory_bitsize), .PORTSIZE_din_value_aggregated_swapped(max_n_writes), .BITSIZE_be_swapped(n_byte_on_databus), .PORTSIZE_be_swapped(max_n_writes), .BITSIZE_bram_write(1), .PORTSIZE_bram_write(max_n_writes), .nbit_read_addr(nbit_read_addr), .n_byte_on_databus(n_byte_on_databus), .n_mem_elements(n_mem_elements), .max_n_reads(max_n_reads), .max_n_writes(max_n_writes), .max_n_rw(max_n_rw)) ADDRESS_DECODING_LOGIC_NN_instance (.clock(clock), .reset(reset), .in1(in1), .in2(in2), .in3(in3), .out1(out1), .sel_LOAD(sel_LOAD), .sel_STORE(sel_STORE), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .Sout_Rdata_ram(Sout_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .Sout_DataRdy(Sout_DataRdy), .proxy_in1(proxy_in1), .proxy_in2(proxy_in2), .proxy_in3(proxy_in3), .proxy_sel_LOAD(proxy_sel_LOAD), .proxy_sel_STORE(proxy_sel_STORE), .proxy_out1(proxy_out1), .dout_a(dout_a), .dout_b(dout_b), .memory_addr_a(memory_addr_a), .memory_addr_b(memory_addr_b), .din_value_aggregated_swapped(din_value_aggregated_swapped), .be_swapped(be_swapped), .bram_write(bram_write));
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ARRAY_1D_STD_BRAM_NN(clock, reset, in1, in2, in3, in4, out1, sel_LOAD, sel_STORE, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, Sin_Rdata_ram, Sout_Rdata_ram, S_data_ram_size, Sin_DataRdy, Sout_DataRdy, proxy_in1, proxy_in2, proxy_in3, proxy_sel_LOAD, proxy_sel_STORE, proxy_out1);
  parameter BITSIZE_in1=1, PORTSIZE_in1=2, BITSIZE_in2=1, PORTSIZE_in2=2, BITSIZE_in3=1, PORTSIZE_in3=2, BITSIZE_in4=1, PORTSIZE_in4=2, BITSIZE_sel_LOAD=1, PORTSIZE_sel_LOAD=2, BITSIZE_sel_STORE=1, PORTSIZE_sel_STORE=2, BITSIZE_S_oe_ram=1, PORTSIZE_S_oe_ram=2, BITSIZE_S_we_ram=1, PORTSIZE_S_we_ram=2, BITSIZE_out1=1, PORTSIZE_out1=2, BITSIZE_S_addr_ram=1, PORTSIZE_S_addr_ram=2, BITSIZE_S_Wdata_ram=8, PORTSIZE_S_Wdata_ram=2, BITSIZE_Sin_Rdata_ram=8, PORTSIZE_Sin_Rdata_ram=2, BITSIZE_Sout_Rdata_ram=8, PORTSIZE_Sout_Rdata_ram=2, BITSIZE_S_data_ram_size=1, PORTSIZE_S_data_ram_size=2, BITSIZE_Sin_DataRdy=1, PORTSIZE_Sin_DataRdy=2, BITSIZE_Sout_DataRdy=1, PORTSIZE_Sout_DataRdy=2, MEMORY_INIT_file_a="array_a.mem", MEMORY_INIT_file_b="array_b.mem", n_elements=1, data_size=32, address_space_begin=0, address_space_rangesize=4, BUS_PIPELINED=1, BRAM_BITSIZE=32, PRIVATE_MEMORY=0, USE_SPARSE_MEMORY=1, BITSIZE_proxy_in1=1, PORTSIZE_proxy_in1=2, BITSIZE_proxy_in2=1, PORTSIZE_proxy_in2=2, BITSIZE_proxy_in3=1, PORTSIZE_proxy_in3=2, BITSIZE_proxy_sel_LOAD=1, PORTSIZE_proxy_sel_LOAD=2, BITSIZE_proxy_sel_STORE=1, PORTSIZE_proxy_sel_STORE=2, BITSIZE_proxy_out1=1, PORTSIZE_proxy_out1=2;
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
  ARRAY_1D_STD_BRAM_NN_SP #(.BITSIZE_in1(BITSIZE_in1), .PORTSIZE_in1(PORTSIZE_in1), .BITSIZE_in2(BITSIZE_in2), .PORTSIZE_in2(PORTSIZE_in2), .BITSIZE_in3(BITSIZE_in3), .PORTSIZE_in3(PORTSIZE_in3), .BITSIZE_sel_LOAD(BITSIZE_sel_LOAD), .PORTSIZE_sel_LOAD(PORTSIZE_sel_LOAD), .BITSIZE_sel_STORE(BITSIZE_sel_STORE), .PORTSIZE_sel_STORE(PORTSIZE_sel_STORE), .BITSIZE_S_oe_ram(BITSIZE_S_oe_ram), .PORTSIZE_S_oe_ram(PORTSIZE_S_oe_ram), .BITSIZE_S_we_ram(BITSIZE_S_we_ram), .PORTSIZE_S_we_ram(PORTSIZE_S_we_ram), .BITSIZE_out1(BITSIZE_out1), .PORTSIZE_out1(PORTSIZE_out1), .BITSIZE_S_addr_ram(BITSIZE_S_addr_ram), .PORTSIZE_S_addr_ram(PORTSIZE_S_addr_ram), .BITSIZE_S_Wdata_ram(BITSIZE_S_Wdata_ram), .PORTSIZE_S_Wdata_ram(PORTSIZE_S_Wdata_ram), .BITSIZE_Sin_Rdata_ram(BITSIZE_Sin_Rdata_ram), .PORTSIZE_Sin_Rdata_ram(PORTSIZE_Sin_Rdata_ram), .BITSIZE_Sout_Rdata_ram(BITSIZE_Sout_Rdata_ram), .PORTSIZE_Sout_Rdata_ram(PORTSIZE_Sout_Rdata_ram), .BITSIZE_S_data_ram_size(BITSIZE_S_data_ram_size), .PORTSIZE_S_data_ram_size(PORTSIZE_S_data_ram_size), .BITSIZE_Sin_DataRdy(BITSIZE_Sin_DataRdy), .PORTSIZE_Sin_DataRdy(PORTSIZE_Sin_DataRdy), .BITSIZE_Sout_DataRdy(BITSIZE_Sout_DataRdy), .PORTSIZE_Sout_DataRdy(PORTSIZE_Sout_DataRdy), .MEMORY_INIT_file_a(MEMORY_INIT_file_a), .MEMORY_INIT_file_b(MEMORY_INIT_file_b), .n_elements(n_elements), .data_size(data_size), .address_space_begin(address_space_begin), .address_space_rangesize(address_space_rangesize), .BUS_PIPELINED(BUS_PIPELINED), .BRAM_BITSIZE(BRAM_BITSIZE), .PRIVATE_MEMORY(PRIVATE_MEMORY), .USE_SPARSE_MEMORY(USE_SPARSE_MEMORY), .BITSIZE_proxy_in1(BITSIZE_proxy_in1), .PORTSIZE_proxy_in1(PORTSIZE_proxy_in1), .BITSIZE_proxy_in2(BITSIZE_proxy_in2), .PORTSIZE_proxy_in2(PORTSIZE_proxy_in2), .BITSIZE_proxy_in3(BITSIZE_proxy_in3), .PORTSIZE_proxy_in3(PORTSIZE_proxy_in3), .BITSIZE_proxy_sel_LOAD(BITSIZE_proxy_sel_LOAD), .PORTSIZE_proxy_sel_LOAD(PORTSIZE_proxy_sel_LOAD), .BITSIZE_proxy_sel_STORE(BITSIZE_proxy_sel_STORE), .PORTSIZE_proxy_sel_STORE(PORTSIZE_proxy_sel_STORE), .BITSIZE_proxy_out1(BITSIZE_proxy_out1), .PORTSIZE_proxy_out1(PORTSIZE_proxy_out1), .HIGH_LATENCY(0)) ARRAY_1D_STD_BRAM_NN_instance (.out1(out1), .Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .proxy_out1(proxy_out1), .clock(clock), .reset(reset), .in1(in1), .in2(in2), .in3(in3), .sel_LOAD(sel_LOAD & in4), .sel_STORE(sel_STORE & in4), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(proxy_in1), .proxy_in2(proxy_in2), .proxy_in3(proxy_in3), .proxy_sel_LOAD(proxy_sel_LOAD), .proxy_sel_STORE(proxy_sel_STORE));
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
module datapath_is_connected(clock, reset, return_port, proxy_out1_28867, proxy_in1_28867, proxy_in2_28867, proxy_in3_28867, proxy_sel_LOAD_28867, proxy_sel_STORE_28867, proxy_out1_28868, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, proxy_out1_28870, proxy_in1_28870, proxy_in2_28870, proxy_in3_28870, proxy_sel_LOAD_28870, proxy_sel_STORE_28870, selector_MUX_18_gimple_return_FU_17_i0_0_0_0, selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0, selector_MUX_30_reg_12_0_0_0, selector_MUX_32_reg_3_0_0_0, selector_MUX_33_reg_4_0_0_0, selector_MUX_33_reg_4_0_0_1, selector_MUX_37_reg_8_0_0_0, selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0, selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1, selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0, fuselector_PROXY_CTRLN_0_i0_LOAD, fuselector_PROXY_CTRLN_0_i0_STORE, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_MULTIIF_is_connected_28872_30584, OUT_MULTIIF_is_connected_28872_30598);
  parameter MEM_var_28867_28882=32, MEM_var_28868_28882=64, MEM_var_28870_28882=128;
  // IN
  input clock;
  input reset;
  input [63:0] proxy_out1_28867;
  input [63:0] proxy_out1_28868;
  input [63:0] proxy_out1_28870;
  input selector_MUX_18_gimple_return_FU_17_i0_0_0_0;
  input selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0;
  input selector_MUX_30_reg_12_0_0_0;
  input selector_MUX_32_reg_3_0_0_0;
  input selector_MUX_33_reg_4_0_0_0;
  input selector_MUX_33_reg_4_0_0_1;
  input selector_MUX_37_reg_8_0_0_0;
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
  output [63:0] proxy_in1_28867;
  output [17:0] proxy_in2_28867;
  output [11:0] proxy_in3_28867;
  output [1:0] proxy_sel_LOAD_28867;
  output [1:0] proxy_sel_STORE_28867;
  output [63:0] proxy_in1_28868;
  output [17:0] proxy_in2_28868;
  output [11:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [63:0] proxy_in1_28870;
  output [17:0] proxy_in2_28870;
  output [11:0] proxy_in3_28870;
  output [1:0] proxy_sel_LOAD_28870;
  output [1:0] proxy_sel_STORE_28870;
  output [1:0] OUT_MULTIIF_is_connected_28872_30584;
  output [2:0] OUT_MULTIIF_is_connected_28872_30598;
  // Component and signal declarations
  wire [7:0] null_out_signal_PROXY_CTRLN_0_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_0_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_2_i0_out1_1;
  wire [7:0] out_MUX_18_gimple_return_FU_17_i0_0_0_0;
  wire [7:0] out_MUX_2_PROXY_CTRLN_0_i0_0_0_0;
  wire [7:0] out_MUX_30_reg_12_0_0_0;
  wire [31:0] out_MUX_32_reg_3_0_0_0;
  wire [7:0] out_MUX_33_reg_4_0_0_0;
  wire [7:0] out_MUX_33_reg_4_0_0_1;
  wire [31:0] out_MUX_37_reg_8_0_0_0;
  wire [7:0] out_MUX_6_PROXY_CTRLN_1_i0_0_0_0;
  wire [7:0] out_MUX_6_PROXY_CTRLN_1_i0_0_0_1;
  wire [8:0] out_MUX_7_PROXY_CTRLN_1_i0_1_0_0;
  wire [7:0] out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0;
  wire [7:0] out_UUdata_converter_FU_13_i0_fu_is_connected_28872_28989;
  wire [31:0] out_UUdata_converter_FU_7_i0_fu_is_connected_28872_28936;
  wire [6:0] out_addr_expr_FU_5_i0_fu_is_connected_28872_29935;
  wire [31:0] out_addr_expr_FU_6_i0_fu_is_connected_28872_29939;
  wire [5:0] out_addr_expr_FU_8_i0_fu_is_connected_28872_29958;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [7:0] out_const_2;
  wire [1:0] out_const_3;
  wire [4:0] out_const_4;
  wire out_const_5;
  wire [1:0] out_const_6;
  wire [8:0] out_const_7;
  wire [5:0] out_const_8;
  wire [6:0] out_const_9;
  wire [8:0] out_conv_out_addr_expr_FU_5_i0_fu_is_connected_28872_29935_7_9;
  wire signed [7:0] out_conv_out_const_0_I_1_I_8;
  wire signed [7:0] out_conv_out_const_3_I_2_I_8;
  wire [5:0] out_conv_out_const_4_5_6;
  wire [31:0] out_conv_out_const_7_9_32;
  wire [31:0] out_conv_out_const_8_6_32;
  wire [31:0] out_conv_out_const_9_7_32;
  wire [8:0] out_conv_out_reg_0_reg_0_7_9;
  wire [8:0] out_conv_out_reg_1_reg_1_6_9;
  wire [8:0] out_conv_out_reg_9_reg_9_8_9;
  wire [7:0] out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_0_1_8;
  wire [7:0] out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_1_1_8;
  wire [1:0] out_multi_read_cond_FU_14_i0_fu_is_connected_28872_30584;
  wire [2:0] out_multi_read_cond_FU_16_i0_fu_is_connected_28872_30598;
  wire out_ne_expr_FU_8_0_8_18_i0_fu_is_connected_28872_30468;
  wire [6:0] out_reg_0_reg_0;
  wire out_reg_10_reg_10;
  wire [7:0] out_reg_11_reg_11;
  wire [7:0] out_reg_12_reg_12;
  wire [5:0] out_reg_1_reg_1;
  wire [7:0] out_reg_2_reg_2;
  wire [31:0] out_reg_3_reg_3;
  wire [7:0] out_reg_4_reg_4;
  wire out_reg_5_reg_5;
  wire out_reg_6_reg_6;
  wire [7:0] out_reg_7_reg_7;
  wire [31:0] out_reg_8_reg_8;
  wire [7:0] out_reg_9_reg_9;
  wire out_truth_and_expr_FU_1_1_1_19_i0_fu_is_connected_28872_30590;
  wire out_truth_and_expr_FU_1_1_1_19_i1_fu_is_connected_28872_30597;
  wire out_truth_and_expr_FU_1_1_1_19_i2_fu_is_connected_28872_30601;
  wire out_truth_and_expr_FU_1_1_1_19_i3_fu_is_connected_28872_30607;
  wire out_truth_not_expr_FU_1_1_20_i0_fu_is_connected_28872_30587;
  wire out_truth_not_expr_FU_1_1_20_i1_fu_is_connected_28872_30594;
  wire out_truth_not_expr_FU_1_1_20_i2_fu_is_connected_28872_30604;
  wire [0:0] out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_0;
  wire [0:0] out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_1;
  wire out_ui_ne_expr_FU_8_0_8_21_i0_fu_is_connected_28872_30470;
  wire out_ui_ne_expr_FU_8_0_8_21_i1_fu_is_connected_28872_30474;
  wire out_ui_ne_expr_FU_8_8_8_22_i0_fu_is_connected_28872_30466;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_23_i0_fu_is_connected_28872_28960;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_24_i0_fu_is_connected_28872_28984;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_25_i0_fu_is_connected_28872_28955;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_25_i1_fu_is_connected_28872_28972;
  wire [7:0] out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_2;
  wire [7:0] out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_3;
  wire [7:0] out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_4;
  wire [7:0] out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5;
  wire [63:0] sig_in_bus_mergerproxy_in1_288670_0;
  wire [63:0] sig_in_bus_mergerproxy_in1_288681_0;
  wire [63:0] sig_in_bus_mergerproxy_in1_288702_0;
  wire [17:0] sig_in_bus_mergerproxy_in2_288673_0;
  wire [17:0] sig_in_bus_mergerproxy_in2_288684_0;
  wire [17:0] sig_in_bus_mergerproxy_in2_288705_0;
  wire [11:0] sig_in_bus_mergerproxy_in3_288676_0;
  wire [11:0] sig_in_bus_mergerproxy_in3_288687_0;
  wire [11:0] sig_in_bus_mergerproxy_in3_288708_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_288679_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886810_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2887011_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886712_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886813_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2887014_0;
  wire [63:0] sig_in_vector_bus_mergerproxy_in1_288670_0;
  wire [63:0] sig_in_vector_bus_mergerproxy_in1_288681_0;
  wire [63:0] sig_in_vector_bus_mergerproxy_in1_288702_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in2_288673_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in2_288684_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in2_288705_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in3_288676_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in3_288687_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in3_288708_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_288679_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886810_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2887011_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886712_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886813_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2887014_0;
  wire [63:0] sig_out_bus_mergerproxy_in1_288670_;
  wire [63:0] sig_out_bus_mergerproxy_in1_288681_;
  wire [63:0] sig_out_bus_mergerproxy_in1_288702_;
  wire [17:0] sig_out_bus_mergerproxy_in2_288673_;
  wire [17:0] sig_out_bus_mergerproxy_in2_288684_;
  wire [17:0] sig_out_bus_mergerproxy_in2_288705_;
  wire [11:0] sig_out_bus_mergerproxy_in3_288676_;
  wire [11:0] sig_out_bus_mergerproxy_in3_288687_;
  wire [11:0] sig_out_bus_mergerproxy_in3_288708_;
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
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_5 (.out1(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5), .in1(out_reg_12_reg_12));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_18_gimple_return_FU_17_i0_0_0_0 (.out1(out_MUX_18_gimple_return_FU_17_i0_0_0_0), .sel(selector_MUX_18_gimple_return_FU_17_i0_0_0_0), .in1(out_conv_out_const_0_I_1_I_8), .in2(out_conv_out_const_3_I_2_I_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_2_PROXY_CTRLN_0_i0_0_0_0 (.out1(out_MUX_2_PROXY_CTRLN_0_i0_0_0_0), .sel(selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0), .in1(out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_3), .in2(out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_4));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_30_reg_12_0_0_0 (.out1(out_MUX_30_reg_12_0_0_0), .sel(selector_MUX_30_reg_12_0_0_0), .in1(out_reg_2_reg_2), .in2(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_0_1_8));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_32_reg_3_0_0_0 (.out1(out_MUX_32_reg_3_0_0_0), .sel(selector_MUX_32_reg_3_0_0_0), .in1(out_UUdata_converter_FU_7_i0_fu_is_connected_28872_28936), .in2(out_ui_plus_expr_FU_32_0_32_23_i0_fu_is_connected_28872_28960));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_33_reg_4_0_0_0 (.out1(out_MUX_33_reg_4_0_0_0), .sel(selector_MUX_33_reg_4_0_0_0), .in1(out_reg_7_reg_7), .in2(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_1_1_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_33_reg_4_0_0_1 (.out1(out_MUX_33_reg_4_0_0_1), .sel(selector_MUX_33_reg_4_0_0_1), .in1(out_ui_plus_expr_FU_8_0_8_25_i1_fu_is_connected_28872_28972), .in2(out_MUX_33_reg_4_0_0_0));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_37_reg_8_0_0_0 (.out1(out_MUX_37_reg_8_0_0_0), .sel(selector_MUX_37_reg_8_0_0_0), .in1(out_reg_3_reg_3), .in2(out_ui_plus_expr_FU_32_0_32_24_i0_fu_is_connected_28872_28984));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_6_PROXY_CTRLN_1_i0_0_0_0 (.out1(out_MUX_6_PROXY_CTRLN_1_i0_0_0_0), .sel(selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0), .in1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_2), .in2(out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_4));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_6_PROXY_CTRLN_1_i0_0_0_1 (.out1(out_MUX_6_PROXY_CTRLN_1_i0_0_0_1), .sel(selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1), .in1(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5), .in2(out_MUX_6_PROXY_CTRLN_1_i0_0_0_0));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_7_PROXY_CTRLN_1_i0_1_0_0 (.out1(out_MUX_7_PROXY_CTRLN_1_i0_1_0_0), .sel(selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0), .in1(out_conv_out_reg_0_reg_0_7_9), .in2(out_conv_out_addr_expr_FU_5_i0_fu_is_connected_28872_29935_7_9));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_0_i0 (.out1({null_out_signal_PROXY_CTRLN_0_i0_out1_1, null_out_signal_PROXY_CTRLN_0_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288670_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288673_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288676_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_288679_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886712_0), .in1({8'b00000000, out_MUX_2_PROXY_CTRLN_0_i0_0_0_0}), .in2({9'b000000000, out_conv_out_reg_1_reg_1_6_9}), .in3({6'b000000, out_conv_out_const_4_5_6}), .in4({1'b0, out_const_5}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_0_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_0_i0_STORE}), .proxy_out1(proxy_out1_28867));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_1_i0 (.out1({null_out_signal_PROXY_CTRLN_1_i0_out1_1, null_out_signal_PROXY_CTRLN_1_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288681_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288684_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288687_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886810_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886813_0), .in1({8'b00000000, out_MUX_6_PROXY_CTRLN_1_i0_0_0_1}), .in2({9'b000000000, out_MUX_7_PROXY_CTRLN_1_i0_1_0_0}), .in3({6'b000000, out_conv_out_const_4_5_6}), .in4({1'b0, out_const_5}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_1_i0_STORE}), .proxy_out1(proxy_out1_28868));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_2_i0 (.out1({null_out_signal_PROXY_CTRLN_2_i0_out1_1, out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288702_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288705_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288708_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2887011_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2887014_0), .in1({8'b00000000, 8'b00000000}), .in2({9'b000000000, out_conv_out_reg_9_reg_9_8_9}), .in3({6'b000000, out_conv_out_const_4_5_6}), .in4({1'b0, out_const_5}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_2_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_2_i0_STORE}), .proxy_out1(proxy_out1_28870));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerproxy_in1_288670_ (.out1(sig_out_bus_mergerproxy_in1_288670_), .in1({sig_in_bus_mergerproxy_in1_288670_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerproxy_in1_288681_ (.out1(sig_out_bus_mergerproxy_in1_288681_), .in1({sig_in_bus_mergerproxy_in1_288681_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerproxy_in1_288702_ (.out1(sig_out_bus_mergerproxy_in1_288702_), .in1({sig_in_bus_mergerproxy_in1_288702_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerproxy_in2_288673_ (.out1(sig_out_bus_mergerproxy_in2_288673_), .in1({sig_in_bus_mergerproxy_in2_288673_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerproxy_in2_288684_ (.out1(sig_out_bus_mergerproxy_in2_288684_), .in1({sig_in_bus_mergerproxy_in2_288684_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerproxy_in2_288705_ (.out1(sig_out_bus_mergerproxy_in2_288705_), .in1({sig_in_bus_mergerproxy_in2_288705_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(1), .BITSIZE_out1(12)) bus_mergerproxy_in3_288676_ (.out1(sig_out_bus_mergerproxy_in3_288676_), .in1({sig_in_bus_mergerproxy_in3_288676_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(1), .BITSIZE_out1(12)) bus_mergerproxy_in3_288687_ (.out1(sig_out_bus_mergerproxy_in3_288687_), .in1({sig_in_bus_mergerproxy_in3_288687_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(1), .BITSIZE_out1(12)) bus_mergerproxy_in3_288708_ (.out1(sig_out_bus_mergerproxy_in3_288708_), .in1({sig_in_bus_mergerproxy_in3_288708_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_288679_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288679_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288679_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886810_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886810_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886810_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2887011_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2887011_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2887011_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886712_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886712_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886712_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886813_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886813_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886813_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2887014_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2887014_), .in1({sig_in_bus_mergerproxy_sel_STORE_2887014_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000011)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(2), .value(2'b01)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(9), .value(MEM_var_28870_28882)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(6), .value(MEM_var_28867_28882)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(7), .value(MEM_var_28868_28882)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_addr_expr_FU_5_i0_fu_is_connected_28872_29935_7_9 (.out1(out_conv_out_addr_expr_FU_5_i0_fu_is_connected_28872_29935_7_9), .in1(out_addr_expr_FU_5_i0_fu_is_connected_28872_29935));
  IIdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_const_0_I_1_I_8 (.out1(out_conv_out_const_0_I_1_I_8), .in1(out_const_0));
  IIdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(8)) conv_out_const_3_I_2_I_8 (.out1(out_conv_out_const_3_I_2_I_8), .in1(out_const_3));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(6)) conv_out_const_4_5_6 (.out1(out_conv_out_const_4_5_6), .in1(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(32)) conv_out_const_7_9_32 (.out1(out_conv_out_const_7_9_32), .in1(out_const_7));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(32)) conv_out_const_8_6_32 (.out1(out_conv_out_const_8_6_32), .in1(out_const_8));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(32)) conv_out_const_9_7_32 (.out1(out_conv_out_const_9_7_32), .in1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_0_reg_0_7_9 (.out1(out_conv_out_reg_0_reg_0_7_9), .in1(out_reg_0_reg_0));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(9)) conv_out_reg_1_reg_1_6_9 (.out1(out_conv_out_reg_1_reg_1_6_9), .in1(out_reg_1_reg_1));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_9_reg_9_8_9 (.out1(out_conv_out_reg_9_reg_9_8_9), .in1(out_reg_9_reg_9));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_0_1_8 (.out1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_0_1_8), .in1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_0));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_1_1_8 (.out1(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_1_1_8), .in1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_1));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_is_connected_28872_28936 (.out1(out_UUdata_converter_FU_7_i0_fu_is_connected_28872_28936), .in1(out_addr_expr_FU_6_i0_fu_is_connected_28872_29939));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_is_connected_28872_28955 (.out1(out_ui_plus_expr_FU_8_0_8_25_i0_fu_is_connected_28872_28955), .in1(out_reg_12_reg_12), .in2(out_const_5));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(32)) fu_is_connected_28872_28960 (.out1(out_ui_plus_expr_FU_32_0_32_23_i0_fu_is_connected_28872_28960), .in1(out_reg_3_reg_3), .in2(out_const_6));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_is_connected_28872_28972 (.out1(out_ui_plus_expr_FU_8_0_8_25_i1_fu_is_connected_28872_28972), .in1(out_reg_4_reg_4), .in2(out_const_5));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(32)) fu_is_connected_28872_28984 (.out1(out_ui_plus_expr_FU_32_0_32_24_i0_fu_is_connected_28872_28984), .in1(out_reg_8_reg_8), .in2(out_const_5));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_is_connected_28872_28989 (.out1(out_UUdata_converter_FU_13_i0_fu_is_connected_28872_28989), .in1(out_reg_8_reg_8));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_is_connected_28872_29935 (.out1(out_addr_expr_FU_5_i0_fu_is_connected_28872_29935), .in1(out_conv_out_const_9_7_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_is_connected_28872_29939 (.out1(out_addr_expr_FU_6_i0_fu_is_connected_28872_29939), .in1(out_conv_out_const_7_9_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(6)) fu_is_connected_28872_29958 (.out1(out_addr_expr_FU_8_i0_fu_is_connected_28872_29958), .in1(out_conv_out_const_8_6_32));
  ui_ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_is_connected_28872_30466 (.out1(out_ui_ne_expr_FU_8_8_8_22_i0_fu_is_connected_28872_30466), .in1(out_reg_12_reg_12), .in2(out_reg_4_reg_4));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_is_connected_28872_30468 (.out1(out_ne_expr_FU_8_0_8_18_i0_fu_is_connected_28872_30468), .in1(out_reg_11_reg_11), .in2(out_const_6));
  ui_ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_is_connected_28872_30470 (.out1(out_ui_ne_expr_FU_8_0_8_21_i0_fu_is_connected_28872_30470), .in1(out_ui_plus_expr_FU_8_0_8_25_i0_fu_is_connected_28872_28955), .in2(out_const_6));
  ui_ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_is_connected_28872_30474 (.out1(out_ui_ne_expr_FU_8_0_8_21_i1_fu_is_connected_28872_30474), .in1(out_ui_plus_expr_FU_8_0_8_25_i1_fu_is_connected_28872_28972), .in2(out_const_6));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) fu_is_connected_28872_30584 (.out1(out_multi_read_cond_FU_14_i0_fu_is_connected_28872_30584), .in1({out_truth_and_expr_FU_1_1_1_19_i0_fu_is_connected_28872_30590, out_ui_ne_expr_FU_8_8_8_22_i0_fu_is_connected_28872_30466}));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_is_connected_28872_30587 (.out1(out_truth_not_expr_FU_1_1_20_i0_fu_is_connected_28872_30587), .in1(out_ui_ne_expr_FU_8_8_8_22_i0_fu_is_connected_28872_30466));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_is_connected_28872_30590 (.out1(out_truth_and_expr_FU_1_1_1_19_i0_fu_is_connected_28872_30590), .in1(out_ui_ne_expr_FU_8_0_8_21_i1_fu_is_connected_28872_30474), .in2(out_truth_not_expr_FU_1_1_20_i0_fu_is_connected_28872_30587));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_is_connected_28872_30594 (.out1(out_truth_not_expr_FU_1_1_20_i1_fu_is_connected_28872_30594), .in1(out_ne_expr_FU_8_0_8_18_i0_fu_is_connected_28872_30468));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_is_connected_28872_30597 (.out1(out_truth_and_expr_FU_1_1_1_19_i1_fu_is_connected_28872_30597), .in1(out_reg_10_reg_10), .in2(out_truth_not_expr_FU_1_1_20_i1_fu_is_connected_28872_30594));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(3), .BITSIZE_out1(3)) fu_is_connected_28872_30598 (.out1(out_multi_read_cond_FU_16_i0_fu_is_connected_28872_30598), .in1({out_truth_and_expr_FU_1_1_1_19_i1_fu_is_connected_28872_30597, out_truth_and_expr_FU_1_1_1_19_i3_fu_is_connected_28872_30607, out_truth_and_expr_FU_1_1_1_19_i2_fu_is_connected_28872_30601}));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_is_connected_28872_30601 (.out1(out_truth_and_expr_FU_1_1_1_19_i2_fu_is_connected_28872_30601), .in1(out_ne_expr_FU_8_0_8_18_i0_fu_is_connected_28872_30468), .in2(out_reg_5_reg_5));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_is_connected_28872_30604 (.out1(out_truth_not_expr_FU_1_1_20_i2_fu_is_connected_28872_30604), .in1(out_ui_ne_expr_FU_8_0_8_21_i0_fu_is_connected_28872_30470));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_is_connected_28872_30607 (.out1(out_truth_and_expr_FU_1_1_1_19_i3_fu_is_connected_28872_30607), .in1(out_ne_expr_FU_8_0_8_18_i0_fu_is_connected_28872_30468), .in2(out_reg_6_reg_6));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in1_288670_0 (.out1(sig_in_bus_mergerproxy_in1_288670_0), .in1(sig_in_vector_bus_mergerproxy_in1_288670_0));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in1_288681_0 (.out1(sig_in_bus_mergerproxy_in1_288681_0), .in1(sig_in_vector_bus_mergerproxy_in1_288681_0));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in1_288702_0 (.out1(sig_in_bus_mergerproxy_in1_288702_0), .in1(sig_in_vector_bus_mergerproxy_in1_288702_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in2_288673_0 (.out1(sig_in_bus_mergerproxy_in2_288673_0), .in1(sig_in_vector_bus_mergerproxy_in2_288673_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in2_288684_0 (.out1(sig_in_bus_mergerproxy_in2_288684_0), .in1(sig_in_vector_bus_mergerproxy_in2_288684_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in2_288705_0 (.out1(sig_in_bus_mergerproxy_in2_288705_0), .in1(sig_in_vector_bus_mergerproxy_in2_288705_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in3_288676_0 (.out1(sig_in_bus_mergerproxy_in3_288676_0), .in1(sig_in_vector_bus_mergerproxy_in3_288676_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in3_288687_0 (.out1(sig_in_bus_mergerproxy_in3_288687_0), .in1(sig_in_vector_bus_mergerproxy_in3_288687_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in3_288708_0 (.out1(sig_in_bus_mergerproxy_in3_288708_0), .in1(sig_in_vector_bus_mergerproxy_in3_288708_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_288679_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_288679_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_288679_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886810_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886810_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886810_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2887011_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2887011_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2887011_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886712_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886712_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886712_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886813_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886813_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886813_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2887014_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2887014_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2887014_0));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_5_i0_fu_is_connected_28872_29935), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_8_i0_fu_is_connected_28872_29958), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_21_i1_fu_is_connected_28872_30474), .wenable(wrenable_reg_10));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_MUX_30_reg_12_0_0_0), .wenable(wrenable_reg_12));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_25_i0_fu_is_connected_28872_28955), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_MUX_32_reg_3_0_0_0), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_MUX_33_reg_4_0_0_1), .wenable(wrenable_reg_4));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_21_i0_fu_is_connected_28872_30470), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_truth_not_expr_FU_1_1_20_i2_fu_is_connected_28872_30604), .wenable(wrenable_reg_6));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_25_i1_fu_is_connected_28872_28972), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_MUX_37_reg_8_0_0_0), .wenable(wrenable_reg_8));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_13_i0_fu_is_connected_28872_28989), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288670_ (.out1(proxy_in1_28867), .in1(sig_out_bus_mergerproxy_in1_288670_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288681_ (.out1(proxy_in1_28868), .in1(sig_out_bus_mergerproxy_in1_288681_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288702_ (.out1(proxy_in1_28870), .in1(sig_out_bus_mergerproxy_in1_288702_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288673_ (.out1(proxy_in2_28867), .in1(sig_out_bus_mergerproxy_in2_288673_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288684_ (.out1(proxy_in2_28868), .in1(sig_out_bus_mergerproxy_in2_288684_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288705_ (.out1(proxy_in2_28870), .in1(sig_out_bus_mergerproxy_in2_288705_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288676_ (.out1(proxy_in3_28867), .in1(sig_out_bus_mergerproxy_in3_288676_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288687_ (.out1(proxy_in3_28868), .in1(sig_out_bus_mergerproxy_in3_288687_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288708_ (.out1(proxy_in3_28870), .in1(sig_out_bus_mergerproxy_in3_288708_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_288679_ (.out1(proxy_sel_LOAD_28867), .in1(sig_out_bus_mergerproxy_sel_LOAD_288679_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886810_ (.out1(proxy_sel_LOAD_28868), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886810_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2887011_ (.out1(proxy_sel_LOAD_28870), .in1(sig_out_bus_mergerproxy_sel_LOAD_2887011_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886712_ (.out1(proxy_sel_STORE_28867), .in1(sig_out_bus_mergerproxy_sel_STORE_2886712_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886813_ (.out1(proxy_sel_STORE_28868), .in1(sig_out_bus_mergerproxy_sel_STORE_2886813_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2887014_ (.out1(proxy_sel_STORE_28870), .in1(sig_out_bus_mergerproxy_sel_STORE_2887014_));
  // io-signal post fix
  assign return_port = out_MUX_18_gimple_return_FU_17_i0_0_0_0;
  assign OUT_MULTIIF_is_connected_28872_30584 = out_multi_read_cond_FU_14_i0_fu_is_connected_28872_30584;
  assign OUT_MULTIIF_is_connected_28872_30598 = out_multi_read_cond_FU_16_i0_fu_is_connected_28872_30598;

endmodule

// FSM based controller description for is_connected
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_is_connected(done_port, selector_MUX_18_gimple_return_FU_17_i0_0_0_0, selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0, selector_MUX_30_reg_12_0_0_0, selector_MUX_32_reg_3_0_0_0, selector_MUX_33_reg_4_0_0_0, selector_MUX_33_reg_4_0_0_1, selector_MUX_37_reg_8_0_0_0, selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0, selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1, selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0, fuselector_PROXY_CTRLN_0_i0_LOAD, fuselector_PROXY_CTRLN_0_i0_STORE, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_MULTIIF_is_connected_28872_30584, OUT_MULTIIF_is_connected_28872_30598, clock, reset, start_port);
  // IN
  input [1:0] OUT_MULTIIF_is_connected_28872_30584;
  input [2:0] OUT_MULTIIF_is_connected_28872_30598;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_MUX_18_gimple_return_FU_17_i0_0_0_0;
  output selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0;
  output selector_MUX_30_reg_12_0_0_0;
  output selector_MUX_32_reg_3_0_0_0;
  output selector_MUX_33_reg_4_0_0_0;
  output selector_MUX_33_reg_4_0_0_1;
  output selector_MUX_37_reg_8_0_0_0;
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
  reg selector_MUX_30_reg_12_0_0_0;
  reg selector_MUX_32_reg_3_0_0_0;
  reg selector_MUX_33_reg_4_0_0_0;
  reg selector_MUX_33_reg_4_0_0_1;
  reg selector_MUX_37_reg_8_0_0_0;
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
    selector_MUX_30_reg_12_0_0_0 = 1'b0;
    selector_MUX_32_reg_3_0_0_0 = 1'b0;
    selector_MUX_33_reg_4_0_0_0 = 1'b0;
    selector_MUX_33_reg_4_0_0_1 = 1'b0;
    selector_MUX_37_reg_8_0_0_0 = 1'b0;
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
          selector_MUX_32_reg_3_0_0_0 = 1'b1;
          selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_1_i0_STORE = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_12 = 1'b1;
          wrenable_reg_3 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          selector_MUX_18_gimple_return_FU_17_i0_0_0_0 = 1'bX;
          selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0 = 1'bX;
          selector_MUX_30_reg_12_0_0_0 = 1'bX;
          selector_MUX_32_reg_3_0_0_0 = 1'bX;
          selector_MUX_33_reg_4_0_0_0 = 1'bX;
          selector_MUX_33_reg_4_0_0_1 = 1'bX;
          selector_MUX_37_reg_8_0_0_0 = 1'bX;
          selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0 = 1'bX;
          selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1 = 1'bX;
          selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_10 = 1'bX;
          wrenable_reg_11 = 1'bX;
          wrenable_reg_12 = 1'bX;
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
          selector_MUX_37_reg_8_0_0_0 = 1'b1;
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
          selector_MUX_33_reg_4_0_0_1 = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_7 = 1'b1;
          wrenable_reg_8 = 1'b1;
          wrenable_reg_9 = 1'b1;
          if (OUT_MULTIIF_is_connected_28872_30584[0] == 1'b1)
            begin
              _next_state = S_3;
              selector_MUX_33_reg_4_0_0_1 = 1'b0;
              wrenable_reg_4 = 1'b0;
            end
          else if (OUT_MULTIIF_is_connected_28872_30584[1] == 1'b1)
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
              selector_MUX_33_reg_4_0_0_1 = 1'b0;
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
          _next_state = S_5;
        end
      S_5 :
        begin
          selector_MUX_30_reg_12_0_0_0 = 1'b1;
          selector_MUX_33_reg_4_0_0_0 = 1'b1;
          wrenable_reg_12 = 1'b1;
          wrenable_reg_4 = 1'b1;
          if (OUT_MULTIIF_is_connected_28872_30598[2] == 1'b1)
            begin
              _next_state = S_2;
              selector_MUX_30_reg_12_0_0_0 = 1'b0;
              wrenable_reg_12 = 1'b0;
            end
          else if (OUT_MULTIIF_is_connected_28872_30598[0] == 1'b1)
            begin
              _next_state = S_1;
              selector_MUX_33_reg_4_0_0_0 = 1'b0;
              wrenable_reg_4 = 1'b0;
            end
          else if (OUT_MULTIIF_is_connected_28872_30598[1] == 1'b1)
            begin
              _next_state = S_6;
              done_port = 1'b1;
              selector_MUX_30_reg_12_0_0_0 = 1'b0;
              selector_MUX_33_reg_4_0_0_0 = 1'b0;
              wrenable_reg_12 = 1'b0;
              wrenable_reg_4 = 1'b0;
            end
          else
            begin
              _next_state = S_7;
              done_port = 1'b1;
              selector_MUX_30_reg_12_0_0_0 = 1'b0;
              selector_MUX_33_reg_4_0_0_0 = 1'b0;
              wrenable_reg_12 = 1'b0;
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
          selector_MUX_30_reg_12_0_0_0 = 1'bX;
          selector_MUX_32_reg_3_0_0_0 = 1'bX;
          selector_MUX_33_reg_4_0_0_0 = 1'bX;
          selector_MUX_33_reg_4_0_0_1 = 1'bX;
          selector_MUX_37_reg_8_0_0_0 = 1'bX;
          selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0 = 1'bX;
          selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1 = 1'bX;
          selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_10 = 1'bX;
          wrenable_reg_11 = 1'bX;
          wrenable_reg_12 = 1'bX;
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
  input [63:0] proxy_out1_28867;
  input [63:0] proxy_out1_28868;
  input [63:0] proxy_out1_28870;
  // OUT
  output done_port;
  output signed [7:0] return_port;
  output [63:0] proxy_in1_28867;
  output [17:0] proxy_in2_28867;
  output [11:0] proxy_in3_28867;
  output [1:0] proxy_sel_LOAD_28867;
  output [1:0] proxy_sel_STORE_28867;
  output [63:0] proxy_in1_28868;
  output [17:0] proxy_in2_28868;
  output [11:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [63:0] proxy_in1_28870;
  output [17:0] proxy_in2_28870;
  output [11:0] proxy_in3_28870;
  output [1:0] proxy_sel_LOAD_28870;
  output [1:0] proxy_sel_STORE_28870;
  // Component and signal declarations
  wire [1:0] OUT_MULTIIF_is_connected_28872_30584;
  wire [2:0] OUT_MULTIIF_is_connected_28872_30598;
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
  wire selector_MUX_30_reg_12_0_0_0;
  wire selector_MUX_32_reg_3_0_0_0;
  wire selector_MUX_33_reg_4_0_0_0;
  wire selector_MUX_33_reg_4_0_0_1;
  wire selector_MUX_37_reg_8_0_0_0;
  wire selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0;
  wire selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1;
  wire selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0;
  wire wrenable_reg_0;
  wire wrenable_reg_1;
  wire wrenable_reg_10;
  wire wrenable_reg_11;
  wire wrenable_reg_12;
  wire wrenable_reg_2;
  wire wrenable_reg_3;
  wire wrenable_reg_4;
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  controller_is_connected Controller_i (.done_port(done_delayed_REG_signal_in), .selector_MUX_18_gimple_return_FU_17_i0_0_0_0(selector_MUX_18_gimple_return_FU_17_i0_0_0_0), .selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0(selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0), .selector_MUX_30_reg_12_0_0_0(selector_MUX_30_reg_12_0_0_0), .selector_MUX_32_reg_3_0_0_0(selector_MUX_32_reg_3_0_0_0), .selector_MUX_33_reg_4_0_0_0(selector_MUX_33_reg_4_0_0_0), .selector_MUX_33_reg_4_0_0_1(selector_MUX_33_reg_4_0_0_1), .selector_MUX_37_reg_8_0_0_0(selector_MUX_37_reg_8_0_0_0), .selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0(selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0), .selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1(selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1), .selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0(selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0), .fuselector_PROXY_CTRLN_0_i0_LOAD(fuselector_PROXY_CTRLN_0_i0_LOAD), .fuselector_PROXY_CTRLN_0_i0_STORE(fuselector_PROXY_CTRLN_0_i0_STORE), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_MULTIIF_is_connected_28872_30584(OUT_MULTIIF_is_connected_28872_30584), .OUT_MULTIIF_is_connected_28872_30598(OUT_MULTIIF_is_connected_28872_30598), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_is_connected #(.MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) Datapath_i (.return_port(return_port), .proxy_in1_28867(proxy_in1_28867), .proxy_in2_28867(proxy_in2_28867), .proxy_in3_28867(proxy_in3_28867), .proxy_sel_LOAD_28867(proxy_sel_LOAD_28867), .proxy_sel_STORE_28867(proxy_sel_STORE_28867), .proxy_in1_28868(proxy_in1_28868), .proxy_in2_28868(proxy_in2_28868), .proxy_in3_28868(proxy_in3_28868), .proxy_sel_LOAD_28868(proxy_sel_LOAD_28868), .proxy_sel_STORE_28868(proxy_sel_STORE_28868), .proxy_in1_28870(proxy_in1_28870), .proxy_in2_28870(proxy_in2_28870), .proxy_in3_28870(proxy_in3_28870), .proxy_sel_LOAD_28870(proxy_sel_LOAD_28870), .proxy_sel_STORE_28870(proxy_sel_STORE_28870), .OUT_MULTIIF_is_connected_28872_30584(OUT_MULTIIF_is_connected_28872_30584), .OUT_MULTIIF_is_connected_28872_30598(OUT_MULTIIF_is_connected_28872_30598), .clock(clock), .reset(reset), .proxy_out1_28867(proxy_out1_28867), .proxy_out1_28868(proxy_out1_28868), .proxy_out1_28870(proxy_out1_28870), .selector_MUX_18_gimple_return_FU_17_i0_0_0_0(selector_MUX_18_gimple_return_FU_17_i0_0_0_0), .selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0(selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0), .selector_MUX_30_reg_12_0_0_0(selector_MUX_30_reg_12_0_0_0), .selector_MUX_32_reg_3_0_0_0(selector_MUX_32_reg_3_0_0_0), .selector_MUX_33_reg_4_0_0_0(selector_MUX_33_reg_4_0_0_0), .selector_MUX_33_reg_4_0_0_1(selector_MUX_33_reg_4_0_0_1), .selector_MUX_37_reg_8_0_0_0(selector_MUX_37_reg_8_0_0_0), .selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0(selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0), .selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1(selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1), .selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0(selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0), .fuselector_PROXY_CTRLN_0_i0_LOAD(fuselector_PROXY_CTRLN_0_i0_LOAD), .fuselector_PROXY_CTRLN_0_i0_STORE(fuselector_PROXY_CTRLN_0_i0_STORE), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
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
module ui_ternary_mp_expr_FU(in1, in2, in3, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_in3=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  input [BITSIZE_in3-1:0] in3;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 - in2 + in3;
endmodule

// Datapath RTL description for kruskalF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_kruskalF(clock, reset, in_port_a, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, proxy_out1_28867, proxy_in1_28867, proxy_in2_28867, proxy_in3_28867, proxy_sel_LOAD_28867, proxy_sel_STORE_28867, proxy_out1_28868, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, proxy_out1_28869, proxy_in1_28869, proxy_in2_28869, proxy_in3_28869, proxy_sel_LOAD_28869, proxy_sel_STORE_28869, proxy_out1_28870, proxy_in1_28870, proxy_in2_28870, proxy_in3_28870, proxy_sel_LOAD_28870, proxy_sel_STORE_28870, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_5_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_5_i0_STORE, fuselector_BMEMORY_CTRLN_129_i0_LOAD, fuselector_BMEMORY_CTRLN_129_i0_STORE, selector_MUX_163_reg_18_0_0_0, selector_MUX_164_reg_19_0_0_0, selector_MUX_166_reg_20_0_0_0, selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0, selector_MUX_170_reg_24_0_0_0, selector_MUX_175_reg_29_0_0_0, selector_MUX_177_reg_30_0_0_0, selector_MUX_178_reg_31_0_0_0, selector_MUX_179_reg_32_0_0_0, selector_MUX_180_reg_33_0_0_0, selector_MUX_185_reg_38_0_0_0, selector_MUX_188_reg_40_0_0_0, selector_MUX_191_reg_43_0_0_0, selector_MUX_192_reg_44_0_0_0, selector_MUX_193_reg_45_0_0_0, selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0, selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_0, selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_1, selector_MUX_221_reg_70_0_0_0, selector_MUX_25_BMEMORY_CTRLN_129_i0_1_0_0, selector_MUX_48_PROXY_CTRLN_7_i0_0_0_0, selector_MUX_49_PROXY_CTRLN_7_i0_1_0_0, selector_MUX_4_ARRAY_1D_STD_BRAM_NN_1_i0_0_0_0, selector_MUX_52_PROXY_CTRLN_8_i0_0_0_0, selector_MUX_53_PROXY_CTRLN_8_i0_1_0_0, selector_MUX_53_PROXY_CTRLN_8_i0_1_0_1, selector_MUX_56_PROXY_CTRLN_8_i1_0_0_0, selector_MUX_57_PROXY_CTRLN_8_i1_1_0_0, selector_MUX_57_PROXY_CTRLN_8_i1_1_0_1, selector_MUX_61_PROXY_CTRLN_9_i0_1_0_0, selector_MUX_61_PROXY_CTRLN_9_i0_1_0_1, selector_MUX_61_PROXY_CTRLN_9_i0_1_1_0, fuselector_PROXY_CTRLN_6_i0_LOAD, fuselector_PROXY_CTRLN_6_i0_STORE, fuselector_PROXY_CTRLN_7_i0_LOAD, fuselector_PROXY_CTRLN_7_i0_STORE, fuselector_PROXY_CTRLN_8_i0_LOAD, fuselector_PROXY_CTRLN_8_i0_STORE, fuselector_PROXY_CTRLN_8_i1_LOAD, fuselector_PROXY_CTRLN_8_i1_STORE, fuselector_PROXY_CTRLN_9_i0_LOAD, fuselector_PROXY_CTRLN_9_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_29, wrenable_reg_3, wrenable_reg_30, wrenable_reg_31, wrenable_reg_32, wrenable_reg_33, wrenable_reg_34, wrenable_reg_35, wrenable_reg_36, wrenable_reg_37, wrenable_reg_38, wrenable_reg_39, wrenable_reg_4, wrenable_reg_40, wrenable_reg_41, wrenable_reg_42, wrenable_reg_43, wrenable_reg_44, wrenable_reg_45, wrenable_reg_46, wrenable_reg_47, wrenable_reg_48, wrenable_reg_49, wrenable_reg_5, wrenable_reg_50, wrenable_reg_51, wrenable_reg_52, wrenable_reg_53, wrenable_reg_54, wrenable_reg_55, wrenable_reg_56, wrenable_reg_57, wrenable_reg_58, wrenable_reg_59, wrenable_reg_6, wrenable_reg_60, wrenable_reg_61, wrenable_reg_62, wrenable_reg_63, wrenable_reg_64, wrenable_reg_65, wrenable_reg_66, wrenable_reg_67, wrenable_reg_68, wrenable_reg_69, wrenable_reg_7, wrenable_reg_70, wrenable_reg_71, wrenable_reg_72, wrenable_reg_73, wrenable_reg_74, wrenable_reg_75, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_kruskalF_28880_29572, OUT_CONDITION_kruskalF_28880_29830, OUT_CONDITION_kruskalF_28880_29839, OUT_CONDITION_kruskalF_28880_29842, OUT_CONDITION_kruskalF_28880_29857, OUT_CONDITION_kruskalF_28880_29863, OUT_CONDITION_kruskalF_28880_29868, OUT_MULTIIF_kruskalF_28880_30610);
  parameter MEM_var_28859_28880=160, MEM_var_28861_28880=192, MEM_var_28862_28880=224, MEM_var_28864_28880=256, MEM_var_28865_28880=288, MEM_var_28866_28880=320, MEM_var_28867_28882=32, MEM_var_28868_28882=64, MEM_var_28869_28882=96, MEM_var_28870_28882=128;
  // IN
  input clock;
  input reset;
  input [31:0] in_port_a;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [17:0] S_addr_ram;
  input [63:0] S_Wdata_ram;
  input [11:0] S_data_ram_size;
  input [63:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [63:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [63:0] proxy_out1_28867;
  input [63:0] proxy_out1_28868;
  input [63:0] proxy_out1_28869;
  input [63:0] proxy_out1_28870;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [17:0] Min_addr_ram;
  input [63:0] Min_Wdata_ram;
  input [11:0] Min_data_ram_size;
  input fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_5_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_5_i0_STORE;
  input fuselector_BMEMORY_CTRLN_129_i0_LOAD;
  input fuselector_BMEMORY_CTRLN_129_i0_STORE;
  input selector_MUX_163_reg_18_0_0_0;
  input selector_MUX_164_reg_19_0_0_0;
  input selector_MUX_166_reg_20_0_0_0;
  input selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0;
  input selector_MUX_170_reg_24_0_0_0;
  input selector_MUX_175_reg_29_0_0_0;
  input selector_MUX_177_reg_30_0_0_0;
  input selector_MUX_178_reg_31_0_0_0;
  input selector_MUX_179_reg_32_0_0_0;
  input selector_MUX_180_reg_33_0_0_0;
  input selector_MUX_185_reg_38_0_0_0;
  input selector_MUX_188_reg_40_0_0_0;
  input selector_MUX_191_reg_43_0_0_0;
  input selector_MUX_192_reg_44_0_0_0;
  input selector_MUX_193_reg_45_0_0_0;
  input selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0;
  input selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_0;
  input selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_1;
  input selector_MUX_221_reg_70_0_0_0;
  input selector_MUX_25_BMEMORY_CTRLN_129_i0_1_0_0;
  input selector_MUX_48_PROXY_CTRLN_7_i0_0_0_0;
  input selector_MUX_49_PROXY_CTRLN_7_i0_1_0_0;
  input selector_MUX_4_ARRAY_1D_STD_BRAM_NN_1_i0_0_0_0;
  input selector_MUX_52_PROXY_CTRLN_8_i0_0_0_0;
  input selector_MUX_53_PROXY_CTRLN_8_i0_1_0_0;
  input selector_MUX_53_PROXY_CTRLN_8_i0_1_0_1;
  input selector_MUX_56_PROXY_CTRLN_8_i1_0_0_0;
  input selector_MUX_57_PROXY_CTRLN_8_i1_1_0_0;
  input selector_MUX_57_PROXY_CTRLN_8_i1_1_0_1;
  input selector_MUX_61_PROXY_CTRLN_9_i0_1_0_0;
  input selector_MUX_61_PROXY_CTRLN_9_i0_1_0_1;
  input selector_MUX_61_PROXY_CTRLN_9_i0_1_1_0;
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
  input wrenable_reg_63;
  input wrenable_reg_64;
  input wrenable_reg_65;
  input wrenable_reg_66;
  input wrenable_reg_67;
  input wrenable_reg_68;
  input wrenable_reg_69;
  input wrenable_reg_7;
  input wrenable_reg_70;
  input wrenable_reg_71;
  input wrenable_reg_72;
  input wrenable_reg_73;
  input wrenable_reg_74;
  input wrenable_reg_75;
  input wrenable_reg_8;
  input wrenable_reg_9;
  // OUT
  output [63:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [63:0] proxy_in1_28867;
  output [17:0] proxy_in2_28867;
  output [11:0] proxy_in3_28867;
  output [1:0] proxy_sel_LOAD_28867;
  output [1:0] proxy_sel_STORE_28867;
  output [63:0] proxy_in1_28868;
  output [17:0] proxy_in2_28868;
  output [11:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [63:0] proxy_in1_28869;
  output [17:0] proxy_in2_28869;
  output [11:0] proxy_in3_28869;
  output [1:0] proxy_sel_LOAD_28869;
  output [1:0] proxy_sel_STORE_28869;
  output [63:0] proxy_in1_28870;
  output [17:0] proxy_in2_28870;
  output [11:0] proxy_in3_28870;
  output [1:0] proxy_sel_LOAD_28870;
  output [1:0] proxy_sel_STORE_28870;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [17:0] Mout_addr_ram;
  output [63:0] Mout_Wdata_ram;
  output [11:0] Mout_data_ram_size;
  output OUT_CONDITION_kruskalF_28880_29572;
  output OUT_CONDITION_kruskalF_28880_29830;
  output OUT_CONDITION_kruskalF_28880_29839;
  output OUT_CONDITION_kruskalF_28880_29842;
  output OUT_CONDITION_kruskalF_28880_29857;
  output OUT_CONDITION_kruskalF_28880_29863;
  output OUT_CONDITION_kruskalF_28880_29868;
  output [1:0] OUT_MULTIIF_kruskalF_28880_30610;
  // Component and signal declarations
  wire null_out_signal_BMEMORY_CTRLN_129_i0_out1_0;
  wire null_out_signal_BMEMORY_CTRLN_129_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_6_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_6_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_7_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_9_i0_out1_1;
  wire [7:0] null_out_signal_array_28859_0_out1_1;
  wire [31:0] null_out_signal_array_28859_0_proxy_out1_0;
  wire [31:0] null_out_signal_array_28859_0_proxy_out1_1;
  wire [7:0] null_out_signal_array_28861_0_out1_1;
  wire [31:0] null_out_signal_array_28861_0_proxy_out1_0;
  wire [31:0] null_out_signal_array_28861_0_proxy_out1_1;
  wire [7:0] null_out_signal_array_28862_0_out1_1;
  wire [31:0] null_out_signal_array_28862_0_proxy_out1_0;
  wire [31:0] null_out_signal_array_28862_0_proxy_out1_1;
  wire [7:0] null_out_signal_array_28864_0_out1_1;
  wire [31:0] null_out_signal_array_28864_0_proxy_out1_0;
  wire [31:0] null_out_signal_array_28864_0_proxy_out1_1;
  wire [7:0] null_out_signal_array_28865_0_out1_0;
  wire [7:0] null_out_signal_array_28865_0_out1_1;
  wire [31:0] null_out_signal_array_28865_0_proxy_out1_0;
  wire [31:0] null_out_signal_array_28865_0_proxy_out1_1;
  wire [7:0] null_out_signal_array_28866_0_out1_0;
  wire [7:0] null_out_signal_array_28866_0_out1_1;
  wire [31:0] null_out_signal_array_28866_0_proxy_out1_0;
  wire [31:0] null_out_signal_array_28866_0_proxy_out1_1;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_0_i0_array_28859_0;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_1_i0_array_28861_0;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_2_i0_array_28862_0;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_3_i0_array_28864_0;
  wire signed [7:0] out_IIdata_converter_FU_108_i0_fu_kruskalF_28880_29856;
  wire signed [7:0] out_IIdata_converter_FU_127_i0_fu_kruskalF_28880_29867;
  wire [7:0] out_IUdata_converter_FU_117_i0_fu_kruskalF_28880_30334;
  wire [1:0] out_IUdata_converter_FU_36_i0_fu_kruskalF_28880_30000;
  wire [7:0] out_IUdata_converter_FU_42_i0_fu_kruskalF_28880_29980;
  wire [7:0] out_IUdata_converter_FU_90_i0_fu_kruskalF_28880_30214;
  wire [7:0] out_IUdata_converter_FU_92_i0_fu_kruskalF_28880_30175;
  wire [7:0] out_IUdata_converter_FU_94_i0_fu_kruskalF_28880_29800;
  wire [7:0] out_MUX_163_reg_18_0_0_0;
  wire [7:0] out_MUX_164_reg_19_0_0_0;
  wire [1:0] out_MUX_166_reg_20_0_0_0;
  wire [7:0] out_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0;
  wire [7:0] out_MUX_170_reg_24_0_0_0;
  wire [7:0] out_MUX_175_reg_29_0_0_0;
  wire [7:0] out_MUX_177_reg_30_0_0_0;
  wire [7:0] out_MUX_178_reg_31_0_0_0;
  wire [7:0] out_MUX_179_reg_32_0_0_0;
  wire [1:0] out_MUX_180_reg_33_0_0_0;
  wire [7:0] out_MUX_185_reg_38_0_0_0;
  wire [31:0] out_MUX_188_reg_40_0_0_0;
  wire [7:0] out_MUX_191_reg_43_0_0_0;
  wire [7:0] out_MUX_192_reg_44_0_0_0;
  wire [7:0] out_MUX_193_reg_45_0_0_0;
  wire [8:0] out_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0;
  wire [7:0] out_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_0;
  wire [7:0] out_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_1;
  wire [31:0] out_MUX_221_reg_70_0_0_0;
  wire [8:0] out_MUX_25_BMEMORY_CTRLN_129_i0_1_0_0;
  wire [7:0] out_MUX_48_PROXY_CTRLN_7_i0_0_0_0;
  wire [8:0] out_MUX_49_PROXY_CTRLN_7_i0_1_0_0;
  wire [7:0] out_MUX_4_ARRAY_1D_STD_BRAM_NN_1_i0_0_0_0;
  wire [7:0] out_MUX_52_PROXY_CTRLN_8_i0_0_0_0;
  wire [8:0] out_MUX_53_PROXY_CTRLN_8_i0_1_0_0;
  wire [8:0] out_MUX_53_PROXY_CTRLN_8_i0_1_0_1;
  wire [7:0] out_MUX_56_PROXY_CTRLN_8_i1_0_0_0;
  wire [8:0] out_MUX_57_PROXY_CTRLN_8_i1_1_0_0;
  wire [8:0] out_MUX_57_PROXY_CTRLN_8_i1_1_0_1;
  wire [8:0] out_MUX_61_PROXY_CTRLN_9_i0_1_0_0;
  wire [8:0] out_MUX_61_PROXY_CTRLN_9_i0_1_0_1;
  wire [8:0] out_MUX_61_PROXY_CTRLN_9_i0_1_1_0;
  wire [7:0] out_PROXY_CTRLN_7_i0_PROXY_CTRLN_7_i0;
  wire [7:0] out_PROXY_CTRLN_8_i0_PROXY_CTRLN_8_i0;
  wire [7:0] out_PROXY_CTRLN_8_i1_PROXY_CTRLN_8_i0;
  wire [7:0] out_PROXY_CTRLN_9_i0_PROXY_CTRLN_9_i0;
  wire signed [8:0] out_UIdata_converter_FU_115_i0_fu_kruskalF_28880_29729;
  wire signed [8:0] out_UIdata_converter_FU_126_i0_fu_kruskalF_28880_29865;
  wire signed [2:0] out_UIdata_converter_FU_35_i0_fu_kruskalF_28880_29511;
  wire signed [8:0] out_UIdata_converter_FU_40_i0_fu_kruskalF_28880_29528;
  wire signed [8:0] out_UIdata_converter_FU_88_i0_fu_kruskalF_28880_29626;
  wire signed [8:0] out_UIdata_converter_FU_89_i0_fu_kruskalF_28880_29746;
  wire signed [8:0] out_UIdata_converter_FU_95_i0_fu_kruskalF_28880_29846;
  wire [6:0] out_UUdata_converter_FU_107_i0_fu_kruskalF_28880_29610;
  wire [9:0] out_UUdata_converter_FU_113_i0_fu_kruskalF_28880_30304;
  wire [7:0] out_UUdata_converter_FU_114_i0_fu_kruskalF_28880_29724;
  wire [9:0] out_UUdata_converter_FU_116_i0_fu_kruskalF_28880_30331;
  wire [9:0] out_UUdata_converter_FU_15_i0_fu_kruskalF_28880_29997;
  wire [6:0] out_UUdata_converter_FU_18_i0_fu_kruskalF_28880_30037;
  wire [31:0] out_UUdata_converter_FU_23_i0_fu_kruskalF_28880_29763;
  wire [31:0] out_UUdata_converter_FU_24_i0_fu_kruskalF_28880_29832;
  wire [7:0] out_UUdata_converter_FU_25_i0_fu_kruskalF_28880_29781;
  wire [31:0] out_UUdata_converter_FU_29_i0_fu_kruskalF_28880_29618;
  wire [31:0] out_UUdata_converter_FU_30_i0_fu_kruskalF_28880_29847;
  wire [1:0] out_UUdata_converter_FU_34_i0_fu_kruskalF_28880_29510;
  wire [8:0] out_UUdata_converter_FU_41_i0_fu_kruskalF_28880_29977;
  wire [1:0] out_UUdata_converter_FU_69_i0_fu_kruskalF_28880_29793;
  wire [7:0] out_UUdata_converter_FU_85_i0_fu_kruskalF_28880_29783;
  wire [8:0] out_UUdata_converter_FU_86_i0_fu_kruskalF_28880_29755;
  wire [8:0] out_UUdata_converter_FU_91_i0_fu_kruskalF_28880_30172;
  wire [7:0] out_UUdata_converter_FU_93_i0_fu_kruskalF_28880_29744;
  wire [6:0] out_addr_expr_FU_12_i0_fu_kruskalF_28880_29966;
  wire [7:0] out_addr_expr_FU_13_i0_fu_kruskalF_28880_29972;
  wire [9:0] out_addr_expr_FU_14_i0_fu_kruskalF_28880_30018;
  wire [5:0] out_addr_expr_FU_16_i0_fu_kruskalF_28880_30033;
  wire [6:0] out_addr_expr_FU_17_i0_fu_kruskalF_28880_30082;
  wire [7:0] out_addr_expr_FU_19_i0_fu_kruskalF_28880_30094;
  wire [8:0] out_addr_expr_FU_20_i0_fu_kruskalF_28880_30102;
  wire [7:0] out_addr_expr_FU_21_i0_fu_kruskalF_28880_30106;
  wire [31:0] out_addr_expr_FU_22_i0_fu_kruskalF_28880_30114;
  wire [8:0] out_addr_expr_FU_26_i0_fu_kruskalF_28880_30144;
  wire [8:0] out_addr_expr_FU_27_i0_fu_kruskalF_28880_30160;
  wire [31:0] out_addr_expr_FU_28_i0_fu_kruskalF_28880_30253;
  wire signed [7:0] out_cond_expr_FU_8_8_8_8_130_i0_fu_kruskalF_28880_29517;
  wire signed [7:0] out_cond_expr_FU_8_8_8_8_130_i1_fu_kruskalF_28880_29547;
  wire signed [7:0] out_cond_expr_FU_8_8_8_8_130_i2_fu_kruskalF_28880_29668;
  wire signed [7:0] out_cond_expr_FU_8_8_8_8_130_i3_fu_kruskalF_28880_29675;
  wire signed [7:0] out_cond_expr_FU_8_8_8_8_130_i4_fu_kruskalF_28880_29691;
  wire signed [7:0] out_cond_expr_FU_8_8_8_8_130_i5_fu_kruskalF_28880_29770;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [2:0] out_const_10;
  wire [1:0] out_const_11;
  wire [7:0] out_const_12;
  wire [7:0] out_const_13;
  wire [7:0] out_const_14;
  wire [7:0] out_const_15;
  wire [7:0] out_const_16;
  wire [8:0] out_const_17;
  wire [8:0] out_const_18;
  wire [5:0] out_const_19;
  wire [7:0] out_const_2;
  wire [8:0] out_const_20;
  wire [6:0] out_const_21;
  wire [6:0] out_const_22;
  wire [7:0] out_const_3;
  wire [7:0] out_const_4;
  wire [1:0] out_const_5;
  wire [4:0] out_const_6;
  wire [7:0] out_const_7;
  wire out_const_8;
  wire [1:0] out_const_9;
  wire [8:0] out_conv_out_addr_expr_FU_12_i0_fu_kruskalF_28880_29966_7_9;
  wire [8:0] out_conv_out_addr_expr_FU_13_i0_fu_kruskalF_28880_29972_8_9;
  wire [31:0] out_conv_out_const_13_8_32;
  wire [31:0] out_conv_out_const_14_8_32;
  wire [31:0] out_conv_out_const_15_8_32;
  wire [31:0] out_conv_out_const_16_8_32;
  wire [31:0] out_conv_out_const_17_9_32;
  wire [31:0] out_conv_out_const_18_9_32;
  wire [31:0] out_conv_out_const_19_6_32;
  wire [31:0] out_conv_out_const_20_9_32;
  wire [31:0] out_conv_out_const_21_7_32;
  wire [31:0] out_conv_out_const_22_7_32;
  wire [5:0] out_conv_out_const_6_5_6;
  wire [8:0] out_conv_out_reg_10_reg_10_7_9;
  wire [8:0] out_conv_out_reg_11_reg_11_7_9;
  wire [8:0] out_conv_out_reg_12_reg_12_8_9;
  wire [8:0] out_conv_out_reg_14_reg_14_8_9;
  wire [8:0] out_conv_out_reg_25_reg_25_8_9;
  wire [8:0] out_conv_out_reg_35_reg_35_8_9;
  wire [8:0] out_conv_out_reg_41_reg_41_8_9;
  wire [8:0] out_conv_out_reg_55_reg_55_7_9;
  wire [8:0] out_conv_out_reg_56_reg_56_7_9;
  wire [8:0] out_conv_out_reg_58_reg_58_8_9;
  wire [8:0] out_conv_out_reg_5_reg_5_7_9;
  wire [8:0] out_conv_out_reg_69_reg_69_7_9;
  wire [8:0] out_conv_out_reg_6_reg_6_8_9;
  wire [8:0] out_conv_out_reg_8_reg_8_6_9;
  wire [8:0] out_conv_out_reg_9_reg_9_7_9;
  wire [1:0] out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_9_1_2;
  wire [7:0] out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_10_2_8;
  wire [1:0] out_conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_11_1_2;
  wire out_eq_expr_FU_16_16_16_131_i0_fu_kruskalF_28880_30488;
  wire out_gt_expr_FU_8_0_8_132_i0_fu_kruskalF_28880_30480;
  wire [7:0] out_iu_conv_conn_obj_11_IUdata_converter_FU_iu_conv_0;
  wire [7:0] out_iu_conv_conn_obj_14_IUdata_converter_FU_iu_conv_1;
  wire [7:0] out_iu_conv_conn_obj_16_IUdata_converter_FU_iu_conv_2;
  wire [7:0] out_iu_conv_conn_obj_17_IUdata_converter_FU_iu_conv_3;
  wire [7:0] out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_4;
  wire [7:0] out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_5;
  wire [7:0] out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_6;
  wire [7:0] out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_7;
  wire [7:0] out_iu_conv_conn_obj_8_IUdata_converter_FU_iu_conv_8;
  wire out_le_expr_FU_8_8_8_133_i0_fu_kruskalF_28880_29650;
  wire out_le_expr_FU_8_8_8_133_i1_fu_kruskalF_28880_29684;
  wire out_lt_expr_FU_16_16_16_134_i0_fu_kruskalF_28880_30492;
  wire [1:0] out_multi_read_cond_FU_43_i0_fu_kruskalF_28880_30610;
  wire out_ne_expr_FU_8_0_8_135_i0_ne_expr_FU_8_0_8_135_i0;
  wire out_ne_expr_FU_8_8_8_136_i0_fu_kruskalF_28880_30486;
  wire signed [7:0] out_plus_expr_FU_8_0_8_137_i0_fu_kruskalF_28880_29538;
  wire out_read_cond_FU_109_i0_fu_kruskalF_28880_29857;
  wire out_read_cond_FU_111_i0_fu_kruskalF_28880_29863;
  wire out_read_cond_FU_128_i0_fu_kruskalF_28880_29868;
  wire out_read_cond_FU_44_i0_fu_kruskalF_28880_29572;
  wire out_read_cond_FU_70_i0_fu_kruskalF_28880_29830;
  wire out_read_cond_FU_87_i0_fu_kruskalF_28880_29839;
  wire out_read_cond_FU_96_i0_fu_kruskalF_28880_29842;
  wire [31:0] out_reg_0_reg_0;
  wire [6:0] out_reg_10_reg_10;
  wire [6:0] out_reg_11_reg_11;
  wire [7:0] out_reg_12_reg_12;
  wire [8:0] out_reg_13_reg_13;
  wire [7:0] out_reg_14_reg_14;
  wire [31:0] out_reg_15_reg_15;
  wire [8:0] out_reg_16_reg_16;
  wire [8:0] out_reg_17_reg_17;
  wire [7:0] out_reg_18_reg_18;
  wire [7:0] out_reg_19_reg_19;
  wire [31:0] out_reg_1_reg_1;
  wire [1:0] out_reg_20_reg_20;
  wire [3:0] out_reg_21_reg_21;
  wire out_reg_22_reg_22;
  wire [7:0] out_reg_23_reg_23;
  wire [7:0] out_reg_24_reg_24;
  wire [7:0] out_reg_25_reg_25;
  wire out_reg_26_reg_26;
  wire out_reg_27_reg_27;
  wire out_reg_28_reg_28;
  wire [7:0] out_reg_29_reg_29;
  wire [7:0] out_reg_2_reg_2;
  wire [7:0] out_reg_30_reg_30;
  wire [7:0] out_reg_31_reg_31;
  wire [7:0] out_reg_32_reg_32;
  wire [1:0] out_reg_33_reg_33;
  wire [1:0] out_reg_34_reg_34;
  wire [7:0] out_reg_35_reg_35;
  wire out_reg_36_reg_36;
  wire [7:0] out_reg_37_reg_37;
  wire [7:0] out_reg_38_reg_38;
  wire [7:0] out_reg_39_reg_39;
  wire [31:0] out_reg_3_reg_3;
  wire [31:0] out_reg_40_reg_40;
  wire [7:0] out_reg_41_reg_41;
  wire out_reg_42_reg_42;
  wire [7:0] out_reg_43_reg_43;
  wire [7:0] out_reg_44_reg_44;
  wire [7:0] out_reg_45_reg_45;
  wire [7:0] out_reg_46_reg_46;
  wire [7:0] out_reg_47_reg_47;
  wire [7:0] out_reg_48_reg_48;
  wire [6:0] out_reg_49_reg_49;
  wire [31:0] out_reg_4_reg_4;
  wire out_reg_50_reg_50;
  wire [7:0] out_reg_51_reg_51;
  wire [6:0] out_reg_52_reg_52;
  wire out_reg_53_reg_53;
  wire [8:0] out_reg_54_reg_54;
  wire [6:0] out_reg_55_reg_55;
  wire [6:0] out_reg_56_reg_56;
  wire [9:0] out_reg_57_reg_57;
  wire [7:0] out_reg_58_reg_58;
  wire [7:0] out_reg_59_reg_59;
  wire [6:0] out_reg_5_reg_5;
  wire [8:0] out_reg_60_reg_60;
  wire [7:0] out_reg_61_reg_61;
  wire [7:0] out_reg_62_reg_62;
  wire [6:0] out_reg_63_reg_63;
  wire out_reg_64_reg_64;
  wire [9:0] out_reg_65_reg_65;
  wire [8:0] out_reg_66_reg_66;
  wire [7:0] out_reg_67_reg_67;
  wire [8:0] out_reg_68_reg_68;
  wire [6:0] out_reg_69_reg_69;
  wire [7:0] out_reg_6_reg_6;
  wire [31:0] out_reg_70_reg_70;
  wire [7:0] out_reg_71_reg_71;
  wire [7:0] out_reg_72_reg_72;
  wire [7:0] out_reg_73_reg_73;
  wire [7:0] out_reg_74_reg_74;
  wire out_reg_75_reg_75;
  wire [9:0] out_reg_7_reg_7;
  wire [5:0] out_reg_8_reg_8;
  wire [6:0] out_reg_9_reg_9;
  wire out_truth_and_expr_FU_1_1_1_138_i0_fu_kruskalF_28880_30616;
  wire out_truth_not_expr_FU_1_1_139_i0_fu_kruskalF_28880_30613;
  wire [0:0] out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_9;
  wire [1:0] out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_10;
  wire [0:0] out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_11;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_140_i0_fu_kruskalF_28880_30527;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_140_i1_fu_kruskalF_28880_30547;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_141_i0_fu_kruskalF_28880_30566;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_141_i1_fu_kruskalF_28880_30582;
  wire [0:0] out_ui_bit_and_expr_FU_1_1_1_142_i0_fu_kruskalF_28880_29646;
  wire [0:0] out_ui_bit_and_expr_FU_1_1_1_142_i1_fu_kruskalF_28880_29680;
  wire [3:0] out_ui_bit_ior_concat_expr_FU_143_i0_fu_kruskalF_28880_30026;
  wire [9:0] out_ui_bit_ior_concat_expr_FU_144_i0_fu_kruskalF_28880_30243;
  wire [9:0] out_ui_bit_ior_concat_expr_FU_145_i0_fu_kruskalF_28880_30301;
  wire [9:0] out_ui_bit_ior_concat_expr_FU_145_i1_fu_kruskalF_28880_30324;
  wire [7:0] out_ui_cond_expr_FU_8_8_8_8_146_i0_fu_kruskalF_28880_29641;
  wire [7:0] out_ui_cond_expr_FU_8_8_8_8_146_i1_fu_kruskalF_28880_29789;
  wire [7:0] out_ui_cond_expr_FU_8_8_8_8_146_i2_fu_kruskalF_28880_29811;
  wire [7:0] out_ui_cond_expr_FU_8_8_8_8_146_i3_fu_kruskalF_28880_29818;
  wire [8:0] out_ui_lshift_expr_FU_16_0_16_147_i0_fu_kruskalF_28880_30240;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_147_i1_fu_kruskalF_28880_30543;
  wire [8:0] out_ui_lshift_expr_FU_16_0_16_148_i0_fu_kruskalF_28880_30298;
  wire [8:0] out_ui_lshift_expr_FU_16_0_16_148_i1_fu_kruskalF_28880_30321;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_148_i2_fu_kruskalF_28880_30562;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_148_i3_fu_kruskalF_28880_30579;
  wire [2:0] out_ui_lshift_expr_FU_8_0_8_149_i0_fu_kruskalF_28880_30023;
  wire [3:0] out_ui_lshift_expr_FU_8_0_8_149_i1_fu_kruskalF_28880_30523;
  wire out_ui_ne_expr_FU_32_32_32_150_i0_fu_kruskalF_28880_30484;
  wire out_ui_ne_expr_FU_32_32_32_150_i1_fu_kruskalF_28880_30490;
  wire out_ui_ne_expr_FU_8_0_8_151_i0_fu_kruskalF_28880_30476;
  wire out_ui_ne_expr_FU_8_0_8_152_i0_fu_kruskalF_28880_30478;
  wire out_ui_ne_expr_FU_8_0_8_152_i1_fu_kruskalF_28880_30482;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_153_i0_fu_kruskalF_28880_29621;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_153_i1_fu_kruskalF_28880_29766;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_154_i0_fu_kruskalF_28880_29536;
  wire [1:0] out_ui_plus_expr_FU_8_0_8_155_i0_fu_kruskalF_28880_29556;
  wire [1:0] out_ui_plus_expr_FU_8_0_8_155_i1_fu_kruskalF_28880_29703;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_156_i0_fu_kruskalF_28880_29826;
  wire [2:0] out_ui_plus_expr_FU_8_8_8_157_i0_fu_kruskalF_28880_30519;
  wire [8:0] out_ui_plus_expr_FU_8_8_8_157_i1_fu_kruskalF_28880_30539;
  wire [8:0] out_ui_plus_expr_FU_8_8_8_157_i2_ui_plus_expr_FU_8_8_8_157_i2;
  wire [8:0] out_ui_plus_expr_FU_8_8_8_157_i3_fu_kruskalF_28880_30576;
  wire [9:0] out_ui_pointer_plus_expr_FU_16_16_16_158_i0_fu_kruskalF_28880_29711;
  wire [9:0] out_ui_pointer_plus_expr_FU_16_16_16_158_i1_fu_kruskalF_28880_29738;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_0_32_159_i0_fu_kruskalF_28880_30129;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_0_32_160_i0_fu_kruskalF_28880_30261;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_0_8_161_i0_fu_kruskalF_28880_30059;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_0_8_162_i0_fu_kruskalF_28880_30072;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_0_8_163_i0_fu_kruskalF_28880_30140;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_164_i0_fu_kruskalF_28880_29987;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_164_i1_fu_kruskalF_28880_30007;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_164_i2_fu_kruskalF_28880_30117;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_164_i3_fu_kruskalF_28880_30181;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_8_8_164_i4_fu_kruskalF_28880_30194;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_8_8_164_i5_fu_kruskalF_28880_30207;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_164_i6_fu_kruskalF_28880_30220;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_164_i7_fu_kruskalF_28880_30313;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_164_i8_fu_kruskalF_28880_30340;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_165_i0_fu_kruskalF_28880_30532;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_166_i0_fu_kruskalF_28880_30551;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_166_i1_fu_kruskalF_28880_30571;
  wire [1:0] out_ui_rshift_expr_FU_8_0_8_167_i0_fu_kruskalF_28880_30514;
  wire [0:0] out_ui_rshift_expr_FU_8_0_8_167_i1_fu_kruskalF_28880_30517;
  wire [6:0] out_ui_rshift_expr_FU_8_0_8_167_i2_fu_kruskalF_28880_30536;
  wire [6:0] out_ui_rshift_expr_FU_8_0_8_168_i0_fu_kruskalF_28880_30555;
  wire [6:0] out_ui_rshift_expr_FU_8_0_8_168_i1_fu_kruskalF_28880_30574;
  wire [7:0] out_ui_ternary_mp_expr_FU_0_8_8_8_169_i0_fu_kruskalF_28880_29774;
  wire [7:0] out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_12;
  wire [7:0] out_vb_assign_conn_obj_10_ASSIGN_VECTOR_BOOL_FU_vb_assign_13;
  wire [7:0] out_vb_assign_conn_obj_12_ASSIGN_VECTOR_BOOL_FU_vb_assign_14;
  wire [7:0] out_vb_assign_conn_obj_13_ASSIGN_VECTOR_BOOL_FU_vb_assign_15;
  wire [7:0] out_vb_assign_conn_obj_15_ASSIGN_VECTOR_BOOL_FU_vb_assign_16;
  wire [7:0] out_vb_assign_conn_obj_18_ASSIGN_VECTOR_BOOL_FU_vb_assign_17;
  wire [7:0] out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_18;
  wire [63:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [17:0] sig_in_bus_mergerMout_addr_ram1_0;
  wire [11:0] sig_in_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_0;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_1;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_2;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_3;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_4;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_5;
  wire [63:0] sig_in_bus_mergerSout_Rdata_ram6_0;
  wire [63:0] sig_in_bus_mergerSout_Rdata_ram6_1;
  wire [63:0] sig_in_bus_mergerSout_Rdata_ram6_2;
  wire [63:0] sig_in_bus_mergerSout_Rdata_ram6_3;
  wire [63:0] sig_in_bus_mergerSout_Rdata_ram6_4;
  wire [63:0] sig_in_bus_mergerSout_Rdata_ram6_5;
  wire [63:0] sig_in_bus_mergerproxy_in1_288677_0;
  wire [63:0] sig_in_bus_mergerproxy_in1_288688_0;
  wire [63:0] sig_in_bus_mergerproxy_in1_288699_0;
  wire [63:0] sig_in_bus_mergerproxy_in1_2887010_0;
  wire [17:0] sig_in_bus_mergerproxy_in2_2886711_0;
  wire [17:0] sig_in_bus_mergerproxy_in2_2886812_0;
  wire [17:0] sig_in_bus_mergerproxy_in2_2886913_0;
  wire [17:0] sig_in_bus_mergerproxy_in2_2887014_0;
  wire [11:0] sig_in_bus_mergerproxy_in3_2886715_0;
  wire [11:0] sig_in_bus_mergerproxy_in3_2886816_0;
  wire [11:0] sig_in_bus_mergerproxy_in3_2886917_0;
  wire [11:0] sig_in_bus_mergerproxy_in3_2887018_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886719_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886820_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886921_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2887022_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886723_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886824_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886925_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2887026_0;
  wire [63:0] sig_in_vector_bus_mergerMout_Wdata_ram0_0;
  wire [17:0] sig_in_vector_bus_mergerMout_addr_ram1_0;
  wire [11:0] sig_in_vector_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_vector_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_vector_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_1;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_2;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_3;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_4;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_5;
  wire [63:0] sig_in_vector_bus_mergerSout_Rdata_ram6_0;
  wire [63:0] sig_in_vector_bus_mergerSout_Rdata_ram6_1;
  wire [63:0] sig_in_vector_bus_mergerSout_Rdata_ram6_2;
  wire [63:0] sig_in_vector_bus_mergerSout_Rdata_ram6_3;
  wire [63:0] sig_in_vector_bus_mergerSout_Rdata_ram6_4;
  wire [63:0] sig_in_vector_bus_mergerSout_Rdata_ram6_5;
  wire [63:0] sig_in_vector_bus_mergerproxy_in1_288677_0;
  wire [63:0] sig_in_vector_bus_mergerproxy_in1_288688_0;
  wire [63:0] sig_in_vector_bus_mergerproxy_in1_288699_0;
  wire [63:0] sig_in_vector_bus_mergerproxy_in1_2887010_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in2_2886711_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in2_2886812_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in2_2886913_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in2_2887014_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in3_2886715_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in3_2886816_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in3_2886917_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in3_2887018_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886719_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886820_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886921_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2887022_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886723_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886824_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886925_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2887026_0;
  wire [63:0] sig_out_bus_mergerMout_Wdata_ram0_;
  wire [17:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [11:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire [1:0] sig_out_bus_mergerMout_oe_ram3_;
  wire [1:0] sig_out_bus_mergerMout_we_ram4_;
  wire [1:0] sig_out_bus_mergerSout_DataRdy5_;
  wire [63:0] sig_out_bus_mergerSout_Rdata_ram6_;
  wire [63:0] sig_out_bus_mergerproxy_in1_288677_;
  wire [63:0] sig_out_bus_mergerproxy_in1_288688_;
  wire [63:0] sig_out_bus_mergerproxy_in1_288699_;
  wire [63:0] sig_out_bus_mergerproxy_in1_2887010_;
  wire [17:0] sig_out_bus_mergerproxy_in2_2886711_;
  wire [17:0] sig_out_bus_mergerproxy_in2_2886812_;
  wire [17:0] sig_out_bus_mergerproxy_in2_2886913_;
  wire [17:0] sig_out_bus_mergerproxy_in2_2887014_;
  wire [11:0] sig_out_bus_mergerproxy_in3_2886715_;
  wire [11:0] sig_out_bus_mergerproxy_in3_2886816_;
  wire [11:0] sig_out_bus_mergerproxy_in3_2886917_;
  wire [11:0] sig_out_bus_mergerproxy_in3_2887018_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886719_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886820_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886921_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2887022_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886723_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886824_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886925_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2887026_;
  
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) ASSIGN_UNSIGNED_FU_u_assign_10 (.out1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_10), .in1(out_UUdata_converter_FU_34_i0_fu_kruskalF_28880_29510));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_11 (.out1(out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_11), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_9 (.out1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_9), .in1(out_const_0));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_12 (.out1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_12), .in1(out_const_1));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_13 (.out1(out_vb_assign_conn_obj_10_ASSIGN_VECTOR_BOOL_FU_vb_assign_13), .in1(out_const_3));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_14 (.out1(out_vb_assign_conn_obj_12_ASSIGN_VECTOR_BOOL_FU_vb_assign_14), .in1(out_reg_45_reg_45));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_15 (.out1(out_vb_assign_conn_obj_13_ASSIGN_VECTOR_BOOL_FU_vb_assign_15), .in1(out_reg_43_reg_43));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_16 (.out1(out_vb_assign_conn_obj_15_ASSIGN_VECTOR_BOOL_FU_vb_assign_16), .in1(out_reg_67_reg_67));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_17 (.out1(out_vb_assign_conn_obj_18_ASSIGN_VECTOR_BOOL_FU_vb_assign_17), .in1(out_reg_74_reg_74));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_18 (.out1(out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_18), .in1(out_const_4));
  BMEMORY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(1), .PORTSIZE_out1(2), .BITSIZE_Min_oe_ram(1), .PORTSIZE_Min_oe_ram(2), .BITSIZE_Min_we_ram(1), .PORTSIZE_Min_we_ram(2), .BITSIZE_Mout_oe_ram(1), .PORTSIZE_Mout_oe_ram(2), .BITSIZE_Mout_we_ram(1), .PORTSIZE_Mout_we_ram(2), .BITSIZE_M_DataRdy(1), .PORTSIZE_M_DataRdy(2), .BITSIZE_Min_addr_ram(9), .PORTSIZE_Min_addr_ram(2), .BITSIZE_Mout_addr_ram(9), .PORTSIZE_Mout_addr_ram(2), .BITSIZE_M_Rdata_ram(32), .PORTSIZE_M_Rdata_ram(2), .BITSIZE_Min_Wdata_ram(32), .PORTSIZE_Min_Wdata_ram(2), .BITSIZE_Mout_Wdata_ram(32), .PORTSIZE_Mout_Wdata_ram(2), .BITSIZE_Min_data_ram_size(6), .PORTSIZE_Min_data_ram_size(2), .BITSIZE_Mout_data_ram_size(6), .PORTSIZE_Mout_data_ram_size(2)) BMEMORY_CTRLN_129_i0 (.out1({null_out_signal_BMEMORY_CTRLN_129_i0_out1_1, null_out_signal_BMEMORY_CTRLN_129_i0_out1_0}), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .in1({8'b00000000, out_iu_conv_conn_obj_17_IUdata_converter_FU_iu_conv_3}), .in2({9'b000000000, out_MUX_25_BMEMORY_CTRLN_129_i0_1_0_0}), .in3({6'b000000, out_conv_out_const_6_5_6}), .in4({1'b0, out_const_8}), .sel_LOAD({1'b0, fuselector_BMEMORY_CTRLN_129_i0_LOAD}), .sel_STORE({1'b0, fuselector_BMEMORY_CTRLN_129_i0_STORE}), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .M_Rdata_ram(M_Rdata_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .M_DataRdy(M_DataRdy));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_0 (.out1(out_iu_conv_conn_obj_11_IUdata_converter_FU_iu_conv_0), .in1(out_reg_44_reg_44));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_14_IUdata_converter_FU_iu_conv_1), .in1(out_const_12));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_2 (.out1(out_iu_conv_conn_obj_16_IUdata_converter_FU_iu_conv_2), .in1(out_reg_71_reg_71));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_3 (.out1(out_iu_conv_conn_obj_17_IUdata_converter_FU_iu_conv_3), .in1(out_const_12));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_4 (.out1(out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_4), .in1(out_reg_19_reg_19));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_5 (.out1(out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_5), .in1(out_const_1));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_6 (.out1(out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_6), .in1(out_const_2));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_7 (.out1(out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_7), .in1(out_const_3));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_8 (.out1(out_iu_conv_conn_obj_8_IUdata_converter_FU_iu_conv_8), .in1(out_const_7));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_163_reg_18_0_0_0 (.out1(out_MUX_163_reg_18_0_0_0), .sel(selector_MUX_163_reg_18_0_0_0), .in1(out_ARRAY_1D_STD_BRAM_NN_0_i0_array_28859_0), .in2(out_cond_expr_FU_8_8_8_8_130_i0_fu_kruskalF_28880_29517));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_164_reg_19_0_0_0 (.out1(out_MUX_164_reg_19_0_0_0), .sel(selector_MUX_164_reg_19_0_0_0), .in1(out_ARRAY_1D_STD_BRAM_NN_0_i0_array_28859_0), .in2(out_cond_expr_FU_8_8_8_8_130_i1_fu_kruskalF_28880_29547));
  MUX_GATE #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(2)) MUX_166_reg_20_0_0_0 (.out1(out_MUX_166_reg_20_0_0_0), .sel(selector_MUX_166_reg_20_0_0_0), .in1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_9_1_2), .in2(out_ui_plus_expr_FU_8_0_8_155_i0_fu_kruskalF_28880_29556));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0 (.out1(out_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0), .sel(selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0), .in1(out_vb_assign_conn_obj_15_ASSIGN_VECTOR_BOOL_FU_vb_assign_16), .in2(out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_18));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_170_reg_24_0_0_0 (.out1(out_MUX_170_reg_24_0_0_0), .sel(selector_MUX_170_reg_24_0_0_0), .in1(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_10_2_8), .in2(out_ui_plus_expr_FU_8_0_8_154_i0_fu_kruskalF_28880_29536));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_175_reg_29_0_0_0 (.out1(out_MUX_175_reg_29_0_0_0), .sel(selector_MUX_175_reg_29_0_0_0), .in1(out_ARRAY_1D_STD_BRAM_NN_1_i0_array_28861_0), .in2(out_cond_expr_FU_8_8_8_8_130_i3_fu_kruskalF_28880_29675));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_177_reg_30_0_0_0 (.out1(out_MUX_177_reg_30_0_0_0), .sel(selector_MUX_177_reg_30_0_0_0), .in1(out_ARRAY_1D_STD_BRAM_NN_1_i0_array_28861_0), .in2(out_cond_expr_FU_8_8_8_8_130_i4_fu_kruskalF_28880_29691));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_178_reg_31_0_0_0 (.out1(out_MUX_178_reg_31_0_0_0), .sel(selector_MUX_178_reg_31_0_0_0), .in1(out_ARRAY_1D_STD_BRAM_NN_2_i0_array_28862_0), .in2(out_ui_cond_expr_FU_8_8_8_8_146_i1_fu_kruskalF_28880_29789));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_179_reg_32_0_0_0 (.out1(out_MUX_179_reg_32_0_0_0), .sel(selector_MUX_179_reg_32_0_0_0), .in1(out_ARRAY_1D_STD_BRAM_NN_3_i0_array_28864_0), .in2(out_ui_cond_expr_FU_8_8_8_8_146_i3_fu_kruskalF_28880_29818));
  MUX_GATE #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(2)) MUX_180_reg_33_0_0_0 (.out1(out_MUX_180_reg_33_0_0_0), .sel(selector_MUX_180_reg_33_0_0_0), .in1(out_conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_11_1_2), .in2(out_ui_plus_expr_FU_8_0_8_155_i1_fu_kruskalF_28880_29703));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_185_reg_38_0_0_0 (.out1(out_MUX_185_reg_38_0_0_0), .sel(selector_MUX_185_reg_38_0_0_0), .in1(out_cond_expr_FU_8_8_8_8_130_i3_fu_kruskalF_28880_29675), .in2(out_cond_expr_FU_8_8_8_8_130_i5_fu_kruskalF_28880_29770));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_188_reg_40_0_0_0 (.out1(out_MUX_188_reg_40_0_0_0), .sel(selector_MUX_188_reg_40_0_0_0), .in1(out_reg_1_reg_1), .in2(out_ui_plus_expr_FU_32_0_32_153_i1_fu_kruskalF_28880_29766));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_191_reg_43_0_0_0 (.out1(out_MUX_191_reg_43_0_0_0), .sel(selector_MUX_191_reg_43_0_0_0), .in1(out_ui_cond_expr_FU_8_8_8_8_146_i0_fu_kruskalF_28880_29641), .in2(out_ui_cond_expr_FU_8_8_8_8_146_i1_fu_kruskalF_28880_29789));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_192_reg_44_0_0_0 (.out1(out_MUX_192_reg_44_0_0_0), .sel(selector_MUX_192_reg_44_0_0_0), .in1(out_cond_expr_FU_8_8_8_8_130_i2_fu_kruskalF_28880_29668), .in2(out_cond_expr_FU_8_8_8_8_130_i3_fu_kruskalF_28880_29675));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_193_reg_45_0_0_0 (.out1(out_MUX_193_reg_45_0_0_0), .sel(selector_MUX_193_reg_45_0_0_0), .in1(out_ui_cond_expr_FU_8_8_8_8_146_i2_fu_kruskalF_28880_29811), .in2(out_ui_cond_expr_FU_8_8_8_8_146_i3_fu_kruskalF_28880_29818));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0 (.out1(out_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0), .sel(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0), .in1(out_conv_out_reg_6_reg_6_8_9), .in2(out_conv_out_addr_expr_FU_13_i0_fu_kruskalF_28880_29972_8_9));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_0 (.out1(out_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_0), .sel(selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_0), .in1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_12), .in2(out_vb_assign_conn_obj_10_ASSIGN_VECTOR_BOOL_FU_vb_assign_13));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_1 (.out1(out_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_1), .sel(selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_1), .in1(out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_18), .in2(out_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_0));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_221_reg_70_0_0_0 (.out1(out_MUX_221_reg_70_0_0_0), .sel(selector_MUX_221_reg_70_0_0_0), .in1(out_reg_0_reg_0), .in2(out_ui_plus_expr_FU_32_0_32_153_i0_fu_kruskalF_28880_29621));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_25_BMEMORY_CTRLN_129_i0_1_0_0 (.out1(out_MUX_25_BMEMORY_CTRLN_129_i0_1_0_0), .sel(selector_MUX_25_BMEMORY_CTRLN_129_i0_1_0_0), .in1(out_reg_66_reg_66), .in2(out_reg_60_reg_60));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_48_PROXY_CTRLN_7_i0_0_0_0 (.out1(out_MUX_48_PROXY_CTRLN_7_i0_0_0_0), .sel(selector_MUX_48_PROXY_CTRLN_7_i0_0_0_0), .in1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_12), .in2(out_vb_assign_conn_obj_18_ASSIGN_VECTOR_BOOL_FU_vb_assign_17));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_49_PROXY_CTRLN_7_i0_1_0_0 (.out1(out_MUX_49_PROXY_CTRLN_7_i0_1_0_0), .sel(selector_MUX_49_PROXY_CTRLN_7_i0_1_0_0), .in1(out_conv_out_reg_5_reg_5_7_9), .in2(out_conv_out_addr_expr_FU_12_i0_fu_kruskalF_28880_29966_7_9));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_4_ARRAY_1D_STD_BRAM_NN_1_i0_0_0_0 (.out1(out_MUX_4_ARRAY_1D_STD_BRAM_NN_1_i0_0_0_0), .sel(selector_MUX_4_ARRAY_1D_STD_BRAM_NN_1_i0_0_0_0), .in1(out_iu_conv_conn_obj_11_IUdata_converter_FU_iu_conv_0), .in2(out_iu_conv_conn_obj_8_IUdata_converter_FU_iu_conv_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_52_PROXY_CTRLN_8_i0_0_0_0 (.out1(out_MUX_52_PROXY_CTRLN_8_i0_0_0_0), .sel(selector_MUX_52_PROXY_CTRLN_8_i0_0_0_0), .in1(out_iu_conv_conn_obj_16_IUdata_converter_FU_iu_conv_2), .in2(out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_6));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_53_PROXY_CTRLN_8_i0_1_0_0 (.out1(out_MUX_53_PROXY_CTRLN_8_i0_1_0_0), .sel(selector_MUX_53_PROXY_CTRLN_8_i0_1_0_0), .in1(out_conv_out_reg_69_reg_69_7_9), .in2(out_conv_out_reg_55_reg_55_7_9));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_53_PROXY_CTRLN_8_i0_1_0_1 (.out1(out_MUX_53_PROXY_CTRLN_8_i0_1_0_1), .sel(selector_MUX_53_PROXY_CTRLN_8_i0_1_0_1), .in1(out_conv_out_reg_10_reg_10_7_9), .in2(out_MUX_53_PROXY_CTRLN_8_i0_1_0_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_56_PROXY_CTRLN_8_i1_0_0_0 (.out1(out_MUX_56_PROXY_CTRLN_8_i1_0_0_0), .sel(selector_MUX_56_PROXY_CTRLN_8_i1_0_0_0), .in1(out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_5), .in2(out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_7));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_57_PROXY_CTRLN_8_i1_1_0_0 (.out1(out_MUX_57_PROXY_CTRLN_8_i1_1_0_0), .sel(selector_MUX_57_PROXY_CTRLN_8_i1_1_0_0), .in1(out_conv_out_reg_9_reg_9_7_9), .in2(out_conv_out_reg_56_reg_56_7_9));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_57_PROXY_CTRLN_8_i1_1_0_1 (.out1(out_MUX_57_PROXY_CTRLN_8_i1_1_0_1), .sel(selector_MUX_57_PROXY_CTRLN_8_i1_1_0_1), .in1(out_conv_out_reg_11_reg_11_7_9), .in2(out_MUX_57_PROXY_CTRLN_8_i1_1_0_0));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_61_PROXY_CTRLN_9_i0_1_0_0 (.out1(out_MUX_61_PROXY_CTRLN_9_i0_1_0_0), .sel(selector_MUX_61_PROXY_CTRLN_9_i0_1_0_0), .in1(out_conv_out_reg_58_reg_58_8_9), .in2(out_conv_out_reg_41_reg_41_8_9));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_61_PROXY_CTRLN_9_i0_1_0_1 (.out1(out_MUX_61_PROXY_CTRLN_9_i0_1_0_1), .sel(selector_MUX_61_PROXY_CTRLN_9_i0_1_0_1), .in1(out_conv_out_reg_35_reg_35_8_9), .in2(out_conv_out_reg_25_reg_25_8_9));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_61_PROXY_CTRLN_9_i0_1_1_0 (.out1(out_MUX_61_PROXY_CTRLN_9_i0_1_1_0), .sel(selector_MUX_61_PROXY_CTRLN_9_i0_1_1_0), .in1(out_MUX_61_PROXY_CTRLN_9_i0_1_0_0), .in2(out_MUX_61_PROXY_CTRLN_9_i0_1_0_1));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_6_i0 (.out1({null_out_signal_PROXY_CTRLN_6_i0_out1_1, null_out_signal_PROXY_CTRLN_6_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288677_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2886711_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886715_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886719_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886723_0), .in1({8'b00000000, out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_18}), .in2({9'b000000000, out_conv_out_reg_8_reg_8_6_9}), .in3({6'b000000, out_conv_out_const_6_5_6}), .in4({1'b0, out_const_8}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_6_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_6_i0_STORE}), .proxy_out1(proxy_out1_28867));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_7_i0 (.out1({null_out_signal_PROXY_CTRLN_7_i0_out1_1, out_PROXY_CTRLN_7_i0_PROXY_CTRLN_7_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288688_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2886812_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886816_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886820_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886824_0), .in1({8'b00000000, out_MUX_48_PROXY_CTRLN_7_i0_0_0_0}), .in2({9'b000000000, out_MUX_49_PROXY_CTRLN_7_i0_1_0_0}), .in3({6'b000000, out_conv_out_const_6_5_6}), .in4({1'b0, out_const_8}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_7_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_7_i0_STORE}), .proxy_out1(proxy_out1_28868));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_8_i0 (.out1({out_PROXY_CTRLN_8_i1_PROXY_CTRLN_8_i0, out_PROXY_CTRLN_8_i0_PROXY_CTRLN_8_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288699_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2886913_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886917_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886921_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886925_0), .in1({out_MUX_56_PROXY_CTRLN_8_i1_0_0_0, out_MUX_52_PROXY_CTRLN_8_i0_0_0_0}), .in2({out_MUX_57_PROXY_CTRLN_8_i1_1_0_1, out_MUX_53_PROXY_CTRLN_8_i0_1_0_1}), .in3({out_conv_out_const_6_5_6, out_conv_out_const_6_5_6}), .in4({out_const_8, out_const_8}), .sel_LOAD({fuselector_PROXY_CTRLN_8_i1_LOAD, fuselector_PROXY_CTRLN_8_i0_LOAD}), .sel_STORE({fuselector_PROXY_CTRLN_8_i1_STORE, fuselector_PROXY_CTRLN_8_i0_STORE}), .proxy_out1(proxy_out1_28869));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_9_i0 (.out1({null_out_signal_PROXY_CTRLN_9_i0_out1_1, out_PROXY_CTRLN_9_i0_PROXY_CTRLN_9_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_2887010_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2887014_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2887018_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2887022_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2887026_0), .in1({8'b00000000, out_iu_conv_conn_obj_14_IUdata_converter_FU_iu_conv_1}), .in2({9'b000000000, out_MUX_61_PROXY_CTRLN_9_i0_1_1_0}), .in3({6'b000000, out_conv_out_const_6_5_6}), .in4({1'b0, out_const_8}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_9_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_9_i0_STORE}), .proxy_out1(proxy_out1_28870));
  ARRAY_1D_STD_BRAM_NN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(32), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(32), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(32), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(6), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file_a("array_ref_28859.mem"), .MEMORY_INIT_file_b("0_array_ref_28859.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28859_28880), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(16), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) array_28859_0 (.out1({null_out_signal_array_28859_0_out1_1, out_ARRAY_1D_STD_BRAM_NN_0_i0_array_28859_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_0), .proxy_out1({null_out_signal_array_28859_0_proxy_out1_1, null_out_signal_array_28859_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_4}), .in2({9'b000000000, out_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0}), .in3({6'b000000, out_conv_out_const_6_5_6}), .in4({1'b0, out_const_8}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .proxy_in2({9'b000000000, 9'b000000000}), .proxy_in3({6'b000000, 6'b000000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(32), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(32), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(32), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(6), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file_a("array_ref_28861.mem"), .MEMORY_INIT_file_b("0_array_ref_28861.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28861_28880), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(16), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) array_28861_0 (.out1({null_out_signal_array_28861_0_out1_1, out_ARRAY_1D_STD_BRAM_NN_1_i0_array_28861_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_1), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_1), .proxy_out1({null_out_signal_array_28861_0_proxy_out1_1, null_out_signal_array_28861_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_MUX_4_ARRAY_1D_STD_BRAM_NN_1_i0_0_0_0}), .in2({9'b000000000, out_conv_out_reg_12_reg_12_8_9}), .in3({6'b000000, out_conv_out_const_6_5_6}), .in4({1'b0, out_const_8}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .proxy_in2({9'b000000000, 9'b000000000}), .proxy_in3({6'b000000, 6'b000000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(32), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(32), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(32), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(6), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file_a("array_ref_28862.mem"), .MEMORY_INIT_file_b("0_array_ref_28862.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28862_28880), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(16), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) array_28862_0 (.out1({null_out_signal_array_28862_0_out1_1, out_ARRAY_1D_STD_BRAM_NN_2_i0_array_28862_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_2), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_2), .proxy_out1({null_out_signal_array_28862_0_proxy_out1_1, null_out_signal_array_28862_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_vb_assign_conn_obj_13_ASSIGN_VECTOR_BOOL_FU_vb_assign_15}), .in2({9'b000000000, out_conv_out_reg_14_reg_14_8_9}), .in3({6'b000000, out_conv_out_const_6_5_6}), .in4({1'b0, out_const_8}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .proxy_in2({9'b000000000, 9'b000000000}), .proxy_in3({6'b000000, 6'b000000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(32), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(32), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(32), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(6), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file_a("array_ref_28864.mem"), .MEMORY_INIT_file_b("0_array_ref_28864.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28864_28880), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(16), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) array_28864_0 (.out1({null_out_signal_array_28864_0_out1_1, out_ARRAY_1D_STD_BRAM_NN_3_i0_array_28864_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_3), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_3), .proxy_out1({null_out_signal_array_28864_0_proxy_out1_1, null_out_signal_array_28864_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_vb_assign_conn_obj_12_ASSIGN_VECTOR_BOOL_FU_vb_assign_14}), .in2({9'b000000000, out_reg_13_reg_13}), .in3({6'b000000, out_conv_out_const_6_5_6}), .in4({1'b0, out_const_8}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .proxy_in2({9'b000000000, 9'b000000000}), .proxy_in3({6'b000000, 6'b000000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(32), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(32), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(32), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(6), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file_a("array_ref_28865.mem"), .MEMORY_INIT_file_b("0_array_ref_28865.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28865_28880), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(16), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) array_28865_0 (.out1({null_out_signal_array_28865_0_out1_1, null_out_signal_array_28865_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_4), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_4), .proxy_out1({null_out_signal_array_28865_0_proxy_out1_1, null_out_signal_array_28865_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0}), .in2({9'b000000000, out_reg_17_reg_17}), .in3({6'b000000, out_conv_out_const_6_5_6}), .in4({1'b0, out_const_8}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .proxy_in2({9'b000000000, 9'b000000000}), .proxy_in3({6'b000000, 6'b000000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(32), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(32), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(32), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(6), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file_a("array_ref_28866.mem"), .MEMORY_INIT_file_b("0_array_ref_28866.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28866_28880), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(16), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) array_28866_0 (.out1({null_out_signal_array_28866_0_out1_1, null_out_signal_array_28866_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_5), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_5), .proxy_out1({null_out_signal_array_28866_0_proxy_out1_1, null_out_signal_array_28866_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_1}), .in2({9'b000000000, out_reg_16_reg_16}), .in3({6'b000000, out_conv_out_const_6_5_6}), .in4({1'b0, out_const_8}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_5_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_5_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .proxy_in2({9'b000000000, 9'b000000000}), .proxy_in3({6'b000000, 6'b000000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(1), .BITSIZE_out1(12)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(6), .BITSIZE_out1(2)) bus_mergerSout_DataRdy5_ (.out1(sig_out_bus_mergerSout_DataRdy5_), .in1({sig_in_bus_mergerSout_DataRdy5_5, sig_in_bus_mergerSout_DataRdy5_4, sig_in_bus_mergerSout_DataRdy5_3, sig_in_bus_mergerSout_DataRdy5_2, sig_in_bus_mergerSout_DataRdy5_1, sig_in_bus_mergerSout_DataRdy5_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(6), .BITSIZE_out1(64)) bus_mergerSout_Rdata_ram6_ (.out1(sig_out_bus_mergerSout_Rdata_ram6_), .in1({sig_in_bus_mergerSout_Rdata_ram6_5, sig_in_bus_mergerSout_Rdata_ram6_4, sig_in_bus_mergerSout_Rdata_ram6_3, sig_in_bus_mergerSout_Rdata_ram6_2, sig_in_bus_mergerSout_Rdata_ram6_1, sig_in_bus_mergerSout_Rdata_ram6_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerproxy_in1_288677_ (.out1(sig_out_bus_mergerproxy_in1_288677_), .in1({sig_in_bus_mergerproxy_in1_288677_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerproxy_in1_288688_ (.out1(sig_out_bus_mergerproxy_in1_288688_), .in1({sig_in_bus_mergerproxy_in1_288688_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerproxy_in1_288699_ (.out1(sig_out_bus_mergerproxy_in1_288699_), .in1({sig_in_bus_mergerproxy_in1_288699_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerproxy_in1_2887010_ (.out1(sig_out_bus_mergerproxy_in1_2887010_), .in1({sig_in_bus_mergerproxy_in1_2887010_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerproxy_in2_2886711_ (.out1(sig_out_bus_mergerproxy_in2_2886711_), .in1({sig_in_bus_mergerproxy_in2_2886711_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerproxy_in2_2886812_ (.out1(sig_out_bus_mergerproxy_in2_2886812_), .in1({sig_in_bus_mergerproxy_in2_2886812_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerproxy_in2_2886913_ (.out1(sig_out_bus_mergerproxy_in2_2886913_), .in1({sig_in_bus_mergerproxy_in2_2886913_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerproxy_in2_2887014_ (.out1(sig_out_bus_mergerproxy_in2_2887014_), .in1({sig_in_bus_mergerproxy_in2_2887014_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(1), .BITSIZE_out1(12)) bus_mergerproxy_in3_2886715_ (.out1(sig_out_bus_mergerproxy_in3_2886715_), .in1({sig_in_bus_mergerproxy_in3_2886715_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(1), .BITSIZE_out1(12)) bus_mergerproxy_in3_2886816_ (.out1(sig_out_bus_mergerproxy_in3_2886816_), .in1({sig_in_bus_mergerproxy_in3_2886816_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(1), .BITSIZE_out1(12)) bus_mergerproxy_in3_2886917_ (.out1(sig_out_bus_mergerproxy_in3_2886917_), .in1({sig_in_bus_mergerproxy_in3_2886917_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(1), .BITSIZE_out1(12)) bus_mergerproxy_in3_2887018_ (.out1(sig_out_bus_mergerproxy_in3_2887018_), .in1({sig_in_bus_mergerproxy_in3_2887018_0}));
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
  constant_value #(.BITSIZE_out1(3), .value(3'b100)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_11 (.out1(out_const_11));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_12 (.out1(out_const_12));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28870_28882)) const_13 (.out1(out_const_13));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28859_28880)) const_14 (.out1(out_const_14));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28861_28880)) const_15 (.out1(out_const_15));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28862_28880)) const_16 (.out1(out_const_16));
  constant_value #(.BITSIZE_out1(9), .value(MEM_var_28864_28880)) const_17 (.out1(out_const_17));
  constant_value #(.BITSIZE_out1(9), .value(MEM_var_28865_28880)) const_18 (.out1(out_const_18));
  constant_value #(.BITSIZE_out1(6), .value(MEM_var_28867_28882)) const_19 (.out1(out_const_19));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000001)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(9), .value(MEM_var_28866_28880)) const_20 (.out1(out_const_20));
  constant_value #(.BITSIZE_out1(7), .value(MEM_var_28868_28882)) const_21 (.out1(out_const_21));
  constant_value #(.BITSIZE_out1(7), .value(MEM_var_28869_28882)) const_22 (.out1(out_const_22));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000010)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000011)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(2), .value(2'b01)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(8), .value(8'b01111111)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(2), .value(2'b10)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_addr_expr_FU_12_i0_fu_kruskalF_28880_29966_7_9 (.out1(out_conv_out_addr_expr_FU_12_i0_fu_kruskalF_28880_29966_7_9), .in1(out_addr_expr_FU_12_i0_fu_kruskalF_28880_29966));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_addr_expr_FU_13_i0_fu_kruskalF_28880_29972_8_9 (.out1(out_conv_out_addr_expr_FU_13_i0_fu_kruskalF_28880_29972_8_9), .in1(out_addr_expr_FU_13_i0_fu_kruskalF_28880_29972));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_13_8_32 (.out1(out_conv_out_const_13_8_32), .in1(out_const_13));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_14_8_32 (.out1(out_conv_out_const_14_8_32), .in1(out_const_14));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_15_8_32 (.out1(out_conv_out_const_15_8_32), .in1(out_const_15));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_16_8_32 (.out1(out_conv_out_const_16_8_32), .in1(out_const_16));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(32)) conv_out_const_17_9_32 (.out1(out_conv_out_const_17_9_32), .in1(out_const_17));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(32)) conv_out_const_18_9_32 (.out1(out_conv_out_const_18_9_32), .in1(out_const_18));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(32)) conv_out_const_19_6_32 (.out1(out_conv_out_const_19_6_32), .in1(out_const_19));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(32)) conv_out_const_20_9_32 (.out1(out_conv_out_const_20_9_32), .in1(out_const_20));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(32)) conv_out_const_21_7_32 (.out1(out_conv_out_const_21_7_32), .in1(out_const_21));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(32)) conv_out_const_22_7_32 (.out1(out_conv_out_const_22_7_32), .in1(out_const_22));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(6)) conv_out_const_6_5_6 (.out1(out_conv_out_const_6_5_6), .in1(out_const_6));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_10_reg_10_7_9 (.out1(out_conv_out_reg_10_reg_10_7_9), .in1(out_reg_10_reg_10));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_11_reg_11_7_9 (.out1(out_conv_out_reg_11_reg_11_7_9), .in1(out_reg_11_reg_11));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_12_reg_12_8_9 (.out1(out_conv_out_reg_12_reg_12_8_9), .in1(out_reg_12_reg_12));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_14_reg_14_8_9 (.out1(out_conv_out_reg_14_reg_14_8_9), .in1(out_reg_14_reg_14));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_25_reg_25_8_9 (.out1(out_conv_out_reg_25_reg_25_8_9), .in1(out_reg_25_reg_25));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_35_reg_35_8_9 (.out1(out_conv_out_reg_35_reg_35_8_9), .in1(out_reg_35_reg_35));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_41_reg_41_8_9 (.out1(out_conv_out_reg_41_reg_41_8_9), .in1(out_reg_41_reg_41));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_55_reg_55_7_9 (.out1(out_conv_out_reg_55_reg_55_7_9), .in1(out_reg_55_reg_55));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_56_reg_56_7_9 (.out1(out_conv_out_reg_56_reg_56_7_9), .in1(out_reg_56_reg_56));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_58_reg_58_8_9 (.out1(out_conv_out_reg_58_reg_58_8_9), .in1(out_reg_58_reg_58));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_5_reg_5_7_9 (.out1(out_conv_out_reg_5_reg_5_7_9), .in1(out_reg_5_reg_5));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_69_reg_69_7_9 (.out1(out_conv_out_reg_69_reg_69_7_9), .in1(out_reg_69_reg_69));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_6_reg_6_8_9 (.out1(out_conv_out_reg_6_reg_6_8_9), .in1(out_reg_6_reg_6));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(9)) conv_out_reg_8_reg_8_6_9 (.out1(out_conv_out_reg_8_reg_8_6_9), .in1(out_reg_8_reg_8));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_9_reg_9_7_9 (.out1(out_conv_out_reg_9_reg_9_7_9), .in1(out_reg_9_reg_9));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(2)) conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_9_1_2 (.out1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_9_1_2), .in1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_9));
  UUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_10_2_8 (.out1(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_10_2_8), .in1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_10));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(2)) conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_11_1_2 (.out1(out_conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_11_1_2), .in1(out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_11));
  UUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) fu_kruskalF_28880_29510 (.out1(out_UUdata_converter_FU_34_i0_fu_kruskalF_28880_29510), .in1(out_reg_20_reg_20));
  UIdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(3)) fu_kruskalF_28880_29511 (.out1(out_UIdata_converter_FU_35_i0_fu_kruskalF_28880_29511), .in1(out_reg_20_reg_20));
  cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29517 (.out1(out_cond_expr_FU_8_8_8_8_130_i0_fu_kruskalF_28880_29517), .in1(out_ne_expr_FU_8_0_8_135_i0_ne_expr_FU_8_0_8_135_i0), .in2(out_reg_23_reg_23), .in3(out_reg_18_reg_18));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_kruskalF_28880_29528 (.out1(out_UIdata_converter_FU_40_i0_fu_kruskalF_28880_29528), .in1(out_reg_24_reg_24));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_kruskalF_28880_29536 (.out1(out_ui_plus_expr_FU_8_0_8_154_i0_fu_kruskalF_28880_29536), .in1(out_reg_24_reg_24), .in2(out_const_8));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_kruskalF_28880_29538 (.out1(out_plus_expr_FU_8_0_8_137_i0_fu_kruskalF_28880_29538), .in1(out_reg_18_reg_18), .in2(out_const_5));
  cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29547 (.out1(out_cond_expr_FU_8_8_8_8_130_i1_fu_kruskalF_28880_29547), .in1(out_ne_expr_FU_8_0_8_135_i0_ne_expr_FU_8_0_8_135_i0), .in2(out_reg_23_reg_23), .in3(out_reg_19_reg_19));
  ui_plus_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_out1(2)) fu_kruskalF_28880_29556 (.out1(out_ui_plus_expr_FU_8_0_8_155_i0_fu_kruskalF_28880_29556), .in1(out_reg_20_reg_20), .in2(out_const_8));
  read_cond_FU #(.BITSIZE_in1(1)) fu_kruskalF_28880_29572 (.out1(out_read_cond_FU_44_i0_fu_kruskalF_28880_29572), .in1(out_reg_28_reg_28));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_kruskalF_28880_29610 (.out1(out_UUdata_converter_FU_107_i0_fu_kruskalF_28880_29610), .in1(out_reg_70_reg_70));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_29618 (.out1(out_UUdata_converter_FU_29_i0_fu_kruskalF_28880_29618), .in1(out_addr_expr_FU_28_i0_fu_kruskalF_28880_30253));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(32)) fu_kruskalF_28880_29621 (.out1(out_ui_plus_expr_FU_32_0_32_153_i0_fu_kruskalF_28880_29621), .in1(out_reg_70_reg_70), .in2(out_const_8));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_kruskalF_28880_29626 (.out1(out_UIdata_converter_FU_88_i0_fu_kruskalF_28880_29626), .in1(out_ARRAY_1D_STD_BRAM_NN_3_i0_array_28864_0));
  ui_cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29641 (.out1(out_ui_cond_expr_FU_8_8_8_8_146_i0_fu_kruskalF_28880_29641), .in1(out_ui_bit_and_expr_FU_1_1_1_142_i0_fu_kruskalF_28880_29646), .in2(out_reg_39_reg_39), .in3(out_reg_43_reg_43));
  ui_bit_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_kruskalF_28880_29646 (.out1(out_ui_bit_and_expr_FU_1_1_1_142_i0_fu_kruskalF_28880_29646), .in1(out_le_expr_FU_8_8_8_133_i0_fu_kruskalF_28880_29650), .in2(out_ne_expr_FU_8_0_8_135_i0_ne_expr_FU_8_0_8_135_i0));
  le_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_kruskalF_28880_29650 (.out1(out_le_expr_FU_8_8_8_133_i0_fu_kruskalF_28880_29650), .in1(out_reg_37_reg_37), .in2(out_reg_38_reg_38));
  cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29668 (.out1(out_cond_expr_FU_8_8_8_8_130_i2_fu_kruskalF_28880_29668), .in1(out_ui_bit_and_expr_FU_1_1_1_142_i0_fu_kruskalF_28880_29646), .in2(out_reg_37_reg_37), .in3(out_reg_44_reg_44));
  cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29675 (.out1(out_cond_expr_FU_8_8_8_8_130_i3_fu_kruskalF_28880_29675), .in1(out_ui_bit_and_expr_FU_1_1_1_142_i1_fu_kruskalF_28880_29680), .in2(out_reg_37_reg_37), .in3(out_reg_29_reg_29));
  ui_bit_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_kruskalF_28880_29680 (.out1(out_ui_bit_and_expr_FU_1_1_1_142_i1_fu_kruskalF_28880_29680), .in1(out_le_expr_FU_8_8_8_133_i1_fu_kruskalF_28880_29684), .in2(out_ne_expr_FU_8_0_8_135_i0_ne_expr_FU_8_0_8_135_i0));
  le_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_kruskalF_28880_29684 (.out1(out_le_expr_FU_8_8_8_133_i1_fu_kruskalF_28880_29684), .in1(out_reg_37_reg_37), .in2(out_reg_30_reg_30));
  cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29691 (.out1(out_cond_expr_FU_8_8_8_8_130_i4_fu_kruskalF_28880_29691), .in1(out_ui_bit_and_expr_FU_1_1_1_142_i1_fu_kruskalF_28880_29680), .in2(out_reg_37_reg_37), .in3(out_reg_30_reg_30));
  ui_plus_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_out1(2)) fu_kruskalF_28880_29703 (.out1(out_ui_plus_expr_FU_8_0_8_155_i1_fu_kruskalF_28880_29703), .in1(out_reg_33_reg_33), .in2(out_const_8));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(10), .BITSIZE_out1(10), .LSB_PARAMETER(0)) fu_kruskalF_28880_29711 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_158_i0_fu_kruskalF_28880_29711), .in1(in_port_a), .in2(out_ui_bit_ior_concat_expr_FU_145_i1_fu_kruskalF_28880_30324));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29724 (.out1(out_UUdata_converter_FU_114_i0_fu_kruskalF_28880_29724), .in1(out_ARRAY_1D_STD_BRAM_NN_2_i0_array_28862_0));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_kruskalF_28880_29729 (.out1(out_UIdata_converter_FU_115_i0_fu_kruskalF_28880_29729), .in1(out_ARRAY_1D_STD_BRAM_NN_3_i0_array_28864_0));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(10), .BITSIZE_out1(10), .LSB_PARAMETER(0)) fu_kruskalF_28880_29738 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_158_i1_fu_kruskalF_28880_29738), .in1(in_port_a), .in2(out_reg_57_reg_57));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29744 (.out1(out_UUdata_converter_FU_93_i0_fu_kruskalF_28880_29744), .in1(out_ARRAY_1D_STD_BRAM_NN_3_i0_array_28864_0));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_kruskalF_28880_29746 (.out1(out_UIdata_converter_FU_89_i0_fu_kruskalF_28880_29746), .in1(out_ARRAY_1D_STD_BRAM_NN_2_i0_array_28862_0));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(9)) fu_kruskalF_28880_29755 (.out1(out_UUdata_converter_FU_86_i0_fu_kruskalF_28880_29755), .in1(out_reg_40_reg_40));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_29763 (.out1(out_UUdata_converter_FU_23_i0_fu_kruskalF_28880_29763), .in1(out_addr_expr_FU_22_i0_fu_kruskalF_28880_30114));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(32)) fu_kruskalF_28880_29766 (.out1(out_ui_plus_expr_FU_32_0_32_153_i1_fu_kruskalF_28880_29766), .in1(out_reg_40_reg_40), .in2(out_const_8));
  cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29770 (.out1(out_cond_expr_FU_8_8_8_8_130_i5_fu_kruskalF_28880_29770), .in1(out_ui_bit_and_expr_FU_1_1_1_142_i0_fu_kruskalF_28880_29646), .in2(out_reg_37_reg_37), .in3(out_reg_38_reg_38));
  ui_ternary_mp_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29774 (.out1(out_ui_ternary_mp_expr_FU_0_8_8_8_169_i0_fu_kruskalF_28880_29774), .in1(out_const_8), .in2(out_reg_2_reg_2), .in3(out_UUdata_converter_FU_85_i0_fu_kruskalF_28880_29783));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_kruskalF_28880_29781 (.out1(out_UUdata_converter_FU_25_i0_fu_kruskalF_28880_29781), .in1(out_UUdata_converter_FU_23_i0_fu_kruskalF_28880_29763));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_kruskalF_28880_29783 (.out1(out_UUdata_converter_FU_85_i0_fu_kruskalF_28880_29783), .in1(out_reg_40_reg_40));
  ui_cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(2), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29789 (.out1(out_ui_cond_expr_FU_8_8_8_8_146_i1_fu_kruskalF_28880_29789), .in1(out_ui_bit_and_expr_FU_1_1_1_142_i1_fu_kruskalF_28880_29680), .in2(out_reg_34_reg_34), .in3(out_reg_31_reg_31));
  UUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) fu_kruskalF_28880_29793 (.out1(out_UUdata_converter_FU_69_i0_fu_kruskalF_28880_29793), .in1(out_reg_33_reg_33));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29800 (.out1(out_IUdata_converter_FU_94_i0_fu_kruskalF_28880_29800), .in1(out_reg_59_reg_59));
  ui_cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29811 (.out1(out_ui_cond_expr_FU_8_8_8_8_146_i2_fu_kruskalF_28880_29811), .in1(out_ui_bit_and_expr_FU_1_1_1_142_i0_fu_kruskalF_28880_29646), .in2(out_const_8), .in3(out_reg_45_reg_45));
  ui_cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29818 (.out1(out_ui_cond_expr_FU_8_8_8_8_146_i3_fu_kruskalF_28880_29818), .in1(out_ui_bit_and_expr_FU_1_1_1_142_i1_fu_kruskalF_28880_29680), .in2(out_const_0), .in3(out_reg_32_reg_32));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_kruskalF_28880_29826 (.out1(out_ui_plus_expr_FU_8_0_8_156_i0_fu_kruskalF_28880_29826), .in1(out_reg_72_reg_72), .in2(out_const_8));
  read_cond_FU #(.BITSIZE_in1(1)) fu_kruskalF_28880_29830 (.out1(out_read_cond_FU_70_i0_fu_kruskalF_28880_29830), .in1(out_reg_36_reg_36));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_29832 (.out1(out_UUdata_converter_FU_24_i0_fu_kruskalF_28880_29832), .in1(out_ui_pointer_plus_expr_FU_32_0_32_159_i0_fu_kruskalF_28880_30129));
  read_cond_FU #(.BITSIZE_in1(1)) fu_kruskalF_28880_29839 (.out1(out_read_cond_FU_87_i0_fu_kruskalF_28880_29839), .in1(out_reg_42_reg_42));
  read_cond_FU #(.BITSIZE_in1(1)) fu_kruskalF_28880_29842 (.out1(out_read_cond_FU_96_i0_fu_kruskalF_28880_29842), .in1(out_ne_expr_FU_8_8_8_136_i0_fu_kruskalF_28880_30486));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_kruskalF_28880_29846 (.out1(out_UIdata_converter_FU_95_i0_fu_kruskalF_28880_29846), .in1(out_IUdata_converter_FU_94_i0_fu_kruskalF_28880_29800));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_29847 (.out1(out_UUdata_converter_FU_30_i0_fu_kruskalF_28880_29847), .in1(out_ui_pointer_plus_expr_FU_32_0_32_160_i0_fu_kruskalF_28880_30261));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29856 (.out1(out_IIdata_converter_FU_108_i0_fu_kruskalF_28880_29856), .in1(out_reg_71_reg_71));
  read_cond_FU #(.BITSIZE_in1(1)) fu_kruskalF_28880_29857 (.out1(out_read_cond_FU_109_i0_fu_kruskalF_28880_29857), .in1(out_eq_expr_FU_16_16_16_131_i0_fu_kruskalF_28880_30488));
  read_cond_FU #(.BITSIZE_in1(1)) fu_kruskalF_28880_29863 (.out1(out_read_cond_FU_111_i0_fu_kruskalF_28880_29863), .in1(out_ui_ne_expr_FU_32_32_32_150_i1_fu_kruskalF_28880_30490));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_kruskalF_28880_29865 (.out1(out_UIdata_converter_FU_126_i0_fu_kruskalF_28880_29865), .in1(out_ui_plus_expr_FU_8_0_8_156_i0_fu_kruskalF_28880_29826));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29867 (.out1(out_IIdata_converter_FU_127_i0_fu_kruskalF_28880_29867), .in1(out_ARRAY_1D_STD_BRAM_NN_0_i0_array_28859_0));
  read_cond_FU #(.BITSIZE_in1(1)) fu_kruskalF_28880_29868 (.out1(out_read_cond_FU_128_i0_fu_kruskalF_28880_29868), .in1(out_reg_75_reg_75));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_kruskalF_28880_29966 (.out1(out_addr_expr_FU_12_i0_fu_kruskalF_28880_29966), .in1(out_conv_out_const_21_7_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_kruskalF_28880_29972 (.out1(out_addr_expr_FU_13_i0_fu_kruskalF_28880_29972), .in1(out_conv_out_const_14_8_32));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(9)) fu_kruskalF_28880_29977 (.out1(out_UUdata_converter_FU_41_i0_fu_kruskalF_28880_29977), .in1(out_ui_pointer_plus_expr_FU_8_8_8_164_i1_fu_kruskalF_28880_30007));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_kruskalF_28880_29980 (.out1(out_IUdata_converter_FU_42_i0_fu_kruskalF_28880_29980), .in1(out_UIdata_converter_FU_40_i0_fu_kruskalF_28880_29528));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(8), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_kruskalF_28880_29987 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_164_i0_fu_kruskalF_28880_29987), .in1(out_UUdata_converter_FU_41_i0_fu_kruskalF_28880_29977), .in2(out_IUdata_converter_FU_42_i0_fu_kruskalF_28880_29980));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(10)) fu_kruskalF_28880_29997 (.out1(out_UUdata_converter_FU_15_i0_fu_kruskalF_28880_29997), .in1(out_addr_expr_FU_14_i0_fu_kruskalF_28880_30018));
  IUdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(2)) fu_kruskalF_28880_30000 (.out1(out_IUdata_converter_FU_36_i0_fu_kruskalF_28880_30000), .in1(out_UIdata_converter_FU_35_i0_fu_kruskalF_28880_29511));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(4), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_kruskalF_28880_30007 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_164_i1_fu_kruskalF_28880_30007), .in1(out_reg_7_reg_7), .in2(out_reg_21_reg_21));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(10)) fu_kruskalF_28880_30018 (.out1(out_addr_expr_FU_14_i0_fu_kruskalF_28880_30018), .in1(out_conv_out_const_13_8_32));
  ui_lshift_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_out1(3), .PRECISION(32)) fu_kruskalF_28880_30023 (.out1(out_ui_lshift_expr_FU_8_0_8_149_i0_fu_kruskalF_28880_30023), .in1(out_IUdata_converter_FU_36_i0_fu_kruskalF_28880_30000), .in2(out_const_8));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(4), .OFFSET_PARAMETER(1)) fu_kruskalF_28880_30026 (.out1(out_ui_bit_ior_concat_expr_FU_143_i0_fu_kruskalF_28880_30026), .in1(out_ui_lshift_expr_FU_8_0_8_149_i1_fu_kruskalF_28880_30523), .in2(out_ui_bit_and_expr_FU_1_0_1_140_i0_fu_kruskalF_28880_30527), .in3(out_const_8));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(6)) fu_kruskalF_28880_30033 (.out1(out_addr_expr_FU_16_i0_fu_kruskalF_28880_30033), .in1(out_conv_out_const_19_6_32));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(7)) fu_kruskalF_28880_30037 (.out1(out_UUdata_converter_FU_18_i0_fu_kruskalF_28880_30037), .in1(out_addr_expr_FU_17_i0_fu_kruskalF_28880_30082));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(1), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_kruskalF_28880_30059 (.out1(out_ui_pointer_plus_expr_FU_8_0_8_161_i0_fu_kruskalF_28880_30059), .in1(out_UUdata_converter_FU_18_i0_fu_kruskalF_28880_30037), .in2(out_const_8));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_kruskalF_28880_30072 (.out1(out_ui_pointer_plus_expr_FU_8_0_8_162_i0_fu_kruskalF_28880_30072), .in1(out_UUdata_converter_FU_18_i0_fu_kruskalF_28880_30037), .in2(out_const_9));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_kruskalF_28880_30082 (.out1(out_addr_expr_FU_17_i0_fu_kruskalF_28880_30082), .in1(out_conv_out_const_22_7_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_kruskalF_28880_30094 (.out1(out_addr_expr_FU_19_i0_fu_kruskalF_28880_30094), .in1(out_conv_out_const_15_8_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(9)) fu_kruskalF_28880_30102 (.out1(out_addr_expr_FU_20_i0_fu_kruskalF_28880_30102), .in1(out_conv_out_const_17_9_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_kruskalF_28880_30106 (.out1(out_addr_expr_FU_21_i0_fu_kruskalF_28880_30106), .in1(out_conv_out_const_16_8_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_30114 (.out1(out_addr_expr_FU_22_i0_fu_kruskalF_28880_30114), .in1(out_conv_out_const_13_8_32));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_kruskalF_28880_30117 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_164_i2_fu_kruskalF_28880_30117), .in1(out_reg_15_reg_15), .in2(out_reg_33_reg_33));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_kruskalF_28880_30129 (.out1(out_ui_pointer_plus_expr_FU_32_0_32_159_i0_fu_kruskalF_28880_30129), .in1(out_addr_expr_FU_22_i0_fu_kruskalF_28880_30114), .in2(out_const_9));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(3), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_kruskalF_28880_30140 (.out1(out_ui_pointer_plus_expr_FU_8_0_8_163_i0_fu_kruskalF_28880_30140), .in1(out_UUdata_converter_FU_86_i0_fu_kruskalF_28880_29755), .in2(out_const_10));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(9)) fu_kruskalF_28880_30144 (.out1(out_addr_expr_FU_26_i0_fu_kruskalF_28880_30144), .in1(out_conv_out_const_20_9_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(9)) fu_kruskalF_28880_30160 (.out1(out_addr_expr_FU_27_i0_fu_kruskalF_28880_30160), .in1(out_conv_out_const_18_9_32));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(9)) fu_kruskalF_28880_30172 (.out1(out_UUdata_converter_FU_91_i0_fu_kruskalF_28880_30172), .in1(out_ui_pointer_plus_expr_FU_8_8_8_164_i6_fu_kruskalF_28880_30220));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_kruskalF_28880_30175 (.out1(out_IUdata_converter_FU_92_i0_fu_kruskalF_28880_30175), .in1(out_UIdata_converter_FU_89_i0_fu_kruskalF_28880_29746));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(8), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_kruskalF_28880_30181 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_164_i3_fu_kruskalF_28880_30181), .in1(out_reg_54_reg_54), .in2(out_reg_46_reg_46));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(8), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_kruskalF_28880_30194 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_164_i4_fu_kruskalF_28880_30194), .in1(out_reg_9_reg_9), .in2(out_reg_47_reg_47));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(8), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_kruskalF_28880_30207 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_164_i5_fu_kruskalF_28880_30207), .in1(out_reg_9_reg_9), .in2(out_reg_46_reg_46));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_kruskalF_28880_30214 (.out1(out_IUdata_converter_FU_90_i0_fu_kruskalF_28880_30214), .in1(out_UIdata_converter_FU_88_i0_fu_kruskalF_28880_29626));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(10), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_kruskalF_28880_30220 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_164_i6_fu_kruskalF_28880_30220), .in1(out_reg_7_reg_7), .in2(out_ui_bit_ior_concat_expr_FU_144_i0_fu_kruskalF_28880_30243));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(9), .PRECISION(32)) fu_kruskalF_28880_30240 (.out1(out_ui_lshift_expr_FU_16_0_16_147_i0_fu_kruskalF_28880_30240), .in1(out_IUdata_converter_FU_90_i0_fu_kruskalF_28880_30214), .in2(out_const_8));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(10), .OFFSET_PARAMETER(1)) fu_kruskalF_28880_30243 (.out1(out_ui_bit_ior_concat_expr_FU_144_i0_fu_kruskalF_28880_30243), .in1(out_ui_lshift_expr_FU_16_0_16_147_i1_fu_kruskalF_28880_30543), .in2(out_reg_50_reg_50), .in3(out_const_8));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_30253 (.out1(out_addr_expr_FU_28_i0_fu_kruskalF_28880_30253), .in1(out_conv_out_const_22_7_32));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_kruskalF_28880_30261 (.out1(out_ui_pointer_plus_expr_FU_32_0_32_160_i0_fu_kruskalF_28880_30261), .in1(out_addr_expr_FU_28_i0_fu_kruskalF_28880_30253), .in2(out_const_11));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(9), .PRECISION(32)) fu_kruskalF_28880_30298 (.out1(out_ui_lshift_expr_FU_16_0_16_148_i0_fu_kruskalF_28880_30298), .in1(out_UUdata_converter_FU_93_i0_fu_kruskalF_28880_29744), .in2(out_const_8));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(10), .OFFSET_PARAMETER(1)) fu_kruskalF_28880_30301 (.out1(out_ui_bit_ior_concat_expr_FU_145_i0_fu_kruskalF_28880_30301), .in1(out_ui_lshift_expr_FU_16_0_16_148_i2_fu_kruskalF_28880_30562), .in2(out_reg_53_reg_53), .in3(out_const_8));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(10)) fu_kruskalF_28880_30304 (.out1(out_UUdata_converter_FU_113_i0_fu_kruskalF_28880_30304), .in1(out_ui_pointer_plus_expr_FU_16_16_16_158_i1_fu_kruskalF_28880_29738));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(8), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_kruskalF_28880_30313 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_164_i7_fu_kruskalF_28880_30313), .in1(out_UUdata_converter_FU_113_i0_fu_kruskalF_28880_30304), .in2(out_reg_46_reg_46));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(9), .PRECISION(32)) fu_kruskalF_28880_30321 (.out1(out_ui_lshift_expr_FU_16_0_16_148_i1_fu_kruskalF_28880_30321), .in1(out_UUdata_converter_FU_114_i0_fu_kruskalF_28880_29724), .in2(out_const_8));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(10), .OFFSET_PARAMETER(1)) fu_kruskalF_28880_30324 (.out1(out_ui_bit_ior_concat_expr_FU_145_i1_fu_kruskalF_28880_30324), .in1(out_ui_lshift_expr_FU_16_0_16_148_i3_fu_kruskalF_28880_30579), .in2(out_reg_64_reg_64), .in3(out_const_8));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(10)) fu_kruskalF_28880_30331 (.out1(out_UUdata_converter_FU_116_i0_fu_kruskalF_28880_30331), .in1(out_ui_pointer_plus_expr_FU_16_16_16_158_i0_fu_kruskalF_28880_29711));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_kruskalF_28880_30334 (.out1(out_IUdata_converter_FU_117_i0_fu_kruskalF_28880_30334), .in1(out_UIdata_converter_FU_115_i0_fu_kruskalF_28880_29729));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(8), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_kruskalF_28880_30340 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_164_i8_fu_kruskalF_28880_30340), .in1(out_reg_65_reg_65), .in2(out_reg_61_reg_61));
  ui_ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_kruskalF_28880_30476 (.out1(out_ui_ne_expr_FU_8_0_8_151_i0_fu_kruskalF_28880_30476), .in1(out_ui_plus_expr_FU_8_0_8_154_i0_fu_kruskalF_28880_29536), .in2(out_const_11));
  ui_ne_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_kruskalF_28880_30478 (.out1(out_ui_ne_expr_FU_8_0_8_152_i0_fu_kruskalF_28880_30478), .in1(out_ui_plus_expr_FU_8_0_8_155_i0_fu_kruskalF_28880_29556), .in2(out_const_11));
  gt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_kruskalF_28880_30480 (.out1(out_gt_expr_FU_8_0_8_132_i0_fu_kruskalF_28880_30480), .in1(out_reg_18_reg_18), .in2(out_const_0));
  ui_ne_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_kruskalF_28880_30482 (.out1(out_ui_ne_expr_FU_8_0_8_152_i1_fu_kruskalF_28880_30482), .in1(out_ui_plus_expr_FU_8_0_8_155_i1_fu_kruskalF_28880_29703), .in2(out_const_11));
  ui_ne_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(1)) fu_kruskalF_28880_30484 (.out1(out_ui_ne_expr_FU_32_32_32_150_i0_fu_kruskalF_28880_30484), .in1(out_ui_plus_expr_FU_32_0_32_153_i1_fu_kruskalF_28880_29766), .in2(out_reg_3_reg_3));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_kruskalF_28880_30486 (.out1(out_ne_expr_FU_8_8_8_136_i0_fu_kruskalF_28880_30486), .in1(out_reg_71_reg_71), .in2(out_reg_59_reg_59));
  eq_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_out1(1)) fu_kruskalF_28880_30488 (.out1(out_eq_expr_FU_16_16_16_131_i0_fu_kruskalF_28880_30488), .in1(out_IIdata_converter_FU_108_i0_fu_kruskalF_28880_29856), .in2(out_reg_68_reg_68));
  ui_ne_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(1)) fu_kruskalF_28880_30490 (.out1(out_ui_ne_expr_FU_32_32_32_150_i1_fu_kruskalF_28880_30490), .in1(out_reg_70_reg_70), .in2(out_reg_4_reg_4));
  lt_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_kruskalF_28880_30492 (.out1(out_lt_expr_FU_16_16_16_134_i0_fu_kruskalF_28880_30492), .in1(out_UIdata_converter_FU_126_i0_fu_kruskalF_28880_29865), .in2(out_reg_73_reg_73));
  ui_rshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(2), .PRECISION(32)) fu_kruskalF_28880_30514 (.out1(out_ui_rshift_expr_FU_8_0_8_167_i0_fu_kruskalF_28880_30514), .in1(out_ui_lshift_expr_FU_8_0_8_149_i0_fu_kruskalF_28880_30023), .in2(out_const_8));
  ui_rshift_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_out1(1), .PRECISION(32)) fu_kruskalF_28880_30517 (.out1(out_ui_rshift_expr_FU_8_0_8_167_i1_fu_kruskalF_28880_30517), .in1(out_IUdata_converter_FU_36_i0_fu_kruskalF_28880_30000), .in2(out_const_8));
  ui_plus_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_out1(3)) fu_kruskalF_28880_30519 (.out1(out_ui_plus_expr_FU_8_8_8_157_i0_fu_kruskalF_28880_30519), .in1(out_ui_rshift_expr_FU_8_0_8_167_i0_fu_kruskalF_28880_30514), .in2(out_ui_rshift_expr_FU_8_0_8_167_i1_fu_kruskalF_28880_30517));
  ui_lshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(4), .PRECISION(32)) fu_kruskalF_28880_30523 (.out1(out_ui_lshift_expr_FU_8_0_8_149_i1_fu_kruskalF_28880_30523), .in1(out_ui_plus_expr_FU_8_8_8_157_i0_fu_kruskalF_28880_30519), .in2(out_const_8));
  ui_bit_and_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_kruskalF_28880_30527 (.out1(out_ui_bit_and_expr_FU_1_0_1_140_i0_fu_kruskalF_28880_30527), .in1(out_IUdata_converter_FU_36_i0_fu_kruskalF_28880_30000), .in2(out_const_8));
  ui_rshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1), .BITSIZE_out1(8), .PRECISION(32)) fu_kruskalF_28880_30532 (.out1(out_ui_rshift_expr_FU_16_0_16_165_i0_fu_kruskalF_28880_30532), .in1(out_ui_lshift_expr_FU_16_0_16_147_i0_fu_kruskalF_28880_30240), .in2(out_const_8));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(7), .PRECISION(32)) fu_kruskalF_28880_30536 (.out1(out_ui_rshift_expr_FU_8_0_8_167_i2_fu_kruskalF_28880_30536), .in1(out_IUdata_converter_FU_90_i0_fu_kruskalF_28880_30214), .in2(out_const_8));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(7), .BITSIZE_out1(9)) fu_kruskalF_28880_30539 (.out1(out_ui_plus_expr_FU_8_8_8_157_i1_fu_kruskalF_28880_30539), .in1(out_reg_48_reg_48), .in2(out_reg_49_reg_49));
  ui_lshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1), .BITSIZE_out1(10), .PRECISION(32)) fu_kruskalF_28880_30543 (.out1(out_ui_lshift_expr_FU_16_0_16_147_i1_fu_kruskalF_28880_30543), .in1(out_ui_plus_expr_FU_8_8_8_157_i1_fu_kruskalF_28880_30539), .in2(out_const_8));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_kruskalF_28880_30547 (.out1(out_ui_bit_and_expr_FU_1_0_1_140_i1_fu_kruskalF_28880_30547), .in1(out_IUdata_converter_FU_90_i0_fu_kruskalF_28880_30214), .in2(out_const_8));
  ui_rshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1), .BITSIZE_out1(8), .PRECISION(32)) fu_kruskalF_28880_30551 (.out1(out_ui_rshift_expr_FU_16_0_16_166_i0_fu_kruskalF_28880_30551), .in1(out_ui_lshift_expr_FU_16_0_16_148_i0_fu_kruskalF_28880_30298), .in2(out_const_8));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(7), .PRECISION(32)) fu_kruskalF_28880_30555 (.out1(out_ui_rshift_expr_FU_8_0_8_168_i0_fu_kruskalF_28880_30555), .in1(out_UUdata_converter_FU_93_i0_fu_kruskalF_28880_29744), .in2(out_const_8));
  ui_lshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1), .BITSIZE_out1(10), .PRECISION(32)) fu_kruskalF_28880_30562 (.out1(out_ui_lshift_expr_FU_16_0_16_148_i2_fu_kruskalF_28880_30562), .in1(out_ui_plus_expr_FU_8_8_8_157_i2_ui_plus_expr_FU_8_8_8_157_i2), .in2(out_const_8));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_kruskalF_28880_30566 (.out1(out_ui_bit_and_expr_FU_1_0_1_141_i0_fu_kruskalF_28880_30566), .in1(out_UUdata_converter_FU_93_i0_fu_kruskalF_28880_29744), .in2(out_const_8));
  ui_rshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1), .BITSIZE_out1(8), .PRECISION(32)) fu_kruskalF_28880_30571 (.out1(out_ui_rshift_expr_FU_16_0_16_166_i1_fu_kruskalF_28880_30571), .in1(out_ui_lshift_expr_FU_16_0_16_148_i1_fu_kruskalF_28880_30321), .in2(out_const_8));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(7), .PRECISION(32)) fu_kruskalF_28880_30574 (.out1(out_ui_rshift_expr_FU_8_0_8_168_i1_fu_kruskalF_28880_30574), .in1(out_UUdata_converter_FU_114_i0_fu_kruskalF_28880_29724), .in2(out_const_8));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(7), .BITSIZE_out1(9)) fu_kruskalF_28880_30576 (.out1(out_ui_plus_expr_FU_8_8_8_157_i3_fu_kruskalF_28880_30576), .in1(out_reg_62_reg_62), .in2(out_reg_63_reg_63));
  ui_lshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1), .BITSIZE_out1(10), .PRECISION(32)) fu_kruskalF_28880_30579 (.out1(out_ui_lshift_expr_FU_16_0_16_148_i3_fu_kruskalF_28880_30579), .in1(out_ui_plus_expr_FU_8_8_8_157_i3_fu_kruskalF_28880_30576), .in2(out_const_8));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_kruskalF_28880_30582 (.out1(out_ui_bit_and_expr_FU_1_0_1_141_i1_fu_kruskalF_28880_30582), .in1(out_UUdata_converter_FU_114_i0_fu_kruskalF_28880_29724), .in2(out_const_8));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) fu_kruskalF_28880_30610 (.out1(out_multi_read_cond_FU_43_i0_fu_kruskalF_28880_30610), .in1({out_reg_27_reg_27, out_reg_26_reg_26}));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_kruskalF_28880_30613 (.out1(out_truth_not_expr_FU_1_1_139_i0_fu_kruskalF_28880_30613), .in1(out_ui_ne_expr_FU_8_0_8_151_i0_fu_kruskalF_28880_30476));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_kruskalF_28880_30616 (.out1(out_truth_and_expr_FU_1_1_1_138_i0_fu_kruskalF_28880_30616), .in1(out_reg_22_reg_22), .in2(out_truth_not_expr_FU_1_1_139_i0_fu_kruskalF_28880_30613));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerMout_data_ram_size2_0 (.out1(sig_in_bus_mergerMout_data_ram_size2_0), .in1(sig_in_vector_bus_mergerMout_data_ram_size2_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_oe_ram3_0 (.out1(sig_in_bus_mergerMout_oe_ram3_0), .in1(sig_in_vector_bus_mergerMout_oe_ram3_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_we_ram4_0 (.out1(sig_in_bus_mergerMout_we_ram4_0), .in1(sig_in_vector_bus_mergerMout_we_ram4_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_0 (.out1(sig_in_bus_mergerSout_DataRdy5_0), .in1(sig_in_vector_bus_mergerSout_DataRdy5_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_1 (.out1(sig_in_bus_mergerSout_DataRdy5_1), .in1(sig_in_vector_bus_mergerSout_DataRdy5_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_2 (.out1(sig_in_bus_mergerSout_DataRdy5_2), .in1(sig_in_vector_bus_mergerSout_DataRdy5_2));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_3 (.out1(sig_in_bus_mergerSout_DataRdy5_3), .in1(sig_in_vector_bus_mergerSout_DataRdy5_3));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_4 (.out1(sig_in_bus_mergerSout_DataRdy5_4), .in1(sig_in_vector_bus_mergerSout_DataRdy5_4));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_5 (.out1(sig_in_bus_mergerSout_DataRdy5_5), .in1(sig_in_vector_bus_mergerSout_DataRdy5_5));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerSout_Rdata_ram6_0 (.out1(sig_in_bus_mergerSout_Rdata_ram6_0), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_0));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerSout_Rdata_ram6_1 (.out1(sig_in_bus_mergerSout_Rdata_ram6_1), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_1));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerSout_Rdata_ram6_2 (.out1(sig_in_bus_mergerSout_Rdata_ram6_2), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_2));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerSout_Rdata_ram6_3 (.out1(sig_in_bus_mergerSout_Rdata_ram6_3), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_3));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerSout_Rdata_ram6_4 (.out1(sig_in_bus_mergerSout_Rdata_ram6_4), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_4));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerSout_Rdata_ram6_5 (.out1(sig_in_bus_mergerSout_Rdata_ram6_5), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_5));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in1_288677_0 (.out1(sig_in_bus_mergerproxy_in1_288677_0), .in1(sig_in_vector_bus_mergerproxy_in1_288677_0));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in1_288688_0 (.out1(sig_in_bus_mergerproxy_in1_288688_0), .in1(sig_in_vector_bus_mergerproxy_in1_288688_0));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in1_288699_0 (.out1(sig_in_bus_mergerproxy_in1_288699_0), .in1(sig_in_vector_bus_mergerproxy_in1_288699_0));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in1_2887010_0 (.out1(sig_in_bus_mergerproxy_in1_2887010_0), .in1(sig_in_vector_bus_mergerproxy_in1_2887010_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in2_2886711_0 (.out1(sig_in_bus_mergerproxy_in2_2886711_0), .in1(sig_in_vector_bus_mergerproxy_in2_2886711_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in2_2886812_0 (.out1(sig_in_bus_mergerproxy_in2_2886812_0), .in1(sig_in_vector_bus_mergerproxy_in2_2886812_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in2_2886913_0 (.out1(sig_in_bus_mergerproxy_in2_2886913_0), .in1(sig_in_vector_bus_mergerproxy_in2_2886913_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in2_2887014_0 (.out1(sig_in_bus_mergerproxy_in2_2887014_0), .in1(sig_in_vector_bus_mergerproxy_in2_2887014_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in3_2886715_0 (.out1(sig_in_bus_mergerproxy_in3_2886715_0), .in1(sig_in_vector_bus_mergerproxy_in3_2886715_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in3_2886816_0 (.out1(sig_in_bus_mergerproxy_in3_2886816_0), .in1(sig_in_vector_bus_mergerproxy_in3_2886816_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in3_2886917_0 (.out1(sig_in_bus_mergerproxy_in3_2886917_0), .in1(sig_in_vector_bus_mergerproxy_in3_2886917_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in3_2887018_0 (.out1(sig_in_bus_mergerproxy_in3_2887018_0), .in1(sig_in_vector_bus_mergerproxy_in3_2887018_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886719_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886719_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886719_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886820_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886820_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886820_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886921_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886921_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886921_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2887022_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2887022_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2887022_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886723_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886723_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886723_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886824_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886824_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886824_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886925_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886925_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886925_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2887026_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2887026_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2887026_0));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) ne_expr_FU_8_0_8_135_i0 (.out1(out_ne_expr_FU_8_0_8_135_i0_ne_expr_FU_8_0_8_135_i0), .in1(out_reg_37_reg_37), .in2(out_const_11));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_29_i0_fu_kruskalF_28880_29618), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_23_i0_fu_kruskalF_28880_29763), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_0_8_161_i0_fu_kruskalF_28880_30059), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_0_8_162_i0_fu_kruskalF_28880_30072), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_19_i0_fu_kruskalF_28880_30094), .wenable(wrenable_reg_12));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_20_i0_fu_kruskalF_28880_30102), .wenable(wrenable_reg_13));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_21_i0_fu_kruskalF_28880_30106), .wenable(wrenable_reg_14));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_22_i0_fu_kruskalF_28880_30114), .wenable(wrenable_reg_15));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_26_i0_fu_kruskalF_28880_30144), .wenable(wrenable_reg_16));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_27_i0_fu_kruskalF_28880_30160), .wenable(wrenable_reg_17));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_MUX_163_reg_18_0_0_0), .wenable(wrenable_reg_18));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_19 (.out1(out_reg_19_reg_19), .clock(clock), .reset(reset), .in1(out_MUX_164_reg_19_0_0_0), .wenable(wrenable_reg_19));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_25_i0_fu_kruskalF_28880_29781), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_20 (.out1(out_reg_20_reg_20), .clock(clock), .reset(reset), .in1(out_MUX_166_reg_20_0_0_0), .wenable(wrenable_reg_20));
  register_SE #(.BITSIZE_in1(4), .BITSIZE_out1(4)) reg_21 (.out1(out_reg_21_reg_21), .clock(clock), .reset(reset), .in1(out_ui_bit_ior_concat_expr_FU_143_i0_fu_kruskalF_28880_30026), .wenable(wrenable_reg_21));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_22 (.out1(out_reg_22_reg_22), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_152_i0_fu_kruskalF_28880_30478), .wenable(wrenable_reg_22));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_23 (.out1(out_reg_23_reg_23), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_0_8_137_i0_fu_kruskalF_28880_29538), .wenable(wrenable_reg_23));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_24 (.out1(out_reg_24_reg_24), .clock(clock), .reset(reset), .in1(out_MUX_170_reg_24_0_0_0), .wenable(wrenable_reg_24));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_25 (.out1(out_reg_25_reg_25), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_164_i0_fu_kruskalF_28880_29987), .wenable(wrenable_reg_25));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_26 (.out1(out_reg_26_reg_26), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_151_i0_fu_kruskalF_28880_30476), .wenable(wrenable_reg_26));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_27 (.out1(out_reg_27_reg_27), .clock(clock), .reset(reset), .in1(out_truth_and_expr_FU_1_1_1_138_i0_fu_kruskalF_28880_30616), .wenable(wrenable_reg_27));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_28 (.out1(out_reg_28_reg_28), .clock(clock), .reset(reset), .in1(out_gt_expr_FU_8_0_8_132_i0_fu_kruskalF_28880_30480), .wenable(wrenable_reg_28));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_29 (.out1(out_reg_29_reg_29), .clock(clock), .reset(reset), .in1(out_MUX_175_reg_29_0_0_0), .wenable(wrenable_reg_29));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_24_i0_fu_kruskalF_28880_29832), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_30 (.out1(out_reg_30_reg_30), .clock(clock), .reset(reset), .in1(out_MUX_177_reg_30_0_0_0), .wenable(wrenable_reg_30));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_31 (.out1(out_reg_31_reg_31), .clock(clock), .reset(reset), .in1(out_MUX_178_reg_31_0_0_0), .wenable(wrenable_reg_31));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_32 (.out1(out_reg_32_reg_32), .clock(clock), .reset(reset), .in1(out_MUX_179_reg_32_0_0_0), .wenable(wrenable_reg_32));
  register_SE #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_33 (.out1(out_reg_33_reg_33), .clock(clock), .reset(reset), .in1(out_MUX_180_reg_33_0_0_0), .wenable(wrenable_reg_33));
  register_SE #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_34 (.out1(out_reg_34_reg_34), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_69_i0_fu_kruskalF_28880_29793), .wenable(wrenable_reg_34));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_35 (.out1(out_reg_35_reg_35), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_164_i2_fu_kruskalF_28880_30117), .wenable(wrenable_reg_35));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_36 (.out1(out_reg_36_reg_36), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_152_i1_fu_kruskalF_28880_30482), .wenable(wrenable_reg_36));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_37 (.out1(out_reg_37_reg_37), .clock(clock), .reset(reset), .in1(out_PROXY_CTRLN_9_i0_PROXY_CTRLN_9_i0), .wenable(wrenable_reg_37));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_38 (.out1(out_reg_38_reg_38), .clock(clock), .reset(reset), .in1(out_MUX_185_reg_38_0_0_0), .wenable(wrenable_reg_38));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_39 (.out1(out_reg_39_reg_39), .clock(clock), .reset(reset), .in1(out_ui_ternary_mp_expr_FU_0_8_8_8_169_i0_fu_kruskalF_28880_29774), .wenable(wrenable_reg_39));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_30_i0_fu_kruskalF_28880_29847), .wenable(wrenable_reg_4));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_40 (.out1(out_reg_40_reg_40), .clock(clock), .reset(reset), .in1(out_MUX_188_reg_40_0_0_0), .wenable(wrenable_reg_40));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_41 (.out1(out_reg_41_reg_41), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_0_8_163_i0_fu_kruskalF_28880_30140), .wenable(wrenable_reg_41));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_42 (.out1(out_reg_42_reg_42), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_32_32_32_150_i0_fu_kruskalF_28880_30484), .wenable(wrenable_reg_42));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_43 (.out1(out_reg_43_reg_43), .clock(clock), .reset(reset), .in1(out_MUX_191_reg_43_0_0_0), .wenable(wrenable_reg_43));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_44 (.out1(out_reg_44_reg_44), .clock(clock), .reset(reset), .in1(out_MUX_192_reg_44_0_0_0), .wenable(wrenable_reg_44));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_45 (.out1(out_reg_45_reg_45), .clock(clock), .reset(reset), .in1(out_MUX_193_reg_45_0_0_0), .wenable(wrenable_reg_45));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_46 (.out1(out_reg_46_reg_46), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_92_i0_fu_kruskalF_28880_30175), .wenable(wrenable_reg_46));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_47 (.out1(out_reg_47_reg_47), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_90_i0_fu_kruskalF_28880_30214), .wenable(wrenable_reg_47));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_48 (.out1(out_reg_48_reg_48), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_16_0_16_165_i0_fu_kruskalF_28880_30532), .wenable(wrenable_reg_48));
  register_STD #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_49 (.out1(out_reg_49_reg_49), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_8_0_8_167_i2_fu_kruskalF_28880_30536), .wenable(wrenable_reg_49));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_12_i0_fu_kruskalF_28880_29966), .wenable(wrenable_reg_5));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_50 (.out1(out_reg_50_reg_50), .clock(clock), .reset(reset), .in1(out_ui_bit_and_expr_FU_1_0_1_140_i1_fu_kruskalF_28880_30547), .wenable(wrenable_reg_50));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_51 (.out1(out_reg_51_reg_51), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_16_0_16_166_i0_fu_kruskalF_28880_30551), .wenable(wrenable_reg_51));
  register_STD #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_52 (.out1(out_reg_52_reg_52), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_8_0_8_168_i0_fu_kruskalF_28880_30555), .wenable(wrenable_reg_52));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_53 (.out1(out_reg_53_reg_53), .clock(clock), .reset(reset), .in1(out_ui_bit_and_expr_FU_1_0_1_141_i0_fu_kruskalF_28880_30566), .wenable(wrenable_reg_53));
  register_STD #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_54 (.out1(out_reg_54_reg_54), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_91_i0_fu_kruskalF_28880_30172), .wenable(wrenable_reg_54));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_55 (.out1(out_reg_55_reg_55), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_164_i4_fu_kruskalF_28880_30194), .wenable(wrenable_reg_55));
  register_STD #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_56 (.out1(out_reg_56_reg_56), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_164_i5_fu_kruskalF_28880_30207), .wenable(wrenable_reg_56));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_57 (.out1(out_reg_57_reg_57), .clock(clock), .reset(reset), .in1(out_ui_bit_ior_concat_expr_FU_145_i0_fu_kruskalF_28880_30301), .wenable(wrenable_reg_57));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_58 (.out1(out_reg_58_reg_58), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_164_i3_fu_kruskalF_28880_30181), .wenable(wrenable_reg_58));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_59 (.out1(out_reg_59_reg_59), .clock(clock), .reset(reset), .in1(out_PROXY_CTRLN_8_i1_PROXY_CTRLN_8_i0), .wenable(wrenable_reg_59));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_13_i0_fu_kruskalF_28880_29972), .wenable(wrenable_reg_6));
  register_STD #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_60 (.out1(out_reg_60_reg_60), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_164_i7_fu_kruskalF_28880_30313), .wenable(wrenable_reg_60));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_61 (.out1(out_reg_61_reg_61), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_117_i0_fu_kruskalF_28880_30334), .wenable(wrenable_reg_61));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_62 (.out1(out_reg_62_reg_62), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_16_0_16_166_i1_fu_kruskalF_28880_30571), .wenable(wrenable_reg_62));
  register_STD #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_63 (.out1(out_reg_63_reg_63), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_8_0_8_168_i1_fu_kruskalF_28880_30574), .wenable(wrenable_reg_63));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_64 (.out1(out_reg_64_reg_64), .clock(clock), .reset(reset), .in1(out_ui_bit_and_expr_FU_1_0_1_141_i1_fu_kruskalF_28880_30582), .wenable(wrenable_reg_64));
  register_STD #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_65 (.out1(out_reg_65_reg_65), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_116_i0_fu_kruskalF_28880_30331), .wenable(wrenable_reg_65));
  register_STD #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_66 (.out1(out_reg_66_reg_66), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_164_i8_fu_kruskalF_28880_30340), .wenable(wrenable_reg_66));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_67 (.out1(out_reg_67_reg_67), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_94_i0_fu_kruskalF_28880_29800), .wenable(wrenable_reg_67));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_68 (.out1(out_reg_68_reg_68), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_95_i0_fu_kruskalF_28880_29846), .wenable(wrenable_reg_68));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_69 (.out1(out_reg_69_reg_69), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_107_i0_fu_kruskalF_28880_29610), .wenable(wrenable_reg_69));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_15_i0_fu_kruskalF_28880_29997), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_70 (.out1(out_reg_70_reg_70), .clock(clock), .reset(reset), .in1(out_MUX_221_reg_70_0_0_0), .wenable(wrenable_reg_70));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_71 (.out1(out_reg_71_reg_71), .clock(clock), .reset(reset), .in1(out_PROXY_CTRLN_8_i0_PROXY_CTRLN_8_i0), .wenable(wrenable_reg_71));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_72 (.out1(out_reg_72_reg_72), .clock(clock), .reset(reset), .in1(out_PROXY_CTRLN_7_i0_PROXY_CTRLN_7_i0), .wenable(wrenable_reg_72));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_73 (.out1(out_reg_73_reg_73), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_127_i0_fu_kruskalF_28880_29867), .wenable(wrenable_reg_73));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_74 (.out1(out_reg_74_reg_74), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_156_i0_fu_kruskalF_28880_29826), .wenable(wrenable_reg_74));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_75 (.out1(out_reg_75_reg_75), .clock(clock), .reset(reset), .in1(out_lt_expr_FU_16_16_16_134_i0_fu_kruskalF_28880_30492), .wenable(wrenable_reg_75));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_16_i0_fu_kruskalF_28880_30033), .wenable(wrenable_reg_8));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_18_i0_fu_kruskalF_28880_30037), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy5_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy5_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram6_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram6_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288677_ (.out1(proxy_in1_28867), .in1(sig_out_bus_mergerproxy_in1_288677_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288688_ (.out1(proxy_in1_28868), .in1(sig_out_bus_mergerproxy_in1_288688_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288699_ (.out1(proxy_in1_28869), .in1(sig_out_bus_mergerproxy_in1_288699_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_2887010_ (.out1(proxy_in1_28870), .in1(sig_out_bus_mergerproxy_in1_2887010_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2886711_ (.out1(proxy_in2_28867), .in1(sig_out_bus_mergerproxy_in2_2886711_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2886812_ (.out1(proxy_in2_28868), .in1(sig_out_bus_mergerproxy_in2_2886812_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2886913_ (.out1(proxy_in2_28869), .in1(sig_out_bus_mergerproxy_in2_2886913_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2887014_ (.out1(proxy_in2_28870), .in1(sig_out_bus_mergerproxy_in2_2887014_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2886715_ (.out1(proxy_in3_28867), .in1(sig_out_bus_mergerproxy_in3_2886715_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2886816_ (.out1(proxy_in3_28868), .in1(sig_out_bus_mergerproxy_in3_2886816_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2886917_ (.out1(proxy_in3_28869), .in1(sig_out_bus_mergerproxy_in3_2886917_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2887018_ (.out1(proxy_in3_28870), .in1(sig_out_bus_mergerproxy_in3_2887018_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886719_ (.out1(proxy_sel_LOAD_28867), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886719_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886820_ (.out1(proxy_sel_LOAD_28868), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886820_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886921_ (.out1(proxy_sel_LOAD_28869), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886921_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2887022_ (.out1(proxy_sel_LOAD_28870), .in1(sig_out_bus_mergerproxy_sel_LOAD_2887022_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886723_ (.out1(proxy_sel_STORE_28867), .in1(sig_out_bus_mergerproxy_sel_STORE_2886723_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886824_ (.out1(proxy_sel_STORE_28868), .in1(sig_out_bus_mergerproxy_sel_STORE_2886824_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886925_ (.out1(proxy_sel_STORE_28869), .in1(sig_out_bus_mergerproxy_sel_STORE_2886925_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2887026_ (.out1(proxy_sel_STORE_28870), .in1(sig_out_bus_mergerproxy_sel_STORE_2887026_));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(7), .BITSIZE_out1(9)) ui_plus_expr_FU_8_8_8_157_i2 (.out1(out_ui_plus_expr_FU_8_8_8_157_i2_ui_plus_expr_FU_8_8_8_157_i2), .in1(out_reg_51_reg_51), .in2(out_reg_52_reg_52));
  // io-signal post fix
  assign OUT_CONDITION_kruskalF_28880_29572 = out_read_cond_FU_44_i0_fu_kruskalF_28880_29572;
  assign OUT_CONDITION_kruskalF_28880_29830 = out_read_cond_FU_70_i0_fu_kruskalF_28880_29830;
  assign OUT_CONDITION_kruskalF_28880_29839 = out_read_cond_FU_87_i0_fu_kruskalF_28880_29839;
  assign OUT_CONDITION_kruskalF_28880_29842 = out_read_cond_FU_96_i0_fu_kruskalF_28880_29842;
  assign OUT_CONDITION_kruskalF_28880_29857 = out_read_cond_FU_109_i0_fu_kruskalF_28880_29857;
  assign OUT_CONDITION_kruskalF_28880_29863 = out_read_cond_FU_111_i0_fu_kruskalF_28880_29863;
  assign OUT_CONDITION_kruskalF_28880_29868 = out_read_cond_FU_128_i0_fu_kruskalF_28880_29868;
  assign OUT_MULTIIF_kruskalF_28880_30610 = out_multi_read_cond_FU_43_i0_fu_kruskalF_28880_30610;

endmodule

// FSM based controller description for kruskalF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_kruskalF(done_port, fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_5_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_5_i0_STORE, fuselector_BMEMORY_CTRLN_129_i0_LOAD, fuselector_BMEMORY_CTRLN_129_i0_STORE, selector_MUX_163_reg_18_0_0_0, selector_MUX_164_reg_19_0_0_0, selector_MUX_166_reg_20_0_0_0, selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0, selector_MUX_170_reg_24_0_0_0, selector_MUX_175_reg_29_0_0_0, selector_MUX_177_reg_30_0_0_0, selector_MUX_178_reg_31_0_0_0, selector_MUX_179_reg_32_0_0_0, selector_MUX_180_reg_33_0_0_0, selector_MUX_185_reg_38_0_0_0, selector_MUX_188_reg_40_0_0_0, selector_MUX_191_reg_43_0_0_0, selector_MUX_192_reg_44_0_0_0, selector_MUX_193_reg_45_0_0_0, selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0, selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_0, selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_1, selector_MUX_221_reg_70_0_0_0, selector_MUX_25_BMEMORY_CTRLN_129_i0_1_0_0, selector_MUX_48_PROXY_CTRLN_7_i0_0_0_0, selector_MUX_49_PROXY_CTRLN_7_i0_1_0_0, selector_MUX_4_ARRAY_1D_STD_BRAM_NN_1_i0_0_0_0, selector_MUX_52_PROXY_CTRLN_8_i0_0_0_0, selector_MUX_53_PROXY_CTRLN_8_i0_1_0_0, selector_MUX_53_PROXY_CTRLN_8_i0_1_0_1, selector_MUX_56_PROXY_CTRLN_8_i1_0_0_0, selector_MUX_57_PROXY_CTRLN_8_i1_1_0_0, selector_MUX_57_PROXY_CTRLN_8_i1_1_0_1, selector_MUX_61_PROXY_CTRLN_9_i0_1_0_0, selector_MUX_61_PROXY_CTRLN_9_i0_1_0_1, selector_MUX_61_PROXY_CTRLN_9_i0_1_1_0, fuselector_PROXY_CTRLN_6_i0_LOAD, fuselector_PROXY_CTRLN_6_i0_STORE, fuselector_PROXY_CTRLN_7_i0_LOAD, fuselector_PROXY_CTRLN_7_i0_STORE, fuselector_PROXY_CTRLN_8_i0_LOAD, fuselector_PROXY_CTRLN_8_i0_STORE, fuselector_PROXY_CTRLN_8_i1_LOAD, fuselector_PROXY_CTRLN_8_i1_STORE, fuselector_PROXY_CTRLN_9_i0_LOAD, fuselector_PROXY_CTRLN_9_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_29, wrenable_reg_3, wrenable_reg_30, wrenable_reg_31, wrenable_reg_32, wrenable_reg_33, wrenable_reg_34, wrenable_reg_35, wrenable_reg_36, wrenable_reg_37, wrenable_reg_38, wrenable_reg_39, wrenable_reg_4, wrenable_reg_40, wrenable_reg_41, wrenable_reg_42, wrenable_reg_43, wrenable_reg_44, wrenable_reg_45, wrenable_reg_46, wrenable_reg_47, wrenable_reg_48, wrenable_reg_49, wrenable_reg_5, wrenable_reg_50, wrenable_reg_51, wrenable_reg_52, wrenable_reg_53, wrenable_reg_54, wrenable_reg_55, wrenable_reg_56, wrenable_reg_57, wrenable_reg_58, wrenable_reg_59, wrenable_reg_6, wrenable_reg_60, wrenable_reg_61, wrenable_reg_62, wrenable_reg_63, wrenable_reg_64, wrenable_reg_65, wrenable_reg_66, wrenable_reg_67, wrenable_reg_68, wrenable_reg_69, wrenable_reg_7, wrenable_reg_70, wrenable_reg_71, wrenable_reg_72, wrenable_reg_73, wrenable_reg_74, wrenable_reg_75, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_kruskalF_28880_29572, OUT_CONDITION_kruskalF_28880_29830, OUT_CONDITION_kruskalF_28880_29839, OUT_CONDITION_kruskalF_28880_29842, OUT_CONDITION_kruskalF_28880_29857, OUT_CONDITION_kruskalF_28880_29863, OUT_CONDITION_kruskalF_28880_29868, OUT_MULTIIF_kruskalF_28880_30610, clock, reset, start_port);
  // IN
  input OUT_CONDITION_kruskalF_28880_29572;
  input OUT_CONDITION_kruskalF_28880_29830;
  input OUT_CONDITION_kruskalF_28880_29839;
  input OUT_CONDITION_kruskalF_28880_29842;
  input OUT_CONDITION_kruskalF_28880_29857;
  input OUT_CONDITION_kruskalF_28880_29863;
  input OUT_CONDITION_kruskalF_28880_29868;
  input [1:0] OUT_MULTIIF_kruskalF_28880_30610;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_5_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_5_i0_STORE;
  output fuselector_BMEMORY_CTRLN_129_i0_LOAD;
  output fuselector_BMEMORY_CTRLN_129_i0_STORE;
  output selector_MUX_163_reg_18_0_0_0;
  output selector_MUX_164_reg_19_0_0_0;
  output selector_MUX_166_reg_20_0_0_0;
  output selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0;
  output selector_MUX_170_reg_24_0_0_0;
  output selector_MUX_175_reg_29_0_0_0;
  output selector_MUX_177_reg_30_0_0_0;
  output selector_MUX_178_reg_31_0_0_0;
  output selector_MUX_179_reg_32_0_0_0;
  output selector_MUX_180_reg_33_0_0_0;
  output selector_MUX_185_reg_38_0_0_0;
  output selector_MUX_188_reg_40_0_0_0;
  output selector_MUX_191_reg_43_0_0_0;
  output selector_MUX_192_reg_44_0_0_0;
  output selector_MUX_193_reg_45_0_0_0;
  output selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0;
  output selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_0;
  output selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_1;
  output selector_MUX_221_reg_70_0_0_0;
  output selector_MUX_25_BMEMORY_CTRLN_129_i0_1_0_0;
  output selector_MUX_48_PROXY_CTRLN_7_i0_0_0_0;
  output selector_MUX_49_PROXY_CTRLN_7_i0_1_0_0;
  output selector_MUX_4_ARRAY_1D_STD_BRAM_NN_1_i0_0_0_0;
  output selector_MUX_52_PROXY_CTRLN_8_i0_0_0_0;
  output selector_MUX_53_PROXY_CTRLN_8_i0_1_0_0;
  output selector_MUX_53_PROXY_CTRLN_8_i0_1_0_1;
  output selector_MUX_56_PROXY_CTRLN_8_i1_0_0_0;
  output selector_MUX_57_PROXY_CTRLN_8_i1_1_0_0;
  output selector_MUX_57_PROXY_CTRLN_8_i1_1_0_1;
  output selector_MUX_61_PROXY_CTRLN_9_i0_1_0_0;
  output selector_MUX_61_PROXY_CTRLN_9_i0_1_0_1;
  output selector_MUX_61_PROXY_CTRLN_9_i0_1_1_0;
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
  output wrenable_reg_63;
  output wrenable_reg_64;
  output wrenable_reg_65;
  output wrenable_reg_66;
  output wrenable_reg_67;
  output wrenable_reg_68;
  output wrenable_reg_69;
  output wrenable_reg_7;
  output wrenable_reg_70;
  output wrenable_reg_71;
  output wrenable_reg_72;
  output wrenable_reg_73;
  output wrenable_reg_74;
  output wrenable_reg_75;
  output wrenable_reg_8;
  output wrenable_reg_9;
  parameter [49:0] S_0 = 50'b00000000000000000000000000000000000000000000000001,
    S_1 = 50'b00000000000000000000000000000000000000000000000010,
    S_2 = 50'b00000000000000000000000000000000000000000000000100,
    S_3 = 50'b00000000000000000000000000000000000000000000001000,
    S_4 = 50'b00000000000000000000000000000000000000000000010000,
    S_5 = 50'b00000000000000000000000000000000000000000000100000,
    S_6 = 50'b00000000000000000000000000000000000000000001000000,
    S_7 = 50'b00000000000000000000000000000000000000000010000000,
    S_8 = 50'b00000000000000000000000000000000000000000100000000,
    S_48 = 50'b01000000000000000000000000000000000000000000000000,
    S_9 = 50'b00000000000000000000000000000000000000001000000000,
    S_10 = 50'b00000000000000000000000000000000000000010000000000,
    S_11 = 50'b00000000000000000000000000000000000000100000000000,
    S_12 = 50'b00000000000000000000000000000000000001000000000000,
    S_13 = 50'b00000000000000000000000000000000000010000000000000,
    S_14 = 50'b00000000000000000000000000000000000100000000000000,
    S_15 = 50'b00000000000000000000000000000000001000000000000000,
    S_16 = 50'b00000000000000000000000000000000010000000000000000,
    S_17 = 50'b00000000000000000000000000000000100000000000000000,
    S_18 = 50'b00000000000000000000000000000001000000000000000000,
    S_19 = 50'b00000000000000000000000000000010000000000000000000,
    S_20 = 50'b00000000000000000000000000000100000000000000000000,
    S_21 = 50'b00000000000000000000000000001000000000000000000000,
    S_22 = 50'b00000000000000000000000000010000000000000000000000,
    S_23 = 50'b00000000000000000000000000100000000000000000000000,
    S_24 = 50'b00000000000000000000000001000000000000000000000000,
    S_25 = 50'b00000000000000000000000010000000000000000000000000,
    S_26 = 50'b00000000000000000000000100000000000000000000000000,
    S_37 = 50'b00000000000010000000000000000000000000000000000000,
    S_38 = 50'b00000000000100000000000000000000000000000000000000,
    S_39 = 50'b00000000001000000000000000000000000000000000000000,
    S_40 = 50'b00000000010000000000000000000000000000000000000000,
    S_41 = 50'b00000000100000000000000000000000000000000000000000,
    S_42 = 50'b00000001000000000000000000000000000000000000000000,
    S_43 = 50'b00000010000000000000000000000000000000000000000000,
    S_27 = 50'b00000000000000000000001000000000000000000000000000,
    S_28 = 50'b00000000000000000000010000000000000000000000000000,
    S_29 = 50'b00000000000000000000100000000000000000000000000000,
    S_30 = 50'b00000000000000000001000000000000000000000000000000,
    S_31 = 50'b00000000000000000010000000000000000000000000000000,
    S_32 = 50'b00000000000000000100000000000000000000000000000000,
    S_33 = 50'b00000000000000001000000000000000000000000000000000,
    S_34 = 50'b00000000000000010000000000000000000000000000000000,
    S_35 = 50'b00000000000000100000000000000000000000000000000000,
    S_36 = 50'b00000000000001000000000000000000000000000000000000,
    S_44 = 50'b00000100000000000000000000000000000000000000000000,
    S_45 = 50'b00001000000000000000000000000000000000000000000000,
    S_46 = 50'b00010000000000000000000000000000000000000000000000,
    S_47 = 50'b00100000000000000000000000000000000000000000000000,
    S_49 = 50'b10000000000000000000000000000000000000000000000000;
  reg [49:0] _present_state, _next_state;
  reg done_port;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_5_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_5_i0_STORE;
  reg fuselector_BMEMORY_CTRLN_129_i0_LOAD;
  reg fuselector_BMEMORY_CTRLN_129_i0_STORE;
  reg selector_MUX_163_reg_18_0_0_0;
  reg selector_MUX_164_reg_19_0_0_0;
  reg selector_MUX_166_reg_20_0_0_0;
  reg selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0;
  reg selector_MUX_170_reg_24_0_0_0;
  reg selector_MUX_175_reg_29_0_0_0;
  reg selector_MUX_177_reg_30_0_0_0;
  reg selector_MUX_178_reg_31_0_0_0;
  reg selector_MUX_179_reg_32_0_0_0;
  reg selector_MUX_180_reg_33_0_0_0;
  reg selector_MUX_185_reg_38_0_0_0;
  reg selector_MUX_188_reg_40_0_0_0;
  reg selector_MUX_191_reg_43_0_0_0;
  reg selector_MUX_192_reg_44_0_0_0;
  reg selector_MUX_193_reg_45_0_0_0;
  reg selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0;
  reg selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_0;
  reg selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_1;
  reg selector_MUX_221_reg_70_0_0_0;
  reg selector_MUX_25_BMEMORY_CTRLN_129_i0_1_0_0;
  reg selector_MUX_48_PROXY_CTRLN_7_i0_0_0_0;
  reg selector_MUX_49_PROXY_CTRLN_7_i0_1_0_0;
  reg selector_MUX_4_ARRAY_1D_STD_BRAM_NN_1_i0_0_0_0;
  reg selector_MUX_52_PROXY_CTRLN_8_i0_0_0_0;
  reg selector_MUX_53_PROXY_CTRLN_8_i0_1_0_0;
  reg selector_MUX_53_PROXY_CTRLN_8_i0_1_0_1;
  reg selector_MUX_56_PROXY_CTRLN_8_i1_0_0_0;
  reg selector_MUX_57_PROXY_CTRLN_8_i1_1_0_0;
  reg selector_MUX_57_PROXY_CTRLN_8_i1_1_0_1;
  reg selector_MUX_61_PROXY_CTRLN_9_i0_1_0_0;
  reg selector_MUX_61_PROXY_CTRLN_9_i0_1_0_1;
  reg selector_MUX_61_PROXY_CTRLN_9_i0_1_1_0;
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
  reg wrenable_reg_63;
  reg wrenable_reg_64;
  reg wrenable_reg_65;
  reg wrenable_reg_66;
  reg wrenable_reg_67;
  reg wrenable_reg_68;
  reg wrenable_reg_69;
  reg wrenable_reg_7;
  reg wrenable_reg_70;
  reg wrenable_reg_71;
  reg wrenable_reg_72;
  reg wrenable_reg_73;
  reg wrenable_reg_74;
  reg wrenable_reg_75;
  reg wrenable_reg_8;
  reg wrenable_reg_9;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_5_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_5_i0_STORE = 1'b0;
    fuselector_BMEMORY_CTRLN_129_i0_LOAD = 1'b0;
    fuselector_BMEMORY_CTRLN_129_i0_STORE = 1'b0;
    selector_MUX_163_reg_18_0_0_0 = 1'b0;
    selector_MUX_164_reg_19_0_0_0 = 1'b0;
    selector_MUX_166_reg_20_0_0_0 = 1'b0;
    selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0 = 1'b0;
    selector_MUX_170_reg_24_0_0_0 = 1'b0;
    selector_MUX_175_reg_29_0_0_0 = 1'b0;
    selector_MUX_177_reg_30_0_0_0 = 1'b0;
    selector_MUX_178_reg_31_0_0_0 = 1'b0;
    selector_MUX_179_reg_32_0_0_0 = 1'b0;
    selector_MUX_180_reg_33_0_0_0 = 1'b0;
    selector_MUX_185_reg_38_0_0_0 = 1'b0;
    selector_MUX_188_reg_40_0_0_0 = 1'b0;
    selector_MUX_191_reg_43_0_0_0 = 1'b0;
    selector_MUX_192_reg_44_0_0_0 = 1'b0;
    selector_MUX_193_reg_45_0_0_0 = 1'b0;
    selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0 = 1'b0;
    selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_0 = 1'b0;
    selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_1 = 1'b0;
    selector_MUX_221_reg_70_0_0_0 = 1'b0;
    selector_MUX_25_BMEMORY_CTRLN_129_i0_1_0_0 = 1'b0;
    selector_MUX_48_PROXY_CTRLN_7_i0_0_0_0 = 1'b0;
    selector_MUX_49_PROXY_CTRLN_7_i0_1_0_0 = 1'b0;
    selector_MUX_4_ARRAY_1D_STD_BRAM_NN_1_i0_0_0_0 = 1'b0;
    selector_MUX_52_PROXY_CTRLN_8_i0_0_0_0 = 1'b0;
    selector_MUX_53_PROXY_CTRLN_8_i0_1_0_0 = 1'b0;
    selector_MUX_53_PROXY_CTRLN_8_i0_1_0_1 = 1'b0;
    selector_MUX_56_PROXY_CTRLN_8_i1_0_0_0 = 1'b0;
    selector_MUX_57_PROXY_CTRLN_8_i1_1_0_0 = 1'b0;
    selector_MUX_57_PROXY_CTRLN_8_i1_1_0_1 = 1'b0;
    selector_MUX_61_PROXY_CTRLN_9_i0_1_0_0 = 1'b0;
    selector_MUX_61_PROXY_CTRLN_9_i0_1_0_1 = 1'b0;
    selector_MUX_61_PROXY_CTRLN_9_i0_1_1_0 = 1'b0;
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
    wrenable_reg_63 = 1'b0;
    wrenable_reg_64 = 1'b0;
    wrenable_reg_65 = 1'b0;
    wrenable_reg_66 = 1'b0;
    wrenable_reg_67 = 1'b0;
    wrenable_reg_68 = 1'b0;
    wrenable_reg_69 = 1'b0;
    wrenable_reg_7 = 1'b0;
    wrenable_reg_70 = 1'b0;
    wrenable_reg_71 = 1'b0;
    wrenable_reg_72 = 1'b0;
    wrenable_reg_73 = 1'b0;
    wrenable_reg_74 = 1'b0;
    wrenable_reg_75 = 1'b0;
    wrenable_reg_8 = 1'b0;
    wrenable_reg_9 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD = 1'b1;
          selector_MUX_48_PROXY_CTRLN_7_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_7_i0_STORE = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_12 = 1'b1;
          wrenable_reg_13 = 1'b1;
          wrenable_reg_14 = 1'b1;
          wrenable_reg_15 = 1'b1;
          wrenable_reg_16 = 1'b1;
          wrenable_reg_17 = 1'b1;
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
          selector_MUX_163_reg_18_0_0_0 = 1'bX;
          selector_MUX_164_reg_19_0_0_0 = 1'bX;
          selector_MUX_166_reg_20_0_0_0 = 1'bX;
          selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0 = 1'bX;
          selector_MUX_170_reg_24_0_0_0 = 1'bX;
          selector_MUX_175_reg_29_0_0_0 = 1'bX;
          selector_MUX_177_reg_30_0_0_0 = 1'bX;
          selector_MUX_178_reg_31_0_0_0 = 1'bX;
          selector_MUX_179_reg_32_0_0_0 = 1'bX;
          selector_MUX_180_reg_33_0_0_0 = 1'bX;
          selector_MUX_185_reg_38_0_0_0 = 1'bX;
          selector_MUX_188_reg_40_0_0_0 = 1'bX;
          selector_MUX_191_reg_43_0_0_0 = 1'bX;
          selector_MUX_192_reg_44_0_0_0 = 1'bX;
          selector_MUX_193_reg_45_0_0_0 = 1'bX;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0 = 1'bX;
          selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_0 = 1'bX;
          selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_1 = 1'bX;
          selector_MUX_221_reg_70_0_0_0 = 1'bX;
          selector_MUX_25_BMEMORY_CTRLN_129_i0_1_0_0 = 1'bX;
          selector_MUX_48_PROXY_CTRLN_7_i0_0_0_0 = 1'bX;
          selector_MUX_49_PROXY_CTRLN_7_i0_1_0_0 = 1'bX;
          selector_MUX_4_ARRAY_1D_STD_BRAM_NN_1_i0_0_0_0 = 1'bX;
          selector_MUX_52_PROXY_CTRLN_8_i0_0_0_0 = 1'bX;
          selector_MUX_53_PROXY_CTRLN_8_i0_1_0_0 = 1'bX;
          selector_MUX_53_PROXY_CTRLN_8_i0_1_0_1 = 1'bX;
          selector_MUX_56_PROXY_CTRLN_8_i1_0_0_0 = 1'bX;
          selector_MUX_57_PROXY_CTRLN_8_i1_1_0_0 = 1'bX;
          selector_MUX_57_PROXY_CTRLN_8_i1_1_0_1 = 1'bX;
          selector_MUX_61_PROXY_CTRLN_9_i0_1_0_0 = 1'bX;
          selector_MUX_61_PROXY_CTRLN_9_i0_1_0_1 = 1'bX;
          selector_MUX_61_PROXY_CTRLN_9_i0_1_1_0 = 1'bX;
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
          wrenable_reg_70 = 1'bX;
          wrenable_reg_71 = 1'bX;
          wrenable_reg_72 = 1'bX;
          wrenable_reg_73 = 1'bX;
          wrenable_reg_74 = 1'bX;
          wrenable_reg_75 = 1'bX;
          wrenable_reg_8 = 1'bX;
          wrenable_reg_9 = 1'bX;
          _next_state = S_0;
        end
      S_1 :
        begin
          selector_MUX_163_reg_18_0_0_0 = 1'b1;
          selector_MUX_164_reg_19_0_0_0 = 1'b1;
          selector_MUX_166_reg_20_0_0_0 = 1'b1;
          wrenable_reg_18 = 1'b1;
          wrenable_reg_19 = 1'b1;
          wrenable_reg_20 = 1'b1;
          _next_state = S_2;
        end
      S_2 :
        begin
          selector_MUX_170_reg_24_0_0_0 = 1'b1;
          wrenable_reg_20 = 1'b1;
          wrenable_reg_21 = 1'b1;
          wrenable_reg_22 = 1'b1;
          wrenable_reg_24 = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          wrenable_reg_23 = 1'b1;
          wrenable_reg_24 = 1'b1;
          wrenable_reg_25 = 1'b1;
          wrenable_reg_26 = 1'b1;
          wrenable_reg_27 = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          fuselector_PROXY_CTRLN_9_i0_LOAD = 1'b1;
          _next_state = S_5;
        end
      S_5 :
        begin
          wrenable_reg_37 = 1'b1;
          _next_state = S_6;
        end
      S_6 :
        begin
          wrenable_reg_18 = 1'b1;
          wrenable_reg_19 = 1'b1;
          if (OUT_MULTIIF_kruskalF_28880_30610[0] == 1'b1)
            begin
              _next_state = S_3;
            end
          else if (OUT_MULTIIF_kruskalF_28880_30610[1] == 1'b1)
            begin
              _next_state = S_2;
            end
          else
            begin
              _next_state = S_7;
            end
        end
      S_7 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE = 1'b1;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0 = 1'b1;
          selector_MUX_48_PROXY_CTRLN_7_i0_0_0_0 = 1'b1;
          selector_MUX_49_PROXY_CTRLN_7_i0_1_0_0 = 1'b1;
          selector_MUX_53_PROXY_CTRLN_8_i0_1_0_1 = 1'b1;
          selector_MUX_56_PROXY_CTRLN_8_i1_0_0_0 = 1'b1;
          selector_MUX_57_PROXY_CTRLN_8_i1_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_6_i0_STORE = 1'b1;
          fuselector_PROXY_CTRLN_7_i0_STORE = 1'b1;
          fuselector_PROXY_CTRLN_8_i0_STORE = 1'b1;
          fuselector_PROXY_CTRLN_8_i1_STORE = 1'b1;
          wrenable_reg_28 = 1'b1;
          _next_state = S_8;
        end
      S_8 :
        begin
          selector_MUX_57_PROXY_CTRLN_8_i1_1_0_1 = 1'b1;
          fuselector_PROXY_CTRLN_8_i1_STORE = 1'b1;
          if (OUT_CONDITION_kruskalF_28880_29572 == 1'b1)
            begin
              _next_state = S_9;
            end
          else
            begin
              _next_state = S_48;
              done_port = 1'b1;
            end
        end
      S_48 :
        begin
          _next_state = S_0;
        end
      S_9 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_LOAD = 1'b1;
          _next_state = S_10;
        end
      S_10 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD = 1'b1;
          selector_MUX_178_reg_31_0_0_0 = 1'b1;
          selector_MUX_179_reg_32_0_0_0 = 1'b1;
          wrenable_reg_31 = 1'b1;
          wrenable_reg_32 = 1'b1;
          _next_state = S_11;
        end
      S_11 :
        begin
          selector_MUX_175_reg_29_0_0_0 = 1'b1;
          selector_MUX_177_reg_30_0_0_0 = 1'b1;
          selector_MUX_180_reg_33_0_0_0 = 1'b1;
          wrenable_reg_29 = 1'b1;
          wrenable_reg_30 = 1'b1;
          wrenable_reg_33 = 1'b1;
          _next_state = S_12;
        end
      S_12 :
        begin
          wrenable_reg_33 = 1'b1;
          wrenable_reg_34 = 1'b1;
          wrenable_reg_35 = 1'b1;
          wrenable_reg_36 = 1'b1;
          _next_state = S_13;
        end
      S_13 :
        begin
          selector_MUX_61_PROXY_CTRLN_9_i0_1_0_1 = 1'b1;
          fuselector_PROXY_CTRLN_9_i0_LOAD = 1'b1;
          _next_state = S_14;
        end
      S_14 :
        begin
          wrenable_reg_37 = 1'b1;
          _next_state = S_15;
        end
      S_15 :
        begin
          selector_MUX_185_reg_38_0_0_0 = 1'b1;
          selector_MUX_188_reg_40_0_0_0 = 1'b1;
          wrenable_reg_29 = 1'b1;
          wrenable_reg_30 = 1'b1;
          wrenable_reg_31 = 1'b1;
          wrenable_reg_32 = 1'b1;
          wrenable_reg_38 = 1'b1;
          wrenable_reg_40 = 1'b1;
          wrenable_reg_43 = 1'b1;
          wrenable_reg_44 = 1'b1;
          wrenable_reg_45 = 1'b1;
          if (OUT_CONDITION_kruskalF_28880_29830 == 1'b1)
            begin
              _next_state = S_12;
              selector_MUX_185_reg_38_0_0_0 = 1'b0;
              selector_MUX_188_reg_40_0_0_0 = 1'b0;
              wrenable_reg_38 = 1'b0;
              wrenable_reg_40 = 1'b0;
              wrenable_reg_43 = 1'b0;
              wrenable_reg_44 = 1'b0;
              wrenable_reg_45 = 1'b0;
            end
          else
            begin
              _next_state = S_16;
              wrenable_reg_29 = 1'b0;
              wrenable_reg_30 = 1'b0;
              wrenable_reg_31 = 1'b0;
              wrenable_reg_32 = 1'b0;
            end
        end
      S_16 :
        begin
          wrenable_reg_39 = 1'b1;
          wrenable_reg_40 = 1'b1;
          wrenable_reg_41 = 1'b1;
          wrenable_reg_42 = 1'b1;
          _next_state = S_17;
        end
      S_17 :
        begin
          selector_MUX_61_PROXY_CTRLN_9_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRLN_9_i0_LOAD = 1'b1;
          _next_state = S_18;
        end
      S_18 :
        begin
          wrenable_reg_37 = 1'b1;
          _next_state = S_19;
        end
      S_19 :
        begin
          selector_MUX_191_reg_43_0_0_0 = 1'b1;
          selector_MUX_192_reg_44_0_0_0 = 1'b1;
          selector_MUX_193_reg_45_0_0_0 = 1'b1;
          wrenable_reg_38 = 1'b1;
          wrenable_reg_43 = 1'b1;
          wrenable_reg_44 = 1'b1;
          wrenable_reg_45 = 1'b1;
          if (OUT_CONDITION_kruskalF_28880_29839 == 1'b1)
            begin
              _next_state = S_16;
            end
          else
            begin
              _next_state = S_20;
              wrenable_reg_38 = 1'b0;
            end
        end
      S_20 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_5_i0_STORE = 1'b1;
          selector_MUX_4_ARRAY_1D_STD_BRAM_NN_1_i0_0_0_0 = 1'b1;
          _next_state = S_21;
        end
      S_21 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_LOAD = 1'b1;
          _next_state = S_22;
        end
      S_22 :
        begin
          wrenable_reg_46 = 1'b1;
          wrenable_reg_47 = 1'b1;
          wrenable_reg_48 = 1'b1;
          wrenable_reg_49 = 1'b1;
          wrenable_reg_50 = 1'b1;
          wrenable_reg_51 = 1'b1;
          wrenable_reg_52 = 1'b1;
          wrenable_reg_53 = 1'b1;
          _next_state = S_23;
        end
      S_23 :
        begin
          wrenable_reg_54 = 1'b1;
          wrenable_reg_55 = 1'b1;
          wrenable_reg_56 = 1'b1;
          wrenable_reg_57 = 1'b1;
          _next_state = S_24;
        end
      S_24 :
        begin
          fuselector_PROXY_CTRLN_8_i0_LOAD = 1'b1;
          fuselector_PROXY_CTRLN_8_i1_LOAD = 1'b1;
          wrenable_reg_58 = 1'b1;
          _next_state = S_25;
        end
      S_25 :
        begin
          selector_MUX_61_PROXY_CTRLN_9_i0_1_0_0 = 1'b1;
          selector_MUX_61_PROXY_CTRLN_9_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRLN_9_i0_STORE = 1'b1;
          wrenable_reg_59 = 1'b1;
          wrenable_reg_71 = 1'b1;
          _next_state = S_26;
        end
      S_26 :
        begin
          wrenable_reg_67 = 1'b1;
          wrenable_reg_68 = 1'b1;
          if (OUT_CONDITION_kruskalF_28880_29842 == 1'b1)
            begin
              _next_state = S_27;
            end
          else
            begin
              _next_state = S_37;
              wrenable_reg_67 = 1'b0;
              wrenable_reg_68 = 1'b0;
            end
        end
      S_37 :
        begin
          wrenable_reg_60 = 1'b1;
          _next_state = S_38;
        end
      S_38 :
        begin
          fuselector_BMEMORY_CTRLN_129_i0_STORE = 1'b1;
          _next_state = S_39;
        end
      S_39 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_LOAD = 1'b1;
          _next_state = S_40;
        end
      S_40 :
        begin
          wrenable_reg_61 = 1'b1;
          wrenable_reg_62 = 1'b1;
          wrenable_reg_63 = 1'b1;
          wrenable_reg_64 = 1'b1;
          _next_state = S_41;
        end
      S_41 :
        begin
          wrenable_reg_65 = 1'b1;
          _next_state = S_42;
        end
      S_42 :
        begin
          wrenable_reg_66 = 1'b1;
          _next_state = S_43;
        end
      S_43 :
        begin
          fuselector_BMEMORY_CTRLN_129_i0_STORE = 1'b1;
          selector_MUX_25_BMEMORY_CTRLN_129_i0_1_0_0 = 1'b1;
          _next_state = S_44;
        end
      S_27 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_5_i0_STORE = 1'b1;
          selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0 = 1'b1;
          selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_0 = 1'b1;
          selector_MUX_221_reg_70_0_0_0 = 1'b1;
          wrenable_reg_70 = 1'b1;
          _next_state = S_28;
        end
      S_28 :
        begin
          wrenable_reg_69 = 1'b1;
          wrenable_reg_70 = 1'b1;
          _next_state = S_29;
        end
      S_29 :
        begin
          selector_MUX_53_PROXY_CTRLN_8_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_8_i0_LOAD = 1'b1;
          _next_state = S_30;
        end
      S_30 :
        begin
          wrenable_reg_71 = 1'b1;
          _next_state = S_31;
        end
      S_31 :
        begin
          if (OUT_CONDITION_kruskalF_28880_29857 == 1'b1)
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
          fuselector_PROXY_CTRLN_8_i0_LOAD = 1'b1;
          _next_state = S_33;
        end
      S_33 :
        begin
          wrenable_reg_71 = 1'b1;
          _next_state = S_34;
        end
      S_34 :
        begin
          selector_MUX_52_PROXY_CTRLN_8_i0_0_0_0 = 1'b1;
          selector_MUX_53_PROXY_CTRLN_8_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_8_i0_STORE = 1'b1;
          _next_state = S_35;
        end
      S_35 :
        begin
          if (OUT_CONDITION_kruskalF_28880_29863 == 1'b1)
            begin
              _next_state = S_28;
            end
          else
            begin
              _next_state = S_36;
            end
        end
      S_36 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_5_i0_STORE = 1'b1;
          selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_1 = 1'b1;
          _next_state = S_44;
        end
      S_44 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD = 1'b1;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0 = 1'b1;
          selector_MUX_49_PROXY_CTRLN_7_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_7_i0_LOAD = 1'b1;
          _next_state = S_45;
        end
      S_45 :
        begin
          wrenable_reg_72 = 1'b1;
          wrenable_reg_73 = 1'b1;
          _next_state = S_46;
        end
      S_46 :
        begin
          wrenable_reg_74 = 1'b1;
          wrenable_reg_75 = 1'b1;
          _next_state = S_47;
        end
      S_47 :
        begin
          selector_MUX_49_PROXY_CTRLN_7_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_7_i0_STORE = 1'b1;
          if (OUT_CONDITION_kruskalF_28880_29868 == 1'b1)
            begin
              _next_state = S_9;
            end
          else
            begin
              _next_state = S_49;
              done_port = 1'b1;
            end
        end
      S_49 :
        begin
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_163_reg_18_0_0_0 = 1'bX;
          selector_MUX_164_reg_19_0_0_0 = 1'bX;
          selector_MUX_166_reg_20_0_0_0 = 1'bX;
          selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0 = 1'bX;
          selector_MUX_170_reg_24_0_0_0 = 1'bX;
          selector_MUX_175_reg_29_0_0_0 = 1'bX;
          selector_MUX_177_reg_30_0_0_0 = 1'bX;
          selector_MUX_178_reg_31_0_0_0 = 1'bX;
          selector_MUX_179_reg_32_0_0_0 = 1'bX;
          selector_MUX_180_reg_33_0_0_0 = 1'bX;
          selector_MUX_185_reg_38_0_0_0 = 1'bX;
          selector_MUX_188_reg_40_0_0_0 = 1'bX;
          selector_MUX_191_reg_43_0_0_0 = 1'bX;
          selector_MUX_192_reg_44_0_0_0 = 1'bX;
          selector_MUX_193_reg_45_0_0_0 = 1'bX;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0 = 1'bX;
          selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_0 = 1'bX;
          selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_1 = 1'bX;
          selector_MUX_221_reg_70_0_0_0 = 1'bX;
          selector_MUX_25_BMEMORY_CTRLN_129_i0_1_0_0 = 1'bX;
          selector_MUX_48_PROXY_CTRLN_7_i0_0_0_0 = 1'bX;
          selector_MUX_49_PROXY_CTRLN_7_i0_1_0_0 = 1'bX;
          selector_MUX_4_ARRAY_1D_STD_BRAM_NN_1_i0_0_0_0 = 1'bX;
          selector_MUX_52_PROXY_CTRLN_8_i0_0_0_0 = 1'bX;
          selector_MUX_53_PROXY_CTRLN_8_i0_1_0_0 = 1'bX;
          selector_MUX_53_PROXY_CTRLN_8_i0_1_0_1 = 1'bX;
          selector_MUX_56_PROXY_CTRLN_8_i1_0_0_0 = 1'bX;
          selector_MUX_57_PROXY_CTRLN_8_i1_1_0_0 = 1'bX;
          selector_MUX_57_PROXY_CTRLN_8_i1_1_0_1 = 1'bX;
          selector_MUX_61_PROXY_CTRLN_9_i0_1_0_0 = 1'bX;
          selector_MUX_61_PROXY_CTRLN_9_i0_1_0_1 = 1'bX;
          selector_MUX_61_PROXY_CTRLN_9_i0_1_1_0 = 1'bX;
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
          wrenable_reg_70 = 1'bX;
          wrenable_reg_71 = 1'bX;
          wrenable_reg_72 = 1'bX;
          wrenable_reg_73 = 1'bX;
          wrenable_reg_74 = 1'bX;
          wrenable_reg_75 = 1'bX;
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
  input [63:0] S_Wdata_ram;
  input [11:0] S_data_ram_size;
  input [63:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [63:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [63:0] proxy_out1_28867;
  input [63:0] proxy_out1_28868;
  input [63:0] proxy_out1_28869;
  input [63:0] proxy_out1_28870;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [17:0] Min_addr_ram;
  input [63:0] Min_Wdata_ram;
  input [11:0] Min_data_ram_size;
  // OUT
  output done_port;
  output [63:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [63:0] proxy_in1_28867;
  output [17:0] proxy_in2_28867;
  output [11:0] proxy_in3_28867;
  output [1:0] proxy_sel_LOAD_28867;
  output [1:0] proxy_sel_STORE_28867;
  output [63:0] proxy_in1_28868;
  output [17:0] proxy_in2_28868;
  output [11:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [63:0] proxy_in1_28869;
  output [17:0] proxy_in2_28869;
  output [11:0] proxy_in3_28869;
  output [1:0] proxy_sel_LOAD_28869;
  output [1:0] proxy_sel_STORE_28869;
  output [63:0] proxy_in1_28870;
  output [17:0] proxy_in2_28870;
  output [11:0] proxy_in3_28870;
  output [1:0] proxy_sel_LOAD_28870;
  output [1:0] proxy_sel_STORE_28870;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [17:0] Mout_addr_ram;
  output [63:0] Mout_Wdata_ram;
  output [11:0] Mout_data_ram_size;
  // Component and signal declarations
  wire OUT_CONDITION_kruskalF_28880_29572;
  wire OUT_CONDITION_kruskalF_28880_29830;
  wire OUT_CONDITION_kruskalF_28880_29839;
  wire OUT_CONDITION_kruskalF_28880_29842;
  wire OUT_CONDITION_kruskalF_28880_29857;
  wire OUT_CONDITION_kruskalF_28880_29863;
  wire OUT_CONDITION_kruskalF_28880_29868;
  wire [1:0] OUT_MULTIIF_kruskalF_28880_30610;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_5_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_5_i0_STORE;
  wire fuselector_BMEMORY_CTRLN_129_i0_LOAD;
  wire fuselector_BMEMORY_CTRLN_129_i0_STORE;
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
  wire selector_MUX_163_reg_18_0_0_0;
  wire selector_MUX_164_reg_19_0_0_0;
  wire selector_MUX_166_reg_20_0_0_0;
  wire selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0;
  wire selector_MUX_170_reg_24_0_0_0;
  wire selector_MUX_175_reg_29_0_0_0;
  wire selector_MUX_177_reg_30_0_0_0;
  wire selector_MUX_178_reg_31_0_0_0;
  wire selector_MUX_179_reg_32_0_0_0;
  wire selector_MUX_180_reg_33_0_0_0;
  wire selector_MUX_185_reg_38_0_0_0;
  wire selector_MUX_188_reg_40_0_0_0;
  wire selector_MUX_191_reg_43_0_0_0;
  wire selector_MUX_192_reg_44_0_0_0;
  wire selector_MUX_193_reg_45_0_0_0;
  wire selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0;
  wire selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_0;
  wire selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_1;
  wire selector_MUX_221_reg_70_0_0_0;
  wire selector_MUX_25_BMEMORY_CTRLN_129_i0_1_0_0;
  wire selector_MUX_48_PROXY_CTRLN_7_i0_0_0_0;
  wire selector_MUX_49_PROXY_CTRLN_7_i0_1_0_0;
  wire selector_MUX_4_ARRAY_1D_STD_BRAM_NN_1_i0_0_0_0;
  wire selector_MUX_52_PROXY_CTRLN_8_i0_0_0_0;
  wire selector_MUX_53_PROXY_CTRLN_8_i0_1_0_0;
  wire selector_MUX_53_PROXY_CTRLN_8_i0_1_0_1;
  wire selector_MUX_56_PROXY_CTRLN_8_i1_0_0_0;
  wire selector_MUX_57_PROXY_CTRLN_8_i1_1_0_0;
  wire selector_MUX_57_PROXY_CTRLN_8_i1_1_0_1;
  wire selector_MUX_61_PROXY_CTRLN_9_i0_1_0_0;
  wire selector_MUX_61_PROXY_CTRLN_9_i0_1_0_1;
  wire selector_MUX_61_PROXY_CTRLN_9_i0_1_1_0;
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
  wire wrenable_reg_70;
  wire wrenable_reg_71;
  wire wrenable_reg_72;
  wire wrenable_reg_73;
  wire wrenable_reg_74;
  wire wrenable_reg_75;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  controller_kruskalF Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_5_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_5_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_5_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_5_i0_STORE), .fuselector_BMEMORY_CTRLN_129_i0_LOAD(fuselector_BMEMORY_CTRLN_129_i0_LOAD), .fuselector_BMEMORY_CTRLN_129_i0_STORE(fuselector_BMEMORY_CTRLN_129_i0_STORE), .selector_MUX_163_reg_18_0_0_0(selector_MUX_163_reg_18_0_0_0), .selector_MUX_164_reg_19_0_0_0(selector_MUX_164_reg_19_0_0_0), .selector_MUX_166_reg_20_0_0_0(selector_MUX_166_reg_20_0_0_0), .selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0(selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0), .selector_MUX_170_reg_24_0_0_0(selector_MUX_170_reg_24_0_0_0), .selector_MUX_175_reg_29_0_0_0(selector_MUX_175_reg_29_0_0_0), .selector_MUX_177_reg_30_0_0_0(selector_MUX_177_reg_30_0_0_0), .selector_MUX_178_reg_31_0_0_0(selector_MUX_178_reg_31_0_0_0), .selector_MUX_179_reg_32_0_0_0(selector_MUX_179_reg_32_0_0_0), .selector_MUX_180_reg_33_0_0_0(selector_MUX_180_reg_33_0_0_0), .selector_MUX_185_reg_38_0_0_0(selector_MUX_185_reg_38_0_0_0), .selector_MUX_188_reg_40_0_0_0(selector_MUX_188_reg_40_0_0_0), .selector_MUX_191_reg_43_0_0_0(selector_MUX_191_reg_43_0_0_0), .selector_MUX_192_reg_44_0_0_0(selector_MUX_192_reg_44_0_0_0), .selector_MUX_193_reg_45_0_0_0(selector_MUX_193_reg_45_0_0_0), .selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0), .selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_0(selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_0), .selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_1(selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_1), .selector_MUX_221_reg_70_0_0_0(selector_MUX_221_reg_70_0_0_0), .selector_MUX_25_BMEMORY_CTRLN_129_i0_1_0_0(selector_MUX_25_BMEMORY_CTRLN_129_i0_1_0_0), .selector_MUX_48_PROXY_CTRLN_7_i0_0_0_0(selector_MUX_48_PROXY_CTRLN_7_i0_0_0_0), .selector_MUX_49_PROXY_CTRLN_7_i0_1_0_0(selector_MUX_49_PROXY_CTRLN_7_i0_1_0_0), .selector_MUX_4_ARRAY_1D_STD_BRAM_NN_1_i0_0_0_0(selector_MUX_4_ARRAY_1D_STD_BRAM_NN_1_i0_0_0_0), .selector_MUX_52_PROXY_CTRLN_8_i0_0_0_0(selector_MUX_52_PROXY_CTRLN_8_i0_0_0_0), .selector_MUX_53_PROXY_CTRLN_8_i0_1_0_0(selector_MUX_53_PROXY_CTRLN_8_i0_1_0_0), .selector_MUX_53_PROXY_CTRLN_8_i0_1_0_1(selector_MUX_53_PROXY_CTRLN_8_i0_1_0_1), .selector_MUX_56_PROXY_CTRLN_8_i1_0_0_0(selector_MUX_56_PROXY_CTRLN_8_i1_0_0_0), .selector_MUX_57_PROXY_CTRLN_8_i1_1_0_0(selector_MUX_57_PROXY_CTRLN_8_i1_1_0_0), .selector_MUX_57_PROXY_CTRLN_8_i1_1_0_1(selector_MUX_57_PROXY_CTRLN_8_i1_1_0_1), .selector_MUX_61_PROXY_CTRLN_9_i0_1_0_0(selector_MUX_61_PROXY_CTRLN_9_i0_1_0_0), .selector_MUX_61_PROXY_CTRLN_9_i0_1_0_1(selector_MUX_61_PROXY_CTRLN_9_i0_1_0_1), .selector_MUX_61_PROXY_CTRLN_9_i0_1_1_0(selector_MUX_61_PROXY_CTRLN_9_i0_1_1_0), .fuselector_PROXY_CTRLN_6_i0_LOAD(fuselector_PROXY_CTRLN_6_i0_LOAD), .fuselector_PROXY_CTRLN_6_i0_STORE(fuselector_PROXY_CTRLN_6_i0_STORE), .fuselector_PROXY_CTRLN_7_i0_LOAD(fuselector_PROXY_CTRLN_7_i0_LOAD), .fuselector_PROXY_CTRLN_7_i0_STORE(fuselector_PROXY_CTRLN_7_i0_STORE), .fuselector_PROXY_CTRLN_8_i0_LOAD(fuselector_PROXY_CTRLN_8_i0_LOAD), .fuselector_PROXY_CTRLN_8_i0_STORE(fuselector_PROXY_CTRLN_8_i0_STORE), .fuselector_PROXY_CTRLN_8_i1_LOAD(fuselector_PROXY_CTRLN_8_i1_LOAD), .fuselector_PROXY_CTRLN_8_i1_STORE(fuselector_PROXY_CTRLN_8_i1_STORE), .fuselector_PROXY_CTRLN_9_i0_LOAD(fuselector_PROXY_CTRLN_9_i0_LOAD), .fuselector_PROXY_CTRLN_9_i0_STORE(fuselector_PROXY_CTRLN_9_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_29(wrenable_reg_29), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_30(wrenable_reg_30), .wrenable_reg_31(wrenable_reg_31), .wrenable_reg_32(wrenable_reg_32), .wrenable_reg_33(wrenable_reg_33), .wrenable_reg_34(wrenable_reg_34), .wrenable_reg_35(wrenable_reg_35), .wrenable_reg_36(wrenable_reg_36), .wrenable_reg_37(wrenable_reg_37), .wrenable_reg_38(wrenable_reg_38), .wrenable_reg_39(wrenable_reg_39), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_40(wrenable_reg_40), .wrenable_reg_41(wrenable_reg_41), .wrenable_reg_42(wrenable_reg_42), .wrenable_reg_43(wrenable_reg_43), .wrenable_reg_44(wrenable_reg_44), .wrenable_reg_45(wrenable_reg_45), .wrenable_reg_46(wrenable_reg_46), .wrenable_reg_47(wrenable_reg_47), .wrenable_reg_48(wrenable_reg_48), .wrenable_reg_49(wrenable_reg_49), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_50(wrenable_reg_50), .wrenable_reg_51(wrenable_reg_51), .wrenable_reg_52(wrenable_reg_52), .wrenable_reg_53(wrenable_reg_53), .wrenable_reg_54(wrenable_reg_54), .wrenable_reg_55(wrenable_reg_55), .wrenable_reg_56(wrenable_reg_56), .wrenable_reg_57(wrenable_reg_57), .wrenable_reg_58(wrenable_reg_58), .wrenable_reg_59(wrenable_reg_59), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_60(wrenable_reg_60), .wrenable_reg_61(wrenable_reg_61), .wrenable_reg_62(wrenable_reg_62), .wrenable_reg_63(wrenable_reg_63), .wrenable_reg_64(wrenable_reg_64), .wrenable_reg_65(wrenable_reg_65), .wrenable_reg_66(wrenable_reg_66), .wrenable_reg_67(wrenable_reg_67), .wrenable_reg_68(wrenable_reg_68), .wrenable_reg_69(wrenable_reg_69), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_70(wrenable_reg_70), .wrenable_reg_71(wrenable_reg_71), .wrenable_reg_72(wrenable_reg_72), .wrenable_reg_73(wrenable_reg_73), .wrenable_reg_74(wrenable_reg_74), .wrenable_reg_75(wrenable_reg_75), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_kruskalF_28880_29572(OUT_CONDITION_kruskalF_28880_29572), .OUT_CONDITION_kruskalF_28880_29830(OUT_CONDITION_kruskalF_28880_29830), .OUT_CONDITION_kruskalF_28880_29839(OUT_CONDITION_kruskalF_28880_29839), .OUT_CONDITION_kruskalF_28880_29842(OUT_CONDITION_kruskalF_28880_29842), .OUT_CONDITION_kruskalF_28880_29857(OUT_CONDITION_kruskalF_28880_29857), .OUT_CONDITION_kruskalF_28880_29863(OUT_CONDITION_kruskalF_28880_29863), .OUT_CONDITION_kruskalF_28880_29868(OUT_CONDITION_kruskalF_28880_29868), .OUT_MULTIIF_kruskalF_28880_30610(OUT_MULTIIF_kruskalF_28880_30610), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_kruskalF #(.MEM_var_28859_28880(MEM_var_28859_28880), .MEM_var_28861_28880(MEM_var_28861_28880), .MEM_var_28862_28880(MEM_var_28862_28880), .MEM_var_28864_28880(MEM_var_28864_28880), .MEM_var_28865_28880(MEM_var_28865_28880), .MEM_var_28866_28880(MEM_var_28866_28880), .MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28869_28882(MEM_var_28869_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .proxy_in1_28867(proxy_in1_28867), .proxy_in2_28867(proxy_in2_28867), .proxy_in3_28867(proxy_in3_28867), .proxy_sel_LOAD_28867(proxy_sel_LOAD_28867), .proxy_sel_STORE_28867(proxy_sel_STORE_28867), .proxy_in1_28868(proxy_in1_28868), .proxy_in2_28868(proxy_in2_28868), .proxy_in3_28868(proxy_in3_28868), .proxy_sel_LOAD_28868(proxy_sel_LOAD_28868), .proxy_sel_STORE_28868(proxy_sel_STORE_28868), .proxy_in1_28869(proxy_in1_28869), .proxy_in2_28869(proxy_in2_28869), .proxy_in3_28869(proxy_in3_28869), .proxy_sel_LOAD_28869(proxy_sel_LOAD_28869), .proxy_sel_STORE_28869(proxy_sel_STORE_28869), .proxy_in1_28870(proxy_in1_28870), .proxy_in2_28870(proxy_in2_28870), .proxy_in3_28870(proxy_in3_28870), .proxy_sel_LOAD_28870(proxy_sel_LOAD_28870), .proxy_sel_STORE_28870(proxy_sel_STORE_28870), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_CONDITION_kruskalF_28880_29572(OUT_CONDITION_kruskalF_28880_29572), .OUT_CONDITION_kruskalF_28880_29830(OUT_CONDITION_kruskalF_28880_29830), .OUT_CONDITION_kruskalF_28880_29839(OUT_CONDITION_kruskalF_28880_29839), .OUT_CONDITION_kruskalF_28880_29842(OUT_CONDITION_kruskalF_28880_29842), .OUT_CONDITION_kruskalF_28880_29857(OUT_CONDITION_kruskalF_28880_29857), .OUT_CONDITION_kruskalF_28880_29863(OUT_CONDITION_kruskalF_28880_29863), .OUT_CONDITION_kruskalF_28880_29868(OUT_CONDITION_kruskalF_28880_29868), .OUT_MULTIIF_kruskalF_28880_30610(OUT_MULTIIF_kruskalF_28880_30610), .clock(clock), .reset(reset), .in_port_a(a), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28867(proxy_out1_28867), .proxy_out1_28868(proxy_out1_28868), .proxy_out1_28869(proxy_out1_28869), .proxy_out1_28870(proxy_out1_28870), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_5_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_5_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_5_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_5_i0_STORE), .fuselector_BMEMORY_CTRLN_129_i0_LOAD(fuselector_BMEMORY_CTRLN_129_i0_LOAD), .fuselector_BMEMORY_CTRLN_129_i0_STORE(fuselector_BMEMORY_CTRLN_129_i0_STORE), .selector_MUX_163_reg_18_0_0_0(selector_MUX_163_reg_18_0_0_0), .selector_MUX_164_reg_19_0_0_0(selector_MUX_164_reg_19_0_0_0), .selector_MUX_166_reg_20_0_0_0(selector_MUX_166_reg_20_0_0_0), .selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0(selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0), .selector_MUX_170_reg_24_0_0_0(selector_MUX_170_reg_24_0_0_0), .selector_MUX_175_reg_29_0_0_0(selector_MUX_175_reg_29_0_0_0), .selector_MUX_177_reg_30_0_0_0(selector_MUX_177_reg_30_0_0_0), .selector_MUX_178_reg_31_0_0_0(selector_MUX_178_reg_31_0_0_0), .selector_MUX_179_reg_32_0_0_0(selector_MUX_179_reg_32_0_0_0), .selector_MUX_180_reg_33_0_0_0(selector_MUX_180_reg_33_0_0_0), .selector_MUX_185_reg_38_0_0_0(selector_MUX_185_reg_38_0_0_0), .selector_MUX_188_reg_40_0_0_0(selector_MUX_188_reg_40_0_0_0), .selector_MUX_191_reg_43_0_0_0(selector_MUX_191_reg_43_0_0_0), .selector_MUX_192_reg_44_0_0_0(selector_MUX_192_reg_44_0_0_0), .selector_MUX_193_reg_45_0_0_0(selector_MUX_193_reg_45_0_0_0), .selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0), .selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_0(selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_0), .selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_1(selector_MUX_20_ARRAY_1D_STD_BRAM_NN_5_i0_0_0_1), .selector_MUX_221_reg_70_0_0_0(selector_MUX_221_reg_70_0_0_0), .selector_MUX_25_BMEMORY_CTRLN_129_i0_1_0_0(selector_MUX_25_BMEMORY_CTRLN_129_i0_1_0_0), .selector_MUX_48_PROXY_CTRLN_7_i0_0_0_0(selector_MUX_48_PROXY_CTRLN_7_i0_0_0_0), .selector_MUX_49_PROXY_CTRLN_7_i0_1_0_0(selector_MUX_49_PROXY_CTRLN_7_i0_1_0_0), .selector_MUX_4_ARRAY_1D_STD_BRAM_NN_1_i0_0_0_0(selector_MUX_4_ARRAY_1D_STD_BRAM_NN_1_i0_0_0_0), .selector_MUX_52_PROXY_CTRLN_8_i0_0_0_0(selector_MUX_52_PROXY_CTRLN_8_i0_0_0_0), .selector_MUX_53_PROXY_CTRLN_8_i0_1_0_0(selector_MUX_53_PROXY_CTRLN_8_i0_1_0_0), .selector_MUX_53_PROXY_CTRLN_8_i0_1_0_1(selector_MUX_53_PROXY_CTRLN_8_i0_1_0_1), .selector_MUX_56_PROXY_CTRLN_8_i1_0_0_0(selector_MUX_56_PROXY_CTRLN_8_i1_0_0_0), .selector_MUX_57_PROXY_CTRLN_8_i1_1_0_0(selector_MUX_57_PROXY_CTRLN_8_i1_1_0_0), .selector_MUX_57_PROXY_CTRLN_8_i1_1_0_1(selector_MUX_57_PROXY_CTRLN_8_i1_1_0_1), .selector_MUX_61_PROXY_CTRLN_9_i0_1_0_0(selector_MUX_61_PROXY_CTRLN_9_i0_1_0_0), .selector_MUX_61_PROXY_CTRLN_9_i0_1_0_1(selector_MUX_61_PROXY_CTRLN_9_i0_1_0_1), .selector_MUX_61_PROXY_CTRLN_9_i0_1_1_0(selector_MUX_61_PROXY_CTRLN_9_i0_1_1_0), .fuselector_PROXY_CTRLN_6_i0_LOAD(fuselector_PROXY_CTRLN_6_i0_LOAD), .fuselector_PROXY_CTRLN_6_i0_STORE(fuselector_PROXY_CTRLN_6_i0_STORE), .fuselector_PROXY_CTRLN_7_i0_LOAD(fuselector_PROXY_CTRLN_7_i0_LOAD), .fuselector_PROXY_CTRLN_7_i0_STORE(fuselector_PROXY_CTRLN_7_i0_STORE), .fuselector_PROXY_CTRLN_8_i0_LOAD(fuselector_PROXY_CTRLN_8_i0_LOAD), .fuselector_PROXY_CTRLN_8_i0_STORE(fuselector_PROXY_CTRLN_8_i0_STORE), .fuselector_PROXY_CTRLN_8_i1_LOAD(fuselector_PROXY_CTRLN_8_i1_LOAD), .fuselector_PROXY_CTRLN_8_i1_STORE(fuselector_PROXY_CTRLN_8_i1_STORE), .fuselector_PROXY_CTRLN_9_i0_LOAD(fuselector_PROXY_CTRLN_9_i0_LOAD), .fuselector_PROXY_CTRLN_9_i0_STORE(fuselector_PROXY_CTRLN_9_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_29(wrenable_reg_29), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_30(wrenable_reg_30), .wrenable_reg_31(wrenable_reg_31), .wrenable_reg_32(wrenable_reg_32), .wrenable_reg_33(wrenable_reg_33), .wrenable_reg_34(wrenable_reg_34), .wrenable_reg_35(wrenable_reg_35), .wrenable_reg_36(wrenable_reg_36), .wrenable_reg_37(wrenable_reg_37), .wrenable_reg_38(wrenable_reg_38), .wrenable_reg_39(wrenable_reg_39), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_40(wrenable_reg_40), .wrenable_reg_41(wrenable_reg_41), .wrenable_reg_42(wrenable_reg_42), .wrenable_reg_43(wrenable_reg_43), .wrenable_reg_44(wrenable_reg_44), .wrenable_reg_45(wrenable_reg_45), .wrenable_reg_46(wrenable_reg_46), .wrenable_reg_47(wrenable_reg_47), .wrenable_reg_48(wrenable_reg_48), .wrenable_reg_49(wrenable_reg_49), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_50(wrenable_reg_50), .wrenable_reg_51(wrenable_reg_51), .wrenable_reg_52(wrenable_reg_52), .wrenable_reg_53(wrenable_reg_53), .wrenable_reg_54(wrenable_reg_54), .wrenable_reg_55(wrenable_reg_55), .wrenable_reg_56(wrenable_reg_56), .wrenable_reg_57(wrenable_reg_57), .wrenable_reg_58(wrenable_reg_58), .wrenable_reg_59(wrenable_reg_59), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_60(wrenable_reg_60), .wrenable_reg_61(wrenable_reg_61), .wrenable_reg_62(wrenable_reg_62), .wrenable_reg_63(wrenable_reg_63), .wrenable_reg_64(wrenable_reg_64), .wrenable_reg_65(wrenable_reg_65), .wrenable_reg_66(wrenable_reg_66), .wrenable_reg_67(wrenable_reg_67), .wrenable_reg_68(wrenable_reg_68), .wrenable_reg_69(wrenable_reg_69), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_70(wrenable_reg_70), .wrenable_reg_71(wrenable_reg_71), .wrenable_reg_72(wrenable_reg_72), .wrenable_reg_73(wrenable_reg_73), .wrenable_reg_74(wrenable_reg_74), .wrenable_reg_75(wrenable_reg_75), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

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
module datapath_make_non_oriented(clock, reset, proxy_out1_28867, proxy_in1_28867, proxy_in2_28867, proxy_in3_28867, proxy_sel_LOAD_28867, proxy_sel_STORE_28867, proxy_out1_28868, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, proxy_out1_28870, proxy_in1_28870, proxy_in2_28870, proxy_in3_28870, proxy_sel_LOAD_28870, proxy_sel_STORE_28870, selector_MUX_10_PROXY_CTRLN_2_i0_0_0_0, selector_MUX_10_PROXY_CTRLN_2_i0_0_0_1, selector_MUX_11_PROXY_CTRLN_2_i0_1_0_0, selector_MUX_11_PROXY_CTRLN_2_i0_1_0_1, selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0, selector_MUX_41_reg_15_0_0_0, selector_MUX_49_reg_4_0_0_0, selector_MUX_53_reg_8_0_0_0, selector_MUX_53_reg_8_0_0_1, selector_MUX_54_reg_9_0_0_0, fuselector_PROXY_CTRLN_0_i0_LOAD, fuselector_PROXY_CTRLN_0_i0_STORE, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_MULTIIF_make_non_oriented_28874_30621);
  parameter MEM_var_28867_28882=32, MEM_var_28868_28882=64, MEM_var_28870_28882=128;
  // IN
  input clock;
  input reset;
  input [63:0] proxy_out1_28867;
  input [63:0] proxy_out1_28868;
  input [63:0] proxy_out1_28870;
  input selector_MUX_10_PROXY_CTRLN_2_i0_0_0_0;
  input selector_MUX_10_PROXY_CTRLN_2_i0_0_0_1;
  input selector_MUX_11_PROXY_CTRLN_2_i0_1_0_0;
  input selector_MUX_11_PROXY_CTRLN_2_i0_1_0_1;
  input selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0;
  input selector_MUX_41_reg_15_0_0_0;
  input selector_MUX_49_reg_4_0_0_0;
  input selector_MUX_53_reg_8_0_0_0;
  input selector_MUX_53_reg_8_0_0_1;
  input selector_MUX_54_reg_9_0_0_0;
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
  output [63:0] proxy_in1_28867;
  output [17:0] proxy_in2_28867;
  output [11:0] proxy_in3_28867;
  output [1:0] proxy_sel_LOAD_28867;
  output [1:0] proxy_sel_STORE_28867;
  output [63:0] proxy_in1_28868;
  output [17:0] proxy_in2_28868;
  output [11:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [63:0] proxy_in1_28870;
  output [17:0] proxy_in2_28870;
  output [11:0] proxy_in3_28870;
  output [1:0] proxy_sel_LOAD_28870;
  output [1:0] proxy_sel_STORE_28870;
  output [1:0] OUT_MULTIIF_make_non_oriented_28874_30621;
  // Component and signal declarations
  wire [7:0] null_out_signal_PROXY_CTRLN_0_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_0_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_2_i0_out1_1;
  wire [7:0] out_IUdata_converter_FU_22_i0_fu_make_non_oriented_28874_29271;
  wire [7:0] out_MUX_10_PROXY_CTRLN_2_i0_0_0_0;
  wire [7:0] out_MUX_10_PROXY_CTRLN_2_i0_0_0_1;
  wire [8:0] out_MUX_11_PROXY_CTRLN_2_i0_1_0_0;
  wire [8:0] out_MUX_11_PROXY_CTRLN_2_i0_1_0_1;
  wire [8:0] out_MUX_11_PROXY_CTRLN_2_i0_1_1_0;
  wire [1:0] out_MUX_41_reg_15_0_0_0;
  wire [1:0] out_MUX_49_reg_4_0_0_0;
  wire [31:0] out_MUX_53_reg_8_0_0_0;
  wire [31:0] out_MUX_53_reg_8_0_0_1;
  wire [31:0] out_MUX_54_reg_9_0_0_0;
  wire [7:0] out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0;
  wire signed [7:0] out_UIdata_converter_FU_23_i0_fu_make_non_oriented_28874_29262;
  wire [1:0] out_UUdata_converter_FU_12_i0_fu_make_non_oriented_28874_29200;
  wire [31:0] out_UUdata_converter_FU_13_i0_fu_make_non_oriented_28874_29203;
  wire [7:0] out_UUdata_converter_FU_20_i0_fu_make_non_oriented_28874_29218;
  wire [1:0] out_UUdata_converter_FU_21_i0_fu_make_non_oriented_28874_29254;
  wire [7:0] out_UUdata_converter_FU_24_i0_fu_make_non_oriented_28874_29228;
  wire [31:0] out_UUdata_converter_FU_6_i0_fu_make_non_oriented_28874_29191;
  wire [31:0] out_addr_expr_FU_5_i0_fu_make_non_oriented_28874_30421;
  wire [5:0] out_addr_expr_FU_7_i0_fu_make_non_oriented_28874_30457;
  wire [6:0] out_addr_expr_FU_8_i0_fu_make_non_oriented_28874_30461;
  wire signed [7:0] out_cond_expr_FU_8_8_8_8_27_i0_fu_make_non_oriented_28874_29238;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [4:0] out_const_2;
  wire out_const_3;
  wire [1:0] out_const_4;
  wire [1:0] out_const_5;
  wire [7:0] out_const_6;
  wire [8:0] out_const_7;
  wire [5:0] out_const_8;
  wire [6:0] out_const_9;
  wire [8:0] out_conv_out_UUdata_converter_FU_20_i0_fu_make_non_oriented_28874_29218_8_9;
  wire [5:0] out_conv_out_const_2_5_6;
  wire [31:0] out_conv_out_const_7_9_32;
  wire [31:0] out_conv_out_const_8_6_32;
  wire [31:0] out_conv_out_const_9_7_32;
  wire [8:0] out_conv_out_reg_10_reg_10_8_9;
  wire [8:0] out_conv_out_reg_12_reg_12_8_9;
  wire [8:0] out_conv_out_reg_1_reg_1_6_9;
  wire [8:0] out_conv_out_reg_2_reg_2_7_9;
  wire [8:0] out_conv_out_reg_6_reg_6_8_9;
  wire [1:0] out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3_1_2;
  wire [1:0] out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_4_1_2;
  wire [7:0] out_iu_conv_conn_obj_1_IUdata_converter_FU_iu_conv_0;
  wire [7:0] out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_1;
  wire [7:0] out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_2;
  wire out_lt_expr_FU_8_0_8_28_i0_fu_make_non_oriented_28874_29247;
  wire [1:0] out_multi_read_cond_FU_25_i0_fu_make_non_oriented_28874_30621;
  wire [31:0] out_reg_0_reg_0;
  wire [7:0] out_reg_10_reg_10;
  wire [31:0] out_reg_11_reg_11;
  wire [7:0] out_reg_12_reg_12;
  wire [31:0] out_reg_13_reg_13;
  wire out_reg_14_reg_14;
  wire [1:0] out_reg_15_reg_15;
  wire out_reg_16_reg_16;
  wire out_reg_17_reg_17;
  wire [7:0] out_reg_18_reg_18;
  wire [7:0] out_reg_19_reg_19;
  wire [5:0] out_reg_1_reg_1;
  wire [7:0] out_reg_20_reg_20;
  wire [6:0] out_reg_2_reg_2;
  wire [1:0] out_reg_3_reg_3;
  wire [1:0] out_reg_4_reg_4;
  wire [31:0] out_reg_5_reg_5;
  wire [7:0] out_reg_6_reg_6;
  wire out_reg_7_reg_7;
  wire [31:0] out_reg_8_reg_8;
  wire [31:0] out_reg_9_reg_9;
  wire out_truth_and_expr_FU_1_1_1_29_i0_fu_make_non_oriented_28874_30627;
  wire out_truth_not_expr_FU_1_1_30_i0_fu_make_non_oriented_28874_30624;
  wire [0:0] out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3;
  wire [0:0] out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_4;
  wire [0:0] out_ui_bit_and_expr_FU_1_1_1_31_i0_fu_make_non_oriented_28874_29243;
  wire [3:0] out_ui_lshift_expr_FU_8_0_8_32_i0_fu_make_non_oriented_28874_30432;
  wire out_ui_ne_expr_FU_8_0_8_33_i0_fu_make_non_oriented_28874_30496;
  wire out_ui_ne_expr_FU_8_0_8_33_i1_fu_make_non_oriented_28874_30498;
  wire out_ui_ne_expr_FU_8_8_8_34_i0_fu_make_non_oriented_28874_29250;
  wire [7:0] out_ui_negate_expr_FU_8_8_35_i0_fu_make_non_oriented_28874_29266;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_36_i0_fu_make_non_oriented_28874_29225;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_37_i0_fu_make_non_oriented_28874_29236;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_37_i1_fu_make_non_oriented_28874_29281;
  wire [1:0] out_ui_plus_expr_FU_8_0_8_38_i0_fu_make_non_oriented_28874_29260;
  wire [1:0] out_ui_plus_expr_FU_8_0_8_38_i1_fu_make_non_oriented_28874_29278;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_39_i0_fu_make_non_oriented_28874_29202;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_40_i0_fu_make_non_oriented_28874_30438;
  wire [7:0] out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5;
  wire [63:0] sig_in_bus_mergerproxy_in1_288670_0;
  wire [63:0] sig_in_bus_mergerproxy_in1_288681_0;
  wire [63:0] sig_in_bus_mergerproxy_in1_288702_0;
  wire [17:0] sig_in_bus_mergerproxy_in2_288673_0;
  wire [17:0] sig_in_bus_mergerproxy_in2_288684_0;
  wire [17:0] sig_in_bus_mergerproxy_in2_288705_0;
  wire [11:0] sig_in_bus_mergerproxy_in3_288676_0;
  wire [11:0] sig_in_bus_mergerproxy_in3_288687_0;
  wire [11:0] sig_in_bus_mergerproxy_in3_288708_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_288679_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886810_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2887011_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886712_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886813_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2887014_0;
  wire [63:0] sig_in_vector_bus_mergerproxy_in1_288670_0;
  wire [63:0] sig_in_vector_bus_mergerproxy_in1_288681_0;
  wire [63:0] sig_in_vector_bus_mergerproxy_in1_288702_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in2_288673_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in2_288684_0;
  wire [17:0] sig_in_vector_bus_mergerproxy_in2_288705_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in3_288676_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in3_288687_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in3_288708_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_288679_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886810_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2887011_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886712_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886813_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2887014_0;
  wire [63:0] sig_out_bus_mergerproxy_in1_288670_;
  wire [63:0] sig_out_bus_mergerproxy_in1_288681_;
  wire [63:0] sig_out_bus_mergerproxy_in1_288702_;
  wire [17:0] sig_out_bus_mergerproxy_in2_288673_;
  wire [17:0] sig_out_bus_mergerproxy_in2_288684_;
  wire [17:0] sig_out_bus_mergerproxy_in2_288705_;
  wire [11:0] sig_out_bus_mergerproxy_in3_288676_;
  wire [11:0] sig_out_bus_mergerproxy_in3_288687_;
  wire [11:0] sig_out_bus_mergerproxy_in3_288708_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_288679_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886810_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2887011_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886712_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886813_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2887014_;
  
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_3 (.out1(out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_4 (.out1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_4), .in1(out_const_0));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_5 (.out1(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5), .in1(out_const_1));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_0 (.out1(out_iu_conv_conn_obj_1_IUdata_converter_FU_iu_conv_0), .in1(out_const_6));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_1), .in1(out_reg_20_reg_20));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_2 (.out1(out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_2), .in1(out_reg_20_reg_20));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_10_PROXY_CTRLN_2_i0_0_0_0 (.out1(out_MUX_10_PROXY_CTRLN_2_i0_0_0_0), .sel(selector_MUX_10_PROXY_CTRLN_2_i0_0_0_0), .in1(out_iu_conv_conn_obj_1_IUdata_converter_FU_iu_conv_0), .in2(out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_1));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_10_PROXY_CTRLN_2_i0_0_0_1 (.out1(out_MUX_10_PROXY_CTRLN_2_i0_0_0_1), .sel(selector_MUX_10_PROXY_CTRLN_2_i0_0_0_1), .in1(out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_2), .in2(out_MUX_10_PROXY_CTRLN_2_i0_0_0_0));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_11_PROXY_CTRLN_2_i0_1_0_0 (.out1(out_MUX_11_PROXY_CTRLN_2_i0_1_0_0), .sel(selector_MUX_11_PROXY_CTRLN_2_i0_1_0_0), .in1(out_conv_out_reg_6_reg_6_8_9), .in2(out_conv_out_reg_12_reg_12_8_9));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_11_PROXY_CTRLN_2_i0_1_0_1 (.out1(out_MUX_11_PROXY_CTRLN_2_i0_1_0_1), .sel(selector_MUX_11_PROXY_CTRLN_2_i0_1_0_1), .in1(out_conv_out_reg_10_reg_10_8_9), .in2(out_conv_out_UUdata_converter_FU_20_i0_fu_make_non_oriented_28874_29218_8_9));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_11_PROXY_CTRLN_2_i0_1_1_0 (.out1(out_MUX_11_PROXY_CTRLN_2_i0_1_1_0), .sel(selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0), .in1(out_MUX_11_PROXY_CTRLN_2_i0_1_0_0), .in2(out_MUX_11_PROXY_CTRLN_2_i0_1_0_1));
  MUX_GATE #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(2)) MUX_41_reg_15_0_0_0 (.out1(out_MUX_41_reg_15_0_0_0), .sel(selector_MUX_41_reg_15_0_0_0), .in1(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_4_1_2), .in2(out_ui_plus_expr_FU_8_0_8_38_i0_fu_make_non_oriented_28874_29260));
  MUX_GATE #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(2)) MUX_49_reg_4_0_0_0 (.out1(out_MUX_49_reg_4_0_0_0), .sel(selector_MUX_49_reg_4_0_0_0), .in1(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3_1_2), .in2(out_ui_plus_expr_FU_8_0_8_38_i1_fu_make_non_oriented_28874_29278));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_53_reg_8_0_0_0 (.out1(out_MUX_53_reg_8_0_0_0), .sel(selector_MUX_53_reg_8_0_0_0), .in1(out_reg_5_reg_5), .in2(out_reg_11_reg_11));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_53_reg_8_0_0_1 (.out1(out_MUX_53_reg_8_0_0_1), .sel(selector_MUX_53_reg_8_0_0_1), .in1(out_UUdata_converter_FU_6_i0_fu_make_non_oriented_28874_29191), .in2(out_MUX_53_reg_8_0_0_0));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_54_reg_9_0_0_0 (.out1(out_MUX_54_reg_9_0_0_0), .sel(selector_MUX_54_reg_9_0_0_0), .in1(out_reg_13_reg_13), .in2(out_UUdata_converter_FU_13_i0_fu_make_non_oriented_28874_29203));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_0_i0 (.out1({null_out_signal_PROXY_CTRLN_0_i0_out1_1, null_out_signal_PROXY_CTRLN_0_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288670_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288673_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288676_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_288679_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886712_0), .in1({8'b00000000, out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5}), .in2({9'b000000000, out_conv_out_reg_1_reg_1_6_9}), .in3({6'b000000, out_conv_out_const_2_5_6}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_0_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_0_i0_STORE}), .proxy_out1(proxy_out1_28867));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_1_i0 (.out1({null_out_signal_PROXY_CTRLN_1_i0_out1_1, null_out_signal_PROXY_CTRLN_1_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288681_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288684_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288687_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886810_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886813_0), .in1({8'b00000000, out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5}), .in2({9'b000000000, out_conv_out_reg_2_reg_2_7_9}), .in3({6'b000000, out_conv_out_const_2_5_6}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_1_i0_STORE}), .proxy_out1(proxy_out1_28868));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_2_i0 (.out1({null_out_signal_PROXY_CTRLN_2_i0_out1_1, out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288702_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288705_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288708_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2887011_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2887014_0), .in1({8'b00000000, out_MUX_10_PROXY_CTRLN_2_i0_0_0_1}), .in2({9'b000000000, out_MUX_11_PROXY_CTRLN_2_i0_1_1_0}), .in3({6'b000000, out_conv_out_const_2_5_6}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_2_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_2_i0_STORE}), .proxy_out1(proxy_out1_28870));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerproxy_in1_288670_ (.out1(sig_out_bus_mergerproxy_in1_288670_), .in1({sig_in_bus_mergerproxy_in1_288670_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerproxy_in1_288681_ (.out1(sig_out_bus_mergerproxy_in1_288681_), .in1({sig_in_bus_mergerproxy_in1_288681_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerproxy_in1_288702_ (.out1(sig_out_bus_mergerproxy_in1_288702_), .in1({sig_in_bus_mergerproxy_in1_288702_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerproxy_in2_288673_ (.out1(sig_out_bus_mergerproxy_in2_288673_), .in1({sig_in_bus_mergerproxy_in2_288673_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerproxy_in2_288684_ (.out1(sig_out_bus_mergerproxy_in2_288684_), .in1({sig_in_bus_mergerproxy_in2_288684_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerproxy_in2_288705_ (.out1(sig_out_bus_mergerproxy_in2_288705_), .in1({sig_in_bus_mergerproxy_in2_288705_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(1), .BITSIZE_out1(12)) bus_mergerproxy_in3_288676_ (.out1(sig_out_bus_mergerproxy_in3_288676_), .in1({sig_in_bus_mergerproxy_in3_288676_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(1), .BITSIZE_out1(12)) bus_mergerproxy_in3_288687_ (.out1(sig_out_bus_mergerproxy_in3_288687_), .in1({sig_in_bus_mergerproxy_in3_288687_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(1), .BITSIZE_out1(12)) bus_mergerproxy_in3_288708_ (.out1(sig_out_bus_mergerproxy_in3_288708_), .in1({sig_in_bus_mergerproxy_in3_288708_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_288679_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288679_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288679_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886810_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886810_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886810_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2887011_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2887011_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2887011_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886712_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886712_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886712_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886813_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886813_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886813_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2887014_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2887014_), .in1({sig_in_bus_mergerproxy_sel_STORE_2887014_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000011)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(2), .value(2'b10)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(9), .value(MEM_var_28870_28882)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(6), .value(MEM_var_28867_28882)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(7), .value(MEM_var_28868_28882)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_UUdata_converter_FU_20_i0_fu_make_non_oriented_28874_29218_8_9 (.out1(out_conv_out_UUdata_converter_FU_20_i0_fu_make_non_oriented_28874_29218_8_9), .in1(out_UUdata_converter_FU_20_i0_fu_make_non_oriented_28874_29218));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(6)) conv_out_const_2_5_6 (.out1(out_conv_out_const_2_5_6), .in1(out_const_2));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(32)) conv_out_const_7_9_32 (.out1(out_conv_out_const_7_9_32), .in1(out_const_7));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(32)) conv_out_const_8_6_32 (.out1(out_conv_out_const_8_6_32), .in1(out_const_8));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(32)) conv_out_const_9_7_32 (.out1(out_conv_out_const_9_7_32), .in1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_10_reg_10_8_9 (.out1(out_conv_out_reg_10_reg_10_8_9), .in1(out_reg_10_reg_10));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_12_reg_12_8_9 (.out1(out_conv_out_reg_12_reg_12_8_9), .in1(out_reg_12_reg_12));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(9)) conv_out_reg_1_reg_1_6_9 (.out1(out_conv_out_reg_1_reg_1_6_9), .in1(out_reg_1_reg_1));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_2_reg_2_7_9 (.out1(out_conv_out_reg_2_reg_2_7_9), .in1(out_reg_2_reg_2));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_6_reg_6_8_9 (.out1(out_conv_out_reg_6_reg_6_8_9), .in1(out_reg_6_reg_6));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(2)) conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3_1_2 (.out1(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3_1_2), .in1(out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(2)) conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_4_1_2 (.out1(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_4_1_2), .in1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_4));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_make_non_oriented_28874_29191 (.out1(out_UUdata_converter_FU_6_i0_fu_make_non_oriented_28874_29191), .in1(out_addr_expr_FU_5_i0_fu_make_non_oriented_28874_30421));
  UUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) fu_make_non_oriented_28874_29200 (.out1(out_UUdata_converter_FU_12_i0_fu_make_non_oriented_28874_29200), .in1(out_reg_4_reg_4));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_make_non_oriented_28874_29202 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_39_i0_fu_make_non_oriented_28874_29202), .in1(out_reg_0_reg_0), .in2(out_reg_4_reg_4));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_make_non_oriented_28874_29203 (.out1(out_UUdata_converter_FU_13_i0_fu_make_non_oriented_28874_29203), .in1(out_ui_pointer_plus_expr_FU_32_32_32_39_i0_fu_make_non_oriented_28874_29202));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_make_non_oriented_28874_29218 (.out1(out_UUdata_converter_FU_20_i0_fu_make_non_oriented_28874_29218), .in1(out_reg_8_reg_8));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(32)) fu_make_non_oriented_28874_29225 (.out1(out_ui_plus_expr_FU_32_0_32_36_i0_fu_make_non_oriented_28874_29225), .in1(out_reg_8_reg_8), .in2(out_const_3));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_make_non_oriented_28874_29228 (.out1(out_UUdata_converter_FU_24_i0_fu_make_non_oriented_28874_29228), .in1(out_reg_9_reg_9));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(32)) fu_make_non_oriented_28874_29236 (.out1(out_ui_plus_expr_FU_32_0_32_37_i0_fu_make_non_oriented_28874_29236), .in1(out_reg_9_reg_9), .in2(out_const_5));
  cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_make_non_oriented_28874_29238 (.out1(out_cond_expr_FU_8_8_8_8_27_i0_fu_make_non_oriented_28874_29238), .in1(out_ui_bit_and_expr_FU_1_1_1_31_i0_fu_make_non_oriented_28874_29243), .in2(out_UIdata_converter_FU_23_i0_fu_make_non_oriented_28874_29262), .in3(out_reg_18_reg_18));
  ui_bit_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_non_oriented_28874_29243 (.out1(out_ui_bit_and_expr_FU_1_1_1_31_i0_fu_make_non_oriented_28874_29243), .in1(out_lt_expr_FU_8_0_8_28_i0_fu_make_non_oriented_28874_29247), .in2(out_reg_14_reg_14));
  lt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_non_oriented_28874_29247 (.out1(out_lt_expr_FU_8_0_8_28_i0_fu_make_non_oriented_28874_29247), .in1(out_reg_18_reg_18), .in2(out_const_0));
  ui_ne_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_make_non_oriented_28874_29250 (.out1(out_ui_ne_expr_FU_8_8_8_34_i0_fu_make_non_oriented_28874_29250), .in1(out_reg_3_reg_3), .in2(out_UUdata_converter_FU_21_i0_fu_make_non_oriented_28874_29254));
  UUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) fu_make_non_oriented_28874_29254 (.out1(out_UUdata_converter_FU_21_i0_fu_make_non_oriented_28874_29254), .in1(out_reg_15_reg_15));
  ui_plus_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_out1(2)) fu_make_non_oriented_28874_29260 (.out1(out_ui_plus_expr_FU_8_0_8_38_i0_fu_make_non_oriented_28874_29260), .in1(out_reg_15_reg_15), .in2(out_const_3));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_non_oriented_28874_29262 (.out1(out_UIdata_converter_FU_23_i0_fu_make_non_oriented_28874_29262), .in1(out_ui_negate_expr_FU_8_8_35_i0_fu_make_non_oriented_28874_29266));
  ui_negate_expr_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_non_oriented_28874_29266 (.out1(out_ui_negate_expr_FU_8_8_35_i0_fu_make_non_oriented_28874_29266), .in1(out_reg_19_reg_19));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_non_oriented_28874_29271 (.out1(out_IUdata_converter_FU_22_i0_fu_make_non_oriented_28874_29271), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0));
  ui_plus_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_out1(2)) fu_make_non_oriented_28874_29278 (.out1(out_ui_plus_expr_FU_8_0_8_38_i1_fu_make_non_oriented_28874_29278), .in1(out_reg_4_reg_4), .in2(out_const_3));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(32)) fu_make_non_oriented_28874_29281 (.out1(out_ui_plus_expr_FU_32_0_32_37_i1_fu_make_non_oriented_28874_29281), .in1(out_reg_8_reg_8), .in2(out_const_5));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_make_non_oriented_28874_30421 (.out1(out_addr_expr_FU_5_i0_fu_make_non_oriented_28874_30421), .in1(out_conv_out_const_7_9_32));
  ui_lshift_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(4), .PRECISION(32)) fu_make_non_oriented_28874_30432 (.out1(out_ui_lshift_expr_FU_8_0_8_32_i0_fu_make_non_oriented_28874_30432), .in1(out_reg_4_reg_4), .in2(out_const_4));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(4), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_make_non_oriented_28874_30438 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_40_i0_fu_make_non_oriented_28874_30438), .in1(out_reg_0_reg_0), .in2(out_ui_lshift_expr_FU_8_0_8_32_i0_fu_make_non_oriented_28874_30432));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(6)) fu_make_non_oriented_28874_30457 (.out1(out_addr_expr_FU_7_i0_fu_make_non_oriented_28874_30457), .in1(out_conv_out_const_8_6_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_make_non_oriented_28874_30461 (.out1(out_addr_expr_FU_8_i0_fu_make_non_oriented_28874_30461), .in1(out_conv_out_const_9_7_32));
  ui_ne_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_make_non_oriented_28874_30496 (.out1(out_ui_ne_expr_FU_8_0_8_33_i0_fu_make_non_oriented_28874_30496), .in1(out_ui_plus_expr_FU_8_0_8_38_i0_fu_make_non_oriented_28874_29260), .in2(out_const_5));
  ui_ne_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_make_non_oriented_28874_30498 (.out1(out_ui_ne_expr_FU_8_0_8_33_i1_fu_make_non_oriented_28874_30498), .in1(out_ui_plus_expr_FU_8_0_8_38_i1_fu_make_non_oriented_28874_29278), .in2(out_const_5));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) fu_make_non_oriented_28874_30621 (.out1(out_multi_read_cond_FU_25_i0_fu_make_non_oriented_28874_30621), .in1({out_reg_17_reg_17, out_reg_16_reg_16}));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_make_non_oriented_28874_30624 (.out1(out_truth_not_expr_FU_1_1_30_i0_fu_make_non_oriented_28874_30624), .in1(out_ui_ne_expr_FU_8_0_8_33_i0_fu_make_non_oriented_28874_30496));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_non_oriented_28874_30627 (.out1(out_truth_and_expr_FU_1_1_1_29_i0_fu_make_non_oriented_28874_30627), .in1(out_reg_7_reg_7), .in2(out_truth_not_expr_FU_1_1_30_i0_fu_make_non_oriented_28874_30624));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in1_288670_0 (.out1(sig_in_bus_mergerproxy_in1_288670_0), .in1(sig_in_vector_bus_mergerproxy_in1_288670_0));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in1_288681_0 (.out1(sig_in_bus_mergerproxy_in1_288681_0), .in1(sig_in_vector_bus_mergerproxy_in1_288681_0));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in1_288702_0 (.out1(sig_in_bus_mergerproxy_in1_288702_0), .in1(sig_in_vector_bus_mergerproxy_in1_288702_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in2_288673_0 (.out1(sig_in_bus_mergerproxy_in2_288673_0), .in1(sig_in_vector_bus_mergerproxy_in2_288673_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in2_288684_0 (.out1(sig_in_bus_mergerproxy_in2_288684_0), .in1(sig_in_vector_bus_mergerproxy_in2_288684_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerproxy_in2_288705_0 (.out1(sig_in_bus_mergerproxy_in2_288705_0), .in1(sig_in_vector_bus_mergerproxy_in2_288705_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in3_288676_0 (.out1(sig_in_bus_mergerproxy_in3_288676_0), .in1(sig_in_vector_bus_mergerproxy_in3_288676_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in3_288687_0 (.out1(sig_in_bus_mergerproxy_in3_288687_0), .in1(sig_in_vector_bus_mergerproxy_in3_288687_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in3_288708_0 (.out1(sig_in_bus_mergerproxy_in3_288708_0), .in1(sig_in_vector_bus_mergerproxy_in3_288708_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_288679_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_288679_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_288679_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886810_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886810_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886810_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2887011_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2887011_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2887011_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886712_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886712_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886712_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886813_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886813_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886813_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2887014_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2887014_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2887014_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_5_i0_fu_make_non_oriented_28874_30421), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_7_i0_fu_make_non_oriented_28874_30457), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_20_i0_fu_make_non_oriented_28874_29218), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_32_0_32_36_i0_fu_make_non_oriented_28874_29225), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_24_i0_fu_make_non_oriented_28874_29228), .wenable(wrenable_reg_12));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_32_0_32_37_i0_fu_make_non_oriented_28874_29236), .wenable(wrenable_reg_13));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_8_8_34_i0_fu_make_non_oriented_28874_29250), .wenable(wrenable_reg_14));
  register_SE #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_MUX_41_reg_15_0_0_0), .wenable(wrenable_reg_15));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_33_i0_fu_make_non_oriented_28874_30496), .wenable(wrenable_reg_16));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_truth_and_expr_FU_1_1_1_29_i0_fu_make_non_oriented_28874_30627), .wenable(wrenable_reg_17));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0), .wenable(wrenable_reg_18));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_19 (.out1(out_reg_19_reg_19), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_22_i0_fu_make_non_oriented_28874_29271), .wenable(wrenable_reg_19));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_8_i0_fu_make_non_oriented_28874_30461), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_20 (.out1(out_reg_20_reg_20), .clock(clock), .reset(reset), .in1(out_cond_expr_FU_8_8_8_8_27_i0_fu_make_non_oriented_28874_29238), .wenable(wrenable_reg_20));
  register_SE #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_12_i0_fu_make_non_oriented_28874_29200), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_MUX_49_reg_4_0_0_0), .wenable(wrenable_reg_4));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_32_0_32_37_i1_fu_make_non_oriented_28874_29281), .wenable(wrenable_reg_5));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_40_i0_fu_make_non_oriented_28874_30438), .wenable(wrenable_reg_6));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_33_i1_fu_make_non_oriented_28874_30498), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_MUX_53_reg_8_0_0_1), .wenable(wrenable_reg_8));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_MUX_54_reg_9_0_0_0), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288670_ (.out1(proxy_in1_28867), .in1(sig_out_bus_mergerproxy_in1_288670_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288681_ (.out1(proxy_in1_28868), .in1(sig_out_bus_mergerproxy_in1_288681_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288702_ (.out1(proxy_in1_28870), .in1(sig_out_bus_mergerproxy_in1_288702_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288673_ (.out1(proxy_in2_28867), .in1(sig_out_bus_mergerproxy_in2_288673_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288684_ (.out1(proxy_in2_28868), .in1(sig_out_bus_mergerproxy_in2_288684_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288705_ (.out1(proxy_in2_28870), .in1(sig_out_bus_mergerproxy_in2_288705_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288676_ (.out1(proxy_in3_28867), .in1(sig_out_bus_mergerproxy_in3_288676_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288687_ (.out1(proxy_in3_28868), .in1(sig_out_bus_mergerproxy_in3_288687_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288708_ (.out1(proxy_in3_28870), .in1(sig_out_bus_mergerproxy_in3_288708_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_288679_ (.out1(proxy_sel_LOAD_28867), .in1(sig_out_bus_mergerproxy_sel_LOAD_288679_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886810_ (.out1(proxy_sel_LOAD_28868), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886810_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2887011_ (.out1(proxy_sel_LOAD_28870), .in1(sig_out_bus_mergerproxy_sel_LOAD_2887011_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886712_ (.out1(proxy_sel_STORE_28867), .in1(sig_out_bus_mergerproxy_sel_STORE_2886712_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886813_ (.out1(proxy_sel_STORE_28868), .in1(sig_out_bus_mergerproxy_sel_STORE_2886813_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2887014_ (.out1(proxy_sel_STORE_28870), .in1(sig_out_bus_mergerproxy_sel_STORE_2887014_));
  // io-signal post fix
  assign OUT_MULTIIF_make_non_oriented_28874_30621 = out_multi_read_cond_FU_25_i0_fu_make_non_oriented_28874_30621;

endmodule

// FSM based controller description for make_non_oriented
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_make_non_oriented(done_port, selector_MUX_10_PROXY_CTRLN_2_i0_0_0_0, selector_MUX_10_PROXY_CTRLN_2_i0_0_0_1, selector_MUX_11_PROXY_CTRLN_2_i0_1_0_0, selector_MUX_11_PROXY_CTRLN_2_i0_1_0_1, selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0, selector_MUX_41_reg_15_0_0_0, selector_MUX_49_reg_4_0_0_0, selector_MUX_53_reg_8_0_0_0, selector_MUX_53_reg_8_0_0_1, selector_MUX_54_reg_9_0_0_0, fuselector_PROXY_CTRLN_0_i0_LOAD, fuselector_PROXY_CTRLN_0_i0_STORE, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_MULTIIF_make_non_oriented_28874_30621, clock, reset, start_port);
  // IN
  input [1:0] OUT_MULTIIF_make_non_oriented_28874_30621;
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
  output selector_MUX_41_reg_15_0_0_0;
  output selector_MUX_49_reg_4_0_0_0;
  output selector_MUX_53_reg_8_0_0_0;
  output selector_MUX_53_reg_8_0_0_1;
  output selector_MUX_54_reg_9_0_0_0;
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
  reg selector_MUX_10_PROXY_CTRLN_2_i0_0_0_0;
  reg selector_MUX_10_PROXY_CTRLN_2_i0_0_0_1;
  reg selector_MUX_11_PROXY_CTRLN_2_i0_1_0_0;
  reg selector_MUX_11_PROXY_CTRLN_2_i0_1_0_1;
  reg selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0;
  reg selector_MUX_41_reg_15_0_0_0;
  reg selector_MUX_49_reg_4_0_0_0;
  reg selector_MUX_53_reg_8_0_0_0;
  reg selector_MUX_53_reg_8_0_0_1;
  reg selector_MUX_54_reg_9_0_0_0;
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
    selector_MUX_41_reg_15_0_0_0 = 1'b0;
    selector_MUX_49_reg_4_0_0_0 = 1'b0;
    selector_MUX_53_reg_8_0_0_0 = 1'b0;
    selector_MUX_53_reg_8_0_0_1 = 1'b0;
    selector_MUX_54_reg_9_0_0_0 = 1'b0;
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
          selector_MUX_49_reg_4_0_0_0 = 1'b1;
          selector_MUX_53_reg_8_0_0_1 = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_8 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          selector_MUX_10_PROXY_CTRLN_2_i0_0_0_0 = 1'bX;
          selector_MUX_10_PROXY_CTRLN_2_i0_0_0_1 = 1'bX;
          selector_MUX_11_PROXY_CTRLN_2_i0_1_0_0 = 1'bX;
          selector_MUX_11_PROXY_CTRLN_2_i0_1_0_1 = 1'bX;
          selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0 = 1'bX;
          selector_MUX_41_reg_15_0_0_0 = 1'bX;
          selector_MUX_49_reg_4_0_0_0 = 1'bX;
          selector_MUX_53_reg_8_0_0_0 = 1'bX;
          selector_MUX_53_reg_8_0_0_1 = 1'bX;
          selector_MUX_54_reg_9_0_0_0 = 1'bX;
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
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_6 = 1'b1;
          wrenable_reg_7 = 1'b1;
          wrenable_reg_9 = 1'b1;
          _next_state = S_2;
        end
      S_2 :
        begin
          selector_MUX_10_PROXY_CTRLN_2_i0_0_0_0 = 1'b1;
          selector_MUX_11_PROXY_CTRLN_2_i0_1_0_0 = 1'b1;
          selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0 = 1'b1;
          selector_MUX_41_reg_15_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          wrenable_reg_15 = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          fuselector_PROXY_CTRLN_2_i0_LOAD = 1'b1;
          wrenable_reg_10 = 1'b1;
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
          wrenable_reg_19 = 1'b1;
          _next_state = S_5;
        end
      S_5 :
        begin
          wrenable_reg_20 = 1'b1;
          _next_state = S_6;
        end
      S_6 :
        begin
          selector_MUX_11_PROXY_CTRLN_2_i0_1_0_1 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          _next_state = S_7;
        end
      S_7 :
        begin
          selector_MUX_10_PROXY_CTRLN_2_i0_0_0_1 = 1'b1;
          selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0 = 1'b1;
          selector_MUX_53_reg_8_0_0_0 = 1'b1;
          selector_MUX_54_reg_9_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          wrenable_reg_8 = 1'b1;
          wrenable_reg_9 = 1'b1;
          if (OUT_MULTIIF_make_non_oriented_28874_30621[0] == 1'b1)
            begin
              _next_state = S_3;
              selector_MUX_53_reg_8_0_0_0 = 1'b0;
            end
          else if (OUT_MULTIIF_make_non_oriented_28874_30621[1] == 1'b1)
            begin
              _next_state = S_1;
              selector_MUX_54_reg_9_0_0_0 = 1'b0;
              wrenable_reg_9 = 1'b0;
            end
          else
            begin
              _next_state = S_8;
              done_port = 1'b1;
              selector_MUX_53_reg_8_0_0_0 = 1'b0;
              selector_MUX_54_reg_9_0_0_0 = 1'b0;
              wrenable_reg_8 = 1'b0;
              wrenable_reg_9 = 1'b0;
            end
        end
      S_8 :
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
          selector_MUX_41_reg_15_0_0_0 = 1'bX;
          selector_MUX_49_reg_4_0_0_0 = 1'bX;
          selector_MUX_53_reg_8_0_0_0 = 1'bX;
          selector_MUX_53_reg_8_0_0_1 = 1'bX;
          selector_MUX_54_reg_9_0_0_0 = 1'bX;
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
  input [63:0] proxy_out1_28867;
  input [63:0] proxy_out1_28868;
  input [63:0] proxy_out1_28870;
  // OUT
  output done_port;
  output [63:0] proxy_in1_28867;
  output [17:0] proxy_in2_28867;
  output [11:0] proxy_in3_28867;
  output [1:0] proxy_sel_LOAD_28867;
  output [1:0] proxy_sel_STORE_28867;
  output [63:0] proxy_in1_28868;
  output [17:0] proxy_in2_28868;
  output [11:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [63:0] proxy_in1_28870;
  output [17:0] proxy_in2_28870;
  output [11:0] proxy_in3_28870;
  output [1:0] proxy_sel_LOAD_28870;
  output [1:0] proxy_sel_STORE_28870;
  // Component and signal declarations
  wire [1:0] OUT_MULTIIF_make_non_oriented_28874_30621;
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
  wire selector_MUX_41_reg_15_0_0_0;
  wire selector_MUX_49_reg_4_0_0_0;
  wire selector_MUX_53_reg_8_0_0_0;
  wire selector_MUX_53_reg_8_0_0_1;
  wire selector_MUX_54_reg_9_0_0_0;
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
  
  controller_make_non_oriented Controller_i (.done_port(done_delayed_REG_signal_in), .selector_MUX_10_PROXY_CTRLN_2_i0_0_0_0(selector_MUX_10_PROXY_CTRLN_2_i0_0_0_0), .selector_MUX_10_PROXY_CTRLN_2_i0_0_0_1(selector_MUX_10_PROXY_CTRLN_2_i0_0_0_1), .selector_MUX_11_PROXY_CTRLN_2_i0_1_0_0(selector_MUX_11_PROXY_CTRLN_2_i0_1_0_0), .selector_MUX_11_PROXY_CTRLN_2_i0_1_0_1(selector_MUX_11_PROXY_CTRLN_2_i0_1_0_1), .selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0(selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0), .selector_MUX_41_reg_15_0_0_0(selector_MUX_41_reg_15_0_0_0), .selector_MUX_49_reg_4_0_0_0(selector_MUX_49_reg_4_0_0_0), .selector_MUX_53_reg_8_0_0_0(selector_MUX_53_reg_8_0_0_0), .selector_MUX_53_reg_8_0_0_1(selector_MUX_53_reg_8_0_0_1), .selector_MUX_54_reg_9_0_0_0(selector_MUX_54_reg_9_0_0_0), .fuselector_PROXY_CTRLN_0_i0_LOAD(fuselector_PROXY_CTRLN_0_i0_LOAD), .fuselector_PROXY_CTRLN_0_i0_STORE(fuselector_PROXY_CTRLN_0_i0_STORE), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_MULTIIF_make_non_oriented_28874_30621(OUT_MULTIIF_make_non_oriented_28874_30621), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_make_non_oriented #(.MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) Datapath_i (.proxy_in1_28867(proxy_in1_28867), .proxy_in2_28867(proxy_in2_28867), .proxy_in3_28867(proxy_in3_28867), .proxy_sel_LOAD_28867(proxy_sel_LOAD_28867), .proxy_sel_STORE_28867(proxy_sel_STORE_28867), .proxy_in1_28868(proxy_in1_28868), .proxy_in2_28868(proxy_in2_28868), .proxy_in3_28868(proxy_in3_28868), .proxy_sel_LOAD_28868(proxy_sel_LOAD_28868), .proxy_sel_STORE_28868(proxy_sel_STORE_28868), .proxy_in1_28870(proxy_in1_28870), .proxy_in2_28870(proxy_in2_28870), .proxy_in3_28870(proxy_in3_28870), .proxy_sel_LOAD_28870(proxy_sel_LOAD_28870), .proxy_sel_STORE_28870(proxy_sel_STORE_28870), .OUT_MULTIIF_make_non_oriented_28874_30621(OUT_MULTIIF_make_non_oriented_28874_30621), .clock(clock), .reset(reset), .proxy_out1_28867(proxy_out1_28867), .proxy_out1_28868(proxy_out1_28868), .proxy_out1_28870(proxy_out1_28870), .selector_MUX_10_PROXY_CTRLN_2_i0_0_0_0(selector_MUX_10_PROXY_CTRLN_2_i0_0_0_0), .selector_MUX_10_PROXY_CTRLN_2_i0_0_0_1(selector_MUX_10_PROXY_CTRLN_2_i0_0_0_1), .selector_MUX_11_PROXY_CTRLN_2_i0_1_0_0(selector_MUX_11_PROXY_CTRLN_2_i0_1_0_0), .selector_MUX_11_PROXY_CTRLN_2_i0_1_0_1(selector_MUX_11_PROXY_CTRLN_2_i0_1_0_1), .selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0(selector_MUX_11_PROXY_CTRLN_2_i0_1_1_0), .selector_MUX_41_reg_15_0_0_0(selector_MUX_41_reg_15_0_0_0), .selector_MUX_49_reg_4_0_0_0(selector_MUX_49_reg_4_0_0_0), .selector_MUX_53_reg_8_0_0_0(selector_MUX_53_reg_8_0_0_0), .selector_MUX_53_reg_8_0_0_1(selector_MUX_53_reg_8_0_0_1), .selector_MUX_54_reg_9_0_0_0(selector_MUX_54_reg_9_0_0_0), .fuselector_PROXY_CTRLN_0_i0_LOAD(fuselector_PROXY_CTRLN_0_i0_LOAD), .fuselector_PROXY_CTRLN_0_i0_STORE(fuselector_PROXY_CTRLN_0_i0_STORE), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Datapath RTL description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_main(clock, reset, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_2_i1_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_2_i1_STORE, selector_IN_UNBOUNDED_main_28882_29899, selector_IN_UNBOUNDED_main_28882_29904, selector_IN_UNBOUNDED_main_28882_29924, selector_MUX_5_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, OUT_CONDITION_main_28882_29905, OUT_UNBOUNDED_main_28882_29899, OUT_UNBOUNDED_main_28882_29904, OUT_UNBOUNDED_main_28882_29924);
  parameter MEM_var_28859_28880=160, MEM_var_28861_28880=192, MEM_var_28862_28880=224, MEM_var_28864_28880=256, MEM_var_28865_28880=288, MEM_var_28866_28880=320, MEM_var_28867_28882=32, MEM_var_28868_28882=64, MEM_var_28869_28882=96, MEM_var_28870_28882=128;
  // IN
  input clock;
  input reset;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [17:0] S_addr_ram;
  input [63:0] S_Wdata_ram;
  input [11:0] S_data_ram_size;
  input [63:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [63:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [17:0] Min_addr_ram;
  input [63:0] Min_Wdata_ram;
  input [11:0] Min_data_ram_size;
  input fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_2_i1_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_2_i1_STORE;
  input selector_IN_UNBOUNDED_main_28882_29899;
  input selector_IN_UNBOUNDED_main_28882_29904;
  input selector_IN_UNBOUNDED_main_28882_29924;
  input selector_MUX_5_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0;
  input wrenable_reg_0;
  input wrenable_reg_1;
  input wrenable_reg_2;
  input wrenable_reg_3;
  input wrenable_reg_4;
  input wrenable_reg_5;
  // OUT
  output [63:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [17:0] Mout_addr_ram;
  output [63:0] Mout_Wdata_ram;
  output [11:0] Mout_data_ram_size;
  output OUT_CONDITION_main_28882_29905;
  output OUT_UNBOUNDED_main_28882_29899;
  output OUT_UNBOUNDED_main_28882_29904;
  output OUT_UNBOUNDED_main_28882_29924;
  // Component and signal declarations
  wire [7:0] null_out_signal_array_28867_0_out1_0;
  wire [7:0] null_out_signal_array_28867_0_out1_1;
  wire [7:0] null_out_signal_array_28868_0_out1_0;
  wire [7:0] null_out_signal_array_28868_0_out1_1;
  wire [7:0] null_out_signal_array_28869_0_out1_0;
  wire [7:0] null_out_signal_array_28869_0_out1_1;
  wire [7:0] null_out_signal_array_28870_0_out1_0;
  wire [7:0] null_out_signal_array_28870_0_out1_1;
  wire signed [1:0] out_IIdata_converter_FU_9_i0_fu_main_28882_30502;
  wire [8:0] out_MUX_5_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0;
  wire [31:0] out_UUdata_converter_FU_11_i0_fu_main_28882_30505;
  wire [6:0] out_UUdata_converter_FU_7_i0_fu_main_28882_30364;
  wire [31:0] out_addr_expr_FU_10_i0_fu_main_28882_30419;
  wire [6:0] out_addr_expr_FU_6_i0_fu_main_28882_30407;
  wire [6:0] out_addr_expr_FU_8_i0_fu_main_28882_30403;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [4:0] out_const_2;
  wire out_const_3;
  wire [1:0] out_const_4;
  wire [7:0] out_const_5;
  wire [8:0] out_const_6;
  wire [6:0] out_const_7;
  wire [6:0] out_const_8;
  wire [5:0] out_conv_out_const_2_5_6;
  wire [31:0] out_conv_out_const_6_9_32;
  wire [31:0] out_conv_out_const_7_7_32;
  wire [31:0] out_conv_out_const_8_7_32;
  wire [1:0] out_conv_out_is_connected_17_i0_fu_main_28882_29904_I_8_2;
  wire [8:0] out_conv_out_reg_0_reg_0_7_9;
  wire [8:0] out_conv_out_reg_1_reg_1_7_9;
  wire [8:0] out_conv_out_reg_2_reg_2_7_9;
  wire [8:0] out_conv_out_reg_3_reg_3_7_9;
  wire signed [7:0] out_is_connected_17_i0_fu_main_28882_29904;
  wire [7:0] out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_0;
  wire out_ne_expr_FU_8_0_8_14_i0_fu_main_28882_30494;
  wire out_read_cond_FU_12_i0_fu_main_28882_29905;
  wire [6:0] out_reg_0_reg_0;
  wire [6:0] out_reg_1_reg_1;
  wire [6:0] out_reg_2_reg_2;
  wire [6:0] out_reg_3_reg_3;
  wire [31:0] out_reg_4_reg_4;
  wire [1:0] out_reg_5_reg_5;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_0_8_15_i0_fu_main_28882_30386;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_0_8_16_i0_fu_main_28882_30399;
  wire [7:0] out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_1;
  wire [63:0] proxy_out1_28867;
  wire [63:0] proxy_out1_28868;
  wire [63:0] proxy_out1_28869;
  wire [63:0] proxy_out1_28870;
  wire s_done_fu_main_28882_29899;
  wire s_done_fu_main_28882_29904;
  wire s_done_fu_main_28882_29924;
  wire [63:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [17:0] sig_in_bus_mergerMout_addr_ram1_0;
  wire [11:0] sig_in_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_0;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_1;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_2;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_3;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_4;
  wire [63:0] sig_in_bus_mergerSout_Rdata_ram6_0;
  wire [63:0] sig_in_bus_mergerSout_Rdata_ram6_1;
  wire [63:0] sig_in_bus_mergerSout_Rdata_ram6_2;
  wire [63:0] sig_in_bus_mergerSout_Rdata_ram6_3;
  wire [63:0] sig_in_bus_mergerSout_Rdata_ram6_4;
  wire [63:0] sig_in_bus_mergerproxy_in112_0;
  wire [63:0] sig_in_bus_mergerproxy_in112_1;
  wire [63:0] sig_in_bus_mergerproxy_in112_2;
  wire [63:0] sig_in_bus_mergerproxy_in117_0;
  wire [63:0] sig_in_bus_mergerproxy_in122_0;
  wire [63:0] sig_in_bus_mergerproxy_in122_1;
  wire [63:0] sig_in_bus_mergerproxy_in122_2;
  wire [63:0] sig_in_bus_mergerproxy_in17_0;
  wire [63:0] sig_in_bus_mergerproxy_in17_1;
  wire [63:0] sig_in_bus_mergerproxy_in17_2;
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
  wire [11:0] sig_in_bus_mergerproxy_in314_0;
  wire [11:0] sig_in_bus_mergerproxy_in314_1;
  wire [11:0] sig_in_bus_mergerproxy_in314_2;
  wire [11:0] sig_in_bus_mergerproxy_in319_0;
  wire [11:0] sig_in_bus_mergerproxy_in324_0;
  wire [11:0] sig_in_bus_mergerproxy_in324_1;
  wire [11:0] sig_in_bus_mergerproxy_in324_2;
  wire [11:0] sig_in_bus_mergerproxy_in39_0;
  wire [11:0] sig_in_bus_mergerproxy_in39_1;
  wire [11:0] sig_in_bus_mergerproxy_in39_2;
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
  wire [63:0] sig_in_vector_bus_mergerMout_Wdata_ram0_0;
  wire [17:0] sig_in_vector_bus_mergerMout_addr_ram1_0;
  wire [11:0] sig_in_vector_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_vector_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_vector_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_1;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_2;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_3;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_4;
  wire [63:0] sig_in_vector_bus_mergerSout_Rdata_ram6_0;
  wire [63:0] sig_in_vector_bus_mergerSout_Rdata_ram6_1;
  wire [63:0] sig_in_vector_bus_mergerSout_Rdata_ram6_2;
  wire [63:0] sig_in_vector_bus_mergerSout_Rdata_ram6_3;
  wire [63:0] sig_in_vector_bus_mergerSout_Rdata_ram6_4;
  wire [63:0] sig_in_vector_bus_mergerproxy_in112_0;
  wire [63:0] sig_in_vector_bus_mergerproxy_in112_1;
  wire [63:0] sig_in_vector_bus_mergerproxy_in112_2;
  wire [63:0] sig_in_vector_bus_mergerproxy_in117_0;
  wire [63:0] sig_in_vector_bus_mergerproxy_in122_0;
  wire [63:0] sig_in_vector_bus_mergerproxy_in122_1;
  wire [63:0] sig_in_vector_bus_mergerproxy_in122_2;
  wire [63:0] sig_in_vector_bus_mergerproxy_in17_0;
  wire [63:0] sig_in_vector_bus_mergerproxy_in17_1;
  wire [63:0] sig_in_vector_bus_mergerproxy_in17_2;
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
  wire [11:0] sig_in_vector_bus_mergerproxy_in314_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in314_1;
  wire [11:0] sig_in_vector_bus_mergerproxy_in314_2;
  wire [11:0] sig_in_vector_bus_mergerproxy_in319_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in324_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in324_1;
  wire [11:0] sig_in_vector_bus_mergerproxy_in324_2;
  wire [11:0] sig_in_vector_bus_mergerproxy_in39_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in39_1;
  wire [11:0] sig_in_vector_bus_mergerproxy_in39_2;
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
  wire [63:0] sig_out_bus_mergerMout_Wdata_ram0_;
  wire [17:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [11:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire [1:0] sig_out_bus_mergerMout_oe_ram3_;
  wire [1:0] sig_out_bus_mergerMout_we_ram4_;
  wire [1:0] sig_out_bus_mergerSout_DataRdy5_;
  wire [63:0] sig_out_bus_mergerSout_Rdata_ram6_;
  wire [63:0] sig_out_bus_mergerproxy_in112_;
  wire [63:0] sig_out_bus_mergerproxy_in117_;
  wire [63:0] sig_out_bus_mergerproxy_in122_;
  wire [63:0] sig_out_bus_mergerproxy_in17_;
  wire [17:0] sig_out_bus_mergerproxy_in213_;
  wire [17:0] sig_out_bus_mergerproxy_in218_;
  wire [17:0] sig_out_bus_mergerproxy_in223_;
  wire [17:0] sig_out_bus_mergerproxy_in28_;
  wire [11:0] sig_out_bus_mergerproxy_in314_;
  wire [11:0] sig_out_bus_mergerproxy_in319_;
  wire [11:0] sig_out_bus_mergerproxy_in324_;
  wire [11:0] sig_out_bus_mergerproxy_in39_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD10_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD15_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD20_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD25_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE11_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE16_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE21_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE26_;
  wire [63:0] sig_out_vector_bus_mergerproxy_in112_;
  wire [63:0] sig_out_vector_bus_mergerproxy_in117_;
  wire [63:0] sig_out_vector_bus_mergerproxy_in122_;
  wire [63:0] sig_out_vector_bus_mergerproxy_in17_;
  wire [17:0] sig_out_vector_bus_mergerproxy_in213_;
  wire [17:0] sig_out_vector_bus_mergerproxy_in218_;
  wire [17:0] sig_out_vector_bus_mergerproxy_in223_;
  wire [17:0] sig_out_vector_bus_mergerproxy_in28_;
  wire [11:0] sig_out_vector_bus_mergerproxy_in314_;
  wire [11:0] sig_out_vector_bus_mergerproxy_in319_;
  wire [11:0] sig_out_vector_bus_mergerproxy_in324_;
  wire [11:0] sig_out_vector_bus_mergerproxy_in39_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_LOAD10_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_LOAD15_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_LOAD20_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_LOAD25_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_STORE11_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_STORE16_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_STORE21_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_STORE26_;
  
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_1 (.out1(out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_1), .in1(out_const_1));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_0 (.out1(out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_0), .in1(out_const_5));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_5_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0 (.out1(out_MUX_5_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0), .sel(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0), .in1(out_conv_out_reg_2_reg_2_7_9), .in2(out_conv_out_reg_0_reg_0_7_9));
  ARRAY_1D_STD_BRAM_NN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(32), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(32), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(32), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(6), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file_a("array_ref_28867.mem"), .MEMORY_INIT_file_b("0_array_ref_28867.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28867_28882), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(16), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) array_28867_0 (.out1({null_out_signal_array_28867_0_out1_1, null_out_signal_array_28867_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_0), .proxy_out1(proxy_out1_28867), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({9'b000000000, 9'b000000000}), .in3({6'b000000, 6'b000000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in17_), .proxy_in2(sig_out_vector_bus_mergerproxy_in28_), .proxy_in3(sig_out_vector_bus_mergerproxy_in39_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD10_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE11_));
  ARRAY_1D_STD_BRAM_NN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(32), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(32), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(32), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(6), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file_a("array_ref_28868.mem"), .MEMORY_INIT_file_b("0_array_ref_28868.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28868_28882), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(16), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) array_28868_0 (.out1({null_out_signal_array_28868_0_out1_1, null_out_signal_array_28868_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_1), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_1), .proxy_out1(proxy_out1_28868), .clock(clock), .reset(reset), .in1({8'b00000000, out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_1}), .in2({9'b000000000, out_conv_out_reg_3_reg_3_7_9}), .in3({6'b000000, out_conv_out_const_2_5_6}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in112_), .proxy_in2(sig_out_vector_bus_mergerproxy_in213_), .proxy_in3(sig_out_vector_bus_mergerproxy_in314_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD15_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE16_));
  ARRAY_1D_STD_BRAM_NN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(32), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(32), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(32), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(6), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file_a("array_ref_28869.mem"), .MEMORY_INIT_file_b("0_array_ref_28869.mem"), .n_elements(3), .data_size(8), .address_space_begin(MEM_var_28869_28882), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(16), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) array_28869_0 (.out1({null_out_signal_array_28869_0_out1_1, null_out_signal_array_28869_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_2), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_2), .proxy_out1(proxy_out1_28869), .clock(clock), .reset(reset), .in1({out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_0, out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_0}), .in2({out_conv_out_reg_1_reg_1_7_9, out_MUX_5_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0}), .in3({out_conv_out_const_2_5_6, out_conv_out_const_2_5_6}), .in4({out_const_3, out_const_3}), .sel_LOAD({fuselector_ARRAY_1D_STD_BRAM_NN_2_i1_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD}), .sel_STORE({fuselector_ARRAY_1D_STD_BRAM_NN_2_i1_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in117_), .proxy_in2(sig_out_vector_bus_mergerproxy_in218_), .proxy_in3(sig_out_vector_bus_mergerproxy_in319_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD20_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE21_));
  ARRAY_1D_STD_BRAM_NN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(9), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(9), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(32), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(32), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(32), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(6), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file_a("array_ref_28870.mem"), .MEMORY_INIT_file_b("0_array_ref_28870.mem"), .n_elements(9), .data_size(8), .address_space_begin(MEM_var_28870_28882), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(16), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(9), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) array_28870_0 (.out1({null_out_signal_array_28870_0_out1_1, null_out_signal_array_28870_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_3), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_3), .proxy_out1(proxy_out1_28870), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({9'b000000000, 9'b000000000}), .in3({6'b000000, 6'b000000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in122_), .proxy_in2(sig_out_vector_bus_mergerproxy_in223_), .proxy_in3(sig_out_vector_bus_mergerproxy_in324_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD25_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE26_));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(1), .BITSIZE_out1(12)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(5), .BITSIZE_out1(2)) bus_mergerSout_DataRdy5_ (.out1(sig_out_bus_mergerSout_DataRdy5_), .in1({sig_in_bus_mergerSout_DataRdy5_4, sig_in_bus_mergerSout_DataRdy5_3, sig_in_bus_mergerSout_DataRdy5_2, sig_in_bus_mergerSout_DataRdy5_1, sig_in_bus_mergerSout_DataRdy5_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(5), .BITSIZE_out1(64)) bus_mergerSout_Rdata_ram6_ (.out1(sig_out_bus_mergerSout_Rdata_ram6_), .in1({sig_in_bus_mergerSout_Rdata_ram6_4, sig_in_bus_mergerSout_Rdata_ram6_3, sig_in_bus_mergerSout_Rdata_ram6_2, sig_in_bus_mergerSout_Rdata_ram6_1, sig_in_bus_mergerSout_Rdata_ram6_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(3), .BITSIZE_out1(64)) bus_mergerproxy_in112_ (.out1(sig_out_bus_mergerproxy_in112_), .in1({sig_in_bus_mergerproxy_in112_2, sig_in_bus_mergerproxy_in112_1, sig_in_bus_mergerproxy_in112_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerproxy_in117_ (.out1(sig_out_bus_mergerproxy_in117_), .in1({sig_in_bus_mergerproxy_in117_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(3), .BITSIZE_out1(64)) bus_mergerproxy_in122_ (.out1(sig_out_bus_mergerproxy_in122_), .in1({sig_in_bus_mergerproxy_in122_2, sig_in_bus_mergerproxy_in122_1, sig_in_bus_mergerproxy_in122_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(3), .BITSIZE_out1(64)) bus_mergerproxy_in17_ (.out1(sig_out_bus_mergerproxy_in17_), .in1({sig_in_bus_mergerproxy_in17_2, sig_in_bus_mergerproxy_in17_1, sig_in_bus_mergerproxy_in17_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(3), .BITSIZE_out1(18)) bus_mergerproxy_in213_ (.out1(sig_out_bus_mergerproxy_in213_), .in1({sig_in_bus_mergerproxy_in213_2, sig_in_bus_mergerproxy_in213_1, sig_in_bus_mergerproxy_in213_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(1), .BITSIZE_out1(18)) bus_mergerproxy_in218_ (.out1(sig_out_bus_mergerproxy_in218_), .in1({sig_in_bus_mergerproxy_in218_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(3), .BITSIZE_out1(18)) bus_mergerproxy_in223_ (.out1(sig_out_bus_mergerproxy_in223_), .in1({sig_in_bus_mergerproxy_in223_2, sig_in_bus_mergerproxy_in223_1, sig_in_bus_mergerproxy_in223_0}));
  bus_merger #(.BITSIZE_in1(18), .PORTSIZE_in1(3), .BITSIZE_out1(18)) bus_mergerproxy_in28_ (.out1(sig_out_bus_mergerproxy_in28_), .in1({sig_in_bus_mergerproxy_in28_2, sig_in_bus_mergerproxy_in28_1, sig_in_bus_mergerproxy_in28_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(3), .BITSIZE_out1(12)) bus_mergerproxy_in314_ (.out1(sig_out_bus_mergerproxy_in314_), .in1({sig_in_bus_mergerproxy_in314_2, sig_in_bus_mergerproxy_in314_1, sig_in_bus_mergerproxy_in314_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(1), .BITSIZE_out1(12)) bus_mergerproxy_in319_ (.out1(sig_out_bus_mergerproxy_in319_), .in1({sig_in_bus_mergerproxy_in319_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(3), .BITSIZE_out1(12)) bus_mergerproxy_in324_ (.out1(sig_out_bus_mergerproxy_in324_), .in1({sig_in_bus_mergerproxy_in324_2, sig_in_bus_mergerproxy_in324_1, sig_in_bus_mergerproxy_in324_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(3), .BITSIZE_out1(12)) bus_mergerproxy_in39_ (.out1(sig_out_bus_mergerproxy_in39_), .in1({sig_in_bus_mergerproxy_in39_2, sig_in_bus_mergerproxy_in39_1, sig_in_bus_mergerproxy_in39_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(3), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD10_ (.out1(sig_out_bus_mergerproxy_sel_LOAD10_), .in1({sig_in_bus_mergerproxy_sel_LOAD10_2, sig_in_bus_mergerproxy_sel_LOAD10_1, sig_in_bus_mergerproxy_sel_LOAD10_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(3), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD15_ (.out1(sig_out_bus_mergerproxy_sel_LOAD15_), .in1({sig_in_bus_mergerproxy_sel_LOAD15_2, sig_in_bus_mergerproxy_sel_LOAD15_1, sig_in_bus_mergerproxy_sel_LOAD15_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD20_ (.out1(sig_out_bus_mergerproxy_sel_LOAD20_), .in1({sig_in_bus_mergerproxy_sel_LOAD20_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(3), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD25_ (.out1(sig_out_bus_mergerproxy_sel_LOAD25_), .in1({sig_in_bus_mergerproxy_sel_LOAD25_2, sig_in_bus_mergerproxy_sel_LOAD25_1, sig_in_bus_mergerproxy_sel_LOAD25_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(3), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE11_ (.out1(sig_out_bus_mergerproxy_sel_STORE11_), .in1({sig_in_bus_mergerproxy_sel_STORE11_2, sig_in_bus_mergerproxy_sel_STORE11_1, sig_in_bus_mergerproxy_sel_STORE11_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(3), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE16_ (.out1(sig_out_bus_mergerproxy_sel_STORE16_), .in1({sig_in_bus_mergerproxy_sel_STORE16_2, sig_in_bus_mergerproxy_sel_STORE16_1, sig_in_bus_mergerproxy_sel_STORE16_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE21_ (.out1(sig_out_bus_mergerproxy_sel_STORE21_), .in1({sig_in_bus_mergerproxy_sel_STORE21_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(3), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE26_ (.out1(sig_out_bus_mergerproxy_sel_STORE26_), .in1({sig_in_bus_mergerproxy_sel_STORE26_2, sig_in_bus_mergerproxy_sel_STORE26_1, sig_in_bus_mergerproxy_sel_STORE26_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000011)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(2), .value(2'b10)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(9), .value(MEM_var_28870_28882)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(7), .value(MEM_var_28868_28882)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(7), .value(MEM_var_28869_28882)) const_8 (.out1(out_const_8));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(6)) conv_out_const_2_5_6 (.out1(out_conv_out_const_2_5_6), .in1(out_const_2));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(32)) conv_out_const_6_9_32 (.out1(out_conv_out_const_6_9_32), .in1(out_const_6));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(32)) conv_out_const_7_7_32 (.out1(out_conv_out_const_7_7_32), .in1(out_const_7));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(32)) conv_out_const_8_7_32 (.out1(out_conv_out_const_8_7_32), .in1(out_const_8));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(2)) conv_out_is_connected_17_i0_fu_main_28882_29904_I_8_2 (.out1(out_conv_out_is_connected_17_i0_fu_main_28882_29904_I_8_2), .in1(out_is_connected_17_i0_fu_main_28882_29904));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_0_reg_0_7_9 (.out1(out_conv_out_reg_0_reg_0_7_9), .in1(out_reg_0_reg_0));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_1_reg_1_7_9 (.out1(out_conv_out_reg_1_reg_1_7_9), .in1(out_reg_1_reg_1));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_2_reg_2_7_9 (.out1(out_conv_out_reg_2_reg_2_7_9), .in1(out_reg_2_reg_2));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_3_reg_3_7_9 (.out1(out_conv_out_reg_3_reg_3_7_9), .in1(out_reg_3_reg_3));
  make_non_oriented #(.MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) fu_main_28882_29899 (.done_port(s_done_fu_main_28882_29899), .proxy_in1_28867(sig_in_vector_bus_mergerproxy_in17_2), .proxy_in2_28867(sig_in_vector_bus_mergerproxy_in28_2), .proxy_in3_28867(sig_in_vector_bus_mergerproxy_in39_2), .proxy_sel_LOAD_28867(sig_in_vector_bus_mergerproxy_sel_LOAD10_2), .proxy_sel_STORE_28867(sig_in_vector_bus_mergerproxy_sel_STORE11_2), .proxy_in1_28868(sig_in_vector_bus_mergerproxy_in112_2), .proxy_in2_28868(sig_in_vector_bus_mergerproxy_in213_2), .proxy_in3_28868(sig_in_vector_bus_mergerproxy_in314_2), .proxy_sel_LOAD_28868(sig_in_vector_bus_mergerproxy_sel_LOAD15_2), .proxy_sel_STORE_28868(sig_in_vector_bus_mergerproxy_sel_STORE16_2), .proxy_in1_28870(sig_in_vector_bus_mergerproxy_in122_2), .proxy_in2_28870(sig_in_vector_bus_mergerproxy_in223_2), .proxy_in3_28870(sig_in_vector_bus_mergerproxy_in324_2), .proxy_sel_LOAD_28870(sig_in_vector_bus_mergerproxy_sel_LOAD25_2), .proxy_sel_STORE_28870(sig_in_vector_bus_mergerproxy_sel_STORE26_2), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28882_29899), .proxy_out1_28867(proxy_out1_28867), .proxy_out1_28868(proxy_out1_28868), .proxy_out1_28870(proxy_out1_28870));
  is_connected #(.MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) fu_main_28882_29904 (.done_port(s_done_fu_main_28882_29904), .return_port(out_is_connected_17_i0_fu_main_28882_29904), .proxy_in1_28867(sig_in_vector_bus_mergerproxy_in17_0), .proxy_in2_28867(sig_in_vector_bus_mergerproxy_in28_0), .proxy_in3_28867(sig_in_vector_bus_mergerproxy_in39_0), .proxy_sel_LOAD_28867(sig_in_vector_bus_mergerproxy_sel_LOAD10_0), .proxy_sel_STORE_28867(sig_in_vector_bus_mergerproxy_sel_STORE11_0), .proxy_in1_28868(sig_in_vector_bus_mergerproxy_in112_0), .proxy_in2_28868(sig_in_vector_bus_mergerproxy_in213_0), .proxy_in3_28868(sig_in_vector_bus_mergerproxy_in314_0), .proxy_sel_LOAD_28868(sig_in_vector_bus_mergerproxy_sel_LOAD15_0), .proxy_sel_STORE_28868(sig_in_vector_bus_mergerproxy_sel_STORE16_0), .proxy_in1_28870(sig_in_vector_bus_mergerproxy_in122_0), .proxy_in2_28870(sig_in_vector_bus_mergerproxy_in223_0), .proxy_in3_28870(sig_in_vector_bus_mergerproxy_in324_0), .proxy_sel_LOAD_28870(sig_in_vector_bus_mergerproxy_sel_LOAD25_0), .proxy_sel_STORE_28870(sig_in_vector_bus_mergerproxy_sel_STORE26_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28882_29904), .proxy_out1_28867(proxy_out1_28867), .proxy_out1_28868(proxy_out1_28868), .proxy_out1_28870(proxy_out1_28870));
  read_cond_FU #(.BITSIZE_in1(1)) fu_main_28882_29905 (.out1(out_read_cond_FU_12_i0_fu_main_28882_29905), .in1(out_ne_expr_FU_8_0_8_14_i0_fu_main_28882_30494));
  kruskalF #(.MEM_var_28859_28880(MEM_var_28859_28880), .MEM_var_28861_28880(MEM_var_28861_28880), .MEM_var_28862_28880(MEM_var_28862_28880), .MEM_var_28864_28880(MEM_var_28864_28880), .MEM_var_28865_28880(MEM_var_28865_28880), .MEM_var_28866_28880(MEM_var_28866_28880), .MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28869_28882(MEM_var_28869_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) fu_main_28882_29924 (.done_port(s_done_fu_main_28882_29924), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_4), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_4), .proxy_in1_28867(sig_in_vector_bus_mergerproxy_in17_1), .proxy_in2_28867(sig_in_vector_bus_mergerproxy_in28_1), .proxy_in3_28867(sig_in_vector_bus_mergerproxy_in39_1), .proxy_sel_LOAD_28867(sig_in_vector_bus_mergerproxy_sel_LOAD10_1), .proxy_sel_STORE_28867(sig_in_vector_bus_mergerproxy_sel_STORE11_1), .proxy_in1_28868(sig_in_vector_bus_mergerproxy_in112_1), .proxy_in2_28868(sig_in_vector_bus_mergerproxy_in213_1), .proxy_in3_28868(sig_in_vector_bus_mergerproxy_in314_1), .proxy_sel_LOAD_28868(sig_in_vector_bus_mergerproxy_sel_LOAD15_1), .proxy_sel_STORE_28868(sig_in_vector_bus_mergerproxy_sel_STORE16_1), .proxy_in1_28869(sig_in_vector_bus_mergerproxy_in117_0), .proxy_in2_28869(sig_in_vector_bus_mergerproxy_in218_0), .proxy_in3_28869(sig_in_vector_bus_mergerproxy_in319_0), .proxy_sel_LOAD_28869(sig_in_vector_bus_mergerproxy_sel_LOAD20_0), .proxy_sel_STORE_28869(sig_in_vector_bus_mergerproxy_sel_STORE21_0), .proxy_in1_28870(sig_in_vector_bus_mergerproxy_in122_1), .proxy_in2_28870(sig_in_vector_bus_mergerproxy_in223_1), .proxy_in3_28870(sig_in_vector_bus_mergerproxy_in324_1), .proxy_sel_LOAD_28870(sig_in_vector_bus_mergerproxy_sel_LOAD25_1), .proxy_sel_STORE_28870(sig_in_vector_bus_mergerproxy_sel_STORE26_1), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28882_29924), .a(out_reg_4_reg_4), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28867(proxy_out1_28867), .proxy_out1_28868(proxy_out1_28868), .proxy_out1_28869(proxy_out1_28869), .proxy_out1_28870(proxy_out1_28870), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(7)) fu_main_28882_30364 (.out1(out_UUdata_converter_FU_7_i0_fu_main_28882_30364), .in1(out_addr_expr_FU_6_i0_fu_main_28882_30407));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(1), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_main_28882_30386 (.out1(out_ui_pointer_plus_expr_FU_8_0_8_15_i0_fu_main_28882_30386), .in1(out_UUdata_converter_FU_7_i0_fu_main_28882_30364), .in2(out_const_3));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_main_28882_30399 (.out1(out_ui_pointer_plus_expr_FU_8_0_8_16_i0_fu_main_28882_30399), .in1(out_UUdata_converter_FU_7_i0_fu_main_28882_30364), .in2(out_const_4));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_main_28882_30403 (.out1(out_addr_expr_FU_8_i0_fu_main_28882_30403), .in1(out_conv_out_const_7_7_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_main_28882_30407 (.out1(out_addr_expr_FU_6_i0_fu_main_28882_30407), .in1(out_conv_out_const_8_7_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_main_28882_30419 (.out1(out_addr_expr_FU_10_i0_fu_main_28882_30419), .in1(out_conv_out_const_6_9_32));
  ne_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_main_28882_30494 (.out1(out_ne_expr_FU_8_0_8_14_i0_fu_main_28882_30494), .in1(out_IIdata_converter_FU_9_i0_fu_main_28882_30502), .in2(out_const_0));
  IIdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) fu_main_28882_30502 (.out1(out_IIdata_converter_FU_9_i0_fu_main_28882_30502), .in1(out_reg_5_reg_5));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_main_28882_30505 (.out1(out_UUdata_converter_FU_11_i0_fu_main_28882_30505), .in1(out_addr_expr_FU_10_i0_fu_main_28882_30419));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(18)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerMout_data_ram_size2_0 (.out1(sig_in_bus_mergerMout_data_ram_size2_0), .in1(sig_in_vector_bus_mergerMout_data_ram_size2_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_oe_ram3_0 (.out1(sig_in_bus_mergerMout_oe_ram3_0), .in1(sig_in_vector_bus_mergerMout_oe_ram3_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_we_ram4_0 (.out1(sig_in_bus_mergerMout_we_ram4_0), .in1(sig_in_vector_bus_mergerMout_we_ram4_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_0 (.out1(sig_in_bus_mergerSout_DataRdy5_0), .in1(sig_in_vector_bus_mergerSout_DataRdy5_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_1 (.out1(sig_in_bus_mergerSout_DataRdy5_1), .in1(sig_in_vector_bus_mergerSout_DataRdy5_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_2 (.out1(sig_in_bus_mergerSout_DataRdy5_2), .in1(sig_in_vector_bus_mergerSout_DataRdy5_2));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_3 (.out1(sig_in_bus_mergerSout_DataRdy5_3), .in1(sig_in_vector_bus_mergerSout_DataRdy5_3));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_4 (.out1(sig_in_bus_mergerSout_DataRdy5_4), .in1(sig_in_vector_bus_mergerSout_DataRdy5_4));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerSout_Rdata_ram6_0 (.out1(sig_in_bus_mergerSout_Rdata_ram6_0), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_0));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerSout_Rdata_ram6_1 (.out1(sig_in_bus_mergerSout_Rdata_ram6_1), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_1));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerSout_Rdata_ram6_2 (.out1(sig_in_bus_mergerSout_Rdata_ram6_2), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_2));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerSout_Rdata_ram6_3 (.out1(sig_in_bus_mergerSout_Rdata_ram6_3), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_3));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerSout_Rdata_ram6_4 (.out1(sig_in_bus_mergerSout_Rdata_ram6_4), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_4));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in112_0 (.out1(sig_in_bus_mergerproxy_in112_0), .in1(sig_in_vector_bus_mergerproxy_in112_0));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in112_1 (.out1(sig_in_bus_mergerproxy_in112_1), .in1(sig_in_vector_bus_mergerproxy_in112_1));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in112_2 (.out1(sig_in_bus_mergerproxy_in112_2), .in1(sig_in_vector_bus_mergerproxy_in112_2));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in117_0 (.out1(sig_in_bus_mergerproxy_in117_0), .in1(sig_in_vector_bus_mergerproxy_in117_0));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in122_0 (.out1(sig_in_bus_mergerproxy_in122_0), .in1(sig_in_vector_bus_mergerproxy_in122_0));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in122_1 (.out1(sig_in_bus_mergerproxy_in122_1), .in1(sig_in_vector_bus_mergerproxy_in122_1));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in122_2 (.out1(sig_in_bus_mergerproxy_in122_2), .in1(sig_in_vector_bus_mergerproxy_in122_2));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in17_0 (.out1(sig_in_bus_mergerproxy_in17_0), .in1(sig_in_vector_bus_mergerproxy_in17_0));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in17_1 (.out1(sig_in_bus_mergerproxy_in17_1), .in1(sig_in_vector_bus_mergerproxy_in17_1));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in17_2 (.out1(sig_in_bus_mergerproxy_in17_2), .in1(sig_in_vector_bus_mergerproxy_in17_2));
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
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in314_0 (.out1(sig_in_bus_mergerproxy_in314_0), .in1(sig_in_vector_bus_mergerproxy_in314_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in314_1 (.out1(sig_in_bus_mergerproxy_in314_1), .in1(sig_in_vector_bus_mergerproxy_in314_1));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in314_2 (.out1(sig_in_bus_mergerproxy_in314_2), .in1(sig_in_vector_bus_mergerproxy_in314_2));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in319_0 (.out1(sig_in_bus_mergerproxy_in319_0), .in1(sig_in_vector_bus_mergerproxy_in319_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in324_0 (.out1(sig_in_bus_mergerproxy_in324_0), .in1(sig_in_vector_bus_mergerproxy_in324_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in324_1 (.out1(sig_in_bus_mergerproxy_in324_1), .in1(sig_in_vector_bus_mergerproxy_in324_1));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in324_2 (.out1(sig_in_bus_mergerproxy_in324_2), .in1(sig_in_vector_bus_mergerproxy_in324_2));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in39_0 (.out1(sig_in_bus_mergerproxy_in39_0), .in1(sig_in_vector_bus_mergerproxy_in39_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in39_1 (.out1(sig_in_bus_mergerproxy_in39_1), .in1(sig_in_vector_bus_mergerproxy_in39_1));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in39_2 (.out1(sig_in_bus_mergerproxy_in39_2), .in1(sig_in_vector_bus_mergerproxy_in39_2));
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
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_7_i0_fu_main_28882_30364), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_0_8_15_i0_fu_main_28882_30386), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_0_8_16_i0_fu_main_28882_30399), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_8_i0_fu_main_28882_30403), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_11_i0_fu_main_28882_30505), .wenable(wrenable_reg_4));
  register_SE #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_conv_out_is_connected_17_i0_fu_main_28882_29904_I_8_2), .wenable(wrenable_reg_5));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy5_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy5_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram6_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram6_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in112_ (.out1(sig_out_vector_bus_mergerproxy_in112_), .in1(sig_out_bus_mergerproxy_in112_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in117_ (.out1(sig_out_vector_bus_mergerproxy_in117_), .in1(sig_out_bus_mergerproxy_in117_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in122_ (.out1(sig_out_vector_bus_mergerproxy_in122_), .in1(sig_out_bus_mergerproxy_in122_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in17_ (.out1(sig_out_vector_bus_mergerproxy_in17_), .in1(sig_out_bus_mergerproxy_in17_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in213_ (.out1(sig_out_vector_bus_mergerproxy_in213_), .in1(sig_out_bus_mergerproxy_in213_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in218_ (.out1(sig_out_vector_bus_mergerproxy_in218_), .in1(sig_out_bus_mergerproxy_in218_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in223_ (.out1(sig_out_vector_bus_mergerproxy_in223_), .in1(sig_out_bus_mergerproxy_in223_));
  split_signal #(.BITSIZE_in1(18), .BITSIZE_out1(9), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in28_ (.out1(sig_out_vector_bus_mergerproxy_in28_), .in1(sig_out_bus_mergerproxy_in28_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in314_ (.out1(sig_out_vector_bus_mergerproxy_in314_), .in1(sig_out_bus_mergerproxy_in314_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in319_ (.out1(sig_out_vector_bus_mergerproxy_in319_), .in1(sig_out_bus_mergerproxy_in319_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in324_ (.out1(sig_out_vector_bus_mergerproxy_in324_), .in1(sig_out_bus_mergerproxy_in324_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in39_ (.out1(sig_out_vector_bus_mergerproxy_in39_), .in1(sig_out_bus_mergerproxy_in39_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD10_ (.out1(sig_out_vector_bus_mergerproxy_sel_LOAD10_), .in1(sig_out_bus_mergerproxy_sel_LOAD10_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD15_ (.out1(sig_out_vector_bus_mergerproxy_sel_LOAD15_), .in1(sig_out_bus_mergerproxy_sel_LOAD15_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD20_ (.out1(sig_out_vector_bus_mergerproxy_sel_LOAD20_), .in1(sig_out_bus_mergerproxy_sel_LOAD20_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD25_ (.out1(sig_out_vector_bus_mergerproxy_sel_LOAD25_), .in1(sig_out_bus_mergerproxy_sel_LOAD25_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE11_ (.out1(sig_out_vector_bus_mergerproxy_sel_STORE11_), .in1(sig_out_bus_mergerproxy_sel_STORE11_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE16_ (.out1(sig_out_vector_bus_mergerproxy_sel_STORE16_), .in1(sig_out_bus_mergerproxy_sel_STORE16_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE21_ (.out1(sig_out_vector_bus_mergerproxy_sel_STORE21_), .in1(sig_out_bus_mergerproxy_sel_STORE21_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE26_ (.out1(sig_out_vector_bus_mergerproxy_sel_STORE26_), .in1(sig_out_bus_mergerproxy_sel_STORE26_));
  // io-signal post fix
  assign OUT_CONDITION_main_28882_29905 = out_read_cond_FU_12_i0_fu_main_28882_29905;
  assign OUT_UNBOUNDED_main_28882_29899 = s_done_fu_main_28882_29899;
  assign OUT_UNBOUNDED_main_28882_29904 = s_done_fu_main_28882_29904;
  assign OUT_UNBOUNDED_main_28882_29924 = s_done_fu_main_28882_29924;

endmodule

// FSM based controller description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_main(done_port, fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_2_i1_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_2_i1_STORE, selector_IN_UNBOUNDED_main_28882_29899, selector_IN_UNBOUNDED_main_28882_29904, selector_IN_UNBOUNDED_main_28882_29924, selector_MUX_5_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, OUT_CONDITION_main_28882_29905, OUT_UNBOUNDED_main_28882_29899, OUT_UNBOUNDED_main_28882_29904, OUT_UNBOUNDED_main_28882_29924, clock, reset, start_port);
  // IN
  input OUT_CONDITION_main_28882_29905;
  input OUT_UNBOUNDED_main_28882_29899;
  input OUT_UNBOUNDED_main_28882_29904;
  input OUT_UNBOUNDED_main_28882_29924;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_2_i1_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_2_i1_STORE;
  output selector_IN_UNBOUNDED_main_28882_29899;
  output selector_IN_UNBOUNDED_main_28882_29904;
  output selector_IN_UNBOUNDED_main_28882_29924;
  output selector_MUX_5_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0;
  output wrenable_reg_0;
  output wrenable_reg_1;
  output wrenable_reg_2;
  output wrenable_reg_3;
  output wrenable_reg_4;
  output wrenable_reg_5;
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
  reg fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_2_i1_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_2_i1_STORE;
  reg selector_IN_UNBOUNDED_main_28882_29899;
  reg selector_IN_UNBOUNDED_main_28882_29904;
  reg selector_IN_UNBOUNDED_main_28882_29924;
  reg selector_MUX_5_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0;
  reg wrenable_reg_0;
  reg wrenable_reg_1;
  reg wrenable_reg_2;
  reg wrenable_reg_3;
  reg wrenable_reg_4;
  reg wrenable_reg_5;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_2_i1_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_2_i1_STORE = 1'b0;
    selector_IN_UNBOUNDED_main_28882_29899 = 1'b0;
    selector_IN_UNBOUNDED_main_28882_29904 = 1'b0;
    selector_IN_UNBOUNDED_main_28882_29924 = 1'b0;
    selector_MUX_5_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0 = 1'b0;
    wrenable_reg_0 = 1'b0;
    wrenable_reg_1 = 1'b0;
    wrenable_reg_2 = 1'b0;
    wrenable_reg_3 = 1'b0;
    wrenable_reg_4 = 1'b0;
    wrenable_reg_5 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          selector_IN_UNBOUNDED_main_28882_29899 = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          if (OUT_UNBOUNDED_main_28882_29899 == 1'b0)
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
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_2 = 1'bX;
          wrenable_reg_3 = 1'bX;
          wrenable_reg_4 = 1'bX;
          wrenable_reg_5 = 1'bX;
          _next_state = S_0;
        end
      S_1 :
        begin
          if (OUT_UNBOUNDED_main_28882_29899 == 1'b0)
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
          fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_2_i1_STORE = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE = 1'b1;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0 = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          selector_IN_UNBOUNDED_main_28882_29904 = 1'b1;
          wrenable_reg_5 = 1'b1;
          if (OUT_UNBOUNDED_main_28882_29904 == 1'b0)
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
          wrenable_reg_5 = 1'b1;
          if (OUT_UNBOUNDED_main_28882_29904 == 1'b0)
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
          if (OUT_CONDITION_main_28882_29905 == 1'b1)
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
          selector_IN_UNBOUNDED_main_28882_29924 = 1'b1;
          if (OUT_UNBOUNDED_main_28882_29924 == 1'b0)
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
          if (OUT_UNBOUNDED_main_28882_29924 == 1'b0)
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
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_2 = 1'bX;
          wrenable_reg_3 = 1'bX;
          wrenable_reg_4 = 1'bX;
          wrenable_reg_5 = 1'bX;
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
  input [63:0] S_Wdata_ram;
  input [11:0] S_data_ram_size;
  input [63:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [63:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [17:0] Min_addr_ram;
  input [63:0] Min_Wdata_ram;
  input [11:0] Min_data_ram_size;
  // OUT
  output done_port;
  output [63:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [17:0] Mout_addr_ram;
  output [63:0] Mout_Wdata_ram;
  output [11:0] Mout_data_ram_size;
  // Component and signal declarations
  wire OUT_CONDITION_main_28882_29905;
  wire OUT_UNBOUNDED_main_28882_29899;
  wire OUT_UNBOUNDED_main_28882_29904;
  wire OUT_UNBOUNDED_main_28882_29924;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_2_i1_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_2_i1_STORE;
  wire selector_IN_UNBOUNDED_main_28882_29899;
  wire selector_IN_UNBOUNDED_main_28882_29904;
  wire selector_IN_UNBOUNDED_main_28882_29924;
  wire selector_MUX_5_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0;
  wire wrenable_reg_0;
  wire wrenable_reg_1;
  wire wrenable_reg_2;
  wire wrenable_reg_3;
  wire wrenable_reg_4;
  wire wrenable_reg_5;
  
  controller_main Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_2_i1_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_2_i1_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_2_i1_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_2_i1_STORE), .selector_IN_UNBOUNDED_main_28882_29899(selector_IN_UNBOUNDED_main_28882_29899), .selector_IN_UNBOUNDED_main_28882_29904(selector_IN_UNBOUNDED_main_28882_29904), .selector_IN_UNBOUNDED_main_28882_29924(selector_IN_UNBOUNDED_main_28882_29924), .selector_MUX_5_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .OUT_CONDITION_main_28882_29905(OUT_CONDITION_main_28882_29905), .OUT_UNBOUNDED_main_28882_29899(OUT_UNBOUNDED_main_28882_29899), .OUT_UNBOUNDED_main_28882_29904(OUT_UNBOUNDED_main_28882_29904), .OUT_UNBOUNDED_main_28882_29924(OUT_UNBOUNDED_main_28882_29924), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_main #(.MEM_var_28859_28880(MEM_var_28859_28880), .MEM_var_28861_28880(MEM_var_28861_28880), .MEM_var_28862_28880(MEM_var_28862_28880), .MEM_var_28864_28880(MEM_var_28864_28880), .MEM_var_28865_28880(MEM_var_28865_28880), .MEM_var_28866_28880(MEM_var_28866_28880), .MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28869_28882(MEM_var_28869_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_CONDITION_main_28882_29905(OUT_CONDITION_main_28882_29905), .OUT_UNBOUNDED_main_28882_29899(OUT_UNBOUNDED_main_28882_29899), .OUT_UNBOUNDED_main_28882_29904(OUT_UNBOUNDED_main_28882_29904), .OUT_UNBOUNDED_main_28882_29924(OUT_UNBOUNDED_main_28882_29924), .clock(clock), .reset(reset), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_2_i1_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_2_i1_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_2_i1_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_2_i1_STORE), .selector_IN_UNBOUNDED_main_28882_29899(selector_IN_UNBOUNDED_main_28882_29899), .selector_IN_UNBOUNDED_main_28882_29904(selector_IN_UNBOUNDED_main_28882_29904), .selector_IN_UNBOUNDED_main_28882_29924(selector_IN_UNBOUNDED_main_28882_29924), .selector_MUX_5_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5));
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
  input [63:0] S_Wdata_ram;
  input [11:0] S_data_ram_size;
  input [63:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  // OUT
  output done_port;
  output [63:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [17:0] Mout_addr_ram;
  output [63:0] Mout_Wdata_ram;
  output [11:0] Mout_data_ram_size;
  // Component and signal declarations
  
  _main #(.MEM_var_28859_28880(MEM_var_28859_28880), .MEM_var_28861_28880(MEM_var_28861_28880), .MEM_var_28862_28880(MEM_var_28862_28880), .MEM_var_28864_28880(MEM_var_28864_28880), .MEM_var_28865_28880(MEM_var_28865_28880), .MEM_var_28866_28880(MEM_var_28866_28880), .MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28869_28882(MEM_var_28869_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) _main_i0 (.done_port(done_port), .Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .clock(clock), .reset(reset), .start_port(start_port), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .Sin_DataRdy({1'b0, 1'b0}), .Min_oe_ram({1'b0, 1'b0}), .Min_we_ram({1'b0, 1'b0}), .Min_addr_ram({9'b000000000, 9'b000000000}), .Min_Wdata_ram({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .Min_data_ram_size({6'b000000, 6'b000000}));

endmodule


