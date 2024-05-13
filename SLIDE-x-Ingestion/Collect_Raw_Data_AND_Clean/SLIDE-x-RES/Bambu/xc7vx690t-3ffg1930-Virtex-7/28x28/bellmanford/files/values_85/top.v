// 
// Politecnico di Milano
// Code created using PandA - Version: PandA 0.9.6 - Revision 891ec3caed502474cab0813cc4a9fc678deabaa5 - Date 2022-06-07T22:20:38
// bambu executed with: bambu -I/home/dews/Scrivania/bambu-hls/RESULTS/Bambu/xc7vx690t-3ffg1930-Virtex-7/28x28/bellmanford/includes/values_85 --simulate --simulator=VERILATOR --clock-period=5 --device-name=xc7vx690t-3ffg1930-VVD /home/dews/Scrivania/bambu-hls/cc4cs_bambu/benchmarkBasic/bellmanford/thrd.c 
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

// Datapath RTL description for bellmanford
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_bellmanford(clock, reset, in_port_size, in_port_a, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, proxy_out1_28859, proxy_in1_28859, proxy_in2_28859, proxy_in3_28859, proxy_sel_LOAD_28859, proxy_sel_STORE_28859, proxy_out1_28861, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_STORE, fuselector_BMEMORY_CTRLN_43_i0_LOAD, fuselector_BMEMORY_CTRLN_43_i0_STORE, selector_MUX_0_ARRAY_1D_STD_BRAM_NN_0_i0_0_0_0, selector_MUX_18_PROXY_CTRLN_1_i0_0_0_0, selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0, selector_MUX_22_PROXY_CTRLN_2_i0_0_0_0, selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_0, selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_1, selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_0, selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_1, selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_1_0, selector_MUX_63_reg_0_0_0_0, selector_MUX_66_reg_11_0_0_0, selector_MUX_68_reg_13_0_0_0, selector_MUX_70_reg_15_0_0_0, selector_MUX_70_reg_15_0_0_1, selector_MUX_76_reg_20_0_0_0, selector_MUX_82_reg_26_0_0_0, selector_MUX_87_reg_7_0_0_0, selector_MUX_87_reg_7_0_0_1, selector_MUX_89_reg_9_0_0_0, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_bellmanford_28866_28934, OUT_CONDITION_bellmanford_28866_29107, OUT_CONDITION_bellmanford_28866_29134, OUT_CONDITION_bellmanford_28866_29139);
  parameter MEM_var_28859_28868=32, MEM_var_28861_28868=64, MEM_var_28862_28866=128;
  // IN
  input clock;
  input reset;
  input [7:0] in_port_size;
  input [31:0] in_port_a;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [15:0] S_addr_ram;
  input [63:0] S_Wdata_ram;
  input [11:0] S_data_ram_size;
  input [63:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [63:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [63:0] proxy_out1_28859;
  input [63:0] proxy_out1_28861;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [15:0] Min_addr_ram;
  input [63:0] Min_Wdata_ram;
  input [11:0] Min_data_ram_size;
  input fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_STORE;
  input fuselector_BMEMORY_CTRLN_43_i0_LOAD;
  input fuselector_BMEMORY_CTRLN_43_i0_STORE;
  input selector_MUX_0_ARRAY_1D_STD_BRAM_NN_0_i0_0_0_0;
  input selector_MUX_18_PROXY_CTRLN_1_i0_0_0_0;
  input selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0;
  input selector_MUX_22_PROXY_CTRLN_2_i0_0_0_0;
  input selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_0;
  input selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_1;
  input selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_0;
  input selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_1;
  input selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_1_0;
  input selector_MUX_63_reg_0_0_0_0;
  input selector_MUX_66_reg_11_0_0_0;
  input selector_MUX_68_reg_13_0_0_0;
  input selector_MUX_70_reg_15_0_0_0;
  input selector_MUX_70_reg_15_0_0_1;
  input selector_MUX_76_reg_20_0_0_0;
  input selector_MUX_82_reg_26_0_0_0;
  input selector_MUX_87_reg_7_0_0_0;
  input selector_MUX_87_reg_7_0_0_1;
  input selector_MUX_89_reg_9_0_0_0;
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
  input wrenable_reg_21;
  input wrenable_reg_22;
  input wrenable_reg_23;
  input wrenable_reg_24;
  input wrenable_reg_25;
  input wrenable_reg_26;
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
  output [63:0] proxy_in1_28859;
  output [15:0] proxy_in2_28859;
  output [11:0] proxy_in3_28859;
  output [1:0] proxy_sel_LOAD_28859;
  output [1:0] proxy_sel_STORE_28859;
  output [63:0] proxy_in1_28861;
  output [15:0] proxy_in2_28861;
  output [11:0] proxy_in3_28861;
  output [1:0] proxy_sel_LOAD_28861;
  output [1:0] proxy_sel_STORE_28861;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [15:0] Mout_addr_ram;
  output [63:0] Mout_Wdata_ram;
  output [11:0] Mout_data_ram_size;
  output OUT_CONDITION_bellmanford_28866_28934;
  output OUT_CONDITION_bellmanford_28866_29107;
  output OUT_CONDITION_bellmanford_28866_29134;
  output OUT_CONDITION_bellmanford_28866_29139;
  // Component and signal declarations
  wire [7:0] null_out_signal_BMEMORY_CTRLN_43_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_2_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_2_i0_out1_1;
  wire [31:0] null_out_signal_array_28862_0_proxy_out1_0;
  wire [31:0] null_out_signal_array_28862_0_proxy_out1_1;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_0_i0_array_28862_0;
  wire [7:0] out_ARRAY_1D_STD_BRAM_NN_0_i1_array_28862_0;
  wire [7:0] out_BMEMORY_CTRLN_43_i0_BMEMORY_CTRLN_43_i0;
  wire signed [7:0] out_IIdata_converter_FU_32_i0_fu_bellmanford_28866_29100;
  wire signed [7:0] out_IIdata_converter_FU_33_i0_fu_bellmanford_28866_29101;
  wire signed [7:0] out_IIdata_converter_FU_34_i0_fu_bellmanford_28866_29103;
  wire [7:0] out_MUX_0_ARRAY_1D_STD_BRAM_NN_0_i0_0_0_0;
  wire [7:0] out_MUX_18_PROXY_CTRLN_1_i0_0_0_0;
  wire [7:0] out_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0;
  wire [7:0] out_MUX_22_PROXY_CTRLN_2_i0_0_0_0;
  wire [7:0] out_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_0;
  wire [7:0] out_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_1;
  wire [7:0] out_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_0;
  wire [7:0] out_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_1;
  wire [7:0] out_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_1_0;
  wire [2:0] out_MUX_63_reg_0_0_0_0;
  wire [7:0] out_MUX_66_reg_11_0_0_0;
  wire [1:0] out_MUX_68_reg_13_0_0_0;
  wire [7:0] out_MUX_70_reg_15_0_0_0;
  wire [7:0] out_MUX_70_reg_15_0_0_1;
  wire [1:0] out_MUX_76_reg_20_0_0_0;
  wire [7:0] out_MUX_82_reg_26_0_0_0;
  wire [7:0] out_MUX_87_reg_7_0_0_0;
  wire [7:0] out_MUX_87_reg_7_0_0_1;
  wire [31:0] out_MUX_89_reg_9_0_0_0;
  wire signed [7:0] out_UIdata_converter_FU_14_i0_fu_bellmanford_28866_28957;
  wire [8:0] out_UUdata_converter_FU_22_i0_fu_bellmanford_28866_29004;
  wire [1:0] out_UUdata_converter_FU_23_i0_fu_bellmanford_28866_29066;
  wire [1:0] out_UUdata_converter_FU_24_i0_fu_bellmanford_28866_29138;
  wire [1:0] out_UUdata_converter_FU_35_i0_fu_bellmanford_28866_29061;
  wire [1:0] out_UUdata_converter_FU_36_i0_fu_bellmanford_28866_29133;
  wire [7:0] out_UUdata_converter_FU_7_i0_fu_bellmanford_28866_29319;
  wire [31:0] out_UUdata_converter_FU_8_i0_fu_bellmanford_28866_29084;
  wire [8:0] out_addr_expr_FU_10_i0_fu_bellmanford_28866_29390;
  wire [6:0] out_addr_expr_FU_5_i0_fu_bellmanford_28866_29312;
  wire [7:0] out_addr_expr_FU_6_i0_fu_bellmanford_28866_29336;
  wire [5:0] out_addr_expr_FU_9_i0_fu_bellmanford_28866_29374;
  wire signed [7:0] out_bit_ior_concat_expr_FU_44_i0_fu_bellmanford_28866_28958;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [6:0] out_const_10;
  wire [1:0] out_const_2;
  wire [4:0] out_const_3;
  wire out_const_4;
  wire [1:0] out_const_5;
  wire [1:0] out_const_6;
  wire [2:0] out_const_7;
  wire [7:0] out_const_8;
  wire [5:0] out_const_9;
  wire [1:0] out_conv_in_port_size_8_2;
  wire [31:0] out_conv_out_const_10_7_32;
  wire [5:0] out_conv_out_const_3_5_6;
  wire [31:0] out_conv_out_const_8_8_32;
  wire [31:0] out_conv_out_const_9_6_32;
  wire [7:0] out_conv_out_i_assign_conn_obj_8_ASSIGN_SIGNED_FU_i_assign_0_I_1_8;
  wire [7:0] out_conv_out_reg_10_reg_10_2_8;
  wire [7:0] out_conv_out_reg_19_reg_19_2_8;
  wire [7:0] out_conv_out_reg_1_reg_1_7_8;
  wire [7:0] out_conv_out_reg_5_reg_5_6_8;
  wire [6:0] out_conv_out_reg_7_reg_7_8_7;
  wire [7:0] out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_6_1_8;
  wire [1:0] out_conv_out_u_assign_conn_obj_10_ASSIGN_UNSIGNED_FU_u_assign_8_1_2;
  wire [2:0] out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_9_1_3;
  wire [1:0] out_conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_10_1_2;
  wire signed [0:0] out_i_assign_conn_obj_8_ASSIGN_SIGNED_FU_i_assign_0;
  wire [7:0] out_iu_conv_conn_obj_11_IUdata_converter_FU_iu_conv_1;
  wire [7:0] out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_2;
  wire [7:0] out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_3;
  wire [7:0] out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_4;
  wire [7:0] out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_5;
  wire signed [7:0] out_lshift_expr_FU_8_0_8_45_i0_fu_bellmanford_28866_29595;
  wire out_lt_expr_FU_16_16_16_46_i0_fu_bellmanford_28866_29105;
  wire out_ne_expr_FU_8_0_8_47_i0_fu_bellmanford_28866_29104;
  wire signed [6:0] out_plus_expr_FU_8_0_8_48_i0_fu_bellmanford_28866_29592;
  wire signed [7:0] out_plus_expr_FU_8_8_8_49_i0_fu_bellmanford_28866_29034;
  wire signed [8:0] out_plus_expr_FU_8_8_8_49_i1_fu_bellmanford_28866_29102;
  wire out_read_cond_FU_13_i0_fu_bellmanford_28866_28934;
  wire out_read_cond_FU_37_i0_fu_bellmanford_28866_29107;
  wire out_read_cond_FU_40_i0_fu_bellmanford_28866_29134;
  wire out_read_cond_FU_41_i0_fu_bellmanford_28866_29139;
  wire [2:0] out_reg_0_reg_0;
  wire [1:0] out_reg_10_reg_10;
  wire [7:0] out_reg_11_reg_11;
  wire [8:0] out_reg_12_reg_12;
  wire [1:0] out_reg_13_reg_13;
  wire [31:0] out_reg_14_reg_14;
  wire [7:0] out_reg_15_reg_15;
  wire [7:0] out_reg_16_reg_16;
  wire [7:0] out_reg_17_reg_17;
  wire out_reg_18_reg_18;
  wire [1:0] out_reg_19_reg_19;
  wire [6:0] out_reg_1_reg_1;
  wire [1:0] out_reg_20_reg_20;
  wire [7:0] out_reg_21_reg_21;
  wire [7:0] out_reg_22_reg_22;
  wire [7:0] out_reg_23_reg_23;
  wire out_reg_24_reg_24;
  wire out_reg_25_reg_25;
  wire [7:0] out_reg_26_reg_26;
  wire [7:0] out_reg_2_reg_2;
  wire [7:0] out_reg_3_reg_3;
  wire [7:0] out_reg_4_reg_4;
  wire [5:0] out_reg_5_reg_5;
  wire [8:0] out_reg_6_reg_6;
  wire [7:0] out_reg_7_reg_7;
  wire [7:0] out_reg_8_reg_8;
  wire [31:0] out_reg_9_reg_9;
  wire signed [6:0] out_rshift_expr_FU_8_0_8_50_i0_fu_bellmanford_28866_29587;
  wire [0:0] out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_6;
  wire [0:0] out_u_assign_conn_obj_10_ASSIGN_UNSIGNED_FU_u_assign_8;
  wire [7:0] out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_7;
  wire [0:0] out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_9;
  wire [0:0] out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_10;
  wire [0:0] out_ui_bit_and_expr_FU_1_1_1_51_i0_fu_bellmanford_28866_29106;
  wire out_ui_gt_expr_FU_8_8_8_52_i0_fu_bellmanford_28866_29566;
  wire out_ui_gt_expr_FU_8_8_8_52_i1_fu_bellmanford_28866_29568;
  wire [7:0] out_ui_lshift_expr_FU_8_0_8_53_i0_fu_bellmanford_28866_28932;
  wire out_ui_ne_expr_FU_8_0_8_54_i0_fu_bellmanford_28866_29556;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_55_i0_fu_bellmanford_28866_29088;
  wire [2:0] out_ui_plus_expr_FU_8_0_8_56_i0_fu_bellmanford_28866_28933;
  wire [1:0] out_ui_plus_expr_FU_8_0_8_56_i1_fu_bellmanford_28866_29047;
  wire [1:0] out_ui_plus_expr_FU_8_0_8_56_i2_fu_bellmanford_28866_29077;
  wire [1:0] out_ui_plus_expr_FU_8_0_8_57_i0_fu_bellmanford_28866_29057;
  wire [1:0] out_ui_plus_expr_FU_8_0_8_57_i1_fu_bellmanford_28866_29063;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_0_8_58_i0_fu_bellmanford_28866_29349;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_0_8_59_i0_fu_bellmanford_28866_29366;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_60_i0_fu_bellmanford_28866_29382;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_60_i1_fu_bellmanford_28866_29393;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_60_i2_fu_bellmanford_28866_29408;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_60_i3_fu_bellmanford_28866_29440;
  wire [7:0] out_vb_assign_conn_obj_12_ASSIGN_VECTOR_BOOL_FU_vb_assign_11;
  wire [7:0] out_vb_assign_conn_obj_13_ASSIGN_VECTOR_BOOL_FU_vb_assign_12;
  wire [7:0] out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_13;
  wire [63:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [15:0] sig_in_bus_mergerMout_addr_ram1_0;
  wire [11:0] sig_in_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_bus_mergerSout_DataRdy5_0;
  wire [63:0] sig_in_bus_mergerSout_Rdata_ram6_0;
  wire [63:0] sig_in_bus_mergerproxy_in1_288597_0;
  wire [63:0] sig_in_bus_mergerproxy_in1_288618_0;
  wire [15:0] sig_in_bus_mergerproxy_in2_288599_0;
  wire [15:0] sig_in_bus_mergerproxy_in2_2886110_0;
  wire [11:0] sig_in_bus_mergerproxy_in3_2885911_0;
  wire [11:0] sig_in_bus_mergerproxy_in3_2886112_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2885913_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886114_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2885915_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886116_0;
  wire [63:0] sig_in_vector_bus_mergerMout_Wdata_ram0_0;
  wire [15:0] sig_in_vector_bus_mergerMout_addr_ram1_0;
  wire [11:0] sig_in_vector_bus_mergerMout_data_ram_size2_0;
  wire [1:0] sig_in_vector_bus_mergerMout_oe_ram3_0;
  wire [1:0] sig_in_vector_bus_mergerMout_we_ram4_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy5_0;
  wire [63:0] sig_in_vector_bus_mergerSout_Rdata_ram6_0;
  wire [63:0] sig_in_vector_bus_mergerproxy_in1_288597_0;
  wire [63:0] sig_in_vector_bus_mergerproxy_in1_288618_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in2_288599_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in2_2886110_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in3_2885911_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in3_2886112_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2885913_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886114_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2885915_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886116_0;
  wire [63:0] sig_out_bus_mergerMout_Wdata_ram0_;
  wire [15:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [11:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire [1:0] sig_out_bus_mergerMout_oe_ram3_;
  wire [1:0] sig_out_bus_mergerMout_we_ram4_;
  wire [1:0] sig_out_bus_mergerSout_DataRdy5_;
  wire [63:0] sig_out_bus_mergerSout_Rdata_ram6_;
  wire [63:0] sig_out_bus_mergerproxy_in1_288597_;
  wire [63:0] sig_out_bus_mergerproxy_in1_288618_;
  wire [15:0] sig_out_bus_mergerproxy_in2_288599_;
  wire [15:0] sig_out_bus_mergerproxy_in2_2886110_;
  wire [11:0] sig_out_bus_mergerproxy_in3_2885911_;
  wire [11:0] sig_out_bus_mergerproxy_in3_2886112_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2885913_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886114_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2885915_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886116_;
  
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_SIGNED_FU_i_assign_0 (.out1(out_i_assign_conn_obj_8_ASSIGN_SIGNED_FU_i_assign_0), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_10 (.out1(out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_10), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_6 (.out1(out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_6), .in1(out_const_4));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_UNSIGNED_FU_u_assign_7 (.out1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_7), .in1(out_ui_lshift_expr_FU_8_0_8_53_i0_fu_bellmanford_28866_28932));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_8 (.out1(out_u_assign_conn_obj_10_ASSIGN_UNSIGNED_FU_u_assign_8), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_9 (.out1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_9), .in1(out_const_0));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_11 (.out1(out_vb_assign_conn_obj_12_ASSIGN_VECTOR_BOOL_FU_vb_assign_11), .in1(out_conv_out_reg_19_reg_19_2_8));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_12 (.out1(out_vb_assign_conn_obj_13_ASSIGN_VECTOR_BOOL_FU_vb_assign_12), .in1(out_conv_out_reg_10_reg_10_2_8));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_13 (.out1(out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_13), .in1(out_const_1));
  BMEMORY_CTRLN #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_in2(8), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_Min_oe_ram(1), .PORTSIZE_Min_oe_ram(2), .BITSIZE_Min_we_ram(1), .PORTSIZE_Min_we_ram(2), .BITSIZE_Mout_oe_ram(1), .PORTSIZE_Mout_oe_ram(2), .BITSIZE_Mout_we_ram(1), .PORTSIZE_Mout_we_ram(2), .BITSIZE_M_DataRdy(1), .PORTSIZE_M_DataRdy(2), .BITSIZE_Min_addr_ram(8), .PORTSIZE_Min_addr_ram(2), .BITSIZE_Mout_addr_ram(8), .PORTSIZE_Mout_addr_ram(2), .BITSIZE_M_Rdata_ram(32), .PORTSIZE_M_Rdata_ram(2), .BITSIZE_Min_Wdata_ram(32), .PORTSIZE_Min_Wdata_ram(2), .BITSIZE_Mout_Wdata_ram(32), .PORTSIZE_Mout_Wdata_ram(2), .BITSIZE_Min_data_ram_size(6), .PORTSIZE_Min_data_ram_size(2), .BITSIZE_Mout_data_ram_size(6), .PORTSIZE_Mout_data_ram_size(2)) BMEMORY_CTRLN_43_i0 (.out1({null_out_signal_BMEMORY_CTRLN_43_i0_out1_1, out_BMEMORY_CTRLN_43_i0_BMEMORY_CTRLN_43_i0}), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .in1({1'b0, 1'b0}), .in2({8'b00000000, out_ui_pointer_plus_expr_FU_8_8_8_60_i0_fu_bellmanford_28866_29382}), .in3({6'b000000, out_conv_out_const_3_5_6}), .in4({1'b0, out_const_4}), .sel_LOAD({1'b0, fuselector_BMEMORY_CTRLN_43_i0_LOAD}), .sel_STORE({1'b0, fuselector_BMEMORY_CTRLN_43_i0_STORE}), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .M_Rdata_ram(M_Rdata_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .M_DataRdy(M_DataRdy));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_11_IUdata_converter_FU_iu_conv_1), .in1(out_reg_26_reg_26));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_2 (.out1(out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_2), .in1(out_bit_ior_concat_expr_FU_44_i0_fu_bellmanford_28866_28958));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_3 (.out1(out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_3), .in1(out_bit_ior_concat_expr_FU_44_i0_fu_bellmanford_28866_28958));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_4 (.out1(out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_4), .in1(out_reg_8_reg_8));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_5 (.out1(out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_5), .in1(out_const_1));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_0_ARRAY_1D_STD_BRAM_NN_0_i0_0_0_0 (.out1(out_MUX_0_ARRAY_1D_STD_BRAM_NN_0_i0_0_0_0), .sel(selector_MUX_0_ARRAY_1D_STD_BRAM_NN_0_i0_0_0_0), .in1(out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_2), .in2(out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_5));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_18_PROXY_CTRLN_1_i0_0_0_0 (.out1(out_MUX_18_PROXY_CTRLN_1_i0_0_0_0), .sel(selector_MUX_18_PROXY_CTRLN_1_i0_0_0_0), .in1(out_vb_assign_conn_obj_12_ASSIGN_VECTOR_BOOL_FU_vb_assign_11), .in2(out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_13));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0 (.out1(out_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0), .sel(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0), .in1(out_reg_23_reg_23), .in2(out_reg_2_reg_2));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_22_PROXY_CTRLN_2_i0_0_0_0 (.out1(out_MUX_22_PROXY_CTRLN_2_i0_0_0_0), .sel(selector_MUX_22_PROXY_CTRLN_2_i0_0_0_0), .in1(out_vb_assign_conn_obj_13_ASSIGN_VECTOR_BOOL_FU_vb_assign_12), .in2(out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_13));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_0 (.out1(out_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_0), .sel(selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_0), .in1(out_iu_conv_conn_obj_11_IUdata_converter_FU_iu_conv_1), .in2(out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_3));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_1 (.out1(out_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_1), .sel(selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_1), .in1(out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_4), .in2(out_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_0 (.out1(out_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_0), .sel(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_0), .in1(out_reg_4_reg_4), .in2(out_reg_3_reg_3));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_1 (.out1(out_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_1), .sel(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_1), .in1(out_reg_17_reg_17), .in2(out_reg_16_reg_16));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_1_0 (.out1(out_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_1_0), .sel(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_1_0), .in1(out_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_0), .in2(out_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_1));
  MUX_GATE #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(3)) MUX_63_reg_0_0_0_0 (.out1(out_MUX_63_reg_0_0_0_0), .sel(selector_MUX_63_reg_0_0_0_0), .in1(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_9_1_3), .in2(out_ui_plus_expr_FU_8_0_8_56_i0_fu_bellmanford_28866_28933));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_66_reg_11_0_0_0 (.out1(out_MUX_66_reg_11_0_0_0), .sel(selector_MUX_66_reg_11_0_0_0), .in1(out_ARRAY_1D_STD_BRAM_NN_0_i0_array_28862_0), .in2(out_conv_out_i_assign_conn_obj_8_ASSIGN_SIGNED_FU_i_assign_0_I_1_8));
  MUX_GATE #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(2)) MUX_68_reg_13_0_0_0 (.out1(out_MUX_68_reg_13_0_0_0), .sel(selector_MUX_68_reg_13_0_0_0), .in1(out_conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_10_1_2), .in2(out_ui_plus_expr_FU_8_0_8_56_i2_fu_bellmanford_28866_29077));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_70_reg_15_0_0_0 (.out1(out_MUX_70_reg_15_0_0_0), .sel(selector_MUX_70_reg_15_0_0_0), .in1(out_reg_26_reg_26), .in2(out_ARRAY_1D_STD_BRAM_NN_0_i1_array_28862_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_70_reg_15_0_0_1 (.out1(out_MUX_70_reg_15_0_0_1), .sel(selector_MUX_70_reg_15_0_0_1), .in1(out_conv_out_i_assign_conn_obj_8_ASSIGN_SIGNED_FU_i_assign_0_I_1_8), .in2(out_MUX_70_reg_15_0_0_0));
  MUX_GATE #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(2)) MUX_76_reg_20_0_0_0 (.out1(out_MUX_76_reg_20_0_0_0), .sel(selector_MUX_76_reg_20_0_0_0), .in1(out_conv_out_u_assign_conn_obj_10_ASSIGN_UNSIGNED_FU_u_assign_8_1_2), .in2(out_ui_plus_expr_FU_8_0_8_56_i1_fu_bellmanford_28866_29047));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_82_reg_26_0_0_0 (.out1(out_MUX_82_reg_26_0_0_0), .sel(selector_MUX_82_reg_26_0_0_0), .in1(out_reg_15_reg_15), .in2(out_plus_expr_FU_8_8_8_49_i0_fu_bellmanford_28866_29034));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_87_reg_7_0_0_0 (.out1(out_MUX_87_reg_7_0_0_0), .sel(selector_MUX_87_reg_7_0_0_0), .in1(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_6_1_8), .in2(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_7));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_87_reg_7_0_0_1 (.out1(out_MUX_87_reg_7_0_0_1), .sel(selector_MUX_87_reg_7_0_0_1), .in1(out_ui_lshift_expr_FU_8_0_8_53_i0_fu_bellmanford_28866_28932), .in2(out_MUX_87_reg_7_0_0_0));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_89_reg_9_0_0_0 (.out1(out_MUX_89_reg_9_0_0_0), .sel(selector_MUX_89_reg_9_0_0_0), .in1(out_reg_14_reg_14), .in2(out_UUdata_converter_FU_8_i0_fu_bellmanford_28866_29084));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(8), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(8), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_1_i0 (.out1({null_out_signal_PROXY_CTRLN_1_i0_out1_1, null_out_signal_PROXY_CTRLN_1_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288597_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288599_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2885911_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2885913_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2885915_0), .in1({8'b00000000, out_MUX_18_PROXY_CTRLN_1_i0_0_0_0}), .in2({8'b00000000, out_conv_out_reg_5_reg_5_6_8}), .in3({6'b000000, out_conv_out_const_3_5_6}), .in4({1'b0, out_const_4}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_1_i0_STORE}), .proxy_out1(proxy_out1_28859));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(8), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(8), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_2_i0 (.out1({null_out_signal_PROXY_CTRLN_2_i0_out1_1, null_out_signal_PROXY_CTRLN_2_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288618_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2886110_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886112_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886114_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886116_0), .in1({8'b00000000, out_MUX_22_PROXY_CTRLN_2_i0_0_0_0}), .in2({8'b00000000, out_conv_out_reg_1_reg_1_7_8}), .in3({6'b000000, out_conv_out_const_3_5_6}), .in4({1'b0, out_const_4}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_2_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_2_i0_STORE}), .proxy_out1(proxy_out1_28861));
  ARRAY_1D_STD_BRAM_NN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(8), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(8), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(32), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(32), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(32), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(6), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file_a("array_ref_28862.mem"), .MEMORY_INIT_file_b("0_array_ref_28862.mem"), .n_elements(3), .data_size(8), .address_space_begin(MEM_var_28862_28866), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(16), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(8), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) array_28862_0 (.out1({out_ARRAY_1D_STD_BRAM_NN_0_i1_array_28862_0, out_ARRAY_1D_STD_BRAM_NN_0_i0_array_28862_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_0), .proxy_out1({null_out_signal_array_28862_0_proxy_out1_1, null_out_signal_array_28862_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({out_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_1, out_MUX_0_ARRAY_1D_STD_BRAM_NN_0_i0_0_0_0}), .in2({out_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_1_0, out_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0}), .in3({out_conv_out_const_3_5_6, out_conv_out_const_3_5_6}), .in4({out_const_4, out_const_4}), .sel_LOAD({fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD}), .sel_STORE({fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .proxy_in2({8'b00000000, 8'b00000000}), .proxy_in3({6'b000000, 6'b000000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(1), .BITSIZE_out1(12)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerSout_DataRdy5_ (.out1(sig_out_bus_mergerSout_DataRdy5_), .in1({sig_in_bus_mergerSout_DataRdy5_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerSout_Rdata_ram6_ (.out1(sig_out_bus_mergerSout_Rdata_ram6_), .in1({sig_in_bus_mergerSout_Rdata_ram6_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerproxy_in1_288597_ (.out1(sig_out_bus_mergerproxy_in1_288597_), .in1({sig_in_bus_mergerproxy_in1_288597_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerproxy_in1_288618_ (.out1(sig_out_bus_mergerproxy_in1_288618_), .in1({sig_in_bus_mergerproxy_in1_288618_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in2_288599_ (.out1(sig_out_bus_mergerproxy_in2_288599_), .in1({sig_in_bus_mergerproxy_in2_288599_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in2_2886110_ (.out1(sig_out_bus_mergerproxy_in2_2886110_), .in1({sig_in_bus_mergerproxy_in2_2886110_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(1), .BITSIZE_out1(12)) bus_mergerproxy_in3_2885911_ (.out1(sig_out_bus_mergerproxy_in3_2885911_), .in1({sig_in_bus_mergerproxy_in3_2885911_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(1), .BITSIZE_out1(12)) bus_mergerproxy_in3_2886112_ (.out1(sig_out_bus_mergerproxy_in3_2886112_), .in1({sig_in_bus_mergerproxy_in3_2886112_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2885913_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2885913_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2885913_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886114_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886114_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886114_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2885915_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2885915_), .in1({sig_in_bus_mergerproxy_sel_STORE_2885915_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886116_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886116_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886116_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(7), .value(MEM_var_28861_28868)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(2), .value(2'b01)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(2), .value(2'b10)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(3), .value(3'b111)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28862_28866)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(6), .value(MEM_var_28859_28868)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(2)) conv_in_port_size_8_2 (.out1(out_conv_in_port_size_8_2), .in1(in_port_size));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(32)) conv_out_const_10_7_32 (.out1(out_conv_out_const_10_7_32), .in1(out_const_10));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(6)) conv_out_const_3_5_6 (.out1(out_conv_out_const_3_5_6), .in1(out_const_3));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_8_8_32 (.out1(out_conv_out_const_8_8_32), .in1(out_const_8));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(32)) conv_out_const_9_6_32 (.out1(out_conv_out_const_9_6_32), .in1(out_const_9));
  IUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_i_assign_conn_obj_8_ASSIGN_SIGNED_FU_i_assign_0_I_1_8 (.out1(out_conv_out_i_assign_conn_obj_8_ASSIGN_SIGNED_FU_i_assign_0_I_1_8), .in1(out_i_assign_conn_obj_8_ASSIGN_SIGNED_FU_i_assign_0));
  UUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(8)) conv_out_reg_10_reg_10_2_8 (.out1(out_conv_out_reg_10_reg_10_2_8), .in1(out_reg_10_reg_10));
  UUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(8)) conv_out_reg_19_reg_19_2_8 (.out1(out_conv_out_reg_19_reg_19_2_8), .in1(out_reg_19_reg_19));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(8)) conv_out_reg_1_reg_1_7_8 (.out1(out_conv_out_reg_1_reg_1_7_8), .in1(out_reg_1_reg_1));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(8)) conv_out_reg_5_reg_5_6_8 (.out1(out_conv_out_reg_5_reg_5_6_8), .in1(out_reg_5_reg_5));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(7)) conv_out_reg_7_reg_7_8_7 (.out1(out_conv_out_reg_7_reg_7_8_7), .in1(out_reg_7_reg_7));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_6_1_8 (.out1(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_6_1_8), .in1(out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_6));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(2)) conv_out_u_assign_conn_obj_10_ASSIGN_UNSIGNED_FU_u_assign_8_1_2 (.out1(out_conv_out_u_assign_conn_obj_10_ASSIGN_UNSIGNED_FU_u_assign_8_1_2), .in1(out_u_assign_conn_obj_10_ASSIGN_UNSIGNED_FU_u_assign_8));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(3)) conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_9_1_3 (.out1(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_9_1_3), .in1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_9));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(2)) conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_10_1_2 (.out1(out_conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_10_1_2), .in1(out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_10));
  ui_lshift_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(1), .BITSIZE_out1(8), .PRECISION(8)) fu_bellmanford_28866_28932 (.out1(out_ui_lshift_expr_FU_8_0_8_53_i0_fu_bellmanford_28866_28932), .in1(out_conv_out_reg_7_reg_7_8_7), .in2(out_const_4));
  ui_plus_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(3)) fu_bellmanford_28866_28933 (.out1(out_ui_plus_expr_FU_8_0_8_56_i0_fu_bellmanford_28866_28933), .in1(out_reg_0_reg_0), .in2(out_const_4));
  read_cond_FU #(.BITSIZE_in1(1)) fu_bellmanford_28866_28934 (.out1(out_read_cond_FU_13_i0_fu_bellmanford_28866_28934), .in1(out_ui_ne_expr_FU_8_0_8_54_i0_fu_bellmanford_28866_29556));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_bellmanford_28866_28957 (.out1(out_UIdata_converter_FU_14_i0_fu_bellmanford_28866_28957), .in1(out_reg_7_reg_7));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(8), .OFFSET_PARAMETER(1)) fu_bellmanford_28866_28958 (.out1(out_bit_ior_concat_expr_FU_44_i0_fu_bellmanford_28866_28958), .in1(out_lshift_expr_FU_8_0_8_45_i0_fu_bellmanford_28866_29595), .in2(out_const_2), .in3(out_const_2));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(9)) fu_bellmanford_28866_29004 (.out1(out_UUdata_converter_FU_22_i0_fu_bellmanford_28866_29004), .in1(out_reg_9_reg_9));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) fu_bellmanford_28866_29034 (.out1(out_plus_expr_FU_8_8_8_49_i0_fu_bellmanford_28866_29034), .in1(out_BMEMORY_CTRLN_43_i0_BMEMORY_CTRLN_43_i0), .in2(out_reg_11_reg_11));
  ui_plus_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_out1(2)) fu_bellmanford_28866_29047 (.out1(out_ui_plus_expr_FU_8_0_8_56_i1_fu_bellmanford_28866_29047), .in1(out_reg_20_reg_20), .in2(out_const_4));
  ui_plus_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_out1(2)) fu_bellmanford_28866_29057 (.out1(out_ui_plus_expr_FU_8_0_8_57_i0_fu_bellmanford_28866_29057), .in1(out_UUdata_converter_FU_35_i0_fu_bellmanford_28866_29061), .in2(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) fu_bellmanford_28866_29061 (.out1(out_UUdata_converter_FU_35_i0_fu_bellmanford_28866_29061), .in1(out_reg_20_reg_20));
  ui_plus_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_out1(2)) fu_bellmanford_28866_29063 (.out1(out_ui_plus_expr_FU_8_0_8_57_i1_fu_bellmanford_28866_29063), .in1(out_UUdata_converter_FU_23_i0_fu_bellmanford_28866_29066), .in2(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) fu_bellmanford_28866_29066 (.out1(out_UUdata_converter_FU_23_i0_fu_bellmanford_28866_29066), .in1(out_reg_13_reg_13));
  ui_plus_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_out1(2)) fu_bellmanford_28866_29077 (.out1(out_ui_plus_expr_FU_8_0_8_56_i2_fu_bellmanford_28866_29077), .in1(out_reg_13_reg_13), .in2(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_bellmanford_28866_29084 (.out1(out_UUdata_converter_FU_8_i0_fu_bellmanford_28866_29084), .in1(in_port_a));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(32)) fu_bellmanford_28866_29088 (.out1(out_ui_plus_expr_FU_32_0_32_55_i0_fu_bellmanford_28866_29088), .in1(out_reg_9_reg_9), .in2(out_const_6));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_bellmanford_28866_29100 (.out1(out_IIdata_converter_FU_32_i0_fu_bellmanford_28866_29100), .in1(out_reg_11_reg_11));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_bellmanford_28866_29101 (.out1(out_IIdata_converter_FU_33_i0_fu_bellmanford_28866_29101), .in1(out_BMEMORY_CTRLN_43_i0_BMEMORY_CTRLN_43_i0));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(9)) fu_bellmanford_28866_29102 (.out1(out_plus_expr_FU_8_8_8_49_i1_fu_bellmanford_28866_29102), .in1(out_IIdata_converter_FU_33_i0_fu_bellmanford_28866_29101), .in2(out_reg_21_reg_21));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_bellmanford_28866_29103 (.out1(out_IIdata_converter_FU_34_i0_fu_bellmanford_28866_29103), .in1(out_reg_15_reg_15));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_bellmanford_28866_29104 (.out1(out_ne_expr_FU_8_0_8_47_i0_fu_bellmanford_28866_29104), .in1(out_BMEMORY_CTRLN_43_i0_BMEMORY_CTRLN_43_i0), .in2(out_const_6));
  lt_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_bellmanford_28866_29105 (.out1(out_lt_expr_FU_16_16_16_46_i0_fu_bellmanford_28866_29105), .in1(out_plus_expr_FU_8_8_8_49_i1_fu_bellmanford_28866_29102), .in2(out_reg_22_reg_22));
  ui_bit_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_bellmanford_28866_29106 (.out1(out_ui_bit_and_expr_FU_1_1_1_51_i0_fu_bellmanford_28866_29106), .in1(out_lt_expr_FU_16_16_16_46_i0_fu_bellmanford_28866_29105), .in2(out_ne_expr_FU_8_0_8_47_i0_fu_bellmanford_28866_29104));
  read_cond_FU #(.BITSIZE_in1(1)) fu_bellmanford_28866_29107 (.out1(out_read_cond_FU_37_i0_fu_bellmanford_28866_29107), .in1(out_reg_25_reg_25));
  UUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) fu_bellmanford_28866_29133 (.out1(out_UUdata_converter_FU_36_i0_fu_bellmanford_28866_29133), .in1(out_ui_plus_expr_FU_8_0_8_56_i1_fu_bellmanford_28866_29047));
  read_cond_FU #(.BITSIZE_in1(1)) fu_bellmanford_28866_29134 (.out1(out_read_cond_FU_40_i0_fu_bellmanford_28866_29134), .in1(out_reg_24_reg_24));
  UUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) fu_bellmanford_28866_29138 (.out1(out_UUdata_converter_FU_24_i0_fu_bellmanford_28866_29138), .in1(out_ui_plus_expr_FU_8_0_8_56_i2_fu_bellmanford_28866_29077));
  read_cond_FU #(.BITSIZE_in1(1)) fu_bellmanford_28866_29139 (.out1(out_read_cond_FU_41_i0_fu_bellmanford_28866_29139), .in1(out_reg_18_reg_18));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_bellmanford_28866_29312 (.out1(out_addr_expr_FU_5_i0_fu_bellmanford_28866_29312), .in1(out_conv_out_const_10_7_32));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_bellmanford_28866_29319 (.out1(out_UUdata_converter_FU_7_i0_fu_bellmanford_28866_29319), .in1(out_addr_expr_FU_6_i0_fu_bellmanford_28866_29336));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_bellmanford_28866_29336 (.out1(out_addr_expr_FU_6_i0_fu_bellmanford_28866_29336), .in1(out_conv_out_const_8_8_32));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_bellmanford_28866_29349 (.out1(out_ui_pointer_plus_expr_FU_8_0_8_58_i0_fu_bellmanford_28866_29349), .in1(out_UUdata_converter_FU_7_i0_fu_bellmanford_28866_29319), .in2(out_const_4));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_bellmanford_28866_29366 (.out1(out_ui_pointer_plus_expr_FU_8_0_8_59_i0_fu_bellmanford_28866_29366), .in1(out_UUdata_converter_FU_7_i0_fu_bellmanford_28866_29319), .in2(out_const_5));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(6)) fu_bellmanford_28866_29374 (.out1(out_addr_expr_FU_9_i0_fu_bellmanford_28866_29374), .in1(out_conv_out_const_9_6_32));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_bellmanford_28866_29382 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_60_i0_fu_bellmanford_28866_29382), .in1(out_reg_12_reg_12), .in2(out_reg_20_reg_20));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(9)) fu_bellmanford_28866_29390 (.out1(out_addr_expr_FU_10_i0_fu_bellmanford_28866_29390), .in1(out_conv_out_const_8_8_32));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_bellmanford_28866_29393 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_60_i1_fu_bellmanford_28866_29393), .in1(out_reg_6_reg_6), .in2(out_reg_13_reg_13));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_bellmanford_28866_29408 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_60_i2_fu_bellmanford_28866_29408), .in1(out_reg_6_reg_6), .in2(out_ui_plus_expr_FU_8_0_8_56_i1_fu_bellmanford_28866_29047));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_bellmanford_28866_29440 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_60_i3_fu_bellmanford_28866_29440), .in1(out_reg_6_reg_6), .in2(out_ui_plus_expr_FU_8_0_8_56_i2_fu_bellmanford_28866_29077));
  ui_ne_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(1)) fu_bellmanford_28866_29556 (.out1(out_ui_ne_expr_FU_8_0_8_54_i0_fu_bellmanford_28866_29556), .in1(out_ui_plus_expr_FU_8_0_8_56_i0_fu_bellmanford_28866_28933), .in2(out_const_7));
  ui_gt_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_bellmanford_28866_29566 (.out1(out_ui_gt_expr_FU_8_8_8_52_i0_fu_bellmanford_28866_29566), .in1(out_conv_in_port_size_8_2), .in2(out_UUdata_converter_FU_36_i0_fu_bellmanford_28866_29133));
  ui_gt_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_bellmanford_28866_29568 (.out1(out_ui_gt_expr_FU_8_8_8_52_i1_fu_bellmanford_28866_29568), .in1(out_conv_in_port_size_8_2), .in2(out_UUdata_converter_FU_24_i0_fu_bellmanford_28866_29138));
  rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(7), .PRECISION(8)) fu_bellmanford_28866_29587 (.out1(out_rshift_expr_FU_8_0_8_50_i0_fu_bellmanford_28866_29587), .in1(out_UIdata_converter_FU_14_i0_fu_bellmanford_28866_28957), .in2(out_const_2));
  plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_out1(7)) fu_bellmanford_28866_29592 (.out1(out_plus_expr_FU_8_0_8_48_i0_fu_bellmanford_28866_29592), .in1(out_rshift_expr_FU_8_0_8_50_i0_fu_bellmanford_28866_29587), .in2(out_const_6));
  lshift_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(8)) fu_bellmanford_28866_29595 (.out1(out_lshift_expr_FU_8_0_8_45_i0_fu_bellmanford_28866_29595), .in1(out_plus_expr_FU_8_0_8_48_i0_fu_bellmanford_28866_29592), .in2(out_const_2));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerMout_data_ram_size2_0 (.out1(sig_in_bus_mergerMout_data_ram_size2_0), .in1(sig_in_vector_bus_mergerMout_data_ram_size2_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_oe_ram3_0 (.out1(sig_in_bus_mergerMout_oe_ram3_0), .in1(sig_in_vector_bus_mergerMout_oe_ram3_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerMout_we_ram4_0 (.out1(sig_in_bus_mergerMout_we_ram4_0), .in1(sig_in_vector_bus_mergerMout_we_ram4_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy5_0 (.out1(sig_in_bus_mergerSout_DataRdy5_0), .in1(sig_in_vector_bus_mergerSout_DataRdy5_0));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerSout_Rdata_ram6_0 (.out1(sig_in_bus_mergerSout_Rdata_ram6_0), .in1(sig_in_vector_bus_mergerSout_Rdata_ram6_0));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in1_288597_0 (.out1(sig_in_bus_mergerproxy_in1_288597_0), .in1(sig_in_vector_bus_mergerproxy_in1_288597_0));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in1_288618_0 (.out1(sig_in_bus_mergerproxy_in1_288618_0), .in1(sig_in_vector_bus_mergerproxy_in1_288618_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in2_288599_0 (.out1(sig_in_bus_mergerproxy_in2_288599_0), .in1(sig_in_vector_bus_mergerproxy_in2_288599_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in2_2886110_0 (.out1(sig_in_bus_mergerproxy_in2_2886110_0), .in1(sig_in_vector_bus_mergerproxy_in2_2886110_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in3_2885911_0 (.out1(sig_in_bus_mergerproxy_in3_2885911_0), .in1(sig_in_vector_bus_mergerproxy_in3_2885911_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in3_2886112_0 (.out1(sig_in_bus_mergerproxy_in3_2886112_0), .in1(sig_in_vector_bus_mergerproxy_in3_2886112_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2885913_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2885913_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2885913_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886114_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886114_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886114_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2885915_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2885915_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2885915_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886116_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886116_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886116_0));
  register_SE #(.BITSIZE_in1(3), .BITSIZE_out1(3)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_MUX_63_reg_0_0_0_0), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_5_i0_fu_bellmanford_28866_29312), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_57_i1_fu_bellmanford_28866_29063), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_MUX_66_reg_11_0_0_0), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_22_i0_fu_bellmanford_28866_29004), .wenable(wrenable_reg_12));
  register_SE #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_MUX_68_reg_13_0_0_0), .wenable(wrenable_reg_13));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_32_0_32_55_i0_fu_bellmanford_28866_29088), .wenable(wrenable_reg_14));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_MUX_70_reg_15_0_0_1), .wenable(wrenable_reg_15));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_60_i1_fu_bellmanford_28866_29393), .wenable(wrenable_reg_16));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_60_i3_fu_bellmanford_28866_29440), .wenable(wrenable_reg_17));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_ui_gt_expr_FU_8_8_8_52_i1_fu_bellmanford_28866_29568), .wenable(wrenable_reg_18));
  register_SE #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_19 (.out1(out_reg_19_reg_19), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_57_i0_fu_bellmanford_28866_29057), .wenable(wrenable_reg_19));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_7_i0_fu_bellmanford_28866_29319), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_20 (.out1(out_reg_20_reg_20), .clock(clock), .reset(reset), .in1(out_MUX_76_reg_20_0_0_0), .wenable(wrenable_reg_20));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_21 (.out1(out_reg_21_reg_21), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_32_i0_fu_bellmanford_28866_29100), .wenable(wrenable_reg_21));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_22 (.out1(out_reg_22_reg_22), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_34_i0_fu_bellmanford_28866_29103), .wenable(wrenable_reg_22));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_23 (.out1(out_reg_23_reg_23), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_60_i2_fu_bellmanford_28866_29408), .wenable(wrenable_reg_23));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_24 (.out1(out_reg_24_reg_24), .clock(clock), .reset(reset), .in1(out_ui_gt_expr_FU_8_8_8_52_i0_fu_bellmanford_28866_29566), .wenable(wrenable_reg_24));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_25 (.out1(out_reg_25_reg_25), .clock(clock), .reset(reset), .in1(out_ui_bit_and_expr_FU_1_1_1_51_i0_fu_bellmanford_28866_29106), .wenable(wrenable_reg_25));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_26 (.out1(out_reg_26_reg_26), .clock(clock), .reset(reset), .in1(out_MUX_82_reg_26_0_0_0), .wenable(wrenable_reg_26));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_0_8_58_i0_fu_bellmanford_28866_29349), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_0_8_59_i0_fu_bellmanford_28866_29366), .wenable(wrenable_reg_4));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_9_i0_fu_bellmanford_28866_29374), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_10_i0_fu_bellmanford_28866_29390), .wenable(wrenable_reg_6));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_MUX_87_reg_7_0_0_1), .wenable(wrenable_reg_7));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_bit_ior_concat_expr_FU_44_i0_fu_bellmanford_28866_28958), .wenable(wrenable_reg_8));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_MUX_89_reg_9_0_0_0), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy5_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy5_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram6_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram6_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288597_ (.out1(proxy_in1_28859), .in1(sig_out_bus_mergerproxy_in1_288597_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288618_ (.out1(proxy_in1_28861), .in1(sig_out_bus_mergerproxy_in1_288618_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288599_ (.out1(proxy_in2_28859), .in1(sig_out_bus_mergerproxy_in2_288599_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2886110_ (.out1(proxy_in2_28861), .in1(sig_out_bus_mergerproxy_in2_2886110_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2885911_ (.out1(proxy_in3_28859), .in1(sig_out_bus_mergerproxy_in3_2885911_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_2886112_ (.out1(proxy_in3_28861), .in1(sig_out_bus_mergerproxy_in3_2886112_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2885913_ (.out1(proxy_sel_LOAD_28859), .in1(sig_out_bus_mergerproxy_sel_LOAD_2885913_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886114_ (.out1(proxy_sel_LOAD_28861), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886114_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2885915_ (.out1(proxy_sel_STORE_28859), .in1(sig_out_bus_mergerproxy_sel_STORE_2885915_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886116_ (.out1(proxy_sel_STORE_28861), .in1(sig_out_bus_mergerproxy_sel_STORE_2886116_));
  // io-signal post fix
  assign OUT_CONDITION_bellmanford_28866_28934 = out_read_cond_FU_13_i0_fu_bellmanford_28866_28934;
  assign OUT_CONDITION_bellmanford_28866_29107 = out_read_cond_FU_37_i0_fu_bellmanford_28866_29107;
  assign OUT_CONDITION_bellmanford_28866_29134 = out_read_cond_FU_40_i0_fu_bellmanford_28866_29134;
  assign OUT_CONDITION_bellmanford_28866_29139 = out_read_cond_FU_41_i0_fu_bellmanford_28866_29139;

endmodule

// FSM based controller description for bellmanford
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_bellmanford(done_port, fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_STORE, fuselector_BMEMORY_CTRLN_43_i0_LOAD, fuselector_BMEMORY_CTRLN_43_i0_STORE, selector_MUX_0_ARRAY_1D_STD_BRAM_NN_0_i0_0_0_0, selector_MUX_18_PROXY_CTRLN_1_i0_0_0_0, selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0, selector_MUX_22_PROXY_CTRLN_2_i0_0_0_0, selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_0, selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_1, selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_0, selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_1, selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_1_0, selector_MUX_63_reg_0_0_0_0, selector_MUX_66_reg_11_0_0_0, selector_MUX_68_reg_13_0_0_0, selector_MUX_70_reg_15_0_0_0, selector_MUX_70_reg_15_0_0_1, selector_MUX_76_reg_20_0_0_0, selector_MUX_82_reg_26_0_0_0, selector_MUX_87_reg_7_0_0_0, selector_MUX_87_reg_7_0_0_1, selector_MUX_89_reg_9_0_0_0, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_bellmanford_28866_28934, OUT_CONDITION_bellmanford_28866_29107, OUT_CONDITION_bellmanford_28866_29134, OUT_CONDITION_bellmanford_28866_29139, clock, reset, start_port);
  // IN
  input OUT_CONDITION_bellmanford_28866_28934;
  input OUT_CONDITION_bellmanford_28866_29107;
  input OUT_CONDITION_bellmanford_28866_29134;
  input OUT_CONDITION_bellmanford_28866_29139;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_STORE;
  output fuselector_BMEMORY_CTRLN_43_i0_LOAD;
  output fuselector_BMEMORY_CTRLN_43_i0_STORE;
  output selector_MUX_0_ARRAY_1D_STD_BRAM_NN_0_i0_0_0_0;
  output selector_MUX_18_PROXY_CTRLN_1_i0_0_0_0;
  output selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0;
  output selector_MUX_22_PROXY_CTRLN_2_i0_0_0_0;
  output selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_0;
  output selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_1;
  output selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_0;
  output selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_1;
  output selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_1_0;
  output selector_MUX_63_reg_0_0_0_0;
  output selector_MUX_66_reg_11_0_0_0;
  output selector_MUX_68_reg_13_0_0_0;
  output selector_MUX_70_reg_15_0_0_0;
  output selector_MUX_70_reg_15_0_0_1;
  output selector_MUX_76_reg_20_0_0_0;
  output selector_MUX_82_reg_26_0_0_0;
  output selector_MUX_87_reg_7_0_0_0;
  output selector_MUX_87_reg_7_0_0_1;
  output selector_MUX_89_reg_9_0_0_0;
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
  output wrenable_reg_21;
  output wrenable_reg_22;
  output wrenable_reg_23;
  output wrenable_reg_24;
  output wrenable_reg_25;
  output wrenable_reg_26;
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
    S_8 = 16'b0000000100000000,
    S_9 = 16'b0000001000000000,
    S_12 = 16'b0001000000000000,
    S_15 = 16'b1000000000000000,
    S_13 = 16'b0010000000000000,
    S_14 = 16'b0100000000000000,
    S_10 = 16'b0000010000000000,
    S_11 = 16'b0000100000000000;
  reg [15:0] _present_state, _next_state;
  reg done_port;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_STORE;
  reg fuselector_BMEMORY_CTRLN_43_i0_LOAD;
  reg fuselector_BMEMORY_CTRLN_43_i0_STORE;
  reg selector_MUX_0_ARRAY_1D_STD_BRAM_NN_0_i0_0_0_0;
  reg selector_MUX_18_PROXY_CTRLN_1_i0_0_0_0;
  reg selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0;
  reg selector_MUX_22_PROXY_CTRLN_2_i0_0_0_0;
  reg selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_0;
  reg selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_1;
  reg selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_0;
  reg selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_1;
  reg selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_1_0;
  reg selector_MUX_63_reg_0_0_0_0;
  reg selector_MUX_66_reg_11_0_0_0;
  reg selector_MUX_68_reg_13_0_0_0;
  reg selector_MUX_70_reg_15_0_0_0;
  reg selector_MUX_70_reg_15_0_0_1;
  reg selector_MUX_76_reg_20_0_0_0;
  reg selector_MUX_82_reg_26_0_0_0;
  reg selector_MUX_87_reg_7_0_0_0;
  reg selector_MUX_87_reg_7_0_0_1;
  reg selector_MUX_89_reg_9_0_0_0;
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
  reg wrenable_reg_21;
  reg wrenable_reg_22;
  reg wrenable_reg_23;
  reg wrenable_reg_24;
  reg wrenable_reg_25;
  reg wrenable_reg_26;
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
    fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_STORE = 1'b0;
    fuselector_BMEMORY_CTRLN_43_i0_LOAD = 1'b0;
    fuselector_BMEMORY_CTRLN_43_i0_STORE = 1'b0;
    selector_MUX_0_ARRAY_1D_STD_BRAM_NN_0_i0_0_0_0 = 1'b0;
    selector_MUX_18_PROXY_CTRLN_1_i0_0_0_0 = 1'b0;
    selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0 = 1'b0;
    selector_MUX_22_PROXY_CTRLN_2_i0_0_0_0 = 1'b0;
    selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_0 = 1'b0;
    selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_1 = 1'b0;
    selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_0 = 1'b0;
    selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_1 = 1'b0;
    selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_1_0 = 1'b0;
    selector_MUX_63_reg_0_0_0_0 = 1'b0;
    selector_MUX_66_reg_11_0_0_0 = 1'b0;
    selector_MUX_68_reg_13_0_0_0 = 1'b0;
    selector_MUX_70_reg_15_0_0_0 = 1'b0;
    selector_MUX_70_reg_15_0_0_1 = 1'b0;
    selector_MUX_76_reg_20_0_0_0 = 1'b0;
    selector_MUX_82_reg_26_0_0_0 = 1'b0;
    selector_MUX_87_reg_7_0_0_0 = 1'b0;
    selector_MUX_87_reg_7_0_0_1 = 1'b0;
    selector_MUX_89_reg_9_0_0_0 = 1'b0;
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
    wrenable_reg_21 = 1'b0;
    wrenable_reg_22 = 1'b0;
    wrenable_reg_23 = 1'b0;
    wrenable_reg_24 = 1'b0;
    wrenable_reg_25 = 1'b0;
    wrenable_reg_26 = 1'b0;
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
          selector_MUX_63_reg_0_0_0_0 = 1'b1;
          selector_MUX_87_reg_7_0_0_0 = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_6 = 1'b1;
          wrenable_reg_7 = 1'b1;
          wrenable_reg_9 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          selector_MUX_0_ARRAY_1D_STD_BRAM_NN_0_i0_0_0_0 = 1'bX;
          selector_MUX_18_PROXY_CTRLN_1_i0_0_0_0 = 1'bX;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0 = 1'bX;
          selector_MUX_22_PROXY_CTRLN_2_i0_0_0_0 = 1'bX;
          selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_0 = 1'bX;
          selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_1 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_0 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_1 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_1_0 = 1'bX;
          selector_MUX_63_reg_0_0_0_0 = 1'bX;
          selector_MUX_66_reg_11_0_0_0 = 1'bX;
          selector_MUX_68_reg_13_0_0_0 = 1'bX;
          selector_MUX_70_reg_15_0_0_0 = 1'bX;
          selector_MUX_70_reg_15_0_0_1 = 1'bX;
          selector_MUX_76_reg_20_0_0_0 = 1'bX;
          selector_MUX_82_reg_26_0_0_0 = 1'bX;
          selector_MUX_87_reg_7_0_0_0 = 1'bX;
          selector_MUX_87_reg_7_0_0_1 = 1'bX;
          selector_MUX_89_reg_9_0_0_0 = 1'bX;
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
          selector_MUX_87_reg_7_0_0_1 = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_7 = 1'b1;
          if (OUT_CONDITION_bellmanford_28866_28934 == 1'b1)
            begin
              _next_state = S_1;
              selector_MUX_87_reg_7_0_0_1 = 1'b0;
            end
          else
            begin
              _next_state = S_2;
              wrenable_reg_0 = 1'b0;
            end
        end
      S_2 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_STORE = 1'b1;
          selector_MUX_0_ARRAY_1D_STD_BRAM_NN_0_i0_0_0_0 = 1'b1;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_1_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          wrenable_reg_8 = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_STORE = 1'b1;
          selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_1 = 1'b1;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_0 = 1'b1;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_1_0 = 1'b1;
          selector_MUX_68_reg_13_0_0_0 = 1'b1;
          selector_MUX_70_reg_15_0_0_1 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_13 = 1'b1;
          wrenable_reg_15 = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          selector_MUX_76_reg_20_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_1_i0_STORE = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_12 = 1'b1;
          wrenable_reg_13 = 1'b1;
          wrenable_reg_14 = 1'b1;
          wrenable_reg_16 = 1'b1;
          wrenable_reg_17 = 1'b1;
          wrenable_reg_18 = 1'b1;
          wrenable_reg_20 = 1'b1;
          _next_state = S_5;
        end
      S_5 :
        begin
          fuselector_BMEMORY_CTRLN_43_i0_LOAD = 1'b1;
          wrenable_reg_19 = 1'b1;
          wrenable_reg_20 = 1'b1;
          wrenable_reg_21 = 1'b1;
          wrenable_reg_22 = 1'b1;
          wrenable_reg_23 = 1'b1;
          wrenable_reg_24 = 1'b1;
          _next_state = S_6;
        end
      S_6 :
        begin
          wrenable_reg_25 = 1'b1;
          wrenable_reg_26 = 1'b1;
          _next_state = S_7;
        end
      S_7 :
        begin
          selector_MUX_82_reg_26_0_0_0 = 1'b1;
          wrenable_reg_26 = 1'b1;
          if (OUT_CONDITION_bellmanford_28866_29107 == 1'b1)
            begin
              _next_state = S_8;
              selector_MUX_82_reg_26_0_0_0 = 1'b0;
              wrenable_reg_26 = 1'b0;
            end
          else
            begin
              _next_state = S_9;
            end
        end
      S_8 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_STORE = 1'b1;
          selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_0 = 1'b1;
          _next_state = S_9;
        end
      S_9 :
        begin
          selector_MUX_18_PROXY_CTRLN_1_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_1_i0_STORE = 1'b1;
          if (OUT_CONDITION_bellmanford_28866_29134 == 1'b1)
            begin
              _next_state = S_10;
            end
          else
            begin
              _next_state = S_12;
            end
        end
      S_12 :
        begin
          selector_MUX_22_PROXY_CTRLN_2_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          if (OUT_CONDITION_bellmanford_28866_29139 == 1'b1)
            begin
              _next_state = S_13;
            end
          else
            begin
              _next_state = S_15;
              done_port = 1'b1;
            end
        end
      S_15 :
        begin
          _next_state = S_0;
        end
      S_13 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_LOAD = 1'b1;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_1 = 1'b1;
          _next_state = S_14;
        end
      S_14 :
        begin
          selector_MUX_66_reg_11_0_0_0 = 1'b1;
          selector_MUX_89_reg_9_0_0_0 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_15 = 1'b1;
          wrenable_reg_9 = 1'b1;
          _next_state = S_4;
        end
      S_10 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD = 1'b1;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0 = 1'b1;
          _next_state = S_11;
        end
      S_11 :
        begin
          selector_MUX_66_reg_11_0_0_0 = 1'b1;
          selector_MUX_70_reg_15_0_0_0 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_15 = 1'b1;
          _next_state = S_5;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_0_ARRAY_1D_STD_BRAM_NN_0_i0_0_0_0 = 1'bX;
          selector_MUX_18_PROXY_CTRLN_1_i0_0_0_0 = 1'bX;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0 = 1'bX;
          selector_MUX_22_PROXY_CTRLN_2_i0_0_0_0 = 1'bX;
          selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_0 = 1'bX;
          selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_1 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_0 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_1 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_1_0 = 1'bX;
          selector_MUX_63_reg_0_0_0_0 = 1'bX;
          selector_MUX_66_reg_11_0_0_0 = 1'bX;
          selector_MUX_68_reg_13_0_0_0 = 1'bX;
          selector_MUX_70_reg_15_0_0_0 = 1'bX;
          selector_MUX_70_reg_15_0_0_1 = 1'bX;
          selector_MUX_76_reg_20_0_0_0 = 1'bX;
          selector_MUX_82_reg_26_0_0_0 = 1'bX;
          selector_MUX_87_reg_7_0_0_0 = 1'bX;
          selector_MUX_87_reg_7_0_0_1 = 1'bX;
          selector_MUX_89_reg_9_0_0_0 = 1'bX;
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

// Top component for bellmanford
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module bellmanford(clock, reset, start_port, done_port, size, a, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, proxy_out1_28859, proxy_out1_28861, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Sout_Rdata_ram, Sout_DataRdy, proxy_in1_28859, proxy_in2_28859, proxy_in3_28859, proxy_sel_LOAD_28859, proxy_sel_STORE_28859, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size);
  parameter MEM_var_28859_28868=32, MEM_var_28861_28868=64, MEM_var_28862_28866=128;
  // IN
  input clock;
  input reset;
  input start_port;
  input [7:0] size;
  input [31:0] a;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [15:0] S_addr_ram;
  input [63:0] S_Wdata_ram;
  input [11:0] S_data_ram_size;
  input [63:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [63:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [63:0] proxy_out1_28859;
  input [63:0] proxy_out1_28861;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [15:0] Min_addr_ram;
  input [63:0] Min_Wdata_ram;
  input [11:0] Min_data_ram_size;
  // OUT
  output done_port;
  output [63:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [63:0] proxy_in1_28859;
  output [15:0] proxy_in2_28859;
  output [11:0] proxy_in3_28859;
  output [1:0] proxy_sel_LOAD_28859;
  output [1:0] proxy_sel_STORE_28859;
  output [63:0] proxy_in1_28861;
  output [15:0] proxy_in2_28861;
  output [11:0] proxy_in3_28861;
  output [1:0] proxy_sel_LOAD_28861;
  output [1:0] proxy_sel_STORE_28861;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [15:0] Mout_addr_ram;
  output [63:0] Mout_Wdata_ram;
  output [11:0] Mout_data_ram_size;
  // Component and signal declarations
  wire OUT_CONDITION_bellmanford_28866_28934;
  wire OUT_CONDITION_bellmanford_28866_29107;
  wire OUT_CONDITION_bellmanford_28866_29134;
  wire OUT_CONDITION_bellmanford_28866_29139;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_STORE;
  wire fuselector_BMEMORY_CTRLN_43_i0_LOAD;
  wire fuselector_BMEMORY_CTRLN_43_i0_STORE;
  wire fuselector_PROXY_CTRLN_1_i0_LOAD;
  wire fuselector_PROXY_CTRLN_1_i0_STORE;
  wire fuselector_PROXY_CTRLN_2_i0_LOAD;
  wire fuselector_PROXY_CTRLN_2_i0_STORE;
  wire selector_MUX_0_ARRAY_1D_STD_BRAM_NN_0_i0_0_0_0;
  wire selector_MUX_18_PROXY_CTRLN_1_i0_0_0_0;
  wire selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0;
  wire selector_MUX_22_PROXY_CTRLN_2_i0_0_0_0;
  wire selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_0;
  wire selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_1;
  wire selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_0;
  wire selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_1;
  wire selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_1_0;
  wire selector_MUX_63_reg_0_0_0_0;
  wire selector_MUX_66_reg_11_0_0_0;
  wire selector_MUX_68_reg_13_0_0_0;
  wire selector_MUX_70_reg_15_0_0_0;
  wire selector_MUX_70_reg_15_0_0_1;
  wire selector_MUX_76_reg_20_0_0_0;
  wire selector_MUX_82_reg_26_0_0_0;
  wire selector_MUX_87_reg_7_0_0_0;
  wire selector_MUX_87_reg_7_0_0_1;
  wire selector_MUX_89_reg_9_0_0_0;
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
  wire wrenable_reg_3;
  wire wrenable_reg_4;
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  controller_bellmanford Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_STORE), .fuselector_BMEMORY_CTRLN_43_i0_LOAD(fuselector_BMEMORY_CTRLN_43_i0_LOAD), .fuselector_BMEMORY_CTRLN_43_i0_STORE(fuselector_BMEMORY_CTRLN_43_i0_STORE), .selector_MUX_0_ARRAY_1D_STD_BRAM_NN_0_i0_0_0_0(selector_MUX_0_ARRAY_1D_STD_BRAM_NN_0_i0_0_0_0), .selector_MUX_18_PROXY_CTRLN_1_i0_0_0_0(selector_MUX_18_PROXY_CTRLN_1_i0_0_0_0), .selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0), .selector_MUX_22_PROXY_CTRLN_2_i0_0_0_0(selector_MUX_22_PROXY_CTRLN_2_i0_0_0_0), .selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_0(selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_0), .selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_1(selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_1), .selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_0(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_0), .selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_1(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_1), .selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_1_0(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_1_0), .selector_MUX_63_reg_0_0_0_0(selector_MUX_63_reg_0_0_0_0), .selector_MUX_66_reg_11_0_0_0(selector_MUX_66_reg_11_0_0_0), .selector_MUX_68_reg_13_0_0_0(selector_MUX_68_reg_13_0_0_0), .selector_MUX_70_reg_15_0_0_0(selector_MUX_70_reg_15_0_0_0), .selector_MUX_70_reg_15_0_0_1(selector_MUX_70_reg_15_0_0_1), .selector_MUX_76_reg_20_0_0_0(selector_MUX_76_reg_20_0_0_0), .selector_MUX_82_reg_26_0_0_0(selector_MUX_82_reg_26_0_0_0), .selector_MUX_87_reg_7_0_0_0(selector_MUX_87_reg_7_0_0_0), .selector_MUX_87_reg_7_0_0_1(selector_MUX_87_reg_7_0_0_1), .selector_MUX_89_reg_9_0_0_0(selector_MUX_89_reg_9_0_0_0), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_bellmanford_28866_28934(OUT_CONDITION_bellmanford_28866_28934), .OUT_CONDITION_bellmanford_28866_29107(OUT_CONDITION_bellmanford_28866_29107), .OUT_CONDITION_bellmanford_28866_29134(OUT_CONDITION_bellmanford_28866_29134), .OUT_CONDITION_bellmanford_28866_29139(OUT_CONDITION_bellmanford_28866_29139), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_bellmanford #(.MEM_var_28859_28868(MEM_var_28859_28868), .MEM_var_28861_28868(MEM_var_28861_28868), .MEM_var_28862_28866(MEM_var_28862_28866)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .proxy_in1_28859(proxy_in1_28859), .proxy_in2_28859(proxy_in2_28859), .proxy_in3_28859(proxy_in3_28859), .proxy_sel_LOAD_28859(proxy_sel_LOAD_28859), .proxy_sel_STORE_28859(proxy_sel_STORE_28859), .proxy_in1_28861(proxy_in1_28861), .proxy_in2_28861(proxy_in2_28861), .proxy_in3_28861(proxy_in3_28861), .proxy_sel_LOAD_28861(proxy_sel_LOAD_28861), .proxy_sel_STORE_28861(proxy_sel_STORE_28861), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_CONDITION_bellmanford_28866_28934(OUT_CONDITION_bellmanford_28866_28934), .OUT_CONDITION_bellmanford_28866_29107(OUT_CONDITION_bellmanford_28866_29107), .OUT_CONDITION_bellmanford_28866_29134(OUT_CONDITION_bellmanford_28866_29134), .OUT_CONDITION_bellmanford_28866_29139(OUT_CONDITION_bellmanford_28866_29139), .clock(clock), .reset(reset), .in_port_size(size), .in_port_a(a), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28859(proxy_out1_28859), .proxy_out1_28861(proxy_out1_28861), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_0_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_0_i1_STORE), .fuselector_BMEMORY_CTRLN_43_i0_LOAD(fuselector_BMEMORY_CTRLN_43_i0_LOAD), .fuselector_BMEMORY_CTRLN_43_i0_STORE(fuselector_BMEMORY_CTRLN_43_i0_STORE), .selector_MUX_0_ARRAY_1D_STD_BRAM_NN_0_i0_0_0_0(selector_MUX_0_ARRAY_1D_STD_BRAM_NN_0_i0_0_0_0), .selector_MUX_18_PROXY_CTRLN_1_i0_0_0_0(selector_MUX_18_PROXY_CTRLN_1_i0_0_0_0), .selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_0_i0_1_0_0), .selector_MUX_22_PROXY_CTRLN_2_i0_0_0_0(selector_MUX_22_PROXY_CTRLN_2_i0_0_0_0), .selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_0(selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_0), .selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_1(selector_MUX_4_ARRAY_1D_STD_BRAM_NN_0_i1_0_0_1), .selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_0(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_0), .selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_1(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_0_1), .selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_1_0(selector_MUX_5_ARRAY_1D_STD_BRAM_NN_0_i1_1_1_0), .selector_MUX_63_reg_0_0_0_0(selector_MUX_63_reg_0_0_0_0), .selector_MUX_66_reg_11_0_0_0(selector_MUX_66_reg_11_0_0_0), .selector_MUX_68_reg_13_0_0_0(selector_MUX_68_reg_13_0_0_0), .selector_MUX_70_reg_15_0_0_0(selector_MUX_70_reg_15_0_0_0), .selector_MUX_70_reg_15_0_0_1(selector_MUX_70_reg_15_0_0_1), .selector_MUX_76_reg_20_0_0_0(selector_MUX_76_reg_20_0_0_0), .selector_MUX_82_reg_26_0_0_0(selector_MUX_82_reg_26_0_0_0), .selector_MUX_87_reg_7_0_0_0(selector_MUX_87_reg_7_0_0_0), .selector_MUX_87_reg_7_0_0_1(selector_MUX_87_reg_7_0_0_1), .selector_MUX_89_reg_9_0_0_0(selector_MUX_89_reg_9_0_0_0), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
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
module datapath_make_oriented(clock, reset, proxy_out1_28859, proxy_in1_28859, proxy_in2_28859, proxy_in3_28859, proxy_sel_LOAD_28859, proxy_sel_STORE_28859, proxy_out1_28861, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_out1_28864, proxy_in1_28864, proxy_in2_28864, proxy_in3_28864, proxy_sel_LOAD_28864, proxy_sel_STORE_28864, selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0, selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0, selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1, selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2, selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0, selector_MUX_38_reg_10_0_0_0, selector_MUX_38_reg_10_0_0_1, selector_MUX_42_reg_14_0_0_0, selector_MUX_49_reg_3_0_0_0, selector_MUX_55_reg_9_0_0_0, selector_MUX_55_reg_9_0_0_1, selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0, selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0, fuselector_PROXY_CTRLN_0_i0_LOAD, fuselector_PROXY_CTRLN_0_i0_STORE, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_make_oriented_28867_29256, OUT_CONDITION_make_oriented_28867_29274, OUT_MULTIIF_make_oriented_28867_29606);
  parameter MEM_var_28859_28868=32, MEM_var_28861_28868=64, MEM_var_28864_28868=96;
  // IN
  input clock;
  input reset;
  input [63:0] proxy_out1_28859;
  input [63:0] proxy_out1_28861;
  input [63:0] proxy_out1_28864;
  input selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0;
  input selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0;
  input selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1;
  input selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2;
  input selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0;
  input selector_MUX_38_reg_10_0_0_0;
  input selector_MUX_38_reg_10_0_0_1;
  input selector_MUX_42_reg_14_0_0_0;
  input selector_MUX_49_reg_3_0_0_0;
  input selector_MUX_55_reg_9_0_0_0;
  input selector_MUX_55_reg_9_0_0_1;
  input selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0;
  input selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0;
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
  input wrenable_reg_3;
  input wrenable_reg_4;
  input wrenable_reg_5;
  input wrenable_reg_6;
  input wrenable_reg_7;
  input wrenable_reg_8;
  input wrenable_reg_9;
  // OUT
  output [63:0] proxy_in1_28859;
  output [15:0] proxy_in2_28859;
  output [11:0] proxy_in3_28859;
  output [1:0] proxy_sel_LOAD_28859;
  output [1:0] proxy_sel_STORE_28859;
  output [63:0] proxy_in1_28861;
  output [15:0] proxy_in2_28861;
  output [11:0] proxy_in3_28861;
  output [1:0] proxy_sel_LOAD_28861;
  output [1:0] proxy_sel_STORE_28861;
  output [63:0] proxy_in1_28864;
  output [15:0] proxy_in2_28864;
  output [11:0] proxy_in3_28864;
  output [1:0] proxy_sel_LOAD_28864;
  output [1:0] proxy_sel_STORE_28864;
  output OUT_CONDITION_make_oriented_28867_29256;
  output OUT_CONDITION_make_oriented_28867_29274;
  output [1:0] OUT_MULTIIF_make_oriented_28867_29606;
  // Component and signal declarations
  wire [7:0] null_out_signal_PROXY_CTRLN_0_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_0_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_2_i0_out1_1;
  wire [7:0] out_IUdata_converter_FU_27_i0_fu_make_oriented_28867_29210;
  wire [7:0] out_MUX_12_PROXY_CTRLN_2_i0_0_0_0;
  wire [7:0] out_MUX_13_PROXY_CTRLN_2_i0_1_0_0;
  wire [7:0] out_MUX_13_PROXY_CTRLN_2_i0_1_0_1;
  wire [7:0] out_MUX_13_PROXY_CTRLN_2_i0_1_0_2;
  wire [7:0] out_MUX_13_PROXY_CTRLN_2_i0_1_1_0;
  wire [31:0] out_MUX_38_reg_10_0_0_0;
  wire [31:0] out_MUX_38_reg_10_0_0_1;
  wire [1:0] out_MUX_42_reg_14_0_0_0;
  wire [1:0] out_MUX_49_reg_3_0_0_0;
  wire [31:0] out_MUX_55_reg_9_0_0_0;
  wire [31:0] out_MUX_55_reg_9_0_0_1;
  wire [7:0] out_MUX_8_PROXY_CTRLN_1_i0_0_0_0;
  wire [7:0] out_MUX_9_PROXY_CTRLN_1_i0_1_0_0;
  wire [7:0] out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0;
  wire signed [7:0] out_UIdata_converter_FU_28_i0_fu_make_oriented_28867_29199;
  wire [1:0] out_UUdata_converter_FU_14_i0_fu_make_oriented_28867_29165;
  wire [7:0] out_UUdata_converter_FU_15_i0_fu_make_oriented_28867_29167;
  wire [6:0] out_UUdata_converter_FU_24_i0_fu_make_oriented_28867_29187;
  wire [1:0] out_UUdata_converter_FU_25_i0_fu_make_oriented_28867_29252;
  wire [6:0] out_UUdata_converter_FU_26_i0_fu_make_oriented_28867_29272;
  wire [31:0] out_UUdata_converter_FU_7_i0_fu_make_oriented_28867_29151;
  wire [6:0] out_addr_expr_FU_5_i0_fu_make_oriented_28867_29485;
  wire [31:0] out_addr_expr_FU_6_i0_fu_make_oriented_28867_29488;
  wire [5:0] out_addr_expr_FU_8_i0_fu_make_oriented_28867_29547;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [6:0] out_const_10;
  wire [7:0] out_const_11;
  wire [7:0] out_const_2;
  wire [4:0] out_const_3;
  wire out_const_4;
  wire [1:0] out_const_5;
  wire [1:0] out_const_6;
  wire [2:0] out_const_7;
  wire [7:0] out_const_8;
  wire [5:0] out_const_9;
  wire [7:0] out_conv_out_UUdata_converter_FU_24_i0_fu_make_oriented_28867_29187_7_8;
  wire [7:0] out_conv_out_addr_expr_FU_5_i0_fu_make_oriented_28867_29485_7_8;
  wire [31:0] out_conv_out_const_10_7_32;
  wire [31:0] out_conv_out_const_11_8_32;
  wire [5:0] out_conv_out_const_3_5_6;
  wire [31:0] out_conv_out_const_9_6_32;
  wire [7:0] out_conv_out_reg_0_reg_0_7_8;
  wire [7:0] out_conv_out_reg_11_reg_11_7_8;
  wire [7:0] out_conv_out_reg_16_reg_16_7_8;
  wire [7:0] out_conv_out_reg_2_reg_2_6_8;
  wire [7:0] out_conv_out_reg_7_reg_7_7_8;
  wire [1:0] out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_1_2;
  wire [1:0] out_conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_3_1_2;
  wire [7:0] out_conv_out_ui_pointer_plus_expr_FU_8_8_8_49_i0_fu_make_oriented_28867_29509_7_8;
  wire out_ge_expr_FU_8_0_8_36_i0_fu_make_oriented_28867_29538;
  wire [7:0] out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_0;
  wire [7:0] out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_1;
  wire out_lt_expr_FU_8_0_8_37_i0_fu_make_oriented_28867_29254;
  wire [1:0] out_multi_read_cond_FU_34_i0_fu_make_oriented_28867_29606;
  wire out_read_cond_FU_29_i0_fu_make_oriented_28867_29256;
  wire out_read_cond_FU_31_i0_fu_make_oriented_28867_29274;
  wire [6:0] out_reg_0_reg_0;
  wire [31:0] out_reg_10_reg_10;
  wire [6:0] out_reg_11_reg_11;
  wire [31:0] out_reg_12_reg_12;
  wire [31:0] out_reg_13_reg_13;
  wire [1:0] out_reg_14_reg_14;
  wire out_reg_15_reg_15;
  wire [6:0] out_reg_16_reg_16;
  wire out_reg_17_reg_17;
  wire out_reg_18_reg_18;
  wire [7:0] out_reg_19_reg_19;
  wire [31:0] out_reg_1_reg_1;
  wire [5:0] out_reg_2_reg_2;
  wire [1:0] out_reg_3_reg_3;
  wire [31:0] out_reg_4_reg_4;
  wire [31:0] out_reg_5_reg_5;
  wire [1:0] out_reg_6_reg_6;
  wire [6:0] out_reg_7_reg_7;
  wire out_reg_8_reg_8;
  wire [31:0] out_reg_9_reg_9;
  wire out_truth_and_expr_FU_1_1_1_38_i0_fu_make_oriented_28867_29612;
  wire out_truth_not_expr_FU_1_1_39_i0_fu_make_oriented_28867_29609;
  wire [0:0] out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2;
  wire [0:0] out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_3;
  wire [0:0] out_ui_bit_and_expr_FU_1_1_1_40_i0_fu_make_oriented_28867_29255;
  wire [3:0] out_ui_lshift_expr_FU_8_0_8_41_i0_fu_make_oriented_28867_29503;
  wire out_ui_ne_expr_FU_8_0_8_42_i0_fu_make_oriented_28867_29572;
  wire out_ui_ne_expr_FU_8_0_8_42_i1_fu_make_oriented_28867_29574;
  wire out_ui_ne_expr_FU_8_8_8_43_i0_fu_make_oriented_28867_29253;
  wire [7:0] out_ui_negate_expr_FU_8_8_44_i0_fu_make_oriented_28867_29203;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_45_i0_fu_make_oriented_28867_29197;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_45_i1_fu_make_oriented_28867_29237;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_46_i0_fu_make_oriented_28867_29227;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_46_i1_fu_make_oriented_28867_29240;
  wire [1:0] out_ui_plus_expr_FU_8_0_8_47_i0_fu_make_oriented_28867_29234;
  wire [1:0] out_ui_plus_expr_FU_8_0_8_47_i1_fu_make_oriented_28867_29261;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_0_8_48_i0_fu_make_oriented_28867_29516;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_8_8_49_i0_fu_make_oriented_28867_29509;
  wire [7:0] out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_4;
  wire [7:0] out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5;
  wire [63:0] sig_in_bus_mergerproxy_in1_288590_0;
  wire [63:0] sig_in_bus_mergerproxy_in1_288611_0;
  wire [63:0] sig_in_bus_mergerproxy_in1_288642_0;
  wire [15:0] sig_in_bus_mergerproxy_in2_288593_0;
  wire [15:0] sig_in_bus_mergerproxy_in2_288614_0;
  wire [15:0] sig_in_bus_mergerproxy_in2_288645_0;
  wire [11:0] sig_in_bus_mergerproxy_in3_288596_0;
  wire [11:0] sig_in_bus_mergerproxy_in3_288617_0;
  wire [11:0] sig_in_bus_mergerproxy_in3_288648_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_288599_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886110_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_2886411_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2885912_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886113_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_2886414_0;
  wire [63:0] sig_in_vector_bus_mergerproxy_in1_288590_0;
  wire [63:0] sig_in_vector_bus_mergerproxy_in1_288611_0;
  wire [63:0] sig_in_vector_bus_mergerproxy_in1_288642_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in2_288593_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in2_288614_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in2_288645_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in3_288596_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in3_288617_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in3_288648_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_288599_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886110_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_2886411_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2885912_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886113_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_2886414_0;
  wire [63:0] sig_out_bus_mergerproxy_in1_288590_;
  wire [63:0] sig_out_bus_mergerproxy_in1_288611_;
  wire [63:0] sig_out_bus_mergerproxy_in1_288642_;
  wire [15:0] sig_out_bus_mergerproxy_in2_288593_;
  wire [15:0] sig_out_bus_mergerproxy_in2_288614_;
  wire [15:0] sig_out_bus_mergerproxy_in2_288645_;
  wire [11:0] sig_out_bus_mergerproxy_in3_288596_;
  wire [11:0] sig_out_bus_mergerproxy_in3_288617_;
  wire [11:0] sig_out_bus_mergerproxy_in3_288648_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_288599_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886110_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886411_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2885912_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886113_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886414_;
  
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_2 (.out1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_3 (.out1(out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_3), .in1(out_const_0));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_4 (.out1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_4), .in1(out_const_1));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_5 (.out1(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5), .in1(out_const_2));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_0 (.out1(out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_0), .in1(out_const_8));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_1), .in1(out_reg_19_reg_19));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_12_PROXY_CTRLN_2_i0_0_0_0 (.out1(out_MUX_12_PROXY_CTRLN_2_i0_0_0_0), .sel(selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0), .in1(out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_0), .in2(out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_1));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_13_PROXY_CTRLN_2_i0_1_0_0 (.out1(out_MUX_13_PROXY_CTRLN_2_i0_1_0_0), .sel(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0), .in1(out_conv_out_reg_7_reg_7_7_8), .in2(out_conv_out_reg_16_reg_16_7_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_13_PROXY_CTRLN_2_i0_1_0_1 (.out1(out_MUX_13_PROXY_CTRLN_2_i0_1_0_1), .sel(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1), .in1(out_conv_out_reg_11_reg_11_7_8), .in2(out_conv_out_UUdata_converter_FU_24_i0_fu_make_oriented_28867_29187_7_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_13_PROXY_CTRLN_2_i0_1_0_2 (.out1(out_MUX_13_PROXY_CTRLN_2_i0_1_0_2), .sel(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2), .in1(out_conv_out_ui_pointer_plus_expr_FU_8_8_8_49_i0_fu_make_oriented_28867_29509_7_8), .in2(out_MUX_13_PROXY_CTRLN_2_i0_1_0_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_13_PROXY_CTRLN_2_i0_1_1_0 (.out1(out_MUX_13_PROXY_CTRLN_2_i0_1_1_0), .sel(selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0), .in1(out_MUX_13_PROXY_CTRLN_2_i0_1_0_1), .in2(out_MUX_13_PROXY_CTRLN_2_i0_1_0_2));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_38_reg_10_0_0_0 (.out1(out_MUX_38_reg_10_0_0_0), .sel(selector_MUX_38_reg_10_0_0_0), .in1(out_reg_4_reg_4), .in2(out_reg_13_reg_13));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_38_reg_10_0_0_1 (.out1(out_MUX_38_reg_10_0_0_1), .sel(selector_MUX_38_reg_10_0_0_1), .in1(out_UUdata_converter_FU_7_i0_fu_make_oriented_28867_29151), .in2(out_MUX_38_reg_10_0_0_0));
  MUX_GATE #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(2)) MUX_42_reg_14_0_0_0 (.out1(out_MUX_42_reg_14_0_0_0), .sel(selector_MUX_42_reg_14_0_0_0), .in1(out_conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_3_1_2), .in2(out_ui_plus_expr_FU_8_0_8_47_i1_fu_make_oriented_28867_29261));
  MUX_GATE #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(2)) MUX_49_reg_3_0_0_0 (.out1(out_MUX_49_reg_3_0_0_0), .sel(selector_MUX_49_reg_3_0_0_0), .in1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_1_2), .in2(out_ui_plus_expr_FU_8_0_8_47_i0_fu_make_oriented_28867_29234));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_55_reg_9_0_0_0 (.out1(out_MUX_55_reg_9_0_0_0), .sel(selector_MUX_55_reg_9_0_0_0), .in1(out_reg_5_reg_5), .in2(out_reg_12_reg_12));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_55_reg_9_0_0_1 (.out1(out_MUX_55_reg_9_0_0_1), .sel(selector_MUX_55_reg_9_0_0_1), .in1(out_UUdata_converter_FU_7_i0_fu_make_oriented_28867_29151), .in2(out_MUX_55_reg_9_0_0_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_8_PROXY_CTRLN_1_i0_0_0_0 (.out1(out_MUX_8_PROXY_CTRLN_1_i0_0_0_0), .sel(selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0), .in1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_4), .in2(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_9_PROXY_CTRLN_1_i0_1_0_0 (.out1(out_MUX_9_PROXY_CTRLN_1_i0_1_0_0), .sel(selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0), .in1(out_conv_out_reg_0_reg_0_7_8), .in2(out_conv_out_addr_expr_FU_5_i0_fu_make_oriented_28867_29485_7_8));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(8), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(8), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_0_i0 (.out1({null_out_signal_PROXY_CTRLN_0_i0_out1_1, null_out_signal_PROXY_CTRLN_0_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288590_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288593_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288596_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_288599_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2885912_0), .in1({8'b00000000, out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5}), .in2({8'b00000000, out_conv_out_reg_2_reg_2_6_8}), .in3({6'b000000, out_conv_out_const_3_5_6}), .in4({1'b0, out_const_4}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_0_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_0_i0_STORE}), .proxy_out1(proxy_out1_28859));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(8), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(8), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_1_i0 (.out1({null_out_signal_PROXY_CTRLN_1_i0_out1_1, null_out_signal_PROXY_CTRLN_1_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288611_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288614_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288617_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886110_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886113_0), .in1({8'b00000000, out_MUX_8_PROXY_CTRLN_1_i0_0_0_0}), .in2({8'b00000000, out_MUX_9_PROXY_CTRLN_1_i0_1_0_0}), .in3({6'b000000, out_conv_out_const_3_5_6}), .in4({1'b0, out_const_4}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_1_i0_STORE}), .proxy_out1(proxy_out1_28861));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(8), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(8), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_2_i0 (.out1({null_out_signal_PROXY_CTRLN_2_i0_out1_1, out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288642_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288645_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288648_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886411_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886414_0), .in1({8'b00000000, out_MUX_12_PROXY_CTRLN_2_i0_0_0_0}), .in2({8'b00000000, out_MUX_13_PROXY_CTRLN_2_i0_1_1_0}), .in3({6'b000000, out_conv_out_const_3_5_6}), .in4({1'b0, out_const_4}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_2_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_2_i0_STORE}), .proxy_out1(proxy_out1_28864));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerproxy_in1_288590_ (.out1(sig_out_bus_mergerproxy_in1_288590_), .in1({sig_in_bus_mergerproxy_in1_288590_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerproxy_in1_288611_ (.out1(sig_out_bus_mergerproxy_in1_288611_), .in1({sig_in_bus_mergerproxy_in1_288611_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerproxy_in1_288642_ (.out1(sig_out_bus_mergerproxy_in1_288642_), .in1({sig_in_bus_mergerproxy_in1_288642_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in2_288593_ (.out1(sig_out_bus_mergerproxy_in2_288593_), .in1({sig_in_bus_mergerproxy_in2_288593_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in2_288614_ (.out1(sig_out_bus_mergerproxy_in2_288614_), .in1({sig_in_bus_mergerproxy_in2_288614_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in2_288645_ (.out1(sig_out_bus_mergerproxy_in2_288645_), .in1({sig_in_bus_mergerproxy_in2_288645_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(1), .BITSIZE_out1(12)) bus_mergerproxy_in3_288596_ (.out1(sig_out_bus_mergerproxy_in3_288596_), .in1({sig_in_bus_mergerproxy_in3_288596_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(1), .BITSIZE_out1(12)) bus_mergerproxy_in3_288617_ (.out1(sig_out_bus_mergerproxy_in3_288617_), .in1({sig_in_bus_mergerproxy_in3_288617_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(1), .BITSIZE_out1(12)) bus_mergerproxy_in3_288648_ (.out1(sig_out_bus_mergerproxy_in3_288648_), .in1({sig_in_bus_mergerproxy_in3_288648_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_288599_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288599_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288599_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886110_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886110_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886110_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_2886411_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886411_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886411_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2885912_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2885912_), .in1({sig_in_bus_mergerproxy_sel_STORE_2885912_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886113_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886113_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886113_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_2886414_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886414_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886414_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(7), .value(MEM_var_28861_28868)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28864_28868)) const_11 (.out1(out_const_11));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000011)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(2), .value(2'b10)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(3), .value(3'b110)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(6), .value(MEM_var_28859_28868)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(8)) conv_out_UUdata_converter_FU_24_i0_fu_make_oriented_28867_29187_7_8 (.out1(out_conv_out_UUdata_converter_FU_24_i0_fu_make_oriented_28867_29187_7_8), .in1(out_UUdata_converter_FU_24_i0_fu_make_oriented_28867_29187));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(8)) conv_out_addr_expr_FU_5_i0_fu_make_oriented_28867_29485_7_8 (.out1(out_conv_out_addr_expr_FU_5_i0_fu_make_oriented_28867_29485_7_8), .in1(out_addr_expr_FU_5_i0_fu_make_oriented_28867_29485));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(32)) conv_out_const_10_7_32 (.out1(out_conv_out_const_10_7_32), .in1(out_const_10));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_11_8_32 (.out1(out_conv_out_const_11_8_32), .in1(out_const_11));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(6)) conv_out_const_3_5_6 (.out1(out_conv_out_const_3_5_6), .in1(out_const_3));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(32)) conv_out_const_9_6_32 (.out1(out_conv_out_const_9_6_32), .in1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(8)) conv_out_reg_0_reg_0_7_8 (.out1(out_conv_out_reg_0_reg_0_7_8), .in1(out_reg_0_reg_0));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(8)) conv_out_reg_11_reg_11_7_8 (.out1(out_conv_out_reg_11_reg_11_7_8), .in1(out_reg_11_reg_11));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(8)) conv_out_reg_16_reg_16_7_8 (.out1(out_conv_out_reg_16_reg_16_7_8), .in1(out_reg_16_reg_16));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(8)) conv_out_reg_2_reg_2_6_8 (.out1(out_conv_out_reg_2_reg_2_6_8), .in1(out_reg_2_reg_2));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(8)) conv_out_reg_7_reg_7_7_8 (.out1(out_conv_out_reg_7_reg_7_7_8), .in1(out_reg_7_reg_7));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(2)) conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_1_2 (.out1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_1_2), .in1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(2)) conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_3_1_2 (.out1(out_conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_3_1_2), .in1(out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_3));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(8)) conv_out_ui_pointer_plus_expr_FU_8_8_8_49_i0_fu_make_oriented_28867_29509_7_8 (.out1(out_conv_out_ui_pointer_plus_expr_FU_8_8_8_49_i0_fu_make_oriented_28867_29509_7_8), .in1(out_ui_pointer_plus_expr_FU_8_8_8_49_i0_fu_make_oriented_28867_29509));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_make_oriented_28867_29151 (.out1(out_UUdata_converter_FU_7_i0_fu_make_oriented_28867_29151), .in1(out_addr_expr_FU_6_i0_fu_make_oriented_28867_29488));
  UUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) fu_make_oriented_28867_29165 (.out1(out_UUdata_converter_FU_14_i0_fu_make_oriented_28867_29165), .in1(out_reg_3_reg_3));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_make_oriented_28867_29167 (.out1(out_UUdata_converter_FU_15_i0_fu_make_oriented_28867_29167), .in1(out_reg_10_reg_10));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_make_oriented_28867_29187 (.out1(out_UUdata_converter_FU_24_i0_fu_make_oriented_28867_29187), .in1(out_reg_9_reg_9));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(32)) fu_make_oriented_28867_29197 (.out1(out_ui_plus_expr_FU_32_0_32_45_i0_fu_make_oriented_28867_29197), .in1(out_reg_9_reg_9), .in2(out_const_4));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_oriented_28867_29199 (.out1(out_UIdata_converter_FU_28_i0_fu_make_oriented_28867_29199), .in1(out_ui_negate_expr_FU_8_8_44_i0_fu_make_oriented_28867_29203));
  ui_negate_expr_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_oriented_28867_29203 (.out1(out_ui_negate_expr_FU_8_8_44_i0_fu_make_oriented_28867_29203), .in1(out_IUdata_converter_FU_27_i0_fu_make_oriented_28867_29210));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_oriented_28867_29210 (.out1(out_IUdata_converter_FU_27_i0_fu_make_oriented_28867_29210), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(32)) fu_make_oriented_28867_29227 (.out1(out_ui_plus_expr_FU_32_0_32_46_i0_fu_make_oriented_28867_29227), .in1(out_reg_10_reg_10), .in2(out_const_6));
  ui_plus_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_out1(2)) fu_make_oriented_28867_29234 (.out1(out_ui_plus_expr_FU_8_0_8_47_i0_fu_make_oriented_28867_29234), .in1(out_reg_3_reg_3), .in2(out_const_4));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(32)) fu_make_oriented_28867_29237 (.out1(out_ui_plus_expr_FU_32_0_32_45_i1_fu_make_oriented_28867_29237), .in1(out_reg_10_reg_10), .in2(out_const_4));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(2), .BITSIZE_out1(32)) fu_make_oriented_28867_29240 (.out1(out_ui_plus_expr_FU_32_0_32_46_i1_fu_make_oriented_28867_29240), .in1(out_reg_9_reg_9), .in2(out_const_6));
  UUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) fu_make_oriented_28867_29252 (.out1(out_UUdata_converter_FU_25_i0_fu_make_oriented_28867_29252), .in1(out_reg_14_reg_14));
  ui_ne_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_make_oriented_28867_29253 (.out1(out_ui_ne_expr_FU_8_8_8_43_i0_fu_make_oriented_28867_29253), .in1(out_reg_6_reg_6), .in2(out_UUdata_converter_FU_25_i0_fu_make_oriented_28867_29252));
  lt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_make_oriented_28867_29254 (.out1(out_lt_expr_FU_8_0_8_37_i0_fu_make_oriented_28867_29254), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0), .in2(out_const_6));
  ui_bit_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_oriented_28867_29255 (.out1(out_ui_bit_and_expr_FU_1_1_1_40_i0_fu_make_oriented_28867_29255), .in1(out_lt_expr_FU_8_0_8_37_i0_fu_make_oriented_28867_29254), .in2(out_reg_15_reg_15));
  read_cond_FU #(.BITSIZE_in1(1)) fu_make_oriented_28867_29256 (.out1(out_read_cond_FU_29_i0_fu_make_oriented_28867_29256), .in1(out_ui_bit_and_expr_FU_1_1_1_40_i0_fu_make_oriented_28867_29255));
  ui_plus_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_out1(2)) fu_make_oriented_28867_29261 (.out1(out_ui_plus_expr_FU_8_0_8_47_i1_fu_make_oriented_28867_29261), .in1(out_reg_14_reg_14), .in2(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_make_oriented_28867_29272 (.out1(out_UUdata_converter_FU_26_i0_fu_make_oriented_28867_29272), .in1(out_reg_10_reg_10));
  read_cond_FU #(.BITSIZE_in1(1)) fu_make_oriented_28867_29274 (.out1(out_read_cond_FU_31_i0_fu_make_oriented_28867_29274), .in1(out_ge_expr_FU_8_0_8_36_i0_fu_make_oriented_28867_29538));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_make_oriented_28867_29485 (.out1(out_addr_expr_FU_5_i0_fu_make_oriented_28867_29485), .in1(out_conv_out_const_10_7_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_make_oriented_28867_29488 (.out1(out_addr_expr_FU_6_i0_fu_make_oriented_28867_29488), .in1(out_conv_out_const_11_8_32));
  ui_lshift_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(4), .PRECISION(32)) fu_make_oriented_28867_29503 (.out1(out_ui_lshift_expr_FU_8_0_8_41_i0_fu_make_oriented_28867_29503), .in1(out_reg_3_reg_3), .in2(out_const_5));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(4), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_make_oriented_28867_29509 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_49_i0_fu_make_oriented_28867_29509), .in1(out_reg_1_reg_1), .in2(out_ui_lshift_expr_FU_8_0_8_41_i0_fu_make_oriented_28867_29503));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_make_oriented_28867_29516 (.out1(out_ui_pointer_plus_expr_FU_8_0_8_48_i0_fu_make_oriented_28867_29516), .in1(out_UUdata_converter_FU_15_i0_fu_make_oriented_28867_29167), .in2(out_const_7));
  ge_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_oriented_28867_29538 (.out1(out_ge_expr_FU_8_0_8_36_i0_fu_make_oriented_28867_29538), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0), .in2(out_const_0));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(6)) fu_make_oriented_28867_29547 (.out1(out_addr_expr_FU_8_i0_fu_make_oriented_28867_29547), .in1(out_conv_out_const_9_6_32));
  ui_ne_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_make_oriented_28867_29572 (.out1(out_ui_ne_expr_FU_8_0_8_42_i0_fu_make_oriented_28867_29572), .in1(out_ui_plus_expr_FU_8_0_8_47_i1_fu_make_oriented_28867_29261), .in2(out_const_6));
  ui_ne_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_make_oriented_28867_29574 (.out1(out_ui_ne_expr_FU_8_0_8_42_i1_fu_make_oriented_28867_29574), .in1(out_ui_plus_expr_FU_8_0_8_47_i0_fu_make_oriented_28867_29234), .in2(out_const_6));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) fu_make_oriented_28867_29606 (.out1(out_multi_read_cond_FU_34_i0_fu_make_oriented_28867_29606), .in1({out_reg_18_reg_18, out_reg_17_reg_17}));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_make_oriented_28867_29609 (.out1(out_truth_not_expr_FU_1_1_39_i0_fu_make_oriented_28867_29609), .in1(out_ui_ne_expr_FU_8_0_8_42_i0_fu_make_oriented_28867_29572));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_oriented_28867_29612 (.out1(out_truth_and_expr_FU_1_1_1_38_i0_fu_make_oriented_28867_29612), .in1(out_reg_8_reg_8), .in2(out_truth_not_expr_FU_1_1_39_i0_fu_make_oriented_28867_29609));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in1_288590_0 (.out1(sig_in_bus_mergerproxy_in1_288590_0), .in1(sig_in_vector_bus_mergerproxy_in1_288590_0));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in1_288611_0 (.out1(sig_in_bus_mergerproxy_in1_288611_0), .in1(sig_in_vector_bus_mergerproxy_in1_288611_0));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in1_288642_0 (.out1(sig_in_bus_mergerproxy_in1_288642_0), .in1(sig_in_vector_bus_mergerproxy_in1_288642_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in2_288593_0 (.out1(sig_in_bus_mergerproxy_in2_288593_0), .in1(sig_in_vector_bus_mergerproxy_in2_288593_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in2_288614_0 (.out1(sig_in_bus_mergerproxy_in2_288614_0), .in1(sig_in_vector_bus_mergerproxy_in2_288614_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in2_288645_0 (.out1(sig_in_bus_mergerproxy_in2_288645_0), .in1(sig_in_vector_bus_mergerproxy_in2_288645_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in3_288596_0 (.out1(sig_in_bus_mergerproxy_in3_288596_0), .in1(sig_in_vector_bus_mergerproxy_in3_288596_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in3_288617_0 (.out1(sig_in_bus_mergerproxy_in3_288617_0), .in1(sig_in_vector_bus_mergerproxy_in3_288617_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in3_288648_0 (.out1(sig_in_bus_mergerproxy_in3_288648_0), .in1(sig_in_vector_bus_mergerproxy_in3_288648_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_288599_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_288599_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_288599_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886110_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886110_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886110_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886411_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886411_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886411_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2885912_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2885912_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2885912_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886113_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886113_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886113_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886414_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886414_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886414_0));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_5_i0_fu_make_oriented_28867_29485), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_6_i0_fu_make_oriented_28867_29488), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_MUX_38_reg_10_0_0_1), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_24_i0_fu_make_oriented_28867_29187), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_32_0_32_45_i0_fu_make_oriented_28867_29197), .wenable(wrenable_reg_12));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_32_0_32_46_i0_fu_make_oriented_28867_29227), .wenable(wrenable_reg_13));
  register_SE #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_MUX_42_reg_14_0_0_0), .wenable(wrenable_reg_14));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_8_8_43_i0_fu_make_oriented_28867_29253), .wenable(wrenable_reg_15));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_26_i0_fu_make_oriented_28867_29272), .wenable(wrenable_reg_16));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_42_i0_fu_make_oriented_28867_29572), .wenable(wrenable_reg_17));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_truth_and_expr_FU_1_1_1_38_i0_fu_make_oriented_28867_29612), .wenable(wrenable_reg_18));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_19 (.out1(out_reg_19_reg_19), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_28_i0_fu_make_oriented_28867_29199), .wenable(wrenable_reg_19));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_8_i0_fu_make_oriented_28867_29547), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_MUX_49_reg_3_0_0_0), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_32_0_32_45_i1_fu_make_oriented_28867_29237), .wenable(wrenable_reg_4));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_32_0_32_46_i1_fu_make_oriented_28867_29240), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_14_i0_fu_make_oriented_28867_29165), .wenable(wrenable_reg_6));
  register_STD #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_0_8_48_i0_fu_make_oriented_28867_29516), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_42_i1_fu_make_oriented_28867_29574), .wenable(wrenable_reg_8));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_MUX_55_reg_9_0_0_1), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288590_ (.out1(proxy_in1_28859), .in1(sig_out_bus_mergerproxy_in1_288590_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288611_ (.out1(proxy_in1_28861), .in1(sig_out_bus_mergerproxy_in1_288611_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288642_ (.out1(proxy_in1_28864), .in1(sig_out_bus_mergerproxy_in1_288642_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288593_ (.out1(proxy_in2_28859), .in1(sig_out_bus_mergerproxy_in2_288593_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288614_ (.out1(proxy_in2_28861), .in1(sig_out_bus_mergerproxy_in2_288614_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288645_ (.out1(proxy_in2_28864), .in1(sig_out_bus_mergerproxy_in2_288645_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288596_ (.out1(proxy_in3_28859), .in1(sig_out_bus_mergerproxy_in3_288596_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288617_ (.out1(proxy_in3_28861), .in1(sig_out_bus_mergerproxy_in3_288617_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288648_ (.out1(proxy_in3_28864), .in1(sig_out_bus_mergerproxy_in3_288648_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_288599_ (.out1(proxy_sel_LOAD_28859), .in1(sig_out_bus_mergerproxy_sel_LOAD_288599_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886110_ (.out1(proxy_sel_LOAD_28861), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886110_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_2886411_ (.out1(proxy_sel_LOAD_28864), .in1(sig_out_bus_mergerproxy_sel_LOAD_2886411_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2885912_ (.out1(proxy_sel_STORE_28859), .in1(sig_out_bus_mergerproxy_sel_STORE_2885912_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886113_ (.out1(proxy_sel_STORE_28861), .in1(sig_out_bus_mergerproxy_sel_STORE_2886113_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_2886414_ (.out1(proxy_sel_STORE_28864), .in1(sig_out_bus_mergerproxy_sel_STORE_2886414_));
  // io-signal post fix
  assign OUT_CONDITION_make_oriented_28867_29256 = out_read_cond_FU_29_i0_fu_make_oriented_28867_29256;
  assign OUT_CONDITION_make_oriented_28867_29274 = out_read_cond_FU_31_i0_fu_make_oriented_28867_29274;
  assign OUT_MULTIIF_make_oriented_28867_29606 = out_multi_read_cond_FU_34_i0_fu_make_oriented_28867_29606;

endmodule

// FSM based controller description for make_oriented
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_make_oriented(done_port, selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0, selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0, selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1, selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2, selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0, selector_MUX_38_reg_10_0_0_0, selector_MUX_38_reg_10_0_0_1, selector_MUX_42_reg_14_0_0_0, selector_MUX_49_reg_3_0_0_0, selector_MUX_55_reg_9_0_0_0, selector_MUX_55_reg_9_0_0_1, selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0, selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0, fuselector_PROXY_CTRLN_0_i0_LOAD, fuselector_PROXY_CTRLN_0_i0_STORE, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_make_oriented_28867_29256, OUT_CONDITION_make_oriented_28867_29274, OUT_MULTIIF_make_oriented_28867_29606, clock, reset, start_port);
  // IN
  input OUT_CONDITION_make_oriented_28867_29256;
  input OUT_CONDITION_make_oriented_28867_29274;
  input [1:0] OUT_MULTIIF_make_oriented_28867_29606;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0;
  output selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0;
  output selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1;
  output selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2;
  output selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0;
  output selector_MUX_38_reg_10_0_0_0;
  output selector_MUX_38_reg_10_0_0_1;
  output selector_MUX_42_reg_14_0_0_0;
  output selector_MUX_49_reg_3_0_0_0;
  output selector_MUX_55_reg_9_0_0_0;
  output selector_MUX_55_reg_9_0_0_1;
  output selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0;
  output selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0;
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
  reg selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0;
  reg selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0;
  reg selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1;
  reg selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2;
  reg selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0;
  reg selector_MUX_38_reg_10_0_0_0;
  reg selector_MUX_38_reg_10_0_0_1;
  reg selector_MUX_42_reg_14_0_0_0;
  reg selector_MUX_49_reg_3_0_0_0;
  reg selector_MUX_55_reg_9_0_0_0;
  reg selector_MUX_55_reg_9_0_0_1;
  reg selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0;
  reg selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0;
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
    selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0 = 1'b0;
    selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0 = 1'b0;
    selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1 = 1'b0;
    selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2 = 1'b0;
    selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0 = 1'b0;
    selector_MUX_38_reg_10_0_0_0 = 1'b0;
    selector_MUX_38_reg_10_0_0_1 = 1'b0;
    selector_MUX_42_reg_14_0_0_0 = 1'b0;
    selector_MUX_49_reg_3_0_0_0 = 1'b0;
    selector_MUX_55_reg_9_0_0_0 = 1'b0;
    selector_MUX_55_reg_9_0_0_1 = 1'b0;
    selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0 = 1'b0;
    selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0 = 1'b0;
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
          selector_MUX_38_reg_10_0_0_1 = 1'b1;
          selector_MUX_49_reg_3_0_0_0 = 1'b1;
          selector_MUX_55_reg_9_0_0_1 = 1'b1;
          selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_1_i0_STORE = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
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
          selector_MUX_38_reg_10_0_0_0 = 1'bX;
          selector_MUX_38_reg_10_0_0_1 = 1'bX;
          selector_MUX_42_reg_14_0_0_0 = 1'bX;
          selector_MUX_49_reg_3_0_0_0 = 1'bX;
          selector_MUX_55_reg_9_0_0_0 = 1'bX;
          selector_MUX_55_reg_9_0_0_1 = 1'bX;
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
          selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2 = 1'b1;
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
          selector_MUX_42_reg_14_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          wrenable_reg_14 = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_LOAD = 1'b1;
          wrenable_reg_11 = 1'b1;
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
          if (OUT_CONDITION_make_oriented_28867_29256 == 1'b1)
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
          fuselector_PROXY_CTRLN_2_i0_LOAD = 1'b1;
          _next_state = S_8;
        end
      S_8 :
        begin
          if (OUT_CONDITION_make_oriented_28867_29274 == 1'b1)
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
          selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1 = 1'b1;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          _next_state = S_10;
        end
      S_5 :
        begin
          selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1 = 1'b1;
          selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          _next_state = S_6;
        end
      S_6 :
        begin
          selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          _next_state = S_10;
        end
      S_10 :
        begin
          selector_MUX_38_reg_10_0_0_0 = 1'b1;
          selector_MUX_55_reg_9_0_0_0 = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_9 = 1'b1;
          if (OUT_MULTIIF_make_oriented_28867_29606[0] == 1'b1)
            begin
              _next_state = S_3;
              selector_MUX_38_reg_10_0_0_0 = 1'b0;
              selector_MUX_55_reg_9_0_0_0 = 1'b0;
            end
          else if (OUT_MULTIIF_make_oriented_28867_29606[1] == 1'b1)
            begin
              _next_state = S_1;
            end
          else
            begin
              _next_state = S_11;
              done_port = 1'b1;
              selector_MUX_38_reg_10_0_0_0 = 1'b0;
              selector_MUX_55_reg_9_0_0_0 = 1'b0;
              wrenable_reg_10 = 1'b0;
              wrenable_reg_9 = 1'b0;
            end
        end
      S_11 :
        begin
          selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_0_i0_STORE = 1'b1;
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
          selector_MUX_38_reg_10_0_0_0 = 1'bX;
          selector_MUX_38_reg_10_0_0_1 = 1'bX;
          selector_MUX_42_reg_14_0_0_0 = 1'bX;
          selector_MUX_49_reg_3_0_0_0 = 1'bX;
          selector_MUX_55_reg_9_0_0_0 = 1'bX;
          selector_MUX_55_reg_9_0_0_1 = 1'bX;
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
module make_oriented(clock, reset, start_port, done_port, proxy_out1_28859, proxy_out1_28861, proxy_out1_28864, proxy_in1_28859, proxy_in2_28859, proxy_in3_28859, proxy_sel_LOAD_28859, proxy_sel_STORE_28859, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_in1_28864, proxy_in2_28864, proxy_in3_28864, proxy_sel_LOAD_28864, proxy_sel_STORE_28864);
  parameter MEM_var_28859_28868=32, MEM_var_28861_28868=64, MEM_var_28864_28868=96;
  // IN
  input clock;
  input reset;
  input start_port;
  input [63:0] proxy_out1_28859;
  input [63:0] proxy_out1_28861;
  input [63:0] proxy_out1_28864;
  // OUT
  output done_port;
  output [63:0] proxy_in1_28859;
  output [15:0] proxy_in2_28859;
  output [11:0] proxy_in3_28859;
  output [1:0] proxy_sel_LOAD_28859;
  output [1:0] proxy_sel_STORE_28859;
  output [63:0] proxy_in1_28861;
  output [15:0] proxy_in2_28861;
  output [11:0] proxy_in3_28861;
  output [1:0] proxy_sel_LOAD_28861;
  output [1:0] proxy_sel_STORE_28861;
  output [63:0] proxy_in1_28864;
  output [15:0] proxy_in2_28864;
  output [11:0] proxy_in3_28864;
  output [1:0] proxy_sel_LOAD_28864;
  output [1:0] proxy_sel_STORE_28864;
  // Component and signal declarations
  wire OUT_CONDITION_make_oriented_28867_29256;
  wire OUT_CONDITION_make_oriented_28867_29274;
  wire [1:0] OUT_MULTIIF_make_oriented_28867_29606;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_PROXY_CTRLN_0_i0_LOAD;
  wire fuselector_PROXY_CTRLN_0_i0_STORE;
  wire fuselector_PROXY_CTRLN_1_i0_LOAD;
  wire fuselector_PROXY_CTRLN_1_i0_STORE;
  wire fuselector_PROXY_CTRLN_2_i0_LOAD;
  wire fuselector_PROXY_CTRLN_2_i0_STORE;
  wire selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0;
  wire selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0;
  wire selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1;
  wire selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2;
  wire selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0;
  wire selector_MUX_38_reg_10_0_0_0;
  wire selector_MUX_38_reg_10_0_0_1;
  wire selector_MUX_42_reg_14_0_0_0;
  wire selector_MUX_49_reg_3_0_0_0;
  wire selector_MUX_55_reg_9_0_0_0;
  wire selector_MUX_55_reg_9_0_0_1;
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
  
  controller_make_oriented Controller_i (.done_port(done_delayed_REG_signal_in), .selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0(selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0), .selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0), .selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1), .selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2), .selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0(selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0), .selector_MUX_38_reg_10_0_0_0(selector_MUX_38_reg_10_0_0_0), .selector_MUX_38_reg_10_0_0_1(selector_MUX_38_reg_10_0_0_1), .selector_MUX_42_reg_14_0_0_0(selector_MUX_42_reg_14_0_0_0), .selector_MUX_49_reg_3_0_0_0(selector_MUX_49_reg_3_0_0_0), .selector_MUX_55_reg_9_0_0_0(selector_MUX_55_reg_9_0_0_0), .selector_MUX_55_reg_9_0_0_1(selector_MUX_55_reg_9_0_0_1), .selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0(selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0), .selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0(selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0), .fuselector_PROXY_CTRLN_0_i0_LOAD(fuselector_PROXY_CTRLN_0_i0_LOAD), .fuselector_PROXY_CTRLN_0_i0_STORE(fuselector_PROXY_CTRLN_0_i0_STORE), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_make_oriented_28867_29256(OUT_CONDITION_make_oriented_28867_29256), .OUT_CONDITION_make_oriented_28867_29274(OUT_CONDITION_make_oriented_28867_29274), .OUT_MULTIIF_make_oriented_28867_29606(OUT_MULTIIF_make_oriented_28867_29606), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_make_oriented #(.MEM_var_28859_28868(MEM_var_28859_28868), .MEM_var_28861_28868(MEM_var_28861_28868), .MEM_var_28864_28868(MEM_var_28864_28868)) Datapath_i (.proxy_in1_28859(proxy_in1_28859), .proxy_in2_28859(proxy_in2_28859), .proxy_in3_28859(proxy_in3_28859), .proxy_sel_LOAD_28859(proxy_sel_LOAD_28859), .proxy_sel_STORE_28859(proxy_sel_STORE_28859), .proxy_in1_28861(proxy_in1_28861), .proxy_in2_28861(proxy_in2_28861), .proxy_in3_28861(proxy_in3_28861), .proxy_sel_LOAD_28861(proxy_sel_LOAD_28861), .proxy_sel_STORE_28861(proxy_sel_STORE_28861), .proxy_in1_28864(proxy_in1_28864), .proxy_in2_28864(proxy_in2_28864), .proxy_in3_28864(proxy_in3_28864), .proxy_sel_LOAD_28864(proxy_sel_LOAD_28864), .proxy_sel_STORE_28864(proxy_sel_STORE_28864), .OUT_CONDITION_make_oriented_28867_29256(OUT_CONDITION_make_oriented_28867_29256), .OUT_CONDITION_make_oriented_28867_29274(OUT_CONDITION_make_oriented_28867_29274), .OUT_MULTIIF_make_oriented_28867_29606(OUT_MULTIIF_make_oriented_28867_29606), .clock(clock), .reset(reset), .proxy_out1_28859(proxy_out1_28859), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28864(proxy_out1_28864), .selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0(selector_MUX_12_PROXY_CTRLN_2_i0_0_0_0), .selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_0), .selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_1), .selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2(selector_MUX_13_PROXY_CTRLN_2_i0_1_0_2), .selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0(selector_MUX_13_PROXY_CTRLN_2_i0_1_1_0), .selector_MUX_38_reg_10_0_0_0(selector_MUX_38_reg_10_0_0_0), .selector_MUX_38_reg_10_0_0_1(selector_MUX_38_reg_10_0_0_1), .selector_MUX_42_reg_14_0_0_0(selector_MUX_42_reg_14_0_0_0), .selector_MUX_49_reg_3_0_0_0(selector_MUX_49_reg_3_0_0_0), .selector_MUX_55_reg_9_0_0_0(selector_MUX_55_reg_9_0_0_0), .selector_MUX_55_reg_9_0_0_1(selector_MUX_55_reg_9_0_0_1), .selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0(selector_MUX_8_PROXY_CTRLN_1_i0_0_0_0), .selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0(selector_MUX_9_PROXY_CTRLN_1_i0_1_0_0), .fuselector_PROXY_CTRLN_0_i0_LOAD(fuselector_PROXY_CTRLN_0_i0_LOAD), .fuselector_PROXY_CTRLN_0_i0_STORE(fuselector_PROXY_CTRLN_0_i0_STORE), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Datapath RTL description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_main(clock, reset, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, selector_IN_UNBOUNDED_main_28868_29293, selector_IN_UNBOUNDED_main_28868_29294, wrenable_reg_0, OUT_UNBOUNDED_main_28868_29293, OUT_UNBOUNDED_main_28868_29294);
  parameter MEM_var_28859_28868=32, MEM_var_28861_28868=64, MEM_var_28862_28866=128, MEM_var_28864_28868=96;
  // IN
  input clock;
  input reset;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [15:0] S_addr_ram;
  input [63:0] S_Wdata_ram;
  input [11:0] S_data_ram_size;
  input [63:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [63:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [15:0] Min_addr_ram;
  input [63:0] Min_Wdata_ram;
  input [11:0] Min_data_ram_size;
  input selector_IN_UNBOUNDED_main_28868_29293;
  input selector_IN_UNBOUNDED_main_28868_29294;
  input wrenable_reg_0;
  // OUT
  output [63:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [15:0] Mout_addr_ram;
  output [63:0] Mout_Wdata_ram;
  output [11:0] Mout_data_ram_size;
  output OUT_UNBOUNDED_main_28868_29293;
  output OUT_UNBOUNDED_main_28868_29294;
  // Component and signal declarations
  wire [7:0] null_out_signal_array_28859_0_out1_0;
  wire [7:0] null_out_signal_array_28859_0_out1_1;
  wire [7:0] null_out_signal_array_28861_0_out1_0;
  wire [7:0] null_out_signal_array_28861_0_out1_1;
  wire [7:0] null_out_signal_array_28864_0_out1_0;
  wire [7:0] null_out_signal_array_28864_0_out1_1;
  wire [31:0] out_UUdata_converter_FU_6_i0_fu_main_28868_29580;
  wire [31:0] out_addr_expr_FU_5_i0_fu_main_28868_29482;
  wire [1:0] out_const_0;
  wire [7:0] out_const_1;
  wire [7:0] out_conv_out_const_0_2_8;
  wire [31:0] out_conv_out_const_1_8_32;
  wire [31:0] out_reg_0_reg_0;
  wire [63:0] proxy_out1_28859;
  wire [63:0] proxy_out1_28861;
  wire [63:0] proxy_out1_28864;
  wire s_done_fu_main_28868_29293;
  wire s_done_fu_main_28868_29294;
  wire [63:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [15:0] sig_in_bus_mergerMout_addr_ram1_0;
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
  wire [63:0] sig_in_bus_mergerproxy_in117_0;
  wire [63:0] sig_in_bus_mergerproxy_in17_0;
  wire [63:0] sig_in_bus_mergerproxy_in17_1;
  wire [15:0] sig_in_bus_mergerproxy_in213_0;
  wire [15:0] sig_in_bus_mergerproxy_in213_1;
  wire [15:0] sig_in_bus_mergerproxy_in218_0;
  wire [15:0] sig_in_bus_mergerproxy_in28_0;
  wire [15:0] sig_in_bus_mergerproxy_in28_1;
  wire [11:0] sig_in_bus_mergerproxy_in314_0;
  wire [11:0] sig_in_bus_mergerproxy_in314_1;
  wire [11:0] sig_in_bus_mergerproxy_in319_0;
  wire [11:0] sig_in_bus_mergerproxy_in39_0;
  wire [11:0] sig_in_bus_mergerproxy_in39_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD10_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD10_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD15_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD15_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD20_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE11_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE11_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE16_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE16_1;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE21_0;
  wire [63:0] sig_in_vector_bus_mergerMout_Wdata_ram0_0;
  wire [15:0] sig_in_vector_bus_mergerMout_addr_ram1_0;
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
  wire [63:0] sig_in_vector_bus_mergerproxy_in117_0;
  wire [63:0] sig_in_vector_bus_mergerproxy_in17_0;
  wire [63:0] sig_in_vector_bus_mergerproxy_in17_1;
  wire [15:0] sig_in_vector_bus_mergerproxy_in213_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in213_1;
  wire [15:0] sig_in_vector_bus_mergerproxy_in218_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in28_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in28_1;
  wire [11:0] sig_in_vector_bus_mergerproxy_in314_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in314_1;
  wire [11:0] sig_in_vector_bus_mergerproxy_in319_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in39_0;
  wire [11:0] sig_in_vector_bus_mergerproxy_in39_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD10_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD10_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD15_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD15_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD20_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE11_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE11_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE16_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE16_1;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE21_0;
  wire [63:0] sig_out_bus_mergerMout_Wdata_ram0_;
  wire [15:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [11:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire [1:0] sig_out_bus_mergerMout_oe_ram3_;
  wire [1:0] sig_out_bus_mergerMout_we_ram4_;
  wire [1:0] sig_out_bus_mergerSout_DataRdy5_;
  wire [63:0] sig_out_bus_mergerSout_Rdata_ram6_;
  wire [63:0] sig_out_bus_mergerproxy_in112_;
  wire [63:0] sig_out_bus_mergerproxy_in117_;
  wire [63:0] sig_out_bus_mergerproxy_in17_;
  wire [15:0] sig_out_bus_mergerproxy_in213_;
  wire [15:0] sig_out_bus_mergerproxy_in218_;
  wire [15:0] sig_out_bus_mergerproxy_in28_;
  wire [11:0] sig_out_bus_mergerproxy_in314_;
  wire [11:0] sig_out_bus_mergerproxy_in319_;
  wire [11:0] sig_out_bus_mergerproxy_in39_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD10_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD15_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD20_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE11_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE16_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE21_;
  wire [63:0] sig_out_vector_bus_mergerproxy_in112_;
  wire [63:0] sig_out_vector_bus_mergerproxy_in117_;
  wire [63:0] sig_out_vector_bus_mergerproxy_in17_;
  wire [15:0] sig_out_vector_bus_mergerproxy_in213_;
  wire [15:0] sig_out_vector_bus_mergerproxy_in218_;
  wire [15:0] sig_out_vector_bus_mergerproxy_in28_;
  wire [11:0] sig_out_vector_bus_mergerproxy_in314_;
  wire [11:0] sig_out_vector_bus_mergerproxy_in319_;
  wire [11:0] sig_out_vector_bus_mergerproxy_in39_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_LOAD10_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_LOAD15_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_LOAD20_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_STORE11_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_STORE16_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_STORE21_;
  
  ARRAY_1D_STD_BRAM_NN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(8), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(8), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(32), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(32), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(32), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(6), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file_a("array_ref_28859.mem"), .MEMORY_INIT_file_b("0_array_ref_28859.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28859_28868), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(16), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(8), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) array_28859_0 (.out1({null_out_signal_array_28859_0_out1_1, null_out_signal_array_28859_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_0), .proxy_out1(proxy_out1_28859), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({8'b00000000, 8'b00000000}), .in3({6'b000000, 6'b000000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in17_), .proxy_in2(sig_out_vector_bus_mergerproxy_in28_), .proxy_in3(sig_out_vector_bus_mergerproxy_in39_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD10_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE11_));
  ARRAY_1D_STD_BRAM_NN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(8), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(8), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(32), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(32), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(32), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(6), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file_a("array_ref_28861.mem"), .MEMORY_INIT_file_b("0_array_ref_28861.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28861_28868), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(16), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(8), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) array_28861_0 (.out1({null_out_signal_array_28861_0_out1_1, null_out_signal_array_28861_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_1), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_1), .proxy_out1(proxy_out1_28861), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({8'b00000000, 8'b00000000}), .in3({6'b000000, 6'b000000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in112_), .proxy_in2(sig_out_vector_bus_mergerproxy_in213_), .proxy_in3(sig_out_vector_bus_mergerproxy_in314_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD15_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE16_));
  ARRAY_1D_STD_BRAM_NN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(8), .PORTSIZE_in2(2), .BITSIZE_in3(6), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(8), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(32), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(32), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(32), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(6), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file_a("array_ref_28864.mem"), .MEMORY_INIT_file_b("0_array_ref_28864.mem"), .n_elements(9), .data_size(8), .address_space_begin(MEM_var_28864_28868), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(16), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(32), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(8), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(6), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(32), .PORTSIZE_proxy_out1(2)) array_28864_0 (.out1({null_out_signal_array_28864_0_out1_1, null_out_signal_array_28864_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_2), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_2), .proxy_out1(proxy_out1_28864), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({8'b00000000, 8'b00000000}), .in3({6'b000000, 6'b000000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in117_), .proxy_in2(sig_out_vector_bus_mergerproxy_in218_), .proxy_in3(sig_out_vector_bus_mergerproxy_in319_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD20_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE21_));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(1), .BITSIZE_out1(12)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(4), .BITSIZE_out1(2)) bus_mergerSout_DataRdy5_ (.out1(sig_out_bus_mergerSout_DataRdy5_), .in1({sig_in_bus_mergerSout_DataRdy5_3, sig_in_bus_mergerSout_DataRdy5_2, sig_in_bus_mergerSout_DataRdy5_1, sig_in_bus_mergerSout_DataRdy5_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(4), .BITSIZE_out1(64)) bus_mergerSout_Rdata_ram6_ (.out1(sig_out_bus_mergerSout_Rdata_ram6_), .in1({sig_in_bus_mergerSout_Rdata_ram6_3, sig_in_bus_mergerSout_Rdata_ram6_2, sig_in_bus_mergerSout_Rdata_ram6_1, sig_in_bus_mergerSout_Rdata_ram6_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(2), .BITSIZE_out1(64)) bus_mergerproxy_in112_ (.out1(sig_out_bus_mergerproxy_in112_), .in1({sig_in_bus_mergerproxy_in112_1, sig_in_bus_mergerproxy_in112_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(1), .BITSIZE_out1(64)) bus_mergerproxy_in117_ (.out1(sig_out_bus_mergerproxy_in117_), .in1({sig_in_bus_mergerproxy_in117_0}));
  bus_merger #(.BITSIZE_in1(64), .PORTSIZE_in1(2), .BITSIZE_out1(64)) bus_mergerproxy_in17_ (.out1(sig_out_bus_mergerproxy_in17_), .in1({sig_in_bus_mergerproxy_in17_1, sig_in_bus_mergerproxy_in17_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(2), .BITSIZE_out1(16)) bus_mergerproxy_in213_ (.out1(sig_out_bus_mergerproxy_in213_), .in1({sig_in_bus_mergerproxy_in213_1, sig_in_bus_mergerproxy_in213_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in218_ (.out1(sig_out_bus_mergerproxy_in218_), .in1({sig_in_bus_mergerproxy_in218_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(2), .BITSIZE_out1(16)) bus_mergerproxy_in28_ (.out1(sig_out_bus_mergerproxy_in28_), .in1({sig_in_bus_mergerproxy_in28_1, sig_in_bus_mergerproxy_in28_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(2), .BITSIZE_out1(12)) bus_mergerproxy_in314_ (.out1(sig_out_bus_mergerproxy_in314_), .in1({sig_in_bus_mergerproxy_in314_1, sig_in_bus_mergerproxy_in314_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(1), .BITSIZE_out1(12)) bus_mergerproxy_in319_ (.out1(sig_out_bus_mergerproxy_in319_), .in1({sig_in_bus_mergerproxy_in319_0}));
  bus_merger #(.BITSIZE_in1(12), .PORTSIZE_in1(2), .BITSIZE_out1(12)) bus_mergerproxy_in39_ (.out1(sig_out_bus_mergerproxy_in39_), .in1({sig_in_bus_mergerproxy_in39_1, sig_in_bus_mergerproxy_in39_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(2), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD10_ (.out1(sig_out_bus_mergerproxy_sel_LOAD10_), .in1({sig_in_bus_mergerproxy_sel_LOAD10_1, sig_in_bus_mergerproxy_sel_LOAD10_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(2), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD15_ (.out1(sig_out_bus_mergerproxy_sel_LOAD15_), .in1({sig_in_bus_mergerproxy_sel_LOAD15_1, sig_in_bus_mergerproxy_sel_LOAD15_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD20_ (.out1(sig_out_bus_mergerproxy_sel_LOAD20_), .in1({sig_in_bus_mergerproxy_sel_LOAD20_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(2), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE11_ (.out1(sig_out_bus_mergerproxy_sel_STORE11_), .in1({sig_in_bus_mergerproxy_sel_STORE11_1, sig_in_bus_mergerproxy_sel_STORE11_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(2), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE16_ (.out1(sig_out_bus_mergerproxy_sel_STORE16_), .in1({sig_in_bus_mergerproxy_sel_STORE16_1, sig_in_bus_mergerproxy_sel_STORE16_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE21_ (.out1(sig_out_bus_mergerproxy_sel_STORE21_), .in1({sig_in_bus_mergerproxy_sel_STORE21_0}));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28864_28868)) const_1 (.out1(out_const_1));
  UUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(8)) conv_out_const_0_2_8 (.out1(out_conv_out_const_0_2_8), .in1(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_1_8_32 (.out1(out_conv_out_const_1_8_32), .in1(out_const_1));
  make_oriented #(.MEM_var_28859_28868(MEM_var_28859_28868), .MEM_var_28861_28868(MEM_var_28861_28868), .MEM_var_28864_28868(MEM_var_28864_28868)) fu_main_28868_29293 (.done_port(s_done_fu_main_28868_29293), .proxy_in1_28859(sig_in_vector_bus_mergerproxy_in17_1), .proxy_in2_28859(sig_in_vector_bus_mergerproxy_in28_1), .proxy_in3_28859(sig_in_vector_bus_mergerproxy_in39_1), .proxy_sel_LOAD_28859(sig_in_vector_bus_mergerproxy_sel_LOAD10_1), .proxy_sel_STORE_28859(sig_in_vector_bus_mergerproxy_sel_STORE11_1), .proxy_in1_28861(sig_in_vector_bus_mergerproxy_in112_1), .proxy_in2_28861(sig_in_vector_bus_mergerproxy_in213_1), .proxy_in3_28861(sig_in_vector_bus_mergerproxy_in314_1), .proxy_sel_LOAD_28861(sig_in_vector_bus_mergerproxy_sel_LOAD15_1), .proxy_sel_STORE_28861(sig_in_vector_bus_mergerproxy_sel_STORE16_1), .proxy_in1_28864(sig_in_vector_bus_mergerproxy_in117_0), .proxy_in2_28864(sig_in_vector_bus_mergerproxy_in218_0), .proxy_in3_28864(sig_in_vector_bus_mergerproxy_in319_0), .proxy_sel_LOAD_28864(sig_in_vector_bus_mergerproxy_sel_LOAD20_0), .proxy_sel_STORE_28864(sig_in_vector_bus_mergerproxy_sel_STORE21_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28868_29293), .proxy_out1_28859(proxy_out1_28859), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28864(proxy_out1_28864));
  bellmanford #(.MEM_var_28859_28868(MEM_var_28859_28868), .MEM_var_28861_28868(MEM_var_28861_28868), .MEM_var_28862_28866(MEM_var_28862_28866)) fu_main_28868_29294 (.done_port(s_done_fu_main_28868_29294), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_3), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_3), .proxy_in1_28859(sig_in_vector_bus_mergerproxy_in17_0), .proxy_in2_28859(sig_in_vector_bus_mergerproxy_in28_0), .proxy_in3_28859(sig_in_vector_bus_mergerproxy_in39_0), .proxy_sel_LOAD_28859(sig_in_vector_bus_mergerproxy_sel_LOAD10_0), .proxy_sel_STORE_28859(sig_in_vector_bus_mergerproxy_sel_STORE11_0), .proxy_in1_28861(sig_in_vector_bus_mergerproxy_in112_0), .proxy_in2_28861(sig_in_vector_bus_mergerproxy_in213_0), .proxy_in3_28861(sig_in_vector_bus_mergerproxy_in314_0), .proxy_sel_LOAD_28861(sig_in_vector_bus_mergerproxy_sel_LOAD15_0), .proxy_sel_STORE_28861(sig_in_vector_bus_mergerproxy_sel_STORE16_0), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28868_29294), .size(out_conv_out_const_0_2_8), .a(out_reg_0_reg_0), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28859(proxy_out1_28859), .proxy_out1_28861(proxy_out1_28861), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_main_28868_29482 (.out1(out_addr_expr_FU_5_i0_fu_main_28868_29482), .in1(out_conv_out_const_1_8_32));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_main_28868_29580 (.out1(out_UUdata_converter_FU_6_i0_fu_main_28868_29580), .in1(out_addr_expr_FU_5_i0_fu_main_28868_29482));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
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
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in117_0 (.out1(sig_in_bus_mergerproxy_in117_0), .in1(sig_in_vector_bus_mergerproxy_in117_0));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in17_0 (.out1(sig_in_bus_mergerproxy_in17_0), .in1(sig_in_vector_bus_mergerproxy_in17_0));
  join_signal #(.BITSIZE_in1(32), .PORTSIZE_in1(2), .BITSIZE_out1(64)) join_signalbus_mergerproxy_in17_1 (.out1(sig_in_bus_mergerproxy_in17_1), .in1(sig_in_vector_bus_mergerproxy_in17_1));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in213_0 (.out1(sig_in_bus_mergerproxy_in213_0), .in1(sig_in_vector_bus_mergerproxy_in213_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in213_1 (.out1(sig_in_bus_mergerproxy_in213_1), .in1(sig_in_vector_bus_mergerproxy_in213_1));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in218_0 (.out1(sig_in_bus_mergerproxy_in218_0), .in1(sig_in_vector_bus_mergerproxy_in218_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in28_0 (.out1(sig_in_bus_mergerproxy_in28_0), .in1(sig_in_vector_bus_mergerproxy_in28_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in28_1 (.out1(sig_in_bus_mergerproxy_in28_1), .in1(sig_in_vector_bus_mergerproxy_in28_1));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in314_0 (.out1(sig_in_bus_mergerproxy_in314_0), .in1(sig_in_vector_bus_mergerproxy_in314_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in314_1 (.out1(sig_in_bus_mergerproxy_in314_1), .in1(sig_in_vector_bus_mergerproxy_in314_1));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in319_0 (.out1(sig_in_bus_mergerproxy_in319_0), .in1(sig_in_vector_bus_mergerproxy_in319_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in39_0 (.out1(sig_in_bus_mergerproxy_in39_0), .in1(sig_in_vector_bus_mergerproxy_in39_0));
  join_signal #(.BITSIZE_in1(6), .PORTSIZE_in1(2), .BITSIZE_out1(12)) join_signalbus_mergerproxy_in39_1 (.out1(sig_in_bus_mergerproxy_in39_1), .in1(sig_in_vector_bus_mergerproxy_in39_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD10_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD10_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD10_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD10_1 (.out1(sig_in_bus_mergerproxy_sel_LOAD10_1), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD10_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD15_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD15_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD15_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD15_1 (.out1(sig_in_bus_mergerproxy_sel_LOAD15_1), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD15_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD20_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD20_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD20_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE11_0 (.out1(sig_in_bus_mergerproxy_sel_STORE11_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE11_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE11_1 (.out1(sig_in_bus_mergerproxy_sel_STORE11_1), .in1(sig_in_vector_bus_mergerproxy_sel_STORE11_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE16_0 (.out1(sig_in_bus_mergerproxy_sel_STORE16_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE16_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE16_1 (.out1(sig_in_bus_mergerproxy_sel_STORE16_1), .in1(sig_in_vector_bus_mergerproxy_sel_STORE16_1));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE21_0 (.out1(sig_in_bus_mergerproxy_sel_STORE21_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE21_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_6_i0_fu_main_28868_29580), .wenable(wrenable_reg_0));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy5_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy5_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram6_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram6_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in112_ (.out1(sig_out_vector_bus_mergerproxy_in112_), .in1(sig_out_bus_mergerproxy_in112_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in117_ (.out1(sig_out_vector_bus_mergerproxy_in117_), .in1(sig_out_bus_mergerproxy_in117_));
  split_signal #(.BITSIZE_in1(64), .BITSIZE_out1(32), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in17_ (.out1(sig_out_vector_bus_mergerproxy_in17_), .in1(sig_out_bus_mergerproxy_in17_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in213_ (.out1(sig_out_vector_bus_mergerproxy_in213_), .in1(sig_out_bus_mergerproxy_in213_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in218_ (.out1(sig_out_vector_bus_mergerproxy_in218_), .in1(sig_out_bus_mergerproxy_in218_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in28_ (.out1(sig_out_vector_bus_mergerproxy_in28_), .in1(sig_out_bus_mergerproxy_in28_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in314_ (.out1(sig_out_vector_bus_mergerproxy_in314_), .in1(sig_out_bus_mergerproxy_in314_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in319_ (.out1(sig_out_vector_bus_mergerproxy_in319_), .in1(sig_out_bus_mergerproxy_in319_));
  split_signal #(.BITSIZE_in1(12), .BITSIZE_out1(6), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in39_ (.out1(sig_out_vector_bus_mergerproxy_in39_), .in1(sig_out_bus_mergerproxy_in39_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD10_ (.out1(sig_out_vector_bus_mergerproxy_sel_LOAD10_), .in1(sig_out_bus_mergerproxy_sel_LOAD10_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD15_ (.out1(sig_out_vector_bus_mergerproxy_sel_LOAD15_), .in1(sig_out_bus_mergerproxy_sel_LOAD15_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD20_ (.out1(sig_out_vector_bus_mergerproxy_sel_LOAD20_), .in1(sig_out_bus_mergerproxy_sel_LOAD20_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE11_ (.out1(sig_out_vector_bus_mergerproxy_sel_STORE11_), .in1(sig_out_bus_mergerproxy_sel_STORE11_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE16_ (.out1(sig_out_vector_bus_mergerproxy_sel_STORE16_), .in1(sig_out_bus_mergerproxy_sel_STORE16_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE21_ (.out1(sig_out_vector_bus_mergerproxy_sel_STORE21_), .in1(sig_out_bus_mergerproxy_sel_STORE21_));
  // io-signal post fix
  assign OUT_UNBOUNDED_main_28868_29293 = s_done_fu_main_28868_29293;
  assign OUT_UNBOUNDED_main_28868_29294 = s_done_fu_main_28868_29294;

endmodule

// FSM based controller description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_main(done_port, selector_IN_UNBOUNDED_main_28868_29293, selector_IN_UNBOUNDED_main_28868_29294, wrenable_reg_0, OUT_UNBOUNDED_main_28868_29293, OUT_UNBOUNDED_main_28868_29294, clock, reset, start_port);
  // IN
  input OUT_UNBOUNDED_main_28868_29293;
  input OUT_UNBOUNDED_main_28868_29294;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_IN_UNBOUNDED_main_28868_29293;
  output selector_IN_UNBOUNDED_main_28868_29294;
  output wrenable_reg_0;
  parameter [4:0] S_0 = 5'b00001,
    S_1 = 5'b00010,
    S_2 = 5'b00100,
    S_3 = 5'b01000,
    S_4 = 5'b10000;
  reg [4:0] _present_state, _next_state;
  reg done_port;
  reg selector_IN_UNBOUNDED_main_28868_29293;
  reg selector_IN_UNBOUNDED_main_28868_29294;
  reg wrenable_reg_0;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    selector_IN_UNBOUNDED_main_28868_29293 = 1'b0;
    selector_IN_UNBOUNDED_main_28868_29294 = 1'b0;
    wrenable_reg_0 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          selector_IN_UNBOUNDED_main_28868_29293 = 1'b1;
          wrenable_reg_0 = 1'b1;
          if (OUT_UNBOUNDED_main_28868_29293 == 1'b0)
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
          if (OUT_UNBOUNDED_main_28868_29293 == 1'b0)
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
          selector_IN_UNBOUNDED_main_28868_29294 = 1'b1;
          if (OUT_UNBOUNDED_main_28868_29294 == 1'b0)
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
          if (OUT_UNBOUNDED_main_28868_29294 == 1'b0)
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
  parameter MEM_var_28859_28868=32, MEM_var_28861_28868=64, MEM_var_28862_28866=128, MEM_var_28864_28868=96;
  // IN
  input clock;
  input reset;
  input start_port;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [15:0] S_addr_ram;
  input [63:0] S_Wdata_ram;
  input [11:0] S_data_ram_size;
  input [63:0] M_Rdata_ram;
  input [1:0] M_DataRdy;
  input [63:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [1:0] Min_oe_ram;
  input [1:0] Min_we_ram;
  input [15:0] Min_addr_ram;
  input [63:0] Min_Wdata_ram;
  input [11:0] Min_data_ram_size;
  // OUT
  output done_port;
  output [63:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [15:0] Mout_addr_ram;
  output [63:0] Mout_Wdata_ram;
  output [11:0] Mout_data_ram_size;
  // Component and signal declarations
  wire OUT_UNBOUNDED_main_28868_29293;
  wire OUT_UNBOUNDED_main_28868_29294;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire selector_IN_UNBOUNDED_main_28868_29293;
  wire selector_IN_UNBOUNDED_main_28868_29294;
  wire wrenable_reg_0;
  
  controller_main Controller_i (.done_port(done_delayed_REG_signal_in), .selector_IN_UNBOUNDED_main_28868_29293(selector_IN_UNBOUNDED_main_28868_29293), .selector_IN_UNBOUNDED_main_28868_29294(selector_IN_UNBOUNDED_main_28868_29294), .wrenable_reg_0(wrenable_reg_0), .OUT_UNBOUNDED_main_28868_29293(OUT_UNBOUNDED_main_28868_29293), .OUT_UNBOUNDED_main_28868_29294(OUT_UNBOUNDED_main_28868_29294), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_main #(.MEM_var_28859_28868(MEM_var_28859_28868), .MEM_var_28861_28868(MEM_var_28861_28868), .MEM_var_28862_28866(MEM_var_28862_28866), .MEM_var_28864_28868(MEM_var_28864_28868)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_UNBOUNDED_main_28868_29293(OUT_UNBOUNDED_main_28868_29293), .OUT_UNBOUNDED_main_28868_29294(OUT_UNBOUNDED_main_28868_29294), .clock(clock), .reset(reset), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .selector_IN_UNBOUNDED_main_28868_29293(selector_IN_UNBOUNDED_main_28868_29293), .selector_IN_UNBOUNDED_main_28868_29294(selector_IN_UNBOUNDED_main_28868_29294), .wrenable_reg_0(wrenable_reg_0));
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
  parameter MEM_var_28859_28868=32, MEM_var_28861_28868=64, MEM_var_28862_28866=128, MEM_var_28864_28868=96;
  // IN
  input clock;
  input reset;
  input start_port;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [15:0] S_addr_ram;
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
  output [15:0] Mout_addr_ram;
  output [63:0] Mout_Wdata_ram;
  output [11:0] Mout_data_ram_size;
  // Component and signal declarations
  
  _main #(.MEM_var_28859_28868(MEM_var_28859_28868), .MEM_var_28861_28868(MEM_var_28861_28868), .MEM_var_28862_28866(MEM_var_28862_28866), .MEM_var_28864_28868(MEM_var_28864_28868)) _main_i0 (.done_port(done_port), .Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .clock(clock), .reset(reset), .start_port(start_port), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .Sin_DataRdy({1'b0, 1'b0}), .Min_oe_ram({1'b0, 1'b0}), .Min_we_ram({1'b0, 1'b0}), .Min_addr_ram({8'b00000000, 8'b00000000}), .Min_Wdata_ram({32'b00000000000000000000000000000000, 32'b00000000000000000000000000000000}), .Min_data_ram_size({6'b000000, 6'b000000}));

endmodule


