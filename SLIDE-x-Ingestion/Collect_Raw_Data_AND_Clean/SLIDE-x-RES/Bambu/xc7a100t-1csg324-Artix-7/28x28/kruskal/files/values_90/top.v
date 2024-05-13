// 
// Politecnico di Milano
// Code created using PandA - Version: PandA 0.9.6 - Revision 891ec3caed502474cab0813cc4a9fc678deabaa5 - Date 2022-05-27T22:51:47
// bambu executed with: bambu -I/home/dews/Scrivania/bambu-hls/RESULTS/BAMBU/28x28/kruskal/includes/values_90 --simulate --simulator=VERILATOR --clock-period=5 --device-name=xc7a100t-1csg324-VVD /home/dews/Scrivania/bambu-hls/cc4cs_bambu/benchmarkBasic/kruskal/thrd.c 
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
module datapath_is_connected(clock, reset, return_port, proxy_out1_28867, proxy_in1_28867, proxy_in2_28867, proxy_in3_28867, proxy_sel_LOAD_28867, proxy_sel_STORE_28867, proxy_out1_28868, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, proxy_out1_28870, proxy_in1_28870, proxy_in2_28870, proxy_in3_28870, proxy_sel_LOAD_28870, proxy_sel_STORE_28870, selector_MUX_18_gimple_return_FU_17_i0_0_0_0, selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0, selector_MUX_32_reg_14_0_0_0, selector_MUX_34_reg_3_0_0_0, selector_MUX_35_reg_4_0_0_0, selector_MUX_35_reg_4_0_0_1, selector_MUX_39_reg_8_0_0_0, selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0, selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1, selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0, fuselector_PROXY_CTRLN_0_i0_LOAD, fuselector_PROXY_CTRLN_0_i0_STORE, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_MULTIIF_is_connected_28872_30918, OUT_MULTIIF_is_connected_28872_30932);
  parameter MEM_var_28867_28882=512, MEM_var_28868_28882=1024, MEM_var_28870_28882=2048;
  // IN
  input clock;
  input reset;
  input [15:0] proxy_out1_28867;
  input [15:0] proxy_out1_28868;
  input [15:0] proxy_out1_28870;
  input selector_MUX_18_gimple_return_FU_17_i0_0_0_0;
  input selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0;
  input selector_MUX_32_reg_14_0_0_0;
  input selector_MUX_34_reg_3_0_0_0;
  input selector_MUX_35_reg_4_0_0_0;
  input selector_MUX_35_reg_4_0_0_1;
  input selector_MUX_39_reg_8_0_0_0;
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
  input wrenable_reg_14;
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
  output [25:0] proxy_in2_28867;
  output [7:0] proxy_in3_28867;
  output [1:0] proxy_sel_LOAD_28867;
  output [1:0] proxy_sel_STORE_28867;
  output [15:0] proxy_in1_28868;
  output [25:0] proxy_in2_28868;
  output [7:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [15:0] proxy_in1_28870;
  output [25:0] proxy_in2_28870;
  output [7:0] proxy_in3_28870;
  output [1:0] proxy_sel_LOAD_28870;
  output [1:0] proxy_sel_STORE_28870;
  output [1:0] OUT_MULTIIF_is_connected_28872_30918;
  output [2:0] OUT_MULTIIF_is_connected_28872_30932;
  // Component and signal declarations
  wire [7:0] null_out_signal_PROXY_CTRLN_0_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_0_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_2_i0_out1_1;
  wire [7:0] out_MUX_18_gimple_return_FU_17_i0_0_0_0;
  wire [7:0] out_MUX_2_PROXY_CTRLN_0_i0_0_0_0;
  wire [7:0] out_MUX_32_reg_14_0_0_0;
  wire [31:0] out_MUX_34_reg_3_0_0_0;
  wire [7:0] out_MUX_35_reg_4_0_0_0;
  wire [7:0] out_MUX_35_reg_4_0_0_1;
  wire [31:0] out_MUX_39_reg_8_0_0_0;
  wire [7:0] out_MUX_6_PROXY_CTRLN_1_i0_0_0_0;
  wire [7:0] out_MUX_6_PROXY_CTRLN_1_i0_0_0_1;
  wire [12:0] out_MUX_7_PROXY_CTRLN_1_i0_1_0_0;
  wire [7:0] out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0;
  wire [11:0] out_UUdata_converter_FU_13_i0_fu_is_connected_28872_29224;
  wire [12:0] out_UUdata_converter_FU_7_i0_fu_is_connected_28872_29171;
  wire [10:0] out_addr_expr_FU_5_i0_fu_is_connected_28872_30159;
  wire [12:0] out_addr_expr_FU_6_i0_fu_is_connected_28872_30163;
  wire [9:0] out_addr_expr_FU_8_i0_fu_is_connected_28872_30182;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [9:0] out_const_10;
  wire [7:0] out_const_2;
  wire [1:0] out_const_3;
  wire [4:0] out_const_4;
  wire out_const_5;
  wire [4:0] out_const_6;
  wire [10:0] out_const_7;
  wire [1:0] out_const_8;
  wire [12:0] out_const_9;
  wire [12:0] out_conv_out_addr_expr_FU_5_i0_fu_is_connected_28872_30159_11_13;
  wire signed [7:0] out_conv_out_const_0_I_1_I_8;
  wire [31:0] out_conv_out_const_10_10_32;
  wire signed [7:0] out_conv_out_const_3_I_2_I_8;
  wire [3:0] out_conv_out_const_4_5_4;
  wire [31:0] out_conv_out_const_7_11_32;
  wire [31:0] out_conv_out_const_9_13_32;
  wire [12:0] out_conv_out_reg_0_reg_0_11_13;
  wire [12:0] out_conv_out_reg_1_reg_1_10_13;
  wire [12:0] out_conv_out_reg_9_reg_9_12_13;
  wire [7:0] out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_0_1_8;
  wire [31:0] out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_1_13_32;
  wire [7:0] out_conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_2_1_8;
  wire [1:0] out_multi_read_cond_FU_14_i0_fu_is_connected_28872_30918;
  wire [2:0] out_multi_read_cond_FU_16_i0_fu_is_connected_28872_30932;
  wire out_ne_expr_FU_8_0_8_18_i0_fu_is_connected_28872_30673;
  wire [10:0] out_reg_0_reg_0;
  wire out_reg_10_reg_10;
  wire out_reg_11_reg_11;
  wire out_reg_12_reg_12;
  wire out_reg_13_reg_13;
  wire [7:0] out_reg_14_reg_14;
  wire [9:0] out_reg_1_reg_1;
  wire [7:0] out_reg_2_reg_2;
  wire [31:0] out_reg_3_reg_3;
  wire [7:0] out_reg_4_reg_4;
  wire out_reg_5_reg_5;
  wire out_reg_6_reg_6;
  wire [7:0] out_reg_7_reg_7;
  wire [31:0] out_reg_8_reg_8;
  wire [11:0] out_reg_9_reg_9;
  wire out_truth_and_expr_FU_1_1_1_19_i0_fu_is_connected_28872_30924;
  wire out_truth_and_expr_FU_1_1_1_19_i1_fu_is_connected_28872_30931;
  wire out_truth_and_expr_FU_1_1_1_19_i2_fu_is_connected_28872_30935;
  wire out_truth_and_expr_FU_1_1_1_19_i3_fu_is_connected_28872_30941;
  wire out_truth_not_expr_FU_1_1_20_i0_fu_is_connected_28872_30921;
  wire out_truth_not_expr_FU_1_1_20_i1_fu_is_connected_28872_30928;
  wire out_truth_not_expr_FU_1_1_20_i2_fu_is_connected_28872_30938;
  wire [0:0] out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_0;
  wire [12:0] out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_1;
  wire [0:0] out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_2;
  wire out_ui_ne_expr_FU_8_0_8_21_i0_fu_is_connected_28872_30675;
  wire out_ui_ne_expr_FU_8_0_8_21_i1_fu_is_connected_28872_30679;
  wire out_ui_ne_expr_FU_8_8_8_22_i0_fu_is_connected_28872_30671;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_23_i0_fu_is_connected_28872_29195;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_24_i0_fu_is_connected_28872_29219;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_25_i0_fu_is_connected_28872_29190;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_25_i1_fu_is_connected_28872_29207;
  wire [7:0] out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_3;
  wire [7:0] out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_4;
  wire [7:0] out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5;
  wire [7:0] out_vb_assign_conn_obj_6_ASSIGN_VECTOR_BOOL_FU_vb_assign_6;
  wire [15:0] sig_in_bus_mergerproxy_in1_288670_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288681_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288702_0;
  wire [25:0] sig_in_bus_mergerproxy_in2_288673_0;
  wire [25:0] sig_in_bus_mergerproxy_in2_288684_0;
  wire [25:0] sig_in_bus_mergerproxy_in2_288705_0;
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
  wire [25:0] sig_in_vector_bus_mergerproxy_in2_288673_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in2_288684_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in2_288705_0;
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
  wire [25:0] sig_out_bus_mergerproxy_in2_288673_;
  wire [25:0] sig_out_bus_mergerproxy_in2_288684_;
  wire [25:0] sig_out_bus_mergerproxy_in2_288705_;
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
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(13), .BITSIZE_out1(13)) ASSIGN_UNSIGNED_FU_u_assign_1 (.out1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_1), .in1(out_UUdata_converter_FU_7_i0_fu_is_connected_28872_29171));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_2 (.out1(out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_2), .in1(out_const_0));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_3 (.out1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_3), .in1(out_const_1));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_4 (.out1(out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_4), .in1(out_reg_4_reg_4));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_5 (.out1(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5), .in1(out_const_2));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_6 (.out1(out_vb_assign_conn_obj_6_ASSIGN_VECTOR_BOOL_FU_vb_assign_6), .in1(out_reg_14_reg_14));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_18_gimple_return_FU_17_i0_0_0_0 (.out1(out_MUX_18_gimple_return_FU_17_i0_0_0_0), .sel(selector_MUX_18_gimple_return_FU_17_i0_0_0_0), .in1(out_conv_out_const_0_I_1_I_8), .in2(out_conv_out_const_3_I_2_I_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_2_PROXY_CTRLN_0_i0_0_0_0 (.out1(out_MUX_2_PROXY_CTRLN_0_i0_0_0_0), .sel(selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0), .in1(out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_4), .in2(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_32_reg_14_0_0_0 (.out1(out_MUX_32_reg_14_0_0_0), .sel(selector_MUX_32_reg_14_0_0_0), .in1(out_reg_2_reg_2), .in2(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_0_1_8));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_34_reg_3_0_0_0 (.out1(out_MUX_34_reg_3_0_0_0), .sel(selector_MUX_34_reg_3_0_0_0), .in1(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_1_13_32), .in2(out_ui_plus_expr_FU_32_0_32_23_i0_fu_is_connected_28872_29195));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_35_reg_4_0_0_0 (.out1(out_MUX_35_reg_4_0_0_0), .sel(selector_MUX_35_reg_4_0_0_0), .in1(out_reg_7_reg_7), .in2(out_conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_2_1_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_35_reg_4_0_0_1 (.out1(out_MUX_35_reg_4_0_0_1), .sel(selector_MUX_35_reg_4_0_0_1), .in1(out_ui_plus_expr_FU_8_0_8_25_i1_fu_is_connected_28872_29207), .in2(out_MUX_35_reg_4_0_0_0));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_39_reg_8_0_0_0 (.out1(out_MUX_39_reg_8_0_0_0), .sel(selector_MUX_39_reg_8_0_0_0), .in1(out_reg_3_reg_3), .in2(out_ui_plus_expr_FU_32_0_32_24_i0_fu_is_connected_28872_29219));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_6_PROXY_CTRLN_1_i0_0_0_0 (.out1(out_MUX_6_PROXY_CTRLN_1_i0_0_0_0), .sel(selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0), .in1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_3), .in2(out_vb_assign_conn_obj_5_ASSIGN_VECTOR_BOOL_FU_vb_assign_5));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_6_PROXY_CTRLN_1_i0_0_0_1 (.out1(out_MUX_6_PROXY_CTRLN_1_i0_0_0_1), .sel(selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1), .in1(out_vb_assign_conn_obj_6_ASSIGN_VECTOR_BOOL_FU_vb_assign_6), .in2(out_MUX_6_PROXY_CTRLN_1_i0_0_0_0));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_7_PROXY_CTRLN_1_i0_1_0_0 (.out1(out_MUX_7_PROXY_CTRLN_1_i0_1_0_0), .sel(selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0), .in1(out_conv_out_reg_0_reg_0_11_13), .in2(out_conv_out_addr_expr_FU_5_i0_fu_is_connected_28872_30159_11_13));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_0_i0 (.out1({null_out_signal_PROXY_CTRLN_0_i0_out1_1, null_out_signal_PROXY_CTRLN_0_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288670_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288673_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288676_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_288679_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886712_0), .in1({8'b00000000, out_MUX_2_PROXY_CTRLN_0_i0_0_0_0}), .in2({13'b0000000000000, out_conv_out_reg_1_reg_1_10_13}), .in3({4'b0000, out_conv_out_const_4_5_4}), .in4({1'b0, out_const_5}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_0_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_0_i0_STORE}), .proxy_out1(proxy_out1_28867));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_1_i0 (.out1({null_out_signal_PROXY_CTRLN_1_i0_out1_1, null_out_signal_PROXY_CTRLN_1_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288681_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288684_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288687_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886810_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886813_0), .in1({8'b00000000, out_MUX_6_PROXY_CTRLN_1_i0_0_0_1}), .in2({13'b0000000000000, out_MUX_7_PROXY_CTRLN_1_i0_1_0_0}), .in3({4'b0000, out_conv_out_const_4_5_4}), .in4({1'b0, out_const_5}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_1_i0_STORE}), .proxy_out1(proxy_out1_28868));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_2_i0 (.out1({null_out_signal_PROXY_CTRLN_2_i0_out1_1, out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288702_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288705_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288708_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2887011_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2887014_0), .in1({8'b00000000, 8'b00000000}), .in2({13'b0000000000000, out_conv_out_reg_9_reg_9_12_13}), .in3({4'b0000, out_conv_out_const_4_5_4}), .in4({1'b0, out_const_5}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_2_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_2_i0_STORE}), .proxy_out1(proxy_out1_28870));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288670_ (.out1(sig_out_bus_mergerproxy_in1_288670_), .in1({sig_in_bus_mergerproxy_in1_288670_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288681_ (.out1(sig_out_bus_mergerproxy_in1_288681_), .in1({sig_in_bus_mergerproxy_in1_288681_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288702_ (.out1(sig_out_bus_mergerproxy_in1_288702_), .in1({sig_in_bus_mergerproxy_in1_288702_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in2_288673_ (.out1(sig_out_bus_mergerproxy_in2_288673_), .in1({sig_in_bus_mergerproxy_in2_288673_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in2_288684_ (.out1(sig_out_bus_mergerproxy_in2_288684_), .in1({sig_in_bus_mergerproxy_in2_288684_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in2_288705_ (.out1(sig_out_bus_mergerproxy_in2_288705_), .in1({sig_in_bus_mergerproxy_in2_288705_0}));
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
  constant_value #(.BITSIZE_out1(10), .value(MEM_var_28867_28882)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(8), .value(8'b00010101)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(2), .value(2'b01)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(5), .value(5'b10101)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(11), .value(MEM_var_28868_28882)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(13), .value(MEM_var_28870_28882)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(13)) conv_out_addr_expr_FU_5_i0_fu_is_connected_28872_30159_11_13 (.out1(out_conv_out_addr_expr_FU_5_i0_fu_is_connected_28872_30159_11_13), .in1(out_addr_expr_FU_5_i0_fu_is_connected_28872_30159));
  IIdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_const_0_I_1_I_8 (.out1(out_conv_out_const_0_I_1_I_8), .in1(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(32)) conv_out_const_10_10_32 (.out1(out_conv_out_const_10_10_32), .in1(out_const_10));
  IIdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(8)) conv_out_const_3_I_2_I_8 (.out1(out_conv_out_const_3_I_2_I_8), .in1(out_const_3));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_4_5_4 (.out1(out_conv_out_const_4_5_4), .in1(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(32)) conv_out_const_7_11_32 (.out1(out_conv_out_const_7_11_32), .in1(out_const_7));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_const_9_13_32 (.out1(out_conv_out_const_9_13_32), .in1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(13)) conv_out_reg_0_reg_0_11_13 (.out1(out_conv_out_reg_0_reg_0_11_13), .in1(out_reg_0_reg_0));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(13)) conv_out_reg_1_reg_1_10_13 (.out1(out_conv_out_reg_1_reg_1_10_13), .in1(out_reg_1_reg_1));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(13)) conv_out_reg_9_reg_9_12_13 (.out1(out_conv_out_reg_9_reg_9_12_13), .in1(out_reg_9_reg_9));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_0_1_8 (.out1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_0_1_8), .in1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_0));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_1_13_32 (.out1(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_1_13_32), .in1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_1));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_2_1_8 (.out1(out_conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_2_1_8), .in1(out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_2));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(13)) fu_is_connected_28872_29171 (.out1(out_UUdata_converter_FU_7_i0_fu_is_connected_28872_29171), .in1(out_addr_expr_FU_6_i0_fu_is_connected_28872_30163));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_is_connected_28872_29190 (.out1(out_ui_plus_expr_FU_8_0_8_25_i0_fu_is_connected_28872_29190), .in1(out_reg_14_reg_14), .in2(out_const_5));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(32)) fu_is_connected_28872_29195 (.out1(out_ui_plus_expr_FU_32_0_32_23_i0_fu_is_connected_28872_29195), .in1(out_reg_3_reg_3), .in2(out_const_6));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_is_connected_28872_29207 (.out1(out_ui_plus_expr_FU_8_0_8_25_i1_fu_is_connected_28872_29207), .in1(out_reg_4_reg_4), .in2(out_const_5));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(32)) fu_is_connected_28872_29219 (.out1(out_ui_plus_expr_FU_32_0_32_24_i0_fu_is_connected_28872_29219), .in1(out_reg_8_reg_8), .in2(out_const_5));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(12)) fu_is_connected_28872_29224 (.out1(out_UUdata_converter_FU_13_i0_fu_is_connected_28872_29224), .in1(out_reg_8_reg_8));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) fu_is_connected_28872_30159 (.out1(out_addr_expr_FU_5_i0_fu_is_connected_28872_30159), .in1(out_conv_out_const_7_11_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) fu_is_connected_28872_30163 (.out1(out_addr_expr_FU_6_i0_fu_is_connected_28872_30163), .in1(out_conv_out_const_9_13_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(10)) fu_is_connected_28872_30182 (.out1(out_addr_expr_FU_8_i0_fu_is_connected_28872_30182), .in1(out_conv_out_const_10_10_32));
  ui_ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_is_connected_28872_30671 (.out1(out_ui_ne_expr_FU_8_8_8_22_i0_fu_is_connected_28872_30671), .in1(out_reg_14_reg_14), .in2(out_reg_4_reg_4));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_is_connected_28872_30673 (.out1(out_ne_expr_FU_8_0_8_18_i0_fu_is_connected_28872_30673), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0), .in2(out_const_8));
  ui_ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_is_connected_28872_30675 (.out1(out_ui_ne_expr_FU_8_0_8_21_i0_fu_is_connected_28872_30675), .in1(out_ui_plus_expr_FU_8_0_8_25_i0_fu_is_connected_28872_29190), .in2(out_const_6));
  ui_ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_is_connected_28872_30679 (.out1(out_ui_ne_expr_FU_8_0_8_21_i1_fu_is_connected_28872_30679), .in1(out_ui_plus_expr_FU_8_0_8_25_i1_fu_is_connected_28872_29207), .in2(out_const_6));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) fu_is_connected_28872_30918 (.out1(out_multi_read_cond_FU_14_i0_fu_is_connected_28872_30918), .in1({out_truth_and_expr_FU_1_1_1_19_i0_fu_is_connected_28872_30924, out_ui_ne_expr_FU_8_8_8_22_i0_fu_is_connected_28872_30671}));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_is_connected_28872_30921 (.out1(out_truth_not_expr_FU_1_1_20_i0_fu_is_connected_28872_30921), .in1(out_ui_ne_expr_FU_8_8_8_22_i0_fu_is_connected_28872_30671));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_is_connected_28872_30924 (.out1(out_truth_and_expr_FU_1_1_1_19_i0_fu_is_connected_28872_30924), .in1(out_ui_ne_expr_FU_8_0_8_21_i1_fu_is_connected_28872_30679), .in2(out_truth_not_expr_FU_1_1_20_i0_fu_is_connected_28872_30921));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_is_connected_28872_30928 (.out1(out_truth_not_expr_FU_1_1_20_i1_fu_is_connected_28872_30928), .in1(out_ne_expr_FU_8_0_8_18_i0_fu_is_connected_28872_30673));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_is_connected_28872_30931 (.out1(out_truth_and_expr_FU_1_1_1_19_i1_fu_is_connected_28872_30931), .in1(out_reg_10_reg_10), .in2(out_reg_11_reg_11));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(3), .BITSIZE_out1(3)) fu_is_connected_28872_30932 (.out1(out_multi_read_cond_FU_16_i0_fu_is_connected_28872_30932), .in1({out_truth_and_expr_FU_1_1_1_19_i1_fu_is_connected_28872_30931, out_reg_13_reg_13, out_reg_12_reg_12}));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_is_connected_28872_30935 (.out1(out_truth_and_expr_FU_1_1_1_19_i2_fu_is_connected_28872_30935), .in1(out_ne_expr_FU_8_0_8_18_i0_fu_is_connected_28872_30673), .in2(out_reg_5_reg_5));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_is_connected_28872_30938 (.out1(out_truth_not_expr_FU_1_1_20_i2_fu_is_connected_28872_30938), .in1(out_ui_ne_expr_FU_8_0_8_21_i0_fu_is_connected_28872_30675));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_is_connected_28872_30941 (.out1(out_truth_and_expr_FU_1_1_1_19_i3_fu_is_connected_28872_30941), .in1(out_ne_expr_FU_8_0_8_18_i0_fu_is_connected_28872_30673), .in2(out_reg_6_reg_6));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288670_0 (.out1(sig_in_bus_mergerproxy_in1_288670_0), .in1(sig_in_vector_bus_mergerproxy_in1_288670_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288681_0 (.out1(sig_in_bus_mergerproxy_in1_288681_0), .in1(sig_in_vector_bus_mergerproxy_in1_288681_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288702_0 (.out1(sig_in_bus_mergerproxy_in1_288702_0), .in1(sig_in_vector_bus_mergerproxy_in1_288702_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in2_288673_0 (.out1(sig_in_bus_mergerproxy_in2_288673_0), .in1(sig_in_vector_bus_mergerproxy_in2_288673_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in2_288684_0 (.out1(sig_in_bus_mergerproxy_in2_288684_0), .in1(sig_in_vector_bus_mergerproxy_in2_288684_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in2_288705_0 (.out1(sig_in_bus_mergerproxy_in2_288705_0), .in1(sig_in_vector_bus_mergerproxy_in2_288705_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_288676_0 (.out1(sig_in_bus_mergerproxy_in3_288676_0), .in1(sig_in_vector_bus_mergerproxy_in3_288676_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_288687_0 (.out1(sig_in_bus_mergerproxy_in3_288687_0), .in1(sig_in_vector_bus_mergerproxy_in3_288687_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_288708_0 (.out1(sig_in_bus_mergerproxy_in3_288708_0), .in1(sig_in_vector_bus_mergerproxy_in3_288708_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_288679_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_288679_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_288679_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886810_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886810_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886810_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2887011_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2887011_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2887011_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886712_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886712_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886712_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886813_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886813_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886813_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2887014_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2887014_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2887014_0));
  register_SE #(.BITSIZE_in1(11), .BITSIZE_out1(11)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_5_i0_fu_is_connected_28872_30159), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_8_i0_fu_is_connected_28872_30182), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_21_i1_fu_is_connected_28872_30679), .wenable(wrenable_reg_10));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_truth_not_expr_FU_1_1_20_i1_fu_is_connected_28872_30928), .wenable(wrenable_reg_11));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_truth_and_expr_FU_1_1_1_19_i2_fu_is_connected_28872_30935), .wenable(wrenable_reg_12));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_truth_and_expr_FU_1_1_1_19_i3_fu_is_connected_28872_30941), .wenable(wrenable_reg_13));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_MUX_32_reg_14_0_0_0), .wenable(wrenable_reg_14));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_25_i0_fu_is_connected_28872_29190), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_MUX_34_reg_3_0_0_0), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_MUX_35_reg_4_0_0_1), .wenable(wrenable_reg_4));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_21_i0_fu_is_connected_28872_30675), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_truth_not_expr_FU_1_1_20_i2_fu_is_connected_28872_30938), .wenable(wrenable_reg_6));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_25_i1_fu_is_connected_28872_29207), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_MUX_39_reg_8_0_0_0), .wenable(wrenable_reg_8));
  register_STD #(.BITSIZE_in1(12), .BITSIZE_out1(12)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_13_i0_fu_is_connected_28872_29224), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288670_ (.out1(proxy_in1_28867), .in1(sig_out_bus_mergerproxy_in1_288670_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288681_ (.out1(proxy_in1_28868), .in1(sig_out_bus_mergerproxy_in1_288681_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288702_ (.out1(proxy_in1_28870), .in1(sig_out_bus_mergerproxy_in1_288702_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288673_ (.out1(proxy_in2_28867), .in1(sig_out_bus_mergerproxy_in2_288673_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288684_ (.out1(proxy_in2_28868), .in1(sig_out_bus_mergerproxy_in2_288684_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288705_ (.out1(proxy_in2_28870), .in1(sig_out_bus_mergerproxy_in2_288705_));
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
  assign OUT_MULTIIF_is_connected_28872_30918 = out_multi_read_cond_FU_14_i0_fu_is_connected_28872_30918;
  assign OUT_MULTIIF_is_connected_28872_30932 = out_multi_read_cond_FU_16_i0_fu_is_connected_28872_30932;

endmodule

// FSM based controller description for is_connected
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_is_connected(done_port, selector_MUX_18_gimple_return_FU_17_i0_0_0_0, selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0, selector_MUX_32_reg_14_0_0_0, selector_MUX_34_reg_3_0_0_0, selector_MUX_35_reg_4_0_0_0, selector_MUX_35_reg_4_0_0_1, selector_MUX_39_reg_8_0_0_0, selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0, selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1, selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0, fuselector_PROXY_CTRLN_0_i0_LOAD, fuselector_PROXY_CTRLN_0_i0_STORE, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_MULTIIF_is_connected_28872_30918, OUT_MULTIIF_is_connected_28872_30932, clock, reset, start_port);
  // IN
  input [1:0] OUT_MULTIIF_is_connected_28872_30918;
  input [2:0] OUT_MULTIIF_is_connected_28872_30932;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_MUX_18_gimple_return_FU_17_i0_0_0_0;
  output selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0;
  output selector_MUX_32_reg_14_0_0_0;
  output selector_MUX_34_reg_3_0_0_0;
  output selector_MUX_35_reg_4_0_0_0;
  output selector_MUX_35_reg_4_0_0_1;
  output selector_MUX_39_reg_8_0_0_0;
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
  output wrenable_reg_14;
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
  reg selector_MUX_32_reg_14_0_0_0;
  reg selector_MUX_34_reg_3_0_0_0;
  reg selector_MUX_35_reg_4_0_0_0;
  reg selector_MUX_35_reg_4_0_0_1;
  reg selector_MUX_39_reg_8_0_0_0;
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
  reg wrenable_reg_14;
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
    selector_MUX_32_reg_14_0_0_0 = 1'b0;
    selector_MUX_34_reg_3_0_0_0 = 1'b0;
    selector_MUX_35_reg_4_0_0_0 = 1'b0;
    selector_MUX_35_reg_4_0_0_1 = 1'b0;
    selector_MUX_39_reg_8_0_0_0 = 1'b0;
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
    wrenable_reg_14 = 1'b0;
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
          selector_MUX_34_reg_3_0_0_0 = 1'b1;
          selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_1_i0_STORE = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_14 = 1'b1;
          wrenable_reg_3 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          selector_MUX_18_gimple_return_FU_17_i0_0_0_0 = 1'bX;
          selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0 = 1'bX;
          selector_MUX_32_reg_14_0_0_0 = 1'bX;
          selector_MUX_34_reg_3_0_0_0 = 1'bX;
          selector_MUX_35_reg_4_0_0_0 = 1'bX;
          selector_MUX_35_reg_4_0_0_1 = 1'bX;
          selector_MUX_39_reg_8_0_0_0 = 1'bX;
          selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0 = 1'bX;
          selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1 = 1'bX;
          selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_10 = 1'bX;
          wrenable_reg_11 = 1'bX;
          wrenable_reg_12 = 1'bX;
          wrenable_reg_13 = 1'bX;
          wrenable_reg_14 = 1'bX;
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
          selector_MUX_39_reg_8_0_0_0 = 1'b1;
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
          selector_MUX_35_reg_4_0_0_1 = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_7 = 1'b1;
          wrenable_reg_8 = 1'b1;
          wrenable_reg_9 = 1'b1;
          if (OUT_MULTIIF_is_connected_28872_30918[0] == 1'b1)
            begin
              _next_state = S_3;
              selector_MUX_35_reg_4_0_0_1 = 1'b0;
              wrenable_reg_4 = 1'b0;
            end
          else if (OUT_MULTIIF_is_connected_28872_30918[1] == 1'b1)
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
              selector_MUX_35_reg_4_0_0_1 = 1'b0;
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
          wrenable_reg_13 = 1'b1;
          _next_state = S_5;
        end
      S_5 :
        begin
          selector_MUX_32_reg_14_0_0_0 = 1'b1;
          selector_MUX_35_reg_4_0_0_0 = 1'b1;
          wrenable_reg_14 = 1'b1;
          wrenable_reg_4 = 1'b1;
          if (OUT_MULTIIF_is_connected_28872_30932[2] == 1'b1)
            begin
              _next_state = S_2;
              selector_MUX_32_reg_14_0_0_0 = 1'b0;
              wrenable_reg_14 = 1'b0;
            end
          else if (OUT_MULTIIF_is_connected_28872_30932[0] == 1'b1)
            begin
              _next_state = S_1;
              selector_MUX_35_reg_4_0_0_0 = 1'b0;
              wrenable_reg_4 = 1'b0;
            end
          else if (OUT_MULTIIF_is_connected_28872_30932[1] == 1'b1)
            begin
              _next_state = S_6;
              done_port = 1'b1;
              selector_MUX_32_reg_14_0_0_0 = 1'b0;
              selector_MUX_35_reg_4_0_0_0 = 1'b0;
              wrenable_reg_14 = 1'b0;
              wrenable_reg_4 = 1'b0;
            end
          else
            begin
              _next_state = S_7;
              done_port = 1'b1;
              selector_MUX_32_reg_14_0_0_0 = 1'b0;
              selector_MUX_35_reg_4_0_0_0 = 1'b0;
              wrenable_reg_14 = 1'b0;
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
          selector_MUX_32_reg_14_0_0_0 = 1'bX;
          selector_MUX_34_reg_3_0_0_0 = 1'bX;
          selector_MUX_35_reg_4_0_0_0 = 1'bX;
          selector_MUX_35_reg_4_0_0_1 = 1'bX;
          selector_MUX_39_reg_8_0_0_0 = 1'bX;
          selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0 = 1'bX;
          selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1 = 1'bX;
          selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_10 = 1'bX;
          wrenable_reg_11 = 1'bX;
          wrenable_reg_12 = 1'bX;
          wrenable_reg_13 = 1'bX;
          wrenable_reg_14 = 1'bX;
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
  parameter MEM_var_28867_28882=512, MEM_var_28868_28882=1024, MEM_var_28870_28882=2048;
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
  output [25:0] proxy_in2_28867;
  output [7:0] proxy_in3_28867;
  output [1:0] proxy_sel_LOAD_28867;
  output [1:0] proxy_sel_STORE_28867;
  output [15:0] proxy_in1_28868;
  output [25:0] proxy_in2_28868;
  output [7:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [15:0] proxy_in1_28870;
  output [25:0] proxy_in2_28870;
  output [7:0] proxy_in3_28870;
  output [1:0] proxy_sel_LOAD_28870;
  output [1:0] proxy_sel_STORE_28870;
  // Component and signal declarations
  wire [1:0] OUT_MULTIIF_is_connected_28872_30918;
  wire [2:0] OUT_MULTIIF_is_connected_28872_30932;
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
  wire selector_MUX_32_reg_14_0_0_0;
  wire selector_MUX_34_reg_3_0_0_0;
  wire selector_MUX_35_reg_4_0_0_0;
  wire selector_MUX_35_reg_4_0_0_1;
  wire selector_MUX_39_reg_8_0_0_0;
  wire selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0;
  wire selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1;
  wire selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0;
  wire wrenable_reg_0;
  wire wrenable_reg_1;
  wire wrenable_reg_10;
  wire wrenable_reg_11;
  wire wrenable_reg_12;
  wire wrenable_reg_13;
  wire wrenable_reg_14;
  wire wrenable_reg_2;
  wire wrenable_reg_3;
  wire wrenable_reg_4;
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  controller_is_connected Controller_i (.done_port(done_delayed_REG_signal_in), .selector_MUX_18_gimple_return_FU_17_i0_0_0_0(selector_MUX_18_gimple_return_FU_17_i0_0_0_0), .selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0(selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0), .selector_MUX_32_reg_14_0_0_0(selector_MUX_32_reg_14_0_0_0), .selector_MUX_34_reg_3_0_0_0(selector_MUX_34_reg_3_0_0_0), .selector_MUX_35_reg_4_0_0_0(selector_MUX_35_reg_4_0_0_0), .selector_MUX_35_reg_4_0_0_1(selector_MUX_35_reg_4_0_0_1), .selector_MUX_39_reg_8_0_0_0(selector_MUX_39_reg_8_0_0_0), .selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0(selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0), .selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1(selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1), .selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0(selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0), .fuselector_PROXY_CTRLN_0_i0_LOAD(fuselector_PROXY_CTRLN_0_i0_LOAD), .fuselector_PROXY_CTRLN_0_i0_STORE(fuselector_PROXY_CTRLN_0_i0_STORE), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_MULTIIF_is_connected_28872_30918(OUT_MULTIIF_is_connected_28872_30918), .OUT_MULTIIF_is_connected_28872_30932(OUT_MULTIIF_is_connected_28872_30932), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_is_connected #(.MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) Datapath_i (.return_port(return_port), .proxy_in1_28867(proxy_in1_28867), .proxy_in2_28867(proxy_in2_28867), .proxy_in3_28867(proxy_in3_28867), .proxy_sel_LOAD_28867(proxy_sel_LOAD_28867), .proxy_sel_STORE_28867(proxy_sel_STORE_28867), .proxy_in1_28868(proxy_in1_28868), .proxy_in2_28868(proxy_in2_28868), .proxy_in3_28868(proxy_in3_28868), .proxy_sel_LOAD_28868(proxy_sel_LOAD_28868), .proxy_sel_STORE_28868(proxy_sel_STORE_28868), .proxy_in1_28870(proxy_in1_28870), .proxy_in2_28870(proxy_in2_28870), .proxy_in3_28870(proxy_in3_28870), .proxy_sel_LOAD_28870(proxy_sel_LOAD_28870), .proxy_sel_STORE_28870(proxy_sel_STORE_28870), .OUT_MULTIIF_is_connected_28872_30918(OUT_MULTIIF_is_connected_28872_30918), .OUT_MULTIIF_is_connected_28872_30932(OUT_MULTIIF_is_connected_28872_30932), .clock(clock), .reset(reset), .proxy_out1_28867(proxy_out1_28867), .proxy_out1_28868(proxy_out1_28868), .proxy_out1_28870(proxy_out1_28870), .selector_MUX_18_gimple_return_FU_17_i0_0_0_0(selector_MUX_18_gimple_return_FU_17_i0_0_0_0), .selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0(selector_MUX_2_PROXY_CTRLN_0_i0_0_0_0), .selector_MUX_32_reg_14_0_0_0(selector_MUX_32_reg_14_0_0_0), .selector_MUX_34_reg_3_0_0_0(selector_MUX_34_reg_3_0_0_0), .selector_MUX_35_reg_4_0_0_0(selector_MUX_35_reg_4_0_0_0), .selector_MUX_35_reg_4_0_0_1(selector_MUX_35_reg_4_0_0_1), .selector_MUX_39_reg_8_0_0_0(selector_MUX_39_reg_8_0_0_0), .selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0(selector_MUX_6_PROXY_CTRLN_1_i0_0_0_0), .selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1(selector_MUX_6_PROXY_CTRLN_1_i0_0_0_1), .selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0(selector_MUX_7_PROXY_CTRLN_1_i0_1_0_0), .fuselector_PROXY_CTRLN_0_i0_LOAD(fuselector_PROXY_CTRLN_0_i0_LOAD), .fuselector_PROXY_CTRLN_0_i0_STORE(fuselector_PROXY_CTRLN_0_i0_STORE), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
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

// Datapath RTL description for kruskalF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_kruskalF(clock, reset, in_port_a, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, proxy_out1_28867, proxy_in1_28867, proxy_in2_28867, proxy_in3_28867, proxy_sel_LOAD_28867, proxy_sel_STORE_28867, proxy_out1_28868, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, proxy_out1_28869, proxy_in1_28869, proxy_in2_28869, proxy_in3_28869, proxy_sel_LOAD_28869, proxy_sel_STORE_28869, proxy_out1_28870, proxy_in1_28870, proxy_in2_28870, proxy_in3_28870, proxy_sel_LOAD_28870, proxy_sel_STORE_28870, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE, fuselector_BMEMORY_CTRLN_130_i0_LOAD, fuselector_BMEMORY_CTRLN_130_i0_STORE, selector_MUX_151_reg_13_0_0_0, selector_MUX_152_reg_14_0_0_0, selector_MUX_153_reg_15_0_0_0, selector_MUX_157_reg_19_0_0_0, selector_MUX_164_reg_25_0_0_0, selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0, selector_MUX_171_reg_31_0_0_0, selector_MUX_172_reg_32_0_0_0, selector_MUX_173_reg_33_0_0_0, selector_MUX_185_reg_44_0_0_0, selector_MUX_186_reg_45_0_0_0, selector_MUX_187_reg_46_0_0_0, selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0, selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0, selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1, selector_MUX_215_reg_71_0_0_0, selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0, selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0, selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0, selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1, selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0, selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1, selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0, selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0, selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1, fuselector_PROXY_CTRLN_6_i0_LOAD, fuselector_PROXY_CTRLN_6_i0_STORE, fuselector_PROXY_CTRLN_7_i0_LOAD, fuselector_PROXY_CTRLN_7_i0_STORE, fuselector_PROXY_CTRLN_8_i0_LOAD, fuselector_PROXY_CTRLN_8_i0_STORE, fuselector_PROXY_CTRLN_8_i1_LOAD, fuselector_PROXY_CTRLN_8_i1_STORE, fuselector_PROXY_CTRLN_9_i0_LOAD, fuselector_PROXY_CTRLN_9_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_29, wrenable_reg_3, wrenable_reg_30, wrenable_reg_31, wrenable_reg_32, wrenable_reg_33, wrenable_reg_34, wrenable_reg_35, wrenable_reg_36, wrenable_reg_37, wrenable_reg_38, wrenable_reg_39, wrenable_reg_4, wrenable_reg_40, wrenable_reg_41, wrenable_reg_42, wrenable_reg_43, wrenable_reg_44, wrenable_reg_45, wrenable_reg_46, wrenable_reg_47, wrenable_reg_48, wrenable_reg_49, wrenable_reg_5, wrenable_reg_50, wrenable_reg_51, wrenable_reg_52, wrenable_reg_53, wrenable_reg_54, wrenable_reg_55, wrenable_reg_56, wrenable_reg_57, wrenable_reg_58, wrenable_reg_59, wrenable_reg_6, wrenable_reg_60, wrenable_reg_61, wrenable_reg_62, wrenable_reg_63, wrenable_reg_64, wrenable_reg_65, wrenable_reg_66, wrenable_reg_67, wrenable_reg_68, wrenable_reg_69, wrenable_reg_7, wrenable_reg_70, wrenable_reg_71, wrenable_reg_72, wrenable_reg_73, wrenable_reg_74, wrenable_reg_75, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_kruskalF_28880_29821, OUT_CONDITION_kruskalF_28880_29835, OUT_CONDITION_kruskalF_28880_30048, OUT_CONDITION_kruskalF_28880_30063, OUT_CONDITION_kruskalF_28880_30069, OUT_CONDITION_kruskalF_28880_30074, OUT_MULTIIF_kruskalF_28880_30944, OUT_MULTIIF_kruskalF_28880_30951);
  parameter MEM_var_28859_28880=2560, MEM_var_28861_28880=3072, MEM_var_28862_28880=3584, MEM_var_28864_28880=4096, MEM_var_28865_28880=4608, MEM_var_28866_28880=5120, MEM_var_28867_28882=512, MEM_var_28868_28882=1024, MEM_var_28869_28882=1536, MEM_var_28870_28882=2048;
  // IN
  input clock;
  input reset;
  input [31:0] in_port_a;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [25:0] S_addr_ram;
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
  input [25:0] Min_addr_ram;
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
  input fuselector_BMEMORY_CTRLN_130_i0_LOAD;
  input fuselector_BMEMORY_CTRLN_130_i0_STORE;
  input selector_MUX_151_reg_13_0_0_0;
  input selector_MUX_152_reg_14_0_0_0;
  input selector_MUX_153_reg_15_0_0_0;
  input selector_MUX_157_reg_19_0_0_0;
  input selector_MUX_164_reg_25_0_0_0;
  input selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0;
  input selector_MUX_171_reg_31_0_0_0;
  input selector_MUX_172_reg_32_0_0_0;
  input selector_MUX_173_reg_33_0_0_0;
  input selector_MUX_185_reg_44_0_0_0;
  input selector_MUX_186_reg_45_0_0_0;
  input selector_MUX_187_reg_46_0_0_0;
  input selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0;
  input selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0;
  input selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1;
  input selector_MUX_215_reg_71_0_0_0;
  input selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0;
  input selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0;
  input selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0;
  input selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1;
  input selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0;
  input selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1;
  input selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0;
  input selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0;
  input selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1;
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
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [15:0] proxy_in1_28867;
  output [25:0] proxy_in2_28867;
  output [7:0] proxy_in3_28867;
  output [1:0] proxy_sel_LOAD_28867;
  output [1:0] proxy_sel_STORE_28867;
  output [15:0] proxy_in1_28868;
  output [25:0] proxy_in2_28868;
  output [7:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [15:0] proxy_in1_28869;
  output [25:0] proxy_in2_28869;
  output [7:0] proxy_in3_28869;
  output [1:0] proxy_sel_LOAD_28869;
  output [1:0] proxy_sel_STORE_28869;
  output [15:0] proxy_in1_28870;
  output [25:0] proxy_in2_28870;
  output [7:0] proxy_in3_28870;
  output [1:0] proxy_sel_LOAD_28870;
  output [1:0] proxy_sel_STORE_28870;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [25:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  output OUT_CONDITION_kruskalF_28880_29821;
  output OUT_CONDITION_kruskalF_28880_29835;
  output OUT_CONDITION_kruskalF_28880_30048;
  output OUT_CONDITION_kruskalF_28880_30063;
  output OUT_CONDITION_kruskalF_28880_30069;
  output OUT_CONDITION_kruskalF_28880_30074;
  output [1:0] OUT_MULTIIF_kruskalF_28880_30944;
  output [1:0] OUT_MULTIIF_kruskalF_28880_30951;
  // Component and signal declarations
  wire null_out_signal_BMEMORY_CTRLN_130_i0_out1_0;
  wire null_out_signal_BMEMORY_CTRLN_130_i0_out1_1;
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
  wire signed [7:0] out_IIdata_converter_FU_109_i0_fu_kruskalF_28880_30062;
  wire signed [7:0] out_IIdata_converter_FU_128_i0_fu_kruskalF_28880_30073;
  wire [7:0] out_IUdata_converter_FU_118_i0_fu_kruskalF_28880_30555;
  wire [4:0] out_IUdata_converter_FU_32_i0_fu_kruskalF_28880_30220;
  wire [7:0] out_IUdata_converter_FU_38_i0_fu_kruskalF_28880_30200;
  wire [4:0] out_IUdata_converter_FU_70_i0_fu_kruskalF_28880_30315;
  wire [7:0] out_IUdata_converter_FU_87_i0_fu_kruskalF_28880_30302;
  wire [7:0] out_IUdata_converter_FU_91_i0_fu_kruskalF_28880_30415;
  wire [7:0] out_IUdata_converter_FU_93_i0_fu_kruskalF_28880_30376;
  wire [7:0] out_IUdata_converter_FU_95_i0_fu_kruskalF_28880_30016;
  wire [7:0] out_MUX_151_reg_13_0_0_0;
  wire [7:0] out_MUX_152_reg_14_0_0_0;
  wire [4:0] out_MUX_153_reg_15_0_0_0;
  wire [7:0] out_MUX_157_reg_19_0_0_0;
  wire [4:0] out_MUX_164_reg_25_0_0_0;
  wire [7:0] out_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0;
  wire [7:0] out_MUX_171_reg_31_0_0_0;
  wire [7:0] out_MUX_172_reg_32_0_0_0;
  wire [4:0] out_MUX_173_reg_33_0_0_0;
  wire [7:0] out_MUX_185_reg_44_0_0_0;
  wire [7:0] out_MUX_186_reg_45_0_0_0;
  wire [7:0] out_MUX_187_reg_46_0_0_0;
  wire [12:0] out_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0;
  wire [7:0] out_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0;
  wire [7:0] out_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1;
  wire [31:0] out_MUX_215_reg_71_0_0_0;
  wire [12:0] out_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0;
  wire [7:0] out_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0;
  wire [7:0] out_MUX_50_PROXY_CTRLN_7_i0_0_0_0;
  wire [7:0] out_MUX_50_PROXY_CTRLN_7_i0_0_0_1;
  wire [12:0] out_MUX_55_PROXY_CTRLN_8_i0_1_0_0;
  wire [12:0] out_MUX_55_PROXY_CTRLN_8_i0_1_0_1;
  wire [12:0] out_MUX_59_PROXY_CTRLN_8_i1_1_0_0;
  wire [12:0] out_MUX_63_PROXY_CTRLN_9_i0_1_0_0;
  wire [12:0] out_MUX_63_PROXY_CTRLN_9_i0_1_0_1;
  wire [7:0] out_PROXY_CTRLN_7_i0_PROXY_CTRLN_7_i0;
  wire [7:0] out_PROXY_CTRLN_8_i0_PROXY_CTRLN_8_i0;
  wire [7:0] out_PROXY_CTRLN_8_i1_PROXY_CTRLN_8_i0;
  wire [7:0] out_PROXY_CTRLN_9_i0_PROXY_CTRLN_9_i0;
  wire signed [8:0] out_UIdata_converter_FU_116_i0_fu_kruskalF_28880_29956;
  wire signed [8:0] out_UIdata_converter_FU_127_i0_fu_kruskalF_28880_30071;
  wire signed [5:0] out_UIdata_converter_FU_31_i0_fu_kruskalF_28880_29753;
  wire signed [8:0] out_UIdata_converter_FU_36_i0_fu_kruskalF_28880_29770;
  wire signed [5:0] out_UIdata_converter_FU_42_i0_fu_kruskalF_28880_29818;
  wire signed [5:0] out_UIdata_converter_FU_69_i0_fu_kruskalF_28880_29983;
  wire signed [8:0] out_UIdata_converter_FU_85_i0_fu_kruskalF_28880_29992;
  wire signed [8:0] out_UIdata_converter_FU_89_i0_fu_kruskalF_28880_29877;
  wire signed [8:0] out_UIdata_converter_FU_90_i0_fu_kruskalF_28880_29973;
  wire signed [8:0] out_UIdata_converter_FU_96_i0_fu_kruskalF_28880_30052;
  wire [31:0] out_UUdata_converter_FU_108_i0_fu_kruskalF_28880_29861;
  wire [13:0] out_UUdata_converter_FU_114_i0_fu_kruskalF_28880_30519;
  wire [7:0] out_UUdata_converter_FU_115_i0_fu_kruskalF_28880_29951;
  wire [13:0] out_UUdata_converter_FU_117_i0_fu_kruskalF_28880_30552;
  wire [12:0] out_UUdata_converter_FU_14_i0_fu_kruskalF_28880_30217;
  wire [31:0] out_UUdata_converter_FU_24_i0_fu_kruskalF_28880_30386;
  wire [31:0] out_UUdata_converter_FU_25_i0_fu_kruskalF_28880_29869;
  wire [31:0] out_UUdata_converter_FU_26_i0_fu_kruskalF_28880_30053;
  wire [4:0] out_UUdata_converter_FU_30_i0_fu_kruskalF_28880_29752;
  wire [13:0] out_UUdata_converter_FU_37_i0_fu_kruskalF_28880_30197;
  wire [4:0] out_UUdata_converter_FU_68_i0_fu_kruskalF_28880_30005;
  wire [13:0] out_UUdata_converter_FU_86_i0_fu_kruskalF_28880_30299;
  wire [14:0] out_UUdata_converter_FU_92_i0_fu_kruskalF_28880_30373;
  wire [7:0] out_UUdata_converter_FU_94_i0_fu_kruskalF_28880_29971;
  wire [31:0] out_addr_expr_FU_12_i0_fu_kruskalF_28880_30192;
  wire [12:0] out_addr_expr_FU_13_i0_fu_kruskalF_28880_30238;
  wire [31:0] out_addr_expr_FU_15_i0_fu_kruskalF_28880_30256;
  wire [31:0] out_addr_expr_FU_16_i0_fu_kruskalF_28880_30264;
  wire [31:0] out_addr_expr_FU_17_i0_fu_kruskalF_28880_30272;
  wire [31:0] out_addr_expr_FU_18_i0_fu_kruskalF_28880_30283;
  wire [31:0] out_addr_expr_FU_19_i0_fu_kruskalF_28880_30291;
  wire [31:0] out_addr_expr_FU_20_i0_fu_kruskalF_28880_30295;
  wire [31:0] out_addr_expr_FU_21_i0_fu_kruskalF_28880_30345;
  wire [31:0] out_addr_expr_FU_22_i0_fu_kruskalF_28880_30361;
  wire [31:0] out_addr_expr_FU_23_i0_fu_kruskalF_28880_30431;
  wire signed [7:0] out_cond_expr_FU_8_8_8_8_131_i0_fu_kruskalF_28880_29759;
  wire signed [7:0] out_cond_expr_FU_8_8_8_8_131_i1_fu_kruskalF_28880_29789;
  wire signed [7:0] out_cond_expr_FU_8_8_8_8_131_i2_fu_kruskalF_28880_29925;
  wire signed [7:0] out_cond_expr_FU_8_8_8_8_131_i3_fu_kruskalF_28880_29996;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [4:0] out_const_10;
  wire [10:0] out_const_11;
  wire [1:0] out_const_12;
  wire [7:0] out_const_13;
  wire [12:0] out_const_14;
  wire [11:0] out_const_15;
  wire [11:0] out_const_16;
  wire [11:0] out_const_17;
  wire [11:0] out_const_18;
  wire [12:0] out_const_19;
  wire [7:0] out_const_2;
  wire [12:0] out_const_20;
  wire [9:0] out_const_21;
  wire [12:0] out_const_22;
  wire [7:0] out_const_3;
  wire [1:0] out_const_4;
  wire [4:0] out_const_5;
  wire [7:0] out_const_6;
  wire out_const_7;
  wire [1:0] out_const_8;
  wire [4:0] out_const_9;
  wire [12:0] out_conv_in_port_a_32_13;
  wire [12:0] out_conv_out_UUdata_converter_FU_108_i0_fu_kruskalF_28880_29861_32_13;
  wire [12:0] out_conv_out_addr_expr_FU_12_i0_fu_kruskalF_28880_30192_32_13;
  wire [31:0] out_conv_out_const_11_11_32;
  wire [31:0] out_conv_out_const_14_13_32;
  wire [31:0] out_conv_out_const_15_12_32;
  wire [31:0] out_conv_out_const_16_12_32;
  wire [31:0] out_conv_out_const_17_12_32;
  wire [31:0] out_conv_out_const_18_12_32;
  wire [31:0] out_conv_out_const_19_13_32;
  wire [31:0] out_conv_out_const_20_13_32;
  wire [31:0] out_conv_out_const_21_10_32;
  wire [31:0] out_conv_out_const_22_13_32;
  wire [3:0] out_conv_out_const_5_5_4;
  wire [12:0] out_conv_out_reg_10_reg_10_32_13;
  wire [12:0] out_conv_out_reg_11_reg_11_32_13;
  wire [12:0] out_conv_out_reg_20_reg_20_15_13;
  wire signed [7:0] out_conv_out_reg_26_reg_26_I_6_I_8;
  wire [12:0] out_conv_out_reg_27_reg_27_32_13;
  wire [12:0] out_conv_out_reg_2_reg_2_32_13;
  wire [12:0] out_conv_out_reg_38_reg_38_15_13;
  wire [12:0] out_conv_out_reg_4_reg_4_32_13;
  wire [12:0] out_conv_out_reg_56_reg_56_32_13;
  wire [12:0] out_conv_out_reg_57_reg_57_32_13;
  wire [12:0] out_conv_out_reg_58_reg_58_16_13;
  wire [12:0] out_conv_out_reg_5_reg_5_32_13;
  wire [12:0] out_conv_out_reg_63_reg_63_15_13;
  wire [12:0] out_conv_out_reg_69_reg_69_15_13;
  wire [12:0] out_conv_out_reg_70_reg_70_32_13;
  wire [12:0] out_conv_out_reg_7_reg_7_32_13;
  wire [12:0] out_conv_out_reg_8_reg_8_32_13;
  wire [12:0] out_conv_out_reg_9_reg_9_32_13;
  wire [4:0] out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7_1_5;
  wire [7:0] out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_8_5_8;
  wire [4:0] out_conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_9_1_5;
  wire [4:0] out_conv_out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_10_1_5;
  wire [7:0] out_conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_11_5_8;
  wire out_eq_expr_FU_16_16_16_132_i0_fu_kruskalF_28880_30695;
  wire out_gt_expr_FU_8_0_8_133_i0_fu_kruskalF_28880_30687;
  wire [7:0] out_iu_conv_conn_obj_11_IUdata_converter_FU_iu_conv_0;
  wire [7:0] out_iu_conv_conn_obj_14_IUdata_converter_FU_iu_conv_1;
  wire [7:0] out_iu_conv_conn_obj_16_IUdata_converter_FU_iu_conv_2;
  wire [7:0] out_iu_conv_conn_obj_17_IUdata_converter_FU_iu_conv_3;
  wire [7:0] out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_4;
  wire [7:0] out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_5;
  wire [7:0] out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_6;
  wire out_le_expr_FU_8_8_8_134_i0_fu_kruskalF_28880_29903;
  wire out_lt_expr_FU_16_16_16_135_i0_fu_kruskalF_28880_30699;
  wire [1:0] out_multi_read_cond_FU_39_i0_fu_kruskalF_28880_30944;
  wire [1:0] out_multi_read_cond_FU_88_i0_fu_kruskalF_28880_30951;
  wire out_ne_expr_FU_8_0_8_136_i0_fu_kruskalF_28880_29998;
  wire out_ne_expr_FU_8_0_8_136_i1_fu_kruskalF_28880_30210;
  wire out_ne_expr_FU_8_8_8_137_i0_fu_kruskalF_28880_30693;
  wire signed [7:0] out_plus_expr_FU_8_0_8_138_i0_fu_kruskalF_28880_29780;
  wire out_read_cond_FU_110_i0_fu_kruskalF_28880_30063;
  wire out_read_cond_FU_112_i0_fu_kruskalF_28880_30069;
  wire out_read_cond_FU_129_i0_fu_kruskalF_28880_30074;
  wire out_read_cond_FU_43_i0_fu_kruskalF_28880_29821;
  wire out_read_cond_FU_44_i0_fu_kruskalF_28880_29835;
  wire out_read_cond_FU_97_i0_fu_kruskalF_28880_30048;
  wire [31:0] out_reg_0_reg_0;
  wire [31:0] out_reg_10_reg_10;
  wire [31:0] out_reg_11_reg_11;
  wire [31:0] out_reg_12_reg_12;
  wire [7:0] out_reg_13_reg_13;
  wire [7:0] out_reg_14_reg_14;
  wire [4:0] out_reg_15_reg_15;
  wire [10:0] out_reg_16_reg_16;
  wire out_reg_17_reg_17;
  wire [7:0] out_reg_18_reg_18;
  wire [7:0] out_reg_19_reg_19;
  wire [31:0] out_reg_1_reg_1;
  wire [14:0] out_reg_20_reg_20;
  wire out_reg_21_reg_21;
  wire out_reg_22_reg_22;
  wire out_reg_23_reg_23;
  wire out_reg_24_reg_24;
  wire [4:0] out_reg_25_reg_25;
  wire [5:0] out_reg_26_reg_26;
  wire [31:0] out_reg_27_reg_27;
  wire out_reg_28_reg_28;
  wire [7:0] out_reg_29_reg_29;
  wire [31:0] out_reg_2_reg_2;
  wire [7:0] out_reg_30_reg_30;
  wire [7:0] out_reg_31_reg_31;
  wire [7:0] out_reg_32_reg_32;
  wire [4:0] out_reg_33_reg_33;
  wire [4:0] out_reg_34_reg_34;
  wire [10:0] out_reg_35_reg_35;
  wire out_reg_36_reg_36;
  wire [7:0] out_reg_37_reg_37;
  wire [14:0] out_reg_38_reg_38;
  wire out_reg_39_reg_39;
  wire [12:0] out_reg_3_reg_3;
  wire out_reg_40_reg_40;
  wire out_reg_41_reg_41;
  wire out_reg_42_reg_42;
  wire [7:0] out_reg_43_reg_43;
  wire [7:0] out_reg_44_reg_44;
  wire [7:0] out_reg_45_reg_45;
  wire [7:0] out_reg_46_reg_46;
  wire [7:0] out_reg_47_reg_47;
  wire [7:0] out_reg_48_reg_48;
  wire [5:0] out_reg_49_reg_49;
  wire [31:0] out_reg_4_reg_4;
  wire [8:0] out_reg_50_reg_50;
  wire [1:0] out_reg_51_reg_51;
  wire [5:0] out_reg_52_reg_52;
  wire [1:0] out_reg_53_reg_53;
  wire [10:0] out_reg_54_reg_54;
  wire [14:0] out_reg_55_reg_55;
  wire [31:0] out_reg_56_reg_56;
  wire [31:0] out_reg_57_reg_57;
  wire [15:0] out_reg_58_reg_58;
  wire [7:0] out_reg_59_reg_59;
  wire [31:0] out_reg_5_reg_5;
  wire [7:0] out_reg_60_reg_60;
  wire [8:0] out_reg_61_reg_61;
  wire [13:0] out_reg_62_reg_62;
  wire [14:0] out_reg_63_reg_63;
  wire [7:0] out_reg_64_reg_64;
  wire [5:0] out_reg_65_reg_65;
  wire [8:0] out_reg_66_reg_66;
  wire [1:0] out_reg_67_reg_67;
  wire [13:0] out_reg_68_reg_68;
  wire [14:0] out_reg_69_reg_69;
  wire [31:0] out_reg_6_reg_6;
  wire [31:0] out_reg_70_reg_70;
  wire [31:0] out_reg_71_reg_71;
  wire [7:0] out_reg_72_reg_72;
  wire [7:0] out_reg_73_reg_73;
  wire [7:0] out_reg_74_reg_74;
  wire [7:0] out_reg_75_reg_75;
  wire [31:0] out_reg_7_reg_7;
  wire [31:0] out_reg_8_reg_8;
  wire [31:0] out_reg_9_reg_9;
  wire out_truth_and_expr_FU_1_1_1_139_i0_fu_kruskalF_28880_30950;
  wire out_truth_and_expr_FU_1_1_1_139_i1_fu_kruskalF_28880_30957;
  wire out_truth_not_expr_FU_1_1_140_i0_fu_kruskalF_28880_30947;
  wire out_truth_not_expr_FU_1_1_140_i1_fu_kruskalF_28880_30954;
  wire [0:0] out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7;
  wire [4:0] out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_8;
  wire [0:0] out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_9;
  wire [0:0] out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_10;
  wire [4:0] out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_11;
  wire [0:0] out_ui_bit_and_expr_FU_1_1_1_141_i0_fu_kruskalF_28880_29899;
  wire [1:0] out_ui_bit_and_expr_FU_8_0_8_142_i0_fu_kruskalF_28880_30738;
  wire [1:0] out_ui_bit_and_expr_FU_8_0_8_142_i1_fu_kruskalF_28880_30770;
  wire [1:0] out_ui_bit_and_expr_FU_8_0_8_142_i2_fu_kruskalF_28880_30800;
  wire [1:0] out_ui_bit_and_expr_FU_8_0_8_143_i0_fu_kruskalF_28880_30837;
  wire [1:0] out_ui_bit_and_expr_FU_8_0_8_143_i1_fu_kruskalF_28880_30869;
  wire [7:0] out_ui_bit_ior_concat_expr_FU_144_i0_fu_kruskalF_28880_30247;
  wire [7:0] out_ui_bit_ior_concat_expr_FU_144_i1_fu_kruskalF_28880_30336;
  wire [10:0] out_ui_bit_ior_concat_expr_FU_145_i0_fu_kruskalF_28880_30253;
  wire [10:0] out_ui_bit_ior_concat_expr_FU_145_i1_fu_kruskalF_28880_30342;
  wire [10:0] out_ui_bit_ior_concat_expr_FU_145_i2_fu_kruskalF_28880_30446;
  wire [13:0] out_ui_bit_ior_concat_expr_FU_145_i3_fu_kruskalF_28880_30452;
  wire [10:0] out_ui_bit_ior_concat_expr_FU_146_i0_fu_kruskalF_28880_30510;
  wire [12:0] out_ui_bit_ior_concat_expr_FU_146_i1_fu_kruskalF_28880_30516;
  wire [10:0] out_ui_bit_ior_concat_expr_FU_146_i2_fu_kruskalF_28880_30539;
  wire [12:0] out_ui_bit_ior_concat_expr_FU_146_i3_fu_kruskalF_28880_30545;
  wire [7:0] out_ui_cond_expr_FU_8_8_8_8_147_i0_fu_kruskalF_28880_29894;
  wire [7:0] out_ui_cond_expr_FU_8_8_8_8_147_i1_fu_kruskalF_28880_30029;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_148_i0_fu_kruskalF_28880_30250;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_148_i1_fu_kruskalF_28880_30339;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_148_i2_fu_kruskalF_28880_30443;
  wire [12:0] out_ui_lshift_expr_FU_16_0_16_148_i3_fu_kruskalF_28880_30449;
  wire [10:0] out_ui_lshift_expr_FU_16_0_16_148_i4_fu_kruskalF_28880_30751;
  wire [10:0] out_ui_lshift_expr_FU_16_0_16_148_i5_fu_kruskalF_28880_30782;
  wire [10:0] out_ui_lshift_expr_FU_16_0_16_148_i6_fu_kruskalF_28880_30797;
  wire [13:0] out_ui_lshift_expr_FU_16_0_16_148_i7_fu_kruskalF_28880_30813;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_149_i0_fu_kruskalF_28880_30507;
  wire [12:0] out_ui_lshift_expr_FU_16_0_16_149_i1_fu_kruskalF_28880_30513;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_149_i2_fu_kruskalF_28880_30536;
  wire [12:0] out_ui_lshift_expr_FU_16_0_16_149_i3_fu_kruskalF_28880_30542;
  wire [10:0] out_ui_lshift_expr_FU_16_0_16_149_i4_fu_kruskalF_28880_30832;
  wire [12:0] out_ui_lshift_expr_FU_16_0_16_149_i5_fu_kruskalF_28880_30850;
  wire [10:0] out_ui_lshift_expr_FU_16_0_16_149_i6_fu_kruskalF_28880_30866;
  wire [12:0] out_ui_lshift_expr_FU_16_0_16_149_i7_fu_kruskalF_28880_30881;
  wire [6:0] out_ui_lshift_expr_FU_8_0_8_150_i0_fu_kruskalF_28880_30244;
  wire [6:0] out_ui_lshift_expr_FU_8_0_8_150_i1_fu_kruskalF_28880_30333;
  wire [7:0] out_ui_lshift_expr_FU_8_0_8_150_i2_fu_kruskalF_28880_30733;
  wire [7:0] out_ui_lshift_expr_FU_8_0_8_150_i3_fu_kruskalF_28880_30767;
  wire out_ui_ne_expr_FU_32_32_32_151_i0_fu_kruskalF_28880_30697;
  wire out_ui_ne_expr_FU_8_0_8_152_i0_fu_kruskalF_28880_30681;
  wire out_ui_ne_expr_FU_8_0_8_152_i1_fu_kruskalF_28880_30691;
  wire out_ui_ne_expr_FU_8_0_8_153_i0_fu_kruskalF_28880_30683;
  wire out_ui_ne_expr_FU_8_0_8_153_i1_fu_kruskalF_28880_30685;
  wire out_ui_ne_expr_FU_8_0_8_154_i0_fu_kruskalF_28880_30689;
  wire [11:0] out_ui_plus_expr_FU_16_16_16_155_i0_fu_kruskalF_28880_30809;
  wire [10:0] out_ui_plus_expr_FU_16_16_16_155_i1_fu_kruskalF_28880_30847;
  wire [10:0] out_ui_plus_expr_FU_16_16_16_155_i2_fu_kruskalF_28880_30878;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_156_i0_fu_kruskalF_28880_29872;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_157_i0_fu_kruskalF_28880_29778;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_157_i1_fu_kruskalF_28880_30007;
  wire [4:0] out_ui_plus_expr_FU_8_0_8_158_i0_fu_kruskalF_28880_29798;
  wire [4:0] out_ui_plus_expr_FU_8_0_8_158_i1_fu_kruskalF_28880_29820;
  wire [4:0] out_ui_plus_expr_FU_8_0_8_158_i2_fu_kruskalF_28880_29990;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_159_i0_fu_kruskalF_28880_30039;
  wire [5:0] out_ui_plus_expr_FU_8_8_8_160_i0_fu_kruskalF_28880_30729;
  wire [8:0] out_ui_plus_expr_FU_8_8_8_160_i1_fu_kruskalF_28880_30747;
  wire [5:0] out_ui_plus_expr_FU_8_8_8_160_i2_fu_kruskalF_28880_30764;
  wire [8:0] out_ui_plus_expr_FU_8_8_8_160_i3_fu_kruskalF_28880_30779;
  wire [8:0] out_ui_plus_expr_FU_8_8_8_160_i4_fu_kruskalF_28880_30794;
  wire [8:0] out_ui_plus_expr_FU_8_8_8_160_i5_fu_kruskalF_28880_30828;
  wire [8:0] out_ui_plus_expr_FU_8_8_8_160_i6_fu_kruskalF_28880_30863;
  wire [13:0] out_ui_pointer_plus_expr_FU_16_16_16_161_i0_fu_kruskalF_28880_29938;
  wire [13:0] out_ui_pointer_plus_expr_FU_16_16_16_161_i1_fu_kruskalF_28880_29965;
  wire [14:0] out_ui_pointer_plus_expr_FU_16_16_16_161_i2_fu_kruskalF_28880_30207;
  wire [14:0] out_ui_pointer_plus_expr_FU_16_16_16_161_i3_fu_kruskalF_28880_30308;
  wire [15:0] out_ui_pointer_plus_expr_FU_16_16_16_161_i4_fu_kruskalF_28880_30382;
  wire [14:0] out_ui_pointer_plus_expr_FU_16_16_16_161_i5_fu_kruskalF_28880_30421;
  wire [14:0] out_ui_pointer_plus_expr_FU_16_16_16_161_i6_fu_kruskalF_28880_30528;
  wire [14:0] out_ui_pointer_plus_expr_FU_16_16_16_161_i7_fu_kruskalF_28880_30561;
  wire [13:0] out_ui_pointer_plus_expr_FU_16_16_16_161_i8_ui_pointer_plus_expr_FU_16_16_16_161_i8;
  wire [13:0] out_ui_pointer_plus_expr_FU_16_16_16_161_i9_fu_kruskalF_28880_30321;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_0_32_162_i0_fu_kruskalF_28880_30470;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_163_i0_fu_kruskalF_28880_30275;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_163_i1_fu_kruskalF_28880_30395;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_163_i2_fu_kruskalF_28880_30408;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_164_i0_fu_kruskalF_28880_30742;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_164_i1_fu_kruskalF_28880_30774;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_164_i2_fu_kruskalF_28880_30789;
  wire [10:0] out_ui_rshift_expr_FU_16_0_16_164_i3_fu_kruskalF_28880_30804;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_165_i0_fu_kruskalF_28880_30821;
  wire [10:0] out_ui_rshift_expr_FU_16_0_16_165_i1_fu_kruskalF_28880_30842;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_165_i2_fu_kruskalF_28880_30858;
  wire [10:0] out_ui_rshift_expr_FU_16_0_16_165_i3_fu_kruskalF_28880_30873;
  wire [4:0] out_ui_rshift_expr_FU_8_0_8_166_i0_fu_kruskalF_28880_30722;
  wire [2:0] out_ui_rshift_expr_FU_8_0_8_166_i1_fu_kruskalF_28880_30726;
  wire [4:0] out_ui_rshift_expr_FU_8_0_8_166_i2_fu_kruskalF_28880_30759;
  wire [2:0] out_ui_rshift_expr_FU_8_0_8_166_i3_fu_kruskalF_28880_30762;
  wire [5:0] out_ui_rshift_expr_FU_8_0_8_166_i4_fu_kruskalF_28880_30792;
  wire [5:0] out_ui_rshift_expr_FU_8_0_8_167_i0_fu_kruskalF_28880_30825;
  wire [5:0] out_ui_rshift_expr_FU_8_0_8_167_i1_fu_kruskalF_28880_30861;
  wire [7:0] out_vb_assign_conn_obj_10_ASSIGN_VECTOR_BOOL_FU_vb_assign_12;
  wire [7:0] out_vb_assign_conn_obj_12_ASSIGN_VECTOR_BOOL_FU_vb_assign_13;
  wire [7:0] out_vb_assign_conn_obj_13_ASSIGN_VECTOR_BOOL_FU_vb_assign_14;
  wire [7:0] out_vb_assign_conn_obj_15_ASSIGN_VECTOR_BOOL_FU_vb_assign_15;
  wire [7:0] out_vb_assign_conn_obj_18_ASSIGN_VECTOR_BOOL_FU_vb_assign_16;
  wire [7:0] out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_17;
  wire [7:0] out_vb_assign_conn_obj_6_ASSIGN_VECTOR_BOOL_FU_vb_assign_18;
  wire [15:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [25:0] sig_in_bus_mergerMout_addr_ram1_0;
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
  wire [25:0] sig_in_bus_mergerproxy_in2_2886711_0;
  wire [25:0] sig_in_bus_mergerproxy_in2_2886812_0;
  wire [25:0] sig_in_bus_mergerproxy_in2_2886913_0;
  wire [25:0] sig_in_bus_mergerproxy_in2_2887014_0;
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
  wire [25:0] sig_in_vector_bus_mergerMout_addr_ram1_0;
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
  wire [25:0] sig_in_vector_bus_mergerproxy_in2_2886711_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in2_2886812_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in2_2886913_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in2_2887014_0;
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
  wire [25:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [7:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire [1:0] sig_out_bus_mergerMout_oe_ram3_;
  wire [1:0] sig_out_bus_mergerMout_we_ram4_;
  wire [1:0] sig_out_bus_mergerSout_DataRdy5_;
  wire [15:0] sig_out_bus_mergerSout_Rdata_ram6_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288677_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288688_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288699_;
  wire [15:0] sig_out_bus_mergerproxy_in1_2887010_;
  wire [25:0] sig_out_bus_mergerproxy_in2_2886711_;
  wire [25:0] sig_out_bus_mergerproxy_in2_2886812_;
  wire [25:0] sig_out_bus_mergerproxy_in2_2886913_;
  wire [25:0] sig_out_bus_mergerproxy_in2_2887014_;
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
  
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_10 (.out1(out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_10), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(5), .BITSIZE_out1(5)) ASSIGN_UNSIGNED_FU_u_assign_11 (.out1(out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_11), .in1(out_UUdata_converter_FU_68_i0_fu_kruskalF_28880_30005));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_7 (.out1(out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(5), .BITSIZE_out1(5)) ASSIGN_UNSIGNED_FU_u_assign_8 (.out1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_8), .in1(out_UUdata_converter_FU_30_i0_fu_kruskalF_28880_29752));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_9 (.out1(out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_9), .in1(out_const_0));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_12 (.out1(out_vb_assign_conn_obj_10_ASSIGN_VECTOR_BOOL_FU_vb_assign_12), .in1(out_const_2));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_13 (.out1(out_vb_assign_conn_obj_12_ASSIGN_VECTOR_BOOL_FU_vb_assign_13), .in1(out_reg_46_reg_46));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_14 (.out1(out_vb_assign_conn_obj_13_ASSIGN_VECTOR_BOOL_FU_vb_assign_14), .in1(out_reg_44_reg_44));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_15 (.out1(out_vb_assign_conn_obj_15_ASSIGN_VECTOR_BOOL_FU_vb_assign_15), .in1(out_reg_59_reg_59));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_16 (.out1(out_vb_assign_conn_obj_18_ASSIGN_VECTOR_BOOL_FU_vb_assign_16), .in1(out_reg_74_reg_74));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_17 (.out1(out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_17), .in1(out_const_3));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_18 (.out1(out_vb_assign_conn_obj_6_ASSIGN_VECTOR_BOOL_FU_vb_assign_18), .in1(out_const_1));
  BMEMORY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(1), .PORTSIZE_out1(2), .BITSIZE_Min_oe_ram(1), .PORTSIZE_Min_oe_ram(2), .BITSIZE_Min_we_ram(1), .PORTSIZE_Min_we_ram(2), .BITSIZE_Mout_oe_ram(1), .PORTSIZE_Mout_oe_ram(2), .BITSIZE_Mout_we_ram(1), .PORTSIZE_Mout_we_ram(2), .BITSIZE_M_DataRdy(1), .PORTSIZE_M_DataRdy(2), .BITSIZE_Min_addr_ram(13), .PORTSIZE_Min_addr_ram(2), .BITSIZE_Mout_addr_ram(13), .PORTSIZE_Mout_addr_ram(2), .BITSIZE_M_Rdata_ram(8), .PORTSIZE_M_Rdata_ram(2), .BITSIZE_Min_Wdata_ram(8), .PORTSIZE_Min_Wdata_ram(2), .BITSIZE_Mout_Wdata_ram(8), .PORTSIZE_Mout_Wdata_ram(2), .BITSIZE_Min_data_ram_size(4), .PORTSIZE_Min_data_ram_size(2), .BITSIZE_Mout_data_ram_size(4), .PORTSIZE_Mout_data_ram_size(2)) BMEMORY_CTRLN_130_i0 (.out1({null_out_signal_BMEMORY_CTRLN_130_i0_out1_1, null_out_signal_BMEMORY_CTRLN_130_i0_out1_0}), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .in1({8'b00000000, out_iu_conv_conn_obj_17_IUdata_converter_FU_iu_conv_3}), .in2({13'b0000000000000, out_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0}), .in3({4'b0000, out_conv_out_const_5_5_4}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_BMEMORY_CTRLN_130_i0_LOAD}), .sel_STORE({1'b0, fuselector_BMEMORY_CTRLN_130_i0_STORE}), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .M_Rdata_ram(M_Rdata_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .M_DataRdy(M_DataRdy));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_0 (.out1(out_iu_conv_conn_obj_11_IUdata_converter_FU_iu_conv_0), .in1(out_reg_45_reg_45));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_14_IUdata_converter_FU_iu_conv_1), .in1(out_const_13));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_2 (.out1(out_iu_conv_conn_obj_16_IUdata_converter_FU_iu_conv_2), .in1(out_reg_73_reg_73));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_3 (.out1(out_iu_conv_conn_obj_17_IUdata_converter_FU_iu_conv_3), .in1(out_const_13));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_4 (.out1(out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_4), .in1(out_reg_14_reg_14));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_5 (.out1(out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_5), .in1(out_conv_out_reg_26_reg_26_I_6_I_8));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_6 (.out1(out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_6), .in1(out_const_6));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_151_reg_13_0_0_0 (.out1(out_MUX_151_reg_13_0_0_0), .sel(selector_MUX_151_reg_13_0_0_0), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_array_28859_0), .in2(out_cond_expr_FU_8_8_8_8_131_i0_fu_kruskalF_28880_29759));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_152_reg_14_0_0_0 (.out1(out_MUX_152_reg_14_0_0_0), .sel(selector_MUX_152_reg_14_0_0_0), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_array_28859_0), .in2(out_cond_expr_FU_8_8_8_8_131_i1_fu_kruskalF_28880_29789));
  MUX_GATE #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(5)) MUX_153_reg_15_0_0_0 (.out1(out_MUX_153_reg_15_0_0_0), .sel(selector_MUX_153_reg_15_0_0_0), .in1(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7_1_5), .in2(out_ui_plus_expr_FU_8_0_8_158_i0_fu_kruskalF_28880_29798));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_157_reg_19_0_0_0 (.out1(out_MUX_157_reg_19_0_0_0), .sel(selector_MUX_157_reg_19_0_0_0), .in1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_8_5_8), .in2(out_ui_plus_expr_FU_8_0_8_157_i0_fu_kruskalF_28880_29778));
  MUX_GATE #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(5)) MUX_164_reg_25_0_0_0 (.out1(out_MUX_164_reg_25_0_0_0), .sel(selector_MUX_164_reg_25_0_0_0), .in1(out_conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_9_1_5), .in2(out_ui_plus_expr_FU_8_0_8_158_i1_fu_kruskalF_28880_29820));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0 (.out1(out_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0), .sel(selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0), .in1(out_vb_assign_conn_obj_15_ASSIGN_VECTOR_BOOL_FU_vb_assign_15), .in2(out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_17));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_171_reg_31_0_0_0 (.out1(out_MUX_171_reg_31_0_0_0), .sel(selector_MUX_171_reg_31_0_0_0), .in1(out_reg_37_reg_37), .in2(out_conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_11_5_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_172_reg_32_0_0_0 (.out1(out_MUX_172_reg_32_0_0_0), .sel(selector_MUX_172_reg_32_0_0_0), .in1(out_reg_45_reg_45), .in2(out_cond_expr_FU_8_8_8_8_131_i3_fu_kruskalF_28880_29996));
  MUX_GATE #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(5)) MUX_173_reg_33_0_0_0 (.out1(out_MUX_173_reg_33_0_0_0), .sel(selector_MUX_173_reg_33_0_0_0), .in1(out_conv_out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_10_1_5), .in2(out_ui_plus_expr_FU_8_0_8_158_i2_fu_kruskalF_28880_29990));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_185_reg_44_0_0_0 (.out1(out_MUX_185_reg_44_0_0_0), .sel(selector_MUX_185_reg_44_0_0_0), .in1(out_reg_29_reg_29), .in2(out_ui_cond_expr_FU_8_8_8_8_147_i0_fu_kruskalF_28880_29894));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_186_reg_45_0_0_0 (.out1(out_MUX_186_reg_45_0_0_0), .sel(selector_MUX_186_reg_45_0_0_0), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_array_28861_0), .in2(out_cond_expr_FU_8_8_8_8_131_i2_fu_kruskalF_28880_29925));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_187_reg_46_0_0_0 (.out1(out_MUX_187_reg_46_0_0_0), .sel(selector_MUX_187_reg_46_0_0_0), .in1(out_reg_30_reg_30), .in2(out_ui_cond_expr_FU_8_8_8_8_147_i1_fu_kruskalF_28880_30029));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 (.out1(out_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0), .sel(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0), .in1(out_conv_out_reg_2_reg_2_32_13), .in2(out_conv_out_addr_expr_FU_12_i0_fu_kruskalF_28880_30192_32_13));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0 (.out1(out_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0), .sel(selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0), .in1(out_vb_assign_conn_obj_10_ASSIGN_VECTOR_BOOL_FU_vb_assign_12), .in2(out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_17));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1 (.out1(out_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1), .sel(selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1), .in1(out_vb_assign_conn_obj_6_ASSIGN_VECTOR_BOOL_FU_vb_assign_18), .in2(out_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_215_reg_71_0_0_0 (.out1(out_MUX_215_reg_71_0_0_0), .sel(selector_MUX_215_reg_71_0_0_0), .in1(out_reg_0_reg_0), .in2(out_ui_plus_expr_FU_32_0_32_156_i0_fu_kruskalF_28880_29872));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_25_BMEMORY_CTRLN_130_i0_1_0_0 (.out1(out_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0), .sel(selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0), .in1(out_conv_out_reg_69_reg_69_15_13), .in2(out_conv_out_reg_63_reg_63_15_13));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0 (.out1(out_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0), .sel(selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0), .in1(out_iu_conv_conn_obj_11_IUdata_converter_FU_iu_conv_0), .in2(out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_6));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_50_PROXY_CTRLN_7_i0_0_0_0 (.out1(out_MUX_50_PROXY_CTRLN_7_i0_0_0_0), .sel(selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0), .in1(out_vb_assign_conn_obj_18_ASSIGN_VECTOR_BOOL_FU_vb_assign_16), .in2(out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_17));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_50_PROXY_CTRLN_7_i0_0_0_1 (.out1(out_MUX_50_PROXY_CTRLN_7_i0_0_0_1), .sel(selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1), .in1(out_vb_assign_conn_obj_6_ASSIGN_VECTOR_BOOL_FU_vb_assign_18), .in2(out_MUX_50_PROXY_CTRLN_7_i0_0_0_0));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_55_PROXY_CTRLN_8_i0_1_0_0 (.out1(out_MUX_55_PROXY_CTRLN_8_i0_1_0_0), .sel(selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0), .in1(out_conv_out_reg_70_reg_70_32_13), .in2(out_conv_out_reg_56_reg_56_32_13));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_55_PROXY_CTRLN_8_i0_1_0_1 (.out1(out_MUX_55_PROXY_CTRLN_8_i0_1_0_1), .sel(selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1), .in1(out_conv_out_UUdata_converter_FU_108_i0_fu_kruskalF_28880_29861_32_13), .in2(out_MUX_55_PROXY_CTRLN_8_i0_1_0_0));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_59_PROXY_CTRLN_8_i1_1_0_0 (.out1(out_MUX_59_PROXY_CTRLN_8_i1_1_0_0), .sel(selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0), .in1(out_conv_out_reg_57_reg_57_32_13), .in2(out_conv_out_reg_27_reg_27_32_13));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_63_PROXY_CTRLN_9_i0_1_0_0 (.out1(out_MUX_63_PROXY_CTRLN_9_i0_1_0_0), .sel(selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0), .in1(out_conv_out_reg_58_reg_58_16_13), .in2(out_conv_out_reg_38_reg_38_15_13));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_63_PROXY_CTRLN_9_i0_1_0_1 (.out1(out_MUX_63_PROXY_CTRLN_9_i0_1_0_1), .sel(selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1), .in1(out_conv_out_reg_20_reg_20_15_13), .in2(out_MUX_63_PROXY_CTRLN_9_i0_1_0_0));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_6_i0 (.out1({null_out_signal_PROXY_CTRLN_6_i0_out1_1, null_out_signal_PROXY_CTRLN_6_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288677_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2886711_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886715_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886719_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886723_0), .in1({8'b00000000, out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_17}), .in2({13'b0000000000000, out_conv_out_reg_5_reg_5_32_13}), .in3({4'b0000, out_conv_out_const_5_5_4}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_6_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_6_i0_STORE}), .proxy_out1(proxy_out1_28867));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_7_i0 (.out1({null_out_signal_PROXY_CTRLN_7_i0_out1_1, out_PROXY_CTRLN_7_i0_PROXY_CTRLN_7_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288688_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2886812_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886816_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886820_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886824_0), .in1({8'b00000000, out_MUX_50_PROXY_CTRLN_7_i0_0_0_1}), .in2({13'b0000000000000, out_conv_out_reg_4_reg_4_32_13}), .in3({4'b0000, out_conv_out_const_5_5_4}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_7_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_7_i0_STORE}), .proxy_out1(proxy_out1_28868));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_8_i0 (.out1({out_PROXY_CTRLN_8_i1_PROXY_CTRLN_8_i0, out_PROXY_CTRLN_8_i0_PROXY_CTRLN_8_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288699_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2886913_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2886917_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886921_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886925_0), .in1({out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_5, out_iu_conv_conn_obj_16_IUdata_converter_FU_iu_conv_2}), .in2({out_MUX_59_PROXY_CTRLN_8_i1_1_0_0, out_MUX_55_PROXY_CTRLN_8_i0_1_0_1}), .in3({out_conv_out_const_5_5_4, out_conv_out_const_5_5_4}), .in4({out_const_7, out_const_7}), .sel_LOAD({fuselector_PROXY_CTRLN_8_i1_LOAD, fuselector_PROXY_CTRLN_8_i0_LOAD}), .sel_STORE({fuselector_PROXY_CTRLN_8_i1_STORE, fuselector_PROXY_CTRLN_8_i0_STORE}), .proxy_out1(proxy_out1_28869));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_9_i0 (.out1({null_out_signal_PROXY_CTRLN_9_i0_out1_1, out_PROXY_CTRLN_9_i0_PROXY_CTRLN_9_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_2887010_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_2887014_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_2887018_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2887022_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2887026_0), .in1({8'b00000000, out_iu_conv_conn_obj_14_IUdata_converter_FU_iu_conv_1}), .in2({13'b0000000000000, out_MUX_63_PROXY_CTRLN_9_i0_1_0_1}), .in3({4'b0000, out_conv_out_const_5_5_4}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_9_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_9_i0_STORE}), .proxy_out1(proxy_out1_28870));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(13), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28859.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28859_28880), .address_space_rangesize(512), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28859_0 (.out1({null_out_signal_array_28859_0_out1_1, out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_array_28859_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_0), .proxy_out1({null_out_signal_array_28859_0_proxy_out1_1, null_out_signal_array_28859_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_4}), .in2({13'b0000000000000, out_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0}), .in3({4'b0000, out_conv_out_const_5_5_4}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({13'b0000000000000, 13'b0000000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(13), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28861.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28861_28880), .address_space_rangesize(512), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28861_0 (.out1({null_out_signal_array_28861_0_out1_1, out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_array_28861_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_1), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_1), .proxy_out1({null_out_signal_array_28861_0_proxy_out1_1, null_out_signal_array_28861_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0}), .in2({13'b0000000000000, out_conv_out_reg_7_reg_7_32_13}), .in3({4'b0000, out_conv_out_const_5_5_4}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({13'b0000000000000, 13'b0000000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(13), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28862.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28862_28880), .address_space_rangesize(512), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28862_0 (.out1({null_out_signal_array_28862_0_out1_1, out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_array_28862_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_2), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_2), .proxy_out1({null_out_signal_array_28862_0_proxy_out1_1, null_out_signal_array_28862_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_vb_assign_conn_obj_13_ASSIGN_VECTOR_BOOL_FU_vb_assign_14}), .in2({13'b0000000000000, out_conv_out_reg_9_reg_9_32_13}), .in3({4'b0000, out_conv_out_const_5_5_4}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({13'b0000000000000, 13'b0000000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(13), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28864.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28864_28880), .address_space_rangesize(512), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28864_0 (.out1({null_out_signal_array_28864_0_out1_1, out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28864_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_3), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_3), .proxy_out1({null_out_signal_array_28864_0_proxy_out1_1, null_out_signal_array_28864_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_vb_assign_conn_obj_12_ASSIGN_VECTOR_BOOL_FU_vb_assign_13}), .in2({13'b0000000000000, out_conv_out_reg_8_reg_8_32_13}), .in3({4'b0000, out_conv_out_const_5_5_4}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({13'b0000000000000, 13'b0000000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(13), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28865.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28865_28880), .address_space_rangesize(512), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28865_0 (.out1({null_out_signal_array_28865_0_out1_1, null_out_signal_array_28865_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_4), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_4), .proxy_out1({null_out_signal_array_28865_0_proxy_out1_1, null_out_signal_array_28865_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0}), .in2({13'b0000000000000, out_conv_out_reg_11_reg_11_32_13}), .in3({4'b0000, out_conv_out_const_5_5_4}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({13'b0000000000000, 13'b0000000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(13), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28866.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28866_28880), .address_space_rangesize(512), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28866_0 (.out1({null_out_signal_array_28866_0_out1_1, null_out_signal_array_28866_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_5), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_5), .proxy_out1({null_out_signal_array_28866_0_proxy_out1_1, null_out_signal_array_28866_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1}), .in2({13'b0000000000000, out_conv_out_reg_10_reg_10_32_13}), .in3({4'b0000, out_conv_out_const_5_5_4}), .in4({1'b0, out_const_7}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({13'b0000000000000, 13'b0000000000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(6), .BITSIZE_out1(2)) bus_mergerSout_DataRdy5_ (.out1(sig_out_bus_mergerSout_DataRdy5_), .in1({sig_in_bus_mergerSout_DataRdy5_5, sig_in_bus_mergerSout_DataRdy5_4, sig_in_bus_mergerSout_DataRdy5_3, sig_in_bus_mergerSout_DataRdy5_2, sig_in_bus_mergerSout_DataRdy5_1, sig_in_bus_mergerSout_DataRdy5_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(6), .BITSIZE_out1(16)) bus_mergerSout_Rdata_ram6_ (.out1(sig_out_bus_mergerSout_Rdata_ram6_), .in1({sig_in_bus_mergerSout_Rdata_ram6_5, sig_in_bus_mergerSout_Rdata_ram6_4, sig_in_bus_mergerSout_Rdata_ram6_3, sig_in_bus_mergerSout_Rdata_ram6_2, sig_in_bus_mergerSout_Rdata_ram6_1, sig_in_bus_mergerSout_Rdata_ram6_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288677_ (.out1(sig_out_bus_mergerproxy_in1_288677_), .in1({sig_in_bus_mergerproxy_in1_288677_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288688_ (.out1(sig_out_bus_mergerproxy_in1_288688_), .in1({sig_in_bus_mergerproxy_in1_288688_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288699_ (.out1(sig_out_bus_mergerproxy_in1_288699_), .in1({sig_in_bus_mergerproxy_in1_288699_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_2887010_ (.out1(sig_out_bus_mergerproxy_in1_2887010_), .in1({sig_in_bus_mergerproxy_in1_2887010_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in2_2886711_ (.out1(sig_out_bus_mergerproxy_in2_2886711_), .in1({sig_in_bus_mergerproxy_in2_2886711_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in2_2886812_ (.out1(sig_out_bus_mergerproxy_in2_2886812_), .in1({sig_in_bus_mergerproxy_in2_2886812_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in2_2886913_ (.out1(sig_out_bus_mergerproxy_in2_2886913_), .in1({sig_in_bus_mergerproxy_in2_2886913_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in2_2887014_ (.out1(sig_out_bus_mergerproxy_in2_2887014_), .in1({sig_in_bus_mergerproxy_in2_2887014_0}));
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
  constant_value #(.BITSIZE_out1(5), .value(5'b10101)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(11), .value(MEM_var_28868_28882)) const_11 (.out1(out_const_11));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_12 (.out1(out_const_12));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_13 (.out1(out_const_13));
  constant_value #(.BITSIZE_out1(13), .value(MEM_var_28869_28882)) const_14 (.out1(out_const_14));
  constant_value #(.BITSIZE_out1(12), .value(MEM_var_28870_28882)) const_15 (.out1(out_const_15));
  constant_value #(.BITSIZE_out1(12), .value(MEM_var_28859_28880)) const_16 (.out1(out_const_16));
  constant_value #(.BITSIZE_out1(12), .value(MEM_var_28861_28880)) const_17 (.out1(out_const_17));
  constant_value #(.BITSIZE_out1(12), .value(MEM_var_28862_28880)) const_18 (.out1(out_const_18));
  constant_value #(.BITSIZE_out1(13), .value(MEM_var_28864_28880)) const_19 (.out1(out_const_19));
  constant_value #(.BITSIZE_out1(8), .value(8'b00010100)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(13), .value(MEM_var_28865_28880)) const_20 (.out1(out_const_20));
  constant_value #(.BITSIZE_out1(10), .value(MEM_var_28867_28882)) const_21 (.out1(out_const_21));
  constant_value #(.BITSIZE_out1(13), .value(MEM_var_28866_28880)) const_22 (.out1(out_const_22));
  constant_value #(.BITSIZE_out1(8), .value(8'b00010101)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(2), .value(2'b01)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(8), .value(8'b01111111)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(2), .value(2'b10)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(5), .value(5'b10100)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_in_port_a_32_13 (.out1(out_conv_in_port_a_32_13), .in1(in_port_a));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_UUdata_converter_FU_108_i0_fu_kruskalF_28880_29861_32_13 (.out1(out_conv_out_UUdata_converter_FU_108_i0_fu_kruskalF_28880_29861_32_13), .in1(out_UUdata_converter_FU_108_i0_fu_kruskalF_28880_29861));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_addr_expr_FU_12_i0_fu_kruskalF_28880_30192_32_13 (.out1(out_conv_out_addr_expr_FU_12_i0_fu_kruskalF_28880_30192_32_13), .in1(out_addr_expr_FU_12_i0_fu_kruskalF_28880_30192));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(32)) conv_out_const_11_11_32 (.out1(out_conv_out_const_11_11_32), .in1(out_const_11));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_const_14_13_32 (.out1(out_conv_out_const_14_13_32), .in1(out_const_14));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(32)) conv_out_const_15_12_32 (.out1(out_conv_out_const_15_12_32), .in1(out_const_15));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(32)) conv_out_const_16_12_32 (.out1(out_conv_out_const_16_12_32), .in1(out_const_16));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(32)) conv_out_const_17_12_32 (.out1(out_conv_out_const_17_12_32), .in1(out_const_17));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(32)) conv_out_const_18_12_32 (.out1(out_conv_out_const_18_12_32), .in1(out_const_18));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_const_19_13_32 (.out1(out_conv_out_const_19_13_32), .in1(out_const_19));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_const_20_13_32 (.out1(out_conv_out_const_20_13_32), .in1(out_const_20));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(32)) conv_out_const_21_10_32 (.out1(out_conv_out_const_21_10_32), .in1(out_const_21));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_const_22_13_32 (.out1(out_conv_out_const_22_13_32), .in1(out_const_22));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_5_5_4 (.out1(out_conv_out_const_5_5_4), .in1(out_const_5));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_10_reg_10_32_13 (.out1(out_conv_out_reg_10_reg_10_32_13), .in1(out_reg_10_reg_10));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_11_reg_11_32_13 (.out1(out_conv_out_reg_11_reg_11_32_13), .in1(out_reg_11_reg_11));
  UUdata_converter_FU #(.BITSIZE_in1(15), .BITSIZE_out1(13)) conv_out_reg_20_reg_20_15_13 (.out1(out_conv_out_reg_20_reg_20_15_13), .in1(out_reg_20_reg_20));
  IIdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(8)) conv_out_reg_26_reg_26_I_6_I_8 (.out1(out_conv_out_reg_26_reg_26_I_6_I_8), .in1(out_reg_26_reg_26));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_27_reg_27_32_13 (.out1(out_conv_out_reg_27_reg_27_32_13), .in1(out_reg_27_reg_27));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_2_reg_2_32_13 (.out1(out_conv_out_reg_2_reg_2_32_13), .in1(out_reg_2_reg_2));
  UUdata_converter_FU #(.BITSIZE_in1(15), .BITSIZE_out1(13)) conv_out_reg_38_reg_38_15_13 (.out1(out_conv_out_reg_38_reg_38_15_13), .in1(out_reg_38_reg_38));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_4_reg_4_32_13 (.out1(out_conv_out_reg_4_reg_4_32_13), .in1(out_reg_4_reg_4));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_56_reg_56_32_13 (.out1(out_conv_out_reg_56_reg_56_32_13), .in1(out_reg_56_reg_56));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_57_reg_57_32_13 (.out1(out_conv_out_reg_57_reg_57_32_13), .in1(out_reg_57_reg_57));
  UUdata_converter_FU #(.BITSIZE_in1(16), .BITSIZE_out1(13)) conv_out_reg_58_reg_58_16_13 (.out1(out_conv_out_reg_58_reg_58_16_13), .in1(out_reg_58_reg_58));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_5_reg_5_32_13 (.out1(out_conv_out_reg_5_reg_5_32_13), .in1(out_reg_5_reg_5));
  UUdata_converter_FU #(.BITSIZE_in1(15), .BITSIZE_out1(13)) conv_out_reg_63_reg_63_15_13 (.out1(out_conv_out_reg_63_reg_63_15_13), .in1(out_reg_63_reg_63));
  UUdata_converter_FU #(.BITSIZE_in1(15), .BITSIZE_out1(13)) conv_out_reg_69_reg_69_15_13 (.out1(out_conv_out_reg_69_reg_69_15_13), .in1(out_reg_69_reg_69));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_70_reg_70_32_13 (.out1(out_conv_out_reg_70_reg_70_32_13), .in1(out_reg_70_reg_70));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_7_reg_7_32_13 (.out1(out_conv_out_reg_7_reg_7_32_13), .in1(out_reg_7_reg_7));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_8_reg_8_32_13 (.out1(out_conv_out_reg_8_reg_8_32_13), .in1(out_reg_8_reg_8));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_9_reg_9_32_13 (.out1(out_conv_out_reg_9_reg_9_32_13), .in1(out_reg_9_reg_9));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(5)) conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7_1_5 (.out1(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7_1_5), .in1(out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_7));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_8_5_8 (.out1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_8_5_8), .in1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_8));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(5)) conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_9_1_5 (.out1(out_conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_9_1_5), .in1(out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_9));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(5)) conv_out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_10_1_5 (.out1(out_conv_out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_10_1_5), .in1(out_u_assign_conn_obj_8_ASSIGN_UNSIGNED_FU_u_assign_10));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_11_5_8 (.out1(out_conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_11_5_8), .in1(out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_11));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(5)) fu_kruskalF_28880_29752 (.out1(out_UUdata_converter_FU_30_i0_fu_kruskalF_28880_29752), .in1(out_reg_15_reg_15));
  UIdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(6)) fu_kruskalF_28880_29753 (.out1(out_UIdata_converter_FU_31_i0_fu_kruskalF_28880_29753), .in1(out_reg_15_reg_15));
  cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29759 (.out1(out_cond_expr_FU_8_8_8_8_131_i0_fu_kruskalF_28880_29759), .in1(out_reg_23_reg_23), .in2(out_reg_18_reg_18), .in3(out_reg_13_reg_13));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_kruskalF_28880_29770 (.out1(out_UIdata_converter_FU_36_i0_fu_kruskalF_28880_29770), .in1(out_reg_19_reg_19));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_kruskalF_28880_29778 (.out1(out_ui_plus_expr_FU_8_0_8_157_i0_fu_kruskalF_28880_29778), .in1(out_reg_19_reg_19), .in2(out_const_7));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_kruskalF_28880_29780 (.out1(out_plus_expr_FU_8_0_8_138_i0_fu_kruskalF_28880_29780), .in1(out_reg_13_reg_13), .in2(out_const_4));
  cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29789 (.out1(out_cond_expr_FU_8_8_8_8_131_i1_fu_kruskalF_28880_29789), .in1(out_reg_23_reg_23), .in2(out_reg_18_reg_18), .in3(out_reg_14_reg_14));
  ui_plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(5)) fu_kruskalF_28880_29798 (.out1(out_ui_plus_expr_FU_8_0_8_158_i0_fu_kruskalF_28880_29798), .in1(out_reg_15_reg_15), .in2(out_const_7));
  UIdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(6)) fu_kruskalF_28880_29818 (.out1(out_UIdata_converter_FU_42_i0_fu_kruskalF_28880_29818), .in1(out_reg_25_reg_25));
  ui_plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(5)) fu_kruskalF_28880_29820 (.out1(out_ui_plus_expr_FU_8_0_8_158_i1_fu_kruskalF_28880_29820), .in1(out_reg_25_reg_25), .in2(out_const_7));
  read_cond_FU #(.BITSIZE_in1(1)) fu_kruskalF_28880_29821 (.out1(out_read_cond_FU_43_i0_fu_kruskalF_28880_29821), .in1(out_reg_28_reg_28));
  read_cond_FU #(.BITSIZE_in1(1)) fu_kruskalF_28880_29835 (.out1(out_read_cond_FU_44_i0_fu_kruskalF_28880_29835), .in1(out_reg_24_reg_24));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_29861 (.out1(out_UUdata_converter_FU_108_i0_fu_kruskalF_28880_29861), .in1(out_reg_71_reg_71));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_29869 (.out1(out_UUdata_converter_FU_25_i0_fu_kruskalF_28880_29869), .in1(out_addr_expr_FU_17_i0_fu_kruskalF_28880_30272));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(32)) fu_kruskalF_28880_29872 (.out1(out_ui_plus_expr_FU_32_0_32_156_i0_fu_kruskalF_28880_29872), .in1(out_reg_71_reg_71), .in2(out_const_7));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_kruskalF_28880_29877 (.out1(out_UIdata_converter_FU_89_i0_fu_kruskalF_28880_29877), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28864_0));
  ui_cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29894 (.out1(out_ui_cond_expr_FU_8_8_8_8_147_i0_fu_kruskalF_28880_29894), .in1(out_ui_bit_and_expr_FU_1_1_1_141_i0_fu_kruskalF_28880_29899), .in2(out_reg_31_reg_31), .in3(out_reg_44_reg_44));
  ui_bit_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_kruskalF_28880_29899 (.out1(out_ui_bit_and_expr_FU_1_1_1_141_i0_fu_kruskalF_28880_29899), .in1(out_reg_41_reg_41), .in2(out_reg_42_reg_42));
  le_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_kruskalF_28880_29903 (.out1(out_le_expr_FU_8_8_8_134_i0_fu_kruskalF_28880_29903), .in1(out_PROXY_CTRLN_9_i0_PROXY_CTRLN_9_i0), .in2(out_reg_32_reg_32));
  cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29925 (.out1(out_cond_expr_FU_8_8_8_8_131_i2_fu_kruskalF_28880_29925), .in1(out_ui_bit_and_expr_FU_1_1_1_141_i0_fu_kruskalF_28880_29899), .in2(out_reg_43_reg_43), .in3(out_reg_45_reg_45));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(14), .LSB_PARAMETER(0)) fu_kruskalF_28880_29938 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_161_i0_fu_kruskalF_28880_29938), .in1(out_conv_in_port_a_32_13), .in2(out_ui_bit_ior_concat_expr_FU_146_i3_fu_kruskalF_28880_30545));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29951 (.out1(out_UUdata_converter_FU_115_i0_fu_kruskalF_28880_29951), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_array_28862_0));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_kruskalF_28880_29956 (.out1(out_UIdata_converter_FU_116_i0_fu_kruskalF_28880_29956), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28864_0));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(14), .LSB_PARAMETER(0)) fu_kruskalF_28880_29965 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_161_i1_fu_kruskalF_28880_29965), .in1(out_conv_in_port_a_32_13), .in2(out_ui_bit_ior_concat_expr_FU_146_i1_fu_kruskalF_28880_30516));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29971 (.out1(out_UUdata_converter_FU_94_i0_fu_kruskalF_28880_29971), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28864_0));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_kruskalF_28880_29973 (.out1(out_UIdata_converter_FU_90_i0_fu_kruskalF_28880_29973), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_array_28862_0));
  UIdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(6)) fu_kruskalF_28880_29983 (.out1(out_UIdata_converter_FU_69_i0_fu_kruskalF_28880_29983), .in1(out_reg_33_reg_33));
  ui_plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(5)) fu_kruskalF_28880_29990 (.out1(out_ui_plus_expr_FU_8_0_8_158_i2_fu_kruskalF_28880_29990), .in1(out_reg_33_reg_33), .in2(out_const_7));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_kruskalF_28880_29992 (.out1(out_UIdata_converter_FU_85_i0_fu_kruskalF_28880_29992), .in1(out_reg_31_reg_31));
  cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_29996 (.out1(out_cond_expr_FU_8_8_8_8_131_i3_fu_kruskalF_28880_29996), .in1(out_ui_bit_and_expr_FU_1_1_1_141_i0_fu_kruskalF_28880_29899), .in2(out_reg_43_reg_43), .in3(out_reg_32_reg_32));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_kruskalF_28880_29998 (.out1(out_ne_expr_FU_8_0_8_136_i0_fu_kruskalF_28880_29998), .in1(out_PROXY_CTRLN_9_i0_PROXY_CTRLN_9_i0), .in2(out_const_12));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(5)) fu_kruskalF_28880_30005 (.out1(out_UUdata_converter_FU_68_i0_fu_kruskalF_28880_30005), .in1(out_reg_33_reg_33));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_kruskalF_28880_30007 (.out1(out_ui_plus_expr_FU_8_0_8_157_i1_fu_kruskalF_28880_30007), .in1(out_reg_31_reg_31), .in2(out_const_7));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_kruskalF_28880_30016 (.out1(out_IUdata_converter_FU_95_i0_fu_kruskalF_28880_30016), .in1(out_PROXY_CTRLN_8_i1_PROXY_CTRLN_8_i0));
  ui_cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(5), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_kruskalF_28880_30029 (.out1(out_ui_cond_expr_FU_8_8_8_8_147_i1_fu_kruskalF_28880_30029), .in1(out_ui_bit_and_expr_FU_1_1_1_141_i0_fu_kruskalF_28880_29899), .in2(out_reg_34_reg_34), .in3(out_reg_46_reg_46));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_kruskalF_28880_30039 (.out1(out_ui_plus_expr_FU_8_0_8_159_i0_fu_kruskalF_28880_30039), .in1(out_PROXY_CTRLN_7_i0_PROXY_CTRLN_7_i0), .in2(out_const_7));
  read_cond_FU #(.BITSIZE_in1(1)) fu_kruskalF_28880_30048 (.out1(out_read_cond_FU_97_i0_fu_kruskalF_28880_30048), .in1(out_ne_expr_FU_8_8_8_137_i0_fu_kruskalF_28880_30693));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_kruskalF_28880_30052 (.out1(out_UIdata_converter_FU_96_i0_fu_kruskalF_28880_30052), .in1(out_IUdata_converter_FU_95_i0_fu_kruskalF_28880_30016));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_30053 (.out1(out_UUdata_converter_FU_26_i0_fu_kruskalF_28880_30053), .in1(out_ui_pointer_plus_expr_FU_32_0_32_162_i0_fu_kruskalF_28880_30470));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_kruskalF_28880_30062 (.out1(out_IIdata_converter_FU_109_i0_fu_kruskalF_28880_30062), .in1(out_PROXY_CTRLN_8_i0_PROXY_CTRLN_8_i0));
  read_cond_FU #(.BITSIZE_in1(1)) fu_kruskalF_28880_30063 (.out1(out_read_cond_FU_110_i0_fu_kruskalF_28880_30063), .in1(out_eq_expr_FU_16_16_16_132_i0_fu_kruskalF_28880_30695));
  read_cond_FU #(.BITSIZE_in1(1)) fu_kruskalF_28880_30069 (.out1(out_read_cond_FU_112_i0_fu_kruskalF_28880_30069), .in1(out_ui_ne_expr_FU_32_32_32_151_i0_fu_kruskalF_28880_30697));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_kruskalF_28880_30071 (.out1(out_UIdata_converter_FU_127_i0_fu_kruskalF_28880_30071), .in1(out_reg_74_reg_74));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_kruskalF_28880_30073 (.out1(out_IIdata_converter_FU_128_i0_fu_kruskalF_28880_30073), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_array_28859_0));
  read_cond_FU #(.BITSIZE_in1(1)) fu_kruskalF_28880_30074 (.out1(out_read_cond_FU_129_i0_fu_kruskalF_28880_30074), .in1(out_lt_expr_FU_16_16_16_135_i0_fu_kruskalF_28880_30699));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_30192 (.out1(out_addr_expr_FU_12_i0_fu_kruskalF_28880_30192), .in1(out_conv_out_const_16_12_32));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(14)) fu_kruskalF_28880_30197 (.out1(out_UUdata_converter_FU_37_i0_fu_kruskalF_28880_30197), .in1(out_ui_pointer_plus_expr_FU_16_16_16_161_i8_ui_pointer_plus_expr_FU_16_16_16_161_i8));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_kruskalF_28880_30200 (.out1(out_IUdata_converter_FU_38_i0_fu_kruskalF_28880_30200), .in1(out_UIdata_converter_FU_36_i0_fu_kruskalF_28880_29770));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(14), .BITSIZE_in2(8), .BITSIZE_out1(15), .LSB_PARAMETER(0)) fu_kruskalF_28880_30207 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_161_i2_fu_kruskalF_28880_30207), .in1(out_UUdata_converter_FU_37_i0_fu_kruskalF_28880_30197), .in2(out_IUdata_converter_FU_38_i0_fu_kruskalF_28880_30200));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_kruskalF_28880_30210 (.out1(out_ne_expr_FU_8_0_8_136_i1_fu_kruskalF_28880_30210), .in1(out_PROXY_CTRLN_9_i0_PROXY_CTRLN_9_i0), .in2(out_const_12));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(13)) fu_kruskalF_28880_30217 (.out1(out_UUdata_converter_FU_14_i0_fu_kruskalF_28880_30217), .in1(out_addr_expr_FU_13_i0_fu_kruskalF_28880_30238));
  IUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(5)) fu_kruskalF_28880_30220 (.out1(out_IUdata_converter_FU_32_i0_fu_kruskalF_28880_30220), .in1(out_UIdata_converter_FU_31_i0_fu_kruskalF_28880_29753));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) fu_kruskalF_28880_30238 (.out1(out_addr_expr_FU_13_i0_fu_kruskalF_28880_30238), .in1(out_conv_out_const_15_12_32));
  ui_lshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_out1(7), .PRECISION(32)) fu_kruskalF_28880_30244 (.out1(out_ui_lshift_expr_FU_8_0_8_150_i0_fu_kruskalF_28880_30244), .in1(out_IUdata_converter_FU_32_i0_fu_kruskalF_28880_30220), .in2(out_const_8));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(8), .OFFSET_PARAMETER(2)) fu_kruskalF_28880_30247 (.out1(out_ui_bit_ior_concat_expr_FU_144_i0_fu_kruskalF_28880_30247), .in1(out_ui_lshift_expr_FU_8_0_8_150_i2_fu_kruskalF_28880_30733), .in2(out_ui_bit_and_expr_FU_8_0_8_142_i0_fu_kruskalF_28880_30738), .in3(out_const_8));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(10), .PRECISION(32)) fu_kruskalF_28880_30250 (.out1(out_ui_lshift_expr_FU_16_0_16_148_i0_fu_kruskalF_28880_30250), .in1(out_ui_bit_ior_concat_expr_FU_144_i0_fu_kruskalF_28880_30247), .in2(out_const_8));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(11), .OFFSET_PARAMETER(2)) fu_kruskalF_28880_30253 (.out1(out_ui_bit_ior_concat_expr_FU_145_i0_fu_kruskalF_28880_30253), .in1(out_ui_lshift_expr_FU_16_0_16_148_i4_fu_kruskalF_28880_30751), .in2(out_ui_bit_and_expr_FU_8_0_8_142_i0_fu_kruskalF_28880_30738), .in3(out_const_8));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_30256 (.out1(out_addr_expr_FU_15_i0_fu_kruskalF_28880_30256), .in1(out_conv_out_const_11_11_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_30264 (.out1(out_addr_expr_FU_16_i0_fu_kruskalF_28880_30264), .in1(out_conv_out_const_21_10_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_30272 (.out1(out_addr_expr_FU_17_i0_fu_kruskalF_28880_30272), .in1(out_conv_out_const_14_13_32));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_kruskalF_28880_30275 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_163_i0_fu_kruskalF_28880_30275), .in1(out_reg_6_reg_6), .in2(out_reg_25_reg_25));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_30283 (.out1(out_addr_expr_FU_18_i0_fu_kruskalF_28880_30283), .in1(out_conv_out_const_17_12_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_30291 (.out1(out_addr_expr_FU_19_i0_fu_kruskalF_28880_30291), .in1(out_conv_out_const_19_13_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_30295 (.out1(out_addr_expr_FU_20_i0_fu_kruskalF_28880_30295), .in1(out_conv_out_const_18_12_32));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(14)) fu_kruskalF_28880_30299 (.out1(out_UUdata_converter_FU_86_i0_fu_kruskalF_28880_30299), .in1(out_ui_pointer_plus_expr_FU_16_16_16_161_i9_fu_kruskalF_28880_30321));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_kruskalF_28880_30302 (.out1(out_IUdata_converter_FU_87_i0_fu_kruskalF_28880_30302), .in1(out_UIdata_converter_FU_85_i0_fu_kruskalF_28880_29992));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(14), .BITSIZE_in2(8), .BITSIZE_out1(15), .LSB_PARAMETER(0)) fu_kruskalF_28880_30308 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_161_i3_fu_kruskalF_28880_30308), .in1(out_UUdata_converter_FU_86_i0_fu_kruskalF_28880_30299), .in2(out_IUdata_converter_FU_87_i0_fu_kruskalF_28880_30302));
  IUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(5)) fu_kruskalF_28880_30315 (.out1(out_IUdata_converter_FU_70_i0_fu_kruskalF_28880_30315), .in1(out_UIdata_converter_FU_69_i0_fu_kruskalF_28880_29983));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(11), .BITSIZE_out1(14), .LSB_PARAMETER(0)) fu_kruskalF_28880_30321 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_161_i9_fu_kruskalF_28880_30321), .in1(out_reg_3_reg_3), .in2(out_reg_35_reg_35));
  ui_lshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_out1(7), .PRECISION(32)) fu_kruskalF_28880_30333 (.out1(out_ui_lshift_expr_FU_8_0_8_150_i1_fu_kruskalF_28880_30333), .in1(out_IUdata_converter_FU_70_i0_fu_kruskalF_28880_30315), .in2(out_const_8));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(8), .OFFSET_PARAMETER(2)) fu_kruskalF_28880_30336 (.out1(out_ui_bit_ior_concat_expr_FU_144_i1_fu_kruskalF_28880_30336), .in1(out_ui_lshift_expr_FU_8_0_8_150_i3_fu_kruskalF_28880_30767), .in2(out_ui_bit_and_expr_FU_8_0_8_142_i1_fu_kruskalF_28880_30770), .in3(out_const_8));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(10), .PRECISION(32)) fu_kruskalF_28880_30339 (.out1(out_ui_lshift_expr_FU_16_0_16_148_i1_fu_kruskalF_28880_30339), .in1(out_ui_bit_ior_concat_expr_FU_144_i1_fu_kruskalF_28880_30336), .in2(out_const_8));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(11), .OFFSET_PARAMETER(2)) fu_kruskalF_28880_30342 (.out1(out_ui_bit_ior_concat_expr_FU_145_i1_fu_kruskalF_28880_30342), .in1(out_ui_lshift_expr_FU_16_0_16_148_i5_fu_kruskalF_28880_30782), .in2(out_ui_bit_and_expr_FU_8_0_8_142_i1_fu_kruskalF_28880_30770), .in3(out_const_8));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_30345 (.out1(out_addr_expr_FU_21_i0_fu_kruskalF_28880_30345), .in1(out_conv_out_const_22_13_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_30361 (.out1(out_addr_expr_FU_22_i0_fu_kruskalF_28880_30361), .in1(out_conv_out_const_20_13_32));
  UUdata_converter_FU #(.BITSIZE_in1(15), .BITSIZE_out1(15)) fu_kruskalF_28880_30373 (.out1(out_UUdata_converter_FU_92_i0_fu_kruskalF_28880_30373), .in1(out_ui_pointer_plus_expr_FU_16_16_16_161_i5_fu_kruskalF_28880_30421));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_kruskalF_28880_30376 (.out1(out_IUdata_converter_FU_93_i0_fu_kruskalF_28880_30376), .in1(out_UIdata_converter_FU_90_i0_fu_kruskalF_28880_29973));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(15), .BITSIZE_in2(8), .BITSIZE_out1(16), .LSB_PARAMETER(0)) fu_kruskalF_28880_30382 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_161_i4_fu_kruskalF_28880_30382), .in1(out_reg_55_reg_55), .in2(out_reg_47_reg_47));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_30386 (.out1(out_UUdata_converter_FU_24_i0_fu_kruskalF_28880_30386), .in1(out_addr_expr_FU_23_i0_fu_kruskalF_28880_30431));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_kruskalF_28880_30395 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_163_i1_fu_kruskalF_28880_30395), .in1(out_reg_12_reg_12), .in2(out_reg_48_reg_48));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_kruskalF_28880_30408 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_163_i2_fu_kruskalF_28880_30408), .in1(out_reg_12_reg_12), .in2(out_reg_47_reg_47));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_kruskalF_28880_30415 (.out1(out_IUdata_converter_FU_91_i0_fu_kruskalF_28880_30415), .in1(out_UIdata_converter_FU_89_i0_fu_kruskalF_28880_29877));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(14), .BITSIZE_out1(15), .LSB_PARAMETER(0)) fu_kruskalF_28880_30421 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_161_i5_fu_kruskalF_28880_30421), .in1(out_reg_3_reg_3), .in2(out_ui_bit_ior_concat_expr_FU_145_i3_fu_kruskalF_28880_30452));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_kruskalF_28880_30431 (.out1(out_addr_expr_FU_23_i0_fu_kruskalF_28880_30431), .in1(out_conv_out_const_14_13_32));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(10), .PRECISION(32)) fu_kruskalF_28880_30443 (.out1(out_ui_lshift_expr_FU_16_0_16_148_i2_fu_kruskalF_28880_30443), .in1(out_IUdata_converter_FU_91_i0_fu_kruskalF_28880_30415), .in2(out_const_8));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(11), .OFFSET_PARAMETER(2)) fu_kruskalF_28880_30446 (.out1(out_ui_bit_ior_concat_expr_FU_145_i2_fu_kruskalF_28880_30446), .in1(out_ui_lshift_expr_FU_16_0_16_148_i6_fu_kruskalF_28880_30797), .in2(out_reg_51_reg_51), .in3(out_const_8));
  ui_lshift_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(2), .BITSIZE_out1(13), .PRECISION(32)) fu_kruskalF_28880_30449 (.out1(out_ui_lshift_expr_FU_16_0_16_148_i3_fu_kruskalF_28880_30449), .in1(out_ui_bit_ior_concat_expr_FU_145_i2_fu_kruskalF_28880_30446), .in2(out_const_8));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(14), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(14), .OFFSET_PARAMETER(2)) fu_kruskalF_28880_30452 (.out1(out_ui_bit_ior_concat_expr_FU_145_i3_fu_kruskalF_28880_30452), .in1(out_ui_lshift_expr_FU_16_0_16_148_i7_fu_kruskalF_28880_30813), .in2(out_reg_51_reg_51), .in3(out_const_8));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_kruskalF_28880_30470 (.out1(out_ui_pointer_plus_expr_FU_32_0_32_162_i0_fu_kruskalF_28880_30470), .in1(out_addr_expr_FU_17_i0_fu_kruskalF_28880_30272), .in2(out_const_10));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(10), .PRECISION(32)) fu_kruskalF_28880_30507 (.out1(out_ui_lshift_expr_FU_16_0_16_149_i0_fu_kruskalF_28880_30507), .in1(out_UUdata_converter_FU_94_i0_fu_kruskalF_28880_29971), .in2(out_const_8));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(11), .OFFSET_PARAMETER(2)) fu_kruskalF_28880_30510 (.out1(out_ui_bit_ior_concat_expr_FU_146_i0_fu_kruskalF_28880_30510), .in1(out_ui_lshift_expr_FU_16_0_16_149_i4_fu_kruskalF_28880_30832), .in2(out_ui_bit_and_expr_FU_8_0_8_143_i0_fu_kruskalF_28880_30837), .in3(out_const_8));
  ui_lshift_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(2), .BITSIZE_out1(13), .PRECISION(32)) fu_kruskalF_28880_30513 (.out1(out_ui_lshift_expr_FU_16_0_16_149_i1_fu_kruskalF_28880_30513), .in1(out_ui_bit_ior_concat_expr_FU_146_i0_fu_kruskalF_28880_30510), .in2(out_const_8));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(13), .OFFSET_PARAMETER(2)) fu_kruskalF_28880_30516 (.out1(out_ui_bit_ior_concat_expr_FU_146_i1_fu_kruskalF_28880_30516), .in1(out_ui_lshift_expr_FU_16_0_16_149_i5_fu_kruskalF_28880_30850), .in2(out_reg_53_reg_53), .in3(out_const_8));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(14)) fu_kruskalF_28880_30519 (.out1(out_UUdata_converter_FU_114_i0_fu_kruskalF_28880_30519), .in1(out_ui_pointer_plus_expr_FU_16_16_16_161_i1_fu_kruskalF_28880_29965));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(14), .BITSIZE_in2(8), .BITSIZE_out1(15), .LSB_PARAMETER(0)) fu_kruskalF_28880_30528 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_161_i6_fu_kruskalF_28880_30528), .in1(out_reg_62_reg_62), .in2(out_reg_47_reg_47));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(10), .PRECISION(32)) fu_kruskalF_28880_30536 (.out1(out_ui_lshift_expr_FU_16_0_16_149_i2_fu_kruskalF_28880_30536), .in1(out_UUdata_converter_FU_115_i0_fu_kruskalF_28880_29951), .in2(out_const_8));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(11), .OFFSET_PARAMETER(2)) fu_kruskalF_28880_30539 (.out1(out_ui_bit_ior_concat_expr_FU_146_i2_fu_kruskalF_28880_30539), .in1(out_ui_lshift_expr_FU_16_0_16_149_i6_fu_kruskalF_28880_30866), .in2(out_reg_67_reg_67), .in3(out_const_8));
  ui_lshift_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(2), .BITSIZE_out1(13), .PRECISION(32)) fu_kruskalF_28880_30542 (.out1(out_ui_lshift_expr_FU_16_0_16_149_i3_fu_kruskalF_28880_30542), .in1(out_ui_bit_ior_concat_expr_FU_146_i2_fu_kruskalF_28880_30539), .in2(out_const_8));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(13), .OFFSET_PARAMETER(2)) fu_kruskalF_28880_30545 (.out1(out_ui_bit_ior_concat_expr_FU_146_i3_fu_kruskalF_28880_30545), .in1(out_ui_lshift_expr_FU_16_0_16_149_i7_fu_kruskalF_28880_30881), .in2(out_reg_67_reg_67), .in3(out_const_8));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(14)) fu_kruskalF_28880_30552 (.out1(out_UUdata_converter_FU_117_i0_fu_kruskalF_28880_30552), .in1(out_ui_pointer_plus_expr_FU_16_16_16_161_i0_fu_kruskalF_28880_29938));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_kruskalF_28880_30555 (.out1(out_IUdata_converter_FU_118_i0_fu_kruskalF_28880_30555), .in1(out_UIdata_converter_FU_116_i0_fu_kruskalF_28880_29956));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(14), .BITSIZE_in2(8), .BITSIZE_out1(15), .LSB_PARAMETER(0)) fu_kruskalF_28880_30561 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_161_i7_fu_kruskalF_28880_30561), .in1(out_reg_68_reg_68), .in2(out_reg_64_reg_64));
  ui_ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_kruskalF_28880_30681 (.out1(out_ui_ne_expr_FU_8_0_8_152_i0_fu_kruskalF_28880_30681), .in1(out_ui_plus_expr_FU_8_0_8_157_i0_fu_kruskalF_28880_29778), .in2(out_const_10));
  ui_ne_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_kruskalF_28880_30683 (.out1(out_ui_ne_expr_FU_8_0_8_153_i0_fu_kruskalF_28880_30683), .in1(out_ui_plus_expr_FU_8_0_8_158_i0_fu_kruskalF_28880_29798), .in2(out_const_10));
  ui_ne_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_kruskalF_28880_30685 (.out1(out_ui_ne_expr_FU_8_0_8_153_i1_fu_kruskalF_28880_30685), .in1(out_ui_plus_expr_FU_8_0_8_158_i1_fu_kruskalF_28880_29820), .in2(out_const_10));
  gt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_kruskalF_28880_30687 (.out1(out_gt_expr_FU_8_0_8_133_i0_fu_kruskalF_28880_30687), .in1(out_reg_13_reg_13), .in2(out_const_0));
  ui_ne_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_kruskalF_28880_30689 (.out1(out_ui_ne_expr_FU_8_0_8_154_i0_fu_kruskalF_28880_30689), .in1(out_ui_plus_expr_FU_8_0_8_158_i2_fu_kruskalF_28880_29990), .in2(out_const_9));
  ui_ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_kruskalF_28880_30691 (.out1(out_ui_ne_expr_FU_8_0_8_152_i1_fu_kruskalF_28880_30691), .in1(out_ui_plus_expr_FU_8_0_8_157_i1_fu_kruskalF_28880_30007), .in2(out_const_10));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_kruskalF_28880_30693 (.out1(out_ne_expr_FU_8_8_8_137_i0_fu_kruskalF_28880_30693), .in1(out_reg_73_reg_73), .in2(out_reg_60_reg_60));
  eq_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_out1(1)) fu_kruskalF_28880_30695 (.out1(out_eq_expr_FU_16_16_16_132_i0_fu_kruskalF_28880_30695), .in1(out_reg_72_reg_72), .in2(out_reg_61_reg_61));
  ui_ne_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(1)) fu_kruskalF_28880_30697 (.out1(out_ui_ne_expr_FU_32_32_32_151_i0_fu_kruskalF_28880_30697), .in1(out_reg_71_reg_71), .in2(out_reg_1_reg_1));
  lt_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_kruskalF_28880_30699 (.out1(out_lt_expr_FU_16_16_16_135_i0_fu_kruskalF_28880_30699), .in1(out_UIdata_converter_FU_127_i0_fu_kruskalF_28880_30071), .in2(out_reg_75_reg_75));
  ui_rshift_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_out1(5), .PRECISION(32)) fu_kruskalF_28880_30722 (.out1(out_ui_rshift_expr_FU_8_0_8_166_i0_fu_kruskalF_28880_30722), .in1(out_ui_lshift_expr_FU_8_0_8_150_i0_fu_kruskalF_28880_30244), .in2(out_const_8));
  ui_rshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_out1(3), .PRECISION(32)) fu_kruskalF_28880_30726 (.out1(out_ui_rshift_expr_FU_8_0_8_166_i1_fu_kruskalF_28880_30726), .in1(out_IUdata_converter_FU_32_i0_fu_kruskalF_28880_30220), .in2(out_const_8));
  ui_plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(3), .BITSIZE_out1(6)) fu_kruskalF_28880_30729 (.out1(out_ui_plus_expr_FU_8_8_8_160_i0_fu_kruskalF_28880_30729), .in1(out_ui_rshift_expr_FU_8_0_8_166_i0_fu_kruskalF_28880_30722), .in2(out_ui_rshift_expr_FU_8_0_8_166_i1_fu_kruskalF_28880_30726));
  ui_lshift_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(32)) fu_kruskalF_28880_30733 (.out1(out_ui_lshift_expr_FU_8_0_8_150_i2_fu_kruskalF_28880_30733), .in1(out_ui_plus_expr_FU_8_8_8_160_i0_fu_kruskalF_28880_30729), .in2(out_const_8));
  ui_bit_and_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_kruskalF_28880_30738 (.out1(out_ui_bit_and_expr_FU_8_0_8_142_i0_fu_kruskalF_28880_30738), .in1(out_IUdata_converter_FU_32_i0_fu_kruskalF_28880_30220), .in2(out_const_12));
  ui_rshift_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(32)) fu_kruskalF_28880_30742 (.out1(out_ui_rshift_expr_FU_16_0_16_164_i0_fu_kruskalF_28880_30742), .in1(out_ui_lshift_expr_FU_16_0_16_148_i0_fu_kruskalF_28880_30250), .in2(out_const_8));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(9)) fu_kruskalF_28880_30747 (.out1(out_ui_plus_expr_FU_8_8_8_160_i1_fu_kruskalF_28880_30747), .in1(out_ui_rshift_expr_FU_16_0_16_164_i0_fu_kruskalF_28880_30742), .in2(out_ui_rshift_expr_FU_8_0_8_166_i1_fu_kruskalF_28880_30726));
  ui_lshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(11), .PRECISION(32)) fu_kruskalF_28880_30751 (.out1(out_ui_lshift_expr_FU_16_0_16_148_i4_fu_kruskalF_28880_30751), .in1(out_ui_plus_expr_FU_8_8_8_160_i1_fu_kruskalF_28880_30747), .in2(out_const_8));
  ui_rshift_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_out1(5), .PRECISION(32)) fu_kruskalF_28880_30759 (.out1(out_ui_rshift_expr_FU_8_0_8_166_i2_fu_kruskalF_28880_30759), .in1(out_ui_lshift_expr_FU_8_0_8_150_i1_fu_kruskalF_28880_30333), .in2(out_const_8));
  ui_rshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_out1(3), .PRECISION(32)) fu_kruskalF_28880_30762 (.out1(out_ui_rshift_expr_FU_8_0_8_166_i3_fu_kruskalF_28880_30762), .in1(out_IUdata_converter_FU_70_i0_fu_kruskalF_28880_30315), .in2(out_const_8));
  ui_plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(3), .BITSIZE_out1(6)) fu_kruskalF_28880_30764 (.out1(out_ui_plus_expr_FU_8_8_8_160_i2_fu_kruskalF_28880_30764), .in1(out_ui_rshift_expr_FU_8_0_8_166_i2_fu_kruskalF_28880_30759), .in2(out_ui_rshift_expr_FU_8_0_8_166_i3_fu_kruskalF_28880_30762));
  ui_lshift_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(32)) fu_kruskalF_28880_30767 (.out1(out_ui_lshift_expr_FU_8_0_8_150_i3_fu_kruskalF_28880_30767), .in1(out_ui_plus_expr_FU_8_8_8_160_i2_fu_kruskalF_28880_30764), .in2(out_const_8));
  ui_bit_and_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_kruskalF_28880_30770 (.out1(out_ui_bit_and_expr_FU_8_0_8_142_i1_fu_kruskalF_28880_30770), .in1(out_IUdata_converter_FU_70_i0_fu_kruskalF_28880_30315), .in2(out_const_12));
  ui_rshift_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(32)) fu_kruskalF_28880_30774 (.out1(out_ui_rshift_expr_FU_16_0_16_164_i1_fu_kruskalF_28880_30774), .in1(out_ui_lshift_expr_FU_16_0_16_148_i1_fu_kruskalF_28880_30339), .in2(out_const_8));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(9)) fu_kruskalF_28880_30779 (.out1(out_ui_plus_expr_FU_8_8_8_160_i3_fu_kruskalF_28880_30779), .in1(out_ui_rshift_expr_FU_16_0_16_164_i1_fu_kruskalF_28880_30774), .in2(out_ui_rshift_expr_FU_8_0_8_166_i3_fu_kruskalF_28880_30762));
  ui_lshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(11), .PRECISION(32)) fu_kruskalF_28880_30782 (.out1(out_ui_lshift_expr_FU_16_0_16_148_i5_fu_kruskalF_28880_30782), .in1(out_ui_plus_expr_FU_8_8_8_160_i3_fu_kruskalF_28880_30779), .in2(out_const_8));
  ui_rshift_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(32)) fu_kruskalF_28880_30789 (.out1(out_ui_rshift_expr_FU_16_0_16_164_i2_fu_kruskalF_28880_30789), .in1(out_ui_lshift_expr_FU_16_0_16_148_i2_fu_kruskalF_28880_30443), .in2(out_const_8));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_kruskalF_28880_30792 (.out1(out_ui_rshift_expr_FU_8_0_8_166_i4_fu_kruskalF_28880_30792), .in1(out_IUdata_converter_FU_91_i0_fu_kruskalF_28880_30415), .in2(out_const_8));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(6), .BITSIZE_out1(9)) fu_kruskalF_28880_30794 (.out1(out_ui_plus_expr_FU_8_8_8_160_i4_fu_kruskalF_28880_30794), .in1(out_ui_rshift_expr_FU_16_0_16_164_i2_fu_kruskalF_28880_30789), .in2(out_ui_rshift_expr_FU_8_0_8_166_i4_fu_kruskalF_28880_30792));
  ui_lshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(11), .PRECISION(32)) fu_kruskalF_28880_30797 (.out1(out_ui_lshift_expr_FU_16_0_16_148_i6_fu_kruskalF_28880_30797), .in1(out_reg_50_reg_50), .in2(out_const_8));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_kruskalF_28880_30800 (.out1(out_ui_bit_and_expr_FU_8_0_8_142_i2_fu_kruskalF_28880_30800), .in1(out_IUdata_converter_FU_91_i0_fu_kruskalF_28880_30415), .in2(out_const_12));
  ui_rshift_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(2), .BITSIZE_out1(11), .PRECISION(32)) fu_kruskalF_28880_30804 (.out1(out_ui_rshift_expr_FU_16_0_16_164_i3_fu_kruskalF_28880_30804), .in1(out_ui_lshift_expr_FU_16_0_16_148_i3_fu_kruskalF_28880_30449), .in2(out_const_8));
  ui_plus_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(6), .BITSIZE_out1(12)) fu_kruskalF_28880_30809 (.out1(out_ui_plus_expr_FU_16_16_16_155_i0_fu_kruskalF_28880_30809), .in1(out_ui_rshift_expr_FU_16_0_16_164_i3_fu_kruskalF_28880_30804), .in2(out_reg_49_reg_49));
  ui_lshift_expr_FU #(.BITSIZE_in1(12), .BITSIZE_in2(2), .BITSIZE_out1(14), .PRECISION(32)) fu_kruskalF_28880_30813 (.out1(out_ui_lshift_expr_FU_16_0_16_148_i7_fu_kruskalF_28880_30813), .in1(out_ui_plus_expr_FU_16_16_16_155_i0_fu_kruskalF_28880_30809), .in2(out_const_8));
  ui_rshift_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(32)) fu_kruskalF_28880_30821 (.out1(out_ui_rshift_expr_FU_16_0_16_165_i0_fu_kruskalF_28880_30821), .in1(out_ui_lshift_expr_FU_16_0_16_149_i0_fu_kruskalF_28880_30507), .in2(out_const_8));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_kruskalF_28880_30825 (.out1(out_ui_rshift_expr_FU_8_0_8_167_i0_fu_kruskalF_28880_30825), .in1(out_UUdata_converter_FU_94_i0_fu_kruskalF_28880_29971), .in2(out_const_8));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(6), .BITSIZE_out1(9)) fu_kruskalF_28880_30828 (.out1(out_ui_plus_expr_FU_8_8_8_160_i5_fu_kruskalF_28880_30828), .in1(out_ui_rshift_expr_FU_16_0_16_165_i0_fu_kruskalF_28880_30821), .in2(out_ui_rshift_expr_FU_8_0_8_167_i0_fu_kruskalF_28880_30825));
  ui_lshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(11), .PRECISION(32)) fu_kruskalF_28880_30832 (.out1(out_ui_lshift_expr_FU_16_0_16_149_i4_fu_kruskalF_28880_30832), .in1(out_ui_plus_expr_FU_8_8_8_160_i5_fu_kruskalF_28880_30828), .in2(out_const_8));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_kruskalF_28880_30837 (.out1(out_ui_bit_and_expr_FU_8_0_8_143_i0_fu_kruskalF_28880_30837), .in1(out_UUdata_converter_FU_94_i0_fu_kruskalF_28880_29971), .in2(out_const_12));
  ui_rshift_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(2), .BITSIZE_out1(11), .PRECISION(32)) fu_kruskalF_28880_30842 (.out1(out_ui_rshift_expr_FU_16_0_16_165_i1_fu_kruskalF_28880_30842), .in1(out_ui_lshift_expr_FU_16_0_16_149_i1_fu_kruskalF_28880_30513), .in2(out_const_8));
  ui_plus_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(6), .BITSIZE_out1(11)) fu_kruskalF_28880_30847 (.out1(out_ui_plus_expr_FU_16_16_16_155_i1_fu_kruskalF_28880_30847), .in1(out_reg_54_reg_54), .in2(out_reg_52_reg_52));
  ui_lshift_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(2), .BITSIZE_out1(13), .PRECISION(32)) fu_kruskalF_28880_30850 (.out1(out_ui_lshift_expr_FU_16_0_16_149_i5_fu_kruskalF_28880_30850), .in1(out_ui_plus_expr_FU_16_16_16_155_i1_fu_kruskalF_28880_30847), .in2(out_const_8));
  ui_rshift_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(32)) fu_kruskalF_28880_30858 (.out1(out_ui_rshift_expr_FU_16_0_16_165_i2_fu_kruskalF_28880_30858), .in1(out_ui_lshift_expr_FU_16_0_16_149_i2_fu_kruskalF_28880_30536), .in2(out_const_8));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_kruskalF_28880_30861 (.out1(out_ui_rshift_expr_FU_8_0_8_167_i1_fu_kruskalF_28880_30861), .in1(out_UUdata_converter_FU_115_i0_fu_kruskalF_28880_29951), .in2(out_const_8));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(6), .BITSIZE_out1(9)) fu_kruskalF_28880_30863 (.out1(out_ui_plus_expr_FU_8_8_8_160_i6_fu_kruskalF_28880_30863), .in1(out_ui_rshift_expr_FU_16_0_16_165_i2_fu_kruskalF_28880_30858), .in2(out_ui_rshift_expr_FU_8_0_8_167_i1_fu_kruskalF_28880_30861));
  ui_lshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(11), .PRECISION(32)) fu_kruskalF_28880_30866 (.out1(out_ui_lshift_expr_FU_16_0_16_149_i6_fu_kruskalF_28880_30866), .in1(out_reg_66_reg_66), .in2(out_const_8));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_kruskalF_28880_30869 (.out1(out_ui_bit_and_expr_FU_8_0_8_143_i1_fu_kruskalF_28880_30869), .in1(out_UUdata_converter_FU_115_i0_fu_kruskalF_28880_29951), .in2(out_const_12));
  ui_rshift_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(2), .BITSIZE_out1(11), .PRECISION(32)) fu_kruskalF_28880_30873 (.out1(out_ui_rshift_expr_FU_16_0_16_165_i3_fu_kruskalF_28880_30873), .in1(out_ui_lshift_expr_FU_16_0_16_149_i3_fu_kruskalF_28880_30542), .in2(out_const_8));
  ui_plus_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(6), .BITSIZE_out1(11)) fu_kruskalF_28880_30878 (.out1(out_ui_plus_expr_FU_16_16_16_155_i2_fu_kruskalF_28880_30878), .in1(out_ui_rshift_expr_FU_16_0_16_165_i3_fu_kruskalF_28880_30873), .in2(out_reg_65_reg_65));
  ui_lshift_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(2), .BITSIZE_out1(13), .PRECISION(32)) fu_kruskalF_28880_30881 (.out1(out_ui_lshift_expr_FU_16_0_16_149_i7_fu_kruskalF_28880_30881), .in1(out_ui_plus_expr_FU_16_16_16_155_i2_fu_kruskalF_28880_30878), .in2(out_const_8));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) fu_kruskalF_28880_30944 (.out1(out_multi_read_cond_FU_39_i0_fu_kruskalF_28880_30944), .in1({out_reg_22_reg_22, out_reg_21_reg_21}));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_kruskalF_28880_30947 (.out1(out_truth_not_expr_FU_1_1_140_i0_fu_kruskalF_28880_30947), .in1(out_ui_ne_expr_FU_8_0_8_152_i0_fu_kruskalF_28880_30681));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_kruskalF_28880_30950 (.out1(out_truth_and_expr_FU_1_1_1_139_i0_fu_kruskalF_28880_30950), .in1(out_reg_17_reg_17), .in2(out_truth_not_expr_FU_1_1_140_i0_fu_kruskalF_28880_30947));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) fu_kruskalF_28880_30951 (.out1(out_multi_read_cond_FU_88_i0_fu_kruskalF_28880_30951), .in1({out_reg_40_reg_40, out_reg_39_reg_39}));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_kruskalF_28880_30954 (.out1(out_truth_not_expr_FU_1_1_140_i1_fu_kruskalF_28880_30954), .in1(out_ui_ne_expr_FU_8_0_8_152_i1_fu_kruskalF_28880_30691));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_kruskalF_28880_30957 (.out1(out_truth_and_expr_FU_1_1_1_139_i1_fu_kruskalF_28880_30957), .in1(out_reg_36_reg_36), .in2(out_truth_not_expr_FU_1_1_140_i1_fu_kruskalF_28880_30954));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
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
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in2_2886711_0 (.out1(sig_in_bus_mergerproxy_in2_2886711_0), .in1(sig_in_vector_bus_mergerproxy_in2_2886711_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in2_2886812_0 (.out1(sig_in_bus_mergerproxy_in2_2886812_0), .in1(sig_in_vector_bus_mergerproxy_in2_2886812_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in2_2886913_0 (.out1(sig_in_bus_mergerproxy_in2_2886913_0), .in1(sig_in_vector_bus_mergerproxy_in2_2886913_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in2_2887014_0 (.out1(sig_in_bus_mergerproxy_in2_2887014_0), .in1(sig_in_vector_bus_mergerproxy_in2_2887014_0));
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
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_25_i0_fu_kruskalF_28880_29869), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_26_i0_fu_kruskalF_28880_30053), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_21_i0_fu_kruskalF_28880_30345), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_22_i0_fu_kruskalF_28880_30361), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_24_i0_fu_kruskalF_28880_30386), .wenable(wrenable_reg_12));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_MUX_151_reg_13_0_0_0), .wenable(wrenable_reg_13));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_MUX_152_reg_14_0_0_0), .wenable(wrenable_reg_14));
  register_SE #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_MUX_153_reg_15_0_0_0), .wenable(wrenable_reg_15));
  register_SE #(.BITSIZE_in1(11), .BITSIZE_out1(11)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_ui_bit_ior_concat_expr_FU_145_i0_fu_kruskalF_28880_30253), .wenable(wrenable_reg_16));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_153_i0_fu_kruskalF_28880_30683), .wenable(wrenable_reg_17));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_0_8_138_i0_fu_kruskalF_28880_29780), .wenable(wrenable_reg_18));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_19 (.out1(out_reg_19_reg_19), .clock(clock), .reset(reset), .in1(out_MUX_157_reg_19_0_0_0), .wenable(wrenable_reg_19));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_12_i0_fu_kruskalF_28880_30192), .wenable(wrenable_reg_2));
  register_STD #(.BITSIZE_in1(15), .BITSIZE_out1(15)) reg_20 (.out1(out_reg_20_reg_20), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_161_i2_fu_kruskalF_28880_30207), .wenable(wrenable_reg_20));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_21 (.out1(out_reg_21_reg_21), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_152_i0_fu_kruskalF_28880_30681), .wenable(wrenable_reg_21));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_22 (.out1(out_reg_22_reg_22), .clock(clock), .reset(reset), .in1(out_truth_and_expr_FU_1_1_1_139_i0_fu_kruskalF_28880_30950), .wenable(wrenable_reg_22));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_23 (.out1(out_reg_23_reg_23), .clock(clock), .reset(reset), .in1(out_ne_expr_FU_8_0_8_136_i1_fu_kruskalF_28880_30210), .wenable(wrenable_reg_23));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_24 (.out1(out_reg_24_reg_24), .clock(clock), .reset(reset), .in1(out_gt_expr_FU_8_0_8_133_i0_fu_kruskalF_28880_30687), .wenable(wrenable_reg_24));
  register_SE #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_25 (.out1(out_reg_25_reg_25), .clock(clock), .reset(reset), .in1(out_MUX_164_reg_25_0_0_0), .wenable(wrenable_reg_25));
  register_STD #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_26 (.out1(out_reg_26_reg_26), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_42_i0_fu_kruskalF_28880_29818), .wenable(wrenable_reg_26));
  register_STD #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_27 (.out1(out_reg_27_reg_27), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_163_i0_fu_kruskalF_28880_30275), .wenable(wrenable_reg_27));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_28 (.out1(out_reg_28_reg_28), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_153_i1_fu_kruskalF_28880_30685), .wenable(wrenable_reg_28));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_29 (.out1(out_reg_29_reg_29), .clock(clock), .reset(reset), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_array_28862_0), .wenable(wrenable_reg_29));
  register_SE #(.BITSIZE_in1(13), .BITSIZE_out1(13)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_14_i0_fu_kruskalF_28880_30217), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_30 (.out1(out_reg_30_reg_30), .clock(clock), .reset(reset), .in1(out_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_array_28864_0), .wenable(wrenable_reg_30));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_31 (.out1(out_reg_31_reg_31), .clock(clock), .reset(reset), .in1(out_MUX_171_reg_31_0_0_0), .wenable(wrenable_reg_31));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_32 (.out1(out_reg_32_reg_32), .clock(clock), .reset(reset), .in1(out_MUX_172_reg_32_0_0_0), .wenable(wrenable_reg_32));
  register_SE #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_33 (.out1(out_reg_33_reg_33), .clock(clock), .reset(reset), .in1(out_MUX_173_reg_33_0_0_0), .wenable(wrenable_reg_33));
  register_SE #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_34 (.out1(out_reg_34_reg_34), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_68_i0_fu_kruskalF_28880_30005), .wenable(wrenable_reg_34));
  register_SE #(.BITSIZE_in1(11), .BITSIZE_out1(11)) reg_35 (.out1(out_reg_35_reg_35), .clock(clock), .reset(reset), .in1(out_ui_bit_ior_concat_expr_FU_145_i1_fu_kruskalF_28880_30342), .wenable(wrenable_reg_35));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_36 (.out1(out_reg_36_reg_36), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_154_i0_fu_kruskalF_28880_30689), .wenable(wrenable_reg_36));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_37 (.out1(out_reg_37_reg_37), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_157_i1_fu_kruskalF_28880_30007), .wenable(wrenable_reg_37));
  register_STD #(.BITSIZE_in1(15), .BITSIZE_out1(15)) reg_38 (.out1(out_reg_38_reg_38), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_161_i3_fu_kruskalF_28880_30308), .wenable(wrenable_reg_38));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_39 (.out1(out_reg_39_reg_39), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_152_i1_fu_kruskalF_28880_30691), .wenable(wrenable_reg_39));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_15_i0_fu_kruskalF_28880_30256), .wenable(wrenable_reg_4));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_40 (.out1(out_reg_40_reg_40), .clock(clock), .reset(reset), .in1(out_truth_and_expr_FU_1_1_1_139_i1_fu_kruskalF_28880_30957), .wenable(wrenable_reg_40));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_41 (.out1(out_reg_41_reg_41), .clock(clock), .reset(reset), .in1(out_le_expr_FU_8_8_8_134_i0_fu_kruskalF_28880_29903), .wenable(wrenable_reg_41));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_42 (.out1(out_reg_42_reg_42), .clock(clock), .reset(reset), .in1(out_ne_expr_FU_8_0_8_136_i0_fu_kruskalF_28880_29998), .wenable(wrenable_reg_42));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_43 (.out1(out_reg_43_reg_43), .clock(clock), .reset(reset), .in1(out_PROXY_CTRLN_9_i0_PROXY_CTRLN_9_i0), .wenable(wrenable_reg_43));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_44 (.out1(out_reg_44_reg_44), .clock(clock), .reset(reset), .in1(out_MUX_185_reg_44_0_0_0), .wenable(wrenable_reg_44));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_45 (.out1(out_reg_45_reg_45), .clock(clock), .reset(reset), .in1(out_MUX_186_reg_45_0_0_0), .wenable(wrenable_reg_45));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_46 (.out1(out_reg_46_reg_46), .clock(clock), .reset(reset), .in1(out_MUX_187_reg_46_0_0_0), .wenable(wrenable_reg_46));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_47 (.out1(out_reg_47_reg_47), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_93_i0_fu_kruskalF_28880_30376), .wenable(wrenable_reg_47));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_48 (.out1(out_reg_48_reg_48), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_91_i0_fu_kruskalF_28880_30415), .wenable(wrenable_reg_48));
  register_STD #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_49 (.out1(out_reg_49_reg_49), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_8_0_8_166_i4_fu_kruskalF_28880_30792), .wenable(wrenable_reg_49));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_16_i0_fu_kruskalF_28880_30264), .wenable(wrenable_reg_5));
  register_STD #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_50 (.out1(out_reg_50_reg_50), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_8_8_160_i4_fu_kruskalF_28880_30794), .wenable(wrenable_reg_50));
  register_STD #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_51 (.out1(out_reg_51_reg_51), .clock(clock), .reset(reset), .in1(out_ui_bit_and_expr_FU_8_0_8_142_i2_fu_kruskalF_28880_30800), .wenable(wrenable_reg_51));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_52 (.out1(out_reg_52_reg_52), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_8_0_8_167_i0_fu_kruskalF_28880_30825), .wenable(wrenable_reg_52));
  register_SE #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_53 (.out1(out_reg_53_reg_53), .clock(clock), .reset(reset), .in1(out_ui_bit_and_expr_FU_8_0_8_143_i0_fu_kruskalF_28880_30837), .wenable(wrenable_reg_53));
  register_SE #(.BITSIZE_in1(11), .BITSIZE_out1(11)) reg_54 (.out1(out_reg_54_reg_54), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_16_0_16_165_i1_fu_kruskalF_28880_30842), .wenable(wrenable_reg_54));
  register_STD #(.BITSIZE_in1(15), .BITSIZE_out1(15)) reg_55 (.out1(out_reg_55_reg_55), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_92_i0_fu_kruskalF_28880_30373), .wenable(wrenable_reg_55));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_56 (.out1(out_reg_56_reg_56), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_163_i1_fu_kruskalF_28880_30395), .wenable(wrenable_reg_56));
  register_STD #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_57 (.out1(out_reg_57_reg_57), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_163_i2_fu_kruskalF_28880_30408), .wenable(wrenable_reg_57));
  register_STD #(.BITSIZE_in1(16), .BITSIZE_out1(16)) reg_58 (.out1(out_reg_58_reg_58), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_161_i4_fu_kruskalF_28880_30382), .wenable(wrenable_reg_58));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_59 (.out1(out_reg_59_reg_59), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_95_i0_fu_kruskalF_28880_30016), .wenable(wrenable_reg_59));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_17_i0_fu_kruskalF_28880_30272), .wenable(wrenable_reg_6));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_60 (.out1(out_reg_60_reg_60), .clock(clock), .reset(reset), .in1(out_PROXY_CTRLN_8_i1_PROXY_CTRLN_8_i0), .wenable(wrenable_reg_60));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_61 (.out1(out_reg_61_reg_61), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_96_i0_fu_kruskalF_28880_30052), .wenable(wrenable_reg_61));
  register_STD #(.BITSIZE_in1(14), .BITSIZE_out1(14)) reg_62 (.out1(out_reg_62_reg_62), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_114_i0_fu_kruskalF_28880_30519), .wenable(wrenable_reg_62));
  register_STD #(.BITSIZE_in1(15), .BITSIZE_out1(15)) reg_63 (.out1(out_reg_63_reg_63), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_161_i6_fu_kruskalF_28880_30528), .wenable(wrenable_reg_63));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_64 (.out1(out_reg_64_reg_64), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_118_i0_fu_kruskalF_28880_30555), .wenable(wrenable_reg_64));
  register_STD #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_65 (.out1(out_reg_65_reg_65), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_8_0_8_167_i1_fu_kruskalF_28880_30861), .wenable(wrenable_reg_65));
  register_STD #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_66 (.out1(out_reg_66_reg_66), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_8_8_160_i6_fu_kruskalF_28880_30863), .wenable(wrenable_reg_66));
  register_STD #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_67 (.out1(out_reg_67_reg_67), .clock(clock), .reset(reset), .in1(out_ui_bit_and_expr_FU_8_0_8_143_i1_fu_kruskalF_28880_30869), .wenable(wrenable_reg_67));
  register_STD #(.BITSIZE_in1(14), .BITSIZE_out1(14)) reg_68 (.out1(out_reg_68_reg_68), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_117_i0_fu_kruskalF_28880_30552), .wenable(wrenable_reg_68));
  register_STD #(.BITSIZE_in1(15), .BITSIZE_out1(15)) reg_69 (.out1(out_reg_69_reg_69), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_161_i7_fu_kruskalF_28880_30561), .wenable(wrenable_reg_69));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_18_i0_fu_kruskalF_28880_30283), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_70 (.out1(out_reg_70_reg_70), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_108_i0_fu_kruskalF_28880_29861), .wenable(wrenable_reg_70));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_71 (.out1(out_reg_71_reg_71), .clock(clock), .reset(reset), .in1(out_MUX_215_reg_71_0_0_0), .wenable(wrenable_reg_71));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_72 (.out1(out_reg_72_reg_72), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_109_i0_fu_kruskalF_28880_30062), .wenable(wrenable_reg_72));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_73 (.out1(out_reg_73_reg_73), .clock(clock), .reset(reset), .in1(out_PROXY_CTRLN_8_i0_PROXY_CTRLN_8_i0), .wenable(wrenable_reg_73));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_74 (.out1(out_reg_74_reg_74), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_159_i0_fu_kruskalF_28880_30039), .wenable(wrenable_reg_74));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_75 (.out1(out_reg_75_reg_75), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_128_i0_fu_kruskalF_28880_30073), .wenable(wrenable_reg_75));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_19_i0_fu_kruskalF_28880_30291), .wenable(wrenable_reg_8));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_20_i0_fu_kruskalF_28880_30295), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerMout_Wdata_ram0_ (.out1(Mout_Wdata_ram), .in1(sig_out_bus_mergerMout_Wdata_ram0_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerMout_addr_ram1_ (.out1(Mout_addr_ram), .in1(sig_out_bus_mergerMout_addr_ram1_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerMout_data_ram_size2_ (.out1(Mout_data_ram_size), .in1(sig_out_bus_mergerMout_data_ram_size2_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_oe_ram3_ (.out1(Mout_oe_ram), .in1(sig_out_bus_mergerMout_oe_ram3_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerMout_we_ram4_ (.out1(Mout_we_ram), .in1(sig_out_bus_mergerMout_we_ram4_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy5_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy5_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram6_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram6_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288677_ (.out1(proxy_in1_28867), .in1(sig_out_bus_mergerproxy_in1_288677_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288688_ (.out1(proxy_in1_28868), .in1(sig_out_bus_mergerproxy_in1_288688_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288699_ (.out1(proxy_in1_28869), .in1(sig_out_bus_mergerproxy_in1_288699_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_2887010_ (.out1(proxy_in1_28870), .in1(sig_out_bus_mergerproxy_in1_2887010_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2886711_ (.out1(proxy_in2_28867), .in1(sig_out_bus_mergerproxy_in2_2886711_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2886812_ (.out1(proxy_in2_28868), .in1(sig_out_bus_mergerproxy_in2_2886812_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2886913_ (.out1(proxy_in2_28869), .in1(sig_out_bus_mergerproxy_in2_2886913_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_2887014_ (.out1(proxy_in2_28870), .in1(sig_out_bus_mergerproxy_in2_2887014_));
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
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(11), .BITSIZE_out1(14), .LSB_PARAMETER(0)) ui_pointer_plus_expr_FU_16_16_16_161_i8 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_161_i8_ui_pointer_plus_expr_FU_16_16_16_161_i8), .in1(out_reg_3_reg_3), .in2(out_reg_16_reg_16));
  // io-signal post fix
  assign OUT_CONDITION_kruskalF_28880_29821 = out_read_cond_FU_43_i0_fu_kruskalF_28880_29821;
  assign OUT_CONDITION_kruskalF_28880_29835 = out_read_cond_FU_44_i0_fu_kruskalF_28880_29835;
  assign OUT_CONDITION_kruskalF_28880_30048 = out_read_cond_FU_97_i0_fu_kruskalF_28880_30048;
  assign OUT_CONDITION_kruskalF_28880_30063 = out_read_cond_FU_110_i0_fu_kruskalF_28880_30063;
  assign OUT_CONDITION_kruskalF_28880_30069 = out_read_cond_FU_112_i0_fu_kruskalF_28880_30069;
  assign OUT_CONDITION_kruskalF_28880_30074 = out_read_cond_FU_129_i0_fu_kruskalF_28880_30074;
  assign OUT_MULTIIF_kruskalF_28880_30944 = out_multi_read_cond_FU_39_i0_fu_kruskalF_28880_30944;
  assign OUT_MULTIIF_kruskalF_28880_30951 = out_multi_read_cond_FU_88_i0_fu_kruskalF_28880_30951;

