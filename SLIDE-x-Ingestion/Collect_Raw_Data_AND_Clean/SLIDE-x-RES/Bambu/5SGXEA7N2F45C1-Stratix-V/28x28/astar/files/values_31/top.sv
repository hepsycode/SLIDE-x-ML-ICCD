// 
// Politecnico di Milano
// Code created using PandA - Version: PandA 0.9.6 - Revision 891ec3caed502474cab0813cc4a9fc678deabaa5 - Date 2022-06-14T19:54:36
// bambu executed with: bambu -I/home/dews/Scrivania/bambu-hls/RESULTS/Bambu/5SGXEA7N2F45C1-Stratix-V/28x28/astar/includes/values_31 --simulate --simulator=VERILATOR --clock-period=5 --device-name=5SGXEA7N2F45C1 /home/dews/Scrivania/bambu-hls/cc4cs_bambu/benchmarkBasic/astar/thrd.c 
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
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module BRAM_MEMORY_NN_SV_CORE(clock, bram_write, memory_addr_a, din_value_aggregated_swapped, be_swapped, dout_a);
  parameter BITSIZE_bram_write=1, PORTSIZE_bram_write=2, BITSIZE_dout_a=1, PORTSIZE_dout_a=2, BITSIZE_memory_addr_a=1, PORTSIZE_memory_addr_a=2, BITSIZE_din_value_aggregated_swapped=1, PORTSIZE_din_value_aggregated_swapped=2, BITSIZE_be_swapped=1, PORTSIZE_be_swapped=2, MEMORY_INIT_file="array.mem", BRAM_BITSIZE=32, nbit_read_addr=32, n_byte_on_databus=4, n_mem_elements=4, max_n_reads=2, max_n_writes=2, memory_offset=16, n_byte_on_databus_offset=2, HIGH_LATENCY=0;
  // IN
  input clock;
  input [PORTSIZE_bram_write-1:0] bram_write;
  input [(PORTSIZE_memory_addr_a*BITSIZE_memory_addr_a)+(-1):0] memory_addr_a;
  input [(PORTSIZE_din_value_aggregated_swapped*BITSIZE_din_value_aggregated_swapped)+(-1):0] din_value_aggregated_swapped;
  input [(PORTSIZE_be_swapped*BITSIZE_be_swapped)+(-1):0] be_swapped;
  // OUT
  output [(PORTSIZE_dout_a*BITSIZE_dout_a)+(-1):0] dout_a;
  
  wire [(n_byte_on_databus/2)*max_n_writes-1:0] we_a;
  reg [PORTSIZE_dout_a*BITSIZE_dout_a-1:0] dout_a =0;
  reg [PORTSIZE_dout_a*BITSIZE_dout_a-1:0] dout_a_registered =0;
  reg [(PORTSIZE_memory_addr_a*BITSIZE_memory_addr_a)+(-1):0] memory_addr_a1 =0;
  reg [(PORTSIZE_din_value_aggregated_swapped*BITSIZE_din_value_aggregated_swapped)+(-1):0] din_value_aggregated_swapped1 =0;
  reg [(n_byte_on_databus/2)*max_n_writes-1:0] we_a1 =0;
  
  (* syn_ramstyle = "no_rw_check" *) reg [(BRAM_BITSIZE/8)-1:0][7:0] memory_a [0:n_mem_elements-1];
  initial
  begin
    $readmemb(MEMORY_INIT_file, memory_a, 0, n_mem_elements-1);
  end
  
  generate
    if(HIGH_LATENCY==2)
    begin
      always @ (posedge clock)
      begin
         memory_addr_a1 <= memory_addr_a;
         we_a1 <= we_a;
         din_value_aggregated_swapped1 <= din_value_aggregated_swapped;
      end
    end
  endgenerate
  
  generate
    if(n_byte_on_databus==2)
    begin
      always @(posedge clock)
      begin
        if(HIGH_LATENCY==0 || HIGH_LATENCY==1)
        begin
          if(we_a[0+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][0] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(0+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+0*8+memory_offset];
        end
        else
        begin
          if(we_a1[0+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][0] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(0+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+0*8+memory_offset];
        end
        if(HIGH_LATENCY==0)
          dout_a[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0] <= memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]];
        else if(HIGH_LATENCY==1)
        begin
          dout_a_registered[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0] <= memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]];
          dout_a[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0] <= dout_a_registered[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0];
        end
        else
        begin
          dout_a_registered[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0] <= memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]];
          dout_a[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0] <= dout_a_registered[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0];
        end
      end
    end
    else if(n_byte_on_databus==4)
    begin
      always @(posedge clock)
      begin
        if(HIGH_LATENCY==0 || HIGH_LATENCY==1)
        begin
          if(we_a[0+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][0] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(0+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+0*8+memory_offset];
          if(we_a[1+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][1] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(1+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+1*8+memory_offset];
        end
        else
        begin
          if(we_a1[0+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][0] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(0+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+0*8+memory_offset];
          if(we_a1[1+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][1] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(1+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+1*8+memory_offset];
        end
        if(HIGH_LATENCY==0)
          dout_a[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0] <= memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]];
        else if(HIGH_LATENCY==1)
        begin
          dout_a_registered[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0] <= memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]];
          dout_a[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0] <= dout_a_registered[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0];
        end
        else
        begin
          dout_a_registered[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0] <= memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]];
          dout_a[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0] <= dout_a_registered[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0];
        end
      end
    end
    else if(n_byte_on_databus==8)
    begin
      always @(posedge clock)
      begin
        if(HIGH_LATENCY==0 || HIGH_LATENCY==1)
        begin
          if(we_a[0+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][0] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(0+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+0*8+memory_offset];
          if(we_a[1+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][1] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(1+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+1*8+memory_offset];
          if(we_a[2+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][2] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(2+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+2*8+memory_offset];
          if(we_a[3+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][3] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(3+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+3*8+memory_offset];
        end
        else
        begin
          if(we_a1[0+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][0] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(0+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+0*8+memory_offset];
          if(we_a1[1+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][1] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(1+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+1*8+memory_offset];
          if(we_a1[2+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][2] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(2+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+2*8+memory_offset];
          if(we_a1[3+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][3] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(3+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+3*8+memory_offset];
        end
        if(HIGH_LATENCY==0)
          dout_a[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0] <= memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]];
        else if(HIGH_LATENCY==1)
        begin
          dout_a_registered[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0] <= memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]];
          dout_a[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0] <= dout_a_registered[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0];
        end
        else
        begin
          dout_a_registered[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0] <= memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]];
          dout_a[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0] <= dout_a_registered[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0];
        end
      end
    end
    else if(n_byte_on_databus==16)
    begin
      always @(posedge clock)
      begin
        if(HIGH_LATENCY==0 || HIGH_LATENCY==1)
        begin
          if(we_a[0+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][0] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(0+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+0*8+memory_offset];
          if(we_a[1+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][1] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(1+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+1*8+memory_offset];
          if(we_a[2+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][2] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(2+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+2*8+memory_offset];
          if(we_a[3+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][3] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(3+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+3*8+memory_offset];
          if(we_a[4+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][4] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(4+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+4*8+memory_offset];
          if(we_a[5+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][5] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(5+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+5*8+memory_offset];
          if(we_a[6+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][6] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(6+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+6*8+memory_offset];
          if(we_a[7+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][7] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(7+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+7*8+memory_offset];
        end
        else
        begin
          if(we_a1[0+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][0] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(0+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+0*8+memory_offset];
          if(we_a1[1+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][1] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(1+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+1*8+memory_offset];
          if(we_a1[2+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][2] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(2+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+2*8+memory_offset];
          if(we_a1[3+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][3] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(3+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+3*8+memory_offset];
          if(we_a1[4+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][4] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(4+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+4*8+memory_offset];
          if(we_a1[5+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][5] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(5+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+5*8+memory_offset];
          if(we_a1[6+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][6] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(6+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+6*8+memory_offset];
          if(we_a1[7+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][7] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(7+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+7*8+memory_offset];
        end
        if(HIGH_LATENCY==0)
          dout_a[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0] <= memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]];
        else if(HIGH_LATENCY==1)
        begin
          dout_a_registered[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0] <= memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]];
          dout_a[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0] <= dout_a_registered[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0];
        end
        else
        begin
          dout_a_registered[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0] <= memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]];
          dout_a[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0] <= dout_a_registered[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0];
        end
      end
    end
    else if(n_byte_on_databus==32)
    begin
      always @(posedge clock)
      begin
        if(HIGH_LATENCY==0 || HIGH_LATENCY==1)
        begin
          if(we_a[0+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][0] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(0+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+0*8+memory_offset];
          if(we_a[1+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][1] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(1+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+1*8+memory_offset];
          if(we_a[2+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][2] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(2+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+2*8+memory_offset];
          if(we_a[3+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][3] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(3+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+3*8+memory_offset];
          if(we_a[4+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][4] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(4+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+4*8+memory_offset];
          if(we_a[5+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][5] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(5+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+5*8+memory_offset];
          if(we_a[6+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][6] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(6+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+6*8+memory_offset];
          if(we_a[7+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][7] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(7+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+7*8+memory_offset];
          if(we_a[8+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][8] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(8+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+8*8+memory_offset];
          if(we_a[9+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][9] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(9+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+9*8+memory_offset];
          if(we_a[10+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][10] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(10+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+10*8+memory_offset];
          if(we_a[11+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][11] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(11+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+11*8+memory_offset];
          if(we_a[12+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][12] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(12+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+12*8+memory_offset];
          if(we_a[13+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][13] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(13+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+13*8+memory_offset];
          if(we_a[14+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][14] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(14+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+14*8+memory_offset];
          if(we_a[15+n_byte_on_databus/2*0])
            memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][15] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*0+(15+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+15*8+memory_offset];
        end
        else
        begin
          if(we_a1[0+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][0] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(0+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+0*8+memory_offset];
          if(we_a1[1+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][1] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(1+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+1*8+memory_offset];
          if(we_a1[2+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][2] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(2+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+2*8+memory_offset];
          if(we_a1[3+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][3] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(3+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+3*8+memory_offset];
          if(we_a1[4+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][4] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(4+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+4*8+memory_offset];
          if(we_a1[5+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][5] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(5+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+5*8+memory_offset];
          if(we_a1[6+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][6] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(6+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+6*8+memory_offset];
          if(we_a1[7+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][7] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(7+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+7*8+memory_offset];
          if(we_a1[8+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][8] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(8+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+8*8+memory_offset];
          if(we_a1[9+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][9] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(9+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+9*8+memory_offset];
          if(we_a1[10+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][10] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(10+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+10*8+memory_offset];
          if(we_a1[11+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][11] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(11+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+11*8+memory_offset];
          if(we_a1[12+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][12] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(12+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+12*8+memory_offset];
          if(we_a1[13+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][13] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(13+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+13*8+memory_offset];
          if(we_a1[14+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][14] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(14+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+14*8+memory_offset];
          if(we_a1[15+n_byte_on_databus/2*0])
            memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]][15] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*0+(15+1)*8+memory_offset-1:2*BRAM_BITSIZE*0+15*8+memory_offset];
        end
        if(HIGH_LATENCY==0)
          dout_a[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0] <= memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]];
        else if(HIGH_LATENCY==1)
        begin
          dout_a_registered[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0] <= memory_a[memory_addr_a[nbit_read_addr*(0+1)-1:nbit_read_addr*0]];
          dout_a[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0] <= dout_a_registered[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0];
        end
        else
        begin
          dout_a_registered[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0] <= memory_a[memory_addr_a1[nbit_read_addr*(0+1)-1:nbit_read_addr*0]];
          dout_a[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0] <= dout_a_registered[BRAM_BITSIZE*(0+1)-1:BRAM_BITSIZE*0];
        end
      end
    end
  endgenerate
  
  generate
    if(n_byte_on_databus==2)
    begin
      always @(posedge clock)
      begin
        if(HIGH_LATENCY==0 || HIGH_LATENCY==1)
        begin
          if(we_a[0+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][0] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(0+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+0*8+memory_offset];
        end
        else
        begin
          if(we_a1[0+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][0] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(0+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+0*8+memory_offset];
        end
        if(HIGH_LATENCY==0)
          dout_a[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1] <= memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]];
        else if(HIGH_LATENCY==1)
        begin
          dout_a_registered[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1] <= memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]];
          dout_a[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1] <= dout_a_registered[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1];
        end
        else
        begin
          dout_a_registered[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1] <= memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]];
          dout_a[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1] <= dout_a_registered[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1];
        end
      end
    end
    else if(n_byte_on_databus==4)
    begin
      always @(posedge clock)
      begin
        if(HIGH_LATENCY==0 || HIGH_LATENCY==1)
        begin
          if(we_a[0+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][0] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(0+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+0*8+memory_offset];
          if(we_a[1+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][1] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(1+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+1*8+memory_offset];
        end
        else
        begin
          if(we_a1[0+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][0] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(0+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+0*8+memory_offset];
          if(we_a1[1+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][1] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(1+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+1*8+memory_offset];
        end
        if(HIGH_LATENCY==0)
          dout_a[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1] <= memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]];
        else if(HIGH_LATENCY==1)
        begin
          dout_a_registered[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1] <= memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]];
          dout_a[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1] <= dout_a_registered[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1];
        end
        else
        begin
          dout_a_registered[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1] <= memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]];
          dout_a[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1] <= dout_a_registered[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1];
        end
      end
    end
    else if(n_byte_on_databus==8)
    begin
      always @(posedge clock)
      begin
        if(HIGH_LATENCY==0 || HIGH_LATENCY==1)
        begin
          if(we_a[0+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][0] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(0+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+0*8+memory_offset];
          if(we_a[1+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][1] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(1+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+1*8+memory_offset];
          if(we_a[2+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][2] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(2+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+2*8+memory_offset];
          if(we_a[3+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][3] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(3+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+3*8+memory_offset];
        end
        else
        begin
          if(we_a1[0+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][0] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(0+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+0*8+memory_offset];
          if(we_a1[1+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][1] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(1+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+1*8+memory_offset];
          if(we_a1[2+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][2] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(2+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+2*8+memory_offset];
          if(we_a1[3+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][3] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(3+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+3*8+memory_offset];
        end
        if(HIGH_LATENCY==0)
          dout_a[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1] <= memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]];
        else if(HIGH_LATENCY==1)
        begin
          dout_a_registered[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1] <= memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]];
          dout_a[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1] <= dout_a_registered[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1];
        end
        else
        begin
          dout_a_registered[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1] <= memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]];
          dout_a[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1] <= dout_a_registered[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1];
        end
      end
    end
    else if(n_byte_on_databus==16)
    begin
      always @(posedge clock)
      begin
        if(HIGH_LATENCY==0 || HIGH_LATENCY==1)
        begin
          if(we_a[0+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][0] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(0+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+0*8+memory_offset];
          if(we_a[1+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][1] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(1+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+1*8+memory_offset];
          if(we_a[2+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][2] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(2+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+2*8+memory_offset];
          if(we_a[3+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][3] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(3+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+3*8+memory_offset];
          if(we_a[4+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][4] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(4+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+4*8+memory_offset];
          if(we_a[5+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][5] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(5+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+5*8+memory_offset];
          if(we_a[6+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][6] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(6+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+6*8+memory_offset];
          if(we_a[7+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][7] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(7+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+7*8+memory_offset];
        end
        else
        begin
          if(we_a1[0+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][0] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(0+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+0*8+memory_offset];
          if(we_a1[1+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][1] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(1+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+1*8+memory_offset];
          if(we_a1[2+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][2] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(2+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+2*8+memory_offset];
          if(we_a1[3+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][3] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(3+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+3*8+memory_offset];
          if(we_a1[4+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][4] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(4+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+4*8+memory_offset];
          if(we_a1[5+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][5] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(5+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+5*8+memory_offset];
          if(we_a1[6+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][6] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(6+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+6*8+memory_offset];
          if(we_a1[7+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][7] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(7+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+7*8+memory_offset];
        end
        if(HIGH_LATENCY==0)
          dout_a[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1] <= memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]];
        else if(HIGH_LATENCY==1)
        begin
          dout_a_registered[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1] <= memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]];
          dout_a[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1] <= dout_a_registered[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1];
        end
        else
        begin
          dout_a_registered[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1] <= memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]];
          dout_a[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1] <= dout_a_registered[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1];
        end
      end
    end
    else if(n_byte_on_databus==32)
    begin
      always @(posedge clock)
      begin
        if(HIGH_LATENCY==0 || HIGH_LATENCY==1)
        begin
          if(we_a[0+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][0] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(0+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+0*8+memory_offset];
          if(we_a[1+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][1] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(1+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+1*8+memory_offset];
          if(we_a[2+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][2] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(2+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+2*8+memory_offset];
          if(we_a[3+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][3] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(3+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+3*8+memory_offset];
          if(we_a[4+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][4] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(4+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+4*8+memory_offset];
          if(we_a[5+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][5] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(5+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+5*8+memory_offset];
          if(we_a[6+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][6] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(6+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+6*8+memory_offset];
          if(we_a[7+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][7] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(7+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+7*8+memory_offset];
          if(we_a[8+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][8] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(8+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+8*8+memory_offset];
          if(we_a[9+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][9] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(9+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+9*8+memory_offset];
          if(we_a[10+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][10] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(10+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+10*8+memory_offset];
          if(we_a[11+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][11] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(11+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+11*8+memory_offset];
          if(we_a[12+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][12] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(12+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+12*8+memory_offset];
          if(we_a[13+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][13] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(13+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+13*8+memory_offset];
          if(we_a[14+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][14] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(14+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+14*8+memory_offset];
          if(we_a[15+n_byte_on_databus/2*1])
            memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][15] <= din_value_aggregated_swapped[2*BRAM_BITSIZE*1+(15+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+15*8+memory_offset];
        end
        else
        begin
          if(we_a1[0+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][0] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(0+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+0*8+memory_offset];
          if(we_a1[1+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][1] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(1+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+1*8+memory_offset];
          if(we_a1[2+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][2] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(2+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+2*8+memory_offset];
          if(we_a1[3+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][3] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(3+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+3*8+memory_offset];
          if(we_a1[4+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][4] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(4+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+4*8+memory_offset];
          if(we_a1[5+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][5] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(5+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+5*8+memory_offset];
          if(we_a1[6+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][6] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(6+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+6*8+memory_offset];
          if(we_a1[7+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][7] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(7+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+7*8+memory_offset];
          if(we_a1[8+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][8] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(8+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+8*8+memory_offset];
          if(we_a1[9+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][9] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(9+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+9*8+memory_offset];
          if(we_a1[10+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][10] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(10+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+10*8+memory_offset];
          if(we_a1[11+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][11] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(11+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+11*8+memory_offset];
          if(we_a1[12+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][12] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(12+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+12*8+memory_offset];
          if(we_a1[13+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][13] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(13+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+13*8+memory_offset];
          if(we_a1[14+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][14] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(14+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+14*8+memory_offset];
          if(we_a1[15+n_byte_on_databus/2*1])
            memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]][15] <= din_value_aggregated_swapped1[2*BRAM_BITSIZE*1+(15+1)*8+memory_offset-1:2*BRAM_BITSIZE*1+15*8+memory_offset];
        end
        if(HIGH_LATENCY==0)
          dout_a[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1] <= memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]];
        else if(HIGH_LATENCY==1)
        begin
          dout_a_registered[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1] <= memory_a[memory_addr_a[nbit_read_addr*(1+1)-1:nbit_read_addr*1]];
          dout_a[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1] <= dout_a_registered[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1];
        end
        else
        begin
          dout_a_registered[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1] <= memory_a[memory_addr_a1[nbit_read_addr*(1+1)-1:nbit_read_addr*1]];
          dout_a[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1] <= dout_a_registered[BRAM_BITSIZE*(1+1)-1:BRAM_BITSIZE*1];
        end
      end
    end
  endgenerate
    
  generate
  genvar i11, i12;
    for (i12=0; i12<max_n_writes; i12=i12+1)
    begin : L12
      for (i11=0; i11<n_byte_on_databus/2; i11=i11+1)
      begin  : write_enable_a
        assign we_a[i11+(n_byte_on_databus/2)*i12] = bram_write[i12] && be_swapped[i11+n_byte_on_databus*i12+n_byte_on_databus_offset];
      end
    end
  endgenerate
endmodule


