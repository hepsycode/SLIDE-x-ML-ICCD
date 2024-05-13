// 
// Politecnico di Milano
// Code created using PandA - Version: PandA 0.9.6 - Revision 891ec3caed502474cab0813cc4a9fc678deabaa5 - Date 2022-06-07T21:06:02
// bambu executed with: bambu -I/home/dews/Scrivania/bambu-hls/RESULTS/Bambu/xc7vx690t-3ffg1930-Virtex-7/28x28/astar/includes/values_18 --simulate --simulator=VERILATOR --clock-period=5 --device-name=xc7vx690t-3ffg1930-VVD /home/dews/Scrivania/bambu-hls/cc4cs_bambu/benchmarkBasic/astar/thrd.c 
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
module datapath_astarF(clock, reset, in_port_a, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, proxy_out1_28861, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_out1_28868, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_STORE, fuselector_BMEMORY_CTRLN_110_i0_LOAD, fuselector_BMEMORY_CTRLN_110_i0_STORE, fuselector_BMEMORY_CTRLN_110_i1_LOAD, fuselector_BMEMORY_CTRLN_110_i1_STORE, selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_0, selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_1, selector_MUX_143_reg_11_0_0_0, selector_MUX_144_reg_12_0_0_0, selector_MUX_146_reg_14_0_0_0, selector_MUX_148_reg_16_0_0_0, selector_MUX_150_reg_18_0_0_0, selector_MUX_153_reg_20_0_0_0, selector_MUX_155_reg_22_0_0_0, selector_MUX_158_reg_25_0_0_0, selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0, selector_MUX_179_reg_44_0_0_0, selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_0, selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_1, selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_1_0, selector_MUX_182_reg_47_0_0_0, selector_MUX_183_reg_48_0_0_0, selector_MUX_183_reg_48_0_0_1, selector_MUX_183_reg_48_0_1_0, selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_0, selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_1, selector_MUX_24_BMEMORY_CTRLN_110_i1_1_0_0, selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0, selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1, selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0, selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0, selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0, selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1, selector_MUX_8_ARRAY_1D_STD_BRAM_NN_2_i0_0_0_0, selector_MUX_9_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0, fuselector_PROXY_CTRLN_5_i0_LOAD, fuselector_PROXY_CTRLN_5_i0_STORE, fuselector_PROXY_CTRLN_6_i0_LOAD, fuselector_PROXY_CTRLN_6_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_29, wrenable_reg_3, wrenable_reg_30, wrenable_reg_31, wrenable_reg_32, wrenable_reg_33, wrenable_reg_34, wrenable_reg_35, wrenable_reg_36, wrenable_reg_37, wrenable_reg_38, wrenable_reg_39, wrenable_reg_4, wrenable_reg_40, wrenable_reg_41, wrenable_reg_42, wrenable_reg_43, wrenable_reg_44, wrenable_reg_45, wrenable_reg_46, wrenable_reg_47, wrenable_reg_48, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_astarF_28877_29574, OUT_CONDITION_astarF_28877_29599, OUT_CONDITION_astarF_28877_29618, OUT_CONDITION_astarF_28877_29633, OUT_CONDITION_astarF_28877_29832, OUT_CONDITION_astarF_28877_29834, OUT_CONDITION_astarF_28877_29840, OUT_CONDITION_astarF_28877_29847, OUT_CONDITION_astarF_28877_29863, OUT_CONDITION_astarF_28877_29869, OUT_CONDITION_astarF_28877_29872);
  parameter MEM_var_28861_28879=512, MEM_var_28862_28877=2048, MEM_var_28864_28877=2560, MEM_var_28865_28877=3072, MEM_var_28866_28877=3584, MEM_var_28867_28877=4096, MEM_var_28868_28879=1024;
  // IN
  input clock;
  input reset;
  input [31:0] in_port_a;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [25:0] S_addr_ram;
  input [63:0] S_Wdata_ram;
  input [11:0] S_data_ram_size;
  input [63:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [63:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [63:0] proxy_out1_28861;
  input [63:0] proxy_out1_28868;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [25:0] Min_addr_ram;
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
  input fuselector_BMEMORY_CTRLN_110_i0_LOAD;
  input fuselector_BMEMORY_CTRLN_110_i0_STORE;
  input fuselector_BMEMORY_CTRLN_110_i1_LOAD;
  input fuselector_BMEMORY_CTRLN_110_i1_STORE;
  input selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_0;
  input selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_1;
  input selector_MUX_143_reg_11_0_0_0;
  input selector_MUX_144_reg_12_0_0_0;
  input selector_MUX_146_reg_14_0_0_0;
  input selector_MUX_148_reg_16_0_0_0;
  input selector_MUX_150_reg_18_0_0_0;
  input selector_MUX_153_reg_20_0_0_0;
  input selector_MUX_155_reg_22_0_0_0;
  input selector_MUX_158_reg_25_0_0_0;
  input selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0;
  input selector_MUX_179_reg_44_0_0_0;
  input selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_0;
  input selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_1;
  input selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_1_0;
  input selector_MUX_182_reg_47_0_0_0;
  input selector_MUX_183_reg_48_0_0_0;
  input selector_MUX_183_reg_48_0_0_1;
  input selector_MUX_183_reg_48_0_1_0;
  input selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_0;
  input selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_1;
  input selector_MUX_24_BMEMORY_CTRLN_110_i1_1_0_0;
  input selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0;
  input selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1;
  input selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0;
  input selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0;
  input selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0;
  input selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1;
  input selector_MUX_8_ARRAY_1D_STD_BRAM_NN_2_i0_0_0_0;
  input selector_MUX_9_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0;
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
  input wrenable_reg_5;
  input wrenable_reg_6;
  input wrenable_reg_7;
  input wrenable_reg_8;
  input wrenable_reg_9;
  // OUT
  output [63:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [63:0] proxy_in1_28861;
  output [25:0] proxy_in2_28861;
  output [11:0] proxy_in3_28861;
  output [1:0] proxy_sel_LOAD_28861;
  output [1:0] proxy_sel_STORE_28861;
  output [63:0] proxy_in1_28868;
  output [25:0] proxy_in2_28868;
  output [11:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [25:0] Mout_addr_ram;
  output [63:0] Mout_Wdata_ram;
  output [11:0] Mout_data_ram_size;
  output OUT_CONDITION_astarF_28877_29574;
  output OUT_CONDITION_astarF_28877_29599;
  output OUT_CONDITION_astarF_28877_29618;
  output OUT_CONDITION_astarF_28877_29633;
  output OUT_CONDITION_astarF_28877_29832;
  output OUT_CONDITION_astarF_28877_29834;
  output OUT_CONDITION_astarF_28877_29840;
  output OUT_CONDITION_astarF_28877_29847;
  output OUT_CONDITION_astarF_28877_29863;
  output OUT_CONDITION_astarF_28877_29869;
  output OUT_CONDITION_astarF_28877_29872;
  // Component and signal declarations
  wire [7:0] null_out_signal_PROXY_CTRLN_5_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_6_i0_out1_1;
  wire [7:0] null_out_signal_array_28862_0_out1_0;
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
  wire [7:0] null_out_signal_array_28866_0_out1_1;
  wire [31:0] null_out_signal_array_28866_0_proxy_out1_0;
  wire [31:0] null_out_signal_array_28866_0_proxy_out1_1;
  wire [7:0] null_out_signal_array_28867_0_out1_1;
  wire [31:0] null_out_signal_array_28867_0_proxy_out1_0;
  wire [31:0] null_out_signal_array_28867_0_proxy_out1_1;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_1_i0_array_28864_0;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_3_i0_array_28866_0;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_4_i0_array_28867_0;
  wire [7:0] out_BMEMORY_CTRLN_110_i0_BMEMORY_CTRLN_110_i0;
  wire [7:0] out_BMEMORY_CTRLN_110_i1_BMEMORY_CTRLN_110_i0;
  wire signed [7:0] out_IIconvert_expr_FU_101_i0_fu_astarF_28877_29797;
  wire signed [7:0] out_IIdata_converter_FU_85_i0_fu_astarF_28877_29843;
  wire signed [7:0] out_IIdata_converter_FU_90_i0_fu_astarF_28877_29842;
  wire signed [7:0] out_IIdata_converter_FU_91_i0_fu_astarF_28877_29846;
  wire signed [7:0] out_IIdata_converter_FU_98_i0_fu_astarF_28877_29803;
  wire [7:0] out_IUdata_converter_FU_64_i0_fu_astarF_28877_30066;
  wire [4:0] out_IUdata_converter_FU_82_i0_fu_astarF_28877_30099;
  wire [7:0] out_IUdata_converter_FU_84_i0_fu_astarF_28877_30116;
  wire [7:0] out_IUdata_converter_FU_96_i0_fu_astarF_28877_30185;
  wire [7:0] out_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_0;
  wire [7:0] out_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_1;
  wire [4:0] out_MUX_143_reg_11_0_0_0;
  wire [31:0] out_MUX_144_reg_12_0_0_0;
  wire [31:0] out_MUX_146_reg_14_0_0_0;
  wire [7:0] out_MUX_148_reg_16_0_0_0;
  wire [7:0] out_MUX_150_reg_18_0_0_0;
  wire [4:0] out_MUX_153_reg_20_0_0_0;
  wire [7:0] out_MUX_155_reg_22_0_0_0;
  wire [7:0] out_MUX_158_reg_25_0_0_0;
  wire [7:0] out_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0;
  wire [7:0] out_MUX_179_reg_44_0_0_0;
  wire [12:0] out_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_0;
  wire [12:0] out_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_1;
  wire [12:0] out_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_1_0;
  wire [7:0] out_MUX_182_reg_47_0_0_0;
  wire [7:0] out_MUX_183_reg_48_0_0_0;
  wire [7:0] out_MUX_183_reg_48_0_0_1;
  wire [7:0] out_MUX_183_reg_48_0_1_0;
  wire [12:0] out_MUX_21_BMEMORY_CTRLN_110_i0_1_0_0;
  wire [12:0] out_MUX_21_BMEMORY_CTRLN_110_i0_1_0_1;
  wire [12:0] out_MUX_24_BMEMORY_CTRLN_110_i1_1_0_0;
  wire [7:0] out_MUX_47_PROXY_CTRLN_5_i0_0_0_0;
  wire [7:0] out_MUX_47_PROXY_CTRLN_5_i0_0_0_1;
  wire [12:0] out_MUX_48_PROXY_CTRLN_5_i0_1_0_0;
  wire [7:0] out_MUX_51_PROXY_CTRLN_6_i0_0_0_0;
  wire [12:0] out_MUX_52_PROXY_CTRLN_6_i0_1_0_0;
  wire [12:0] out_MUX_52_PROXY_CTRLN_6_i0_1_0_1;
  wire [7:0] out_MUX_8_ARRAY_1D_STD_BRAM_NN_2_i0_0_0_0;
  wire [12:0] out_MUX_9_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0;
  wire [7:0] out_PROXY_CTRLN_5_i0_PROXY_CTRLN_5_i0;
  wire [7:0] out_PROXY_CTRLN_6_i0_PROXY_CTRLN_6_i0;
  wire signed [8:0] out_UIdata_converter_FU_63_i0_fu_astarF_28877_29720;
  wire signed [5:0] out_UIdata_converter_FU_80_i0_fu_astarF_28877_29752;
  wire signed [8:0] out_UIdata_converter_FU_83_i0_fu_astarF_28877_29778;
  wire signed [8:0] out_UIdata_converter_FU_94_i0_fu_astarF_28877_29784;
  wire [12:0] out_UUdata_converter_FU_11_i0_fu_astarF_28877_29563;
  wire [12:0] out_UUdata_converter_FU_13_i0_fu_astarF_28877_29941;
  wire [12:0] out_UUdata_converter_FU_14_i0_fu_astarF_28877_29924;
  wire [31:0] out_UUdata_converter_FU_16_i0_fu_astarF_28877_29601;
  wire [31:0] out_UUdata_converter_FU_17_i0_fu_astarF_28877_29602;
  wire [31:0] out_UUdata_converter_FU_19_i0_fu_astarF_28877_30004;
  wire [31:0] out_UUdata_converter_FU_25_i0_fu_astarF_28877_30277;
  wire [31:0] out_UUdata_converter_FU_30_i0_fu_astarF_28877_29586;
  wire [31:0] out_UUdata_converter_FU_37_i0_fu_astarF_28877_29615;
  wire [4:0] out_UUdata_converter_FU_61_i0_fu_astarF_28877_29713;
  wire [7:0] out_UUdata_converter_FU_79_i0_fu_astarF_28877_29771;
  wire [13:0] out_UUdata_converter_FU_81_i0_fu_astarF_28877_30096;
  wire [4:0] out_UUdata_converter_FU_86_i0_fu_astarF_28877_29747;
  wire [13:0] out_UUdata_converter_FU_87_i0_fu_astarF_28877_30135;
  wire [7:0] out_UUdata_converter_FU_93_i0_fu_astarF_28877_29818;
  wire [13:0] out_UUdata_converter_FU_95_i0_fu_astarF_28877_30182;
  wire [13:0] out_UUdata_converter_FU_97_i0_fu_astarF_28877_30195;
  wire signed [8:0] out___builtin_abs_8_8_111_i0_fu_astarF_28877_29800;
  wire [12:0] out_addr_expr_FU_10_i0_fu_astarF_28877_29919;
  wire [12:0] out_addr_expr_FU_12_i0_fu_astarF_28877_29962;
  wire [31:0] out_addr_expr_FU_15_i0_fu_astarF_28877_29981;
  wire [31:0] out_addr_expr_FU_18_i0_fu_astarF_28877_30028;
  wire [31:0] out_addr_expr_FU_20_i0_fu_astarF_28877_30018;
  wire [31:0] out_addr_expr_FU_21_i0_fu_astarF_28877_30032;
  wire [31:0] out_addr_expr_FU_22_i0_fu_astarF_28877_30040;
  wire [31:0] out_addr_expr_FU_23_i0_fu_astarF_28877_30248;
  wire [31:0] out_addr_expr_FU_24_i0_fu_astarF_28877_30296;
  wire [31:0] out_addr_expr_FU_9_i0_fu_astarF_28877_29915;
  wire signed [7:0] out_cond_expr_FU_8_8_8_8_112_i0_fu_astarF_28877_29709;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [4:0] out_const_10;
  wire [6:0] out_const_11;
  wire [4:0] out_const_12;
  wire [12:0] out_const_13;
  wire [1:0] out_const_14;
  wire [2:0] out_const_15;
  wire [7:0] out_const_16;
  wire [11:0] out_const_17;
  wire [11:0] out_const_18;
  wire [12:0] out_const_19;
  wire [7:0] out_const_2;
  wire [11:0] out_const_20;
  wire [12:0] out_const_21;
  wire [9:0] out_const_22;
  wire [1:0] out_const_3;
  wire [4:0] out_const_4;
  wire [4:0] out_const_5;
  wire [7:0] out_const_6;
  wire out_const_7;
  wire [4:0] out_const_8;
  wire [4:0] out_const_9;
  wire [12:0] out_conv_in_port_a_32_13;
  wire [12:0] out_conv_out_UUdata_converter_FU_37_i0_fu_astarF_28877_29615_32_13;
  wire [12:0] out_conv_out_addr_expr_FU_9_i0_fu_astarF_28877_29915_32_13;
  wire [31:0] out_conv_out_const_13_13_32;
  wire [31:0] out_conv_out_const_17_12_32;
  wire [31:0] out_conv_out_const_18_12_32;
  wire [31:0] out_conv_out_const_19_13_32;
  wire [31:0] out_conv_out_const_20_12_32;
  wire [31:0] out_conv_out_const_21_13_32;
  wire [31:0] out_conv_out_const_22_10_32;
  wire [5:0] out_conv_out_const_4_5_6;
  wire [7:0] out_conv_out_i_assign_conn_obj_15_ASSIGN_SIGNED_FU_i_assign_0_I_2_8;
  wire [12:0] out_conv_out_reg_10_reg_10_32_13;
  wire [12:0] out_conv_out_reg_1_reg_1_32_13;
  wire [12:0] out_conv_out_reg_23_reg_23_32_13;
  wire [12:0] out_conv_out_reg_28_reg_28_15_13;
  wire [12:0] out_conv_out_reg_33_reg_33_15_13;
  wire [12:0] out_conv_out_reg_40_reg_40_15_13;
  wire [12:0] out_conv_out_reg_45_reg_45_32_13;
  wire [4:0] out_conv_out_reg_48_reg_48_8_5;
  wire [12:0] out_conv_out_reg_4_reg_4_32_13;
  wire [12:0] out_conv_out_reg_5_reg_5_32_13;
  wire [12:0] out_conv_out_reg_6_reg_6_32_13;
  wire [12:0] out_conv_out_reg_8_reg_8_32_13;
  wire [7:0] out_conv_out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_10_1_8;
  wire [7:0] out_conv_out_u_assign_conn_obj_13_ASSIGN_UNSIGNED_FU_u_assign_12_5_8;
  wire [4:0] out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_9_1_5;
  wire [31:0] out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_13_13_32;
  wire [4:0] out_conv_out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_14_1_5;
  wire [12:0] out_conv_out_ui_pointer_plus_expr_FU_16_0_16_146_i0_fu_astarF_28877_30204_15_13;
  wire [12:0] out_conv_out_ui_pointer_plus_expr_FU_16_16_16_147_i4_fu_astarF_28877_30122_15_13;
  wire [12:0] out_conv_out_ui_pointer_plus_expr_FU_16_16_16_147_i5_fu_astarF_28877_30144_15_13;
  wire [12:0] out_conv_out_ui_pointer_plus_expr_FU_32_32_32_149_i0_fu_astarF_28877_30043_32_13;
  wire [12:0] out_conv_out_ui_pointer_plus_expr_FU_32_32_32_149_i2_fu_astarF_28877_30261_32_13;
  wire out_ge_expr_FU_8_0_8_113_i0_fu_astarF_28877_30207;
  wire out_gt_expr_FU_8_0_8_114_i0_fu_astarF_28877_30411;
  wire out_gt_expr_FU_8_0_8_114_i1_fu_astarF_28877_30423;
  wire signed [1:0] out_i_assign_conn_obj_15_ASSIGN_SIGNED_FU_i_assign_0;
  wire [7:0] out_iu_conv_conn_obj_10_IUdata_converter_FU_iu_conv_1;
  wire [7:0] out_iu_conv_conn_obj_14_IUdata_converter_FU_iu_conv_2;
  wire [7:0] out_iu_conv_conn_obj_16_IUdata_converter_FU_iu_conv_3;
  wire [7:0] out_iu_conv_conn_obj_17_IUdata_converter_FU_iu_conv_4;
  wire [7:0] out_iu_conv_conn_obj_18_IUdata_converter_FU_iu_conv_5;
  wire [7:0] out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_6;
  wire [7:0] out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_7;
  wire [7:0] out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_8;
  wire out_le_expr_FU_8_8_8_115_i0_fu_astarF_28877_29693;
  wire out_lt_expr_FU_16_16_16_116_i0_fu_astarF_28877_30419;
  wire out_ne_expr_FU_8_0_8_117_i0_fu_astarF_28877_29711;
  wire out_ne_expr_FU_8_0_8_118_i0_fu_astarF_28877_30417;
  wire signed [7:0] out_plus_expr_FU_8_0_8_119_i0_fu_astarF_28877_29631;
  wire signed [7:0] out_plus_expr_FU_8_0_8_119_i1_fu_astarF_28877_29820;
  wire signed [7:0] out_plus_expr_FU_8_0_8_120_i0_fu_astarF_28877_29728;
  wire signed [7:0] out_plus_expr_FU_8_0_8_121_i0_fu_astarF_28877_29794;
  wire signed [7:0] out_plus_expr_FU_8_0_8_122_i0_fu_astarF_28877_29806;
  wire signed [7:0] out_plus_expr_FU_8_8_8_123_i0_fu_astarF_28877_29755;
  wire signed [7:0] out_plus_expr_FU_8_8_8_123_i1_fu_astarF_28877_29788;
  wire signed [8:0] out_plus_expr_FU_8_8_8_123_i2_fu_astarF_28877_29844;
  wire out_read_cond_FU_108_i0_fu_astarF_28877_29869;
  wire out_read_cond_FU_109_i0_fu_astarF_28877_29872;
  wire out_read_cond_FU_31_i0_fu_astarF_28877_29574;
  wire out_read_cond_FU_34_i0_fu_astarF_28877_29599;
  wire out_read_cond_FU_38_i0_fu_astarF_28877_29618;
  wire out_read_cond_FU_39_i0_fu_astarF_28877_29633;
  wire out_read_cond_FU_62_i0_fu_astarF_28877_29832;
  wire out_read_cond_FU_65_i0_fu_astarF_28877_29834;
  wire out_read_cond_FU_88_i0_fu_astarF_28877_29840;
  wire out_read_cond_FU_92_i0_fu_astarF_28877_29847;
  wire out_read_cond_FU_99_i0_fu_astarF_28877_29863;
  wire [31:0] out_reg_0_reg_0;
  wire [31:0] out_reg_10_reg_10;
  wire [4:0] out_reg_11_reg_11;
  wire [31:0] out_reg_12_reg_12;
  wire out_reg_13_reg_13;
  wire [31:0] out_reg_14_reg_14;
  wire out_reg_15_reg_15;
  wire [7:0] out_reg_16_reg_16;
  wire [7:0] out_reg_17_reg_17;
  wire [7:0] out_reg_18_reg_18;
  wire [4:0] out_reg_19_reg_19;
  wire [31:0] out_reg_1_reg_1;
  wire [4:0] out_reg_20_reg_20;
  wire out_reg_21_reg_21;
  wire [7:0] out_reg_22_reg_22;
  wire [31:0] out_reg_23_reg_23;
  wire out_reg_24_reg_24;
  wire [7:0] out_reg_25_reg_25;
  wire [13:0] out_reg_26_reg_26;
  wire [4:0] out_reg_27_reg_27;
  wire [14:0] out_reg_28_reg_28;
  wire [7:0] out_reg_29_reg_29;
  wire [12:0] out_reg_2_reg_2;
  wire [13:0] out_reg_30_reg_30;
  wire [7:0] out_reg_31_reg_31;
  wire [7:0] out_reg_32_reg_32;
  wire [14:0] out_reg_33_reg_33;
  wire [7:0] out_reg_34_reg_34;
  wire out_reg_35_reg_35;
  wire [7:0] out_reg_36_reg_36;
  wire [13:0] out_reg_37_reg_37;
  wire [7:0] out_reg_38_reg_38;
  wire [13:0] out_reg_39_reg_39;
  wire [12:0] out_reg_3_reg_3;
  wire [14:0] out_reg_40_reg_40;
  wire out_reg_41_reg_41;
  wire [7:0] out_reg_42_reg_42;
  wire [7:0] out_reg_43_reg_43;
  wire [7:0] out_reg_44_reg_44;
  wire [31:0] out_reg_45_reg_45;
  wire [7:0] out_reg_46_reg_46;
  wire [7:0] out_reg_47_reg_47;
  wire [7:0] out_reg_48_reg_48;
  wire [31:0] out_reg_4_reg_4;
  wire [31:0] out_reg_5_reg_5;
  wire [31:0] out_reg_6_reg_6;
  wire [31:0] out_reg_7_reg_7;
  wire [31:0] out_reg_8_reg_8;
  wire [31:0] out_reg_9_reg_9;
  wire [0:0] out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_10;
  wire [7:0] out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_11;
  wire [4:0] out_u_assign_conn_obj_13_ASSIGN_UNSIGNED_FU_u_assign_12;
  wire [0:0] out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_9;
  wire [12:0] out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_13;
  wire [0:0] out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_14;
  wire [0:0] out_ui_bit_and_expr_FU_1_1_1_124_i0_fu_astarF_28877_29689;
  wire [2:0] out_ui_bit_and_expr_FU_8_0_8_125_i0_fu_astarF_28877_30455;
  wire [2:0] out_ui_bit_and_expr_FU_8_0_8_125_i1_fu_astarF_28877_30471;
  wire [2:0] out_ui_bit_and_expr_FU_8_0_8_125_i2_fu_astarF_28877_30486;
  wire [2:0] out_ui_bit_and_expr_FU_8_0_8_126_i0_fu_astarF_28877_30506;
  wire [11:0] out_ui_bit_ior_concat_expr_FU_127_i0_fu_astarF_28877_30089;
  wire [11:0] out_ui_bit_ior_concat_expr_FU_127_i1_fu_astarF_28877_30176;
  wire [7:0] out_ui_bit_ior_concat_expr_FU_128_i0_fu_astarF_28877_30129;
  wire [11:0] out_ui_bit_ior_concat_expr_FU_129_i0_fu_astarF_28877_30242;
  wire [7:0] out_ui_cond_expr_FU_8_8_8_8_130_i0_fu_astarF_28877_29684;
  wire out_ui_eq_expr_FU_8_0_8_131_i0_fu_astarF_28877_30405;
  wire out_ui_eq_expr_FU_8_0_8_132_i0_fu_astarF_28877_30415;
  wire out_ui_le_expr_FU_8_0_8_133_i0_fu_astarF_28877_30421;
  wire [10:0] out_ui_lshift_expr_FU_16_0_16_134_i0_fu_astarF_28877_30086;
  wire [10:0] out_ui_lshift_expr_FU_16_0_16_134_i1_fu_astarF_28877_30173;
  wire [11:0] out_ui_lshift_expr_FU_16_0_16_134_i2_fu_astarF_28877_30450;
  wire [11:0] out_ui_lshift_expr_FU_16_0_16_134_i3_fu_astarF_28877_30483;
  wire [12:0] out_ui_lshift_expr_FU_16_0_16_135_i0_fu_astarF_28877_30093;
  wire [8:0] out_ui_lshift_expr_FU_16_0_16_135_i1_fu_astarF_28877_30132;
  wire [12:0] out_ui_lshift_expr_FU_16_0_16_135_i2_fu_astarF_28877_30179;
  wire [10:0] out_ui_lshift_expr_FU_16_0_16_136_i0_fu_astarF_28877_30239;
  wire [11:0] out_ui_lshift_expr_FU_16_0_16_136_i1_fu_astarF_28877_30501;
  wire [12:0] out_ui_lshift_expr_FU_16_0_16_137_i0_fu_astarF_28877_30245;
  wire [7:0] out_ui_lshift_expr_FU_8_0_8_138_i0_fu_astarF_28877_30126;
  wire [7:0] out_ui_lshift_expr_FU_8_0_8_138_i1_fu_astarF_28877_30468;
  wire out_ui_ne_expr_FU_32_32_32_139_i0_fu_astarF_28877_30409;
  wire out_ui_ne_expr_FU_8_0_8_140_i0_fu_astarF_28877_30407;
  wire out_ui_ne_expr_FU_8_0_8_140_i1_fu_astarF_28877_30413;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_141_i0_fu_astarF_28877_29596;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_142_i0_fu_astarF_28877_29617;
  wire [4:0] out_ui_plus_expr_FU_8_0_8_143_i0_fu_astarF_28877_29593;
  wire [4:0] out_ui_plus_expr_FU_8_0_8_143_i1_fu_astarF_28877_29705;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_144_i0_fu_astarF_28877_29825;
  wire [8:0] out_ui_plus_expr_FU_8_8_8_145_i0_fu_astarF_28877_30446;
  wire [4:0] out_ui_plus_expr_FU_8_8_8_145_i1_fu_astarF_28877_30465;
  wire [8:0] out_ui_plus_expr_FU_8_8_8_145_i2_fu_astarF_28877_30480;
  wire [8:0] out_ui_plus_expr_FU_8_8_8_145_i3_fu_astarF_28877_30497;
  wire [14:0] out_ui_pointer_plus_expr_FU_16_0_16_146_i0_fu_astarF_28877_30204;
  wire [13:0] out_ui_pointer_plus_expr_FU_16_16_16_147_i0_fu_astarF_28877_29734;
  wire [13:0] out_ui_pointer_plus_expr_FU_16_16_16_147_i1_fu_astarF_28877_29764;
  wire [13:0] out_ui_pointer_plus_expr_FU_16_16_16_147_i2_fu_astarF_28877_29812;
  wire [14:0] out_ui_pointer_plus_expr_FU_16_16_16_147_i3_fu_astarF_28877_30105;
  wire [14:0] out_ui_pointer_plus_expr_FU_16_16_16_147_i4_fu_astarF_28877_30122;
  wire [14:0] out_ui_pointer_plus_expr_FU_16_16_16_147_i5_fu_astarF_28877_30144;
  wire [14:0] out_ui_pointer_plus_expr_FU_16_16_16_147_i6_fu_astarF_28877_30191;
  wire [13:0] out_ui_pointer_plus_expr_FU_16_16_16_147_i7_fu_astarF_28877_30227;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_0_32_148_i0_fu_astarF_28877_29989;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_149_i0_fu_astarF_28877_30043;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_149_i1_fu_astarF_28877_30072;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_149_i2_fu_astarF_28877_30261;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_149_i3_fu_astarF_28877_30286;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_150_i0_fu_astarF_28877_30439;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_150_i1_fu_astarF_28877_30475;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_151_i0_fu_astarF_28877_30490;
  wire [4:0] out_ui_rshift_expr_FU_8_0_8_152_i0_fu_astarF_28877_30443;
  wire [4:0] out_ui_rshift_expr_FU_8_0_8_152_i1_fu_astarF_28877_30460;
  wire [1:0] out_ui_rshift_expr_FU_8_0_8_152_i2_fu_astarF_28877_30463;
  wire [4:0] out_ui_rshift_expr_FU_8_0_8_152_i3_fu_astarF_28877_30478;
  wire [4:0] out_ui_rshift_expr_FU_8_0_8_153_i0_fu_astarF_28877_30494;
  wire [7:0] out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_15;
  wire [7:0] out_vb_assign_conn_obj_19_ASSIGN_VECTOR_BOOL_FU_vb_assign_16;
  wire [7:0] out_vb_assign_conn_obj_20_ASSIGN_VECTOR_BOOL_FU_vb_assign_17;
  wire [7:0] out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_18;
  wire [7:0] out_vb_assign_conn_obj_6_ASSIGN_VECTOR_BOOL_FU_vb_assign_19;
  wire [7:0] out_vb_assign_conn_obj_9_ASSIGN_VECTOR_BOOL_FU_vb_assign_20;
  wire [63:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [25:0] sig_in_bus_mergerMout_addr_ram1_0;
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
  wire [63:0] sig_in_bus_mergerproxy_in1_288617_0;
  wire [63:0] sig_in_bus_mergerproxy_in1_288688_0;
  wire [25:0] sig_in_bus_mergerproxy_in2_288619_0;
  wire [25:0] sig_in_bus_mergerproxy_in2_2886810_0;
  wire [11:0] sig_in_bus_mergerproxy_in3_2886111_0;
  wire [11:0] sig_in_bus_mergerproxy_in3_2886812_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886113_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886814_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886115_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886816_0;
  wire [63:0] sig_in_vector_bus_mergerMout_Wdata_ram0_0;
  wire [25:0] sig_in_vector_bus_mergerMout_addr_ram1_0;
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
  wire [63:0] sig_in_vector_bus_mergerproxy_in1_288617_0;
  wire [63:0] sig_in_vector_bus_mergerproxy_in1_288688_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in2_288619_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in2_2886810_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in3_2886111_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in3_2886812_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886113_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886814_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886115_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886816_0;
  wire [63:0] sig_out_bus_mergerMout_Wdata_ram0_;
  wire [25:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [11:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire [1:0] sig_out_bus_mergerMout_oe_ram3_;
  wire [1:0] sig_out_bus_mergerMout_we_ram4_;
  wire [1:0] sig_out_bus_mergerSout_DataRdy5_;
  wire [63:0] sig_out_bus_mergerSout_Rdata_ram6_;
  wire [63:0] sig_out_bus_mergerproxy_in1_288617_;
  wire [63:0] sig_out_bus_mergerproxy_in1_288688_;
  wire [25:0] sig_out_bus_mergerproxy_in2_288619_;
  wire [25:0] sig_out_bus_mergerproxy_in2_2886810_;
  wire [11:0] sig_out_bus_mergerproxy_in3_2886111_;
  wire [11:0] sig_out_bus_mergerproxy_in3_2886812_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886113_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886814_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886115_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886816_;
  
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) ASSIGN_SIGNED_FU_i_assign_0 (.out1(out_i_assign_conn_obj_15_ASSIGN_SIGNED_FU_i_assign_0), .in1(out_const_3));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_10 (.out1(out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_10), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_UNSIGNED_FU_u_assign_11 (.out1(out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_11), .in1(out_ui_plus_expr_FU_8_0_8_144_i0_fu_astarF_28877_29825));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(5), .BITSIZE_out1(5)) ASSIGN_UNSIGNED_FU_u_assign_12 (.out1(out_u_assign_conn_obj_13_ASSIGN_UNSIGNED_FU_u_assign_12), .in1(out_conv_out_reg_48_reg_48_8_5));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(13), .BITSIZE_out1(13)) ASSIGN_UNSIGNED_FU_u_assign_13 (.out1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_13), .in1(out_UUdata_converter_FU_11_i0_fu_astarF_28877_29563));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_14 (.out1(out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_14), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_9 (.out1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_9), .in1(out_const_0));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_15 (.out1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_15), .in1(out_const_1));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_16 (.out1(out_vb_assign_conn_obj_19_ASSIGN_VECTOR_BOOL_FU_vb_assign_16), .in1(out_ARRAY_1D_STD_BRAM_NN_1_i0_array_28864_0));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_17 (.out1(out_vb_assign_conn_obj_20_ASSIGN_VECTOR_BOOL_FU_vb_assign_17), .in1(out_ui_plus_expr_FU_8_0_8_144_i0_fu_astarF_28877_29825));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_18 (.out1(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_18), .in1(out_const_16));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_19 (.out1(out_vb_assign_conn_obj_6_ASSIGN_VECTOR_BOOL_FU_vb_assign_19), .in1(out_const_2));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_20 (.out1(out_vb_assign_conn_obj_9_ASSIGN_VECTOR_BOOL_FU_vb_assign_20), .in1(out_reg_22_reg_22));
  BMEMORY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_Min_oe_ram(1), .PORTSIZE_Min_oe_ram(2), .BITSIZE_Min_we_ram(1), .PORTSIZE_Min_we_ram(2), .BITSIZE_Mout_oe_ram(1), .PORTSIZE_Mout_oe_ram(2), .BITSIZE_Mout_we_ram(1), .PORTSIZE_Mout_we_ram(2), .BITSIZE_M_DataRdy(1), .PORTSIZE_M_DataRdy(2), .BITSIZE_Min_addr_ram(13), .PORTSIZE_Min_addr_ram(2), .BITSIZE_Mout_addr_ram(13), .PORTSIZE_Mout_addr_ram(2), .BITSIZE_M_Rdata_ram(32), .PORTSIZE_M_Rdata_ram(2), .BITSIZE_Min_Wdata_ram(32), .PORTSIZE_Min_Wdata_ram(2), .BITSIZE_Mout_Wdata_ram(32), .PORTSIZE_Mout_Wdata_ram(2), .BITSIZE_Min_data_ram_size(6), .PORTSIZE_Min_data_ram_size(2), .BITSIZE_Mout_data_ram_size(6), .PORTSIZE_Mout_data_ram_size(2)) BMEMORY_CTRLN_110_i0 (.out1({out_BMEMORY_CTRLN_110_i1_BMEMORY_CTRLN_110_i0, out_BMEMORY_CTRLN_110_i0_BMEMORY_CTRLN_110_i0}), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .in1({8'b00000000, out_iu_conv_conn_obj_14_IUdata_converter_FU_iu_conv_2}), .in2({out_MUX_24_BMEMORY_CTRLN_110_i1_1_0_0, out_MUX_21_BMEMORY_CTRLN_110_i0_1_0_1}), .in3({out_conv_out_const_4_5_6, out_conv_out_const_4_5_6}), .in4({out_const_7, out_const_7}), .sel_LOAD({fuselector_BMEMORY_CTRLN_110_i1_LOAD, fuselector_BMEMORY_CTRLN_110_i0_LOAD}), .sel_STORE({fuselector_BMEMORY_CTRLN_110_i1_STORE, fuselector_BMEMORY_CTRLN_110_i0_STORE}), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .M_Rdata_ram(M_Rdata_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .M_DataRdy(M_DataRdy));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_10_IUdata_converter_FU_iu_conv_1), .in1(out_reg_17_reg_17));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_2 (.out1(out_iu_conv_conn_obj_14_IUdata_converter_FU_iu_conv_2), .in1(out_reg_34_reg_34));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_3 (.out1(out_iu_conv_conn_obj_16_IUdata_converter_FU_iu_conv_3), .in1(out_plus_expr_FU_8_8_8_123_i1_fu_astarF_28877_29788));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_4 (.out1(out_iu_conv_conn_obj_17_IUdata_converter_FU_iu_conv_4), .in1(out_plus_expr_FU_8_8_8_123_i1_fu_astarF_28877_29788));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_5 (.out1(out_iu_conv_conn_obj_18_IUdata_converter_FU_iu_conv_5), .in1(out_reg_46_reg_46));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_6 (.out1(out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_6), .in1(out_const_1));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_7 (.out1(out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_7), .in1(out_const_6));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_8 (.out1(out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_8), .in1(out_reg_16_reg_16));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_0 (.out1(out_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_0), .sel(selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_0), .in1(out_iu_conv_conn_obj_10_IUdata_converter_FU_iu_conv_1), .in2(out_iu_conv_conn_obj_18_IUdata_converter_FU_iu_conv_5));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_1 (.out1(out_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_1), .sel(selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_1), .in1(out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_8), .in2(out_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_0));
  MUX_GATE #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(5)) MUX_143_reg_11_0_0_0 (.out1(out_MUX_143_reg_11_0_0_0), .sel(selector_MUX_143_reg_11_0_0_0), .in1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_9_1_5), .in2(out_ui_plus_expr_FU_8_0_8_143_i0_fu_astarF_28877_29593));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_144_reg_12_0_0_0 (.out1(out_MUX_144_reg_12_0_0_0), .sel(selector_MUX_144_reg_12_0_0_0), .in1(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_13_13_32), .in2(out_ui_plus_expr_FU_32_0_32_141_i0_fu_astarF_28877_29596));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_146_reg_14_0_0_0 (.out1(out_MUX_146_reg_14_0_0_0), .sel(selector_MUX_146_reg_14_0_0_0), .in1(out_UUdata_converter_FU_16_i0_fu_astarF_28877_29601), .in2(out_ui_plus_expr_FU_32_0_32_142_i0_fu_astarF_28877_29617));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_148_reg_16_0_0_0 (.out1(out_MUX_148_reg_16_0_0_0), .sel(selector_MUX_148_reg_16_0_0_0), .in1(out_ARRAY_1D_STD_BRAM_NN_3_i0_array_28866_0), .in2(out_plus_expr_FU_8_0_8_119_i0_fu_astarF_28877_29631));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_150_reg_18_0_0_0 (.out1(out_MUX_150_reg_18_0_0_0), .sel(selector_MUX_150_reg_18_0_0_0), .in1(out_const_6), .in2(out_cond_expr_FU_8_8_8_8_112_i0_fu_astarF_28877_29709));
  MUX_GATE #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(5)) MUX_153_reg_20_0_0_0 (.out1(out_MUX_153_reg_20_0_0_0), .sel(selector_MUX_153_reg_20_0_0_0), .in1(out_conv_out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_14_1_5), .in2(out_ui_plus_expr_FU_8_0_8_143_i1_fu_astarF_28877_29705));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_155_reg_22_0_0_0 (.out1(out_MUX_155_reg_22_0_0_0), .sel(selector_MUX_155_reg_22_0_0_0), .in1(out_ARRAY_1D_STD_BRAM_NN_1_i0_array_28864_0), .in2(out_ui_cond_expr_FU_8_8_8_8_130_i0_fu_astarF_28877_29684));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_158_reg_25_0_0_0 (.out1(out_MUX_158_reg_25_0_0_0), .sel(selector_MUX_158_reg_25_0_0_0), .in1(out_reg_47_reg_47), .in2(out_ARRAY_1D_STD_BRAM_NN_1_i0_array_28864_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0 (.out1(out_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0), .sel(selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0), .in1(out_iu_conv_conn_obj_17_IUdata_converter_FU_iu_conv_4), .in2(out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_6));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_179_reg_44_0_0_0 (.out1(out_MUX_179_reg_44_0_0_0), .sel(selector_MUX_179_reg_44_0_0_0), .in1(out_conv_out_i_assign_conn_obj_15_ASSIGN_SIGNED_FU_i_assign_0_I_2_8), .in2(out_plus_expr_FU_8_0_8_121_i0_fu_astarF_28877_29794));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_0 (.out1(out_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_0), .sel(selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_0), .in1(out_conv_out_reg_4_reg_4_32_13), .in2(out_conv_out_reg_23_reg_23_32_13));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_1 (.out1(out_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_1), .sel(selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_1), .in1(out_conv_out_ui_pointer_plus_expr_FU_32_32_32_149_i0_fu_astarF_28877_30043_32_13), .in2(out_conv_out_ui_pointer_plus_expr_FU_32_32_32_149_i2_fu_astarF_28877_30261_32_13));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_1_0 (.out1(out_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_1_0), .sel(selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_1_0), .in1(out_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_0), .in2(out_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_1));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_182_reg_47_0_0_0 (.out1(out_MUX_182_reg_47_0_0_0), .sel(selector_MUX_182_reg_47_0_0_0), .in1(out_reg_25_reg_25), .in2(out_ARRAY_1D_STD_BRAM_NN_1_i0_array_28864_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_183_reg_48_0_0_0 (.out1(out_MUX_183_reg_48_0_0_0), .sel(selector_MUX_183_reg_48_0_0_0), .in1(out_reg_36_reg_36), .in2(out_conv_out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_10_1_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_183_reg_48_0_0_1 (.out1(out_MUX_183_reg_48_0_0_1), .sel(selector_MUX_183_reg_48_0_0_1), .in1(out_u_assign_conn_obj_12_ASSIGN_UNSIGNED_FU_u_assign_11), .in2(out_conv_out_u_assign_conn_obj_13_ASSIGN_UNSIGNED_FU_u_assign_12_5_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_183_reg_48_0_1_0 (.out1(out_MUX_183_reg_48_0_1_0), .sel(selector_MUX_183_reg_48_0_1_0), .in1(out_MUX_183_reg_48_0_0_0), .in2(out_MUX_183_reg_48_0_0_1));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_21_BMEMORY_CTRLN_110_i0_1_0_0 (.out1(out_MUX_21_BMEMORY_CTRLN_110_i0_1_0_0), .sel(selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_0), .in1(out_conv_out_reg_40_reg_40_15_13), .in2(out_conv_out_reg_33_reg_33_15_13));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_21_BMEMORY_CTRLN_110_i0_1_0_1 (.out1(out_MUX_21_BMEMORY_CTRLN_110_i0_1_0_1), .sel(selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_1), .in1(out_conv_out_ui_pointer_plus_expr_FU_16_16_16_147_i4_fu_astarF_28877_30122_15_13), .in2(out_MUX_21_BMEMORY_CTRLN_110_i0_1_0_0));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_24_BMEMORY_CTRLN_110_i1_1_0_0 (.out1(out_MUX_24_BMEMORY_CTRLN_110_i1_1_0_0), .sel(selector_MUX_24_BMEMORY_CTRLN_110_i1_1_0_0), .in1(out_conv_out_reg_28_reg_28_15_13), .in2(out_conv_out_ui_pointer_plus_expr_FU_16_16_16_147_i5_fu_astarF_28877_30144_15_13));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_47_PROXY_CTRLN_5_i0_0_0_0 (.out1(out_MUX_47_PROXY_CTRLN_5_i0_0_0_0), .sel(selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0), .in1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_15), .in2(out_vb_assign_conn_obj_20_ASSIGN_VECTOR_BOOL_FU_vb_assign_17));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_47_PROXY_CTRLN_5_i0_0_0_1 (.out1(out_MUX_47_PROXY_CTRLN_5_i0_0_0_1), .sel(selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1), .in1(out_vb_assign_conn_obj_6_ASSIGN_VECTOR_BOOL_FU_vb_assign_19), .in2(out_MUX_47_PROXY_CTRLN_5_i0_0_0_0));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_48_PROXY_CTRLN_5_i0_1_0_0 (.out1(out_MUX_48_PROXY_CTRLN_5_i0_1_0_0), .sel(selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0), .in1(out_conv_out_reg_1_reg_1_32_13), .in2(out_conv_out_addr_expr_FU_9_i0_fu_astarF_28877_29915_32_13));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_51_PROXY_CTRLN_6_i0_0_0_0 (.out1(out_MUX_51_PROXY_CTRLN_6_i0_0_0_0), .sel(selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0), .in1(out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_6), .in2(out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_7));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_52_PROXY_CTRLN_6_i0_1_0_0 (.out1(out_MUX_52_PROXY_CTRLN_6_i0_1_0_0), .sel(selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0), .in1(out_reg_2_reg_2), .in2(out_conv_out_reg_10_reg_10_32_13));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_52_PROXY_CTRLN_6_i0_1_0_1 (.out1(out_MUX_52_PROXY_CTRLN_6_i0_1_0_1), .sel(selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1), .in1(out_conv_out_ui_pointer_plus_expr_FU_16_0_16_146_i0_fu_astarF_28877_30204_15_13), .in2(out_MUX_52_PROXY_CTRLN_6_i0_1_0_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_8_ARRAY_1D_STD_BRAM_NN_2_i0_0_0_0 (.out1(out_MUX_8_ARRAY_1D_STD_BRAM_NN_2_i0_0_0_0), .sel(selector_MUX_8_ARRAY_1D_STD_BRAM_NN_2_i0_0_0_0), .in1(out_vb_assign_conn_obj_19_ASSIGN_VECTOR_BOOL_FU_vb_assign_16), .in2(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_18));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_9_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0 (.out1(out_MUX_9_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0), .sel(selector_MUX_9_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0), .in1(out_conv_out_reg_45_reg_45_32_13), .in2(out_conv_out_UUdata_converter_FU_37_i0_fu_astarF_28877_29615_32_13));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_5_i0 (.out1({null_out_signal_PROXY_CTRLN_5_i0_out1_1, out_PROXY_CTRLN_5_i0_PROXY_CTRLN_5_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288617_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288619_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886111_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886113_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886115_0), .in1({8'b00000000, out_MUX_47_PROXY_CTRLN_5_i0_0_0_1}), .in2({13'b0000000000000, out_MUX_48_PROXY_CTRLN_5_i0_1_0_0}), .in3({6'b000000, out_conv_out_const_4_5_6}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_5_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_5_i0_STORE}), .proxy_out1(proxy_out1_28861));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_6_i0 (.out1({null_out_signal_PROXY_CTRLN_6_i0_out1_1, out_PROXY_CTRLN_6_i0_PROXY_CTRLN_6_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288688_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2886810_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886812_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886814_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886816_0), .in1({8'b00000000, out_MUX_51_PROXY_CTRLN_6_i0_0_0_0}), .in2({13'b0000000000000, out_MUX_52_PROXY_CTRLN_6_i0_1_0_1}), .in3({6'b000000, out_conv_out_const_4_5_6}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_6_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_6_i0_STORE}), .proxy_out1(proxy_out1_28868));
  ARRAY_1D_STD_BRAM_NN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(13), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(32), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(32), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(32), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(6), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file_a("array_ref_28862.mem"), .MEMORY_INIT_file_b("0_array_ref_28862.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28862_28877), .address_space_rangesize(512), .BUS_PIPELINED(1), .BRAM_BITSIZE(16), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) array_28862_0 (.out1({null_out_signal_array_28862_0_out1_1, null_out_signal_array_28862_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_0), .proxy_out1({null_out_signal_array_28862_0_proxy_out1_1, null_out_signal_array_28862_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_iu_conv_conn_obj_16_IUdata_converter_FU_iu_conv_3}), .in2({13'b0000000000000, out_conv_out_reg_8_reg_8_32_13}), .in3({6'b000000, out_conv_out_const_4_5_6}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .proxy_in2({13'b0000000000000, 13'b0000000000000}), .proxy_in3({6'b000000, 6'b000000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(13), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(32), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(32), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(32), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(6), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file_a("array_ref_28864.mem"), .MEMORY_INIT_file_b("0_array_ref_28864.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28864_28877), .address_space_rangesize(512), .BUS_PIPELINED(1), .BRAM_BITSIZE(16), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) array_28864_0 (.out1({null_out_signal_array_28864_0_out1_1, out_ARRAY_1D_STD_BRAM_NN_1_i0_array_28864_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_1), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_1), .proxy_out1({null_out_signal_array_28864_0_proxy_out1_1, null_out_signal_array_28864_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_vb_assign_conn_obj_9_ASSIGN_VECTOR_BOOL_FU_vb_assign_20}), .in2({13'b0000000000000, out_conv_out_reg_6_reg_6_32_13}), .in3({6'b000000, out_conv_out_const_4_5_6}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .proxy_in2({13'b0000000000000, 13'b0000000000000}), .proxy_in3({6'b000000, 6'b000000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(13), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(32), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(32), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(32), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(6), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file_a("array_ref_28865.mem"), .MEMORY_INIT_file_b("0_array_ref_28865.mem"), .n_elements(18), .data_size(8), .address_space_begin(MEM_var_28865_28877), .address_space_rangesize(512), .BUS_PIPELINED(1), .BRAM_BITSIZE(16), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) array_28865_0 (.out1({null_out_signal_array_28865_0_out1_1, null_out_signal_array_28865_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_2), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_2), .proxy_out1({null_out_signal_array_28865_0_proxy_out1_1, null_out_signal_array_28865_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_MUX_8_ARRAY_1D_STD_BRAM_NN_2_i0_0_0_0}), .in2({13'b0000000000000, out_MUX_9_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0}), .in3({6'b000000, out_conv_out_const_4_5_6}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .proxy_in2({13'b0000000000000, 13'b0000000000000}), .proxy_in3({6'b000000, 6'b000000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(13), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(32), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(32), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(32), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(6), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file_a("array_ref_28866.mem"), .MEMORY_INIT_file_b("0_array_ref_28866.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28866_28877), .address_space_rangesize(512), .BUS_PIPELINED(1), .BRAM_BITSIZE(16), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) array_28866_0 (.out1({null_out_signal_array_28866_0_out1_1, out_ARRAY_1D_STD_BRAM_NN_3_i0_array_28866_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_3), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_3), .proxy_out1({null_out_signal_array_28866_0_proxy_out1_1, null_out_signal_array_28866_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_1}), .in2({13'b0000000000000, out_conv_out_reg_5_reg_5_32_13}), .in3({6'b000000, out_conv_out_const_4_5_6}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .proxy_in2({13'b0000000000000, 13'b0000000000000}), .proxy_in3({6'b000000, 6'b000000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(13), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(32), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(32), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(32), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(6), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file_a("array_ref_28867.mem"), .MEMORY_INIT_file_b("0_array_ref_28867.mem"), .n_elements(18), .data_size(8), .address_space_begin(MEM_var_28867_28877), .address_space_rangesize(512), .BUS_PIPELINED(1), .BRAM_BITSIZE(16), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) array_28867_0 (.out1({null_out_signal_array_28867_0_out1_1, out_ARRAY_1D_STD_BRAM_NN_4_i0_array_28867_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_4), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_4), .proxy_out1({null_out_signal_array_28867_0_proxy_out1_1, null_out_signal_array_28867_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0}), .in2({13'b0000000000000, out_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_1_0}), .in3({6'b000000, out_conv_out_const_4_5_6}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .proxy_in2({13'b0000000000000, 13'b0000000000000}), .proxy_in3({6'b000000, 6'b000000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(1), .BITSIZE_out1(12)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(5), .BITSIZE_out1(2)) bus_mergerSout_DataRdy5_ (.out1(sig_out_bus_mergerSout_DataRdy5_), .in1({sig_in_bus_mergerSout_DataRdy5_4, sig_in_bus_mergerSout_DataRdy5_3, sig_in_bus_mergerSout_DataRdy5_2, sig_in_bus_mergerSout_DataRdy5_1, sig_in_bus_mergerSout_DataRdy5_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(5), .BITSIZE_out1(64)) bus_mergerSout_Rdata_ram6_ (.out1(sig_out_bus_mergerSout_Rdata_ram6_), .in1({sig_in_bus_mergerSout_Rdata_ram6_4, sig_in_bus_mergerSout_Rdata_ram6_3, sig_in_bus_mergerSout_Rdata_ram6_2, sig_in_bus_mergerSout_Rdata_ram6_1, sig_in_bus_mergerSout_Rdata_ram6_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerproxy_in1_288617_ (.out1(sig_out_bus_mergerproxy_in1_288617_), .in1({sig_in_bus_mergerproxy_in1_288617_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerproxy_in1_288688_ (.out1(sig_out_bus_mergerproxy_in1_288688_), .in1({sig_in_bus_mergerproxy_in1_288688_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in2_288619_ (.out1(sig_out_bus_mergerproxy_in2_288619_), .in1({sig_in_bus_mergerproxy_in2_288619_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in2_2886810_ (.out1(sig_out_bus_mergerproxy_in2_2886810_), .in1({sig_in_bus_mergerproxy_in2_2886810_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(1), .BITSIZE_out1(12)) bus_mergerproxy_in3_2886111_ (.out1(sig_out_bus_mergerproxy_in3_2886111_), .in1({sig_in_bus_mergerproxy_in3_2886111_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(1), .BITSIZE_out1(12)) bus_mergerproxy_in3_2886812_ (.out1(sig_out_bus_mergerproxy_in3_2886812_), .in1({sig_in_bus_mergerproxy_in3_2886812_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886113_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886113_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886113_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886814_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886814_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886814_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886115_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886115_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886115_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886816_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886816_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886816_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(5), .value(5'b10011)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(7), .value(7'b1010100)) const_11 (.out1(out_const_11));
  constant_value #(.BITSIZE_out1(5), .value(5'b10111)) const_12 (.out1(out_const_12));
  constant_value #(.BITSIZE_out1(13), .value(MEM_var_28868_28879)) const_13 (.out1(out_const_13));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_14 (.out1(out_const_14));
  constant_value #(.BITSIZE_out1(3), .value(3'b111)) const_15 (.out1(out_const_15));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_16 (.out1(out_const_16));
  constant_value #(.BITSIZE_out1(12), .value(MEM_var_28862_28877)) const_17 (.out1(out_const_17));
  constant_value #(.BITSIZE_out1(12), .value(MEM_var_28864_28877)) const_18 (.out1(out_const_18));
  constant_value #(.BITSIZE_out1(13), .value(MEM_var_28865_28877)) const_19 (.out1(out_const_19));
  constant_value #(.BITSIZE_out1(8), .value(8'b00010010)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(12), .value(MEM_var_28866_28877)) const_20 (.out1(out_const_20));
  constant_value #(.BITSIZE_out1(13), .value(MEM_var_28867_28877)) const_21 (.out1(out_const_21));
  constant_value #(.BITSIZE_out1(10), .value(MEM_var_28861_28879)) const_22 (.out1(out_const_22));
  constant_value #(.BITSIZE_out1(2), .value(2'b01)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(5), .value(5'b01001)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(8), .value(8'b01111111)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(5), .value(5'b10001)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(5), .value(5'b10010)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_in_port_a_32_13 (.out1(out_conv_in_port_a_32_13), .in1(in_port_a));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_UUdata_converter_FU_37_i0_fu_astarF_28877_29615_32_13 (.out1(out_conv_out_UUdata_converter_FU_37_i0_fu_astarF_28877_29615_32_13), .in1(out_UUdata_converter_FU_37_i0_fu_astarF_28877_29615));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_addr_expr_FU_9_i0_fu_astarF_28877_29915_32_13 (.out1(out_conv_out_addr_expr_FU_9_i0_fu_astarF_28877_29915_32_13), .in1(out_addr_expr_FU_9_i0_fu_astarF_28877_29915));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_const_13_13_32 (.out1(out_conv_out_const_13_13_32), .in1(out_const_13));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(32)) conv_out_const_17_12_32 (.out1(out_conv_out_const_17_12_32), .in1(out_const_17));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(32)) conv_out_const_18_12_32 (.out1(out_conv_out_const_18_12_32), .in1(out_const_18));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_const_19_13_32 (.out1(out_conv_out_const_19_13_32), .in1(out_const_19));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(32)) conv_out_const_20_12_32 (.out1(out_conv_out_const_20_12_32), .in1(out_const_20));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_const_21_13_32 (.out1(out_conv_out_const_21_13_32), .in1(out_const_21));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(32)) conv_out_const_22_10_32 (.out1(out_conv_out_const_22_10_32), .in1(out_const_22));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(6)) conv_out_const_4_5_6 (.out1(out_conv_out_const_4_5_6), .in1(out_const_4));
  IUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(8)) conv_out_i_assign_conn_obj_15_ASSIGN_SIGNED_FU_i_assign_0_I_2_8 (.out1(out_conv_out_i_assign_conn_obj_15_ASSIGN_SIGNED_FU_i_assign_0_I_2_8), .in1(out_i_assign_conn_obj_15_ASSIGN_SIGNED_FU_i_assign_0));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_10_reg_10_32_13 (.out1(out_conv_out_reg_10_reg_10_32_13), .in1(out_reg_10_reg_10));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_1_reg_1_32_13 (.out1(out_conv_out_reg_1_reg_1_32_13), .in1(out_reg_1_reg_1));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_23_reg_23_32_13 (.out1(out_conv_out_reg_23_reg_23_32_13), .in1(out_reg_23_reg_23));
  UUdata_converter_FU #(.BITSIZE_in1(15), .BITSIZE_out1(13)) conv_out_reg_28_reg_28_15_13 (.out1(out_conv_out_reg_28_reg_28_15_13), .in1(out_reg_28_reg_28));
  UUdata_converter_FU #(.BITSIZE_in1(15), .BITSIZE_out1(13)) conv_out_reg_33_reg_33_15_13 (.out1(out_conv_out_reg_33_reg_33_15_13), .in1(out_reg_33_reg_33));
  UUdata_converter_FU #(.BITSIZE_in1(15), .BITSIZE_out1(13)) conv_out_reg_40_reg_40_15_13 (.out1(out_conv_out_reg_40_reg_40_15_13), .in1(out_reg_40_reg_40));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_45_reg_45_32_13 (.out1(out_conv_out_reg_45_reg_45_32_13), .in1(out_reg_45_reg_45));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(5)) conv_out_reg_48_reg_48_8_5 (.out1(out_conv_out_reg_48_reg_48_8_5), .in1(out_reg_48_reg_48));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_4_reg_4_32_13 (.out1(out_conv_out_reg_4_reg_4_32_13), .in1(out_reg_4_reg_4));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_5_reg_5_32_13 (.out1(out_conv_out_reg_5_reg_5_32_13), .in1(out_reg_5_reg_5));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_6_reg_6_32_13 (.out1(out_conv_out_reg_6_reg_6_32_13), .in1(out_reg_6_reg_6));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_8_reg_8_32_13 (.out1(out_conv_out_reg_8_reg_8_32_13), .in1(out_reg_8_reg_8));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_10_1_8 (.out1(out_conv_out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_10_1_8), .in1(out_u_assign_conn_obj_11_ASSIGN_UNSIGNED_FU_u_assign_10));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_13_ASSIGN_UNSIGNED_FU_u_assign_12_5_8 (.out1(out_conv_out_u_assign_conn_obj_13_ASSIGN_UNSIGNED_FU_u_assign_12_5_8), .in1(out_u_assign_conn_obj_13_ASSIGN_UNSIGNED_FU_u_assign_12));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(5)) conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_9_1_5 (.out1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_9_1_5), .in1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_9));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_13_13_32 (.out1(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_13_13_32), .in1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_13));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(5)) conv_out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_14_1_5 (.out1(out_conv_out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_14_1_5), .in1(out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_14));
  UUdata_converter_FU #(.BITSIZE_in1(15), .BITSIZE_out1(13)) conv_out_ui_pointer_plus_expr_FU_16_0_16_146_i0_fu_astarF_28877_30204_15_13 (.out1(out_conv_out_ui_pointer_plus_expr_FU_16_0_16_146_i0_fu_astarF_28877_30204_15_13), .in1(out_ui_pointer_plus_expr_FU_16_0_16_146_i0_fu_astarF_28877_30204));
  UUdata_converter_FU #(.BITSIZE_in1(15), .BITSIZE_out1(13)) conv_out_ui_pointer_plus_expr_FU_16_16_16_147_i4_fu_astarF_28877_30122_15_13 (.out1(out_conv_out_ui_pointer_plus_expr_FU_16_16_16_147_i4_fu_astarF_28877_30122_15_13), .in1(out_ui_pointer_plus_expr_FU_16_16_16_147_i4_fu_astarF_28877_30122));
  UUdata_converter_FU #(.BITSIZE_in1(15), .BITSIZE_out1(13)) conv_out_ui_pointer_plus_expr_FU_16_16_16_147_i5_fu_astarF_28877_30144_15_13 (.out1(out_conv_out_ui_pointer_plus_expr_FU_16_16_16_147_i5_fu_astarF_28877_30144_15_13), .in1(out_ui_pointer_plus_expr_FU_16_16_16_147_i5_fu_astarF_28877_30144));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_ui_pointer_plus_expr_FU_32_32_32_149_i0_fu_astarF_28877_30043_32_13 (.out1(out_conv_out_ui_pointer_plus_expr_FU_32_32_32_149_i0_fu_astarF_28877_30043_32_13), .in1(out_ui_pointer_plus_expr_FU_32_32_32_149_i0_fu_astarF_28877_30043));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_ui_pointer_plus_expr_FU_32_32_32_149_i2_fu_astarF_28877_30261_32_13 (.out1(out_conv_out_ui_pointer_plus_expr_FU_32_32_32_149_i2_fu_astarF_28877_30261_32_13), .in1(out_ui_pointer_plus_expr_FU_32_32_32_149_i2_fu_astarF_28877_30261));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(13)) fu_astarF_28877_29563 (.out1(out_UUdata_converter_FU_11_i0_fu_astarF_28877_29563), .in1(out_addr_expr_FU_10_i0_fu_astarF_28877_29919));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29574 (.out1(out_read_cond_FU_31_i0_fu_astarF_28877_29574), .in1(out_ui_eq_expr_FU_8_0_8_131_i0_fu_astarF_28877_30405));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_29586 (.out1(out_UUdata_converter_FU_30_i0_fu_astarF_28877_29586), .in1(out_reg_12_reg_12));
  ui_plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(5)) fu_astarF_28877_29593 (.out1(out_ui_plus_expr_FU_8_0_8_143_i0_fu_astarF_28877_29593), .in1(out_reg_11_reg_11), .in2(out_const_7));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(32)) fu_astarF_28877_29596 (.out1(out_ui_plus_expr_FU_32_0_32_141_i0_fu_astarF_28877_29596), .in1(out_reg_12_reg_12), .in2(out_const_10));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29599 (.out1(out_read_cond_FU_34_i0_fu_astarF_28877_29599), .in1(out_reg_13_reg_13));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_29601 (.out1(out_UUdata_converter_FU_16_i0_fu_astarF_28877_29601), .in1(out_addr_expr_FU_15_i0_fu_astarF_28877_29981));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_29602 (.out1(out_UUdata_converter_FU_17_i0_fu_astarF_28877_29602), .in1(out_ui_pointer_plus_expr_FU_32_0_32_148_i0_fu_astarF_28877_29989));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_29615 (.out1(out_UUdata_converter_FU_37_i0_fu_astarF_28877_29615), .in1(out_reg_14_reg_14));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(32)) fu_astarF_28877_29617 (.out1(out_ui_plus_expr_FU_32_0_32_142_i0_fu_astarF_28877_29617), .in1(out_reg_14_reg_14), .in2(out_const_7));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29618 (.out1(out_read_cond_FU_38_i0_fu_astarF_28877_29618), .in1(out_ui_ne_expr_FU_32_32_32_139_i0_fu_astarF_28877_30409));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_astarF_28877_29631 (.out1(out_plus_expr_FU_8_0_8_119_i0_fu_astarF_28877_29631), .in1(out_ARRAY_1D_STD_BRAM_NN_3_i0_array_28866_0), .in2(out_const_3));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29633 (.out1(out_read_cond_FU_39_i0_fu_astarF_28877_29633), .in1(out_reg_15_reg_15));
  ui_cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(5), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_astarF_28877_29684 (.out1(out_ui_cond_expr_FU_8_8_8_8_130_i0_fu_astarF_28877_29684), .in1(out_ui_bit_and_expr_FU_1_1_1_124_i0_fu_astarF_28877_29689), .in2(out_reg_19_reg_19), .in3(out_reg_22_reg_22));
  ui_bit_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_astarF_28877_29689 (.out1(out_ui_bit_and_expr_FU_1_1_1_124_i0_fu_astarF_28877_29689), .in1(out_le_expr_FU_8_8_8_115_i0_fu_astarF_28877_29693), .in2(out_ne_expr_FU_8_0_8_117_i0_fu_astarF_28877_29711));
  le_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_astarF_28877_29693 (.out1(out_le_expr_FU_8_8_8_115_i0_fu_astarF_28877_29693), .in1(out_ARRAY_1D_STD_BRAM_NN_4_i0_array_28867_0), .in2(out_reg_18_reg_18));
  ui_plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(5)) fu_astarF_28877_29705 (.out1(out_ui_plus_expr_FU_8_0_8_143_i1_fu_astarF_28877_29705), .in1(out_reg_20_reg_20), .in2(out_const_7));
  cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_astarF_28877_29709 (.out1(out_cond_expr_FU_8_8_8_8_112_i0_fu_astarF_28877_29709), .in1(out_ui_bit_and_expr_FU_1_1_1_124_i0_fu_astarF_28877_29689), .in2(out_ARRAY_1D_STD_BRAM_NN_4_i0_array_28867_0), .in3(out_reg_18_reg_18));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_astarF_28877_29711 (.out1(out_ne_expr_FU_8_0_8_117_i0_fu_astarF_28877_29711), .in1(out_ARRAY_1D_STD_BRAM_NN_4_i0_array_28867_0), .in2(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(5)) fu_astarF_28877_29713 (.out1(out_UUdata_converter_FU_61_i0_fu_astarF_28877_29713), .in1(out_reg_20_reg_20));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_astarF_28877_29720 (.out1(out_UIdata_converter_FU_63_i0_fu_astarF_28877_29720), .in1(out_ARRAY_1D_STD_BRAM_NN_1_i0_array_28864_0));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_astarF_28877_29728 (.out1(out_plus_expr_FU_8_0_8_120_i0_fu_astarF_28877_29728), .in1(out_reg_16_reg_16), .in2(out_const_14));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(9), .BITSIZE_out1(14), .LSB_PARAMETER(0)) fu_astarF_28877_29734 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_147_i0_fu_astarF_28877_29734), .in1(out_conv_in_port_a_32_13), .in2(out_ui_lshift_expr_FU_16_0_16_135_i1_fu_astarF_28877_30132));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(5)) fu_astarF_28877_29747 (.out1(out_UUdata_converter_FU_86_i0_fu_astarF_28877_29747), .in1(out_conv_out_reg_48_reg_48_8_5));
  UIdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(6)) fu_astarF_28877_29752 (.out1(out_UIdata_converter_FU_80_i0_fu_astarF_28877_29752), .in1(out_conv_out_reg_48_reg_48_8_5));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) fu_astarF_28877_29755 (.out1(out_plus_expr_FU_8_8_8_123_i0_fu_astarF_28877_29755), .in1(out_BMEMORY_CTRLN_110_i0_BMEMORY_CTRLN_110_i0), .in2(out_reg_31_reg_31));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(14), .LSB_PARAMETER(0)) fu_astarF_28877_29764 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_147_i1_fu_astarF_28877_29764), .in1(out_conv_in_port_a_32_13), .in2(out_ui_lshift_expr_FU_16_0_16_135_i0_fu_astarF_28877_30093));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29771 (.out1(out_UUdata_converter_FU_79_i0_fu_astarF_28877_29771), .in1(out_reg_25_reg_25));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_astarF_28877_29778 (.out1(out_UIdata_converter_FU_83_i0_fu_astarF_28877_29778), .in1(out_reg_25_reg_25));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_astarF_28877_29784 (.out1(out_UIdata_converter_FU_94_i0_fu_astarF_28877_29784), .in1(out_PROXY_CTRLN_5_i0_PROXY_CTRLN_5_i0));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) fu_astarF_28877_29788 (.out1(out_plus_expr_FU_8_8_8_123_i1_fu_astarF_28877_29788), .in1(out_reg_44_reg_44), .in2(out_reg_42_reg_42));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(5), .BITSIZE_out1(8)) fu_astarF_28877_29794 (.out1(out_plus_expr_FU_8_0_8_121_i0_fu_astarF_28877_29794), .in1(out_IIconvert_expr_FU_101_i0_fu_astarF_28877_29797), .in2(out_const_5));
  IIconvert_expr_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_astarF_28877_29797 (.out1(out_IIconvert_expr_FU_101_i0_fu_astarF_28877_29797), .in1(out___builtin_abs_8_8_111_i0_fu_astarF_28877_29800));
  __builtin_abs #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_astarF_28877_29800 (.out1(out___builtin_abs_8_8_111_i0_fu_astarF_28877_29800), .in1(out_reg_43_reg_43));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29803 (.out1(out_IIdata_converter_FU_98_i0_fu_astarF_28877_29803), .in1(out_plus_expr_FU_8_0_8_122_i0_fu_astarF_28877_29806));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(5), .BITSIZE_out1(8)) fu_astarF_28877_29806 (.out1(out_plus_expr_FU_8_0_8_122_i0_fu_astarF_28877_29806), .in1(out_BMEMORY_CTRLN_110_i0_BMEMORY_CTRLN_110_i0), .in2(out_const_12));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(14), .LSB_PARAMETER(0)) fu_astarF_28877_29812 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_147_i2_fu_astarF_28877_29812), .in1(out_conv_in_port_a_32_13), .in2(out_ui_lshift_expr_FU_16_0_16_135_i2_fu_astarF_28877_30179));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29818 (.out1(out_UUdata_converter_FU_93_i0_fu_astarF_28877_29818), .in1(out_PROXY_CTRLN_5_i0_PROXY_CTRLN_5_i0));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_astarF_28877_29820 (.out1(out_plus_expr_FU_8_0_8_119_i1_fu_astarF_28877_29820), .in1(out_ARRAY_1D_STD_BRAM_NN_3_i0_array_28866_0), .in2(out_const_3));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_astarF_28877_29825 (.out1(out_ui_plus_expr_FU_8_0_8_144_i0_fu_astarF_28877_29825), .in1(out_reg_48_reg_48), .in2(out_const_7));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29832 (.out1(out_read_cond_FU_62_i0_fu_astarF_28877_29832), .in1(out_reg_21_reg_21));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29834 (.out1(out_read_cond_FU_65_i0_fu_astarF_28877_29834), .in1(out_reg_24_reg_24));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29840 (.out1(out_read_cond_FU_88_i0_fu_astarF_28877_29840), .in1(out_ne_expr_FU_8_0_8_118_i0_fu_astarF_28877_30417));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29842 (.out1(out_IIdata_converter_FU_90_i0_fu_astarF_28877_29842), .in1(out_BMEMORY_CTRLN_110_i0_BMEMORY_CTRLN_110_i0));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29843 (.out1(out_IIdata_converter_FU_85_i0_fu_astarF_28877_29843), .in1(out_BMEMORY_CTRLN_110_i1_BMEMORY_CTRLN_110_i0));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(9)) fu_astarF_28877_29844 (.out1(out_plus_expr_FU_8_8_8_123_i2_fu_astarF_28877_29844), .in1(out_reg_32_reg_32), .in2(out_IIdata_converter_FU_90_i0_fu_astarF_28877_29842));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29846 (.out1(out_IIdata_converter_FU_91_i0_fu_astarF_28877_29846), .in1(out_BMEMORY_CTRLN_110_i1_BMEMORY_CTRLN_110_i0));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29847 (.out1(out_read_cond_FU_92_i0_fu_astarF_28877_29847), .in1(out_reg_35_reg_35));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29863 (.out1(out_read_cond_FU_99_i0_fu_astarF_28877_29863), .in1(out_reg_41_reg_41));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29869 (.out1(out_read_cond_FU_108_i0_fu_astarF_28877_29869), .in1(out_ui_le_expr_FU_8_0_8_133_i0_fu_astarF_28877_30421));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29872 (.out1(out_read_cond_FU_109_i0_fu_astarF_28877_29872), .in1(out_gt_expr_FU_8_0_8_114_i1_fu_astarF_28877_30423));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_29915 (.out1(out_addr_expr_FU_9_i0_fu_astarF_28877_29915), .in1(out_conv_out_const_22_10_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) fu_astarF_28877_29919 (.out1(out_addr_expr_FU_10_i0_fu_astarF_28877_29919), .in1(out_conv_out_const_13_13_32));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(13)) fu_astarF_28877_29924 (.out1(out_UUdata_converter_FU_14_i0_fu_astarF_28877_29924), .in1(out_UUdata_converter_FU_13_i0_fu_astarF_28877_29941));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(13)) fu_astarF_28877_29941 (.out1(out_UUdata_converter_FU_13_i0_fu_astarF_28877_29941), .in1(out_addr_expr_FU_12_i0_fu_astarF_28877_29962));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) fu_astarF_28877_29962 (.out1(out_addr_expr_FU_12_i0_fu_astarF_28877_29962), .in1(out_conv_out_const_13_13_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_29981 (.out1(out_addr_expr_FU_15_i0_fu_astarF_28877_29981), .in1(out_conv_out_const_19_13_32));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_astarF_28877_29989 (.out1(out_ui_pointer_plus_expr_FU_32_0_32_148_i0_fu_astarF_28877_29989), .in1(out_addr_expr_FU_15_i0_fu_astarF_28877_29981), .in2(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_30004 (.out1(out_UUdata_converter_FU_19_i0_fu_astarF_28877_30004), .in1(out_addr_expr_FU_18_i0_fu_astarF_28877_30028));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_30018 (.out1(out_addr_expr_FU_20_i0_fu_astarF_28877_30018), .in1(out_conv_out_const_20_12_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_30028 (.out1(out_addr_expr_FU_18_i0_fu_astarF_28877_30028), .in1(out_conv_out_const_21_13_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_30032 (.out1(out_addr_expr_FU_21_i0_fu_astarF_28877_30032), .in1(out_conv_out_const_18_12_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_30040 (.out1(out_addr_expr_FU_22_i0_fu_astarF_28877_30040), .in1(out_conv_out_const_21_13_32));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_astarF_28877_30043 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_149_i0_fu_astarF_28877_30043), .in1(out_reg_7_reg_7), .in2(out_reg_20_reg_20));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_astarF_28877_30066 (.out1(out_IUdata_converter_FU_64_i0_fu_astarF_28877_30066), .in1(out_UIdata_converter_FU_63_i0_fu_astarF_28877_29720));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_astarF_28877_30072 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_149_i1_fu_astarF_28877_30072), .in1(out_reg_4_reg_4), .in2(out_IUdata_converter_FU_64_i0_fu_astarF_28877_30066));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(11), .PRECISION(32)) fu_astarF_28877_30086 (.out1(out_ui_lshift_expr_FU_16_0_16_134_i0_fu_astarF_28877_30086), .in1(out_UUdata_converter_FU_79_i0_fu_astarF_28877_29771), .in2(out_const_14));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(12), .BITSIZE_in2(3), .BITSIZE_in3(2), .BITSIZE_out1(12), .OFFSET_PARAMETER(3)) fu_astarF_28877_30089 (.out1(out_ui_bit_ior_concat_expr_FU_127_i0_fu_astarF_28877_30089), .in1(out_ui_lshift_expr_FU_16_0_16_134_i2_fu_astarF_28877_30450), .in2(out_ui_bit_and_expr_FU_8_0_8_125_i0_fu_astarF_28877_30455), .in3(out_const_14));
  ui_lshift_expr_FU #(.BITSIZE_in1(12), .BITSIZE_in2(1), .BITSIZE_out1(13), .PRECISION(32)) fu_astarF_28877_30093 (.out1(out_ui_lshift_expr_FU_16_0_16_135_i0_fu_astarF_28877_30093), .in1(out_ui_bit_ior_concat_expr_FU_127_i0_fu_astarF_28877_30089), .in2(out_const_7));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(14)) fu_astarF_28877_30096 (.out1(out_UUdata_converter_FU_81_i0_fu_astarF_28877_30096), .in1(out_ui_pointer_plus_expr_FU_16_16_16_147_i1_fu_astarF_28877_29764));
  IUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(5)) fu_astarF_28877_30099 (.out1(out_IUdata_converter_FU_82_i0_fu_astarF_28877_30099), .in1(out_UIdata_converter_FU_80_i0_fu_astarF_28877_29752));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(14), .BITSIZE_in2(5), .BITSIZE_out1(15), .LSB_PARAMETER(0)) fu_astarF_28877_30105 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_147_i3_fu_astarF_28877_30105), .in1(out_UUdata_converter_FU_81_i0_fu_astarF_28877_30096), .in2(out_IUdata_converter_FU_82_i0_fu_astarF_28877_30099));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_astarF_28877_30116 (.out1(out_IUdata_converter_FU_84_i0_fu_astarF_28877_30116), .in1(out_UIdata_converter_FU_83_i0_fu_astarF_28877_29778));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(14), .BITSIZE_in2(8), .BITSIZE_out1(15), .LSB_PARAMETER(0)) fu_astarF_28877_30122 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_147_i4_fu_astarF_28877_30122), .in1(out_reg_26_reg_26), .in2(out_reg_29_reg_29));
  ui_lshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(32)) fu_astarF_28877_30126 (.out1(out_ui_lshift_expr_FU_8_0_8_138_i0_fu_astarF_28877_30126), .in1(out_UUdata_converter_FU_86_i0_fu_astarF_28877_29747), .in2(out_const_14));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_in3(2), .BITSIZE_out1(8), .OFFSET_PARAMETER(3)) fu_astarF_28877_30129 (.out1(out_ui_bit_ior_concat_expr_FU_128_i0_fu_astarF_28877_30129), .in1(out_ui_lshift_expr_FU_8_0_8_138_i1_fu_astarF_28877_30468), .in2(out_ui_bit_and_expr_FU_8_0_8_125_i1_fu_astarF_28877_30471), .in3(out_const_14));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(9), .PRECISION(32)) fu_astarF_28877_30132 (.out1(out_ui_lshift_expr_FU_16_0_16_135_i1_fu_astarF_28877_30132), .in1(out_ui_bit_ior_concat_expr_FU_128_i0_fu_astarF_28877_30129), .in2(out_const_7));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(14)) fu_astarF_28877_30135 (.out1(out_UUdata_converter_FU_87_i0_fu_astarF_28877_30135), .in1(out_ui_pointer_plus_expr_FU_16_16_16_147_i0_fu_astarF_28877_29734));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(14), .BITSIZE_in2(5), .BITSIZE_out1(15), .LSB_PARAMETER(0)) fu_astarF_28877_30144 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_147_i5_fu_astarF_28877_30144), .in1(out_reg_30_reg_30), .in2(out_reg_27_reg_27));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(11), .PRECISION(32)) fu_astarF_28877_30173 (.out1(out_ui_lshift_expr_FU_16_0_16_134_i1_fu_astarF_28877_30173), .in1(out_UUdata_converter_FU_93_i0_fu_astarF_28877_29818), .in2(out_const_14));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(12), .BITSIZE_in2(3), .BITSIZE_in3(2), .BITSIZE_out1(12), .OFFSET_PARAMETER(3)) fu_astarF_28877_30176 (.out1(out_ui_bit_ior_concat_expr_FU_127_i1_fu_astarF_28877_30176), .in1(out_ui_lshift_expr_FU_16_0_16_134_i3_fu_astarF_28877_30483), .in2(out_ui_bit_and_expr_FU_8_0_8_125_i2_fu_astarF_28877_30486), .in3(out_const_14));
  ui_lshift_expr_FU #(.BITSIZE_in1(12), .BITSIZE_in2(1), .BITSIZE_out1(13), .PRECISION(32)) fu_astarF_28877_30179 (.out1(out_ui_lshift_expr_FU_16_0_16_135_i2_fu_astarF_28877_30179), .in1(out_ui_bit_ior_concat_expr_FU_127_i1_fu_astarF_28877_30176), .in2(out_const_7));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(14)) fu_astarF_28877_30182 (.out1(out_UUdata_converter_FU_95_i0_fu_astarF_28877_30182), .in1(out_ui_pointer_plus_expr_FU_16_16_16_147_i2_fu_astarF_28877_29812));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_astarF_28877_30185 (.out1(out_IUdata_converter_FU_96_i0_fu_astarF_28877_30185), .in1(out_UIdata_converter_FU_94_i0_fu_astarF_28877_29784));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(14), .BITSIZE_in2(8), .BITSIZE_out1(15), .LSB_PARAMETER(0)) fu_astarF_28877_30191 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_147_i6_fu_astarF_28877_30191), .in1(out_reg_37_reg_37), .in2(out_reg_38_reg_38));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(14)) fu_astarF_28877_30195 (.out1(out_UUdata_converter_FU_97_i0_fu_astarF_28877_30195), .in1(out_ui_pointer_plus_expr_FU_16_16_16_147_i7_fu_astarF_28877_30227));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(14), .BITSIZE_in2(7), .BITSIZE_out1(15), .LSB_PARAMETER(0)) fu_astarF_28877_30204 (.out1(out_ui_pointer_plus_expr_FU_16_0_16_146_i0_fu_astarF_28877_30204), .in1(out_reg_39_reg_39), .in2(out_const_11));
  ge_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_astarF_28877_30207 (.out1(out_ge_expr_FU_8_0_8_113_i0_fu_astarF_28877_30207), .in1(out_PROXY_CTRLN_6_i0_PROXY_CTRLN_6_i0), .in2(out_const_0));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(14), .LSB_PARAMETER(0)) fu_astarF_28877_30227 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_147_i7_fu_astarF_28877_30227), .in1(out_reg_3_reg_3), .in2(out_ui_lshift_expr_FU_16_0_16_137_i0_fu_astarF_28877_30245));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(11), .PRECISION(32)) fu_astarF_28877_30239 (.out1(out_ui_lshift_expr_FU_16_0_16_136_i0_fu_astarF_28877_30239), .in1(out_IUdata_converter_FU_96_i0_fu_astarF_28877_30185), .in2(out_const_14));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(12), .BITSIZE_in2(3), .BITSIZE_in3(2), .BITSIZE_out1(12), .OFFSET_PARAMETER(3)) fu_astarF_28877_30242 (.out1(out_ui_bit_ior_concat_expr_FU_129_i0_fu_astarF_28877_30242), .in1(out_ui_lshift_expr_FU_16_0_16_136_i1_fu_astarF_28877_30501), .in2(out_ui_bit_and_expr_FU_8_0_8_126_i0_fu_astarF_28877_30506), .in3(out_const_14));
  ui_lshift_expr_FU #(.BITSIZE_in1(12), .BITSIZE_in2(1), .BITSIZE_out1(13), .PRECISION(32)) fu_astarF_28877_30245 (.out1(out_ui_lshift_expr_FU_16_0_16_137_i0_fu_astarF_28877_30245), .in1(out_ui_bit_ior_concat_expr_FU_129_i0_fu_astarF_28877_30242), .in2(out_const_7));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_30248 (.out1(out_addr_expr_FU_23_i0_fu_astarF_28877_30248), .in1(out_conv_out_const_17_12_32));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_astarF_28877_30261 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_149_i2_fu_astarF_28877_30261), .in1(out_reg_4_reg_4), .in2(out_reg_38_reg_38));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_30277 (.out1(out_UUdata_converter_FU_25_i0_fu_astarF_28877_30277), .in1(out_addr_expr_FU_24_i0_fu_astarF_28877_30296));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_astarF_28877_30286 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_149_i3_fu_astarF_28877_30286), .in1(out_reg_9_reg_9), .in2(out_reg_38_reg_38));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_30296 (.out1(out_addr_expr_FU_24_i0_fu_astarF_28877_30296), .in1(out_conv_out_const_19_13_32));
  ui_eq_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_astarF_28877_30405 (.out1(out_ui_eq_expr_FU_8_0_8_131_i0_fu_astarF_28877_30405), .in1(out_reg_11_reg_11), .in2(out_const_0));
  ui_ne_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_astarF_28877_30407 (.out1(out_ui_ne_expr_FU_8_0_8_140_i0_fu_astarF_28877_30407), .in1(out_ui_plus_expr_FU_8_0_8_143_i0_fu_astarF_28877_29593), .in2(out_const_9));
  ui_ne_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(1)) fu_astarF_28877_30409 (.out1(out_ui_ne_expr_FU_32_32_32_139_i0_fu_astarF_28877_30409), .in1(out_ui_plus_expr_FU_32_0_32_142_i0_fu_astarF_28877_29617), .in2(out_reg_0_reg_0));
  gt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_astarF_28877_30411 (.out1(out_gt_expr_FU_8_0_8_114_i0_fu_astarF_28877_30411), .in1(out_plus_expr_FU_8_0_8_119_i0_fu_astarF_28877_29631), .in2(out_const_0));
  ui_ne_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_astarF_28877_30413 (.out1(out_ui_ne_expr_FU_8_0_8_140_i1_fu_astarF_28877_30413), .in1(out_ui_plus_expr_FU_8_0_8_143_i1_fu_astarF_28877_29705), .in2(out_const_9));
  ui_eq_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(7), .BITSIZE_out1(1)) fu_astarF_28877_30415 (.out1(out_ui_eq_expr_FU_8_0_8_132_i0_fu_astarF_28877_30415), .in1(out_ARRAY_1D_STD_BRAM_NN_1_i0_array_28864_0), .in2(out_const_11));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_astarF_28877_30417 (.out1(out_ne_expr_FU_8_0_8_118_i0_fu_astarF_28877_30417), .in1(out_BMEMORY_CTRLN_110_i1_BMEMORY_CTRLN_110_i0), .in2(out_const_14));
  lt_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_astarF_28877_30419 (.out1(out_lt_expr_FU_16_16_16_116_i0_fu_astarF_28877_30419), .in1(out_plus_expr_FU_8_8_8_123_i2_fu_astarF_28877_29844), .in2(out_IIdata_converter_FU_91_i0_fu_astarF_28877_29846));
  ui_le_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_astarF_28877_30421 (.out1(out_ui_le_expr_FU_8_0_8_133_i0_fu_astarF_28877_30421), .in1(out_ui_plus_expr_FU_8_0_8_144_i0_fu_astarF_28877_29825), .in2(out_const_8));
  gt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_astarF_28877_30423 (.out1(out_gt_expr_FU_8_0_8_114_i1_fu_astarF_28877_30423), .in1(out_ARRAY_1D_STD_BRAM_NN_3_i0_array_28866_0), .in2(out_const_0));
  ui_rshift_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(32)) fu_astarF_28877_30439 (.out1(out_ui_rshift_expr_FU_16_0_16_150_i0_fu_astarF_28877_30439), .in1(out_ui_lshift_expr_FU_16_0_16_134_i0_fu_astarF_28877_30086), .in2(out_const_14));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(5), .PRECISION(32)) fu_astarF_28877_30443 (.out1(out_ui_rshift_expr_FU_8_0_8_152_i0_fu_astarF_28877_30443), .in1(out_UUdata_converter_FU_79_i0_fu_astarF_28877_29771), .in2(out_const_14));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(5), .BITSIZE_out1(9)) fu_astarF_28877_30446 (.out1(out_ui_plus_expr_FU_8_8_8_145_i0_fu_astarF_28877_30446), .in1(out_ui_rshift_expr_FU_16_0_16_150_i0_fu_astarF_28877_30439), .in2(out_ui_rshift_expr_FU_8_0_8_152_i0_fu_astarF_28877_30443));
  ui_lshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(12), .PRECISION(32)) fu_astarF_28877_30450 (.out1(out_ui_lshift_expr_FU_16_0_16_134_i2_fu_astarF_28877_30450), .in1(out_ui_plus_expr_FU_8_8_8_145_i0_fu_astarF_28877_30446), .in2(out_const_14));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(3)) fu_astarF_28877_30455 (.out1(out_ui_bit_and_expr_FU_8_0_8_125_i0_fu_astarF_28877_30455), .in1(out_UUdata_converter_FU_79_i0_fu_astarF_28877_29771), .in2(out_const_15));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(5), .PRECISION(32)) fu_astarF_28877_30460 (.out1(out_ui_rshift_expr_FU_8_0_8_152_i1_fu_astarF_28877_30460), .in1(out_ui_lshift_expr_FU_8_0_8_138_i0_fu_astarF_28877_30126), .in2(out_const_14));
  ui_rshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_out1(2), .PRECISION(32)) fu_astarF_28877_30463 (.out1(out_ui_rshift_expr_FU_8_0_8_152_i2_fu_astarF_28877_30463), .in1(out_UUdata_converter_FU_86_i0_fu_astarF_28877_29747), .in2(out_const_14));
  ui_plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_out1(5)) fu_astarF_28877_30465 (.out1(out_ui_plus_expr_FU_8_8_8_145_i1_fu_astarF_28877_30465), .in1(out_ui_rshift_expr_FU_8_0_8_152_i1_fu_astarF_28877_30460), .in2(out_ui_rshift_expr_FU_8_0_8_152_i2_fu_astarF_28877_30463));
  ui_lshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(32)) fu_astarF_28877_30468 (.out1(out_ui_lshift_expr_FU_8_0_8_138_i1_fu_astarF_28877_30468), .in1(out_ui_plus_expr_FU_8_8_8_145_i1_fu_astarF_28877_30465), .in2(out_const_14));
  ui_bit_and_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(3), .BITSIZE_out1(3)) fu_astarF_28877_30471 (.out1(out_ui_bit_and_expr_FU_8_0_8_125_i1_fu_astarF_28877_30471), .in1(out_UUdata_converter_FU_86_i0_fu_astarF_28877_29747), .in2(out_const_15));
  ui_rshift_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(32)) fu_astarF_28877_30475 (.out1(out_ui_rshift_expr_FU_16_0_16_150_i1_fu_astarF_28877_30475), .in1(out_ui_lshift_expr_FU_16_0_16_134_i1_fu_astarF_28877_30173), .in2(out_const_14));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(5), .PRECISION(32)) fu_astarF_28877_30478 (.out1(out_ui_rshift_expr_FU_8_0_8_152_i3_fu_astarF_28877_30478), .in1(out_UUdata_converter_FU_93_i0_fu_astarF_28877_29818), .in2(out_const_14));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(5), .BITSIZE_out1(9)) fu_astarF_28877_30480 (.out1(out_ui_plus_expr_FU_8_8_8_145_i2_fu_astarF_28877_30480), .in1(out_ui_rshift_expr_FU_16_0_16_150_i1_fu_astarF_28877_30475), .in2(out_ui_rshift_expr_FU_8_0_8_152_i3_fu_astarF_28877_30478));
  ui_lshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(12), .PRECISION(32)) fu_astarF_28877_30483 (.out1(out_ui_lshift_expr_FU_16_0_16_134_i3_fu_astarF_28877_30483), .in1(out_ui_plus_expr_FU_8_8_8_145_i2_fu_astarF_28877_30480), .in2(out_const_14));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(3)) fu_astarF_28877_30486 (.out1(out_ui_bit_and_expr_FU_8_0_8_125_i2_fu_astarF_28877_30486), .in1(out_UUdata_converter_FU_93_i0_fu_astarF_28877_29818), .in2(out_const_15));
  ui_rshift_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(32)) fu_astarF_28877_30490 (.out1(out_ui_rshift_expr_FU_16_0_16_151_i0_fu_astarF_28877_30490), .in1(out_ui_lshift_expr_FU_16_0_16_136_i0_fu_astarF_28877_30239), .in2(out_const_14));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(5), .PRECISION(32)) fu_astarF_28877_30494 (.out1(out_ui_rshift_expr_FU_8_0_8_153_i0_fu_astarF_28877_30494), .in1(out_IUdata_converter_FU_96_i0_fu_astarF_28877_30185), .in2(out_const_14));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(5), .BITSIZE_out1(9)) fu_astarF_28877_30497 (.out1(out_ui_plus_expr_FU_8_8_8_145_i3_fu_astarF_28877_30497), .in1(out_ui_rshift_expr_FU_16_0_16_151_i0_fu_astarF_28877_30490), .in2(out_ui_rshift_expr_FU_8_0_8_153_i0_fu_astarF_28877_30494));
  ui_lshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(12), .PRECISION(32)) fu_astarF_28877_30501 (.out1(out_ui_lshift_expr_FU_16_0_16_136_i1_fu_astarF_28877_30501), .in1(out_ui_plus_expr_FU_8_8_8_145_i3_fu_astarF_28877_30497), .in2(out_const_14));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(3)) fu_astarF_28877_30506 (.out1(out_ui_bit_and_expr_FU_8_0_8_126_i0_fu_astarF_28877_30506), .in1(out_IUdata_converter_FU_96_i0_fu_astarF_28877_30185), .in2(out_const_15));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
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
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in1_288617_0 (.out1(sig_in_bus_mergerproxy_in1_288617_0), .in1(sig_in_vector_bus_mergerproxy_in1_288617_0));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in1_288688_0 (.out1(sig_in_bus_mergerproxy_in1_288688_0), .in1(sig_in_vector_bus_mergerproxy_in1_288688_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in2_288619_0 (.out1(sig_in_bus_mergerproxy_in2_288619_0), .in1(sig_in_vector_bus_mergerproxy_in2_288619_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in2_2886810_0 (.out1(sig_in_bus_mergerproxy_in2_2886810_0), .in1(sig_in_vector_bus_mergerproxy_in2_2886810_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in3_2886111_0 (.out1(sig_in_bus_mergerproxy_in3_2886111_0), .in1(sig_in_vector_bus_mergerproxy_in3_2886111_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in3_2886812_0 (.out1(sig_in_bus_mergerproxy_in3_2886812_0), .in1(sig_in_vector_bus_mergerproxy_in3_2886812_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886113_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886113_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886113_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886814_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886814_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886814_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886115_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886115_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886115_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886816_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886816_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886816_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_17_i0_fu_astarF_28877_29602), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_9_i0_fu_astarF_28877_29915), .wenable(wrenable_reg_1));
  register_STD #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_30_i0_fu_astarF_28877_29586), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_MUX_143_reg_11_0_0_0), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_MUX_144_reg_12_0_0_0), .wenable(wrenable_reg_12));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_140_i0_fu_astarF_28877_30407), .wenable(wrenable_reg_13));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_MUX_146_reg_14_0_0_0), .wenable(wrenable_reg_14));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_gt_expr_FU_8_0_8_114_i0_fu_astarF_28877_30411), .wenable(wrenable_reg_15));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_MUX_148_reg_16_0_0_0), .wenable(wrenable_reg_16));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_0_8_120_i0_fu_astarF_28877_29728), .wenable(wrenable_reg_17));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_MUX_150_reg_18_0_0_0), .wenable(wrenable_reg_18));
  register_STD #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_19 (.out1(out_reg_19_reg_19), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_61_i0_fu_astarF_28877_29713), .wenable(wrenable_reg_19));
  register_SE #(.BITSIZE_in1(13), .BITSIZE_out1(13)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_14_i0_fu_astarF_28877_29924), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_20 (.out1(out_reg_20_reg_20), .clock(clock), .reset(reset), .in1(out_MUX_153_reg_20_0_0_0), .wenable(wrenable_reg_20));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_21 (.out1(out_reg_21_reg_21), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_140_i1_fu_astarF_28877_30413), .wenable(wrenable_reg_21));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_22 (.out1(out_reg_22_reg_22), .clock(clock), .reset(reset), .in1(out_MUX_155_reg_22_0_0_0), .wenable(wrenable_reg_22));
  register_STD #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_23 (.out1(out_reg_23_reg_23), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_149_i1_fu_astarF_28877_30072), .wenable(wrenable_reg_23));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_24 (.out1(out_reg_24_reg_24), .clock(clock), .reset(reset), .in1(out_ui_eq_expr_FU_8_0_8_132_i0_fu_astarF_28877_30415), .wenable(wrenable_reg_24));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_25 (.out1(out_reg_25_reg_25), .clock(clock), .reset(reset), .in1(out_MUX_158_reg_25_0_0_0), .wenable(wrenable_reg_25));
  register_SE #(.BITSIZE_in1(14), .BITSIZE_out1(14)) reg_26 (.out1(out_reg_26_reg_26), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_81_i0_fu_astarF_28877_30096), .wenable(wrenable_reg_26));
  register_SE #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_27 (.out1(out_reg_27_reg_27), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_82_i0_fu_astarF_28877_30099), .wenable(wrenable_reg_27));
  register_STD #(.BITSIZE_in1(15), .BITSIZE_out1(15)) reg_28 (.out1(out_reg_28_reg_28), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_147_i3_fu_astarF_28877_30105), .wenable(wrenable_reg_28));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_29 (.out1(out_reg_29_reg_29), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_84_i0_fu_astarF_28877_30116), .wenable(wrenable_reg_29));
  register_SE #(.BITSIZE_in1(13), .BITSIZE_out1(13)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_13_i0_fu_astarF_28877_29941), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(14), .BITSIZE_out1(14)) reg_30 (.out1(out_reg_30_reg_30), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_87_i0_fu_astarF_28877_30135), .wenable(wrenable_reg_30));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_31 (.out1(out_reg_31_reg_31), .clock(clock), .reset(reset), .in1(out_BMEMORY_CTRLN_110_i1_BMEMORY_CTRLN_110_i0), .wenable(wrenable_reg_31));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_32 (.out1(out_reg_32_reg_32), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_85_i0_fu_astarF_28877_29843), .wenable(wrenable_reg_32));
  register_SE #(.BITSIZE_in1(15), .BITSIZE_out1(15)) reg_33 (.out1(out_reg_33_reg_33), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_147_i5_fu_astarF_28877_30144), .wenable(wrenable_reg_33));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_34 (.out1(out_reg_34_reg_34), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_8_8_123_i0_fu_astarF_28877_29755), .wenable(wrenable_reg_34));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_35 (.out1(out_reg_35_reg_35), .clock(clock), .reset(reset), .in1(out_lt_expr_FU_16_16_16_116_i0_fu_astarF_28877_30419), .wenable(wrenable_reg_35));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_36 (.out1(out_reg_36_reg_36), .clock(clock), .reset(reset), .in1(out_PROXY_CTRLN_5_i0_PROXY_CTRLN_5_i0), .wenable(wrenable_reg_36));
  register_STD #(.BITSIZE_in1(14), .BITSIZE_out1(14)) reg_37 (.out1(out_reg_37_reg_37), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_95_i0_fu_astarF_28877_30182), .wenable(wrenable_reg_37));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_38 (.out1(out_reg_38_reg_38), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_96_i0_fu_astarF_28877_30185), .wenable(wrenable_reg_38));
  register_STD #(.BITSIZE_in1(14), .BITSIZE_out1(14)) reg_39 (.out1(out_reg_39_reg_39), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_97_i0_fu_astarF_28877_30195), .wenable(wrenable_reg_39));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_19_i0_fu_astarF_28877_30004), .wenable(wrenable_reg_4));
  register_STD #(.BITSIZE_in1(15), .BITSIZE_out1(15)) reg_40 (.out1(out_reg_40_reg_40), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_147_i6_fu_astarF_28877_30191), .wenable(wrenable_reg_40));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_41 (.out1(out_reg_41_reg_41), .clock(clock), .reset(reset), .in1(out_ge_expr_FU_8_0_8_113_i0_fu_astarF_28877_30207), .wenable(wrenable_reg_41));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_42 (.out1(out_reg_42_reg_42), .clock(clock), .reset(reset), .in1(out_BMEMORY_CTRLN_110_i0_BMEMORY_CTRLN_110_i0), .wenable(wrenable_reg_42));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_43 (.out1(out_reg_43_reg_43), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_98_i0_fu_astarF_28877_29803), .wenable(wrenable_reg_43));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_44 (.out1(out_reg_44_reg_44), .clock(clock), .reset(reset), .in1(out_MUX_179_reg_44_0_0_0), .wenable(wrenable_reg_44));
  register_STD #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_45 (.out1(out_reg_45_reg_45), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_149_i3_fu_astarF_28877_30286), .wenable(wrenable_reg_45));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_46 (.out1(out_reg_46_reg_46), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_0_8_119_i1_fu_astarF_28877_29820), .wenable(wrenable_reg_46));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_47 (.out1(out_reg_47_reg_47), .clock(clock), .reset(reset), .in1(out_MUX_182_reg_47_0_0_0), .wenable(wrenable_reg_47));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_48 (.out1(out_reg_48_reg_48), .clock(clock), .reset(reset), .in1(out_MUX_183_reg_48_0_1_0), .wenable(wrenable_reg_48));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_20_i0_fu_astarF_28877_30018), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_21_i0_fu_astarF_28877_30032), .wenable(wrenable_reg_6));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_22_i0_fu_astarF_28877_30040), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_23_i0_fu_astarF_28877_30248), .wenable(wrenable_reg_8));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_25_i0_fu_astarF_28877_30277), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy5_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy5_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram6_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram6_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288617_ (.out1(proxy_in1_28861), .in1(sig_out_bus_mergerproxy_in1_288617_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288688_ (.out1(proxy_in1_28868), .in1(sig_out_bus_mergerproxy_in1_288688_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288619_ (.out1(proxy_in2_28861), .in1(sig_out_bus_mergerproxy_in2_288619_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2886810_ (.out1(proxy_in2_28868), .in1(sig_out_bus_mergerproxy_in2_2886810_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2886111_ (.out1(proxy_in3_28861), .in1(sig_out_bus_mergerproxy_in3_2886111_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2886812_ (.out1(proxy_in3_28868), .in1(sig_out_bus_mergerproxy_in3_2886812_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886113_ (.out1(proxy_sel_LOAD_28861), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886113_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886814_ (.out1(proxy_sel_LOAD_28868), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886814_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886115_ (.out1(proxy_sel_STORE_28861), .in1(sig_out_bus_mergerproxy_sel_STORE_2886115_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886816_ (.out1(proxy_sel_STORE_28868), .in1(sig_out_bus_mergerproxy_sel_STORE_2886816_));
  // io-signal post fix
  assign OUT_CONDITION_astarF_28877_29574 = out_read_cond_FU_31_i0_fu_astarF_28877_29574;
  assign OUT_CONDITION_astarF_28877_29599 = out_read_cond_FU_34_i0_fu_astarF_28877_29599;
  assign OUT_CONDITION_astarF_28877_29618 = out_read_cond_FU_38_i0_fu_astarF_28877_29618;
  assign OUT_CONDITION_astarF_28877_29633 = out_read_cond_FU_39_i0_fu_astarF_28877_29633;
  assign OUT_CONDITION_astarF_28877_29832 = out_read_cond_FU_62_i0_fu_astarF_28877_29832;
  assign OUT_CONDITION_astarF_28877_29834 = out_read_cond_FU_65_i0_fu_astarF_28877_29834;
  assign OUT_CONDITION_astarF_28877_29840 = out_read_cond_FU_88_i0_fu_astarF_28877_29840;
  assign OUT_CONDITION_astarF_28877_29847 = out_read_cond_FU_92_i0_fu_astarF_28877_29847;
  assign OUT_CONDITION_astarF_28877_29863 = out_read_cond_FU_99_i0_fu_astarF_28877_29863;
  assign OUT_CONDITION_astarF_28877_29869 = out_read_cond_FU_108_i0_fu_astarF_28877_29869;
  assign OUT_CONDITION_astarF_28877_29872 = out_read_cond_FU_109_i0_fu_astarF_28877_29872;

endmodule

// FSM based controller description for astarF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_astarF(done_port, fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_STORE, fuselector_BMEMORY_CTRLN_110_i0_LOAD, fuselector_BMEMORY_CTRLN_110_i0_STORE, fuselector_BMEMORY_CTRLN_110_i1_LOAD, fuselector_BMEMORY_CTRLN_110_i1_STORE, selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_0, selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_1, selector_MUX_143_reg_11_0_0_0, selector_MUX_144_reg_12_0_0_0, selector_MUX_146_reg_14_0_0_0, selector_MUX_148_reg_16_0_0_0, selector_MUX_150_reg_18_0_0_0, selector_MUX_153_reg_20_0_0_0, selector_MUX_155_reg_22_0_0_0, selector_MUX_158_reg_25_0_0_0, selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0, selector_MUX_179_reg_44_0_0_0, selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_0, selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_1, selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_1_0, selector_MUX_182_reg_47_0_0_0, selector_MUX_183_reg_48_0_0_0, selector_MUX_183_reg_48_0_0_1, selector_MUX_183_reg_48_0_1_0, selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_0, selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_1, selector_MUX_24_BMEMORY_CTRLN_110_i1_1_0_0, selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0, selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1, selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0, selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0, selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0, selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1, selector_MUX_8_ARRAY_1D_STD_BRAM_NN_2_i0_0_0_0, selector_MUX_9_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0, fuselector_PROXY_CTRLN_5_i0_LOAD, fuselector_PROXY_CTRLN_5_i0_STORE, fuselector_PROXY_CTRLN_6_i0_LOAD, fuselector_PROXY_CTRLN_6_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_29, wrenable_reg_3, wrenable_reg_30, wrenable_reg_31, wrenable_reg_32, wrenable_reg_33, wrenable_reg_34, wrenable_reg_35, wrenable_reg_36, wrenable_reg_37, wrenable_reg_38, wrenable_reg_39, wrenable_reg_4, wrenable_reg_40, wrenable_reg_41, wrenable_reg_42, wrenable_reg_43, wrenable_reg_44, wrenable_reg_45, wrenable_reg_46, wrenable_reg_47, wrenable_reg_48, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_astarF_28877_29574, OUT_CONDITION_astarF_28877_29599, OUT_CONDITION_astarF_28877_29618, OUT_CONDITION_astarF_28877_29633, OUT_CONDITION_astarF_28877_29832, OUT_CONDITION_astarF_28877_29834, OUT_CONDITION_astarF_28877_29840, OUT_CONDITION_astarF_28877_29847, OUT_CONDITION_astarF_28877_29863, OUT_CONDITION_astarF_28877_29869, OUT_CONDITION_astarF_28877_29872, clock, reset, start_port);
  // IN
  input OUT_CONDITION_astarF_28877_29574;
  input OUT_CONDITION_astarF_28877_29599;
  input OUT_CONDITION_astarF_28877_29618;
  input OUT_CONDITION_astarF_28877_29633;
  input OUT_CONDITION_astarF_28877_29832;
  input OUT_CONDITION_astarF_28877_29834;
  input OUT_CONDITION_astarF_28877_29840;
  input OUT_CONDITION_astarF_28877_29847;
  input OUT_CONDITION_astarF_28877_29863;
  input OUT_CONDITION_astarF_28877_29869;
  input OUT_CONDITION_astarF_28877_29872;
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
  output fuselector_BMEMORY_CTRLN_110_i0_LOAD;
  output fuselector_BMEMORY_CTRLN_110_i0_STORE;
  output fuselector_BMEMORY_CTRLN_110_i1_LOAD;
  output fuselector_BMEMORY_CTRLN_110_i1_STORE;
  output selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_0;
  output selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_1;
  output selector_MUX_143_reg_11_0_0_0;
  output selector_MUX_144_reg_12_0_0_0;
  output selector_MUX_146_reg_14_0_0_0;
  output selector_MUX_148_reg_16_0_0_0;
  output selector_MUX_150_reg_18_0_0_0;
  output selector_MUX_153_reg_20_0_0_0;
  output selector_MUX_155_reg_22_0_0_0;
  output selector_MUX_158_reg_25_0_0_0;
  output selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0;
  output selector_MUX_179_reg_44_0_0_0;
  output selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_0;
  output selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_1;
  output selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_1_0;
  output selector_MUX_182_reg_47_0_0_0;
  output selector_MUX_183_reg_48_0_0_0;
  output selector_MUX_183_reg_48_0_0_1;
  output selector_MUX_183_reg_48_0_1_0;
  output selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_0;
  output selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_1;
  output selector_MUX_24_BMEMORY_CTRLN_110_i1_1_0_0;
  output selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0;
  output selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1;
  output selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0;
  output selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0;
  output selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0;
  output selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1;
  output selector_MUX_8_ARRAY_1D_STD_BRAM_NN_2_i0_0_0_0;
  output selector_MUX_9_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0;
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
  output wrenable_reg_5;
  output wrenable_reg_6;
  output wrenable_reg_7;
  output wrenable_reg_8;
  output wrenable_reg_9;
  parameter [39:0] S_0 = 40'b0000000000000000000000000000000000000001,
    S_1 = 40'b0000000000000000000000000000000000000010,
    S_3 = 40'b0000000000000000000000000000000000001000,
    S_2 = 40'b0000000000000000000000000000000000000100,
    S_4 = 40'b0000000000000000000000000000000000010000,
    S_5 = 40'b0000000000000000000000000000000000100000,
    S_6 = 40'b0000000000000000000000000000000001000000,
    S_7 = 40'b0000000000000000000000000000000010000000,
    S_8 = 40'b0000000000000000000000000000000100000000,
    S_39 = 40'b1000000000000000000000000000000000000000,
    S_9 = 40'b0000000000000000000000000000001000000000,
    S_10 = 40'b0000000000000000000000000000010000000000,
    S_11 = 40'b0000000000000000000000000000100000000000,
    S_12 = 40'b0000000000000000000000000001000000000000,
    S_13 = 40'b0000000000000000000000000010000000000000,
    S_14 = 40'b0000000000000000000000000100000000000000,
    S_15 = 40'b0000000000000000000000001000000000000000,
    S_16 = 40'b0000000000000000000000010000000000000000,
    S_37 = 40'b0010000000000000000000000000000000000000,
    S_17 = 40'b0000000000000000000000100000000000000000,
    S_18 = 40'b0000000000000000000001000000000000000000,
    S_19 = 40'b0000000000000000000010000000000000000000,
    S_20 = 40'b0000000000000000000100000000000000000000,
    S_21 = 40'b0000000000000000001000000000000000000000,
    S_22 = 40'b0000000000000000010000000000000000000000,
    S_23 = 40'b0000000000000000100000000000000000000000,
    S_24 = 40'b0000000000000001000000000000000000000000,
    S_25 = 40'b0000000000000010000000000000000000000000,
    S_26 = 40'b0000000000000100000000000000000000000000,
    S_27 = 40'b0000000000001000000000000000000000000000,
    S_28 = 40'b0000000000010000000000000000000000000000,
    S_29 = 40'b0000000000100000000000000000000000000000,
    S_30 = 40'b0000000001000000000000000000000000000000,
    S_31 = 40'b0000000010000000000000000000000000000000,
    S_32 = 40'b0000000100000000000000000000000000000000,
    S_33 = 40'b0000001000000000000000000000000000000000,
    S_34 = 40'b0000010000000000000000000000000000000000,
    S_35 = 40'b0000100000000000000000000000000000000000,
    S_36 = 40'b0001000000000000000000000000000000000000,
    S_38 = 40'b0100000000000000000000000000000000000000;
  reg [39:0] _present_state, _next_state;
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
  reg fuselector_BMEMORY_CTRLN_110_i0_LOAD;
  reg fuselector_BMEMORY_CTRLN_110_i0_STORE;
  reg fuselector_BMEMORY_CTRLN_110_i1_LOAD;
  reg fuselector_BMEMORY_CTRLN_110_i1_STORE;
  reg selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_0;
  reg selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_1;
  reg selector_MUX_143_reg_11_0_0_0;
  reg selector_MUX_144_reg_12_0_0_0;
  reg selector_MUX_146_reg_14_0_0_0;
  reg selector_MUX_148_reg_16_0_0_0;
  reg selector_MUX_150_reg_18_0_0_0;
  reg selector_MUX_153_reg_20_0_0_0;
  reg selector_MUX_155_reg_22_0_0_0;
  reg selector_MUX_158_reg_25_0_0_0;
  reg selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0;
  reg selector_MUX_179_reg_44_0_0_0;
  reg selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_0;
  reg selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_1;
  reg selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_1_0;
  reg selector_MUX_182_reg_47_0_0_0;
  reg selector_MUX_183_reg_48_0_0_0;
  reg selector_MUX_183_reg_48_0_0_1;
  reg selector_MUX_183_reg_48_0_1_0;
  reg selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_0;
  reg selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_1;
  reg selector_MUX_24_BMEMORY_CTRLN_110_i1_1_0_0;
  reg selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0;
  reg selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1;
  reg selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0;
  reg selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0;
  reg selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0;
  reg selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1;
  reg selector_MUX_8_ARRAY_1D_STD_BRAM_NN_2_i0_0_0_0;
  reg selector_MUX_9_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0;
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
    fuselector_BMEMORY_CTRLN_110_i0_LOAD = 1'b0;
    fuselector_BMEMORY_CTRLN_110_i0_STORE = 1'b0;
    fuselector_BMEMORY_CTRLN_110_i1_LOAD = 1'b0;
    fuselector_BMEMORY_CTRLN_110_i1_STORE = 1'b0;
    selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_0 = 1'b0;
    selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_1 = 1'b0;
    selector_MUX_143_reg_11_0_0_0 = 1'b0;
    selector_MUX_144_reg_12_0_0_0 = 1'b0;
    selector_MUX_146_reg_14_0_0_0 = 1'b0;
    selector_MUX_148_reg_16_0_0_0 = 1'b0;
    selector_MUX_150_reg_18_0_0_0 = 1'b0;
    selector_MUX_153_reg_20_0_0_0 = 1'b0;
    selector_MUX_155_reg_22_0_0_0 = 1'b0;
    selector_MUX_158_reg_25_0_0_0 = 1'b0;
    selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0 = 1'b0;
    selector_MUX_179_reg_44_0_0_0 = 1'b0;
    selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_0 = 1'b0;
    selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_1 = 1'b0;
    selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_1_0 = 1'b0;
    selector_MUX_182_reg_47_0_0_0 = 1'b0;
    selector_MUX_183_reg_48_0_0_0 = 1'b0;
    selector_MUX_183_reg_48_0_0_1 = 1'b0;
    selector_MUX_183_reg_48_0_1_0 = 1'b0;
    selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_0 = 1'b0;
    selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_1 = 1'b0;
    selector_MUX_24_BMEMORY_CTRLN_110_i1_1_0_0 = 1'b0;
    selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0 = 1'b0;
    selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1 = 1'b0;
    selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0 = 1'b0;
    selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0 = 1'b0;
    selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0 = 1'b0;
    selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1 = 1'b0;
    selector_MUX_8_ARRAY_1D_STD_BRAM_NN_2_i0_0_0_0 = 1'b0;
    selector_MUX_9_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0 = 1'b0;
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
    wrenable_reg_5 = 1'b0;
    wrenable_reg_6 = 1'b0;
    wrenable_reg_7 = 1'b0;
    wrenable_reg_8 = 1'b0;
    wrenable_reg_9 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          selector_MUX_143_reg_11_0_0_0 = 1'b1;
          selector_MUX_144_reg_12_0_0_0 = 1'b1;
          selector_MUX_146_reg_14_0_0_0 = 1'b1;
          selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_5_i0_STORE = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_12 = 1'b1;
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
          selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_0 = 1'bX;
          selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_1 = 1'bX;
          selector_MUX_143_reg_11_0_0_0 = 1'bX;
          selector_MUX_144_reg_12_0_0_0 = 1'bX;
          selector_MUX_146_reg_14_0_0_0 = 1'bX;
          selector_MUX_148_reg_16_0_0_0 = 1'bX;
          selector_MUX_150_reg_18_0_0_0 = 1'bX;
          selector_MUX_153_reg_20_0_0_0 = 1'bX;
          selector_MUX_155_reg_22_0_0_0 = 1'bX;
          selector_MUX_158_reg_25_0_0_0 = 1'bX;
          selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0 = 1'bX;
          selector_MUX_179_reg_44_0_0_0 = 1'bX;
          selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_0 = 1'bX;
          selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_1 = 1'bX;
          selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_1_0 = 1'bX;
          selector_MUX_182_reg_47_0_0_0 = 1'bX;
          selector_MUX_183_reg_48_0_0_0 = 1'bX;
          selector_MUX_183_reg_48_0_0_1 = 1'bX;
          selector_MUX_183_reg_48_0_1_0 = 1'bX;
          selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_0 = 1'bX;
          selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_1 = 1'bX;
          selector_MUX_24_BMEMORY_CTRLN_110_i1_1_0_0 = 1'bX;
          selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0 = 1'bX;
          selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1 = 1'bX;
          selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0 = 1'bX;
          selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0 = 1'bX;
          selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0 = 1'bX;
          selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1 = 1'bX;
          selector_MUX_8_ARRAY_1D_STD_BRAM_NN_2_i0_0_0_0 = 1'bX;
          selector_MUX_9_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0 = 1'bX;
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
          wrenable_reg_5 = 1'bX;
          wrenable_reg_6 = 1'bX;
          wrenable_reg_7 = 1'bX;
          wrenable_reg_8 = 1'bX;
          wrenable_reg_9 = 1'bX;
          _next_state = S_0;
        end
      S_1 :
        begin
          wrenable_reg_10 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_12 = 1'b1;
          wrenable_reg_13 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29574 == 1'b1)
            begin
              _next_state = S_2;
              wrenable_reg_10 = 1'b0;
            end
          else
            begin
              _next_state = S_3;
            end
        end
      S_3 :
        begin
          fuselector_PROXY_CTRLN_6_i0_STORE = 1'b1;
          _next_state = S_4;
        end
      S_2 :
        begin
          selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0 = 1'b1;
          selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_6_i0_STORE = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          if (OUT_CONDITION_astarF_28877_29599 == 1'b1)
            begin
              _next_state = S_1;
            end
          else
            begin
              _next_state = S_5;
            end
        end
      S_5 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE = 1'b1;
          wrenable_reg_14 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29618 == 1'b1)
            begin
              _next_state = S_5;
            end
          else
            begin
              _next_state = S_6;
              wrenable_reg_14 = 1'b0;
            end
        end
      S_6 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_STORE = 1'b1;
          selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_0 = 1'b1;
          selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_1_0 = 1'b1;
          selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1 = 1'b1;
          selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_5_i0_STORE = 1'b1;
          _next_state = S_7;
        end
      S_7 :
        begin
          wrenable_reg_15 = 1'b1;
          wrenable_reg_16 = 1'b1;
          _next_state = S_8;
        end
      S_8 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_STORE = 1'b1;
          selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_1 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29633 == 1'b1)
            begin
              _next_state = S_9;
            end
          else
            begin
              _next_state = S_39;
              done_port = 1'b1;
            end
        end
      S_39 :
        begin
          _next_state = S_0;
        end
      S_9 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD = 1'b1;
          wrenable_reg_17 = 1'b1;
          _next_state = S_10;
        end
      S_10 :
        begin
          selector_MUX_150_reg_18_0_0_0 = 1'b1;
          selector_MUX_153_reg_20_0_0_0 = 1'b1;
          selector_MUX_155_reg_22_0_0_0 = 1'b1;
          wrenable_reg_18 = 1'b1;
          wrenable_reg_20 = 1'b1;
          wrenable_reg_22 = 1'b1;
          _next_state = S_11;
        end
      S_11 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_LOAD = 1'b1;
          selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_1 = 1'b1;
          wrenable_reg_19 = 1'b1;
          wrenable_reg_20 = 1'b1;
          wrenable_reg_21 = 1'b1;
          _next_state = S_12;
        end
      S_12 :
        begin
          wrenable_reg_18 = 1'b1;
          wrenable_reg_22 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29832 == 1'b1)
            begin
              _next_state = S_11;
            end
          else
            begin
              _next_state = S_13;
              wrenable_reg_18 = 1'b0;
            end
        end
      S_13 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_STORE = 1'b1;
          selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_0 = 1'b1;
          selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1 = 1'b1;
          selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_5_i0_STORE = 1'b1;
          _next_state = S_14;
        end
      S_14 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD = 1'b1;
          _next_state = S_15;
        end
      S_15 :
        begin
          wrenable_reg_23 = 1'b1;
          wrenable_reg_24 = 1'b1;
          wrenable_reg_25 = 1'b1;
          _next_state = S_16;
        end
      S_16 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_STORE = 1'b1;
          selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_1_0 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29834 == 1'b0)
            begin
              _next_state = S_17;
            end
          else
            begin
              _next_state = S_37;
              done_port = 1'b1;
            end
        end
      S_37 :
        begin
          _next_state = S_0;
        end
      S_17 :
        begin
          selector_MUX_183_reg_48_0_1_0 = 1'b1;
          selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0 = 1'b1;
          selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_5_i0_STORE = 1'b1;
          wrenable_reg_48 = 1'b1;
          _next_state = S_18;
        end
      S_18 :
        begin
          wrenable_reg_26 = 1'b1;
          wrenable_reg_27 = 1'b1;
          wrenable_reg_28 = 1'b1;
          wrenable_reg_29 = 1'b1;
          wrenable_reg_30 = 1'b1;
          _next_state = S_19;
        end
      S_19 :
        begin
          fuselector_BMEMORY_CTRLN_110_i1_LOAD = 1'b1;
          selector_MUX_24_BMEMORY_CTRLN_110_i1_1_0_0 = 1'b1;
          _next_state = S_20;
        end
      S_20 :
        begin
          selector_MUX_182_reg_47_0_0_0 = 1'b1;
          wrenable_reg_31 = 1'b1;
          wrenable_reg_32 = 1'b1;
          wrenable_reg_47 = 1'b1;
          wrenable_reg_48 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29840 == 1'b1)
            begin
              _next_state = S_21;
              selector_MUX_182_reg_47_0_0_0 = 1'b0;
              wrenable_reg_47 = 1'b0;
              wrenable_reg_48 = 1'b0;
            end
          else
            begin
              _next_state = S_34;
              wrenable_reg_31 = 1'b0;
              wrenable_reg_32 = 1'b0;
            end
        end
      S_21 :
        begin
          fuselector_BMEMORY_CTRLN_110_i0_LOAD = 1'b1;
          fuselector_BMEMORY_CTRLN_110_i1_LOAD = 1'b1;
          selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_1 = 1'b1;
          wrenable_reg_33 = 1'b1;
          _next_state = S_22;
        end
      S_22 :
        begin
          wrenable_reg_34 = 1'b1;
          wrenable_reg_35 = 1'b1;
          _next_state = S_23;
        end
      S_23 :
        begin
          selector_MUX_182_reg_47_0_0_0 = 1'b1;
          wrenable_reg_47 = 1'b1;
          wrenable_reg_48 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29847 == 1'b1)
            begin
              _next_state = S_24;
              selector_MUX_182_reg_47_0_0_0 = 1'b0;
              wrenable_reg_47 = 1'b0;
              wrenable_reg_48 = 1'b0;
            end
          else
            begin
              _next_state = S_34;
            end
        end
      S_24 :
        begin
          fuselector_BMEMORY_CTRLN_110_i0_STORE = 1'b1;
          _next_state = S_25;
        end
      S_25 :
        begin
          selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_5_i0_LOAD = 1'b1;
          _next_state = S_26;
        end
      S_26 :
        begin
          wrenable_reg_36 = 1'b1;
          wrenable_reg_37 = 1'b1;
          wrenable_reg_38 = 1'b1;
          wrenable_reg_39 = 1'b1;
          _next_state = S_27;
        end
      S_27 :
        begin
          selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1 = 1'b1;
          fuselector_PROXY_CTRLN_6_i0_LOAD = 1'b1;
          wrenable_reg_40 = 1'b1;
          _next_state = S_28;
        end
      S_28 :
        begin
          fuselector_BMEMORY_CTRLN_110_i0_LOAD = 1'b1;
          selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_0 = 1'b1;
          wrenable_reg_41 = 1'b1;
          _next_state = S_29;
        end
      S_29 :
        begin
          selector_MUX_179_reg_44_0_0_0 = 1'b1;
          wrenable_reg_42 = 1'b1;
          wrenable_reg_43 = 1'b1;
          wrenable_reg_44 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29863 == 1'b1)
            begin
              _next_state = S_31;
              wrenable_reg_43 = 1'b0;
            end
          else
            begin
              _next_state = S_30;
              selector_MUX_179_reg_44_0_0_0 = 1'b0;
              wrenable_reg_44 = 1'b0;
            end
        end
      S_30 :
        begin
          wrenable_reg_44 = 1'b1;
          _next_state = S_31;
        end
      S_31 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_STORE = 1'b1;
          selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0 = 1'b1;
          wrenable_reg_45 = 1'b1;
          _next_state = S_32;
        end
      S_32 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE = 1'b1;
          selector_MUX_8_ARRAY_1D_STD_BRAM_NN_2_i0_0_0_0 = 1'b1;
          selector_MUX_9_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0 = 1'b1;
          wrenable_reg_46 = 1'b1;
          wrenable_reg_47 = 1'b1;
          _next_state = S_33;
        end
      S_33 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_STORE = 1'b1;
          selector_MUX_183_reg_48_0_0_0 = 1'b1;
          selector_MUX_183_reg_48_0_1_0 = 1'b1;
          wrenable_reg_48 = 1'b1;
          _next_state = S_34;
        end
      S_34 :
        begin
          selector_MUX_158_reg_25_0_0_0 = 1'b1;
          selector_MUX_183_reg_48_0_0_1 = 1'b1;
          selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_5_i0_STORE = 1'b1;
          wrenable_reg_25 = 1'b1;
          wrenable_reg_48 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29869 == 1'b1)
            begin
              _next_state = S_18;
            end
          else
            begin
              _next_state = S_35;
              selector_MUX_158_reg_25_0_0_0 = 1'b0;
              selector_MUX_183_reg_48_0_0_1 = 1'b0;
              wrenable_reg_25 = 1'b0;
              wrenable_reg_48 = 1'b0;
            end
        end
      S_35 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_LOAD = 1'b1;
          _next_state = S_36;
        end
      S_36 :
        begin
          selector_MUX_148_reg_16_0_0_0 = 1'b1;
          wrenable_reg_16 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29872 == 1'b1)
            begin
              _next_state = S_9;
            end
          else
            begin
              _next_state = S_38;
              done_port = 1'b1;
              selector_MUX_148_reg_16_0_0_0 = 1'b0;
              wrenable_reg_16 = 1'b0;
            end
        end
      S_38 :
        begin
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_0 = 1'bX;
          selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_1 = 1'bX;
          selector_MUX_143_reg_11_0_0_0 = 1'bX;
          selector_MUX_144_reg_12_0_0_0 = 1'bX;
          selector_MUX_146_reg_14_0_0_0 = 1'bX;
          selector_MUX_148_reg_16_0_0_0 = 1'bX;
          selector_MUX_150_reg_18_0_0_0 = 1'bX;
          selector_MUX_153_reg_20_0_0_0 = 1'bX;
          selector_MUX_155_reg_22_0_0_0 = 1'bX;
          selector_MUX_158_reg_25_0_0_0 = 1'bX;
          selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0 = 1'bX;
          selector_MUX_179_reg_44_0_0_0 = 1'bX;
          selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_0 = 1'bX;
          selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_1 = 1'bX;
          selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_1_0 = 1'bX;
          selector_MUX_182_reg_47_0_0_0 = 1'bX;
          selector_MUX_183_reg_48_0_0_0 = 1'bX;
          selector_MUX_183_reg_48_0_0_1 = 1'bX;
          selector_MUX_183_reg_48_0_1_0 = 1'bX;
          selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_0 = 1'bX;
          selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_1 = 1'bX;
          selector_MUX_24_BMEMORY_CTRLN_110_i1_1_0_0 = 1'bX;
          selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0 = 1'bX;
          selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1 = 1'bX;
          selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0 = 1'bX;
          selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0 = 1'bX;
          selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0 = 1'bX;
          selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1 = 1'bX;
          selector_MUX_8_ARRAY_1D_STD_BRAM_NN_2_i0_0_0_0 = 1'bX;
          selector_MUX_9_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0 = 1'bX;
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
  parameter MEM_var_28861_28879=512, MEM_var_28862_28877=2048, MEM_var_28864_28877=2560, MEM_var_28865_28877=3072, MEM_var_28866_28877=3584, MEM_var_28867_28877=4096, MEM_var_28868_28879=1024;
  // IN
  input clock;
  input reset;
  input start_port;
  input [31:0] a;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [25:0] S_addr_ram;
  input [63:0] S_Wdata_ram;
  input [11:0] S_data_ram_size;
  input [63:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [63:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [63:0] proxy_out1_28861;
  input [63:0] proxy_out1_28868;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [25:0] Min_addr_ram;
  input [63:0] Min_Wdata_ram;
  input [11:0] Min_data_ram_size;
  // OUT
  output done_port;
  output [63:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [63:0] proxy_in1_28861;
  output [25:0] proxy_in2_28861;
  output [11:0] proxy_in3_28861;
  output [1:0] proxy_sel_LOAD_28861;
  output [1:0] proxy_sel_STORE_28861;
  output [63:0] proxy_in1_28868;
  output [25:0] proxy_in2_28868;
  output [11:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [25:0] Mout_addr_ram;
  output [63:0] Mout_Wdata_ram;
  output [11:0] Mout_data_ram_size;
  // Component and signal declarations
  wire OUT_CONDITION_astarF_28877_29574;
  wire OUT_CONDITION_astarF_28877_29599;
  wire OUT_CONDITION_astarF_28877_29618;
  wire OUT_CONDITION_astarF_28877_29633;
  wire OUT_CONDITION_astarF_28877_29832;
  wire OUT_CONDITION_astarF_28877_29834;
  wire OUT_CONDITION_astarF_28877_29840;
  wire OUT_CONDITION_astarF_28877_29847;
  wire OUT_CONDITION_astarF_28877_29863;
  wire OUT_CONDITION_astarF_28877_29869;
  wire OUT_CONDITION_astarF_28877_29872;
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
  wire fuselector_BMEMORY_CTRLN_110_i0_LOAD;
  wire fuselector_BMEMORY_CTRLN_110_i0_STORE;
  wire fuselector_BMEMORY_CTRLN_110_i1_LOAD;
  wire fuselector_BMEMORY_CTRLN_110_i1_STORE;
  wire fuselector_PROXY_CTRLN_5_i0_LOAD;
  wire fuselector_PROXY_CTRLN_5_i0_STORE;
  wire fuselector_PROXY_CTRLN_6_i0_LOAD;
  wire fuselector_PROXY_CTRLN_6_i0_STORE;
  wire selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_0;
  wire selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_1;
  wire selector_MUX_143_reg_11_0_0_0;
  wire selector_MUX_144_reg_12_0_0_0;
  wire selector_MUX_146_reg_14_0_0_0;
  wire selector_MUX_148_reg_16_0_0_0;
  wire selector_MUX_150_reg_18_0_0_0;
  wire selector_MUX_153_reg_20_0_0_0;
  wire selector_MUX_155_reg_22_0_0_0;
  wire selector_MUX_158_reg_25_0_0_0;
  wire selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0;
  wire selector_MUX_179_reg_44_0_0_0;
  wire selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_0;
  wire selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_1;
  wire selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_1_0;
  wire selector_MUX_182_reg_47_0_0_0;
  wire selector_MUX_183_reg_48_0_0_0;
  wire selector_MUX_183_reg_48_0_0_1;
  wire selector_MUX_183_reg_48_0_1_0;
  wire selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_0;
  wire selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_1;
  wire selector_MUX_24_BMEMORY_CTRLN_110_i1_1_0_0;
  wire selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0;
  wire selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1;
  wire selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0;
  wire selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0;
  wire selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0;
  wire selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1;
  wire selector_MUX_8_ARRAY_1D_STD_BRAM_NN_2_i0_0_0_0;
  wire selector_MUX_9_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0;
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
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  controller_astarF Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_STORE), .fuselector_BMEMORY_CTRLN_110_i0_LOAD(fuselector_BMEMORY_CTRLN_110_i0_LOAD), .fuselector_BMEMORY_CTRLN_110_i0_STORE(fuselector_BMEMORY_CTRLN_110_i0_STORE), .fuselector_BMEMORY_CTRLN_110_i1_LOAD(fuselector_BMEMORY_CTRLN_110_i1_LOAD), .fuselector_BMEMORY_CTRLN_110_i1_STORE(fuselector_BMEMORY_CTRLN_110_i1_STORE), .selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_0(selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_0), .selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_1(selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_1), .selector_MUX_143_reg_11_0_0_0(selector_MUX_143_reg_11_0_0_0), .selector_MUX_144_reg_12_0_0_0(selector_MUX_144_reg_12_0_0_0), .selector_MUX_146_reg_14_0_0_0(selector_MUX_146_reg_14_0_0_0), .selector_MUX_148_reg_16_0_0_0(selector_MUX_148_reg_16_0_0_0), .selector_MUX_150_reg_18_0_0_0(selector_MUX_150_reg_18_0_0_0), .selector_MUX_153_reg_20_0_0_0(selector_MUX_153_reg_20_0_0_0), .selector_MUX_155_reg_22_0_0_0(selector_MUX_155_reg_22_0_0_0), .selector_MUX_158_reg_25_0_0_0(selector_MUX_158_reg_25_0_0_0), .selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0(selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0), .selector_MUX_179_reg_44_0_0_0(selector_MUX_179_reg_44_0_0_0), .selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_0(selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_0), .selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_1(selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_1), .selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_1_0(selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_1_0), .selector_MUX_182_reg_47_0_0_0(selector_MUX_182_reg_47_0_0_0), .selector_MUX_183_reg_48_0_0_0(selector_MUX_183_reg_48_0_0_0), .selector_MUX_183_reg_48_0_0_1(selector_MUX_183_reg_48_0_0_1), .selector_MUX_183_reg_48_0_1_0(selector_MUX_183_reg_48_0_1_0), .selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_0(selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_0), .selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_1(selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_1), .selector_MUX_24_BMEMORY_CTRLN_110_i1_1_0_0(selector_MUX_24_BMEMORY_CTRLN_110_i1_1_0_0), .selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0(selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0), .selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1(selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1), .selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0(selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0), .selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0(selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0), .selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0(selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0), .selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1(selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1), .selector_MUX_8_ARRAY_1D_STD_BRAM_NN_2_i0_0_0_0(selector_MUX_8_ARRAY_1D_STD_BRAM_NN_2_i0_0_0_0), .selector_MUX_9_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0(selector_MUX_9_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0), .fuselector_PROXY_CTRLN_5_i0_LOAD(fuselector_PROXY_CTRLN_5_i0_LOAD), .fuselector_PROXY_CTRLN_5_i0_STORE(fuselector_PROXY_CTRLN_5_i0_STORE), .fuselector_PROXY_CTRLN_6_i0_LOAD(fuselector_PROXY_CTRLN_6_i0_LOAD), .fuselector_PROXY_CTRLN_6_i0_STORE(fuselector_PROXY_CTRLN_6_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_29(wrenable_reg_29), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_30(wrenable_reg_30), .wrenable_reg_31(wrenable_reg_31), .wrenable_reg_32(wrenable_reg_32), .wrenable_reg_33(wrenable_reg_33), .wrenable_reg_34(wrenable_reg_34), .wrenable_reg_35(wrenable_reg_35), .wrenable_reg_36(wrenable_reg_36), .wrenable_reg_37(wrenable_reg_37), .wrenable_reg_38(wrenable_reg_38), .wrenable_reg_39(wrenable_reg_39), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_40(wrenable_reg_40), .wrenable_reg_41(wrenable_reg_41), .wrenable_reg_42(wrenable_reg_42), .wrenable_reg_43(wrenable_reg_43), .wrenable_reg_44(wrenable_reg_44), .wrenable_reg_45(wrenable_reg_45), .wrenable_reg_46(wrenable_reg_46), .wrenable_reg_47(wrenable_reg_47), .wrenable_reg_48(wrenable_reg_48), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_astarF_28877_29574(OUT_CONDITION_astarF_28877_29574), .OUT_CONDITION_astarF_28877_29599(OUT_CONDITION_astarF_28877_29599), .OUT_CONDITION_astarF_28877_29618(OUT_CONDITION_astarF_28877_29618), .OUT_CONDITION_astarF_28877_29633(OUT_CONDITION_astarF_28877_29633), .OUT_CONDITION_astarF_28877_29832(OUT_CONDITION_astarF_28877_29832), .OUT_CONDITION_astarF_28877_29834(OUT_CONDITION_astarF_28877_29834), .OUT_CONDITION_astarF_28877_29840(OUT_CONDITION_astarF_28877_29840), .OUT_CONDITION_astarF_28877_29847(OUT_CONDITION_astarF_28877_29847), .OUT_CONDITION_astarF_28877_29863(OUT_CONDITION_astarF_28877_29863), .OUT_CONDITION_astarF_28877_29869(OUT_CONDITION_astarF_28877_29869), .OUT_CONDITION_astarF_28877_29872(OUT_CONDITION_astarF_28877_29872), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_astarF #(.MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28862_28877(MEM_var_28862_28877), .MEM_var_28864_28877(MEM_var_28864_28877), .MEM_var_28865_28877(MEM_var_28865_28877), .MEM_var_28866_28877(MEM_var_28866_28877), .MEM_var_28867_28877(MEM_var_28867_28877), .MEM_var_28868_28879(MEM_var_28868_28879)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .proxy_in1_28861(proxy_in1_28861), .proxy_in2_28861(proxy_in2_28861), .proxy_in3_28861(proxy_in3_28861), .proxy_sel_LOAD_28861(proxy_sel_LOAD_28861), .proxy_sel_STORE_28861(proxy_sel_STORE_28861), .proxy_in1_28868(proxy_in1_28868), .proxy_in2_28868(proxy_in2_28868), .proxy_in3_28868(proxy_in3_28868), .proxy_sel_LOAD_28868(proxy_sel_LOAD_28868), .proxy_sel_STORE_28868(proxy_sel_STORE_28868), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_CONDITION_astarF_28877_29574(OUT_CONDITION_astarF_28877_29574), .OUT_CONDITION_astarF_28877_29599(OUT_CONDITION_astarF_28877_29599), .OUT_CONDITION_astarF_28877_29618(OUT_CONDITION_astarF_28877_29618), .OUT_CONDITION_astarF_28877_29633(OUT_CONDITION_astarF_28877_29633), .OUT_CONDITION_astarF_28877_29832(OUT_CONDITION_astarF_28877_29832), .OUT_CONDITION_astarF_28877_29834(OUT_CONDITION_astarF_28877_29834), .OUT_CONDITION_astarF_28877_29840(OUT_CONDITION_astarF_28877_29840), .OUT_CONDITION_astarF_28877_29847(OUT_CONDITION_astarF_28877_29847), .OUT_CONDITION_astarF_28877_29863(OUT_CONDITION_astarF_28877_29863), .OUT_CONDITION_astarF_28877_29869(OUT_CONDITION_astarF_28877_29869), .OUT_CONDITION_astarF_28877_29872(OUT_CONDITION_astarF_28877_29872), .clock(clock), .reset(reset), .in_port_a(a), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28868(proxy_out1_28868), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_1_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_2_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_3_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_4_i0_STORE), .fuselector_BMEMORY_CTRLN_110_i0_LOAD(fuselector_BMEMORY_CTRLN_110_i0_LOAD), .fuselector_BMEMORY_CTRLN_110_i0_STORE(fuselector_BMEMORY_CTRLN_110_i0_STORE), .fuselector_BMEMORY_CTRLN_110_i1_LOAD(fuselector_BMEMORY_CTRLN_110_i1_LOAD), .fuselector_BMEMORY_CTRLN_110_i1_STORE(fuselector_BMEMORY_CTRLN_110_i1_STORE), .selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_0(selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_0), .selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_1(selector_MUX_12_ARRAY_1D_STD_BRAM_NN_3_i0_0_0_1), .selector_MUX_143_reg_11_0_0_0(selector_MUX_143_reg_11_0_0_0), .selector_MUX_144_reg_12_0_0_0(selector_MUX_144_reg_12_0_0_0), .selector_MUX_146_reg_14_0_0_0(selector_MUX_146_reg_14_0_0_0), .selector_MUX_148_reg_16_0_0_0(selector_MUX_148_reg_16_0_0_0), .selector_MUX_150_reg_18_0_0_0(selector_MUX_150_reg_18_0_0_0), .selector_MUX_153_reg_20_0_0_0(selector_MUX_153_reg_20_0_0_0), .selector_MUX_155_reg_22_0_0_0(selector_MUX_155_reg_22_0_0_0), .selector_MUX_158_reg_25_0_0_0(selector_MUX_158_reg_25_0_0_0), .selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0(selector_MUX_16_ARRAY_1D_STD_BRAM_NN_4_i0_0_0_0), .selector_MUX_179_reg_44_0_0_0(selector_MUX_179_reg_44_0_0_0), .selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_0(selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_0), .selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_1(selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_0_1), .selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_1_0(selector_MUX_17_ARRAY_1D_STD_BRAM_NN_4_i0_1_1_0), .selector_MUX_182_reg_47_0_0_0(selector_MUX_182_reg_47_0_0_0), .selector_MUX_183_reg_48_0_0_0(selector_MUX_183_reg_48_0_0_0), .selector_MUX_183_reg_48_0_0_1(selector_MUX_183_reg_48_0_0_1), .selector_MUX_183_reg_48_0_1_0(selector_MUX_183_reg_48_0_1_0), .selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_0(selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_0), .selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_1(selector_MUX_21_BMEMORY_CTRLN_110_i0_1_0_1), .selector_MUX_24_BMEMORY_CTRLN_110_i1_1_0_0(selector_MUX_24_BMEMORY_CTRLN_110_i1_1_0_0), .selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0(selector_MUX_47_PROXY_CTRLN_5_i0_0_0_0), .selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1(selector_MUX_47_PROXY_CTRLN_5_i0_0_0_1), .selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0(selector_MUX_48_PROXY_CTRLN_5_i0_1_0_0), .selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0(selector_MUX_51_PROXY_CTRLN_6_i0_0_0_0), .selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0(selector_MUX_52_PROXY_CTRLN_6_i0_1_0_0), .selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1(selector_MUX_52_PROXY_CTRLN_6_i0_1_0_1), .selector_MUX_8_ARRAY_1D_STD_BRAM_NN_2_i0_0_0_0(selector_MUX_8_ARRAY_1D_STD_BRAM_NN_2_i0_0_0_0), .selector_MUX_9_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0(selector_MUX_9_ARRAY_1D_STD_BRAM_NN_2_i0_1_0_0), .fuselector_PROXY_CTRLN_5_i0_LOAD(fuselector_PROXY_CTRLN_5_i0_LOAD), .fuselector_PROXY_CTRLN_5_i0_STORE(fuselector_PROXY_CTRLN_5_i0_STORE), .fuselector_PROXY_CTRLN_6_i0_LOAD(fuselector_PROXY_CTRLN_6_i0_LOAD), .fuselector_PROXY_CTRLN_6_i0_STORE(fuselector_PROXY_CTRLN_6_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_29(wrenable_reg_29), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_30(wrenable_reg_30), .wrenable_reg_31(wrenable_reg_31), .wrenable_reg_32(wrenable_reg_32), .wrenable_reg_33(wrenable_reg_33), .wrenable_reg_34(wrenable_reg_34), .wrenable_reg_35(wrenable_reg_35), .wrenable_reg_36(wrenable_reg_36), .wrenable_reg_37(wrenable_reg_37), .wrenable_reg_38(wrenable_reg_38), .wrenable_reg_39(wrenable_reg_39), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_40(wrenable_reg_40), .wrenable_reg_41(wrenable_reg_41), .wrenable_reg_42(wrenable_reg_42), .wrenable_reg_43(wrenable_reg_43), .wrenable_reg_44(wrenable_reg_44), .wrenable_reg_45(wrenable_reg_45), .wrenable_reg_46(wrenable_reg_46), .wrenable_reg_47(wrenable_reg_47), .wrenable_reg_48(wrenable_reg_48), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
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

// Datapath RTL description for make_oriented
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_make_oriented(clock, reset, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, proxy_out1_28861, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_out1_28868, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE, selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0, selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0, selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1, selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2, selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0, selector_MUX_40_reg_10_0_0_0, selector_MUX_41_reg_11_0_0_0, selector_MUX_41_reg_11_0_0_1, selector_MUX_42_reg_12_0_0_0, selector_MUX_52_reg_4_0_0_0, selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0, selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_make_oriented_28870_29258, OUT_CONDITION_make_oriented_28870_29274, OUT_MULTIIF_make_oriented_28870_30616);
  parameter MEM_var_28859_28870=1536, MEM_var_28861_28879=512, MEM_var_28868_28879=1024;
  // IN
  input clock;
  input reset;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [25:0] S_addr_ram;
  input [63:0] S_Wdata_ram;
  input [11:0] S_data_ram_size;
  input [63:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [63:0] proxy_out1_28861;
  input [63:0] proxy_out1_28868;
  input fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE;
  input selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0;
  input selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0;
  input selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1;
  input selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2;
  input selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0;
  input selector_MUX_40_reg_10_0_0_0;
  input selector_MUX_41_reg_11_0_0_0;
  input selector_MUX_41_reg_11_0_0_1;
  input selector_MUX_42_reg_12_0_0_0;
  input selector_MUX_52_reg_4_0_0_0;
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
  output [63:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [63:0] proxy_in1_28861;
  output [25:0] proxy_in2_28861;
  output [11:0] proxy_in3_28861;
  output [1:0] proxy_sel_LOAD_28861;
  output [1:0] proxy_sel_STORE_28861;
  output [63:0] proxy_in1_28868;
  output [25:0] proxy_in2_28868;
  output [11:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output OUT_CONDITION_make_oriented_28870_29258;
  output OUT_CONDITION_make_oriented_28870_29274;
  output [1:0] OUT_MULTIIF_make_oriented_28870_30616;
  // Component and signal declarations
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_2_i0_out1_1;
  wire [7:0] null_out_signal_array_28859_0_out1_0;
  wire [7:0] null_out_signal_array_28859_0_out1_1;
  wire [31:0] null_out_signal_array_28859_0_proxy_out1_0;
  wire [31:0] null_out_signal_array_28859_0_proxy_out1_1;
  wire [7:0] out_IUdata_converter_FU_28_i0_fu_make_oriented_28870_29203;
  wire [7:0] out_MUX_12_PROXY_CTRLN_2_i0_0_0_0;
  wire [12:0] out_MUX_13_PROXY_CTRLN_2_i0_1_0_0;
  wire [12:0] out_MUX_13_PROXY_CTRLN_2_i0_1_0_1;
  wire [12:0] out_MUX_13_PROXY_CTRLN_2_i0_1_0_2;
  wire [12:0] out_MUX_13_PROXY_CTRLN_2_i0_1_1_0;
  wire [8:0] out_MUX_40_reg_10_0_0_0;
  wire [31:0] out_MUX_41_reg_11_0_0_0;
  wire [31:0] out_MUX_41_reg_11_0_0_1;
  wire [4:0] out_MUX_42_reg_12_0_0_0;
  wire [31:0] out_MUX_52_reg_4_0_0_0;
  wire [7:0] out_MUX_8_PROXY_CTRLN_1_i0_0_0_0;
  wire [12:0] out_MUX_9_PROXY_CTRLN_1_i0_1_0_0;
  wire [7:0] out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0;
  wire signed [7:0] out_UIdata_converter_FU_29_i0_fu_make_oriented_28870_29192;
  wire [7:0] out_UUdata_converter_FU_15_i0_fu_make_oriented_28870_29154;
  wire [10:0] out_UUdata_converter_FU_16_i0_fu_make_oriented_28870_29157;
  wire [11:0] out_UUdata_converter_FU_17_i0_fu_make_oriented_28870_29159;
  wire [8:0] out_UUdata_converter_FU_18_i0_fu_make_oriented_28870_30337;
  wire [4:0] out_UUdata_converter_FU_26_i0_fu_make_oriented_28870_29254;
  wire [10:0] out_UUdata_converter_FU_27_i0_fu_make_oriented_28870_29272;
  wire [12:0] out_UUdata_converter_FU_7_i0_fu_make_oriented_28870_29137;
  wire [7:0] out_UUdata_converter_FU_8_i0_fu_make_oriented_28870_29155;
  wire [9:0] out_addr_expr_FU_5_i0_fu_make_oriented_28870_30311;
  wire [12:0] out_addr_expr_FU_6_i0_fu_make_oriented_28870_30314;
  wire [10:0] out_addr_expr_FU_9_i0_fu_make_oriented_28870_30396;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [12:0] out_const_10;
  wire [1:0] out_const_11;
  wire [2:0] out_const_12;
  wire [5:0] out_const_13;
  wire [7:0] out_const_14;
  wire [10:0] out_const_15;
  wire [9:0] out_const_16;
  wire [7:0] out_const_2;
  wire [4:0] out_const_3;
  wire out_const_4;
  wire [3:0] out_const_5;
  wire [4:0] out_const_6;
  wire [4:0] out_const_7;
  wire [8:0] out_const_8;
  wire [7:0] out_const_9;
  wire [12:0] out_conv_out_UUdata_converter_FU_16_i0_fu_make_oriented_28870_29157_11_13;
  wire [12:0] out_conv_out_addr_expr_FU_5_i0_fu_make_oriented_28870_30311_10_13;
  wire [31:0] out_conv_out_const_10_13_32;
  wire [31:0] out_conv_out_const_15_11_32;
  wire [31:0] out_conv_out_const_16_10_32;
  wire [5:0] out_conv_out_const_3_5_6;
  wire [12:0] out_conv_out_reg_0_reg_0_10_13;
  wire [12:0] out_conv_out_reg_15_reg_15_11_13;
  wire [12:0] out_conv_out_reg_16_reg_16_11_13;
  wire [12:0] out_conv_out_reg_2_reg_2_11_13;
  wire [12:0] out_conv_out_reg_7_reg_7_11_13;
  wire [31:0] out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_13_32;
  wire [31:0] out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_3_13_32;
  wire [8:0] out_conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_4_1_9;
  wire [4:0] out_conv_out_u_assign_conn_obj_5_ASSIGN_UNSIGNED_FU_u_assign_5_1_5;
  wire [12:0] out_conv_out_ui_pointer_plus_expr_FU_16_16_16_63_i0_fu_make_oriented_28870_30346_11_13;
  wire out_ge_expr_FU_8_0_8_37_i0_fu_make_oriented_28870_30375;
  wire [7:0] out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_0;
  wire [7:0] out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_1;
  wire out_lt_expr_FU_8_0_8_38_i0_fu_make_oriented_28870_29256;
  wire [1:0] out_multi_read_cond_FU_35_i0_fu_make_oriented_28870_30616;
  wire out_read_cond_FU_30_i0_fu_make_oriented_28870_29258;
  wire out_read_cond_FU_32_i0_fu_make_oriented_28870_29274;
  wire [9:0] out_reg_0_reg_0;
  wire [8:0] out_reg_10_reg_10;
  wire [31:0] out_reg_11_reg_11;
  wire [4:0] out_reg_12_reg_12;
  wire [31:0] out_reg_13_reg_13;
  wire out_reg_14_reg_14;
  wire [10:0] out_reg_15_reg_15;
  wire [10:0] out_reg_16_reg_16;
  wire out_reg_17_reg_17;
  wire out_reg_18_reg_18;
  wire [7:0] out_reg_19_reg_19;
  wire [12:0] out_reg_1_reg_1;
  wire [10:0] out_reg_2_reg_2;
  wire [1:0] out_reg_3_reg_3;
  wire [31:0] out_reg_4_reg_4;
  wire [31:0] out_reg_5_reg_5;
  wire [7:0] out_reg_6_reg_6;
  wire [10:0] out_reg_7_reg_7;
  wire out_reg_8_reg_8;
  wire [7:0] out_reg_9_reg_9;
  wire out_truth_and_expr_FU_1_1_1_39_i0_fu_make_oriented_28870_30622;
  wire out_truth_not_expr_FU_1_1_40_i0_fu_make_oriented_28870_30619;
  wire [12:0] out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2;
  wire [12:0] out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_3;
  wire [0:0] out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_4;
  wire [0:0] out_u_assign_conn_obj_5_ASSIGN_UNSIGNED_FU_u_assign_5;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_41_i0_fu_make_oriented_28870_30548;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_41_i1_fu_make_oriented_28870_30594;
  wire [0:0] out_ui_bit_and_expr_FU_1_1_1_42_i0_fu_make_oriented_28870_29257;
  wire [5:0] out_ui_bit_and_expr_FU_8_0_8_43_i0_fu_make_oriented_28870_30527;
  wire [7:0] out_ui_bit_ior_concat_expr_FU_44_i0_fu_make_oriented_28870_29156;
  wire [31:0] out_ui_bit_ior_concat_expr_FU_45_i0_fu_make_oriented_28870_29225;
  wire [9:0] out_ui_bit_ior_concat_expr_FU_46_i0_fu_make_oriented_28870_30340;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_47_i0_fu_make_oriented_28870_30543;
  wire [8:0] out_ui_lshift_expr_FU_16_0_16_48_i0_fu_make_oriented_28870_30607;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_49_i0_fu_make_oriented_28870_30591;
  wire [7:0] out_ui_lshift_expr_FU_8_0_8_50_i0_fu_make_oriented_28870_30523;
  wire [1:0] out_ui_minus_expr_FU_8_8_8_51_i0_fu_make_oriented_28870_30520;
  wire out_ui_ne_expr_FU_8_0_8_52_i0_fu_make_oriented_28870_30427;
  wire out_ui_ne_expr_FU_8_0_8_53_i0_fu_make_oriented_28870_30429;
  wire out_ui_ne_expr_FU_8_8_8_54_i0_fu_make_oriented_28870_29255;
  wire [7:0] out_ui_negate_expr_FU_8_8_55_i0_fu_make_oriented_28870_29196;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_56_i0_fu_make_oriented_28870_29230;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_57_i0_fu_make_oriented_28870_29234;
  wire [30:0] out_ui_plus_expr_FU_32_0_32_58_i0_fu_make_oriented_28870_30588;
  wire [4:0] out_ui_plus_expr_FU_8_0_8_59_i0_fu_make_oriented_28870_29185;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_60_i0_fu_make_oriented_28870_30604;
  wire [8:0] out_ui_plus_expr_FU_8_8_8_61_i0_fu_make_oriented_28870_30540;
  wire [10:0] out_ui_pointer_plus_expr_FU_16_0_16_62_i0_fu_make_oriented_28870_30329;
  wire [10:0] out_ui_pointer_plus_expr_FU_16_16_16_63_i0_fu_make_oriented_28870_30346;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_64_i0_fu_make_oriented_28870_30538;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_65_i0_fu_make_oriented_28870_30599;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_65_i1_fu_make_oriented_28870_30611;
  wire [30:0] out_ui_rshift_expr_FU_32_0_32_66_i0_fu_make_oriented_28870_30584;
  wire [1:0] out_ui_rshift_expr_FU_8_0_8_67_i0_fu_make_oriented_28870_30513;
  wire [1:0] out_ui_rshift_expr_FU_8_0_8_67_i1_fu_make_oriented_28870_30518;
  wire [3:0] out_ui_rshift_expr_FU_8_0_8_68_i0_fu_make_oriented_28870_30533;
  wire [7:0] out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_6;
  wire [7:0] out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_7;
  wire [1:0] sig_in_bus_mergerSout_DataRdy0_0;
  wire [63:0] sig_in_bus_mergerSout_Rdata_ram1_0;
  wire [63:0] sig_in_bus_mergerproxy_in1_288612_0;
  wire [63:0] sig_in_bus_mergerproxy_in1_288683_0;
  wire [25:0] sig_in_bus_mergerproxy_in2_288614_0;
  wire [25:0] sig_in_bus_mergerproxy_in2_288685_0;
  wire [11:0] sig_in_bus_mergerproxy_in3_288616_0;
  wire [11:0] sig_in_bus_mergerproxy_in3_288687_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_288618_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_288689_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886110_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886811_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy0_0;
  wire [63:0] sig_in_vector_bus_mergerSout_Rdata_ram1_0;
  wire [63:0] sig_in_vector_bus_mergerproxy_in1_288612_0;
  wire [63:0] sig_in_vector_bus_mergerproxy_in1_288683_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in2_288614_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in2_288685_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in3_288616_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in3_288687_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_288618_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_288689_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886110_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886811_0;
  wire [1:0] sig_out_bus_mergerSout_DataRdy0_;
  wire [63:0] sig_out_bus_mergerSout_Rdata_ram1_;
  wire [63:0] sig_out_bus_mergerproxy_in1_288612_;
  wire [63:0] sig_out_bus_mergerproxy_in1_288683_;
  wire [25:0] sig_out_bus_mergerproxy_in2_288614_;
  wire [25:0] sig_out_bus_mergerproxy_in2_288685_;
  wire [11:0] sig_out_bus_mergerproxy_in3_288616_;
  wire [11:0] sig_out_bus_mergerproxy_in3_288687_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_288618_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_288689_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886110_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886811_;
  
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(13), .BITSIZE_out1(13)) ASSIGN_UNSIGNED_FU_u_assign_2 (.out1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2), .in1(out_UUdata_converter_FU_7_i0_fu_make_oriented_28870_29137));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(13), .BITSIZE_out1(13)) ASSIGN_UNSIGNED_FU_u_assign_3 (.out1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_3), .in1(out_UUdata_converter_FU_7_i0_fu_make_oriented_28870_29137));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_4 (.out1(out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_4), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_5 (.out1(out_u_assign_conn_obj_5_ASSIGN_UNSIGNED_FU_u_assign_5), .in1(out_const_0));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_6 (.out1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_6), .in1(out_const_1));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_7 (.out1(out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_7), .in1(out_const_2));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_0 (.out1(out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_0), .in1(out_const_14));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_1), .in1(out_reg_19_reg_19));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_12_PROXY_CTRLN_2_i0_0_0_0 (.out1(out_MUX_12_PROXY_CTRLN_2_i0_0_0_0), .sel(selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0), .in1(out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_0), .in2(out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_1));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_13_PROXY_CTRLN_2_i0_1_0_0 (.out1(out_MUX_13_PROXY_CTRLN_2_i0_1_0_0), .sel(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0), .in1(out_conv_out_reg_7_reg_7_11_13), .in2(out_conv_out_reg_16_reg_16_11_13));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_13_PROXY_CTRLN_2_i0_1_0_1 (.out1(out_MUX_13_PROXY_CTRLN_2_i0_1_0_1), .sel(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1), .in1(out_conv_out_reg_15_reg_15_11_13), .in2(out_conv_out_UUdata_converter_FU_16_i0_fu_make_oriented_28870_29157_11_13));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_13_PROXY_CTRLN_2_i0_1_0_2 (.out1(out_MUX_13_PROXY_CTRLN_2_i0_1_0_2), .sel(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2), .in1(out_conv_out_ui_pointer_plus_expr_FU_16_16_16_63_i0_fu_make_oriented_28870_30346_11_13), .in2(out_MUX_13_PROXY_CTRLN_2_i0_1_0_0));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_13_PROXY_CTRLN_2_i0_1_1_0 (.out1(out_MUX_13_PROXY_CTRLN_2_i0_1_1_0), .sel(selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0), .in1(out_MUX_13_PROXY_CTRLN_2_i0_1_0_1), .in2(out_MUX_13_PROXY_CTRLN_2_i0_1_0_2));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_40_reg_10_0_0_0 (.out1(out_MUX_40_reg_10_0_0_0), .sel(selector_MUX_40_reg_10_0_0_0), .in1(out_conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_4_1_9), .in2(out_ui_lshift_expr_FU_16_0_16_48_i0_fu_make_oriented_28870_30607));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_41_reg_11_0_0_0 (.out1(out_MUX_41_reg_11_0_0_0), .sel(selector_MUX_41_reg_11_0_0_0), .in1(out_reg_5_reg_5), .in2(out_reg_13_reg_13));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_41_reg_11_0_0_1 (.out1(out_MUX_41_reg_11_0_0_1), .sel(selector_MUX_41_reg_11_0_0_1), .in1(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_3_13_32), .in2(out_MUX_41_reg_11_0_0_0));
  MUX_GATE #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(5)) MUX_42_reg_12_0_0_0 (.out1(out_MUX_42_reg_12_0_0_0), .sel(selector_MUX_42_reg_12_0_0_0), .in1(out_conv_out_u_assign_conn_obj_5_ASSIGN_UNSIGNED_FU_u_assign_5_1_5), .in2(out_ui_plus_expr_FU_8_0_8_59_i0_fu_make_oriented_28870_29185));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_52_reg_4_0_0_0 (.out1(out_MUX_52_reg_4_0_0_0), .sel(selector_MUX_52_reg_4_0_0_0), .in1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_13_32), .in2(out_ui_plus_expr_FU_32_0_32_56_i0_fu_make_oriented_28870_29230));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_8_PROXY_CTRLN_1_i0_0_0_0 (.out1(out_MUX_8_PROXY_CTRLN_1_i0_0_0_0), .sel(selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0), .in1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_6), .in2(out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_7));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_9_PROXY_CTRLN_1_i0_1_0_0 (.out1(out_MUX_9_PROXY_CTRLN_1_i0_1_0_0), .sel(selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0), .in1(out_conv_out_reg_0_reg_0_10_13), .in2(out_conv_out_addr_expr_FU_5_i0_fu_make_oriented_28870_30311_10_13));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_1_i0 (.out1({null_out_signal_PROXY_CTRLN_1_i0_out1_1, null_out_signal_PROXY_CTRLN_1_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288612_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288614_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288616_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_288618_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886110_0), .in1({8'b00000000, out_MUX_8_PROXY_CTRLN_1_i0_0_0_0}), .in2({13'b0000000000000, out_MUX_9_PROXY_CTRLN_1_i0_1_0_0}), .in3({6'b000000, out_conv_out_const_3_5_6}), .in4({1'b0, out_const_4}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_1_i0_STORE}), .proxy_out1(proxy_out1_28861));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_2_i0 (.out1({null_out_signal_PROXY_CTRLN_2_i0_out1_1, out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288683_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288685_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288687_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_288689_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886811_0), .in1({8'b00000000, out_MUX_12_PROXY_CTRLN_2_i0_0_0_0}), .in2({13'b0000000000000, out_MUX_13_PROXY_CTRLN_2_i0_1_1_0}), .in3({6'b000000, out_conv_out_const_3_5_6}), .in4({1'b0, out_const_4}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_2_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_2_i0_STORE}), .proxy_out1(proxy_out1_28868));
  ARRAY_1D_STD_BRAM_NN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(13), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(32), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(32), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(32), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(6), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file_a("array_ref_28859.mem"), .MEMORY_INIT_file_b("0_array_ref_28859.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28859_28870), .address_space_rangesize(512), .BUS_PIPELINED(1), .BRAM_BITSIZE(16), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) array_28859_0 (.out1({null_out_signal_array_28859_0_out1_1, null_out_signal_array_28859_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram1_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy0_0), .proxy_out1({null_out_signal_array_28859_0_proxy_out1_1, null_out_signal_array_28859_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_7}), .in2({13'b0000000000000, out_conv_out_reg_2_reg_2_11_13}), .in3({6'b000000, out_conv_out_const_3_5_6}), .in4({1'b0, out_const_4}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .proxy_in2({13'b0000000000000, 13'b0000000000000}), .proxy_in3({6'b000000, 6'b000000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerSout_DataRdy0_ (.out1(sig_out_bus_mergerSout_DataRdy0_), .in1({sig_in_bus_mergerSout_DataRdy0_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerSout_Rdata_ram1_ (.out1(sig_out_bus_mergerSout_Rdata_ram1_), .in1({sig_in_bus_mergerSout_Rdata_ram1_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerproxy_in1_288612_ (.out1(sig_out_bus_mergerproxy_in1_288612_), .in1({sig_in_bus_mergerproxy_in1_288612_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerproxy_in1_288683_ (.out1(sig_out_bus_mergerproxy_in1_288683_), .in1({sig_in_bus_mergerproxy_in1_288683_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in2_288614_ (.out1(sig_out_bus_mergerproxy_in2_288614_), .in1({sig_in_bus_mergerproxy_in2_288614_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in2_288685_ (.out1(sig_out_bus_mergerproxy_in2_288685_), .in1({sig_in_bus_mergerproxy_in2_288685_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(1), .BITSIZE_out1(12)) bus_mergerproxy_in3_288616_ (.out1(sig_out_bus_mergerproxy_in3_288616_), .in1({sig_in_bus_mergerproxy_in3_288616_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(1), .BITSIZE_out1(12)) bus_mergerproxy_in3_288687_ (.out1(sig_out_bus_mergerproxy_in3_288687_), .in1({sig_in_bus_mergerproxy_in3_288687_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_288618_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288618_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288618_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_288689_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288689_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288689_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886110_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886110_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886110_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886811_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886811_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886811_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(13), .value(MEM_var_28868_28879)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_11 (.out1(out_const_11));
  constant_value #(.BITSIZE_out1(3), .value(3'b110)) const_12 (.out1(out_const_12));
  constant_value #(.BITSIZE_out1(6), .value(6'b111111)) const_13 (.out1(out_const_13));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_14 (.out1(out_const_14));
  constant_value #(.BITSIZE_out1(11), .value(MEM_var_28859_28870)) const_15 (.out1(out_const_15));
  constant_value #(.BITSIZE_out1(10), .value(MEM_var_28861_28879)) const_16 (.out1(out_const_16));
  constant_value #(.BITSIZE_out1(8), .value(8'b00010010)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(4), .value(4'b1001)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(5), .value(5'b10010)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(5), .value(5'b10011)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(9), .value(9'b100110010)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(8), .value(8'b10100010)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(13)) conv_out_UUdata_converter_FU_16_i0_fu_make_oriented_28870_29157_11_13 (.out1(out_conv_out_UUdata_converter_FU_16_i0_fu_make_oriented_28870_29157_11_13), .in1(out_UUdata_converter_FU_16_i0_fu_make_oriented_28870_29157));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(13)) conv_out_addr_expr_FU_5_i0_fu_make_oriented_28870_30311_10_13 (.out1(out_conv_out_addr_expr_FU_5_i0_fu_make_oriented_28870_30311_10_13), .in1(out_addr_expr_FU_5_i0_fu_make_oriented_28870_30311));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_const_10_13_32 (.out1(out_conv_out_const_10_13_32), .in1(out_const_10));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(32)) conv_out_const_15_11_32 (.out1(out_conv_out_const_15_11_32), .in1(out_const_15));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(32)) conv_out_const_16_10_32 (.out1(out_conv_out_const_16_10_32), .in1(out_const_16));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(6)) conv_out_const_3_5_6 (.out1(out_conv_out_const_3_5_6), .in1(out_const_3));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(13)) conv_out_reg_0_reg_0_10_13 (.out1(out_conv_out_reg_0_reg_0_10_13), .in1(out_reg_0_reg_0));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(13)) conv_out_reg_15_reg_15_11_13 (.out1(out_conv_out_reg_15_reg_15_11_13), .in1(out_reg_15_reg_15));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(13)) conv_out_reg_16_reg_16_11_13 (.out1(out_conv_out_reg_16_reg_16_11_13), .in1(out_reg_16_reg_16));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(13)) conv_out_reg_2_reg_2_11_13 (.out1(out_conv_out_reg_2_reg_2_11_13), .in1(out_reg_2_reg_2));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(13)) conv_out_reg_7_reg_7_11_13 (.out1(out_conv_out_reg_7_reg_7_11_13), .in1(out_reg_7_reg_7));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_13_32 (.out1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_13_32), .in1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_3_13_32 (.out1(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_3_13_32), .in1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_3));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(9)) conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_4_1_9 (.out1(out_conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_4_1_9), .in1(out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_4));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(5)) conv_out_u_assign_conn_obj_5_ASSIGN_UNSIGNED_FU_u_assign_5_1_5 (.out1(out_conv_out_u_assign_conn_obj_5_ASSIGN_UNSIGNED_FU_u_assign_5_1_5), .in1(out_u_assign_conn_obj_5_ASSIGN_UNSIGNED_FU_u_assign_5));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(13)) conv_out_ui_pointer_plus_expr_FU_16_16_16_63_i0_fu_make_oriented_28870_30346_11_13 (.out1(out_conv_out_ui_pointer_plus_expr_FU_16_16_16_63_i0_fu_make_oriented_28870_30346_11_13), .in1(out_ui_pointer_plus_expr_FU_16_16_16_63_i0_fu_make_oriented_28870_30346));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(13)) fu_make_oriented_28870_29137 (.out1(out_UUdata_converter_FU_7_i0_fu_make_oriented_28870_29137), .in1(out_addr_expr_FU_6_i0_fu_make_oriented_28870_30314));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_make_oriented_28870_29154 (.out1(out_UUdata_converter_FU_15_i0_fu_make_oriented_28870_29154), .in1(out_reg_11_reg_11));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(8)) fu_make_oriented_28870_29155 (.out1(out_UUdata_converter_FU_8_i0_fu_make_oriented_28870_29155), .in1(out_UUdata_converter_FU_7_i0_fu_make_oriented_28870_29137));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(6), .BITSIZE_in3(3), .BITSIZE_out1(8), .OFFSET_PARAMETER(6)) fu_make_oriented_28870_29156 (.out1(out_ui_bit_ior_concat_expr_FU_44_i0_fu_make_oriented_28870_29156), .in1(out_ui_lshift_expr_FU_8_0_8_50_i0_fu_make_oriented_28870_30523), .in2(out_ui_bit_and_expr_FU_8_0_8_43_i0_fu_make_oriented_28870_30527), .in3(out_const_12));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) fu_make_oriented_28870_29157 (.out1(out_UUdata_converter_FU_16_i0_fu_make_oriented_28870_29157), .in1(out_reg_4_reg_4));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(12)) fu_make_oriented_28870_29159 (.out1(out_UUdata_converter_FU_17_i0_fu_make_oriented_28870_29159), .in1(out_reg_11_reg_11));
  ui_plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(5)) fu_make_oriented_28870_29185 (.out1(out_ui_plus_expr_FU_8_0_8_59_i0_fu_make_oriented_28870_29185), .in1(out_reg_12_reg_12), .in2(out_const_4));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_oriented_28870_29192 (.out1(out_UIdata_converter_FU_29_i0_fu_make_oriented_28870_29192), .in1(out_ui_negate_expr_FU_8_8_55_i0_fu_make_oriented_28870_29196));
  ui_negate_expr_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_oriented_28870_29196 (.out1(out_ui_negate_expr_FU_8_8_55_i0_fu_make_oriented_28870_29196), .in1(out_IUdata_converter_FU_28_i0_fu_make_oriented_28870_29203));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_oriented_28870_29203 (.out1(out_IUdata_converter_FU_28_i0_fu_make_oriented_28870_29203), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(32), .OFFSET_PARAMETER(1)) fu_make_oriented_28870_29225 (.out1(out_ui_bit_ior_concat_expr_FU_45_i0_fu_make_oriented_28870_29225), .in1(out_ui_lshift_expr_FU_32_0_32_49_i0_fu_make_oriented_28870_30591), .in2(out_ui_bit_and_expr_FU_1_0_1_41_i1_fu_make_oriented_28870_30594), .in3(out_const_4));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(32)) fu_make_oriented_28870_29230 (.out1(out_ui_plus_expr_FU_32_0_32_56_i0_fu_make_oriented_28870_29230), .in1(out_reg_4_reg_4), .in2(out_const_7));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(32)) fu_make_oriented_28870_29234 (.out1(out_ui_plus_expr_FU_32_0_32_57_i0_fu_make_oriented_28870_29234), .in1(out_reg_11_reg_11), .in2(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(5)) fu_make_oriented_28870_29254 (.out1(out_UUdata_converter_FU_26_i0_fu_make_oriented_28870_29254), .in1(out_reg_12_reg_12));
  ui_ne_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_make_oriented_28870_29255 (.out1(out_ui_ne_expr_FU_8_8_8_54_i0_fu_make_oriented_28870_29255), .in1(out_UUdata_converter_FU_26_i0_fu_make_oriented_28870_29254), .in2(out_reg_6_reg_6));
  lt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_make_oriented_28870_29256 (.out1(out_lt_expr_FU_8_0_8_38_i0_fu_make_oriented_28870_29256), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0), .in2(out_const_11));
  ui_bit_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_oriented_28870_29257 (.out1(out_ui_bit_and_expr_FU_1_1_1_42_i0_fu_make_oriented_28870_29257), .in1(out_lt_expr_FU_8_0_8_38_i0_fu_make_oriented_28870_29256), .in2(out_reg_14_reg_14));
  read_cond_FU #(.BITSIZE_in1(1)) fu_make_oriented_28870_29258 (.out1(out_read_cond_FU_30_i0_fu_make_oriented_28870_29258), .in1(out_ui_bit_and_expr_FU_1_1_1_42_i0_fu_make_oriented_28870_29257));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) fu_make_oriented_28870_29272 (.out1(out_UUdata_converter_FU_27_i0_fu_make_oriented_28870_29272), .in1(out_reg_11_reg_11));
  read_cond_FU #(.BITSIZE_in1(1)) fu_make_oriented_28870_29274 (.out1(out_read_cond_FU_32_i0_fu_make_oriented_28870_29274), .in1(out_ge_expr_FU_8_0_8_37_i0_fu_make_oriented_28870_30375));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(10)) fu_make_oriented_28870_30311 (.out1(out_addr_expr_FU_5_i0_fu_make_oriented_28870_30311), .in1(out_conv_out_const_16_10_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) fu_make_oriented_28870_30314 (.out1(out_addr_expr_FU_6_i0_fu_make_oriented_28870_30314), .in1(out_conv_out_const_10_13_32));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(12), .BITSIZE_in2(9), .BITSIZE_out1(11), .LSB_PARAMETER(0)) fu_make_oriented_28870_30329 (.out1(out_ui_pointer_plus_expr_FU_16_0_16_62_i0_fu_make_oriented_28870_30329), .in1(out_UUdata_converter_FU_17_i0_fu_make_oriented_28870_29159), .in2(out_const_8));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(9)) fu_make_oriented_28870_30337 (.out1(out_UUdata_converter_FU_18_i0_fu_make_oriented_28870_30337), .in1(out_reg_10_reg_10));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(10), .OFFSET_PARAMETER(1)) fu_make_oriented_28870_30340 (.out1(out_ui_bit_ior_concat_expr_FU_46_i0_fu_make_oriented_28870_30340), .in1(out_ui_lshift_expr_FU_16_0_16_47_i0_fu_make_oriented_28870_30543), .in2(out_ui_bit_and_expr_FU_1_0_1_41_i0_fu_make_oriented_28870_30548), .in3(out_const_4));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(10), .BITSIZE_out1(11), .LSB_PARAMETER(0)) fu_make_oriented_28870_30346 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_63_i0_fu_make_oriented_28870_30346), .in1(out_reg_1_reg_1), .in2(out_ui_bit_ior_concat_expr_FU_46_i0_fu_make_oriented_28870_30340));
  ge_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_oriented_28870_30375 (.out1(out_ge_expr_FU_8_0_8_37_i0_fu_make_oriented_28870_30375), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0), .in2(out_const_0));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) fu_make_oriented_28870_30396 (.out1(out_addr_expr_FU_9_i0_fu_make_oriented_28870_30396), .in1(out_conv_out_const_15_11_32));
  ui_ne_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_make_oriented_28870_30427 (.out1(out_ui_ne_expr_FU_8_0_8_52_i0_fu_make_oriented_28870_30427), .in1(out_ui_plus_expr_FU_8_0_8_59_i0_fu_make_oriented_28870_29185), .in2(out_const_6));
  ui_ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_make_oriented_28870_30429 (.out1(out_ui_ne_expr_FU_8_0_8_53_i0_fu_make_oriented_28870_30429), .in1(out_ui_rshift_expr_FU_16_0_16_65_i1_fu_make_oriented_28870_30611), .in2(out_const_9));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(2), .PRECISION(8)) fu_make_oriented_28870_30513 (.out1(out_ui_rshift_expr_FU_8_0_8_67_i0_fu_make_oriented_28870_30513), .in1(out_UUdata_converter_FU_15_i0_fu_make_oriented_28870_29154), .in2(out_const_12));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(2), .PRECISION(8)) fu_make_oriented_28870_30518 (.out1(out_ui_rshift_expr_FU_8_0_8_67_i1_fu_make_oriented_28870_30518), .in1(out_UUdata_converter_FU_8_i0_fu_make_oriented_28870_29155), .in2(out_const_12));
  ui_minus_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_make_oriented_28870_30520 (.out1(out_ui_minus_expr_FU_8_8_8_51_i0_fu_make_oriented_28870_30520), .in1(out_ui_rshift_expr_FU_8_0_8_67_i0_fu_make_oriented_28870_30513), .in2(out_reg_3_reg_3));
  ui_lshift_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(3), .BITSIZE_out1(8), .PRECISION(8)) fu_make_oriented_28870_30523 (.out1(out_ui_lshift_expr_FU_8_0_8_50_i0_fu_make_oriented_28870_30523), .in1(out_ui_minus_expr_FU_8_8_8_51_i0_fu_make_oriented_28870_30520), .in2(out_const_12));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(6), .BITSIZE_out1(6)) fu_make_oriented_28870_30527 (.out1(out_ui_bit_and_expr_FU_8_0_8_43_i0_fu_make_oriented_28870_30527), .in1(out_UUdata_converter_FU_15_i0_fu_make_oriented_28870_29154), .in2(out_const_13));
  ui_rshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(4), .PRECISION(32)) fu_make_oriented_28870_30533 (.out1(out_ui_rshift_expr_FU_8_0_8_68_i0_fu_make_oriented_28870_30533), .in1(out_reg_12_reg_12), .in2(out_const_4));
  ui_rshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1), .BITSIZE_out1(8), .PRECISION(32)) fu_make_oriented_28870_30538 (.out1(out_ui_rshift_expr_FU_16_0_16_64_i0_fu_make_oriented_28870_30538), .in1(out_UUdata_converter_FU_18_i0_fu_make_oriented_28870_30337), .in2(out_const_4));
  ui_plus_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(8), .BITSIZE_out1(9)) fu_make_oriented_28870_30540 (.out1(out_ui_plus_expr_FU_8_8_8_61_i0_fu_make_oriented_28870_30540), .in1(out_ui_rshift_expr_FU_8_0_8_68_i0_fu_make_oriented_28870_30533), .in2(out_reg_9_reg_9));
  ui_lshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1), .BITSIZE_out1(10), .PRECISION(32)) fu_make_oriented_28870_30543 (.out1(out_ui_lshift_expr_FU_16_0_16_47_i0_fu_make_oriented_28870_30543), .in1(out_ui_plus_expr_FU_8_8_8_61_i0_fu_make_oriented_28870_30540), .in2(out_const_4));
  ui_bit_and_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_oriented_28870_30548 (.out1(out_ui_bit_and_expr_FU_1_0_1_41_i0_fu_make_oriented_28870_30548), .in1(out_reg_12_reg_12), .in2(out_const_4));
  ui_rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(31), .PRECISION(32)) fu_make_oriented_28870_30584 (.out1(out_ui_rshift_expr_FU_32_0_32_66_i0_fu_make_oriented_28870_30584), .in1(out_reg_11_reg_11), .in2(out_const_4));
  ui_plus_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(4), .BITSIZE_out1(31)) fu_make_oriented_28870_30588 (.out1(out_ui_plus_expr_FU_32_0_32_58_i0_fu_make_oriented_28870_30588), .in1(out_ui_rshift_expr_FU_32_0_32_66_i0_fu_make_oriented_28870_30584), .in2(out_const_5));
  ui_lshift_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(1), .BITSIZE_out1(32), .PRECISION(32)) fu_make_oriented_28870_30591 (.out1(out_ui_lshift_expr_FU_32_0_32_49_i0_fu_make_oriented_28870_30591), .in1(out_ui_plus_expr_FU_32_0_32_58_i0_fu_make_oriented_28870_30588), .in2(out_const_4));
  ui_bit_and_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_oriented_28870_30594 (.out1(out_ui_bit_and_expr_FU_1_0_1_41_i1_fu_make_oriented_28870_30594), .in1(out_reg_11_reg_11), .in2(out_const_4));
  ui_rshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1), .BITSIZE_out1(8), .PRECISION(32)) fu_make_oriented_28870_30599 (.out1(out_ui_rshift_expr_FU_16_0_16_65_i0_fu_make_oriented_28870_30599), .in1(out_reg_10_reg_10), .in2(out_const_4));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(4), .BITSIZE_out1(8)) fu_make_oriented_28870_30604 (.out1(out_ui_plus_expr_FU_8_0_8_60_i0_fu_make_oriented_28870_30604), .in1(out_ui_rshift_expr_FU_16_0_16_65_i0_fu_make_oriented_28870_30599), .in2(out_const_5));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(9), .PRECISION(32)) fu_make_oriented_28870_30607 (.out1(out_ui_lshift_expr_FU_16_0_16_48_i0_fu_make_oriented_28870_30607), .in1(out_ui_plus_expr_FU_8_0_8_60_i0_fu_make_oriented_28870_30604), .in2(out_const_4));
  ui_rshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(1), .BITSIZE_out1(8), .PRECISION(32)) fu_make_oriented_28870_30611 (.out1(out_ui_rshift_expr_FU_16_0_16_65_i1_fu_make_oriented_28870_30611), .in1(out_ui_lshift_expr_FU_16_0_16_48_i0_fu_make_oriented_28870_30607), .in2(out_const_4));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) fu_make_oriented_28870_30616 (.out1(out_multi_read_cond_FU_35_i0_fu_make_oriented_28870_30616), .in1({out_reg_18_reg_18, out_reg_17_reg_17}));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_make_oriented_28870_30619 (.out1(out_truth_not_expr_FU_1_1_40_i0_fu_make_oriented_28870_30619), .in1(out_ui_ne_expr_FU_8_0_8_52_i0_fu_make_oriented_28870_30427));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_oriented_28870_30622 (.out1(out_truth_and_expr_FU_1_1_1_39_i0_fu_make_oriented_28870_30622), .in1(out_reg_8_reg_8), .in2(out_truth_not_expr_FU_1_1_40_i0_fu_make_oriented_28870_30619));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy0_0 (.out1(sig_in_bus_mergerSout_DataRdy0_0), .in1(sig_in_vector_bus_mergerSout_DataRdy0_0));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerSout_Rdata_ram1_0 (.out1(sig_in_bus_mergerSout_Rdata_ram1_0), .in1(sig_in_vector_bus_mergerSout_Rdata_ram1_0));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in1_288612_0 (.out1(sig_in_bus_mergerproxy_in1_288612_0), .in1(sig_in_vector_bus_mergerproxy_in1_288612_0));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in1_288683_0 (.out1(sig_in_bus_mergerproxy_in1_288683_0), .in1(sig_in_vector_bus_mergerproxy_in1_288683_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in2_288614_0 (.out1(sig_in_bus_mergerproxy_in2_288614_0), .in1(sig_in_vector_bus_mergerproxy_in2_288614_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in2_288685_0 (.out1(sig_in_bus_mergerproxy_in2_288685_0), .in1(sig_in_vector_bus_mergerproxy_in2_288685_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in3_288616_0 (.out1(sig_in_bus_mergerproxy_in3_288616_0), .in1(sig_in_vector_bus_mergerproxy_in3_288616_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in3_288687_0 (.out1(sig_in_bus_mergerproxy_in3_288687_0), .in1(sig_in_vector_bus_mergerproxy_in3_288687_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_288618_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_288618_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_288618_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_288689_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_288689_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_288689_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886110_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886110_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886110_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886811_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886811_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886811_0));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_5_i0_fu_make_oriented_28870_30311), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(13), .BITSIZE_out1(13)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_6_i0_fu_make_oriented_28870_30314), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_MUX_40_reg_10_0_0_0), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_MUX_41_reg_11_0_0_1), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_MUX_42_reg_12_0_0_0), .wenable(wrenable_reg_12));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_ui_bit_ior_concat_expr_FU_45_i0_fu_make_oriented_28870_29225), .wenable(wrenable_reg_13));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_8_8_54_i0_fu_make_oriented_28870_29255), .wenable(wrenable_reg_14));
  register_SE #(.BITSIZE_in1(11), .BITSIZE_out1(11)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_27_i0_fu_make_oriented_28870_29272), .wenable(wrenable_reg_15));
  register_SE #(.BITSIZE_in1(11), .BITSIZE_out1(11)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_63_i0_fu_make_oriented_28870_30346), .wenable(wrenable_reg_16));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_52_i0_fu_make_oriented_28870_30427), .wenable(wrenable_reg_17));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_truth_and_expr_FU_1_1_1_39_i0_fu_make_oriented_28870_30622), .wenable(wrenable_reg_18));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_19 (.out1(out_reg_19_reg_19), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_29_i0_fu_make_oriented_28870_29192), .wenable(wrenable_reg_19));
  register_SE #(.BITSIZE_in1(11), .BITSIZE_out1(11)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_9_i0_fu_make_oriented_28870_30396), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_8_0_8_67_i1_fu_make_oriented_28870_30518), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_MUX_52_reg_4_0_0_0), .wenable(wrenable_reg_4));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_32_0_32_57_i0_fu_make_oriented_28870_29234), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_ui_bit_ior_concat_expr_FU_44_i0_fu_make_oriented_28870_29156), .wenable(wrenable_reg_6));
  register_STD #(.BITSIZE_in1(11), .BITSIZE_out1(11)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_0_16_62_i0_fu_make_oriented_28870_30329), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_53_i0_fu_make_oriented_28870_30429), .wenable(wrenable_reg_8));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_16_0_16_64_i0_fu_make_oriented_28870_30538), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy0_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy0_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram1_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram1_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288612_ (.out1(proxy_in1_28861), .in1(sig_out_bus_mergerproxy_in1_288612_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288683_ (.out1(proxy_in1_28868), .in1(sig_out_bus_mergerproxy_in1_288683_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288614_ (.out1(proxy_in2_28861), .in1(sig_out_bus_mergerproxy_in2_288614_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288685_ (.out1(proxy_in2_28868), .in1(sig_out_bus_mergerproxy_in2_288685_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288616_ (.out1(proxy_in3_28861), .in1(sig_out_bus_mergerproxy_in3_288616_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288687_ (.out1(proxy_in3_28868), .in1(sig_out_bus_mergerproxy_in3_288687_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_288618_ (.out1(proxy_sel_LOAD_28861), .in1(sig_out_bus_mergerproxy_sel_LOAD_288618_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_288689_ (.out1(proxy_sel_LOAD_28868), .in1(sig_out_bus_mergerproxy_sel_LOAD_288689_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886110_ (.out1(proxy_sel_STORE_28861), .in1(sig_out_bus_mergerproxy_sel_STORE_2886110_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886811_ (.out1(proxy_sel_STORE_28868), .in1(sig_out_bus_mergerproxy_sel_STORE_2886811_));
  // io-signal post fix
  assign OUT_CONDITION_make_oriented_28870_29258 = out_read_cond_FU_30_i0_fu_make_oriented_28870_29258;
  assign OUT_CONDITION_make_oriented_28870_29274 = out_read_cond_FU_32_i0_fu_make_oriented_28870_29274;
  assign OUT_MULTIIF_make_oriented_28870_30616 = out_multi_read_cond_FU_35_i0_fu_make_oriented_28870_30616;