endmodule

// FSM based controller description for kruskalF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_kruskalF(done_port, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE, fuselector_BMEMORY_CTRLN_130_i0_LOAD, fuselector_BMEMORY_CTRLN_130_i0_STORE, selector_MUX_151_reg_13_0_0_0, selector_MUX_152_reg_14_0_0_0, selector_MUX_153_reg_15_0_0_0, selector_MUX_157_reg_19_0_0_0, selector_MUX_164_reg_25_0_0_0, selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0, selector_MUX_171_reg_31_0_0_0, selector_MUX_172_reg_32_0_0_0, selector_MUX_173_reg_33_0_0_0, selector_MUX_185_reg_44_0_0_0, selector_MUX_186_reg_45_0_0_0, selector_MUX_187_reg_46_0_0_0, selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0, selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0, selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1, selector_MUX_215_reg_71_0_0_0, selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0, selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0, selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0, selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1, selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0, selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1, selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0, selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0, selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1, fuselector_PROXY_CTRLN_6_i0_LOAD, fuselector_PROXY_CTRLN_6_i0_STORE, fuselector_PROXY_CTRLN_7_i0_LOAD, fuselector_PROXY_CTRLN_7_i0_STORE, fuselector_PROXY_CTRLN_8_i0_LOAD, fuselector_PROXY_CTRLN_8_i0_STORE, fuselector_PROXY_CTRLN_8_i1_LOAD, fuselector_PROXY_CTRLN_8_i1_STORE, fuselector_PROXY_CTRLN_9_i0_LOAD, fuselector_PROXY_CTRLN_9_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_29, wrenable_reg_3, wrenable_reg_30, wrenable_reg_31, wrenable_reg_32, wrenable_reg_33, wrenable_reg_34, wrenable_reg_35, wrenable_reg_36, wrenable_reg_37, wrenable_reg_38, wrenable_reg_39, wrenable_reg_4, wrenable_reg_40, wrenable_reg_41, wrenable_reg_42, wrenable_reg_43, wrenable_reg_44, wrenable_reg_45, wrenable_reg_46, wrenable_reg_47, wrenable_reg_48, wrenable_reg_49, wrenable_reg_5, wrenable_reg_50, wrenable_reg_51, wrenable_reg_52, wrenable_reg_53, wrenable_reg_54, wrenable_reg_55, wrenable_reg_56, wrenable_reg_57, wrenable_reg_58, wrenable_reg_59, wrenable_reg_6, wrenable_reg_60, wrenable_reg_61, wrenable_reg_62, wrenable_reg_63, wrenable_reg_64, wrenable_reg_65, wrenable_reg_66, wrenable_reg_67, wrenable_reg_68, wrenable_reg_69, wrenable_reg_7, wrenable_reg_70, wrenable_reg_71, wrenable_reg_72, wrenable_reg_73, wrenable_reg_74, wrenable_reg_75, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_kruskalF_28880_29821, OUT_CONDITION_kruskalF_28880_29835, OUT_CONDITION_kruskalF_28880_30048, OUT_CONDITION_kruskalF_28880_30063, OUT_CONDITION_kruskalF_28880_30069, OUT_CONDITION_kruskalF_28880_30074, OUT_MULTIIF_kruskalF_28880_30944, OUT_MULTIIF_kruskalF_28880_30951, clock, reset, start_port);
  // IN
  input OUT_CONDITION_kruskalF_28880_29821;
  input OUT_CONDITION_kruskalF_28880_29835;
  input OUT_CONDITION_kruskalF_28880_30048;
  input OUT_CONDITION_kruskalF_28880_30063;
  input OUT_CONDITION_kruskalF_28880_30069;
  input OUT_CONDITION_kruskalF_28880_30074;
  input [1:0] OUT_MULTIIF_kruskalF_28880_30944;
  input [1:0] OUT_MULTIIF_kruskalF_28880_30951;
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
  output fuselector_BMEMORY_CTRLN_130_i0_LOAD;
  output fuselector_BMEMORY_CTRLN_130_i0_STORE;
  output selector_MUX_151_reg_13_0_0_0;
  output selector_MUX_152_reg_14_0_0_0;
  output selector_MUX_153_reg_15_0_0_0;
  output selector_MUX_157_reg_19_0_0_0;
  output selector_MUX_164_reg_25_0_0_0;
  output selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0;
  output selector_MUX_171_reg_31_0_0_0;
  output selector_MUX_172_reg_32_0_0_0;
  output selector_MUX_173_reg_33_0_0_0;
  output selector_MUX_185_reg_44_0_0_0;
  output selector_MUX_186_reg_45_0_0_0;
  output selector_MUX_187_reg_46_0_0_0;
  output selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0;
  output selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0;
  output selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1;
  output selector_MUX_215_reg_71_0_0_0;
  output selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0;
  output selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0;
  output selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0;
  output selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1;
  output selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0;
  output selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1;
  output selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0;
  output selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0;
  output selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1;
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
  parameter [47:0] S_0 = 48'b000000000000000000000000000000000000000000000001,
    S_1 = 48'b000000000000000000000000000000000000000000000010,
    S_2 = 48'b000000000000000000000000000000000000000000000100,
    S_3 = 48'b000000000000000000000000000000000000000000001000,
    S_4 = 48'b000000000000000000000000000000000000000000010000,
    S_5 = 48'b000000000000000000000000000000000000000000100000,
    S_6 = 48'b000000000000000000000000000000000000000001000000,
    S_7 = 48'b000000000000000000000000000000000000000010000000,
    S_8 = 48'b000000000000000000000000000000000000000100000000,
    S_9 = 48'b000000000000000000000000000000000000001000000000,
    S_10 = 48'b000000000000000000000000000000000000010000000000,
    S_46 = 48'b010000000000000000000000000000000000000000000000,
    S_11 = 48'b000000000000000000000000000000000000100000000000,
    S_12 = 48'b000000000000000000000000000000000001000000000000,
    S_13 = 48'b000000000000000000000000000000000010000000000000,
    S_14 = 48'b000000000000000000000000000000000100000000000000,
    S_15 = 48'b000000000000000000000000000000001000000000000000,
    S_16 = 48'b000000000000000000000000000000010000000000000000,
    S_17 = 48'b000000000000000000000000000000100000000000000000,
    S_18 = 48'b000000000000000000000000000001000000000000000000,
    S_19 = 48'b000000000000000000000000000010000000000000000000,
    S_20 = 48'b000000000000000000000000000100000000000000000000,
    S_21 = 48'b000000000000000000000000001000000000000000000000,
    S_22 = 48'b000000000000000000000000010000000000000000000000,
    S_23 = 48'b000000000000000000000000100000000000000000000000,
    S_24 = 48'b000000000000000000000001000000000000000000000000,
    S_25 = 48'b000000000000000000000010000000000000000000000000,
    S_35 = 48'b000000000000100000000000000000000000000000000000,
    S_36 = 48'b000000000001000000000000000000000000000000000000,
    S_37 = 48'b000000000010000000000000000000000000000000000000,
    S_38 = 48'b000000000100000000000000000000000000000000000000,
    S_39 = 48'b000000001000000000000000000000000000000000000000,
    S_40 = 48'b000000010000000000000000000000000000000000000000,
    S_41 = 48'b000000100000000000000000000000000000000000000000,
    S_42 = 48'b000001000000000000000000000000000000000000000000,
    S_26 = 48'b000000000000000000000100000000000000000000000000,
    S_27 = 48'b000000000000000000001000000000000000000000000000,
    S_28 = 48'b000000000000000000010000000000000000000000000000,
    S_29 = 48'b000000000000000000100000000000000000000000000000,
    S_30 = 48'b000000000000000001000000000000000000000000000000,
    S_31 = 48'b000000000000000010000000000000000000000000000000,
    S_32 = 48'b000000000000000100000000000000000000000000000000,
    S_33 = 48'b000000000000001000000000000000000000000000000000,
    S_34 = 48'b000000000000010000000000000000000000000000000000,
    S_43 = 48'b000010000000000000000000000000000000000000000000,
    S_44 = 48'b000100000000000000000000000000000000000000000000,
    S_45 = 48'b001000000000000000000000000000000000000000000000,
    S_47 = 48'b100000000000000000000000000000000000000000000000;
  reg [47:0] _present_state, _next_state;
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
  reg fuselector_BMEMORY_CTRLN_130_i0_LOAD;
  reg fuselector_BMEMORY_CTRLN_130_i0_STORE;
  reg selector_MUX_151_reg_13_0_0_0;
  reg selector_MUX_152_reg_14_0_0_0;
  reg selector_MUX_153_reg_15_0_0_0;
  reg selector_MUX_157_reg_19_0_0_0;
  reg selector_MUX_164_reg_25_0_0_0;
  reg selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0;
  reg selector_MUX_171_reg_31_0_0_0;
  reg selector_MUX_172_reg_32_0_0_0;
  reg selector_MUX_173_reg_33_0_0_0;
  reg selector_MUX_185_reg_44_0_0_0;
  reg selector_MUX_186_reg_45_0_0_0;
  reg selector_MUX_187_reg_46_0_0_0;
  reg selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0;
  reg selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0;
  reg selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1;
  reg selector_MUX_215_reg_71_0_0_0;
  reg selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0;
  reg selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0;
  reg selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0;
  reg selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1;
  reg selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0;
  reg selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1;
  reg selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0;
  reg selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0;
  reg selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1;
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
    fuselector_BMEMORY_CTRLN_130_i0_LOAD = 1'b0;
    fuselector_BMEMORY_CTRLN_130_i0_STORE = 1'b0;
    selector_MUX_151_reg_13_0_0_0 = 1'b0;
    selector_MUX_152_reg_14_0_0_0 = 1'b0;
    selector_MUX_153_reg_15_0_0_0 = 1'b0;
    selector_MUX_157_reg_19_0_0_0 = 1'b0;
    selector_MUX_164_reg_25_0_0_0 = 1'b0;
    selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0 = 1'b0;
    selector_MUX_171_reg_31_0_0_0 = 1'b0;
    selector_MUX_172_reg_32_0_0_0 = 1'b0;
    selector_MUX_173_reg_33_0_0_0 = 1'b0;
    selector_MUX_185_reg_44_0_0_0 = 1'b0;
    selector_MUX_186_reg_45_0_0_0 = 1'b0;
    selector_MUX_187_reg_46_0_0_0 = 1'b0;
    selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 = 1'b0;
    selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0 = 1'b0;
    selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1 = 1'b0;
    selector_MUX_215_reg_71_0_0_0 = 1'b0;
    selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0 = 1'b0;
    selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0 = 1'b0;
    selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0 = 1'b0;
    selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1 = 1'b0;
    selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0 = 1'b0;
    selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1 = 1'b0;
    selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0 = 1'b0;
    selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0 = 1'b0;
    selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1 = 1'b0;
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
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_12 = 1'b1;
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
          selector_MUX_151_reg_13_0_0_0 = 1'bX;
          selector_MUX_152_reg_14_0_0_0 = 1'bX;
          selector_MUX_153_reg_15_0_0_0 = 1'bX;
          selector_MUX_157_reg_19_0_0_0 = 1'bX;
          selector_MUX_164_reg_25_0_0_0 = 1'bX;
          selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0 = 1'bX;
          selector_MUX_171_reg_31_0_0_0 = 1'bX;
          selector_MUX_172_reg_32_0_0_0 = 1'bX;
          selector_MUX_173_reg_33_0_0_0 = 1'bX;
          selector_MUX_185_reg_44_0_0_0 = 1'bX;
          selector_MUX_186_reg_45_0_0_0 = 1'bX;
          selector_MUX_187_reg_46_0_0_0 = 1'bX;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 = 1'bX;
          selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0 = 1'bX;
          selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1 = 1'bX;
          selector_MUX_215_reg_71_0_0_0 = 1'bX;
          selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0 = 1'bX;
          selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0 = 1'bX;
          selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0 = 1'bX;
          selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1 = 1'bX;
          selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0 = 1'bX;
          selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1 = 1'bX;
          selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0 = 1'bX;
          selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0 = 1'bX;
          selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1 = 1'bX;
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
          selector_MUX_151_reg_13_0_0_0 = 1'b1;
          selector_MUX_152_reg_14_0_0_0 = 1'b1;
          selector_MUX_153_reg_15_0_0_0 = 1'b1;
          wrenable_reg_13 = 1'b1;
          wrenable_reg_14 = 1'b1;
          wrenable_reg_15 = 1'b1;
          _next_state = S_2;
        end
      S_2 :
        begin
          selector_MUX_157_reg_19_0_0_0 = 1'b1;
          wrenable_reg_15 = 1'b1;
          wrenable_reg_16 = 1'b1;
          wrenable_reg_17 = 1'b1;
          wrenable_reg_19 = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          wrenable_reg_18 = 1'b1;
          wrenable_reg_19 = 1'b1;
          wrenable_reg_20 = 1'b1;
          wrenable_reg_21 = 1'b1;
          wrenable_reg_22 = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1 = 1'b1;
          fuselector_PROXY_CTRLN_9_i0_LOAD = 1'b1;
          _next_state = S_5;
        end
      S_5 :
        begin
          wrenable_reg_23 = 1'b1;
          _next_state = S_6;
        end
      S_6 :
        begin
          wrenable_reg_13 = 1'b1;
          wrenable_reg_14 = 1'b1;
          if (OUT_MULTIIF_kruskalF_28880_30944[0] == 1'b1)
            begin
              _next_state = S_3;
            end
          else if (OUT_MULTIIF_kruskalF_28880_30944[1] == 1'b1)
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
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE = 1'b1;
          selector_MUX_164_reg_25_0_0_0 = 1'b1;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_6_i0_STORE = 1'b1;
          fuselector_PROXY_CTRLN_7_i0_STORE = 1'b1;
          wrenable_reg_24 = 1'b1;
          wrenable_reg_25 = 1'b1;
          _next_state = S_8;
        end
      S_8 :
        begin
          wrenable_reg_25 = 1'b1;
          wrenable_reg_26 = 1'b1;
          wrenable_reg_27 = 1'b1;
          wrenable_reg_28 = 1'b1;
          _next_state = S_9;
        end
      S_9 :
        begin
          fuselector_PROXY_CTRLN_8_i1_STORE = 1'b1;
          if (OUT_CONDITION_kruskalF_28880_29821 == 1'b1)
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
          selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1 = 1'b1;
          fuselector_PROXY_CTRLN_7_i0_STORE = 1'b1;
          if (OUT_CONDITION_kruskalF_28880_29835 == 1'b1)
            begin
              _next_state = S_11;
            end
          else
            begin
              _next_state = S_46;
              done_port = 1'b1;
            end
        end
      S_46 :
        begin
          _next_state = S_0;
        end
      S_11 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD = 1'b1;
          _next_state = S_12;
        end
      S_12 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD = 1'b1;
          wrenable_reg_29 = 1'b1;
          wrenable_reg_30 = 1'b1;
          _next_state = S_13;
        end
      S_13 :
        begin
          selector_MUX_173_reg_33_0_0_0 = 1'b1;
          selector_MUX_185_reg_44_0_0_0 = 1'b1;
          selector_MUX_186_reg_45_0_0_0 = 1'b1;
          selector_MUX_187_reg_46_0_0_0 = 1'b1;
          wrenable_reg_33 = 1'b1;
          wrenable_reg_44 = 1'b1;
          wrenable_reg_45 = 1'b1;
          wrenable_reg_46 = 1'b1;
          _next_state = S_14;
        end
      S_14 :
        begin
          selector_MUX_172_reg_32_0_0_0 = 1'b1;
          wrenable_reg_31 = 1'b1;
          wrenable_reg_32 = 1'b1;
          wrenable_reg_33 = 1'b1;
          wrenable_reg_34 = 1'b1;
          wrenable_reg_35 = 1'b1;
          wrenable_reg_36 = 1'b1;
          _next_state = S_15;
        end
      S_15 :
        begin
          wrenable_reg_37 = 1'b1;
          wrenable_reg_38 = 1'b1;
          wrenable_reg_39 = 1'b1;
          wrenable_reg_40 = 1'b1;
          _next_state = S_16;
        end
      S_16 :
        begin
          fuselector_PROXY_CTRLN_9_i0_LOAD = 1'b1;
          _next_state = S_17;
        end
      S_17 :
        begin
          wrenable_reg_41 = 1'b1;
          wrenable_reg_42 = 1'b1;
          wrenable_reg_43 = 1'b1;
          _next_state = S_18;
        end
      S_18 :
        begin
          selector_MUX_171_reg_31_0_0_0 = 1'b1;
          wrenable_reg_31 = 1'b1;
          wrenable_reg_32 = 1'b1;
          wrenable_reg_44 = 1'b1;
          wrenable_reg_45 = 1'b1;
          wrenable_reg_46 = 1'b1;
          if (OUT_MULTIIF_kruskalF_28880_30951[0] == 1'b1)
            begin
              _next_state = S_15;
            end
          else if (OUT_MULTIIF_kruskalF_28880_30951[1] == 1'b1)
            begin
              _next_state = S_14;
              selector_MUX_171_reg_31_0_0_0 = 1'b0;
              wrenable_reg_31 = 1'b0;
              wrenable_reg_32 = 1'b0;
            end
          else
            begin
              _next_state = S_19;
              selector_MUX_171_reg_31_0_0_0 = 1'b0;
              wrenable_reg_31 = 1'b0;
              wrenable_reg_32 = 1'b0;
            end
        end
      S_19 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE = 1'b1;
          selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0 = 1'b1;
          selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0 = 1'b1;
          _next_state = S_20;
        end
      S_20 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD = 1'b1;
          _next_state = S_21;
        end
      S_21 :
        begin
          wrenable_reg_47 = 1'b1;
          wrenable_reg_48 = 1'b1;
          wrenable_reg_49 = 1'b1;
          wrenable_reg_50 = 1'b1;
          wrenable_reg_51 = 1'b1;
          wrenable_reg_52 = 1'b1;
          wrenable_reg_53 = 1'b1;
          wrenable_reg_54 = 1'b1;
          _next_state = S_22;
        end
      S_22 :
        begin
          wrenable_reg_55 = 1'b1;
          wrenable_reg_56 = 1'b1;
          wrenable_reg_57 = 1'b1;
          _next_state = S_23;
        end
      S_23 :
        begin
          selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_8_i0_LOAD = 1'b1;
          fuselector_PROXY_CTRLN_8_i1_LOAD = 1'b1;
          wrenable_reg_58 = 1'b1;
          _next_state = S_24;
        end
      S_24 :
        begin
          selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_9_i0_STORE = 1'b1;
          wrenable_reg_59 = 1'b1;
          wrenable_reg_60 = 1'b1;
          wrenable_reg_61 = 1'b1;
          wrenable_reg_73 = 1'b1;
          _next_state = S_25;
        end
      S_25 :
        begin
          if (OUT_CONDITION_kruskalF_28880_30048 == 1'b1)
            begin
              _next_state = S_26;
            end
          else
            begin
              _next_state = S_35;
            end
        end
      S_35 :
        begin
          wrenable_reg_62 = 1'b1;
          _next_state = S_36;
        end
      S_36 :
        begin
          wrenable_reg_63 = 1'b1;
          _next_state = S_37;
        end
      S_37 :
        begin
          fuselector_BMEMORY_CTRLN_130_i0_STORE = 1'b1;
          _next_state = S_38;
        end
      S_38 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD = 1'b1;
          _next_state = S_39;
        end
      S_39 :
        begin
          wrenable_reg_64 = 1'b1;
          wrenable_reg_65 = 1'b1;
          wrenable_reg_66 = 1'b1;
          wrenable_reg_67 = 1'b1;
          _next_state = S_40;
        end
      S_40 :
        begin
          wrenable_reg_68 = 1'b1;
          _next_state = S_41;
        end
      S_41 :
        begin
          wrenable_reg_69 = 1'b1;
          _next_state = S_42;
        end
      S_42 :
        begin
          fuselector_BMEMORY_CTRLN_130_i0_STORE = 1'b1;
          selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0 = 1'b1;
          _next_state = S_43;
        end
      S_26 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE = 1'b1;
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE = 1'b1;
          selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0 = 1'b1;
          selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1 = 1'b1;
          selector_MUX_215_reg_71_0_0_0 = 1'b1;
          wrenable_reg_71 = 1'b1;
          _next_state = S_27;
        end
      S_27 :
        begin
          selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1 = 1'b1;
          fuselector_PROXY_CTRLN_8_i0_LOAD = 1'b1;
          wrenable_reg_70 = 1'b1;
          wrenable_reg_71 = 1'b1;
          _next_state = S_28;
        end
      S_28 :
        begin
          wrenable_reg_72 = 1'b1;
          _next_state = S_29;
        end
      S_29 :
        begin
          if (OUT_CONDITION_kruskalF_28880_30063 == 1'b1)
            begin
              _next_state = S_30;
            end
          else
            begin
              _next_state = S_33;
            end
        end
      S_30 :
        begin
          fuselector_PROXY_CTRLN_8_i0_LOAD = 1'b1;
          _next_state = S_31;
        end
      S_31 :
        begin
          wrenable_reg_73 = 1'b1;
          _next_state = S_32;
        end
      S_32 :
        begin
          selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_8_i0_STORE = 1'b1;
          _next_state = S_33;
        end
      S_33 :
        begin
          if (OUT_CONDITION_kruskalF_28880_30069 == 1'b1)
            begin
              _next_state = S_27;
            end
          else
            begin
              _next_state = S_34;
            end
        end
      S_34 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE = 1'b1;
          _next_state = S_43;
        end
      S_43 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD = 1'b1;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_7_i0_LOAD = 1'b1;
          _next_state = S_44;
        end
      S_44 :
        begin
          wrenable_reg_74 = 1'b1;
          wrenable_reg_75 = 1'b1;
          _next_state = S_45;
        end
      S_45 :
        begin
          selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_7_i0_STORE = 1'b1;
          if (OUT_CONDITION_kruskalF_28880_30074 == 1'b1)
            begin
              _next_state = S_11;
            end
          else
            begin
              _next_state = S_47;
              done_port = 1'b1;
            end
        end
      S_47 :
        begin
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_151_reg_13_0_0_0 = 1'bX;
          selector_MUX_152_reg_14_0_0_0 = 1'bX;
          selector_MUX_153_reg_15_0_0_0 = 1'bX;
          selector_MUX_157_reg_19_0_0_0 = 1'bX;
          selector_MUX_164_reg_25_0_0_0 = 1'bX;
          selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0 = 1'bX;
          selector_MUX_171_reg_31_0_0_0 = 1'bX;
          selector_MUX_172_reg_32_0_0_0 = 1'bX;
          selector_MUX_173_reg_33_0_0_0 = 1'bX;
          selector_MUX_185_reg_44_0_0_0 = 1'bX;
          selector_MUX_186_reg_45_0_0_0 = 1'bX;
          selector_MUX_187_reg_46_0_0_0 = 1'bX;
          selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0 = 1'bX;
          selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0 = 1'bX;
          selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1 = 1'bX;
          selector_MUX_215_reg_71_0_0_0 = 1'bX;
          selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0 = 1'bX;
          selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0 = 1'bX;
          selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0 = 1'bX;
          selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1 = 1'bX;
          selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0 = 1'bX;
          selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1 = 1'bX;
          selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0 = 1'bX;
          selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0 = 1'bX;
          selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1 = 1'bX;
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
  parameter MEM_var_28859_28880=2560, MEM_var_28861_28880=3072, MEM_var_28862_28880=3584, MEM_var_28864_28880=4096, MEM_var_28865_28880=4608, MEM_var_28866_28880=5120, MEM_var_28867_28882=512, MEM_var_28868_28882=1024, MEM_var_28869_28882=1536, MEM_var_28870_28882=2048;
  // IN
  input clock;
  input reset;
  input start_port;
  input [31:0] a;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [25:0] S_addr_ram;
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
  input [25:0] Min_addr_ram;
  input [15:0] Min_Wdata_ram;
  input [7:0] Min_data_ram_size;
  // OUT
  output done_port;
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [15:0] proxy_in1_28867;
  output [25:0] proxy_in2_28867;
  output [7:0] proxy_in3_28867;
  output [1:0] proxy_sel_LOAD_28867;
  output [1:0] proxy_sel_STORE_28867;
  output [15:0] proxy_in1_28868;
  output [25:0] proxy_in2_28868;
  output [7:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [15:0] proxy_in1_28869;
  output [25:0] proxy_in2_28869;
  output [7:0] proxy_in3_28869;
  output [1:0] proxy_sel_LOAD_28869;
  output [1:0] proxy_sel_STORE_28869;
  output [15:0] proxy_in1_28870;
  output [25:0] proxy_in2_28870;
  output [7:0] proxy_in3_28870;
  output [1:0] proxy_sel_LOAD_28870;
  output [1:0] proxy_sel_STORE_28870;
  output [1:0] Mout_oe_ram;
  output [1:0] Mout_we_ram;
  output [25:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  // Component and signal declarations
  wire OUT_CONDITION_kruskalF_28880_29821;
  wire OUT_CONDITION_kruskalF_28880_29835;
  wire OUT_CONDITION_kruskalF_28880_30048;
  wire OUT_CONDITION_kruskalF_28880_30063;
  wire OUT_CONDITION_kruskalF_28880_30069;
  wire OUT_CONDITION_kruskalF_28880_30074;
  wire [1:0] OUT_MULTIIF_kruskalF_28880_30944;
  wire [1:0] OUT_MULTIIF_kruskalF_28880_30951;
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
  wire fuselector_BMEMORY_CTRLN_130_i0_LOAD;
  wire fuselector_BMEMORY_CTRLN_130_i0_STORE;
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
  wire selector_MUX_151_reg_13_0_0_0;
  wire selector_MUX_152_reg_14_0_0_0;
  wire selector_MUX_153_reg_15_0_0_0;
  wire selector_MUX_157_reg_19_0_0_0;
  wire selector_MUX_164_reg_25_0_0_0;
  wire selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0;
  wire selector_MUX_171_reg_31_0_0_0;
  wire selector_MUX_172_reg_32_0_0_0;
  wire selector_MUX_173_reg_33_0_0_0;
  wire selector_MUX_185_reg_44_0_0_0;
  wire selector_MUX_186_reg_45_0_0_0;
  wire selector_MUX_187_reg_46_0_0_0;
  wire selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0;
  wire selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0;
  wire selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1;
  wire selector_MUX_215_reg_71_0_0_0;
  wire selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0;
  wire selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0;
  wire selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0;
  wire selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1;
  wire selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0;
  wire selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1;
  wire selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0;
  wire selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0;
  wire selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1;
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
  
  controller_kruskalF Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE), .fuselector_BMEMORY_CTRLN_130_i0_LOAD(fuselector_BMEMORY_CTRLN_130_i0_LOAD), .fuselector_BMEMORY_CTRLN_130_i0_STORE(fuselector_BMEMORY_CTRLN_130_i0_STORE), .selector_MUX_151_reg_13_0_0_0(selector_MUX_151_reg_13_0_0_0), .selector_MUX_152_reg_14_0_0_0(selector_MUX_152_reg_14_0_0_0), .selector_MUX_153_reg_15_0_0_0(selector_MUX_153_reg_15_0_0_0), .selector_MUX_157_reg_19_0_0_0(selector_MUX_157_reg_19_0_0_0), .selector_MUX_164_reg_25_0_0_0(selector_MUX_164_reg_25_0_0_0), .selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0(selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0), .selector_MUX_171_reg_31_0_0_0(selector_MUX_171_reg_31_0_0_0), .selector_MUX_172_reg_32_0_0_0(selector_MUX_172_reg_32_0_0_0), .selector_MUX_173_reg_33_0_0_0(selector_MUX_173_reg_33_0_0_0), .selector_MUX_185_reg_44_0_0_0(selector_MUX_185_reg_44_0_0_0), .selector_MUX_186_reg_45_0_0_0(selector_MUX_186_reg_45_0_0_0), .selector_MUX_187_reg_46_0_0_0(selector_MUX_187_reg_46_0_0_0), .selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0), .selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0(selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0), .selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1(selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1), .selector_MUX_215_reg_71_0_0_0(selector_MUX_215_reg_71_0_0_0), .selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0(selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0), .selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0(selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0), .selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0(selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0), .selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1(selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1), .selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0(selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0), .selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1(selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1), .selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0(selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0), .selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0(selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0), .selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1(selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1), .fuselector_PROXY_CTRLN_6_i0_LOAD(fuselector_PROXY_CTRLN_6_i0_LOAD), .fuselector_PROXY_CTRLN_6_i0_STORE(fuselector_PROXY_CTRLN_6_i0_STORE), .fuselector_PROXY_CTRLN_7_i0_LOAD(fuselector_PROXY_CTRLN_7_i0_LOAD), .fuselector_PROXY_CTRLN_7_i0_STORE(fuselector_PROXY_CTRLN_7_i0_STORE), .fuselector_PROXY_CTRLN_8_i0_LOAD(fuselector_PROXY_CTRLN_8_i0_LOAD), .fuselector_PROXY_CTRLN_8_i0_STORE(fuselector_PROXY_CTRLN_8_i0_STORE), .fuselector_PROXY_CTRLN_8_i1_LOAD(fuselector_PROXY_CTRLN_8_i1_LOAD), .fuselector_PROXY_CTRLN_8_i1_STORE(fuselector_PROXY_CTRLN_8_i1_STORE), .fuselector_PROXY_CTRLN_9_i0_LOAD(fuselector_PROXY_CTRLN_9_i0_LOAD), .fuselector_PROXY_CTRLN_9_i0_STORE(fuselector_PROXY_CTRLN_9_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_29(wrenable_reg_29), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_30(wrenable_reg_30), .wrenable_reg_31(wrenable_reg_31), .wrenable_reg_32(wrenable_reg_32), .wrenable_reg_33(wrenable_reg_33), .wrenable_reg_34(wrenable_reg_34), .wrenable_reg_35(wrenable_reg_35), .wrenable_reg_36(wrenable_reg_36), .wrenable_reg_37(wrenable_reg_37), .wrenable_reg_38(wrenable_reg_38), .wrenable_reg_39(wrenable_reg_39), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_40(wrenable_reg_40), .wrenable_reg_41(wrenable_reg_41), .wrenable_reg_42(wrenable_reg_42), .wrenable_reg_43(wrenable_reg_43), .wrenable_reg_44(wrenable_reg_44), .wrenable_reg_45(wrenable_reg_45), .wrenable_reg_46(wrenable_reg_46), .wrenable_reg_47(wrenable_reg_47), .wrenable_reg_48(wrenable_reg_48), .wrenable_reg_49(wrenable_reg_49), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_50(wrenable_reg_50), .wrenable_reg_51(wrenable_reg_51), .wrenable_reg_52(wrenable_reg_52), .wrenable_reg_53(wrenable_reg_53), .wrenable_reg_54(wrenable_reg_54), .wrenable_reg_55(wrenable_reg_55), .wrenable_reg_56(wrenable_reg_56), .wrenable_reg_57(wrenable_reg_57), .wrenable_reg_58(wrenable_reg_58), .wrenable_reg_59(wrenable_reg_59), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_60(wrenable_reg_60), .wrenable_reg_61(wrenable_reg_61), .wrenable_reg_62(wrenable_reg_62), .wrenable_reg_63(wrenable_reg_63), .wrenable_reg_64(wrenable_reg_64), .wrenable_reg_65(wrenable_reg_65), .wrenable_reg_66(wrenable_reg_66), .wrenable_reg_67(wrenable_reg_67), .wrenable_reg_68(wrenable_reg_68), .wrenable_reg_69(wrenable_reg_69), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_70(wrenable_reg_70), .wrenable_reg_71(wrenable_reg_71), .wrenable_reg_72(wrenable_reg_72), .wrenable_reg_73(wrenable_reg_73), .wrenable_reg_74(wrenable_reg_74), .wrenable_reg_75(wrenable_reg_75), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_kruskalF_28880_29821(OUT_CONDITION_kruskalF_28880_29821), .OUT_CONDITION_kruskalF_28880_29835(OUT_CONDITION_kruskalF_28880_29835), .OUT_CONDITION_kruskalF_28880_30048(OUT_CONDITION_kruskalF_28880_30048), .OUT_CONDITION_kruskalF_28880_30063(OUT_CONDITION_kruskalF_28880_30063), .OUT_CONDITION_kruskalF_28880_30069(OUT_CONDITION_kruskalF_28880_30069), .OUT_CONDITION_kruskalF_28880_30074(OUT_CONDITION_kruskalF_28880_30074), .OUT_MULTIIF_kruskalF_28880_30944(OUT_MULTIIF_kruskalF_28880_30944), .OUT_MULTIIF_kruskalF_28880_30951(OUT_MULTIIF_kruskalF_28880_30951), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_kruskalF #(.MEM_var_28859_28880(MEM_var_28859_28880), .MEM_var_28861_28880(MEM_var_28861_28880), .MEM_var_28862_28880(MEM_var_28862_28880), .MEM_var_28864_28880(MEM_var_28864_28880), .MEM_var_28865_28880(MEM_var_28865_28880), .MEM_var_28866_28880(MEM_var_28866_28880), .MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28869_28882(MEM_var_28869_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .proxy_in1_28867(proxy_in1_28867), .proxy_in2_28867(proxy_in2_28867), .proxy_in3_28867(proxy_in3_28867), .proxy_sel_LOAD_28867(proxy_sel_LOAD_28867), .proxy_sel_STORE_28867(proxy_sel_STORE_28867), .proxy_in1_28868(proxy_in1_28868), .proxy_in2_28868(proxy_in2_28868), .proxy_in3_28868(proxy_in3_28868), .proxy_sel_LOAD_28868(proxy_sel_LOAD_28868), .proxy_sel_STORE_28868(proxy_sel_STORE_28868), .proxy_in1_28869(proxy_in1_28869), .proxy_in2_28869(proxy_in2_28869), .proxy_in3_28869(proxy_in3_28869), .proxy_sel_LOAD_28869(proxy_sel_LOAD_28869), .proxy_sel_STORE_28869(proxy_sel_STORE_28869), .proxy_in1_28870(proxy_in1_28870), .proxy_in2_28870(proxy_in2_28870), .proxy_in3_28870(proxy_in3_28870), .proxy_sel_LOAD_28870(proxy_sel_LOAD_28870), .proxy_sel_STORE_28870(proxy_sel_STORE_28870), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_CONDITION_kruskalF_28880_29821(OUT_CONDITION_kruskalF_28880_29821), .OUT_CONDITION_kruskalF_28880_29835(OUT_CONDITION_kruskalF_28880_29835), .OUT_CONDITION_kruskalF_28880_30048(OUT_CONDITION_kruskalF_28880_30048), .OUT_CONDITION_kruskalF_28880_30063(OUT_CONDITION_kruskalF_28880_30063), .OUT_CONDITION_kruskalF_28880_30069(OUT_CONDITION_kruskalF_28880_30069), .OUT_CONDITION_kruskalF_28880_30074(OUT_CONDITION_kruskalF_28880_30074), .OUT_MULTIIF_kruskalF_28880_30944(OUT_MULTIIF_kruskalF_28880_30944), .OUT_MULTIIF_kruskalF_28880_30951(OUT_MULTIIF_kruskalF_28880_30951), .clock(clock), .reset(reset), .in_port_a(a), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28867(proxy_out1_28867), .proxy_out1_28868(proxy_out1_28868), .proxy_out1_28869(proxy_out1_28869), .proxy_out1_28870(proxy_out1_28870), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_3_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_STORE), .fuselector_BMEMORY_CTRLN_130_i0_LOAD(fuselector_BMEMORY_CTRLN_130_i0_LOAD), .fuselector_BMEMORY_CTRLN_130_i0_STORE(fuselector_BMEMORY_CTRLN_130_i0_STORE), .selector_MUX_151_reg_13_0_0_0(selector_MUX_151_reg_13_0_0_0), .selector_MUX_152_reg_14_0_0_0(selector_MUX_152_reg_14_0_0_0), .selector_MUX_153_reg_15_0_0_0(selector_MUX_153_reg_15_0_0_0), .selector_MUX_157_reg_19_0_0_0(selector_MUX_157_reg_19_0_0_0), .selector_MUX_164_reg_25_0_0_0(selector_MUX_164_reg_25_0_0_0), .selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0(selector_MUX_16_ARRAY_1D_STD_BRAM_NN_SDS_BUS_4_i0_0_0_0), .selector_MUX_171_reg_31_0_0_0(selector_MUX_171_reg_31_0_0_0), .selector_MUX_172_reg_32_0_0_0(selector_MUX_172_reg_32_0_0_0), .selector_MUX_173_reg_33_0_0_0(selector_MUX_173_reg_33_0_0_0), .selector_MUX_185_reg_44_0_0_0(selector_MUX_185_reg_44_0_0_0), .selector_MUX_186_reg_45_0_0_0(selector_MUX_186_reg_45_0_0_0), .selector_MUX_187_reg_46_0_0_0(selector_MUX_187_reg_46_0_0_0), .selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0(selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0), .selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0(selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_0), .selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1(selector_MUX_20_ARRAY_1D_STD_BRAM_NN_SDS_BUS_5_i0_0_0_1), .selector_MUX_215_reg_71_0_0_0(selector_MUX_215_reg_71_0_0_0), .selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0(selector_MUX_25_BMEMORY_CTRLN_130_i0_1_0_0), .selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0(selector_MUX_4_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_0_0_0), .selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0(selector_MUX_50_PROXY_CTRLN_7_i0_0_0_0), .selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1(selector_MUX_50_PROXY_CTRLN_7_i0_0_0_1), .selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0(selector_MUX_55_PROXY_CTRLN_8_i0_1_0_0), .selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1(selector_MUX_55_PROXY_CTRLN_8_i0_1_0_1), .selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0(selector_MUX_59_PROXY_CTRLN_8_i1_1_0_0), .selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0(selector_MUX_63_PROXY_CTRLN_9_i0_1_0_0), .selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1(selector_MUX_63_PROXY_CTRLN_9_i0_1_0_1), .fuselector_PROXY_CTRLN_6_i0_LOAD(fuselector_PROXY_CTRLN_6_i0_LOAD), .fuselector_PROXY_CTRLN_6_i0_STORE(fuselector_PROXY_CTRLN_6_i0_STORE), .fuselector_PROXY_CTRLN_7_i0_LOAD(fuselector_PROXY_CTRLN_7_i0_LOAD), .fuselector_PROXY_CTRLN_7_i0_STORE(fuselector_PROXY_CTRLN_7_i0_STORE), .fuselector_PROXY_CTRLN_8_i0_LOAD(fuselector_PROXY_CTRLN_8_i0_LOAD), .fuselector_PROXY_CTRLN_8_i0_STORE(fuselector_PROXY_CTRLN_8_i0_STORE), .fuselector_PROXY_CTRLN_8_i1_LOAD(fuselector_PROXY_CTRLN_8_i1_LOAD), .fuselector_PROXY_CTRLN_8_i1_STORE(fuselector_PROXY_CTRLN_8_i1_STORE), .fuselector_PROXY_CTRLN_9_i0_LOAD(fuselector_PROXY_CTRLN_9_i0_LOAD), .fuselector_PROXY_CTRLN_9_i0_STORE(fuselector_PROXY_CTRLN_9_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_29(wrenable_reg_29), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_30(wrenable_reg_30), .wrenable_reg_31(wrenable_reg_31), .wrenable_reg_32(wrenable_reg_32), .wrenable_reg_33(wrenable_reg_33), .wrenable_reg_34(wrenable_reg_34), .wrenable_reg_35(wrenable_reg_35), .wrenable_reg_36(wrenable_reg_36), .wrenable_reg_37(wrenable_reg_37), .wrenable_reg_38(wrenable_reg_38), .wrenable_reg_39(wrenable_reg_39), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_40(wrenable_reg_40), .wrenable_reg_41(wrenable_reg_41), .wrenable_reg_42(wrenable_reg_42), .wrenable_reg_43(wrenable_reg_43), .wrenable_reg_44(wrenable_reg_44), .wrenable_reg_45(wrenable_reg_45), .wrenable_reg_46(wrenable_reg_46), .wrenable_reg_47(wrenable_reg_47), .wrenable_reg_48(wrenable_reg_48), .wrenable_reg_49(wrenable_reg_49), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_50(wrenable_reg_50), .wrenable_reg_51(wrenable_reg_51), .wrenable_reg_52(wrenable_reg_52), .wrenable_reg_53(wrenable_reg_53), .wrenable_reg_54(wrenable_reg_54), .wrenable_reg_55(wrenable_reg_55), .wrenable_reg_56(wrenable_reg_56), .wrenable_reg_57(wrenable_reg_57), .wrenable_reg_58(wrenable_reg_58), .wrenable_reg_59(wrenable_reg_59), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_60(wrenable_reg_60), .wrenable_reg_61(wrenable_reg_61), .wrenable_reg_62(wrenable_reg_62), .wrenable_reg_63(wrenable_reg_63), .wrenable_reg_64(wrenable_reg_64), .wrenable_reg_65(wrenable_reg_65), .wrenable_reg_66(wrenable_reg_66), .wrenable_reg_67(wrenable_reg_67), .wrenable_reg_68(wrenable_reg_68), .wrenable_reg_69(wrenable_reg_69), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_70(wrenable_reg_70), .wrenable_reg_71(wrenable_reg_71), .wrenable_reg_72(wrenable_reg_72), .wrenable_reg_73(wrenable_reg_73), .wrenable_reg_74(wrenable_reg_74), .wrenable_reg_75(wrenable_reg_75), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
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
module datapath_make_non_oriented(clock, reset, proxy_out1_28867, proxy_in1_28867, proxy_in2_28867, proxy_in3_28867, proxy_sel_LOAD_28867, proxy_sel_STORE_28867, proxy_out1_28868, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, proxy_out1_28870, proxy_in1_28870, proxy_in2_28870, proxy_in3_28870, proxy_sel_LOAD_28870, proxy_sel_STORE_28870, selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0, selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1, selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0, selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1, selector_MUX_39_reg_10_0_0_0, selector_MUX_41_reg_12_0_0_0, selector_MUX_53_reg_6_0_0_0, selector_MUX_54_reg_7_0_0_0, selector_MUX_56_reg_9_0_0_0, fuselector_PROXY_CTRLN_0_i0_LOAD, fuselector_PROXY_CTRLN_0_i0_STORE, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_make_non_oriented_28874_29517, OUT_CONDITION_make_non_oriented_28874_29519);
  parameter MEM_var_28867_28882=512, MEM_var_28868_28882=1024, MEM_var_28870_28882=2048;
  // IN
  input clock;
  input reset;
  input [15:0] proxy_out1_28867;
  input [15:0] proxy_out1_28868;
  input [15:0] proxy_out1_28870;
  input selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0;
  input selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1;
  input selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0;
  input selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1;
  input selector_MUX_39_reg_10_0_0_0;
  input selector_MUX_41_reg_12_0_0_0;
  input selector_MUX_53_reg_6_0_0_0;
  input selector_MUX_54_reg_7_0_0_0;
  input selector_MUX_56_reg_9_0_0_0;
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
  output [15:0] proxy_in1_28867;
  output [25:0] proxy_in2_28867;
  output [7:0] proxy_in3_28867;
  output [1:0] proxy_sel_LOAD_28867;
  output [1:0] proxy_sel_STORE_28867;
  output [15:0] proxy_in1_28868;
  output [25:0] proxy_in2_28868;
  output [7:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [15:0] proxy_in1_28870;
  output [25:0] proxy_in2_28870;
  output [7:0] proxy_in3_28870;
  output [1:0] proxy_sel_LOAD_28870;
  output [1:0] proxy_sel_STORE_28870;
  output OUT_CONDITION_make_non_oriented_28874_29517;
  output OUT_CONDITION_make_non_oriented_28874_29519;
  // Component and signal declarations
  wire [7:0] null_out_signal_PROXY_CTRLN_0_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_0_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_0;
  wire [7:0] null_out_signal_PROXY_CTRLN_1_i0_out1_1;
  wire [7:0] null_out_signal_PROXY_CTRLN_2_i0_out1_1;
  wire [7:0] out_IUdata_converter_FU_24_i0_fu_make_non_oriented_28874_29491;
  wire [7:0] out_MUX_11_PROXY_CTRLN_2_i0_0_0_0;
  wire [7:0] out_MUX_11_PROXY_CTRLN_2_i0_0_0_1;
  wire [12:0] out_MUX_12_PROXY_CTRLN_2_i0_1_0_0;
  wire [12:0] out_MUX_12_PROXY_CTRLN_2_i0_1_0_1;
  wire [4:0] out_MUX_39_reg_10_0_0_0;
  wire [31:0] out_MUX_41_reg_12_0_0_0;
  wire [31:0] out_MUX_53_reg_6_0_0_0;
  wire [8:0] out_MUX_54_reg_7_0_0_0;
  wire [31:0] out_MUX_56_reg_9_0_0_0;
  wire [7:0] out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0;
  wire signed [7:0] out_UIdata_converter_FU_25_i0_fu_make_non_oriented_28874_29482;
  wire [7:0] out_UUdata_converter_FU_15_i0_fu_make_non_oriented_28874_29423;
  wire [11:0] out_UUdata_converter_FU_16_i0_fu_make_non_oriented_28874_29426;
  wire [8:0] out_UUdata_converter_FU_17_i0_fu_make_non_oriented_28874_30635;
  wire [4:0] out_UUdata_converter_FU_23_i0_fu_make_non_oriented_28874_29480;
  wire [11:0] out_UUdata_converter_FU_26_i0_fu_make_non_oriented_28874_29454;
  wire [12:0] out_UUdata_converter_FU_6_i0_fu_make_non_oriented_28874_29407;
  wire [12:0] out_UUdata_converter_FU_7_i0_fu_make_non_oriented_28874_29408;
  wire [7:0] out_UUdata_converter_FU_8_i0_fu_make_non_oriented_28874_29424;
  wire [10:0] out_addr_expr_FU_10_i0_fu_make_non_oriented_28874_30666;
  wire [12:0] out_addr_expr_FU_5_i0_fu_make_non_oriented_28874_30606;
  wire [9:0] out_addr_expr_FU_9_i0_fu_make_non_oriented_28874_30662;
  wire signed [7:0] out_cond_expr_FU_8_8_8_8_30_i0_fu_make_non_oriented_28874_29465;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [12:0] out_const_10;
  wire [9:0] out_const_11;
  wire [4:0] out_const_2;
  wire out_const_3;
  wire [4:0] out_const_4;
  wire [3:0] out_const_5;
  wire [10:0] out_const_6;
  wire [2:0] out_const_7;
  wire [5:0] out_const_8;
  wire [7:0] out_const_9;
  wire [12:0] out_conv_out_UUdata_converter_FU_16_i0_fu_make_non_oriented_28874_29426_12_13;
  wire [31:0] out_conv_out_const_10_13_32;
  wire [31:0] out_conv_out_const_11_10_32;
  wire [3:0] out_conv_out_const_2_5_4;
  wire [31:0] out_conv_out_const_6_11_32;
  wire [12:0] out_conv_out_reg_11_reg_11_12_13;
  wire [12:0] out_conv_out_reg_14_reg_14_12_13;
  wire [12:0] out_conv_out_reg_2_reg_2_10_13;
  wire [12:0] out_conv_out_reg_3_reg_3_11_13;
  wire [31:0] out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3_13_32;
  wire [31:0] out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_4_13_32;
  wire [8:0] out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_5_1_9;
  wire [4:0] out_conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_6_1_5;
  wire [7:0] out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_0;
  wire [7:0] out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_1;
  wire [7:0] out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_2;
  wire out_lt_expr_FU_8_0_8_31_i0_fu_make_non_oriented_28874_29474;
  wire out_read_cond_FU_27_i0_fu_make_non_oriented_28874_29517;
  wire out_read_cond_FU_28_i0_fu_make_non_oriented_28874_29519;
  wire [12:0] out_reg_0_reg_0;
  wire [4:0] out_reg_10_reg_10;
  wire [11:0] out_reg_11_reg_11;
  wire [31:0] out_reg_12_reg_12;
  wire out_reg_13_reg_13;
  wire [11:0] out_reg_14_reg_14;
  wire out_reg_15_reg_15;
  wire out_reg_16_reg_16;
  wire [7:0] out_reg_17_reg_17;
  wire [7:0] out_reg_18_reg_18;
  wire [7:0] out_reg_19_reg_19;
  wire [12:0] out_reg_1_reg_1;
  wire [9:0] out_reg_2_reg_2;
  wire [10:0] out_reg_3_reg_3;
  wire [1:0] out_reg_4_reg_4;
  wire [7:0] out_reg_5_reg_5;
  wire [31:0] out_reg_6_reg_6;
  wire [8:0] out_reg_7_reg_7;
  wire [8:0] out_reg_8_reg_8;
  wire [31:0] out_reg_9_reg_9;
  wire [12:0] out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3;
  wire [12:0] out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_4;
  wire [0:0] out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_5;
  wire [0:0] out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_6;
  wire [0:0] out_ui_bit_and_expr_FU_1_1_1_32_i0_fu_make_non_oriented_28874_29470;
  wire [5:0] out_ui_bit_and_expr_FU_8_0_8_33_i0_fu_make_non_oriented_28874_30903;
  wire [7:0] out_ui_bit_ior_concat_expr_FU_34_i0_fu_make_non_oriented_28874_29425;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_35_i0_fu_make_non_oriented_28874_30917;
  wire [7:0] out_ui_lshift_expr_FU_8_0_8_36_i0_fu_make_non_oriented_28874_30899;
  wire [1:0] out_ui_minus_expr_FU_8_8_8_37_i0_fu_make_non_oriented_28874_30896;
  wire out_ui_ne_expr_FU_32_32_32_38_i0_fu_make_non_oriented_28874_30707;
  wire out_ui_ne_expr_FU_8_0_8_39_i0_fu_make_non_oriented_28874_30705;
  wire out_ui_ne_expr_FU_8_8_8_40_i0_fu_make_non_oriented_28874_29476;
  wire [7:0] out_ui_negate_expr_FU_8_8_41_i0_fu_make_non_oriented_28874_29486;
  wire [9:0] out_ui_plus_expr_FU_16_16_16_42_i0_fu_make_non_oriented_28874_30638;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_43_i0_fu_make_non_oriented_28874_29463;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_44_i0_fu_make_non_oriented_28874_29502;
  wire [30:0] out_ui_plus_expr_FU_32_0_32_45_i0_fu_make_non_oriented_28874_30914;
  wire [4:0] out_ui_plus_expr_FU_8_0_8_46_i0_fu_make_non_oriented_28874_29448;
  wire [8:0] out_ui_plus_expr_FU_8_0_8_47_i0_fu_make_non_oriented_28874_29505;
  wire [12:0] out_ui_pointer_plus_expr_FU_16_0_16_48_i0_fu_make_non_oriented_28874_30614;
  wire [11:0] out_ui_pointer_plus_expr_FU_16_16_16_49_i0_fu_make_non_oriented_28874_30644;
  wire [30:0] out_ui_rshift_expr_FU_32_0_32_50_i0_fu_make_non_oriented_28874_30909;
  wire [1:0] out_ui_rshift_expr_FU_8_0_8_51_i0_fu_make_non_oriented_28874_30889;
  wire [1:0] out_ui_rshift_expr_FU_8_0_8_51_i1_fu_make_non_oriented_28874_30894;
  wire [7:0] out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_7;
  wire [15:0] sig_in_bus_mergerproxy_in1_288670_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288681_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288702_0;
  wire [25:0] sig_in_bus_mergerproxy_in2_288673_0;
  wire [25:0] sig_in_bus_mergerproxy_in2_288684_0;
  wire [25:0] sig_in_bus_mergerproxy_in2_288705_0;
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
  wire [25:0] sig_in_vector_bus_mergerproxy_in2_288673_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in2_288684_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in2_288705_0;
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
  wire [25:0] sig_out_bus_mergerproxy_in2_288673_;
  wire [25:0] sig_out_bus_mergerproxy_in2_288684_;
  wire [25:0] sig_out_bus_mergerproxy_in2_288705_;
  wire [7:0] sig_out_bus_mergerproxy_in3_288676_;
  wire [7:0] sig_out_bus_mergerproxy_in3_288687_;
  wire [7:0] sig_out_bus_mergerproxy_in3_288708_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_288679_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2886810_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_2887011_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886712_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2886813_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_2887014_;
  
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(13), .BITSIZE_out1(13)) ASSIGN_UNSIGNED_FU_u_assign_3 (.out1(out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3), .in1(out_UUdata_converter_FU_6_i0_fu_make_non_oriented_28874_29407));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(13), .BITSIZE_out1(13)) ASSIGN_UNSIGNED_FU_u_assign_4 (.out1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_4), .in1(out_UUdata_converter_FU_6_i0_fu_make_non_oriented_28874_29407));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_5 (.out1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_5), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_6 (.out1(out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_6), .in1(out_const_0));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_7 (.out1(out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_7), .in1(out_const_1));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_0 (.out1(out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_0), .in1(out_const_9));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_1), .in1(out_cond_expr_FU_8_8_8_8_30_i0_fu_make_non_oriented_28874_29465));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_2 (.out1(out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_2), .in1(out_reg_19_reg_19));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_11_PROXY_CTRLN_2_i0_0_0_0 (.out1(out_MUX_11_PROXY_CTRLN_2_i0_0_0_0), .sel(selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0), .in1(out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_0), .in2(out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_1));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_11_PROXY_CTRLN_2_i0_0_0_1 (.out1(out_MUX_11_PROXY_CTRLN_2_i0_0_0_1), .sel(selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1), .in1(out_iu_conv_conn_obj_6_IUdata_converter_FU_iu_conv_2), .in2(out_MUX_11_PROXY_CTRLN_2_i0_0_0_0));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_12_PROXY_CTRLN_2_i0_1_0_0 (.out1(out_MUX_12_PROXY_CTRLN_2_i0_1_0_0), .sel(selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0), .in1(out_conv_out_reg_14_reg_14_12_13), .in2(out_conv_out_reg_11_reg_11_12_13));
  MUX_GATE #(.BITSIZE_in1(13), .BITSIZE_in2(13), .BITSIZE_out1(13)) MUX_12_PROXY_CTRLN_2_i0_1_0_1 (.out1(out_MUX_12_PROXY_CTRLN_2_i0_1_0_1), .sel(selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1), .in1(out_conv_out_UUdata_converter_FU_16_i0_fu_make_non_oriented_28874_29426_12_13), .in2(out_MUX_12_PROXY_CTRLN_2_i0_1_0_0));
  MUX_GATE #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(5)) MUX_39_reg_10_0_0_0 (.out1(out_MUX_39_reg_10_0_0_0), .sel(selector_MUX_39_reg_10_0_0_0), .in1(out_conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_6_1_5), .in2(out_ui_plus_expr_FU_8_0_8_46_i0_fu_make_non_oriented_28874_29448));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_41_reg_12_0_0_0 (.out1(out_MUX_41_reg_12_0_0_0), .sel(selector_MUX_41_reg_12_0_0_0), .in1(out_reg_6_reg_6), .in2(out_ui_plus_expr_FU_32_0_32_43_i0_fu_make_non_oriented_28874_29463));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_53_reg_6_0_0_0 (.out1(out_MUX_53_reg_6_0_0_0), .sel(selector_MUX_53_reg_6_0_0_0), .in1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_4_13_32), .in2(out_ui_plus_expr_FU_32_0_32_44_i0_fu_make_non_oriented_28874_29502));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_54_reg_7_0_0_0 (.out1(out_MUX_54_reg_7_0_0_0), .sel(selector_MUX_54_reg_7_0_0_0), .in1(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_5_1_9), .in2(out_ui_plus_expr_FU_8_0_8_47_i0_fu_make_non_oriented_28874_29505));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_56_reg_9_0_0_0 (.out1(out_MUX_56_reg_9_0_0_0), .sel(selector_MUX_56_reg_9_0_0_0), .in1(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3_13_32), .in2(out_ui_lshift_expr_FU_32_0_32_35_i0_fu_make_non_oriented_28874_30917));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_0_i0 (.out1({null_out_signal_PROXY_CTRLN_0_i0_out1_1, null_out_signal_PROXY_CTRLN_0_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288670_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288673_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288676_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_288679_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886712_0), .in1({8'b00000000, out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_7}), .in2({13'b0000000000000, out_conv_out_reg_2_reg_2_10_13}), .in3({4'b0000, out_conv_out_const_2_5_4}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_0_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_0_i0_STORE}), .proxy_out1(proxy_out1_28867));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_1_i0 (.out1({null_out_signal_PROXY_CTRLN_1_i0_out1_1, null_out_signal_PROXY_CTRLN_1_i0_out1_0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288681_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288684_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288687_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2886810_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2886813_0), .in1({8'b00000000, out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_7}), .in2({13'b0000000000000, out_conv_out_reg_3_reg_3_11_13}), .in3({4'b0000, out_conv_out_const_2_5_4}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_1_i0_STORE}), .proxy_out1(proxy_out1_28868));
  PROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) PROXY_CTRLN_2_i0 (.out1({null_out_signal_PROXY_CTRLN_2_i0_out1_1, out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288702_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288705_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288708_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_2887011_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_2887014_0), .in1({8'b00000000, out_MUX_11_PROXY_CTRLN_2_i0_0_0_1}), .in2({13'b0000000000000, out_MUX_12_PROXY_CTRLN_2_i0_1_0_1}), .in3({4'b0000, out_conv_out_const_2_5_4}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_PROXY_CTRLN_2_i0_LOAD}), .sel_STORE({1'b0, fuselector_PROXY_CTRLN_2_i0_STORE}), .proxy_out1(proxy_out1_28870));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288670_ (.out1(sig_out_bus_mergerproxy_in1_288670_), .in1({sig_in_bus_mergerproxy_in1_288670_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288681_ (.out1(sig_out_bus_mergerproxy_in1_288681_), .in1({sig_in_bus_mergerproxy_in1_288681_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288702_ (.out1(sig_out_bus_mergerproxy_in1_288702_), .in1({sig_in_bus_mergerproxy_in1_288702_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in2_288673_ (.out1(sig_out_bus_mergerproxy_in2_288673_), .in1({sig_in_bus_mergerproxy_in2_288673_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in2_288684_ (.out1(sig_out_bus_mergerproxy_in2_288684_), .in1({sig_in_bus_mergerproxy_in2_288684_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in2_288705_ (.out1(sig_out_bus_mergerproxy_in2_288705_), .in1({sig_in_bus_mergerproxy_in2_288705_0}));
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
  constant_value #(.BITSIZE_out1(8), .value(8'b00010101)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(13), .value(MEM_var_28870_28882)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(10), .value(MEM_var_28867_28882)) const_11 (.out1(out_const_11));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(5), .value(5'b10101)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(4), .value(4'b1011)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(11), .value(MEM_var_28868_28882)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(3), .value(3'b110)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(6), .value(6'b111111)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(13)) conv_out_UUdata_converter_FU_16_i0_fu_make_non_oriented_28874_29426_12_13 (.out1(out_conv_out_UUdata_converter_FU_16_i0_fu_make_non_oriented_28874_29426_12_13), .in1(out_UUdata_converter_FU_16_i0_fu_make_non_oriented_28874_29426));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_const_10_13_32 (.out1(out_conv_out_const_10_13_32), .in1(out_const_10));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(32)) conv_out_const_11_10_32 (.out1(out_conv_out_const_11_10_32), .in1(out_const_11));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_2_5_4 (.out1(out_conv_out_const_2_5_4), .in1(out_const_2));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(32)) conv_out_const_6_11_32 (.out1(out_conv_out_const_6_11_32), .in1(out_const_6));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(13)) conv_out_reg_11_reg_11_12_13 (.out1(out_conv_out_reg_11_reg_11_12_13), .in1(out_reg_11_reg_11));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(13)) conv_out_reg_14_reg_14_12_13 (.out1(out_conv_out_reg_14_reg_14_12_13), .in1(out_reg_14_reg_14));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(13)) conv_out_reg_2_reg_2_10_13 (.out1(out_conv_out_reg_2_reg_2_10_13), .in1(out_reg_2_reg_2));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(13)) conv_out_reg_3_reg_3_11_13 (.out1(out_conv_out_reg_3_reg_3_11_13), .in1(out_reg_3_reg_3));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3_13_32 (.out1(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3_13_32), .in1(out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_3));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_4_13_32 (.out1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_4_13_32), .in1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_4));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(9)) conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_5_1_9 (.out1(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_5_1_9), .in1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_5));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(5)) conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_6_1_5 (.out1(out_conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_6_1_5), .in1(out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_6));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(13)) fu_make_non_oriented_28874_29407 (.out1(out_UUdata_converter_FU_6_i0_fu_make_non_oriented_28874_29407), .in1(out_addr_expr_FU_5_i0_fu_make_non_oriented_28874_30606));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(13)) fu_make_non_oriented_28874_29408 (.out1(out_UUdata_converter_FU_7_i0_fu_make_non_oriented_28874_29408), .in1(out_ui_pointer_plus_expr_FU_16_0_16_48_i0_fu_make_non_oriented_28874_30614));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_make_non_oriented_28874_29423 (.out1(out_UUdata_converter_FU_15_i0_fu_make_non_oriented_28874_29423), .in1(out_reg_6_reg_6));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(8)) fu_make_non_oriented_28874_29424 (.out1(out_UUdata_converter_FU_8_i0_fu_make_non_oriented_28874_29424), .in1(out_UUdata_converter_FU_6_i0_fu_make_non_oriented_28874_29407));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(6), .BITSIZE_in3(3), .BITSIZE_out1(8), .OFFSET_PARAMETER(6)) fu_make_non_oriented_28874_29425 (.out1(out_ui_bit_ior_concat_expr_FU_34_i0_fu_make_non_oriented_28874_29425), .in1(out_ui_lshift_expr_FU_8_0_8_36_i0_fu_make_non_oriented_28874_30899), .in2(out_ui_bit_and_expr_FU_8_0_8_33_i0_fu_make_non_oriented_28874_30903), .in3(out_const_7));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(12)) fu_make_non_oriented_28874_29426 (.out1(out_UUdata_converter_FU_16_i0_fu_make_non_oriented_28874_29426), .in1(out_reg_9_reg_9));
  ui_plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(1), .BITSIZE_out1(5)) fu_make_non_oriented_28874_29448 (.out1(out_ui_plus_expr_FU_8_0_8_46_i0_fu_make_non_oriented_28874_29448), .in1(out_reg_10_reg_10), .in2(out_const_3));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(12)) fu_make_non_oriented_28874_29454 (.out1(out_UUdata_converter_FU_26_i0_fu_make_non_oriented_28874_29454), .in1(out_reg_12_reg_12));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(32)) fu_make_non_oriented_28874_29463 (.out1(out_ui_plus_expr_FU_32_0_32_43_i0_fu_make_non_oriented_28874_29463), .in1(out_reg_12_reg_12), .in2(out_const_4));
  cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_make_non_oriented_28874_29465 (.out1(out_cond_expr_FU_8_8_8_8_30_i0_fu_make_non_oriented_28874_29465), .in1(out_reg_16_reg_16), .in2(out_reg_17_reg_17), .in3(out_reg_18_reg_18));
  ui_bit_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_non_oriented_28874_29470 (.out1(out_ui_bit_and_expr_FU_1_1_1_32_i0_fu_make_non_oriented_28874_29470), .in1(out_lt_expr_FU_8_0_8_31_i0_fu_make_non_oriented_28874_29474), .in2(out_reg_13_reg_13));
  lt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_non_oriented_28874_29474 (.out1(out_lt_expr_FU_8_0_8_31_i0_fu_make_non_oriented_28874_29474), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0), .in2(out_const_0));
  ui_ne_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_make_non_oriented_28874_29476 (.out1(out_ui_ne_expr_FU_8_8_8_40_i0_fu_make_non_oriented_28874_29476), .in1(out_UUdata_converter_FU_23_i0_fu_make_non_oriented_28874_29480), .in2(out_reg_5_reg_5));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(5)) fu_make_non_oriented_28874_29480 (.out1(out_UUdata_converter_FU_23_i0_fu_make_non_oriented_28874_29480), .in1(out_reg_10_reg_10));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_non_oriented_28874_29482 (.out1(out_UIdata_converter_FU_25_i0_fu_make_non_oriented_28874_29482), .in1(out_ui_negate_expr_FU_8_8_41_i0_fu_make_non_oriented_28874_29486));
  ui_negate_expr_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_non_oriented_28874_29486 (.out1(out_ui_negate_expr_FU_8_8_41_i0_fu_make_non_oriented_28874_29486), .in1(out_IUdata_converter_FU_24_i0_fu_make_non_oriented_28874_29491));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_non_oriented_28874_29491 (.out1(out_IUdata_converter_FU_24_i0_fu_make_non_oriented_28874_29491), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(32)) fu_make_non_oriented_28874_29502 (.out1(out_ui_plus_expr_FU_32_0_32_44_i0_fu_make_non_oriented_28874_29502), .in1(out_reg_6_reg_6), .in2(out_const_3));
  ui_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(5), .BITSIZE_out1(9)) fu_make_non_oriented_28874_29505 (.out1(out_ui_plus_expr_FU_8_0_8_47_i0_fu_make_non_oriented_28874_29505), .in1(out_reg_7_reg_7), .in2(out_const_4));
  read_cond_FU #(.BITSIZE_in1(1)) fu_make_non_oriented_28874_29517 (.out1(out_read_cond_FU_27_i0_fu_make_non_oriented_28874_29517), .in1(out_reg_15_reg_15));
  read_cond_FU #(.BITSIZE_in1(1)) fu_make_non_oriented_28874_29519 (.out1(out_read_cond_FU_28_i0_fu_make_non_oriented_28874_29519), .in1(out_ui_ne_expr_FU_32_32_32_38_i0_fu_make_non_oriented_28874_30707));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) fu_make_non_oriented_28874_30606 (.out1(out_addr_expr_FU_5_i0_fu_make_non_oriented_28874_30606), .in1(out_conv_out_const_10_13_32));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(5), .BITSIZE_out1(13), .LSB_PARAMETER(0)) fu_make_non_oriented_28874_30614 (.out1(out_ui_pointer_plus_expr_FU_16_0_16_48_i0_fu_make_non_oriented_28874_30614), .in1(out_addr_expr_FU_5_i0_fu_make_non_oriented_28874_30606), .in2(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(9)) fu_make_non_oriented_28874_30635 (.out1(out_UUdata_converter_FU_17_i0_fu_make_non_oriented_28874_30635), .in1(out_reg_7_reg_7));
  ui_plus_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(9), .BITSIZE_out1(10)) fu_make_non_oriented_28874_30638 (.out1(out_ui_plus_expr_FU_16_16_16_42_i0_fu_make_non_oriented_28874_30638), .in1(out_reg_10_reg_10), .in2(out_reg_8_reg_8));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(10), .BITSIZE_out1(12), .LSB_PARAMETER(0)) fu_make_non_oriented_28874_30644 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_49_i0_fu_make_non_oriented_28874_30644), .in1(out_reg_1_reg_1), .in2(out_ui_plus_expr_FU_16_16_16_42_i0_fu_make_non_oriented_28874_30638));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(10)) fu_make_non_oriented_28874_30662 (.out1(out_addr_expr_FU_9_i0_fu_make_non_oriented_28874_30662), .in1(out_conv_out_const_11_10_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) fu_make_non_oriented_28874_30666 (.out1(out_addr_expr_FU_10_i0_fu_make_non_oriented_28874_30666), .in1(out_conv_out_const_6_11_32));
  ui_ne_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(5), .BITSIZE_out1(1)) fu_make_non_oriented_28874_30705 (.out1(out_ui_ne_expr_FU_8_0_8_39_i0_fu_make_non_oriented_28874_30705), .in1(out_ui_plus_expr_FU_8_0_8_46_i0_fu_make_non_oriented_28874_29448), .in2(out_const_4));
  ui_ne_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(13), .BITSIZE_out1(1)) fu_make_non_oriented_28874_30707 (.out1(out_ui_ne_expr_FU_32_32_32_38_i0_fu_make_non_oriented_28874_30707), .in1(out_reg_6_reg_6), .in2(out_reg_0_reg_0));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(2), .PRECISION(8)) fu_make_non_oriented_28874_30889 (.out1(out_ui_rshift_expr_FU_8_0_8_51_i0_fu_make_non_oriented_28874_30889), .in1(out_UUdata_converter_FU_15_i0_fu_make_non_oriented_28874_29423), .in2(out_const_7));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(2), .PRECISION(8)) fu_make_non_oriented_28874_30894 (.out1(out_ui_rshift_expr_FU_8_0_8_51_i1_fu_make_non_oriented_28874_30894), .in1(out_UUdata_converter_FU_8_i0_fu_make_non_oriented_28874_29424), .in2(out_const_7));
  ui_minus_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_make_non_oriented_28874_30896 (.out1(out_ui_minus_expr_FU_8_8_8_37_i0_fu_make_non_oriented_28874_30896), .in1(out_ui_rshift_expr_FU_8_0_8_51_i0_fu_make_non_oriented_28874_30889), .in2(out_reg_4_reg_4));
  ui_lshift_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(3), .BITSIZE_out1(8), .PRECISION(8)) fu_make_non_oriented_28874_30899 (.out1(out_ui_lshift_expr_FU_8_0_8_36_i0_fu_make_non_oriented_28874_30899), .in1(out_ui_minus_expr_FU_8_8_8_37_i0_fu_make_non_oriented_28874_30896), .in2(out_const_7));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(6), .BITSIZE_out1(6)) fu_make_non_oriented_28874_30903 (.out1(out_ui_bit_and_expr_FU_8_0_8_33_i0_fu_make_non_oriented_28874_30903), .in1(out_UUdata_converter_FU_15_i0_fu_make_non_oriented_28874_29423), .in2(out_const_8));
  ui_rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(31), .PRECISION(32)) fu_make_non_oriented_28874_30909 (.out1(out_ui_rshift_expr_FU_32_0_32_50_i0_fu_make_non_oriented_28874_30909), .in1(out_reg_9_reg_9), .in2(out_const_3));
  ui_plus_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(4), .BITSIZE_out1(31)) fu_make_non_oriented_28874_30914 (.out1(out_ui_plus_expr_FU_32_0_32_45_i0_fu_make_non_oriented_28874_30914), .in1(out_ui_rshift_expr_FU_32_0_32_50_i0_fu_make_non_oriented_28874_30909), .in2(out_const_5));
  ui_lshift_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(1), .BITSIZE_out1(32), .PRECISION(32)) fu_make_non_oriented_28874_30917 (.out1(out_ui_lshift_expr_FU_32_0_32_35_i0_fu_make_non_oriented_28874_30917), .in1(out_ui_plus_expr_FU_32_0_32_45_i0_fu_make_non_oriented_28874_30914), .in2(out_const_3));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288670_0 (.out1(sig_in_bus_mergerproxy_in1_288670_0), .in1(sig_in_vector_bus_mergerproxy_in1_288670_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288681_0 (.out1(sig_in_bus_mergerproxy_in1_288681_0), .in1(sig_in_vector_bus_mergerproxy_in1_288681_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288702_0 (.out1(sig_in_bus_mergerproxy_in1_288702_0), .in1(sig_in_vector_bus_mergerproxy_in1_288702_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in2_288673_0 (.out1(sig_in_bus_mergerproxy_in2_288673_0), .in1(sig_in_vector_bus_mergerproxy_in2_288673_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in2_288684_0 (.out1(sig_in_bus_mergerproxy_in2_288684_0), .in1(sig_in_vector_bus_mergerproxy_in2_288684_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in2_288705_0 (.out1(sig_in_bus_mergerproxy_in2_288705_0), .in1(sig_in_vector_bus_mergerproxy_in2_288705_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_288676_0 (.out1(sig_in_bus_mergerproxy_in3_288676_0), .in1(sig_in_vector_bus_mergerproxy_in3_288676_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_288687_0 (.out1(sig_in_bus_mergerproxy_in3_288687_0), .in1(sig_in_vector_bus_mergerproxy_in3_288687_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_288708_0 (.out1(sig_in_bus_mergerproxy_in3_288708_0), .in1(sig_in_vector_bus_mergerproxy_in3_288708_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_288679_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_288679_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_288679_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2886810_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2886810_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2886810_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_2887011_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_2887011_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_2887011_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886712_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886712_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886712_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2886813_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2886813_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2886813_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_2887014_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_2887014_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_2887014_0));
  register_SE #(.BITSIZE_in1(13), .BITSIZE_out1(13)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_7_i0_fu_make_non_oriented_28874_29408), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(13), .BITSIZE_out1(13)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_5_i0_fu_make_non_oriented_28874_30606), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_MUX_39_reg_10_0_0_0), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(12), .BITSIZE_out1(12)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_26_i0_fu_make_non_oriented_28874_29454), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_MUX_41_reg_12_0_0_0), .wenable(wrenable_reg_12));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_8_8_40_i0_fu_make_non_oriented_28874_29476), .wenable(wrenable_reg_13));
  register_SE #(.BITSIZE_in1(12), .BITSIZE_out1(12)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_49_i0_fu_make_non_oriented_28874_30644), .wenable(wrenable_reg_14));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_39_i0_fu_make_non_oriented_28874_30705), .wenable(wrenable_reg_15));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_ui_bit_and_expr_FU_1_1_1_32_i0_fu_make_non_oriented_28874_29470), .wenable(wrenable_reg_16));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_25_i0_fu_make_non_oriented_28874_29482), .wenable(wrenable_reg_17));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_PROXY_CTRLN_2_i0_PROXY_CTRLN_2_i0), .wenable(wrenable_reg_18));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_19 (.out1(out_reg_19_reg_19), .clock(clock), .reset(reset), .in1(out_cond_expr_FU_8_8_8_8_30_i0_fu_make_non_oriented_28874_29465), .wenable(wrenable_reg_19));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_9_i0_fu_make_non_oriented_28874_30662), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(11), .BITSIZE_out1(11)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_10_i0_fu_make_non_oriented_28874_30666), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_8_0_8_51_i1_fu_make_non_oriented_28874_30894), .wenable(wrenable_reg_4));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_ui_bit_ior_concat_expr_FU_34_i0_fu_make_non_oriented_28874_29425), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_MUX_53_reg_6_0_0_0), .wenable(wrenable_reg_6));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_MUX_54_reg_7_0_0_0), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_17_i0_fu_make_non_oriented_28874_30635), .wenable(wrenable_reg_8));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_MUX_56_reg_9_0_0_0), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288670_ (.out1(proxy_in1_28867), .in1(sig_out_bus_mergerproxy_in1_288670_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288681_ (.out1(proxy_in1_28868), .in1(sig_out_bus_mergerproxy_in1_288681_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288702_ (.out1(proxy_in1_28870), .in1(sig_out_bus_mergerproxy_in1_288702_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288673_ (.out1(proxy_in2_28867), .in1(sig_out_bus_mergerproxy_in2_288673_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288684_ (.out1(proxy_in2_28868), .in1(sig_out_bus_mergerproxy_in2_288684_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288705_ (.out1(proxy_in2_28870), .in1(sig_out_bus_mergerproxy_in2_288705_));
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
  assign OUT_CONDITION_make_non_oriented_28874_29517 = out_read_cond_FU_27_i0_fu_make_non_oriented_28874_29517;
  assign OUT_CONDITION_make_non_oriented_28874_29519 = out_read_cond_FU_28_i0_fu_make_non_oriented_28874_29519;

endmodule

// FSM based controller description for make_non_oriented
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_make_non_oriented(done_port, selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0, selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1, selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0, selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1, selector_MUX_39_reg_10_0_0_0, selector_MUX_41_reg_12_0_0_0, selector_MUX_53_reg_6_0_0_0, selector_MUX_54_reg_7_0_0_0, selector_MUX_56_reg_9_0_0_0, fuselector_PROXY_CTRLN_0_i0_LOAD, fuselector_PROXY_CTRLN_0_i0_STORE, fuselector_PROXY_CTRLN_1_i0_LOAD, fuselector_PROXY_CTRLN_1_i0_STORE, fuselector_PROXY_CTRLN_2_i0_LOAD, fuselector_PROXY_CTRLN_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_make_non_oriented_28874_29517, OUT_CONDITION_make_non_oriented_28874_29519, clock, reset, start_port);
  // IN
  input OUT_CONDITION_make_non_oriented_28874_29517;
  input OUT_CONDITION_make_non_oriented_28874_29519;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0;
  output selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1;
  output selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0;
  output selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1;
  output selector_MUX_39_reg_10_0_0_0;
  output selector_MUX_41_reg_12_0_0_0;
  output selector_MUX_53_reg_6_0_0_0;
  output selector_MUX_54_reg_7_0_0_0;
  output selector_MUX_56_reg_9_0_0_0;
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
  reg selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0;
  reg selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1;
  reg selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0;
  reg selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1;
  reg selector_MUX_39_reg_10_0_0_0;
  reg selector_MUX_41_reg_12_0_0_0;
  reg selector_MUX_53_reg_6_0_0_0;
  reg selector_MUX_54_reg_7_0_0_0;
  reg selector_MUX_56_reg_9_0_0_0;
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
    selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0 = 1'b0;
    selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1 = 1'b0;
    selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0 = 1'b0;
    selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1 = 1'b0;
    selector_MUX_39_reg_10_0_0_0 = 1'b0;
    selector_MUX_41_reg_12_0_0_0 = 1'b0;
    selector_MUX_53_reg_6_0_0_0 = 1'b0;
    selector_MUX_54_reg_7_0_0_0 = 1'b0;
    selector_MUX_56_reg_9_0_0_0 = 1'b0;
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
          selector_MUX_53_reg_6_0_0_0 = 1'b1;
          selector_MUX_54_reg_7_0_0_0 = 1'b1;
          selector_MUX_56_reg_9_0_0_0 = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_6 = 1'b1;
          wrenable_reg_7 = 1'b1;
          wrenable_reg_9 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0 = 1'bX;
          selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1 = 1'bX;
          selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0 = 1'bX;
          selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1 = 1'bX;
          selector_MUX_39_reg_10_0_0_0 = 1'bX;
          selector_MUX_41_reg_12_0_0_0 = 1'bX;
          selector_MUX_53_reg_6_0_0_0 = 1'bX;
          selector_MUX_54_reg_7_0_0_0 = 1'bX;
          selector_MUX_56_reg_9_0_0_0 = 1'bX;
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
          selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0 = 1'b1;
          selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1 = 1'b1;
          selector_MUX_39_reg_10_0_0_0 = 1'b1;
          selector_MUX_41_reg_12_0_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_12 = 1'b1;
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
          wrenable_reg_11 = 1'b1;
          wrenable_reg_12 = 1'b1;
          wrenable_reg_13 = 1'b1;
          wrenable_reg_14 = 1'b1;
          wrenable_reg_15 = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_LOAD = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          wrenable_reg_16 = 1'b1;
          wrenable_reg_17 = 1'b1;
          wrenable_reg_18 = 1'b1;
          _next_state = S_5;
        end
      S_5 :
        begin
          selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          wrenable_reg_19 = 1'b1;
          _next_state = S_6;
        end
      S_6 :
        begin
          selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1 = 1'b1;
          fuselector_PROXY_CTRLN_2_i0_STORE = 1'b1;
          if (OUT_CONDITION_make_non_oriented_28874_29517 == 1'b1)
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
          if (OUT_CONDITION_make_non_oriented_28874_29519 == 1'b1)
            begin
              _next_state = S_1;
            end
          else
            begin
              _next_state = S_8;
              done_port = 1'b1;
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
          selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0 = 1'bX;
          selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1 = 1'bX;
          selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0 = 1'bX;
          selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1 = 1'bX;
          selector_MUX_39_reg_10_0_0_0 = 1'bX;
          selector_MUX_41_reg_12_0_0_0 = 1'bX;
          selector_MUX_53_reg_6_0_0_0 = 1'bX;
          selector_MUX_54_reg_7_0_0_0 = 1'bX;
          selector_MUX_56_reg_9_0_0_0 = 1'bX;
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

// Top component for make_non_oriented
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module make_non_oriented(clock, reset, start_port, done_port, proxy_out1_28867, proxy_out1_28868, proxy_out1_28870, proxy_in1_28867, proxy_in2_28867, proxy_in3_28867, proxy_sel_LOAD_28867, proxy_sel_STORE_28867, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, proxy_in1_28870, proxy_in2_28870, proxy_in3_28870, proxy_sel_LOAD_28870, proxy_sel_STORE_28870);
  parameter MEM_var_28867_28882=512, MEM_var_28868_28882=1024, MEM_var_28870_28882=2048;
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
  output [25:0] proxy_in2_28867;
  output [7:0] proxy_in3_28867;
  output [1:0] proxy_sel_LOAD_28867;
  output [1:0] proxy_sel_STORE_28867;
  output [15:0] proxy_in1_28868;
  output [25:0] proxy_in2_28868;
  output [7:0] proxy_in3_28868;
  output [1:0] proxy_sel_LOAD_28868;
  output [1:0] proxy_sel_STORE_28868;
  output [15:0] proxy_in1_28870;
  output [25:0] proxy_in2_28870;
  output [7:0] proxy_in3_28870;
  output [1:0] proxy_sel_LOAD_28870;
  output [1:0] proxy_sel_STORE_28870;
  // Component and signal declarations
  wire OUT_CONDITION_make_non_oriented_28874_29517;
  wire OUT_CONDITION_make_non_oriented_28874_29519;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_PROXY_CTRLN_0_i0_LOAD;
  wire fuselector_PROXY_CTRLN_0_i0_STORE;
  wire fuselector_PROXY_CTRLN_1_i0_LOAD;
  wire fuselector_PROXY_CTRLN_1_i0_STORE;
  wire fuselector_PROXY_CTRLN_2_i0_LOAD;
  wire fuselector_PROXY_CTRLN_2_i0_STORE;
  wire selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0;
  wire selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1;
  wire selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0;
  wire selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1;
  wire selector_MUX_39_reg_10_0_0_0;
  wire selector_MUX_41_reg_12_0_0_0;
  wire selector_MUX_53_reg_6_0_0_0;
  wire selector_MUX_54_reg_7_0_0_0;
  wire selector_MUX_56_reg_9_0_0_0;
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
  
  controller_make_non_oriented Controller_i (.done_port(done_delayed_REG_signal_in), .selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0(selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0), .selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1(selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1), .selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0(selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0), .selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1(selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1), .selector_MUX_39_reg_10_0_0_0(selector_MUX_39_reg_10_0_0_0), .selector_MUX_41_reg_12_0_0_0(selector_MUX_41_reg_12_0_0_0), .selector_MUX_53_reg_6_0_0_0(selector_MUX_53_reg_6_0_0_0), .selector_MUX_54_reg_7_0_0_0(selector_MUX_54_reg_7_0_0_0), .selector_MUX_56_reg_9_0_0_0(selector_MUX_56_reg_9_0_0_0), .fuselector_PROXY_CTRLN_0_i0_LOAD(fuselector_PROXY_CTRLN_0_i0_LOAD), .fuselector_PROXY_CTRLN_0_i0_STORE(fuselector_PROXY_CTRLN_0_i0_STORE), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_make_non_oriented_28874_29517(OUT_CONDITION_make_non_oriented_28874_29517), .OUT_CONDITION_make_non_oriented_28874_29519(OUT_CONDITION_make_non_oriented_28874_29519), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_make_non_oriented #(.MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) Datapath_i (.proxy_in1_28867(proxy_in1_28867), .proxy_in2_28867(proxy_in2_28867), .proxy_in3_28867(proxy_in3_28867), .proxy_sel_LOAD_28867(proxy_sel_LOAD_28867), .proxy_sel_STORE_28867(proxy_sel_STORE_28867), .proxy_in1_28868(proxy_in1_28868), .proxy_in2_28868(proxy_in2_28868), .proxy_in3_28868(proxy_in3_28868), .proxy_sel_LOAD_28868(proxy_sel_LOAD_28868), .proxy_sel_STORE_28868(proxy_sel_STORE_28868), .proxy_in1_28870(proxy_in1_28870), .proxy_in2_28870(proxy_in2_28870), .proxy_in3_28870(proxy_in3_28870), .proxy_sel_LOAD_28870(proxy_sel_LOAD_28870), .proxy_sel_STORE_28870(proxy_sel_STORE_28870), .OUT_CONDITION_make_non_oriented_28874_29517(OUT_CONDITION_make_non_oriented_28874_29517), .OUT_CONDITION_make_non_oriented_28874_29519(OUT_CONDITION_make_non_oriented_28874_29519), .clock(clock), .reset(reset), .proxy_out1_28867(proxy_out1_28867), .proxy_out1_28868(proxy_out1_28868), .proxy_out1_28870(proxy_out1_28870), .selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0(selector_MUX_11_PROXY_CTRLN_2_i0_0_0_0), .selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1(selector_MUX_11_PROXY_CTRLN_2_i0_0_0_1), .selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0(selector_MUX_12_PROXY_CTRLN_2_i0_1_0_0), .selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1(selector_MUX_12_PROXY_CTRLN_2_i0_1_0_1), .selector_MUX_39_reg_10_0_0_0(selector_MUX_39_reg_10_0_0_0), .selector_MUX_41_reg_12_0_0_0(selector_MUX_41_reg_12_0_0_0), .selector_MUX_53_reg_6_0_0_0(selector_MUX_53_reg_6_0_0_0), .selector_MUX_54_reg_7_0_0_0(selector_MUX_54_reg_7_0_0_0), .selector_MUX_56_reg_9_0_0_0(selector_MUX_56_reg_9_0_0_0), .fuselector_PROXY_CTRLN_0_i0_LOAD(fuselector_PROXY_CTRLN_0_i0_LOAD), .fuselector_PROXY_CTRLN_0_i0_STORE(fuselector_PROXY_CTRLN_0_i0_STORE), .fuselector_PROXY_CTRLN_1_i0_LOAD(fuselector_PROXY_CTRLN_1_i0_LOAD), .fuselector_PROXY_CTRLN_1_i0_STORE(fuselector_PROXY_CTRLN_1_i0_STORE), .fuselector_PROXY_CTRLN_2_i0_LOAD(fuselector_PROXY_CTRLN_2_i0_LOAD), .fuselector_PROXY_CTRLN_2_i0_STORE(fuselector_PROXY_CTRLN_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Datapath RTL description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_main(clock, reset, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE, selector_IN_UNBOUNDED_main_28882_30105, selector_IN_UNBOUNDED_main_28882_30139, selector_IN_UNBOUNDED_main_28882_30148, selector_MUX_27_reg_3_0_0_0, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, OUT_CONDITION_main_28882_30128, OUT_CONDITION_main_28882_30140, OUT_UNBOUNDED_main_28882_30105, OUT_UNBOUNDED_main_28882_30139, OUT_UNBOUNDED_main_28882_30148);
  parameter MEM_var_28859_28880=2560, MEM_var_28861_28880=3072, MEM_var_28862_28880=3584, MEM_var_28864_28880=4096, MEM_var_28865_28880=4608, MEM_var_28866_28880=5120, MEM_var_28867_28882=512, MEM_var_28868_28882=1024, MEM_var_28869_28882=1536, MEM_var_28870_28882=2048;
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
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE;
  input selector_IN_UNBOUNDED_main_28882_30105;
  input selector_IN_UNBOUNDED_main_28882_30139;
  input selector_IN_UNBOUNDED_main_28882_30148;
  input selector_MUX_27_reg_3_0_0_0;
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
  output [25:0] Mout_addr_ram;
  output [15:0] Mout_Wdata_ram;
  output [7:0] Mout_data_ram_size;
  output OUT_CONDITION_main_28882_30128;
  output OUT_CONDITION_main_28882_30140;
  output OUT_UNBOUNDED_main_28882_30105;
  output OUT_UNBOUNDED_main_28882_30139;
  output OUT_UNBOUNDED_main_28882_30148;
  // Component and signal declarations
  wire [7:0] null_out_signal_array_28867_0_out1_0;
  wire [7:0] null_out_signal_array_28867_0_out1_1;
  wire [7:0] null_out_signal_array_28868_0_out1_0;
  wire [7:0] null_out_signal_array_28868_0_out1_1;
  wire [7:0] null_out_signal_array_28869_0_out1_0;
  wire [7:0] null_out_signal_array_28869_0_out1_1;
  wire [7:0] null_out_signal_array_28870_0_out1_0;
  wire [7:0] null_out_signal_array_28870_0_out1_1;
  wire signed [1:0] out_IIdata_converter_FU_16_i0_fu_main_28882_30711;
  wire [31:0] out_MUX_27_reg_3_0_0_0;
  wire [12:0] out_UUdata_converter_FU_11_i0_fu_main_28882_30714;
  wire [31:0] out_UUdata_converter_FU_14_i0_fu_main_28882_30125;
  wire [31:0] out_UUdata_converter_FU_7_i0_fu_main_28882_30106;
  wire [31:0] out_UUdata_converter_FU_8_i0_fu_main_28882_30107;
  wire [12:0] out_addr_expr_FU_10_i0_fu_main_28882_30604;
  wire [31:0] out_addr_expr_FU_6_i0_fu_main_28882_30584;
  wire [31:0] out_addr_expr_FU_9_i0_fu_main_28882_30600;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [4:0] out_const_2;
  wire out_const_3;
  wire [4:0] out_const_4;
  wire [10:0] out_const_5;
  wire [7:0] out_const_6;
  wire [12:0] out_const_7;
  wire [12:0] out_const_8;
  wire [12:0] out_conv_out_UUdata_converter_FU_14_i0_fu_main_28882_30125_32_13;
  wire [3:0] out_conv_out_const_2_5_4;
  wire [31:0] out_conv_out_const_5_11_32;
  wire [31:0] out_conv_out_const_7_13_32;
  wire [31:0] out_conv_out_const_8_13_32;
  wire [1:0] out_conv_out_is_connected_23_i0_fu_main_28882_30139_I_8_2;
  wire [12:0] out_conv_out_reg_1_reg_1_32_13;
  wire [31:0] out_conv_out_reg_2_reg_2_13_32;
  wire signed [7:0] out_is_connected_23_i0_fu_main_28882_30139;
  wire [7:0] out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_0;
  wire out_ne_expr_FU_8_0_8_19_i0_fu_main_28882_30703;
  wire out_read_cond_FU_15_i0_fu_main_28882_30128;
  wire out_read_cond_FU_17_i0_fu_main_28882_30140;
  wire [31:0] out_reg_0_reg_0;
  wire [31:0] out_reg_1_reg_1;
  wire [12:0] out_reg_2_reg_2;
  wire [31:0] out_reg_3_reg_3;
  wire [31:0] out_reg_4_reg_4;
  wire out_reg_5_reg_5;
  wire [1:0] out_reg_6_reg_6;
  wire out_ui_ne_expr_FU_32_32_32_20_i0_fu_main_28882_30701;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_21_i0_fu_main_28882_30127;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_0_32_22_i0_fu_main_28882_30592;
  wire [7:0] out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_1;
  wire [15:0] proxy_out1_28867;
  wire [15:0] proxy_out1_28868;
  wire [15:0] proxy_out1_28869;
  wire [15:0] proxy_out1_28870;
  wire s_done_fu_main_28882_30105;
  wire s_done_fu_main_28882_30139;
  wire s_done_fu_main_28882_30148;
  wire [15:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [25:0] sig_in_bus_mergerMout_addr_ram1_0;
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
  wire [25:0] sig_in_bus_mergerproxy_in213_0;
  wire [25:0] sig_in_bus_mergerproxy_in213_1;
  wire [25:0] sig_in_bus_mergerproxy_in213_2;
  wire [25:0] sig_in_bus_mergerproxy_in218_0;
  wire [25:0] sig_in_bus_mergerproxy_in223_0;
  wire [25:0] sig_in_bus_mergerproxy_in223_1;
  wire [25:0] sig_in_bus_mergerproxy_in223_2;
  wire [25:0] sig_in_bus_mergerproxy_in28_0;
  wire [25:0] sig_in_bus_mergerproxy_in28_1;
  wire [25:0] sig_in_bus_mergerproxy_in28_2;
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
  wire [25:0] sig_in_vector_bus_mergerMout_addr_ram1_0;
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
  wire [25:0] sig_in_vector_bus_mergerproxy_in213_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in213_1;
  wire [25:0] sig_in_vector_bus_mergerproxy_in213_2;
  wire [25:0] sig_in_vector_bus_mergerproxy_in218_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in223_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in223_1;
  wire [25:0] sig_in_vector_bus_mergerproxy_in223_2;
  wire [25:0] sig_in_vector_bus_mergerproxy_in28_0;
  wire [25:0] sig_in_vector_bus_mergerproxy_in28_1;
  wire [25:0] sig_in_vector_bus_mergerproxy_in28_2;
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
  wire [25:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [7:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire [1:0] sig_out_bus_mergerMout_oe_ram3_;
  wire [1:0] sig_out_bus_mergerMout_we_ram4_;
  wire [1:0] sig_out_bus_mergerSout_DataRdy5_;
  wire [15:0] sig_out_bus_mergerSout_Rdata_ram6_;
  wire [15:0] sig_out_bus_mergerproxy_in112_;
  wire [15:0] sig_out_bus_mergerproxy_in117_;
  wire [15:0] sig_out_bus_mergerproxy_in122_;
  wire [15:0] sig_out_bus_mergerproxy_in17_;
  wire [25:0] sig_out_bus_mergerproxy_in213_;
  wire [25:0] sig_out_bus_mergerproxy_in218_;
  wire [25:0] sig_out_bus_mergerproxy_in223_;
  wire [25:0] sig_out_bus_mergerproxy_in28_;
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
  wire [25:0] sig_out_vector_bus_mergerproxy_in213_;
  wire [25:0] sig_out_vector_bus_mergerproxy_in218_;
  wire [25:0] sig_out_vector_bus_mergerproxy_in223_;
  wire [25:0] sig_out_vector_bus_mergerproxy_in28_;
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
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_27_reg_3_0_0_0 (.out1(out_MUX_27_reg_3_0_0_0), .sel(selector_MUX_27_reg_3_0_0_0), .in1(out_reg_4_reg_4), .in2(out_UUdata_converter_FU_7_i0_fu_main_28882_30106));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(13), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28867.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28867_28882), .address_space_rangesize(512), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28867_0 (.out1({null_out_signal_array_28867_0_out1_1, null_out_signal_array_28867_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_0), .proxy_out1(proxy_out1_28867), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({13'b0000000000000, 13'b0000000000000}), .in3({4'b0000, 4'b0000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in17_), .proxy_in2(sig_out_vector_bus_mergerproxy_in28_), .proxy_in3(sig_out_vector_bus_mergerproxy_in39_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD10_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE11_));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(13), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28868.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28868_28882), .address_space_rangesize(512), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28868_0 (.out1({null_out_signal_array_28868_0_out1_1, null_out_signal_array_28868_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_1), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_1), .proxy_out1(proxy_out1_28868), .clock(clock), .reset(reset), .in1({8'b00000000, out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_1}), .in2({13'b0000000000000, out_conv_out_reg_1_reg_1_32_13}), .in3({4'b0000, out_conv_out_const_2_5_4}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in112_), .proxy_in2(sig_out_vector_bus_mergerproxy_in213_), .proxy_in3(sig_out_vector_bus_mergerproxy_in314_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD15_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE16_));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(13), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28869.mem"), .n_elements(21), .data_size(8), .address_space_begin(MEM_var_28869_28882), .address_space_rangesize(512), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28869_0 (.out1({null_out_signal_array_28869_0_out1_1, null_out_signal_array_28869_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_2), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_2), .proxy_out1(proxy_out1_28869), .clock(clock), .reset(reset), .in1({8'b00000000, out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_0}), .in2({13'b0000000000000, out_conv_out_UUdata_converter_FU_14_i0_fu_main_28882_30125_32_13}), .in3({4'b0000, out_conv_out_const_2_5_4}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in117_), .proxy_in2(sig_out_vector_bus_mergerproxy_in218_), .proxy_in3(sig_out_vector_bus_mergerproxy_in319_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD20_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE21_));
  ARRAY_1D_STD_BRAM_NN_SDS_BUS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(13), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(13), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28870.mem"), .n_elements(441), .data_size(8), .address_space_begin(MEM_var_28870_28882), .address_space_rangesize(512), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(13), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28870_0 (.out1({null_out_signal_array_28870_0_out1_1, null_out_signal_array_28870_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_3), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_3), .proxy_out1(proxy_out1_28870), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({13'b0000000000000, 13'b0000000000000}), .in3({4'b0000, 4'b0000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in122_), .proxy_in2(sig_out_vector_bus_mergerproxy_in223_), .proxy_in3(sig_out_vector_bus_mergerproxy_in324_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD25_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE26_));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(5), .BITSIZE_out1(2)) bus_mergerSout_DataRdy5_ (.out1(sig_out_bus_mergerSout_DataRdy5_), .in1({sig_in_bus_mergerSout_DataRdy5_4, sig_in_bus_mergerSout_DataRdy5_3, sig_in_bus_mergerSout_DataRdy5_2, sig_in_bus_mergerSout_DataRdy5_1, sig_in_bus_mergerSout_DataRdy5_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(5), .BITSIZE_out1(16)) bus_mergerSout_Rdata_ram6_ (.out1(sig_out_bus_mergerSout_Rdata_ram6_), .in1({sig_in_bus_mergerSout_Rdata_ram6_4, sig_in_bus_mergerSout_Rdata_ram6_3, sig_in_bus_mergerSout_Rdata_ram6_2, sig_in_bus_mergerSout_Rdata_ram6_1, sig_in_bus_mergerSout_Rdata_ram6_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(3), .BITSIZE_out1(16)) bus_mergerproxy_in112_ (.out1(sig_out_bus_mergerproxy_in112_), .in1({sig_in_bus_mergerproxy_in112_2, sig_in_bus_mergerproxy_in112_1, sig_in_bus_mergerproxy_in112_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in117_ (.out1(sig_out_bus_mergerproxy_in117_), .in1({sig_in_bus_mergerproxy_in117_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(3), .BITSIZE_out1(16)) bus_mergerproxy_in122_ (.out1(sig_out_bus_mergerproxy_in122_), .in1({sig_in_bus_mergerproxy_in122_2, sig_in_bus_mergerproxy_in122_1, sig_in_bus_mergerproxy_in122_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(3), .BITSIZE_out1(16)) bus_mergerproxy_in17_ (.out1(sig_out_bus_mergerproxy_in17_), .in1({sig_in_bus_mergerproxy_in17_2, sig_in_bus_mergerproxy_in17_1, sig_in_bus_mergerproxy_in17_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(3), .BITSIZE_out1(26)) bus_mergerproxy_in213_ (.out1(sig_out_bus_mergerproxy_in213_), .in1({sig_in_bus_mergerproxy_in213_2, sig_in_bus_mergerproxy_in213_1, sig_in_bus_mergerproxy_in213_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(1), .BITSIZE_out1(26)) bus_mergerproxy_in218_ (.out1(sig_out_bus_mergerproxy_in218_), .in1({sig_in_bus_mergerproxy_in218_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(3), .BITSIZE_out1(26)) bus_mergerproxy_in223_ (.out1(sig_out_bus_mergerproxy_in223_), .in1({sig_in_bus_mergerproxy_in223_2, sig_in_bus_mergerproxy_in223_1, sig_in_bus_mergerproxy_in223_0}));
  bus_merger #(.BITSIZE_in1(26), .PORTSIZE_in1(3), .BITSIZE_out1(26)) bus_mergerproxy_in28_ (.out1(sig_out_bus_mergerproxy_in28_), .in1({sig_in_bus_mergerproxy_in28_2, sig_in_bus_mergerproxy_in28_1, sig_in_bus_mergerproxy_in28_0}));
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
  constant_value #(.BITSIZE_out1(8), .value(8'b00010101)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(5), .value(5'b10101)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(11), .value(MEM_var_28868_28882)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(13), .value(MEM_var_28869_28882)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(13), .value(MEM_var_28870_28882)) const_8 (.out1(out_const_8));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_UUdata_converter_FU_14_i0_fu_main_28882_30125_32_13 (.out1(out_conv_out_UUdata_converter_FU_14_i0_fu_main_28882_30125_32_13), .in1(out_UUdata_converter_FU_14_i0_fu_main_28882_30125));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_2_5_4 (.out1(out_conv_out_const_2_5_4), .in1(out_const_2));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(32)) conv_out_const_5_11_32 (.out1(out_conv_out_const_5_11_32), .in1(out_const_5));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_const_7_13_32 (.out1(out_conv_out_const_7_13_32), .in1(out_const_7));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_const_8_13_32 (.out1(out_conv_out_const_8_13_32), .in1(out_const_8));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(2)) conv_out_is_connected_23_i0_fu_main_28882_30139_I_8_2 (.out1(out_conv_out_is_connected_23_i0_fu_main_28882_30139_I_8_2), .in1(out_is_connected_23_i0_fu_main_28882_30139));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) conv_out_reg_1_reg_1_32_13 (.out1(out_conv_out_reg_1_reg_1_32_13), .in1(out_reg_1_reg_1));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(32)) conv_out_reg_2_reg_2_13_32 (.out1(out_conv_out_reg_2_reg_2_13_32), .in1(out_reg_2_reg_2));
  make_non_oriented #(.MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) fu_main_28882_30105 (.done_port(s_done_fu_main_28882_30105), .proxy_in1_28867(sig_in_vector_bus_mergerproxy_in17_2), .proxy_in2_28867(sig_in_vector_bus_mergerproxy_in28_2), .proxy_in3_28867(sig_in_vector_bus_mergerproxy_in39_2), .proxy_sel_LOAD_28867(sig_in_vector_bus_mergerproxy_sel_LOAD10_2), .proxy_sel_STORE_28867(sig_in_vector_bus_mergerproxy_sel_STORE11_2), .proxy_in1_28868(sig_in_vector_bus_mergerproxy_in112_2), .proxy_in2_28868(sig_in_vector_bus_mergerproxy_in213_2), .proxy_in3_28868(sig_in_vector_bus_mergerproxy_in314_2), .proxy_sel_LOAD_28868(sig_in_vector_bus_mergerproxy_sel_LOAD15_2), .proxy_sel_STORE_28868(sig_in_vector_bus_mergerproxy_sel_STORE16_2), .proxy_in1_28870(sig_in_vector_bus_mergerproxy_in122_2), .proxy_in2_28870(sig_in_vector_bus_mergerproxy_in223_2), .proxy_in3_28870(sig_in_vector_bus_mergerproxy_in324_2), .proxy_sel_LOAD_28870(sig_in_vector_bus_mergerproxy_sel_LOAD25_2), .proxy_sel_STORE_28870(sig_in_vector_bus_mergerproxy_sel_STORE26_2), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28882_30105), .proxy_out1_28867(proxy_out1_28867), .proxy_out1_28868(proxy_out1_28868), .proxy_out1_28870(proxy_out1_28870));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_main_28882_30106 (.out1(out_UUdata_converter_FU_7_i0_fu_main_28882_30106), .in1(out_addr_expr_FU_6_i0_fu_main_28882_30584));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_main_28882_30107 (.out1(out_UUdata_converter_FU_8_i0_fu_main_28882_30107), .in1(out_ui_pointer_plus_expr_FU_32_0_32_22_i0_fu_main_28882_30592));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_main_28882_30125 (.out1(out_UUdata_converter_FU_14_i0_fu_main_28882_30125), .in1(out_reg_3_reg_3));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(32)) fu_main_28882_30127 (.out1(out_ui_plus_expr_FU_32_0_32_21_i0_fu_main_28882_30127), .in1(out_reg_3_reg_3), .in2(out_const_3));
  read_cond_FU #(.BITSIZE_in1(1)) fu_main_28882_30128 (.out1(out_read_cond_FU_15_i0_fu_main_28882_30128), .in1(out_reg_5_reg_5));
  is_connected #(.MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) fu_main_28882_30139 (.done_port(s_done_fu_main_28882_30139), .return_port(out_is_connected_23_i0_fu_main_28882_30139), .proxy_in1_28867(sig_in_vector_bus_mergerproxy_in17_0), .proxy_in2_28867(sig_in_vector_bus_mergerproxy_in28_0), .proxy_in3_28867(sig_in_vector_bus_mergerproxy_in39_0), .proxy_sel_LOAD_28867(sig_in_vector_bus_mergerproxy_sel_LOAD10_0), .proxy_sel_STORE_28867(sig_in_vector_bus_mergerproxy_sel_STORE11_0), .proxy_in1_28868(sig_in_vector_bus_mergerproxy_in112_0), .proxy_in2_28868(sig_in_vector_bus_mergerproxy_in213_0), .proxy_in3_28868(sig_in_vector_bus_mergerproxy_in314_0), .proxy_sel_LOAD_28868(sig_in_vector_bus_mergerproxy_sel_LOAD15_0), .proxy_sel_STORE_28868(sig_in_vector_bus_mergerproxy_sel_STORE16_0), .proxy_in1_28870(sig_in_vector_bus_mergerproxy_in122_0), .proxy_in2_28870(sig_in_vector_bus_mergerproxy_in223_0), .proxy_in3_28870(sig_in_vector_bus_mergerproxy_in324_0), .proxy_sel_LOAD_28870(sig_in_vector_bus_mergerproxy_sel_LOAD25_0), .proxy_sel_STORE_28870(sig_in_vector_bus_mergerproxy_sel_STORE26_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28882_30139), .proxy_out1_28867(proxy_out1_28867), .proxy_out1_28868(proxy_out1_28868), .proxy_out1_28870(proxy_out1_28870));
  read_cond_FU #(.BITSIZE_in1(1)) fu_main_28882_30140 (.out1(out_read_cond_FU_17_i0_fu_main_28882_30140), .in1(out_ne_expr_FU_8_0_8_19_i0_fu_main_28882_30703));
  kruskalF #(.MEM_var_28859_28880(MEM_var_28859_28880), .MEM_var_28861_28880(MEM_var_28861_28880), .MEM_var_28862_28880(MEM_var_28862_28880), .MEM_var_28864_28880(MEM_var_28864_28880), .MEM_var_28865_28880(MEM_var_28865_28880), .MEM_var_28866_28880(MEM_var_28866_28880), .MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28869_28882(MEM_var_28869_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) fu_main_28882_30148 (.done_port(s_done_fu_main_28882_30148), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram6_4), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy5_4), .proxy_in1_28867(sig_in_vector_bus_mergerproxy_in17_1), .proxy_in2_28867(sig_in_vector_bus_mergerproxy_in28_1), .proxy_in3_28867(sig_in_vector_bus_mergerproxy_in39_1), .proxy_sel_LOAD_28867(sig_in_vector_bus_mergerproxy_sel_LOAD10_1), .proxy_sel_STORE_28867(sig_in_vector_bus_mergerproxy_sel_STORE11_1), .proxy_in1_28868(sig_in_vector_bus_mergerproxy_in112_1), .proxy_in2_28868(sig_in_vector_bus_mergerproxy_in213_1), .proxy_in3_28868(sig_in_vector_bus_mergerproxy_in314_1), .proxy_sel_LOAD_28868(sig_in_vector_bus_mergerproxy_sel_LOAD15_1), .proxy_sel_STORE_28868(sig_in_vector_bus_mergerproxy_sel_STORE16_1), .proxy_in1_28869(sig_in_vector_bus_mergerproxy_in117_0), .proxy_in2_28869(sig_in_vector_bus_mergerproxy_in218_0), .proxy_in3_28869(sig_in_vector_bus_mergerproxy_in319_0), .proxy_sel_LOAD_28869(sig_in_vector_bus_mergerproxy_sel_LOAD20_0), .proxy_sel_STORE_28869(sig_in_vector_bus_mergerproxy_sel_STORE21_0), .proxy_in1_28870(sig_in_vector_bus_mergerproxy_in122_1), .proxy_in2_28870(sig_in_vector_bus_mergerproxy_in223_1), .proxy_in3_28870(sig_in_vector_bus_mergerproxy_in324_1), .proxy_sel_LOAD_28870(sig_in_vector_bus_mergerproxy_sel_LOAD25_1), .proxy_sel_STORE_28870(sig_in_vector_bus_mergerproxy_sel_STORE26_1), .Mout_oe_ram(sig_in_vector_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_vector_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_vector_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_vector_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_vector_bus_mergerMout_data_ram_size2_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28882_30148), .a(out_conv_out_reg_2_reg_2_13_32), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28867(proxy_out1_28867), .proxy_out1_28868(proxy_out1_28868), .proxy_out1_28869(proxy_out1_28869), .proxy_out1_28870(proxy_out1_28870), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_main_28882_30584 (.out1(out_addr_expr_FU_6_i0_fu_main_28882_30584), .in1(out_conv_out_const_7_13_32));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(5), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_main_28882_30592 (.out1(out_ui_pointer_plus_expr_FU_32_0_32_22_i0_fu_main_28882_30592), .in1(out_addr_expr_FU_6_i0_fu_main_28882_30584), .in2(out_const_4));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_main_28882_30600 (.out1(out_addr_expr_FU_9_i0_fu_main_28882_30600), .in1(out_conv_out_const_5_11_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(13)) fu_main_28882_30604 (.out1(out_addr_expr_FU_10_i0_fu_main_28882_30604), .in1(out_conv_out_const_8_13_32));
  ui_ne_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(1)) fu_main_28882_30701 (.out1(out_ui_ne_expr_FU_32_32_32_20_i0_fu_main_28882_30701), .in1(out_ui_plus_expr_FU_32_0_32_21_i0_fu_main_28882_30127), .in2(out_reg_0_reg_0));
  ne_expr_FU #(.BITSIZE_in1(2), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_main_28882_30703 (.out1(out_ne_expr_FU_8_0_8_19_i0_fu_main_28882_30703), .in1(out_IIdata_converter_FU_16_i0_fu_main_28882_30711), .in2(out_const_0));
  IIdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) fu_main_28882_30711 (.out1(out_IIdata_converter_FU_16_i0_fu_main_28882_30711), .in1(out_reg_6_reg_6));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(13)) fu_main_28882_30714 (.out1(out_UUdata_converter_FU_11_i0_fu_main_28882_30714), .in1(out_addr_expr_FU_10_i0_fu_main_28882_30604));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerMout_Wdata_ram0_0 (.out1(sig_in_bus_mergerMout_Wdata_ram0_0), .in1(sig_in_vector_bus_mergerMout_Wdata_ram0_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerMout_addr_ram1_0 (.out1(sig_in_bus_mergerMout_addr_ram1_0), .in1(sig_in_vector_bus_mergerMout_addr_ram1_0));
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
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in213_0 (.out1(sig_in_bus_mergerproxy_in213_0), .in1(sig_in_vector_bus_mergerproxy_in213_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in213_1 (.out1(sig_in_bus_mergerproxy_in213_1), .in1(sig_in_vector_bus_mergerproxy_in213_1));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in213_2 (.out1(sig_in_bus_mergerproxy_in213_2), .in1(sig_in_vector_bus_mergerproxy_in213_2));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in218_0 (.out1(sig_in_bus_mergerproxy_in218_0), .in1(sig_in_vector_bus_mergerproxy_in218_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in223_0 (.out1(sig_in_bus_mergerproxy_in223_0), .in1(sig_in_vector_bus_mergerproxy_in223_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in223_1 (.out1(sig_in_bus_mergerproxy_in223_1), .in1(sig_in_vector_bus_mergerproxy_in223_1));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in223_2 (.out1(sig_in_bus_mergerproxy_in223_2), .in1(sig_in_vector_bus_mergerproxy_in223_2));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in28_0 (.out1(sig_in_bus_mergerproxy_in28_0), .in1(sig_in_vector_bus_mergerproxy_in28_0));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in28_1 (.out1(sig_in_bus_mergerproxy_in28_1), .in1(sig_in_vector_bus_mergerproxy_in28_1));
  join_signal #(.BITSIZE_in1(13), .PORTSIZE_in1(2), .BITSIZE_out1(26)) join_signalbus_mergerproxy_in28_2 (.out1(sig_in_bus_mergerproxy_in28_2), .in1(sig_in_vector_bus_mergerproxy_in28_2));
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
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_8_i0_fu_main_28882_30107), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_9_i0_fu_main_28882_30600), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(13), .BITSIZE_out1(13)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_11_i0_fu_main_28882_30714), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_MUX_27_reg_3_0_0_0), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_32_0_32_21_i0_fu_main_28882_30127), .wenable(wrenable_reg_4));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_32_32_32_20_i0_fu_main_28882_30701), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_conv_out_is_connected_23_i0_fu_main_28882_30139_I_8_2), .wenable(wrenable_reg_6));
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
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in17_ (.out1(sig_out_vector_bus_mergerproxy_in17_), .in1(sig_out_bus_mergerproxy_in17_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in213_ (.out1(sig_out_vector_bus_mergerproxy_in213_), .in1(sig_out_bus_mergerproxy_in213_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in218_ (.out1(sig_out_vector_bus_mergerproxy_in218_), .in1(sig_out_bus_mergerproxy_in218_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in223_ (.out1(sig_out_vector_bus_mergerproxy_in223_), .in1(sig_out_bus_mergerproxy_in223_));
  split_signal #(.BITSIZE_in1(26), .BITSIZE_out1(13), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in28_ (.out1(sig_out_vector_bus_mergerproxy_in28_), .in1(sig_out_bus_mergerproxy_in28_));
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
  assign OUT_CONDITION_main_28882_30128 = out_read_cond_FU_15_i0_fu_main_28882_30128;
  assign OUT_CONDITION_main_28882_30140 = out_read_cond_FU_17_i0_fu_main_28882_30140;
  assign OUT_UNBOUNDED_main_28882_30105 = s_done_fu_main_28882_30105;
  assign OUT_UNBOUNDED_main_28882_30139 = s_done_fu_main_28882_30139;
  assign OUT_UNBOUNDED_main_28882_30148 = s_done_fu_main_28882_30148;

endmodule

// FSM based controller description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_main(done_port, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE, selector_IN_UNBOUNDED_main_28882_30105, selector_IN_UNBOUNDED_main_28882_30139, selector_IN_UNBOUNDED_main_28882_30148, selector_MUX_27_reg_3_0_0_0, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, OUT_CONDITION_main_28882_30128, OUT_CONDITION_main_28882_30140, OUT_UNBOUNDED_main_28882_30105, OUT_UNBOUNDED_main_28882_30139, OUT_UNBOUNDED_main_28882_30148, clock, reset, start_port);
  // IN
  input OUT_CONDITION_main_28882_30128;
  input OUT_CONDITION_main_28882_30140;
  input OUT_UNBOUNDED_main_28882_30105;
  input OUT_UNBOUNDED_main_28882_30139;
  input OUT_UNBOUNDED_main_28882_30148;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE;
  output selector_IN_UNBOUNDED_main_28882_30105;
  output selector_IN_UNBOUNDED_main_28882_30139;
  output selector_IN_UNBOUNDED_main_28882_30148;
  output selector_MUX_27_reg_3_0_0_0;
  output wrenable_reg_0;
  output wrenable_reg_1;
  output wrenable_reg_2;
  output wrenable_reg_3;
  output wrenable_reg_4;
  output wrenable_reg_5;
  output wrenable_reg_6;
  parameter [11:0] S_0 = 12'b000000000001,
    S_1 = 12'b000000000010,
    S_2 = 12'b000000000100,
    S_3 = 12'b000000001000,
    S_4 = 12'b000000010000,
    S_5 = 12'b000000100000,
    S_6 = 12'b000001000000,
    S_7 = 12'b000010000000,
    S_11 = 12'b100000000000,
    S_8 = 12'b000100000000,
    S_9 = 12'b001000000000,
    S_10 = 12'b010000000000;
  reg [11:0] _present_state, _next_state;
  reg done_port;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE;
  reg selector_IN_UNBOUNDED_main_28882_30105;
  reg selector_IN_UNBOUNDED_main_28882_30139;
  reg selector_IN_UNBOUNDED_main_28882_30148;
  reg selector_MUX_27_reg_3_0_0_0;
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
    selector_IN_UNBOUNDED_main_28882_30105 = 1'b0;
    selector_IN_UNBOUNDED_main_28882_30139 = 1'b0;
    selector_IN_UNBOUNDED_main_28882_30148 = 1'b0;
    selector_MUX_27_reg_3_0_0_0 = 1'b0;
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
          selector_IN_UNBOUNDED_main_28882_30105 = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          if (OUT_UNBOUNDED_main_28882_30105 == 1'b0)
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
          selector_MUX_27_reg_3_0_0_0 = 1'bX;
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
          if (OUT_UNBOUNDED_main_28882_30105 == 1'b0)
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
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_5 = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          selector_MUX_27_reg_3_0_0_0 = 1'b1;
          wrenable_reg_3 = 1'b1;
          if (OUT_CONDITION_main_28882_30128 == 1'b1)
            begin
              _next_state = S_2;
            end
          else
            begin
              _next_state = S_4;
              selector_MUX_27_reg_3_0_0_0 = 1'b0;
              wrenable_reg_3 = 1'b0;
            end
        end
      S_4 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE = 1'b1;
          _next_state = S_5;
        end
      S_5 :
        begin
          selector_IN_UNBOUNDED_main_28882_30139 = 1'b1;
          wrenable_reg_6 = 1'b1;
          if (OUT_UNBOUNDED_main_28882_30139 == 1'b0)
            begin
              _next_state = S_6;
            end
          else
            begin
              _next_state = S_7;
            end
        end
      S_6 :
        begin
          wrenable_reg_6 = 1'b1;
          if (OUT_UNBOUNDED_main_28882_30139 == 1'b0)
            begin
              _next_state = S_6;
            end
          else
            begin
              _next_state = S_7;
            end
        end
      S_7 :
        begin
          if (OUT_CONDITION_main_28882_30140 == 1'b1)
            begin
              _next_state = S_8;
            end
          else
            begin
              _next_state = S_11;
              done_port = 1'b1;
            end
        end
      S_11 :
        begin
          _next_state = S_0;
        end
      S_8 :
        begin
          selector_IN_UNBOUNDED_main_28882_30148 = 1'b1;
          if (OUT_UNBOUNDED_main_28882_30148 == 1'b0)
            begin
              _next_state = S_9;
            end
          else
            begin
              _next_state = S_10;
              done_port = 1'b1;
            end
        end
      S_9 :
        begin
          if (OUT_UNBOUNDED_main_28882_30148 == 1'b0)
            begin
              _next_state = S_9;
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
      default :
        begin
          _next_state = S_0;
          selector_MUX_27_reg_3_0_0_0 = 1'bX;
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
  parameter MEM_var_28859_28880=2560, MEM_var_28861_28880=3072, MEM_var_28862_28880=3584, MEM_var_28864_28880=4096, MEM_var_28865_28880=4608, MEM_var_28866_28880=5120, MEM_var_28867_28882=512, MEM_var_28868_28882=1024, MEM_var_28869_28882=1536, MEM_var_28870_28882=2048;
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
  wire OUT_CONDITION_main_28882_30128;
  wire OUT_CONDITION_main_28882_30140;
  wire OUT_UNBOUNDED_main_28882_30105;
  wire OUT_UNBOUNDED_main_28882_30139;
  wire OUT_UNBOUNDED_main_28882_30148;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE;
  wire selector_IN_UNBOUNDED_main_28882_30105;
  wire selector_IN_UNBOUNDED_main_28882_30139;
  wire selector_IN_UNBOUNDED_main_28882_30148;
  wire selector_MUX_27_reg_3_0_0_0;
  wire wrenable_reg_0;
  wire wrenable_reg_1;
  wire wrenable_reg_2;
  wire wrenable_reg_3;
  wire wrenable_reg_4;
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  
  controller_main Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE), .selector_IN_UNBOUNDED_main_28882_30105(selector_IN_UNBOUNDED_main_28882_30105), .selector_IN_UNBOUNDED_main_28882_30139(selector_IN_UNBOUNDED_main_28882_30139), .selector_IN_UNBOUNDED_main_28882_30148(selector_IN_UNBOUNDED_main_28882_30148), .selector_MUX_27_reg_3_0_0_0(selector_MUX_27_reg_3_0_0_0), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .OUT_CONDITION_main_28882_30128(OUT_CONDITION_main_28882_30128), .OUT_CONDITION_main_28882_30140(OUT_CONDITION_main_28882_30140), .OUT_UNBOUNDED_main_28882_30105(OUT_UNBOUNDED_main_28882_30105), .OUT_UNBOUNDED_main_28882_30139(OUT_UNBOUNDED_main_28882_30139), .OUT_UNBOUNDED_main_28882_30148(OUT_UNBOUNDED_main_28882_30148), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_main #(.MEM_var_28859_28880(MEM_var_28859_28880), .MEM_var_28861_28880(MEM_var_28861_28880), .MEM_var_28862_28880(MEM_var_28862_28880), .MEM_var_28864_28880(MEM_var_28864_28880), .MEM_var_28865_28880(MEM_var_28865_28880), .MEM_var_28866_28880(MEM_var_28866_28880), .MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28869_28882(MEM_var_28869_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_CONDITION_main_28882_30128(OUT_CONDITION_main_28882_30128), .OUT_CONDITION_main_28882_30140(OUT_CONDITION_main_28882_30140), .OUT_UNBOUNDED_main_28882_30105(OUT_UNBOUNDED_main_28882_30105), .OUT_UNBOUNDED_main_28882_30139(OUT_UNBOUNDED_main_28882_30139), .OUT_UNBOUNDED_main_28882_30148(OUT_UNBOUNDED_main_28882_30148), .clock(clock), .reset(reset), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_1_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_2_i0_STORE), .selector_IN_UNBOUNDED_main_28882_30105(selector_IN_UNBOUNDED_main_28882_30105), .selector_IN_UNBOUNDED_main_28882_30139(selector_IN_UNBOUNDED_main_28882_30139), .selector_IN_UNBOUNDED_main_28882_30148(selector_IN_UNBOUNDED_main_28882_30148), .selector_MUX_27_reg_3_0_0_0(selector_MUX_27_reg_3_0_0_0), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6));
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
  parameter MEM_var_28859_28880=2560, MEM_var_28861_28880=3072, MEM_var_28862_28880=3584, MEM_var_28864_28880=4096, MEM_var_28865_28880=4608, MEM_var_28866_28880=5120, MEM_var_28867_28882=512, MEM_var_28868_28882=1024, MEM_var_28869_28882=1536, MEM_var_28870_28882=2048;
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
  
  _main #(.MEM_var_28859_28880(MEM_var_28859_28880), .MEM_var_28861_28880(MEM_var_28861_28880), .MEM_var_28862_28880(MEM_var_28862_28880), .MEM_var_28864_28880(MEM_var_28864_28880), .MEM_var_28865_28880(MEM_var_28865_28880), .MEM_var_28866_28880(MEM_var_28866_28880), .MEM_var_28867_28882(MEM_var_28867_28882), .MEM_var_28868_28882(MEM_var_28868_28882), .MEM_var_28869_28882(MEM_var_28869_28882), .MEM_var_28870_28882(MEM_var_28870_28882)) _main_i0 (.done_port(done_port), .Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .clock(clock), .reset(reset), .start_port(start_port), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram({8'b00000000, 8'b00000000}), .Sin_DataRdy({1'b0, 1'b0}), .Min_oe_ram({1'b0, 1'b0}), .Min_we_ram({1'b0, 1'b0}), .Min_addr_ram({13'b0000000000000, 13'b0000000000000}), .Min_Wdata_ram({8'b00000000, 8'b00000000}), .Min_data_ram_size({4'b0000, 4'b0000}));

endmodule