endmodule

// FSM based controller description for make_oriented
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_make_oriented(done_port, fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE, selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0, selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0, selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1, selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2, selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0, selector_MUX_40_reg_10_0_0_0, selector_MUX_41_reg_11_0_0_0, selector_MUX_41_reg_11_0_0_1, selector_MUX_42_reg_12_0_0_0, selector_MUX_52_reg_4_0_0_0, selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0, selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_make_oriented_28870_29258, OUT_CONDITION_make_oriented_28870_29274, OUT_MULTIIF_make_oriented_28870_30616, clock, reset, start_port);
  // IN
  input OUT_CONDITION_make_oriented_28870_29258;
  input OUT_CONDITION_make_oriented_28870_29274;
  input [1:0] OUT_MULTIIF_make_oriented_28870_30616;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE;
  output selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0;
  output selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0;
  output selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1;
  output selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2;
  output selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0;
  output selector_MUX_40_reg_10_0_0_0;
  output selector_MUX_41_reg_11_0_0_0;
  output selector_MUX_41_reg_11_0_0_1;
  output selector_MUX_42_reg_12_0_0_0;
  output selector_MUX_52_reg_4_0_0_0;
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
  reg fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE;
  reg selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0;
  reg selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0;
  reg selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1;
  reg selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2;
  reg selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0;
  reg selector_MUX_40_reg_10_0_0_0;
  reg selector_MUX_41_reg_11_0_0_0;
  reg selector_MUX_41_reg_11_0_0_1;
  reg selector_MUX_42_reg_12_0_0_0;
  reg selector_MUX_52_reg_4_0_0_0;
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
    fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE = 1'b0;
    selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0 = 1'b0;
    selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0 = 1'b0;
    selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1 = 1'b0;
    selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2 = 1'b0;
    selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0 = 1'b0;
    selector_MUX_40_reg_10_0_0_0 = 1'b0;
    selector_MUX_41_reg_11_0_0_0 = 1'b0;
    selector_MUX_41_reg_11_0_0_1 = 1'b0;
    selector_MUX_42_reg_12_0_0_0 = 1'b0;
    selector_MUX_52_reg_4_0_0_0 = 1'b0;
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
          selector_MUX_40_reg_10_0_0_0 = 1'b1;
          selector_MUX_41_reg_11_0_0_1 = 1'b1;
          selector_MUX_52_reg_4_0_0_0 = 1'b1;
          selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_1_i0_STORE = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0 = 1'bX;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0 = 1'bX;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1 = 1'bX;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2 = 1'bX;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0 = 1'bX;
          selector_MUX_40_reg_10_0_0_0 = 1'bX;
          selector_MUX_41_reg_11_0_0_0 = 1'bX;
          selector_MUX_41_reg_11_0_0_1 = 1'bX;
          selector_MUX_42_reg_12_0_0_0 = 1'bX;
          selector_MUX_52_reg_4_0_0_0 = 1'bX;
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
          selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0 = 1'b1;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          wrenable_reg_10 = 1'b1;
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
          selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0 = 1'b1;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0 = 1'b1;
          selector_MUX_42_reg_12_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          wrenable_reg_12 = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_LOAD = 1'b1;
          wrenable_reg_12 = 1'b1;
          wrenable_reg_13 = 1'b1;
          wrenable_reg_14 = 1'b1;
          wrenable_reg_15 = 1'b1;
          wrenable_reg_16 = 1'b1;
          wrenable_reg_17 = 1'b1;
          wrenable_reg_18 = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          wrenable_reg_19 = 1'b1;
          if (OUT_CONDITION_make_oriented_28870_29258 == 1'b1)
            begin
              _next_state = S_5;
            end
          else
            begin
              _next_state = S_7;
              wrenable_reg_19 = 1'b0;
            end
        end
      S_7 :
        begin
          selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1 = 1'b1;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_LOAD = 1'b1;
          _next_state = S_8;
        end
      S_8 :
        begin
          if (OUT_CONDITION_make_oriented_28870_29274 == 1'b1)
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
          selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          _next_state = S_10;
        end
      S_10 :
        begin
          selector_MUX_41_reg_11_0_0_0 = 1'b1;
          wrenable_reg_11 = 1'b1;
          if (OUT_MULTIIF_make_oriented_28870_30616[0] == 1'b1)
            begin
              _next_state = S_3;
              selector_MUX_41_reg_11_0_0_0 = 1'b0;
            end
          else if (OUT_MULTIIF_make_oriented_28870_30616[1] == 1'b1)
            begin
              _next_state = S_1;
            end
          else
            begin
              _next_state = S_11;
              done_port = 1'b1;
              selector_MUX_41_reg_11_0_0_0 = 1'b0;
              wrenable_reg_11 = 1'b0;
            end
        end
      S_11 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE = 1'b1;
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
          selector_MUX_40_reg_10_0_0_0 = 1'bX;
          selector_MUX_41_reg_11_0_0_0 = 1'bX;
          selector_MUX_41_reg_11_0_0_1 = 1'bX;
          selector_MUX_42_reg_12_0_0_0 = 1'bX;
          selector_MUX_52_reg_4_0_0_0 = 1'bX;
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
  parameter MEM_var_28859_28870=1536, MEM_var_28861_28879=512, MEM_var_28868_28879=1024;
  // IN
  input clock;
  input reset;
  input start_port;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [25:0] S_addr_ram;
  input [63:0] S_Wdata_ram;
  input [11:0] S_data_ram_size;
  input [63:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [63:0] proxy_out1_28861;
  input [63:0] proxy_out1_28868;
  // OUT
  output done_port;
  output [63:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [63:0] proxy_in1_28861;
  output [25:0] proxy_in2_28861;
  output [11:0] proxy_in3_28861;
  output [1:0] proxy_sel_LOAD_28861;
  output [1:0] proxy_sel_STORE_28861;
  output [63:0] proxy_in1_28868;
  output [25:0] proxy_in2_28868;
  output [11:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  // Component and signal declarations
  wire OUT_CONDITION_make_oriented_28870_29258;
  wire OUT_CONDITION_make_oriented_28870_29274;
  wire [1:0] OUT_MULTIIF_make_oriented_28870_30616;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE;
  wire fuselector_PROXY_CTRLN_1_i0_LOAD;
  wire fuselector_PROXY_CTRLN_1_i0_STORE;
  wire fuselector_PROXY_CTRLN_2_i0_LOAD;
  wire fuselector_PROXY_CTRLN_2_i0_STORE;
  wire selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0;
  wire selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0;
  wire selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1;
  wire selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2;
  wire selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0;
  wire selector_MUX_40_reg_10_0_0_0;
  wire selector_MUX_41_reg_11_0_0_0;
  wire selector_MUX_41_reg_11_0_0_1;
  wire selector_MUX_42_reg_12_0_0_0;
  wire selector_MUX_52_reg_4_0_0_0;
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
  
  controller_make_oriented Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE), .selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0(selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0), .selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0), .selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1), .selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2), .selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0(selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0), .selector_MUX_40_reg_10_0_0_0(selector_MUX_40_reg_10_0_0_0), .selector_MUX_41_reg_11_0_0_0(selector_MUX_41_reg_11_0_0_0), .selector_MUX_41_reg_11_0_0_1(selector_MUX_41_reg_11_0_0_1), .selector_MUX_42_reg_12_0_0_0(selector_MUX_42_reg_12_0_0_0), .selector_MUX_52_reg_4_0_0_0(selector_MUX_52_reg_4_0_0_0), .selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0(selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0), .selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0(selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_make_oriented_28870_29258(OUT_CONDITION_make_oriented_28870_29258), .OUT_CONDITION_make_oriented_28870_29274(OUT_CONDITION_make_oriented_28870_29274), .OUT_MULTIIF_make_oriented_28870_30616(OUT_MULTIIF_make_oriented_28870_30616), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_make_oriented #(.MEM_var_28859_28870(MEM_var_28859_28870), .MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28868_28879(MEM_var_28868_28879)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .proxy_in1_28861(proxy_in1_28861), .proxy_in2_28861(proxy_in2_28861), .proxy_in3_28861(proxy_in3_28861), .proxy_sel_LOAD_28861(proxy_sel_LOAD_28861), .proxy_sel_STORE_28861(proxy_sel_STORE_28861), .proxy_in1_28868(proxy_in1_28868), .proxy_in2_28868(proxy_in2_28868), .proxy_in3_28868(proxy_in3_28868), .proxy_sel_LOAD_28868(proxy_sel_LOAD_28868), .proxy_sel_STORE_28868(proxy_sel_STORE_28868), .OUT_CONDITION_make_oriented_28870_29258(OUT_CONDITION_make_oriented_28870_29258), .OUT_CONDITION_make_oriented_28870_29274(OUT_CONDITION_make_oriented_28870_29274), .OUT_MULTIIF_make_oriented_28870_30616(OUT_MULTIIF_make_oriented_28870_30616), .clock(clock), .reset(reset), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28868(proxy_out1_28868), .fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE), .selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0(selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0), .selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0), .selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1), .selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2), .selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0(selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0), .selector_MUX_40_reg_10_0_0_0(selector_MUX_40_reg_10_0_0_0), .selector_MUX_41_reg_11_0_0_0(selector_MUX_41_reg_11_0_0_0), .selector_MUX_41_reg_11_0_0_1(selector_MUX_41_reg_11_0_0_1), .selector_MUX_42_reg_12_0_0_0(selector_MUX_42_reg_12_0_0_0), .selector_MUX_52_reg_4_0_0_0(selector_MUX_52_reg_4_0_0_0), .selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0(selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0), .selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0(selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Datapath RTL description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_main(clock, reset, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, selector_IN_UNBOUNDED_main_28879_29900, selector_IN_UNBOUNDED_main_28879_29901, wrenable_reg_0, OUT_UNBOUNDED_main_28879_29900, OUT_UNBOUNDED_main_28879_29901);
  parameter MEM_var_28859_28870=1536, MEM_var_28861_28879=512, MEM_var_28862_28877=2048, MEM_var_28864_28877=2560, MEM_var_28865_28877=3072, MEM_var_28866_28877=3584, MEM_var_28867_28877=4096, MEM_var_28868_28879=1024;
  // IN
  input clock;
  input reset;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [25:0] S_addr_ram;
  input [63:0] S_Wdata_ram;
  input [11:0] S_data_ram_size;
  input [63:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [63:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [25:0] Min_addr_ram;
  input [63:0] Min_Wdata_ram;
  input [11:0] Min_data_ram_size;
  input selector_IN_UNBOUNDED_main_28879_29900;
  input selector_IN_UNBOUNDED_main_28879_29901;
  input wrenable_reg_0;
  // OUT
  output [63:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [25:0] Mout_addr_ram;
  output [63:0] Mout_Wdata_ram;
  output [11:0] Mout_data_ram_size;
  output OUT_UNBOUNDED_main_28879_29900;
  output OUT_UNBOUNDED_main_28879_29901;
  // Component and signal declarations
  wire [7:0] null_out_signal_array_28861_0_out1_0;
  wire [7:0] null_out_signal_array_28861_0_out1_1;
  wire [7:0] null_out_signal_array_28868_0_out1_0;
  wire [7:0] null_out_signal_array_28868_0_out1_1;
  wire [12:0] out_UUdata_converter_FU_5_i0_fu_main_28879_30432;
  wire [12:0] out_addr_expr_FU_4_i0_fu_main_28879_30308;
  wire [12:0] out_const_0;
  wire [31:0] out_conv_out_const_0_13_32;
  wire [31:0] out_conv_out_reg_0_reg_0_13_32;
  wire [12:0] out_reg_0_reg_0;
  wire [63:0] proxy_out1_28861;
  wire [63:0] proxy_out1_28868;
  wire s_done_fu_main_28879_29900;
  wire s_done_fu_main_28879_29901;
  wire [63:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [25:0] sig_in_bus_mergerMout_addr_ram1_0;
  wire [11:0] sig_in_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_0;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_1;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_2;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_3;
  wire [63:0] sig_in_bus_mergerSout_Rdata_ram6_0;
  wire [63:0] sig_in_bus_mergerSout_Rdata_ram6_1;
  wire [63:0] sig_in_bus_mergerSout_Rdata_ram6_2;
  wire [63:0] sig_in_bus_mergerSout_Rdata_ram6_3;
  wire [63:0] sig_in_bus_mergerproxy_in112_0;
  wire [63:0] sig_in_bus_mergerproxy_in112_1;
  wire [63:0] sig_in_bus_mergerproxy_in17_0;
  wire [63:0] sig_in_bus_mergerproxy_in17_1;
  wire [25:0] sig_in_bus_mergerproxy_in213_0;
  wire [25:0] sig_in_bus_mergerproxy_in213_1;
  wire [25:0] sig_in_bus_mergerproxy_in28_0;
  wire [25:0] sig_in_bus_mergerproxy_in28_1;
  wire [11:0] sig_in_bus_mergerproxy_in314_0;
  wire [11:0] sig_in_bus_mergerproxy_in314_1;
  wire [11:0] sig_in_bus_mergerproxy_in39_0;
  wire [11:0] sig_in_bus_mergerproxy_in39_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD10_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD10_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD15_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD15_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE11_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE11_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE16_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE16_1;
  wire [63:0] sig_in_vector_bus_mergerMout_Wdata_ram0_0;
  wire [25:0] sig_in_vector_bus_mergerMout_addr_ram1_0;
  wire [11:0] sig_in_vector_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_vector_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_vector_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_1;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_2;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_3;
  wire [63:0] sig_in_vector_bus_mergerSout_Rdata_ram6_0;
  wire [63:0] sig_in_vector_bus_mergerSout_Rdata_ram6_1;
  wire [63:0] sig_in_vector_bus_mergerSout_Rdata_ram6_2;
  wire [63:0] sig_in_vector_bus_mergerSout_Rdata_ram6_3;
  wire [63:0] sig_in_vector_bus_mergerproxy_in112_0;
  wire [63:0] sig_in_vector_bus_mergerproxy_in112_1;
  wire [63:0] sig_in_vector_bus_mergerproxy_in17_0;
  wire [63:0] sig_in_vector_bus_mergerproxy_in17_1;
  wire [25:0] sig_in_vector_bus_mergerproxy_in213_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in213_1;
  wire [25:0] sig_in_vector_bus_mergerproxy_in28_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in28_1;
  wire [11:0] sig_in_vector_bus_mergerproxy_in314_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in314_1;
  wire [11:0] sig_in_vector_bus_mergerproxy_in39_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in39_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD10_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD10_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD15_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD15_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE11_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE11_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE16_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE16_1;
  wire [63:0] sig_out_bus_mergerMout_Wdata_ram0_;
  wire [25:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [11:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire [1:0] sig_out_bus_mergerMout_oe_ram3_;
  wire [1:0] sig_out_bus_mergerMout_we_ram4_;
  wire [1:0] sig_out_bus_mergerSout_DataRdy5_;
  wire [63:0] sig_out_bus_mergerSout_Rdata_ram6_;
  wire [63:0] sig_out_bus_mergerproxy_in112_;
  wire [63:0] sig_out_bus_mergerproxy_in17_;
  wire [25:0] sig_out_bus_mergerproxy_in213_;
  wire [25:0] sig_out_bus_mergerproxy_in28_;
  wire [11:0] sig_out_bus_mergerproxy_in314_;
  wire [11:0] sig_out_bus_mergerproxy_in39_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD10_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD15_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE11_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE16_;
  wire [63:0] sig_out_vector_bus_mergerproxy_in112_;
  wire [63:0] sig_out_vector_bus_mergerproxy_in17_;
  wire [25:0] sig_out_vector_bus_mergerproxy_in213_;
  wire [25:0] sig_out_vector_bus_mergerproxy_in28_;
  wire [11:0] sig_out_vector_bus_mergerproxy_in314_;
  wire [11:0] sig_out_vector_bus_mergerproxy_in39_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_LOAD10_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_LOAD15_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_STORE11_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_STORE16_;
  
  ARRAY_1D_STD_BRAM_NN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(13), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(32), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(32), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(32), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(6), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file_a("array_ref_28861.mem"), .MEMORY_INIT_file_b("0_array_ref_28861.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28861_28879), .address_space_rangesize(512), .BUS_PIPELINED(1), .BRAM_BITSIZE(16), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) array_28861_0 (.out1({null_out_signal_array_28861_0_out1_1, null_out_signal_array_28861_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_0), .proxy_out1(proxy_out1_28861), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({13'b0000000000000, 13'b0000000000000}), .in3({6'b000000, 6'b000000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in17_), .proxy_in2(sig_out_vector_bus_mergerproxy_in28_), .proxy_in3(sig_out_vector_bus_mergerproxy_in39_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD10_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE11_));
  ARRAY_1D_STD_BRAM_NN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(13), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(32), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(32), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(32), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(6), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file_a("array_ref_28868.mem"), .MEMORY_INIT_file_b("0_array_ref_28868.mem"), .n_elements(324), .data_size(8), .address_space_begin(MEM_var_28868_28879), .address_space_rangesize(512), .BUS_PIPELINED(1), .BRAM_BITSIZE(16), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) array_28868_0 (.out1({null_out_signal_array_28868_0_out1_1, null_out_signal_array_28868_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_1), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_1), .proxy_out1(proxy_out1_28868), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({13'b0000000000000, 13'b0000000000000}), .in3({6'b000000, 6'b000000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in112_), .proxy_in2(sig_out_vector_bus_mergerproxy_in213_), .proxy_in3(sig_out_vector_bus_mergerproxy_in314_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD15_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE16_));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(1), .BITSIZE_out1(12)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(4), .BITSIZE_out1(2)) bus_mergerSout_DataRdy5_ (.out1(sig_out_bus_mergerSout_DataRdy5_), .in1({sig_in_bus_mergerSout_DataRdy5_3, sig_in_bus_mergerSout_DataRdy5_2, sig_in_bus_mergerSout_DataRdy5_1, sig_in_bus_mergerSout_DataRdy5_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(4), .BITSIZE_out1(64)) bus_mergerSout_Rdata_ram6_ (.out1(sig_out_bus_mergerSout_Rdata_ram6_), .in1({sig_in_bus_mergerSout_Rdata_ram6_3, sig_in_bus_mergerSout_Rdata_ram6_2, sig_in_bus_mergerSout_Rdata_ram6_1, sig_in_bus_mergerSout_Rdata_ram6_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(2), .BITSIZE_out1(64)) bus_mergerproxy_in112_ (.out1(sig_out_bus_mergerproxy_in112_), .in1({sig_in_bus_mergerproxy_in112_1, sig_in_bus_mergerproxy_in112_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(2), .BITSIZE_out1(64)) bus_mergerproxy_in17_ (.out1(sig_out_bus_mergerproxy_in17_), .in1({sig_in_bus_mergerproxy_in17_1, sig_in_bus_mergerproxy_in17_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(2), .BITSIZE_out1(26)) bus_mergerproxy_in213_ (.out1(sig_out_bus_mergerproxy_in213_), .in1({sig_in_bus_mergerproxy_in213_1, sig_in_bus_mergerproxy_in213_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(2), .BITSIZE_out1(26)) bus_mergerproxy_in28_ (.out1(sig_out_bus_mergerproxy_in28_), .in1({sig_in_bus_mergerproxy_in28_1, sig_in_bus_mergerproxy_in28_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(2), .BITSIZE_out1(12)) bus_mergerproxy_in314_ (.out1(sig_out_bus_mergerproxy_in314_), .in1({sig_in_bus_mergerproxy_in314_1, sig_in_bus_mergerproxy_in314_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(2), .BITSIZE_out1(12)) bus_mergerproxy_in39_ (.out1(sig_out_bus_mergerproxy_in39_), .in1({sig_in_bus_mergerproxy_in39_1, sig_in_bus_mergerproxy_in39_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(2), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD10_ (.out1(sig_out_bus_mergerproxy_sel_LOAD10_), .in1({sig_in_bus_mergerproxy_sel_LOAD10_1, sig_in_bus_mergerproxy_sel_LOAD10_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(2), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD15_ (.out1(sig_out_bus_mergerproxy_sel_LOAD15_), .in1({sig_in_bus_mergerproxy_sel_LOAD15_1, sig_in_bus_mergerproxy_sel_LOAD15_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(2), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE11_ (.out1(sig_out_bus_mergerproxy_sel_STORE11_), .in1({sig_in_bus_mergerproxy_sel_STORE11_1, sig_in_bus_mergerproxy_sel_STORE11_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(2), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE16_ (.out1(sig_out_bus_mergerproxy_sel_STORE16_), .in1({sig_in_bus_mergerproxy_sel_STORE16_1, sig_in_bus_mergerproxy_sel_STORE16_0}));
  constant_value #(.BITSIZE_out1(13), .value(MEM_var_28868_28879)) const_0 (.out1(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_const_0_13_32 (.out1(out_conv_out_const_0_13_32), .in1(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_reg_0_reg_0_13_32 (.out1(out_conv_out_reg_0_reg_0_13_32), .in1(out_reg_0_reg_0));
  make_oriented #(.MEM_var_28859_28870(MEM_var_28859_28870), .MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28868_28879(MEM_var_28868_28879)) fu_main_28879_29900 (.done_port(s_done_fu_main_28879_29900), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_3), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_3), .proxy_in1_28861(sig_in_vector_bus_mergerproxy_in17_1), .proxy_in2_28861(sig_in_vector_bus_mergerproxy_in28_1), .proxy_in3_28861(sig_in_vector_bus_mergerproxy_in39_1), .proxy_sel_LOAD_28861(sig_in_vector_bus_mergerproxy_sel_LOAD10_1), .proxy_sel_STORE_28861(sig_in_vector_bus_mergerproxy_sel_STORE11_1), .proxy_in1_28868(sig_in_vector_bus_mergerproxy_in112_1), .proxy_in2_28868(sig_in_vector_bus_mergerproxy_in213_1), .proxy_in3_28868(sig_in_vector_bus_mergerproxy_in314_1), .proxy_sel_LOAD_28868(sig_in_vector_bus_mergerproxy_sel_LOAD15_1), .proxy_sel_STORE_28868(sig_in_vector_bus_mergerproxy_sel_STORE16_1), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28879_29900), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28868(proxy_out1_28868));
  astarF #(.MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28862_28877(MEM_var_28862_28877), .MEM_var_28864_28877(MEM_var_28864_28877), .MEM_var_28865_28877(MEM_var_28865_28877), .MEM_var_28866_28877(MEM_var_28866_28877), .MEM_var_28867_28877(MEM_var_28867_28877), .MEM_var_28868_28879(MEM_var_28868_28879)) fu_main_28879_29901 (.done_port(s_done_fu_main_28879_29901), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_2), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_2), .proxy_in1_28861(sig_in_vector_bus_mergerproxy_in17_0), .proxy_in2_28861(sig_in_vector_bus_mergerproxy_in28_0), .proxy_in3_28861(sig_in_vector_bus_mergerproxy_in39_0), .proxy_sel_LOAD_28861(sig_in_vector_bus_mergerproxy_sel_LOAD10_0), .proxy_sel_STORE_28861(sig_in_vector_bus_mergerproxy_sel_STORE11_0), .proxy_in1_28868(sig_in_vector_bus_mergerproxy_in112_0), .proxy_in2_28868(sig_in_vector_bus_mergerproxy_in213_0), .proxy_in3_28868(sig_in_vector_bus_mergerproxy_in314_0), .proxy_sel_LOAD_28868(sig_in_vector_bus_mergerproxy_sel_LOAD15_0), .proxy_sel_STORE_28868(sig_in_vector_bus_mergerproxy_sel_STORE16_0), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28879_29901), .a(out_conv_out_reg_0_reg_0_13_32), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28868(proxy_out1_28868), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) fu_main_28879_30308 (.out1(out_addr_expr_FU_4_i0_fu_main_28879_30308), .in1(out_conv_out_const_0_13_32));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(13)) fu_main_28879_30432 (.out1(out_UUdata_converter_FU_5_i0_fu_main_28879_30432), .in1(out_addr_expr_FU_4_i0_fu_main_28879_30308));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerMout_data_ram_size2_0 (.out1(sig_in_bus_mergerMout_data_ram_size2_0), .in1(sig_in_vector_bus_mergerMout_data_ram_size2_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_oe_ram3_0 (.out1(sig_in_bus_mergerMout_oe_ram3_0), .in1(sig_in_vector_bus_mergerMout_oe_ram3_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_we_ram4_0 (.out1(sig_in_bus_mergerMout_we_ram4_0), .in1(sig_in_vector_bus_mergerMout_we_ram4_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_0 (.out1(sig_in_bus_mergerSout_DataRdy5_0), .in1(sig_in_vector_bus_mergerSout_DataRdy5_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_1 (.out1(sig_in_bus_mergerSout_DataRdy5_1), .in1(sig_in_vector_bus_mergerSout_DataRdy5_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_2 (.out1(sig_in_bus_mergerSout_DataRdy5_2), .in1(sig_in_vector_bus_mergerSout_DataRdy5_2));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_3 (.out1(sig_in_bus_mergerSout_DataRdy5_3), .in1(sig_in_vector_bus_mergerSout_DataRdy5_3));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerSout_Rdata_ram6_0 (.out1(sig_in_bus_mergerSout_Rdata_ram6_0), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_0));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerSout_Rdata_ram6_1 (.out1(sig_in_bus_mergerSout_Rdata_ram6_1), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_1));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerSout_Rdata_ram6_2 (.out1(sig_in_bus_mergerSout_Rdata_ram6_2), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_2));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerSout_Rdata_ram6_3 (.out1(sig_in_bus_mergerSout_Rdata_ram6_3), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_3));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in112_0 (.out1(sig_in_bus_mergerproxy_in112_0), .in1(sig_in_vector_bus_mergerproxy_in112_0));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in112_1 (.out1(sig_in_bus_mergerproxy_in112_1), .in1(sig_in_vector_bus_mergerproxy_in112_1));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in17_0 (.out1(sig_in_bus_mergerproxy_in17_0), .in1(sig_in_vector_bus_mergerproxy_in17_0));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in17_1 (.out1(sig_in_bus_mergerproxy_in17_1), .in1(sig_in_vector_bus_mergerproxy_in17_1));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in213_0 (.out1(sig_in_bus_mergerproxy_in213_0), .in1(sig_in_vector_bus_mergerproxy_in213_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in213_1 (.out1(sig_in_bus_mergerproxy_in213_1), .in1(sig_in_vector_bus_mergerproxy_in213_1));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in28_0 (.out1(sig_in_bus_mergerproxy_in28_0), .in1(sig_in_vector_bus_mergerproxy_in28_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in28_1 (.out1(sig_in_bus_mergerproxy_in28_1), .in1(sig_in_vector_bus_mergerproxy_in28_1));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in314_0 (.out1(sig_in_bus_mergerproxy_in314_0), .in1(sig_in_vector_bus_mergerproxy_in314_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in314_1 (.out1(sig_in_bus_mergerproxy_in314_1), .in1(sig_in_vector_bus_mergerproxy_in314_1));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in39_0 (.out1(sig_in_bus_mergerproxy_in39_0), .in1(sig_in_vector_bus_mergerproxy_in39_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in39_1 (.out1(sig_in_bus_mergerproxy_in39_1), .in1(sig_in_vector_bus_mergerproxy_in39_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD10_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD10_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD10_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD10_1 (.out1(sig_in_bus_mergerproxy_sel_LOAD10_1), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD10_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD15_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD15_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD15_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD15_1 (.out1(sig_in_bus_mergerproxy_sel_LOAD15_1), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD15_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE11_0 (.out1(sig_in_bus_mergerproxy_sel_STORE11_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE11_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE11_1 (.out1(sig_in_bus_mergerproxy_sel_STORE11_1), .in1(sig_in_vector_bus_mergerproxy_sel_STORE11_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE16_0 (.out1(sig_in_bus_mergerproxy_sel_STORE16_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE16_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE16_1 (.out1(sig_in_bus_mergerproxy_sel_STORE16_1), .in1(sig_in_vector_bus_mergerproxy_sel_STORE16_1));
  register_SE #(.BITSIZE_in1(13), .BITSIZE_out1(13)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_5_i0_fu_main_28879_30432), .wenable(wrenable_reg_0));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy5_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy5_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram6_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram6_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in112_ (.out1(sig_out_vector_bus_mergerproxy_in112_), .in1(sig_out_bus_mergerproxy_in112_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in17_ (.out1(sig_out_vector_bus_mergerproxy_in17_), .in1(sig_out_bus_mergerproxy_in17_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in213_ (.out1(sig_out_vector_bus_mergerproxy_in213_), .in1(sig_out_bus_mergerproxy_in213_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in28_ (.out1(sig_out_vector_bus_mergerproxy_in28_), .in1(sig_out_bus_mergerproxy_in28_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in314_ (.out1(sig_out_vector_bus_mergerproxy_in314_), .in1(sig_out_bus_mergerproxy_in314_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in39_ (.out1(sig_out_vector_bus_mergerproxy_in39_), .in1(sig_out_bus_mergerproxy_in39_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD10_ (.out1(sig_out_vector_bus_mergerproxy_sel_LOAD10_), .in1(sig_out_bus_mergerproxy_sel_LOAD10_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD15_ (.out1(sig_out_vector_bus_mergerproxy_sel_LOAD15_), .in1(sig_out_bus_mergerproxy_sel_LOAD15_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE11_ (.out1(sig_out_vector_bus_mergerproxy_sel_STORE11_), .in1(sig_out_bus_mergerproxy_sel_STORE11_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE16_ (.out1(sig_out_vector_bus_mergerproxy_sel_STORE16_), .in1(sig_out_bus_mergerproxy_sel_STORE16_));
  // io-signal post fix
  assign OUT_UNBOUNDED_main_28879_29900 = s_done_fu_main_28879_29900;
  assign OUT_UNBOUNDED_main_28879_29901 = s_done_fu_main_28879_29901;

endmodule

// FSM based controller description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_main(done_port, selector_IN_UNBOUNDED_main_28879_29900, selector_IN_UNBOUNDED_main_28879_29901, wrenable_reg_0, OUT_UNBOUNDED_main_28879_29900, OUT_UNBOUNDED_main_28879_29901, clock, reset, start_port);
  // IN
  input OUT_UNBOUNDED_main_28879_29900;
  input OUT_UNBOUNDED_main_28879_29901;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_IN_UNBOUNDED_main_28879_29900;
  output selector_IN_UNBOUNDED_main_28879_29901;
  output wrenable_reg_0;
  parameter [4:0] S_0 = 5'b00001,
    S_1 = 5'b00010,
    S_2 = 5'b00100,
    S_3 = 5'b01000,
    S_4 = 5'b10000;
  reg [4:0] _present_state, _next_state;
  reg done_port;
  reg selector_IN_UNBOUNDED_main_28879_29900;
  reg selector_IN_UNBOUNDED_main_28879_29901;
  reg wrenable_reg_0;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    selector_IN_UNBOUNDED_main_28879_29900 = 1'b0;
    selector_IN_UNBOUNDED_main_28879_29901 = 1'b0;
    wrenable_reg_0 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          selector_IN_UNBOUNDED_main_28879_29900 = 1'b1;
          wrenable_reg_0 = 1'b1;
          if (OUT_UNBOUNDED_main_28879_29900 == 1'b0)
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
          if (OUT_UNBOUNDED_main_28879_29900 == 1'b0)
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
          selector_IN_UNBOUNDED_main_28879_29901 = 1'b1;
          if (OUT_UNBOUNDED_main_28879_29901 == 1'b0)
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
          if (OUT_UNBOUNDED_main_28879_29901 == 1'b0)
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
  parameter MEM_var_28859_28870=1536, MEM_var_28861_28879=512, MEM_var_28862_28877=2048, MEM_var_28864_28877=2560, MEM_var_28865_28877=3072, MEM_var_28866_28877=3584, MEM_var_28867_28877=4096, MEM_var_28868_28879=1024;
  // IN
  input clock;
  input reset;
  input start_port;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [25:0] S_addr_ram;
  input [63:0] S_Wdata_ram;
  input [11:0] S_data_ram_size;
  input [63:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [63:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [25:0] Min_addr_ram;
  input [63:0] Min_Wdata_ram;
  input [11:0] Min_data_ram_size;
  // OUT
  output done_port;
  output [63:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [25:0] Mout_addr_ram;
  output [63:0] Mout_Wdata_ram;
  output [11:0] Mout_data_ram_size;
  // Component and signal declarations
  wire OUT_UNBOUNDED_main_28879_29900;
  wire OUT_UNBOUNDED_main_28879_29901;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire selector_IN_UNBOUNDED_main_28879_29900;
  wire selector_IN_UNBOUNDED_main_28879_29901;
  wire wrenable_reg_0;
  
  controller_main Controller_i (.done_port(done_delayed_REG_signal_in), .selector_IN_UNBOUNDED_main_28879_29900(selector_IN_UNBOUNDED_main_28879_29900), .selector_IN_UNBOUNDED_main_28879_29901(selector_IN_UNBOUNDED_main_28879_29901), .wrenable_reg_0(wrenable_reg_0), .OUT_UNBOUNDED_main_28879_29900(OUT_UNBOUNDED_main_28879_29900), .OUT_UNBOUNDED_main_28879_29901(OUT_UNBOUNDED_main_28879_29901), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_main #(.MEM_var_28859_28870(MEM_var_28859_28870), .MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28862_28877(MEM_var_28862_28877), .MEM_var_28864_28877(MEM_var_28864_28877), .MEM_var_28865_28877(MEM_var_28865_28877), .MEM_var_28866_28877(MEM_var_28866_28877), .MEM_var_28867_28877(MEM_var_28867_28877), .MEM_var_28868_28879(MEM_var_28868_28879)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_UNBOUNDED_main_28879_29900(OUT_UNBOUNDED_main_28879_29900), .OUT_UNBOUNDED_main_28879_29901(OUT_UNBOUNDED_main_28879_29901), .clock(clock), .reset(reset), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .selector_IN_UNBOUNDED_main_28879_29900(selector_IN_UNBOUNDED_main_28879_29900), .selector_IN_UNBOUNDED_main_28879_29901(selector_IN_UNBOUNDED_main_28879_29901), .wrenable_reg_0(wrenable_reg_0));
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
  parameter MEM_var_28859_28870=1536, MEM_var_28861_28879=512, MEM_var_28862_28877=2048, MEM_var_28864_28877=2560, MEM_var_28865_28877=3072, MEM_var_28866_28877=3584, MEM_var_28867_28877=4096, MEM_var_28868_28879=1024;
  // IN
  input clock;
  input reset;
  input start_port;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [25:0] S_addr_ram;
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
  output [25:0] Mout_addr_ram;
  output [63:0] Mout_Wdata_ram;
  output [11:0] Mout_data_ram_size;
  // Component and signal declarations
  
  _main #(.MEM_var_28859_28870(MEM_var_28859_28870), .MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28862_28877(MEM_var_28862_28877), .MEM_var_28864_28877(MEM_var_28864_28877), .MEM_var_28865_28877(MEM_var_28865_28877), .MEM_var_28866_28877(MEM_var_28866_28877), .MEM_var_28867_28877(MEM_var_28867_28877), .MEM_var_28868_28879(MEM_var_28868_28879)) _main_i0 (.done_port(done_port), .Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .clock(clock), .reset(reset), .start_port(start_port), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .Sin_DataRdy({1'b0, 1'b0}), .Min_oe_ram({1'b0, 1'b0}), .Min_we_ram({1'b0, 1'b0}), .Min_addr_ram({13'b0000000000000, 13'b0000000000000}), .Min_Wdata_ram({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .Min_data_ram_size({6'b000000, 6'b000000}));

endmodule


