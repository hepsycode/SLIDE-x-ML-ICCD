// 
// Politecnico di Milano
// Code created using PandA - Version: PandA 0.9.6 - Revision 891ec3caed502474cab0813cc4a9fc678deabaa5 - Date 2022-05-26T15:12:45
// bambu executed with: bambu -I/home/dews/Scrivania/bambu-hls/RESULTS/BAMBU/28x28/astar/includes/values_90 --simulate --simulator=VERILATOR --clock-period=5 --experimental-setup=BAMBU-AREA --device-name=xc7a100t-1csg324-VVD /home/dews/Scrivania/bambu-hls/cc4cs_bambu/benchmarkBasic/astar/thrd.c 
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
module ARRAY_1D_STD_BRAM_SDS_BUS_BASE(clock, reset, in1, in2, in3, sel_LOAD, sel_STORE, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, Sin_Rdata_ram, S_data_ram_size, Sin_DataRdy, out1, Sout_Rdata_ram, Sout_DataRdy, proxy_in1, proxy_in2, proxy_in3, proxy_sel_LOAD, proxy_sel_STORE, proxy_out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_in3=1, BITSIZE_out1=1, BITSIZE_S_addr_ram=1, BITSIZE_S_Wdata_ram=8, BITSIZE_Sin_Rdata_ram=8, BITSIZE_Sout_Rdata_ram=8, BITSIZE_S_data_ram_size=1, MEMORY_INIT_file="array.mem", n_elements=1, data_size=32, address_space_begin=0, address_space_rangesize=4, BUS_PIPELINED=1, BRAM_BITSIZE=32, PRIVATE_MEMORY=0, USE_SPARSE_MEMORY=1, HIGH_LATENCY=0, BITSIZE_proxy_in1=1, BITSIZE_proxy_in2=1, BITSIZE_proxy_in3=1, BITSIZE_proxy_out1=1;
  // IN
  input clock;
  input reset;
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  input [BITSIZE_in3-1:0] in3;
  input sel_LOAD;
  input sel_STORE;
  input S_oe_ram;
  input S_we_ram;
  input [BITSIZE_S_addr_ram-1:0] S_addr_ram;
  input [BITSIZE_S_Wdata_ram-1:0] S_Wdata_ram;
  input [BITSIZE_Sin_Rdata_ram-1:0] Sin_Rdata_ram;
  input [BITSIZE_S_data_ram_size-1:0] S_data_ram_size;
  input Sin_DataRdy;
  input [BITSIZE_proxy_in1-1:0] proxy_in1;
  input [BITSIZE_proxy_in2-1:0] proxy_in2;
  input [BITSIZE_proxy_in3-1:0] proxy_in3;
  input proxy_sel_LOAD;
  input proxy_sel_STORE;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  output [BITSIZE_Sout_Rdata_ram-1:0] Sout_Rdata_ram;
  output Sout_DataRdy;
  output [BITSIZE_proxy_out1-1:0] proxy_out1;
  
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
  parameter n_bytes = n_elements*(BRAM_BITSIZE/8);
  parameter n_byte_on_databus = BRAM_BITSIZE/8;
  parameter n_mem_elements = n_bytes/(n_byte_on_databus) + (n_bytes%(n_byte_on_databus) == 0 ? 0 : 1);
  parameter nbit_addr = BITSIZE_in2 > BITSIZE_proxy_in2 ? BITSIZE_in2 : BITSIZE_proxy_in2;
  
  `ifdef _SIM_HAVE_CLOG2
    parameter nbit_read_addr = n_elements == 1 ? 1 : $clog2(n_elements);
    parameter nbits_byte_offset = n_byte_on_databus==1 ? 0 : $clog2(n_byte_on_databus);
    parameter nbits_address_space_rangesize = $clog2(address_space_rangesize);
  `else
    parameter nbit_read_addr = n_elements == 1 ? 1 : log2(n_elements);
    parameter nbits_byte_offset = n_byte_on_databus==1 ? 0 : log2(n_byte_on_databus);
    parameter nbits_address_space_rangesize = log2(address_space_rangesize);
  `endif
    
  wire [nbit_read_addr-1:0] memory_addr_a;
  wire [nbit_read_addr-1:0] memory_addr_a_mem;
  reg [nbit_read_addr-1:0] memory_addr_a1 =0;
  
  wire bram_write;
  wire bram_write_mem;
  reg bram_write1 =0;
  reg [data_size-1:0] dout_a =0;
  reg [data_size-1:0] dout_a_registered =0;
  wire cs, oe_ram_cs, we_ram_cs;
  reg we_ram_cs_delayed =0;
  reg oe_ram_cs_delayed =0;
  reg oe_ram_cs_delayed_registered =0;
  reg oe_ram_cs_delayed_registered1 =0;
  wire [nbit_addr-1:0] relative_addr;
  wire [nbit_addr-1:0] tmp_addr;
  wire [data_size-1:0] din_a;
  wire [data_size-1:0] din_a_mem;
  reg [data_size-1:0] din_a1 =0;
  reg [data_size-1:0] memory [0:n_elements-1] /* synthesis syn_ramstyle = "no_rw_check" */;
  
  initial
  begin
    $readmemb(MEMORY_INIT_file, memory, 0, n_elements-1);
  end
  
  assign din_a = proxy_sel_STORE ? proxy_in1 : sel_STORE ? in1 : S_Wdata_ram;
  assign bram_write = sel_STORE || proxy_sel_STORE || we_ram_cs;
  generate
    if(HIGH_LATENCY==2)
    begin
      always @ (posedge clock)
      begin
         memory_addr_a1 <= memory_addr_a;
         bram_write1 <= bram_write;
         din_a1 <= din_a;
      end
      assign memory_addr_a_mem = memory_addr_a1;
      assign bram_write_mem = bram_write1;
      assign din_a_mem = din_a1;
    end
    else
    begin
      assign memory_addr_a_mem = memory_addr_a;
      assign bram_write_mem = bram_write;
      assign din_a_mem = din_a;
    end
  endgenerate
  
  always @(posedge clock)
  begin
    if (bram_write_mem)
    begin
      memory[memory_addr_a_mem] <= din_a_mem;
    end
    if(HIGH_LATENCY==0)
    begin
      dout_a <= memory[memory_addr_a_mem];
    end
    else if(HIGH_LATENCY==1)
    begin
      dout_a_registered <= memory[memory_addr_a_mem];
      dout_a <= dout_a_registered;
    end
    else
    begin
      dout_a_registered <= memory[memory_addr_a_mem];
      dout_a <= dout_a_registered;
    end
  end
  
  assign tmp_addr = (proxy_sel_LOAD||proxy_sel_STORE) ? proxy_in2 : in2;
  
  generate
    if(PRIVATE_MEMORY==0 && USE_SPARSE_MEMORY==0)
      assign cs = (S_addr_ram >= (address_space_begin)) && (S_addr_ram < (address_space_begin+address_space_rangesize));
    else if(PRIVATE_MEMORY==0)
      assign cs = S_addr_ram[nbit_addr-1:nbits_address_space_rangesize] == address_space_begin[nbit_addr-1:nbits_address_space_rangesize];
    else
      assign cs = 1'b0;
  endgenerate
  
  assign oe_ram_cs = S_oe_ram && cs;
  assign we_ram_cs = S_we_ram && cs;
  
  generate
    if(PRIVATE_MEMORY==0 && USE_SPARSE_MEMORY==0)
      assign relative_addr = (sel_STORE===1'b1 || sel_LOAD===1'b1 || proxy_sel_STORE===1'b1 || proxy_sel_LOAD===1'b1) ? tmp_addr-address_space_begin[nbit_addr-1:0] : S_addr_ram-address_space_begin[nbit_addr-1:0];
    else if(PRIVATE_MEMORY==0)
      assign relative_addr = (sel_STORE===1'b1 || sel_LOAD===1'b1 || proxy_sel_STORE===1'b1 || proxy_sel_LOAD===1'b1) ? tmp_addr[nbits_address_space_rangesize-1:0] : S_addr_ram[nbits_address_space_rangesize-1:0];
    else if(USE_SPARSE_MEMORY==1)
      assign relative_addr = tmp_addr[nbits_address_space_rangesize-1:0];
    else
      assign relative_addr = tmp_addr-address_space_begin[nbit_addr-1:0];
  endgenerate
  
  generate
    if (n_elements==1)
      assign memory_addr_a = {nbit_read_addr{1'b0}};
    else
      assign memory_addr_a = relative_addr[nbit_read_addr+nbits_byte_offset-1:nbits_byte_offset];
  endgenerate
  
  assign out1 = dout_a;
  assign proxy_out1 = dout_a;
  always @(posedge clock )
  begin
    if(reset == 1'b0)
      begin
        oe_ram_cs_delayed <= 1'b0;
        if(HIGH_LATENCY != 0) oe_ram_cs_delayed_registered <= 1'b0;
        if(HIGH_LATENCY == 2) oe_ram_cs_delayed_registered1 <= 1'b0;
      end
    else
      begin
        if(HIGH_LATENCY==0)
          oe_ram_cs_delayed <= oe_ram_cs & (!oe_ram_cs_delayed | BUS_PIPELINED);
        else if(HIGH_LATENCY==1)
        begin
          oe_ram_cs_delayed_registered <= oe_ram_cs & ((!oe_ram_cs_delayed_registered & !oe_ram_cs_delayed) | BUS_PIPELINED);
          oe_ram_cs_delayed <= oe_ram_cs_delayed_registered;
        end
        else
        begin
          oe_ram_cs_delayed_registered1 <= oe_ram_cs & ((!oe_ram_cs_delayed_registered1 & !oe_ram_cs_delayed_registered) | BUS_PIPELINED);
          oe_ram_cs_delayed_registered <= oe_ram_cs_delayed_registered1;
          oe_ram_cs_delayed <= oe_ram_cs_delayed_registered;
        end
      end
  end
    
  always @(posedge clock )
  begin
    if(reset == 1'b0)
      we_ram_cs_delayed <= 1'b0;
    else
      we_ram_cs_delayed <= we_ram_cs & !we_ram_cs_delayed;
  end
  
  generate
    if(PRIVATE_MEMORY==1)
      assign Sout_Rdata_ram =Sin_Rdata_ram;
    else if (BITSIZE_Sout_Rdata_ram <= data_size)
      assign Sout_Rdata_ram = oe_ram_cs_delayed ? dout_a[BITSIZE_Sout_Rdata_ram-1:0] : Sin_Rdata_ram;
    else
      assign Sout_Rdata_ram = oe_ram_cs_delayed ? {{BITSIZE_Sout_Rdata_ram-data_size{1'b0}}, dout_a} : Sin_Rdata_ram;
  endgenerate
  
  generate
    if(PRIVATE_MEMORY==1)
      assign Sout_DataRdy = Sin_DataRdy;
    else
      assign Sout_DataRdy = oe_ram_cs_delayed | Sin_DataRdy | we_ram_cs_delayed;
  endgenerate
  
  // Add assertion here
  // psl default clock = (posedge clock);
  // psl ERROR_SDS_data_ram_size: assert never {(BRAM_BITSIZE != in3 && (sel_LOAD || sel_STORE)) || (BRAM_BITSIZE != proxy_in3 && (proxy_sel_LOAD || proxy_sel_STORE))};
  // psl ERROR_SDS_alignment: assert never {(((in2-address_space_begin) %(BRAM_BITSIZE/8) != 0) && (sel_LOAD || sel_STORE)) || (((proxy_in2-address_space_begin) %(BRAM_BITSIZE/8) != 0) && (proxy_sel_LOAD || proxy_sel_STORE))};
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2004-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module ARRAY_1D_STD_BRAM_SDS_BUS(clock, reset, in1, in2, in3, in4, sel_LOAD, sel_STORE, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, Sin_Rdata_ram, S_data_ram_size, Sin_DataRdy, out1, Sout_Rdata_ram, Sout_DataRdy, proxy_in1, proxy_in2, proxy_in3, proxy_sel_LOAD, proxy_sel_STORE, proxy_out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_in3=1, BITSIZE_out1=1, BITSIZE_S_addr_ram=1, BITSIZE_S_Wdata_ram=8, BITSIZE_Sin_Rdata_ram=8, BITSIZE_Sout_Rdata_ram=8, BITSIZE_S_data_ram_size=1, MEMORY_INIT_file="array.mem", n_elements=1, data_size=32, address_space_begin=0, address_space_rangesize=4, BUS_PIPELINED=1, BRAM_BITSIZE=32, PRIVATE_MEMORY=0, USE_SPARSE_MEMORY=1, BITSIZE_proxy_in1=1, BITSIZE_proxy_in2=1, BITSIZE_proxy_in3=1, BITSIZE_proxy_out1=1;
  // IN
  input clock;
  input reset;
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  input [BITSIZE_in3-1:0] in3;
  input in4;
  input sel_LOAD;
  input sel_STORE;
  input S_oe_ram;
  input S_we_ram;
  input [BITSIZE_S_addr_ram-1:0] S_addr_ram;
  input [BITSIZE_S_Wdata_ram-1:0] S_Wdata_ram;
  input [BITSIZE_Sin_Rdata_ram-1:0] Sin_Rdata_ram;
  input [BITSIZE_S_data_ram_size-1:0] S_data_ram_size;
  input Sin_DataRdy;
  input [BITSIZE_proxy_in1-1:0] proxy_in1;
  input [BITSIZE_proxy_in2-1:0] proxy_in2;
  input [BITSIZE_proxy_in3-1:0] proxy_in3;
  input proxy_sel_LOAD;
  input proxy_sel_STORE;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  output [BITSIZE_Sout_Rdata_ram-1:0] Sout_Rdata_ram;
  output Sout_DataRdy;
  output [BITSIZE_proxy_out1-1:0] proxy_out1;
  ARRAY_1D_STD_BRAM_SDS_BUS_BASE #(.BITSIZE_in1(BITSIZE_in1), .BITSIZE_in2(BITSIZE_in2), .BITSIZE_in3(BITSIZE_in3), .BITSIZE_out1(BITSIZE_out1), .BITSIZE_S_addr_ram(BITSIZE_S_addr_ram), .BITSIZE_S_Wdata_ram(BITSIZE_S_Wdata_ram), .BITSIZE_Sin_Rdata_ram(BITSIZE_Sin_Rdata_ram), .BITSIZE_Sout_Rdata_ram(BITSIZE_Sout_Rdata_ram), .BITSIZE_S_data_ram_size(BITSIZE_S_data_ram_size), .MEMORY_INIT_file(MEMORY_INIT_file), .n_elements(n_elements), .data_size(data_size), .address_space_begin(address_space_begin), .address_space_rangesize(address_space_rangesize), .BUS_PIPELINED(BUS_PIPELINED), .BRAM_BITSIZE(BRAM_BITSIZE), .PRIVATE_MEMORY(PRIVATE_MEMORY), .USE_SPARSE_MEMORY(USE_SPARSE_MEMORY), .HIGH_LATENCY(0), .BITSIZE_proxy_in1(BITSIZE_proxy_in1), .BITSIZE_proxy_in2(BITSIZE_proxy_in2), .BITSIZE_proxy_in3(BITSIZE_proxy_in3), .BITSIZE_proxy_out1(BITSIZE_proxy_out1)) ARRAY_1D_STD_BRAM_instance (.out1(out1), .Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .proxy_out1(proxy_out1), .clock(clock), .reset(reset), .in1(in1), .in2(in2), .in3(in3), .sel_LOAD(sel_LOAD & in4), .sel_STORE(sel_STORE & in4), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(proxy_in1), .proxy_in2(proxy_in2), .proxy_in3(proxy_in3), .proxy_sel_LOAD(proxy_sel_LOAD), .proxy_sel_STORE(proxy_sel_STORE));
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
module PROXY_CTRL(in1, in2, in3, in4, sel_LOAD, sel_STORE, out1, proxy_in1, proxy_in2, proxy_in3, proxy_sel_LOAD, proxy_sel_STORE, proxy_out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_in3=1, BITSIZE_out1=1, BITSIZE_proxy_in1=1, BITSIZE_proxy_in2=1, BITSIZE_proxy_in3=1, BITSIZE_proxy_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  input [BITSIZE_in3-1:0] in3;
  input in4;
  input sel_LOAD;
  input sel_STORE;
  input [BITSIZE_proxy_out1-1:0] proxy_out1;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  output [BITSIZE_proxy_in1-1:0] proxy_in1;
  output [BITSIZE_proxy_in2-1:0] proxy_in2;
  output [BITSIZE_proxy_in3-1:0] proxy_in3;
  output proxy_sel_LOAD;
  output proxy_sel_STORE;
  
  wire int_sel_LOAD;
  wire int_sel_STORE;
  assign int_sel_LOAD = sel_LOAD & in4;
  assign int_sel_STORE = sel_STORE & in4;
  assign out1 = proxy_out1;
  assign proxy_in1 = int_sel_STORE ? in1 : 0;
  assign proxy_in2 = (int_sel_LOAD|int_sel_STORE) ? in2 : 0;
  assign proxy_in3 = (int_sel_LOAD|int_sel_STORE) ? in3 : 0;
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
module BMEMORY_CTRL(clock, in1, in2, in3, in4, sel_LOAD, sel_STORE, out1, Min_oe_ram, Mout_oe_ram, Min_we_ram, Mout_we_ram, Min_addr_ram, Mout_addr_ram, M_Rdata_ram, Min_Wdata_ram, Mout_Wdata_ram, Min_data_ram_size, Mout_data_ram_size, M_DataRdy);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_in3=1, BITSIZE_out1=1, BITSIZE_Min_addr_ram=1, BITSIZE_Mout_addr_ram=1, BITSIZE_M_Rdata_ram=8, BITSIZE_Min_Wdata_ram=8, BITSIZE_Mout_Wdata_ram=8, BITSIZE_Min_data_ram_size=1, BITSIZE_Mout_data_ram_size=1;
  // IN
  input clock;
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  input [BITSIZE_in3-1:0] in3;
  input in4;
  input sel_LOAD;
  input sel_STORE;
  input Min_oe_ram;
  input Min_we_ram;
  input [BITSIZE_Min_addr_ram-1:0] Min_addr_ram;
  input [BITSIZE_M_Rdata_ram-1:0] M_Rdata_ram;
  input [BITSIZE_Min_Wdata_ram-1:0] Min_Wdata_ram;
  input [BITSIZE_Min_data_ram_size-1:0] Min_data_ram_size;
  input M_DataRdy;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  output Mout_oe_ram;
  output Mout_we_ram;
  output [BITSIZE_Mout_addr_ram-1:0] Mout_addr_ram;
  output [BITSIZE_Mout_Wdata_ram-1:0] Mout_Wdata_ram;
  output [BITSIZE_Mout_data_ram_size-1:0] Mout_data_ram_size;
  
  wire  [BITSIZE_in2-1:0] tmp_addr;
  wire int_sel_LOAD;
  wire int_sel_STORE;
  assign tmp_addr = in2;
  assign Mout_addr_ram = (int_sel_LOAD || int_sel_STORE) ? tmp_addr : Min_addr_ram;
  assign Mout_oe_ram = int_sel_LOAD ? 1'b1 : Min_oe_ram;
  assign Mout_we_ram = int_sel_STORE ? 1'b1 : Min_we_ram;
  assign out1 = M_Rdata_ram[BITSIZE_out1-1:0];
  assign Mout_Wdata_ram = int_sel_STORE ? in1 : Min_Wdata_ram;
  assign Mout_data_ram_size = int_sel_STORE || int_sel_LOAD ? in3[BITSIZE_in3-1:0] : Min_data_ram_size;
  assign int_sel_LOAD = sel_LOAD & in4;
  assign int_sel_STORE = sel_STORE & in4;
  // Add assertion here
  // psl default clock = (posedge clock);
  // psl ERROR_LOAD_Min_oe_ram: assert never {sel_LOAD && Min_oe_ram};
  // psl ERROR_STORE_Min_we_ram: assert never {sel_STORE && Min_we_ram};
  // psl ERROR_STORE_LOAD: assert never {sel_STORE && sel_LOAD};
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

// Datapath RTL description for heuristic
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_heuristic(clock, reset, in_port_goal, in_port_current, in_port_path_cost, return_port, proxy_out1_28868, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, selector_MUX_24_gimple_return_FU_10_i0_0_0_0, fuselector_PROXY_CTRL_0_i0_LOAD, fuselector_PROXY_CTRL_0_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2, wrenable_reg_3, OUT_CONDITION_heuristic_28876_29308);
  parameter MEM_var_28868_28879=64;
  // IN
  input clock;
  input reset;
  input [7:0] in_port_goal;
  input [7:0] in_port_current;
  input signed [7:0] in_port_path_cost;
  input [7:0] proxy_out1_28868;
  input selector_MUX_24_gimple_return_FU_10_i0_0_0_0;
  input fuselector_PROXY_CTRL_0_i0_LOAD;
  input fuselector_PROXY_CTRL_0_i0_STORE;
  input wrenable_reg_0;
  input wrenable_reg_1;
  input wrenable_reg_2;
  input wrenable_reg_3;
  // OUT
  output signed [7:0] return_port;
  output [7:0] proxy_in1_28868;
  output [8:0] proxy_in2_28868;
  output [3:0] proxy_in3_28868;
  output proxy_sel_LOAD_28868;
  output proxy_sel_STORE_28868;
  output OUT_CONDITION_heuristic_28876_29308;
  // Component and signal declarations
  wire signed [7:0] out_IIconvert_expr_FU_11_i0_fu_heuristic_28876_29326;
  wire signed [7:0] out_IIdata_converter_FU_8_i0_fu_heuristic_28876_29324;
  wire [7:0] out_IUdata_converter_FU_6_i0_fu_heuristic_28876_29752;
  wire [7:0] out_MUX_24_gimple_return_FU_10_i0_0_0_0;
  wire [7:0] out_PROXY_CTRL_0_i0_PROXY_CTRL_0_i0;
  wire signed [8:0] out_UIdata_converter_FU_3_i0_fu_heuristic_28876_29305;
  wire [8:0] out_UUdata_converter_FU_5_i0_fu_heuristic_28876_29749;
  wire [7:0] out_UUdata_converter_FU_7_i0_fu_heuristic_28876_29731;
  wire signed [8:0] out___builtin_abs_8_8_12_i0_fu_heuristic_28876_29325;
  wire [8:0] out_addr_expr_FU_4_i0_fu_heuristic_28876_29768;
  wire signed [1:0] out_bit_and_expr_FU_8_0_8_13_i0_fu_heuristic_28876_30245;
  wire signed [1:0] out_bit_and_expr_FU_8_0_8_13_i1_fu_heuristic_28876_30258;
  wire signed [7:0] out_bit_ior_concat_expr_FU_14_i0_fu_heuristic_28876_29323;
  wire signed [7:0] out_bit_ior_concat_expr_FU_15_i0_fu_heuristic_28876_29327;
  wire out_const_0;
  wire [1:0] out_const_1;
  wire [4:0] out_const_2;
  wire out_const_3;
  wire [1:0] out_const_4;
  wire [5:0] out_const_5;
  wire [1:0] out_const_6;
  wire [6:0] out_const_7;
  wire signed [7:0] out_conv_out_const_1_I_2_I_8;
  wire [3:0] out_conv_out_const_2_5_4;
  wire [31:0] out_conv_out_const_7_7_32;
  wire [8:0] out_conv_out_reg_2_reg_2_7_9;
  wire out_ge_expr_FU_8_0_8_16_i0_fu_heuristic_28876_29744;
  wire signed [7:0] out_lshift_expr_FU_8_0_8_17_i0_fu_heuristic_28876_30241;
  wire signed [7:0] out_lshift_expr_FU_8_0_8_18_i0_fu_heuristic_28876_30255;
  wire signed [6:0] out_plus_expr_FU_8_0_8_19_i0_fu_heuristic_28876_30238;
  wire signed [6:0] out_plus_expr_FU_8_0_8_20_i0_fu_heuristic_28876_30252;
  wire out_read_cond_FU_9_i0_fu_heuristic_28876_29308;
  wire [7:0] out_reg_0_reg_0;
  wire [7:0] out_reg_1_reg_1;
  wire [6:0] out_reg_2_reg_2;
  wire [7:0] out_reg_3_reg_3;
  wire signed [6:0] out_rshift_expr_FU_8_0_8_21_i0_fu_heuristic_28876_30233;
  wire signed [6:0] out_rshift_expr_FU_8_0_8_22_i0_fu_heuristic_28876_30250;
  wire [1:0] out_ui_bit_and_expr_FU_8_0_8_23_i0_fu_heuristic_28876_30226;
  wire [8:0] out_ui_bit_ior_concat_expr_FU_24_i0_fu_heuristic_28876_29777;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_25_i0_fu_heuristic_28876_29774;
  wire [8:0] out_ui_lshift_expr_FU_16_0_16_25_i1_fu_heuristic_28876_30221;
  wire [6:0] out_ui_plus_expr_FU_8_8_8_26_i0_fu_heuristic_28876_30217;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_0_8_27_i0_fu_heuristic_28876_29740;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_28_i0_fu_heuristic_28876_29759;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_29_i0_fu_heuristic_28876_30210;
  wire [5:0] out_ui_rshift_expr_FU_8_0_8_30_i0_fu_heuristic_28876_30214;
  wire [7:0] sig_in_bus_mergerproxy_in1_288680_0;
  wire [8:0] sig_in_bus_mergerproxy_in2_288681_0;
  wire [3:0] sig_in_bus_mergerproxy_in3_288682_0;
  wire sig_in_bus_mergerproxy_sel_LOAD_288683_0;
  wire sig_in_bus_mergerproxy_sel_STORE_288684_0;
  wire [7:0] sig_out_bus_mergerproxy_in1_288680_;
  wire [8:0] sig_out_bus_mergerproxy_in2_288681_;
  wire [3:0] sig_out_bus_mergerproxy_in3_288682_;
  wire sig_out_bus_mergerproxy_sel_LOAD_288683_;
  wire sig_out_bus_mergerproxy_sel_STORE_288684_;
  
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_24_gimple_return_FU_10_i0_0_0_0 (.out1(out_MUX_24_gimple_return_FU_10_i0_0_0_0), .sel(selector_MUX_24_gimple_return_FU_10_i0_0_0_0), .in1(out_conv_out_const_1_I_2_I_8), .in2(out_bit_ior_concat_expr_FU_15_i0_fu_heuristic_28876_29327));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(9), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_0_i0 (.out1(out_PROXY_CTRL_0_i0_PROXY_CTRL_0_i0), .proxy_in1(sig_in_bus_mergerproxy_in1_288680_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288681_0), .proxy_in3(sig_in_bus_mergerproxy_in3_288682_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_288683_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_288684_0), .in1(8'b00000000), .in2(out_conv_out_reg_2_reg_2_7_9), .in3(out_conv_out_const_2_5_4), .in4(out_const_3), .sel_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .proxy_out1(proxy_out1_28868));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in1_288680_ (.out1(sig_out_bus_mergerproxy_in1_288680_), .in1({sig_in_bus_mergerproxy_in1_288680_0}));
  bus_merger #(.BITSIZE_in1(9), .PORTSIZE_in1(1), .BITSIZE_out1(9)) bus_mergerproxy_in2_288681_ (.out1(sig_out_bus_mergerproxy_in2_288681_), .in1({sig_in_bus_mergerproxy_in2_288681_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(1), .BITSIZE_out1(4)) bus_mergerproxy_in3_288682_ (.out1(sig_out_bus_mergerproxy_in3_288682_), .in1({sig_in_bus_mergerproxy_in3_288682_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD_288683_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288683_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288683_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE_288684_ (.out1(sig_out_bus_mergerproxy_sel_STORE_288684_), .in1({sig_in_bus_mergerproxy_sel_STORE_288684_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(2), .value(2'b01)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(2), .value(2'b10)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(6), .value(6'b101001)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(7), .value(MEM_var_28868_28879)) const_7 (.out1(out_const_7));
  IIdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(8)) conv_out_const_1_I_2_I_8 (.out1(out_conv_out_const_1_I_2_I_8), .in1(out_const_1));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_2_5_4 (.out1(out_conv_out_const_2_5_4), .in1(out_const_2));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(32)) conv_out_const_7_7_32 (.out1(out_conv_out_const_7_7_32), .in1(out_const_7));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_2_reg_2_7_9 (.out1(out_conv_out_reg_2_reg_2_7_9), .in1(out_reg_2_reg_2));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_heuristic_28876_29305 (.out1(out_UIdata_converter_FU_3_i0_fu_heuristic_28876_29305), .in1(in_port_current));
  read_cond_FU #(.BITSIZE_in1(1)) fu_heuristic_28876_29308 (.out1(out_read_cond_FU_9_i0_fu_heuristic_28876_29308), .in1(out_ge_expr_FU_8_0_8_16_i0_fu_heuristic_28876_29744));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(8), .OFFSET_PARAMETER(1)) fu_heuristic_28876_29323 (.out1(out_bit_ior_concat_expr_FU_14_i0_fu_heuristic_28876_29323), .in1(out_lshift_expr_FU_8_0_8_17_i0_fu_heuristic_28876_30241), .in2(out_bit_and_expr_FU_8_0_8_13_i0_fu_heuristic_28876_30245), .in3(out_const_1));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_heuristic_28876_29324 (.out1(out_IIdata_converter_FU_8_i0_fu_heuristic_28876_29324), .in1(out_bit_ior_concat_expr_FU_14_i0_fu_heuristic_28876_29323));
  __builtin_abs #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_heuristic_28876_29325 (.out1(out___builtin_abs_8_8_12_i0_fu_heuristic_28876_29325), .in1(out_reg_0_reg_0));
  IIconvert_expr_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_heuristic_28876_29326 (.out1(out_IIconvert_expr_FU_11_i0_fu_heuristic_28876_29326), .in1(out___builtin_abs_8_8_12_i0_fu_heuristic_28876_29325));
  bit_ior_concat_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(8), .OFFSET_PARAMETER(1)) fu_heuristic_28876_29327 (.out1(out_bit_ior_concat_expr_FU_15_i0_fu_heuristic_28876_29327), .in1(out_lshift_expr_FU_8_0_8_18_i0_fu_heuristic_28876_30255), .in2(out_bit_and_expr_FU_8_0_8_13_i1_fu_heuristic_28876_30258), .in3(out_const_1));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_heuristic_28876_29731 (.out1(out_UUdata_converter_FU_7_i0_fu_heuristic_28876_29731), .in1(out_ui_pointer_plus_expr_FU_8_8_8_28_i0_fu_heuristic_28876_29759));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(6), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_heuristic_28876_29740 (.out1(out_ui_pointer_plus_expr_FU_8_0_8_27_i0_fu_heuristic_28876_29740), .in1(out_reg_1_reg_1), .in2(out_const_5));
  ge_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_heuristic_28876_29744 (.out1(out_ge_expr_FU_8_0_8_16_i0_fu_heuristic_28876_29744), .in1(out_reg_3_reg_3), .in2(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(9)) fu_heuristic_28876_29749 (.out1(out_UUdata_converter_FU_5_i0_fu_heuristic_28876_29749), .in1(out_addr_expr_FU_4_i0_fu_heuristic_28876_29768));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_heuristic_28876_29752 (.out1(out_IUdata_converter_FU_6_i0_fu_heuristic_28876_29752), .in1(out_UIdata_converter_FU_3_i0_fu_heuristic_28876_29305));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_heuristic_28876_29759 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_28_i0_fu_heuristic_28876_29759), .in1(out_UUdata_converter_FU_5_i0_fu_heuristic_28876_29749), .in2(out_ui_bit_ior_concat_expr_FU_24_i0_fu_heuristic_28876_29777));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(9)) fu_heuristic_28876_29768 (.out1(out_addr_expr_FU_4_i0_fu_heuristic_28876_29768), .in1(out_conv_out_const_7_7_32));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(10), .PRECISION(32)) fu_heuristic_28876_29774 (.out1(out_ui_lshift_expr_FU_16_0_16_25_i0_fu_heuristic_28876_29774), .in1(out_IUdata_converter_FU_6_i0_fu_heuristic_28876_29752), .in2(out_const_4));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(9), .OFFSET_PARAMETER(2)) fu_heuristic_28876_29777 (.out1(out_ui_bit_ior_concat_expr_FU_24_i0_fu_heuristic_28876_29777), .in1(out_ui_lshift_expr_FU_16_0_16_25_i1_fu_heuristic_28876_30221), .in2(out_ui_bit_and_expr_FU_8_0_8_23_i0_fu_heuristic_28876_30226), .in3(out_const_4));
  ui_rshift_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(32)) fu_heuristic_28876_30210 (.out1(out_ui_rshift_expr_FU_16_0_16_29_i0_fu_heuristic_28876_30210), .in1(out_ui_lshift_expr_FU_16_0_16_25_i0_fu_heuristic_28876_29774), .in2(out_const_4));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_heuristic_28876_30214 (.out1(out_ui_rshift_expr_FU_8_0_8_30_i0_fu_heuristic_28876_30214), .in1(out_IUdata_converter_FU_6_i0_fu_heuristic_28876_29752), .in2(out_const_4));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(6), .BITSIZE_out1(7)) fu_heuristic_28876_30217 (.out1(out_ui_plus_expr_FU_8_8_8_26_i0_fu_heuristic_28876_30217), .in1(out_ui_rshift_expr_FU_16_0_16_29_i0_fu_heuristic_28876_30210), .in2(out_ui_rshift_expr_FU_8_0_8_30_i0_fu_heuristic_28876_30214));
  ui_lshift_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_out1(9), .PRECISION(32)) fu_heuristic_28876_30221 (.out1(out_ui_lshift_expr_FU_16_0_16_25_i1_fu_heuristic_28876_30221), .in1(out_ui_plus_expr_FU_8_8_8_26_i0_fu_heuristic_28876_30217), .in2(out_const_4));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_heuristic_28876_30226 (.out1(out_ui_bit_and_expr_FU_8_0_8_23_i0_fu_heuristic_28876_30226), .in1(out_IUdata_converter_FU_6_i0_fu_heuristic_28876_29752), .in2(out_const_6));
  rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(7), .PRECISION(8)) fu_heuristic_28876_30233 (.out1(out_rshift_expr_FU_8_0_8_21_i0_fu_heuristic_28876_30233), .in1(in_port_path_cost), .in2(out_const_1));
  plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_out1(7)) fu_heuristic_28876_30238 (.out1(out_plus_expr_FU_8_0_8_19_i0_fu_heuristic_28876_30238), .in1(out_rshift_expr_FU_8_0_8_21_i0_fu_heuristic_28876_30233), .in2(out_const_6));
  lshift_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(8)) fu_heuristic_28876_30241 (.out1(out_lshift_expr_FU_8_0_8_17_i0_fu_heuristic_28876_30241), .in1(out_plus_expr_FU_8_0_8_19_i0_fu_heuristic_28876_30238), .in2(out_const_1));
  bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_heuristic_28876_30245 (.out1(out_bit_and_expr_FU_8_0_8_13_i0_fu_heuristic_28876_30245), .in1(in_port_path_cost), .in2(out_const_1));
  rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(7), .PRECISION(8)) fu_heuristic_28876_30250 (.out1(out_rshift_expr_FU_8_0_8_22_i0_fu_heuristic_28876_30250), .in1(out_IIconvert_expr_FU_11_i0_fu_heuristic_28876_29326), .in2(out_const_1));
  plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_out1(7)) fu_heuristic_28876_30252 (.out1(out_plus_expr_FU_8_0_8_20_i0_fu_heuristic_28876_30252), .in1(out_rshift_expr_FU_8_0_8_22_i0_fu_heuristic_28876_30250), .in2(out_const_1));
  lshift_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(8)) fu_heuristic_28876_30255 (.out1(out_lshift_expr_FU_8_0_8_18_i0_fu_heuristic_28876_30255), .in1(out_plus_expr_FU_8_0_8_20_i0_fu_heuristic_28876_30252), .in2(out_const_1));
  bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_heuristic_28876_30258 (.out1(out_bit_and_expr_FU_8_0_8_13_i1_fu_heuristic_28876_30258), .in1(out_IIconvert_expr_FU_11_i0_fu_heuristic_28876_29326), .in2(out_const_1));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_8_i0_fu_heuristic_28876_29324), .wenable(wrenable_reg_0));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_7_i0_fu_heuristic_28876_29731), .wenable(wrenable_reg_1));
  register_STD #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_0_8_27_i0_fu_heuristic_28876_29740), .wenable(wrenable_reg_2));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_PROXY_CTRL_0_i0_PROXY_CTRL_0_i0), .wenable(wrenable_reg_3));
  // io-signal post fix
  assign return_port = out_MUX_24_gimple_return_FU_10_i0_0_0_0;
  assign proxy_in1_28868 = sig_out_bus_mergerproxy_in1_288680_;
  assign proxy_in2_28868 = sig_out_bus_mergerproxy_in2_288681_;
  assign proxy_in3_28868 = sig_out_bus_mergerproxy_in3_288682_;
  assign proxy_sel_LOAD_28868 = sig_out_bus_mergerproxy_sel_LOAD_288683_;
  assign proxy_sel_STORE_28868 = sig_out_bus_mergerproxy_sel_STORE_288684_;
  assign OUT_CONDITION_heuristic_28876_29308 = out_read_cond_FU_9_i0_fu_heuristic_28876_29308;

endmodule

// FSM based controller description for heuristic
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_heuristic(done_port, selector_MUX_24_gimple_return_FU_10_i0_0_0_0, fuselector_PROXY_CTRL_0_i0_LOAD, fuselector_PROXY_CTRL_0_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2, wrenable_reg_3, OUT_CONDITION_heuristic_28876_29308, clock, reset, start_port);
  // IN
  input OUT_CONDITION_heuristic_28876_29308;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_MUX_24_gimple_return_FU_10_i0_0_0_0;
  output fuselector_PROXY_CTRL_0_i0_LOAD;
  output fuselector_PROXY_CTRL_0_i0_STORE;
  output wrenable_reg_0;
  output wrenable_reg_1;
  output wrenable_reg_2;
  output wrenable_reg_3;
  parameter [6:0] S_0 = 7'b0000001,
    S_1 = 7'b0000010,
    S_2 = 7'b0000100,
    S_3 = 7'b0001000,
    S_4 = 7'b0010000,
    S_6 = 7'b1000000,
    S_5 = 7'b0100000;
  reg [6:0] _present_state, _next_state;
  reg done_port;
  reg selector_MUX_24_gimple_return_FU_10_i0_0_0_0;
  reg fuselector_PROXY_CTRL_0_i0_LOAD;
  reg fuselector_PROXY_CTRL_0_i0_STORE;
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
    selector_MUX_24_gimple_return_FU_10_i0_0_0_0 = 1'b0;
    fuselector_PROXY_CTRL_0_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRL_0_i0_STORE = 1'b0;
    wrenable_reg_0 = 1'b0;
    wrenable_reg_1 = 1'b0;
    wrenable_reg_2 = 1'b0;
    wrenable_reg_3 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          selector_MUX_24_gimple_return_FU_10_i0_0_0_0 = 1'bX;
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
          fuselector_PROXY_CTRL_0_i0_LOAD = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          wrenable_reg_3 = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          if (OUT_CONDITION_heuristic_28876_29308 == 1'b0)
            begin
              _next_state = S_5;
              done_port = 1'b1;
            end
          else
            begin
              _next_state = S_6;
              done_port = 1'b1;
            end
        end
      S_6 :
        begin
          selector_MUX_24_gimple_return_FU_10_i0_0_0_0 = 1'b1;
          _next_state = S_0;
        end
      S_5 :
        begin
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_24_gimple_return_FU_10_i0_0_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_2 = 1'bX;
          wrenable_reg_3 = 1'bX;
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

// Top component for heuristic
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module heuristic(clock, reset, start_port, done_port, goal, current, path_cost, return_port, proxy_out1_28868, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868);
  parameter MEM_var_28868_28879=64;
  // IN
  input clock;
  input reset;
  input start_port;
  input [7:0] goal;
  input [7:0] current;
  input signed [7:0] path_cost;
  input [7:0] proxy_out1_28868;
  // OUT
  output done_port;
  output signed [7:0] return_port;
  output [7:0] proxy_in1_28868;
  output [8:0] proxy_in2_28868;
  output [3:0] proxy_in3_28868;
  output proxy_sel_LOAD_28868;
  output proxy_sel_STORE_28868;
  // Component and signal declarations
  wire OUT_CONDITION_heuristic_28876_29308;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_PROXY_CTRL_0_i0_LOAD;
  wire fuselector_PROXY_CTRL_0_i0_STORE;
  wire selector_MUX_24_gimple_return_FU_10_i0_0_0_0;
  wire wrenable_reg_0;
  wire wrenable_reg_1;
  wire wrenable_reg_2;
  wire wrenable_reg_3;
  
  controller_heuristic Controller_i (.done_port(done_delayed_REG_signal_in), .selector_MUX_24_gimple_return_FU_10_i0_0_0_0(selector_MUX_24_gimple_return_FU_10_i0_0_0_0), .fuselector_PROXY_CTRL_0_i0_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .fuselector_PROXY_CTRL_0_i0_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .OUT_CONDITION_heuristic_28876_29308(OUT_CONDITION_heuristic_28876_29308), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_heuristic #(.MEM_var_28868_28879(MEM_var_28868_28879)) Datapath_i (.return_port(return_port), .proxy_in1_28868(proxy_in1_28868), .proxy_in2_28868(proxy_in2_28868), .proxy_in3_28868(proxy_in3_28868), .proxy_sel_LOAD_28868(proxy_sel_LOAD_28868), .proxy_sel_STORE_28868(proxy_sel_STORE_28868), .OUT_CONDITION_heuristic_28876_29308(OUT_CONDITION_heuristic_28876_29308), .clock(clock), .reset(reset), .in_port_goal(goal), .in_port_current(current), .in_port_path_cost(path_cost), .proxy_out1_28868(proxy_out1_28868), .selector_MUX_24_gimple_return_FU_10_i0_0_0_0(selector_MUX_24_gimple_return_FU_10_i0_0_0_0), .fuselector_PROXY_CTRL_0_i0_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .fuselector_PROXY_CTRL_0_i0_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

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

// Datapath RTL description for init_camefrom
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_init_camefrom(clock, reset, proxy_out1_28861, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_out1_28865, proxy_in1_28865, proxy_in2_28865, proxy_in3_28865, proxy_sel_LOAD_28865, proxy_sel_STORE_28865, selector_MUX_17_reg_2_0_0_0, fuselector_PROXY_CTRL_0_i0_LOAD, fuselector_PROXY_CTRL_0_i0_STORE, fuselector_PROXY_CTRL_1_i0_LOAD, fuselector_PROXY_CTRL_1_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, OUT_CONDITION_init_camefrom_28871_29114);
  parameter MEM_var_28861_28879=32, MEM_var_28865_28877=192;
  // IN
  input clock;
  input reset;
  input [7:0] proxy_out1_28861;
  input [7:0] proxy_out1_28865;
  input selector_MUX_17_reg_2_0_0_0;
  input fuselector_PROXY_CTRL_0_i0_LOAD;
  input fuselector_PROXY_CTRL_0_i0_STORE;
  input fuselector_PROXY_CTRL_1_i0_LOAD;
  input fuselector_PROXY_CTRL_1_i0_STORE;
  input wrenable_reg_0;
  input wrenable_reg_1;
  input wrenable_reg_2;
  input wrenable_reg_3;
  input wrenable_reg_4;
  // OUT
  output [7:0] proxy_in1_28861;
  output [8:0] proxy_in2_28861;
  output [3:0] proxy_in3_28861;
  output proxy_sel_LOAD_28861;
  output proxy_sel_STORE_28861;
  output [7:0] proxy_in1_28865;
  output [8:0] proxy_in2_28865;
  output [3:0] proxy_in3_28865;
  output proxy_sel_LOAD_28865;
  output proxy_sel_STORE_28865;
  output OUT_CONDITION_init_camefrom_28871_29114;
  // Component and signal declarations
  wire [2:0] out_IUdata_converter_FU_9_i0_fu_init_camefrom_28871_29783;
  wire [2:0] out_MUX_17_reg_2_0_0_0;
  wire signed [3:0] out_UIdata_converter_FU_8_i0_fu_init_camefrom_28871_29111;
  wire [8:0] out_UUdata_converter_FU_5_i0_fu_init_camefrom_28871_29780;
  wire [8:0] out_addr_expr_FU_4_i0_fu_init_camefrom_28871_29793;
  wire [5:0] out_addr_expr_FU_6_i0_fu_init_camefrom_28871_29797;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [4:0] out_const_2;
  wire out_const_3;
  wire [2:0] out_const_4;
  wire [7:0] out_const_5;
  wire [7:0] out_const_6;
  wire [5:0] out_const_7;
  wire [3:0] out_conv_out_const_2_5_4;
  wire [31:0] out_conv_out_const_6_8_32;
  wire [31:0] out_conv_out_const_7_6_32;
  wire [8:0] out_conv_out_reg_1_reg_1_6_9;
  wire [8:0] out_conv_out_reg_3_reg_3_8_9;
  wire [2:0] out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_0_1_3;
  wire out_read_cond_FU_10_i0_fu_init_camefrom_28871_29114;
  wire [8:0] out_reg_0_reg_0;
  wire [5:0] out_reg_1_reg_1;
  wire [2:0] out_reg_2_reg_2;
  wire [7:0] out_reg_3_reg_3;
  wire out_reg_4_reg_4;
  wire [0:0] out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_0;
  wire out_ui_ne_expr_FU_8_0_8_12_i0_fu_init_camefrom_28871_30156;
  wire [2:0] out_ui_plus_expr_FU_8_0_8_13_i0_fu_init_camefrom_28871_29113;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_14_i0_fu_init_camefrom_28871_29789;
  wire [7:0] out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_1;
  wire [7:0] out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_2;
  wire [7:0] sig_in_bus_mergerproxy_in1_288610_0;
  wire [7:0] sig_in_bus_mergerproxy_in1_288651_0;
  wire [8:0] sig_in_bus_mergerproxy_in2_288612_0;
  wire [8:0] sig_in_bus_mergerproxy_in2_288653_0;
  wire [3:0] sig_in_bus_mergerproxy_in3_288614_0;
  wire [3:0] sig_in_bus_mergerproxy_in3_288655_0;
  wire sig_in_bus_mergerproxy_sel_LOAD_288616_0;
  wire sig_in_bus_mergerproxy_sel_LOAD_288657_0;
  wire sig_in_bus_mergerproxy_sel_STORE_288618_0;
  wire sig_in_bus_mergerproxy_sel_STORE_288659_0;
  wire [7:0] sig_out_bus_mergerproxy_in1_288610_;
  wire [7:0] sig_out_bus_mergerproxy_in1_288651_;
  wire [8:0] sig_out_bus_mergerproxy_in2_288612_;
  wire [8:0] sig_out_bus_mergerproxy_in2_288653_;
  wire [3:0] sig_out_bus_mergerproxy_in3_288614_;
  wire [3:0] sig_out_bus_mergerproxy_in3_288655_;
  wire sig_out_bus_mergerproxy_sel_LOAD_288616_;
  wire sig_out_bus_mergerproxy_sel_LOAD_288657_;
  wire sig_out_bus_mergerproxy_sel_STORE_288618_;
  wire sig_out_bus_mergerproxy_sel_STORE_288659_;
  
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_0 (.out1(out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_0), .in1(out_const_0));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_1 (.out1(out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_1), .in1(out_const_5));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_2 (.out1(out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_2), .in1(out_const_1));
  MUX_GATE #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(3)) MUX_17_reg_2_0_0_0 (.out1(out_MUX_17_reg_2_0_0_0), .sel(selector_MUX_17_reg_2_0_0_0), .in1(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_0_1_3), .in2(out_ui_plus_expr_FU_8_0_8_13_i0_fu_init_camefrom_28871_29113));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(9), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_0_i0 (.proxy_in1(sig_in_bus_mergerproxy_in1_288610_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288612_0), .proxy_in3(sig_in_bus_mergerproxy_in3_288614_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_288616_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_288618_0), .in1(out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_2), .in2(out_conv_out_reg_1_reg_1_6_9), .in3(out_conv_out_const_2_5_4), .in4(out_const_3), .sel_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .proxy_out1(proxy_out1_28861));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(9), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_1_i0 (.proxy_in1(sig_in_bus_mergerproxy_in1_288651_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288653_0), .proxy_in3(sig_in_bus_mergerproxy_in3_288655_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_288657_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_288659_0), .in1(out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_1), .in2(out_conv_out_reg_3_reg_3_8_9), .in3(out_conv_out_const_2_5_4), .in4(out_const_3), .sel_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .proxy_out1(proxy_out1_28865));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in1_288610_ (.out1(sig_out_bus_mergerproxy_in1_288610_), .in1({sig_in_bus_mergerproxy_in1_288610_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in1_288651_ (.out1(sig_out_bus_mergerproxy_in1_288651_), .in1({sig_in_bus_mergerproxy_in1_288651_0}));
  bus_merger #(.BITSIZE_in1(9), .PORTSIZE_in1(1), .BITSIZE_out1(9)) bus_mergerproxy_in2_288612_ (.out1(sig_out_bus_mergerproxy_in2_288612_), .in1({sig_in_bus_mergerproxy_in2_288612_0}));
  bus_merger #(.BITSIZE_in1(9), .PORTSIZE_in1(1), .BITSIZE_out1(9)) bus_mergerproxy_in2_288653_ (.out1(sig_out_bus_mergerproxy_in2_288653_), .in1({sig_in_bus_mergerproxy_in2_288653_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(1), .BITSIZE_out1(4)) bus_mergerproxy_in3_288614_ (.out1(sig_out_bus_mergerproxy_in3_288614_), .in1({sig_in_bus_mergerproxy_in3_288614_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(1), .BITSIZE_out1(4)) bus_mergerproxy_in3_288655_ (.out1(sig_out_bus_mergerproxy_in3_288655_), .in1({sig_in_bus_mergerproxy_in3_288655_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD_288616_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288616_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288616_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD_288657_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288657_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288657_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE_288618_ (.out1(sig_out_bus_mergerproxy_sel_STORE_288618_), .in1({sig_in_bus_mergerproxy_sel_STORE_288618_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE_288659_ (.out1(sig_out_bus_mergerproxy_sel_STORE_288659_), .in1({sig_in_bus_mergerproxy_sel_STORE_288659_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000101)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(3), .value(3'b101)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28865_28877)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(6), .value(MEM_var_28861_28879)) const_7 (.out1(out_const_7));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_2_5_4 (.out1(out_conv_out_const_2_5_4), .in1(out_const_2));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_6_8_32 (.out1(out_conv_out_const_6_8_32), .in1(out_const_6));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(32)) conv_out_const_7_6_32 (.out1(out_conv_out_const_7_6_32), .in1(out_const_7));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(9)) conv_out_reg_1_reg_1_6_9 (.out1(out_conv_out_reg_1_reg_1_6_9), .in1(out_reg_1_reg_1));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_3_reg_3_8_9 (.out1(out_conv_out_reg_3_reg_3_8_9), .in1(out_reg_3_reg_3));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(3)) conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_0_1_3 (.out1(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_0_1_3), .in1(out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_0));
  UIdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(4)) fu_init_camefrom_28871_29111 (.out1(out_UIdata_converter_FU_8_i0_fu_init_camefrom_28871_29111), .in1(out_reg_2_reg_2));
  ui_plus_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(3)) fu_init_camefrom_28871_29113 (.out1(out_ui_plus_expr_FU_8_0_8_13_i0_fu_init_camefrom_28871_29113), .in1(out_reg_2_reg_2), .in2(out_const_3));
  read_cond_FU #(.BITSIZE_in1(1)) fu_init_camefrom_28871_29114 (.out1(out_read_cond_FU_10_i0_fu_init_camefrom_28871_29114), .in1(out_reg_4_reg_4));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(9)) fu_init_camefrom_28871_29780 (.out1(out_UUdata_converter_FU_5_i0_fu_init_camefrom_28871_29780), .in1(out_addr_expr_FU_4_i0_fu_init_camefrom_28871_29793));
  IUdata_converter_FU #(.BITSIZE_in1(4), .BITSIZE_out1(3)) fu_init_camefrom_28871_29783 (.out1(out_IUdata_converter_FU_9_i0_fu_init_camefrom_28871_29783), .in1(out_UIdata_converter_FU_8_i0_fu_init_camefrom_28871_29111));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(3), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_init_camefrom_28871_29789 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_14_i0_fu_init_camefrom_28871_29789), .in1(out_reg_0_reg_0), .in2(out_IUdata_converter_FU_9_i0_fu_init_camefrom_28871_29783));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(9)) fu_init_camefrom_28871_29793 (.out1(out_addr_expr_FU_4_i0_fu_init_camefrom_28871_29793), .in1(out_conv_out_const_6_8_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(6)) fu_init_camefrom_28871_29797 (.out1(out_addr_expr_FU_6_i0_fu_init_camefrom_28871_29797), .in1(out_conv_out_const_7_6_32));
  ui_ne_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(1)) fu_init_camefrom_28871_30156 (.out1(out_ui_ne_expr_FU_8_0_8_12_i0_fu_init_camefrom_28871_30156), .in1(out_ui_plus_expr_FU_8_0_8_13_i0_fu_init_camefrom_28871_29113), .in2(out_const_4));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_5_i0_fu_init_camefrom_28871_29780), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_6_i0_fu_init_camefrom_28871_29797), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(3), .BITSIZE_out1(3)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_MUX_17_reg_2_0_0_0), .wenable(wrenable_reg_2));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_14_i0_fu_init_camefrom_28871_29789), .wenable(wrenable_reg_3));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_12_i0_fu_init_camefrom_28871_30156), .wenable(wrenable_reg_4));
  // io-signal post fix
  assign proxy_in1_28861 = sig_out_bus_mergerproxy_in1_288610_;
  assign proxy_in2_28861 = sig_out_bus_mergerproxy_in2_288612_;
  assign proxy_in3_28861 = sig_out_bus_mergerproxy_in3_288614_;
  assign proxy_sel_LOAD_28861 = sig_out_bus_mergerproxy_sel_LOAD_288616_;
  assign proxy_sel_STORE_28861 = sig_out_bus_mergerproxy_sel_STORE_288618_;
  assign proxy_in1_28865 = sig_out_bus_mergerproxy_in1_288651_;
  assign proxy_in2_28865 = sig_out_bus_mergerproxy_in2_288653_;
  assign proxy_in3_28865 = sig_out_bus_mergerproxy_in3_288655_;
  assign proxy_sel_LOAD_28865 = sig_out_bus_mergerproxy_sel_LOAD_288657_;
  assign proxy_sel_STORE_28865 = sig_out_bus_mergerproxy_sel_STORE_288659_;
  assign OUT_CONDITION_init_camefrom_28871_29114 = out_read_cond_FU_10_i0_fu_init_camefrom_28871_29114;

endmodule

// FSM based controller description for init_camefrom
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_init_camefrom(done_port, selector_MUX_17_reg_2_0_0_0, fuselector_PROXY_CTRL_0_i0_LOAD, fuselector_PROXY_CTRL_0_i0_STORE, fuselector_PROXY_CTRL_1_i0_LOAD, fuselector_PROXY_CTRL_1_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, OUT_CONDITION_init_camefrom_28871_29114, clock, reset, start_port);
  // IN
  input OUT_CONDITION_init_camefrom_28871_29114;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_MUX_17_reg_2_0_0_0;
  output fuselector_PROXY_CTRL_0_i0_LOAD;
  output fuselector_PROXY_CTRL_0_i0_STORE;
  output fuselector_PROXY_CTRL_1_i0_LOAD;
  output fuselector_PROXY_CTRL_1_i0_STORE;
  output wrenable_reg_0;
  output wrenable_reg_1;
  output wrenable_reg_2;
  output wrenable_reg_3;
  output wrenable_reg_4;
  parameter [3:0] S_0 = 4'b0001,
    S_1 = 4'b0010,
    S_2 = 4'b0100,
    S_3 = 4'b1000;
  reg [3:0] _present_state, _next_state;
  reg done_port;
  reg selector_MUX_17_reg_2_0_0_0;
  reg fuselector_PROXY_CTRL_0_i0_LOAD;
  reg fuselector_PROXY_CTRL_0_i0_STORE;
  reg fuselector_PROXY_CTRL_1_i0_LOAD;
  reg fuselector_PROXY_CTRL_1_i0_STORE;
  reg wrenable_reg_0;
  reg wrenable_reg_1;
  reg wrenable_reg_2;
  reg wrenable_reg_3;
  reg wrenable_reg_4;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    selector_MUX_17_reg_2_0_0_0 = 1'b0;
    fuselector_PROXY_CTRL_0_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRL_0_i0_STORE = 1'b0;
    fuselector_PROXY_CTRL_1_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRL_1_i0_STORE = 1'b0;
    wrenable_reg_0 = 1'b0;
    wrenable_reg_1 = 1'b0;
    wrenable_reg_2 = 1'b0;
    wrenable_reg_3 = 1'b0;
    wrenable_reg_4 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          selector_MUX_17_reg_2_0_0_0 = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          selector_MUX_17_reg_2_0_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_2 = 1'bX;
          wrenable_reg_3 = 1'bX;
          wrenable_reg_4 = 1'bX;
          _next_state = S_0;
        end
      S_1 :
        begin
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          _next_state = S_2;
        end
      S_2 :
        begin
          fuselector_PROXY_CTRL_1_i0_STORE = 1'b1;
          if (OUT_CONDITION_init_camefrom_28871_29114 == 1'b1)
            begin
              _next_state = S_1;
            end
          else
            begin
              _next_state = S_3;
              done_port = 1'b1;
            end
        end
      S_3 :
        begin
          fuselector_PROXY_CTRL_0_i0_STORE = 1'b1;
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_17_reg_2_0_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_2 = 1'bX;
          wrenable_reg_3 = 1'bX;
          wrenable_reg_4 = 1'bX;
        end
    endcase
  end
endmodule

// Top component for init_camefrom
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module init_camefrom(clock, reset, start_port, done_port, proxy_out1_28861, proxy_out1_28865, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_in1_28865, proxy_in2_28865, proxy_in3_28865, proxy_sel_LOAD_28865, proxy_sel_STORE_28865);
  parameter MEM_var_28861_28879=32, MEM_var_28865_28877=192;
  // IN
  input clock;
  input reset;
  input start_port;
  input [7:0] proxy_out1_28861;
  input [7:0] proxy_out1_28865;
  // OUT
  output done_port;
  output [7:0] proxy_in1_28861;
  output [8:0] proxy_in2_28861;
  output [3:0] proxy_in3_28861;
  output proxy_sel_LOAD_28861;
  output proxy_sel_STORE_28861;
  output [7:0] proxy_in1_28865;
  output [8:0] proxy_in2_28865;
  output [3:0] proxy_in3_28865;
  output proxy_sel_LOAD_28865;
  output proxy_sel_STORE_28865;
  // Component and signal declarations
  wire OUT_CONDITION_init_camefrom_28871_29114;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_PROXY_CTRL_0_i0_LOAD;
  wire fuselector_PROXY_CTRL_0_i0_STORE;
  wire fuselector_PROXY_CTRL_1_i0_LOAD;
  wire fuselector_PROXY_CTRL_1_i0_STORE;
  wire selector_MUX_17_reg_2_0_0_0;
  wire wrenable_reg_0;
  wire wrenable_reg_1;
  wire wrenable_reg_2;
  wire wrenable_reg_3;
  wire wrenable_reg_4;
  
  controller_init_camefrom Controller_i (.done_port(done_delayed_REG_signal_in), .selector_MUX_17_reg_2_0_0_0(selector_MUX_17_reg_2_0_0_0), .fuselector_PROXY_CTRL_0_i0_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .fuselector_PROXY_CTRL_0_i0_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .fuselector_PROXY_CTRL_1_i0_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .fuselector_PROXY_CTRL_1_i0_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .OUT_CONDITION_init_camefrom_28871_29114(OUT_CONDITION_init_camefrom_28871_29114), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_init_camefrom #(.MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28865_28877(MEM_var_28865_28877)) Datapath_i (.proxy_in1_28861(proxy_in1_28861), .proxy_in2_28861(proxy_in2_28861), .proxy_in3_28861(proxy_in3_28861), .proxy_sel_LOAD_28861(proxy_sel_LOAD_28861), .proxy_sel_STORE_28861(proxy_sel_STORE_28861), .proxy_in1_28865(proxy_in1_28865), .proxy_in2_28865(proxy_in2_28865), .proxy_in3_28865(proxy_in3_28865), .proxy_sel_LOAD_28865(proxy_sel_LOAD_28865), .proxy_sel_STORE_28865(proxy_sel_STORE_28865), .OUT_CONDITION_init_camefrom_28871_29114(OUT_CONDITION_init_camefrom_28871_29114), .clock(clock), .reset(reset), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28865(proxy_out1_28865), .selector_MUX_17_reg_2_0_0_0(selector_MUX_17_reg_2_0_0_0), .fuselector_PROXY_CTRL_0_i0_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .fuselector_PROXY_CTRL_0_i0_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .fuselector_PROXY_CTRL_1_i0_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .fuselector_PROXY_CTRL_1_i0_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Datapath RTL description for insert
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_insert(clock, reset, in_port_node, in_port_priority, proxy_out1_28866, proxy_in1_28866, proxy_in2_28866, proxy_in3_28866, proxy_sel_LOAD_28866, proxy_sel_STORE_28866, proxy_out1_28867, proxy_in1_28867, proxy_in2_28867, proxy_in3_28867, proxy_sel_LOAD_28867, proxy_sel_STORE_28867, selector_MUX_2_PROXY_CTRL_0_i0_1_0_0, fuselector_PROXY_CTRL_0_i0_LOAD, fuselector_PROXY_CTRL_0_i0_STORE, fuselector_PROXY_CTRL_1_i0_LOAD, fuselector_PROXY_CTRL_1_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2);
  parameter MEM_var_28866_28877=224, MEM_var_28867_28877=256;
  // IN
  input clock;
  input reset;
  input [7:0] in_port_node;
  input signed [7:0] in_port_priority;
  input [7:0] proxy_out1_28866;
  input [7:0] proxy_out1_28867;
  input selector_MUX_2_PROXY_CTRL_0_i0_1_0_0;
  input fuselector_PROXY_CTRL_0_i0_LOAD;
  input fuselector_PROXY_CTRL_0_i0_STORE;
  input fuselector_PROXY_CTRL_1_i0_LOAD;
  input fuselector_PROXY_CTRL_1_i0_STORE;
  input wrenable_reg_0;
  input wrenable_reg_1;
  input wrenable_reg_2;
  // OUT
  output [7:0] proxy_in1_28866;
  output [8:0] proxy_in2_28866;
  output [3:0] proxy_in3_28866;
  output proxy_sel_LOAD_28866;
  output proxy_sel_STORE_28866;
  output [7:0] proxy_in1_28867;
  output [8:0] proxy_in2_28867;
  output [3:0] proxy_in3_28867;
  output proxy_sel_LOAD_28867;
  output proxy_sel_STORE_28867;
  // Component and signal declarations
  wire [7:0] out_IUdata_converter_FU_7_i0_fu_insert_28872_29804;
  wire [8:0] out_MUX_2_PROXY_CTRL_0_i0_1_0_0;
  wire [7:0] out_PROXY_CTRL_0_i0_PROXY_CTRL_0_i0;
  wire signed [8:0] out_UIdata_converter_FU_4_i0_fu_insert_28872_29143;
  wire [9:0] out_UUdata_converter_FU_6_i0_fu_insert_28872_29801;
  wire [9:0] out_addr_expr_FU_5_i0_fu_insert_28872_29822;
  wire [7:0] out_addr_expr_FU_8_i0_fu_insert_28872_29814;
  wire [1:0] out_const_0;
  wire [4:0] out_const_1;
  wire out_const_2;
  wire [7:0] out_const_3;
  wire [8:0] out_const_4;
  wire [8:0] out_conv_out_addr_expr_FU_8_i0_fu_insert_28872_29814_8_9;
  wire [3:0] out_conv_out_const_1_5_4;
  wire [31:0] out_conv_out_const_3_8_32;
  wire [31:0] out_conv_out_const_4_9_32;
  wire [8:0] out_conv_out_reg_1_reg_1_8_9;
  wire [7:0] out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_0;
  wire [7:0] out_iu_conv_conn_obj_1_IUdata_converter_FU_iu_conv_1;
  wire signed [7:0] out_plus_expr_FU_8_0_8_10_i0_fu_insert_28872_29146;
  wire [8:0] out_reg_0_reg_0;
  wire [7:0] out_reg_1_reg_1;
  wire [7:0] out_reg_2_reg_2;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_11_i0_fu_insert_28872_29810;
  wire [7:0] sig_in_bus_mergerproxy_in1_288660_0;
  wire [7:0] sig_in_bus_mergerproxy_in1_288671_0;
  wire [8:0] sig_in_bus_mergerproxy_in2_288662_0;
  wire [8:0] sig_in_bus_mergerproxy_in2_288673_0;
  wire [3:0] sig_in_bus_mergerproxy_in3_288664_0;
  wire [3:0] sig_in_bus_mergerproxy_in3_288675_0;
  wire sig_in_bus_mergerproxy_sel_LOAD_288666_0;
  wire sig_in_bus_mergerproxy_sel_LOAD_288677_0;
  wire sig_in_bus_mergerproxy_sel_STORE_288668_0;
  wire sig_in_bus_mergerproxy_sel_STORE_288679_0;
  wire [7:0] sig_out_bus_mergerproxy_in1_288660_;
  wire [7:0] sig_out_bus_mergerproxy_in1_288671_;
  wire [8:0] sig_out_bus_mergerproxy_in2_288662_;
  wire [8:0] sig_out_bus_mergerproxy_in2_288673_;
  wire [3:0] sig_out_bus_mergerproxy_in3_288664_;
  wire [3:0] sig_out_bus_mergerproxy_in3_288675_;
  wire sig_out_bus_mergerproxy_sel_LOAD_288666_;
  wire sig_out_bus_mergerproxy_sel_LOAD_288677_;
  wire sig_out_bus_mergerproxy_sel_STORE_288668_;
  wire sig_out_bus_mergerproxy_sel_STORE_288679_;
  
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_0 (.out1(out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_0), .in1(in_port_priority));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_1_IUdata_converter_FU_iu_conv_1), .in1(out_reg_2_reg_2));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_2_PROXY_CTRL_0_i0_1_0_0 (.out1(out_MUX_2_PROXY_CTRL_0_i0_1_0_0), .sel(selector_MUX_2_PROXY_CTRL_0_i0_1_0_0), .in1(out_conv_out_reg_1_reg_1_8_9), .in2(out_conv_out_addr_expr_FU_8_i0_fu_insert_28872_29814_8_9));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(9), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_0_i0 (.out1(out_PROXY_CTRL_0_i0_PROXY_CTRL_0_i0), .proxy_in1(sig_in_bus_mergerproxy_in1_288660_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288662_0), .proxy_in3(sig_in_bus_mergerproxy_in3_288664_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_288666_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_288668_0), .in1(out_iu_conv_conn_obj_1_IUdata_converter_FU_iu_conv_1), .in2(out_MUX_2_PROXY_CTRL_0_i0_1_0_0), .in3(out_conv_out_const_1_5_4), .in4(out_const_2), .sel_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .proxy_out1(proxy_out1_28866));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(9), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_1_i0 (.proxy_in1(sig_in_bus_mergerproxy_in1_288671_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288673_0), .proxy_in3(sig_in_bus_mergerproxy_in3_288675_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_288677_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_288679_0), .in1(out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_0), .in2(out_reg_0_reg_0), .in3(out_conv_out_const_1_5_4), .in4(out_const_2), .sel_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .proxy_out1(proxy_out1_28867));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in1_288660_ (.out1(sig_out_bus_mergerproxy_in1_288660_), .in1({sig_in_bus_mergerproxy_in1_288660_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in1_288671_ (.out1(sig_out_bus_mergerproxy_in1_288671_), .in1({sig_in_bus_mergerproxy_in1_288671_0}));
  bus_merger #(.BITSIZE_in1(9), .PORTSIZE_in1(1), .BITSIZE_out1(9)) bus_mergerproxy_in2_288662_ (.out1(sig_out_bus_mergerproxy_in2_288662_), .in1({sig_in_bus_mergerproxy_in2_288662_0}));
  bus_merger #(.BITSIZE_in1(9), .PORTSIZE_in1(1), .BITSIZE_out1(9)) bus_mergerproxy_in2_288673_ (.out1(sig_out_bus_mergerproxy_in2_288673_), .in1({sig_in_bus_mergerproxy_in2_288673_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(1), .BITSIZE_out1(4)) bus_mergerproxy_in3_288664_ (.out1(sig_out_bus_mergerproxy_in3_288664_), .in1({sig_in_bus_mergerproxy_in3_288664_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(1), .BITSIZE_out1(4)) bus_mergerproxy_in3_288675_ (.out1(sig_out_bus_mergerproxy_in3_288675_), .in1({sig_in_bus_mergerproxy_in3_288675_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD_288666_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288666_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288666_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD_288677_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288677_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288677_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE_288668_ (.out1(sig_out_bus_mergerproxy_sel_STORE_288668_), .in1({sig_in_bus_mergerproxy_sel_STORE_288668_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE_288679_ (.out1(sig_out_bus_mergerproxy_sel_STORE_288679_), .in1({sig_in_bus_mergerproxy_sel_STORE_288679_0}));
  constant_value #(.BITSIZE_out1(2), .value(2'b01)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28866_28877)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(9), .value(MEM_var_28867_28877)) const_4 (.out1(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_addr_expr_FU_8_i0_fu_insert_28872_29814_8_9 (.out1(out_conv_out_addr_expr_FU_8_i0_fu_insert_28872_29814_8_9), .in1(out_addr_expr_FU_8_i0_fu_insert_28872_29814));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_1_5_4 (.out1(out_conv_out_const_1_5_4), .in1(out_const_1));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_3_8_32 (.out1(out_conv_out_const_3_8_32), .in1(out_const_3));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(32)) conv_out_const_4_9_32 (.out1(out_conv_out_const_4_9_32), .in1(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_1_reg_1_8_9 (.out1(out_conv_out_reg_1_reg_1_8_9), .in1(out_reg_1_reg_1));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_insert_28872_29143 (.out1(out_UIdata_converter_FU_4_i0_fu_insert_28872_29143), .in1(in_port_node));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_insert_28872_29146 (.out1(out_plus_expr_FU_8_0_8_10_i0_fu_insert_28872_29146), .in1(out_PROXY_CTRL_0_i0_PROXY_CTRL_0_i0), .in2(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(10)) fu_insert_28872_29801 (.out1(out_UUdata_converter_FU_6_i0_fu_insert_28872_29801), .in1(out_addr_expr_FU_5_i0_fu_insert_28872_29822));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_insert_28872_29804 (.out1(out_IUdata_converter_FU_7_i0_fu_insert_28872_29804), .in1(out_UIdata_converter_FU_4_i0_fu_insert_28872_29143));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(8), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_insert_28872_29810 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_11_i0_fu_insert_28872_29810), .in1(out_UUdata_converter_FU_6_i0_fu_insert_28872_29801), .in2(out_IUdata_converter_FU_7_i0_fu_insert_28872_29804));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_insert_28872_29814 (.out1(out_addr_expr_FU_8_i0_fu_insert_28872_29814), .in1(out_conv_out_const_3_8_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(10)) fu_insert_28872_29822 (.out1(out_addr_expr_FU_5_i0_fu_insert_28872_29822), .in1(out_conv_out_const_4_9_32));
  register_STD #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_11_i0_fu_insert_28872_29810), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_8_i0_fu_insert_28872_29814), .wenable(wrenable_reg_1));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_0_8_10_i0_fu_insert_28872_29146), .wenable(wrenable_reg_2));
  // io-signal post fix
  assign proxy_in1_28866 = sig_out_bus_mergerproxy_in1_288660_;
  assign proxy_in2_28866 = sig_out_bus_mergerproxy_in2_288662_;
  assign proxy_in3_28866 = sig_out_bus_mergerproxy_in3_288664_;
  assign proxy_sel_LOAD_28866 = sig_out_bus_mergerproxy_sel_LOAD_288666_;
  assign proxy_sel_STORE_28866 = sig_out_bus_mergerproxy_sel_STORE_288668_;
  assign proxy_in1_28867 = sig_out_bus_mergerproxy_in1_288671_;
  assign proxy_in2_28867 = sig_out_bus_mergerproxy_in2_288673_;
  assign proxy_in3_28867 = sig_out_bus_mergerproxy_in3_288675_;
  assign proxy_sel_LOAD_28867 = sig_out_bus_mergerproxy_sel_LOAD_288677_;
  assign proxy_sel_STORE_28867 = sig_out_bus_mergerproxy_sel_STORE_288679_;

endmodule

// FSM based controller description for insert
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_insert(done_port, selector_MUX_2_PROXY_CTRL_0_i0_1_0_0, fuselector_PROXY_CTRL_0_i0_LOAD, fuselector_PROXY_CTRL_0_i0_STORE, fuselector_PROXY_CTRL_1_i0_LOAD, fuselector_PROXY_CTRL_1_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2, clock, reset, start_port);
  // IN
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_MUX_2_PROXY_CTRL_0_i0_1_0_0;
  output fuselector_PROXY_CTRL_0_i0_LOAD;
  output fuselector_PROXY_CTRL_0_i0_STORE;
  output fuselector_PROXY_CTRL_1_i0_LOAD;
  output fuselector_PROXY_CTRL_1_i0_STORE;
  output wrenable_reg_0;
  output wrenable_reg_1;
  output wrenable_reg_2;
  parameter [3:0] S_0 = 4'b0001,
    S_1 = 4'b0010,
    S_2 = 4'b0100,
    S_3 = 4'b1000;
  reg [3:0] _present_state, _next_state;
  reg done_port;
  reg selector_MUX_2_PROXY_CTRL_0_i0_1_0_0;
  reg fuselector_PROXY_CTRL_0_i0_LOAD;
  reg fuselector_PROXY_CTRL_0_i0_STORE;
  reg fuselector_PROXY_CTRL_1_i0_LOAD;
  reg fuselector_PROXY_CTRL_1_i0_STORE;
  reg wrenable_reg_0;
  reg wrenable_reg_1;
  reg wrenable_reg_2;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    selector_MUX_2_PROXY_CTRL_0_i0_1_0_0 = 1'b0;
    fuselector_PROXY_CTRL_0_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRL_0_i0_STORE = 1'b0;
    fuselector_PROXY_CTRL_1_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRL_1_i0_STORE = 1'b0;
    wrenable_reg_0 = 1'b0;
    wrenable_reg_1 = 1'b0;
    wrenable_reg_2 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          _next_state = S_1;
        end
        else
        begin
          selector_MUX_2_PROXY_CTRL_0_i0_1_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_2 = 1'bX;
          _next_state = S_0;
        end
      S_1 :
        begin
          fuselector_PROXY_CTRL_0_i0_LOAD = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          _next_state = S_2;
        end
      S_2 :
        begin
          fuselector_PROXY_CTRL_1_i0_STORE = 1'b1;
          wrenable_reg_2 = 1'b1;
          _next_state = S_3;
          done_port = 1'b1;
        end
      S_3 :
        begin
          selector_MUX_2_PROXY_CTRL_0_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRL_0_i0_STORE = 1'b1;
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_2_PROXY_CTRL_0_i0_1_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_2 = 1'bX;
        end
    endcase
  end
endmodule

// Top component for insert
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module insert(clock, reset, start_port, done_port, node, \priority , proxy_out1_28866, proxy_out1_28867, proxy_in1_28866, proxy_in2_28866, proxy_in3_28866, proxy_sel_LOAD_28866, proxy_sel_STORE_28866, proxy_in1_28867, proxy_in2_28867, proxy_in3_28867, proxy_sel_LOAD_28867, proxy_sel_STORE_28867);
  parameter MEM_var_28866_28877=224, MEM_var_28867_28877=256;
  // IN
  input clock;
  input reset;
  input start_port;
  input [7:0] node;
  input signed [7:0] \priority ;
  input [7:0] proxy_out1_28866;
  input [7:0] proxy_out1_28867;
  // OUT
  output done_port;
  output [7:0] proxy_in1_28866;
  output [8:0] proxy_in2_28866;
  output [3:0] proxy_in3_28866;
  output proxy_sel_LOAD_28866;
  output proxy_sel_STORE_28866;
  output [7:0] proxy_in1_28867;
  output [8:0] proxy_in2_28867;
  output [3:0] proxy_in3_28867;
  output proxy_sel_LOAD_28867;
  output proxy_sel_STORE_28867;
  // Component and signal declarations
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_PROXY_CTRL_0_i0_LOAD;
  wire fuselector_PROXY_CTRL_0_i0_STORE;
  wire fuselector_PROXY_CTRL_1_i0_LOAD;
  wire fuselector_PROXY_CTRL_1_i0_STORE;
  wire [7:0] in_port_node_SIGI1;
  wire [7:0] in_port_node_SIGI2;
  wire signed [7:0] in_port_priority_SIGI1;
  wire [7:0] in_port_priority_SIGI2;
  wire selector_MUX_2_PROXY_CTRL_0_i0_1_0_0;
  wire wrenable_reg_0;
  wire wrenable_reg_1;
  wire wrenable_reg_2;
  
  controller_insert Controller_i (.done_port(done_delayed_REG_signal_in), .selector_MUX_2_PROXY_CTRL_0_i0_1_0_0(selector_MUX_2_PROXY_CTRL_0_i0_1_0_0), .fuselector_PROXY_CTRL_0_i0_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .fuselector_PROXY_CTRL_0_i0_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .fuselector_PROXY_CTRL_1_i0_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .fuselector_PROXY_CTRL_1_i0_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_insert #(.MEM_var_28866_28877(MEM_var_28866_28877), .MEM_var_28867_28877(MEM_var_28867_28877)) Datapath_i (.proxy_in1_28866(proxy_in1_28866), .proxy_in2_28866(proxy_in2_28866), .proxy_in3_28866(proxy_in3_28866), .proxy_sel_LOAD_28866(proxy_sel_LOAD_28866), .proxy_sel_STORE_28866(proxy_sel_STORE_28866), .proxy_in1_28867(proxy_in1_28867), .proxy_in2_28867(proxy_in2_28867), .proxy_in3_28867(proxy_in3_28867), .proxy_sel_LOAD_28867(proxy_sel_LOAD_28867), .proxy_sel_STORE_28867(proxy_sel_STORE_28867), .clock(clock), .reset(reset), .in_port_node(in_port_node_SIGI2), .in_port_priority(in_port_priority_SIGI2), .proxy_out1_28866(proxy_out1_28866), .proxy_out1_28867(proxy_out1_28867), .selector_MUX_2_PROXY_CTRL_0_i0_1_0_0(selector_MUX_2_PROXY_CTRL_0_i0_1_0_0), .fuselector_PROXY_CTRL_0_i0_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .fuselector_PROXY_CTRL_0_i0_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .fuselector_PROXY_CTRL_1_i0_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .fuselector_PROXY_CTRL_1_i0_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) in_port_node_REG (.out1(in_port_node_SIGI2), .clock(clock), .reset(reset), .in1(in_port_node_SIGI1));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) in_port_priority_REG (.out1(in_port_priority_SIGI2), .clock(clock), .reset(reset), .in1(in_port_priority_SIGI1));
  // io-signal post fix
  assign in_port_node_SIGI1 = node;
  assign in_port_priority_SIGI1 = \priority ;
  assign done_port = done_delayed_REG_signal_out;

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

// Datapath RTL description for remove_min
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_remove_min(clock, reset, proxy_out1_28861, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_out1_28864, proxy_in1_28864, proxy_in2_28864, proxy_in3_28864, proxy_sel_LOAD_28864, proxy_sel_STORE_28864, proxy_out1_28866, proxy_in1_28866, proxy_in2_28866, proxy_in3_28866, proxy_sel_LOAD_28866, proxy_sel_STORE_28866, proxy_out1_28867, proxy_in1_28867, proxy_in2_28867, proxy_in3_28867, proxy_sel_LOAD_28867, proxy_sel_STORE_28867, selector_MUX_16_PROXY_CTRL_3_i0_1_0_0, selector_MUX_19_UIdata_converter_FU_14_i0_0_0_0, selector_MUX_38_reg_0_0_0_0, selector_MUX_46_reg_2_0_0_0, selector_MUX_51_reg_7_0_0_0, selector_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0, selector_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0, selector_MUX_8_PROXY_CTRL_1_i0_1_0_0, fuselector_PROXY_CTRL_0_i0_LOAD, fuselector_PROXY_CTRL_0_i0_STORE, fuselector_PROXY_CTRL_1_i0_LOAD, fuselector_PROXY_CTRL_1_i0_STORE, fuselector_PROXY_CTRL_2_i0_LOAD, fuselector_PROXY_CTRL_2_i0_STORE, fuselector_PROXY_CTRL_3_i0_LOAD, fuselector_PROXY_CTRL_3_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_remove_min_28873_29230);
  parameter MEM_var_28861_28879=32, MEM_var_28864_28877=160, MEM_var_28866_28877=224, MEM_var_28867_28877=256;
  // IN
  input clock;
  input reset;
  input [7:0] proxy_out1_28861;
  input [7:0] proxy_out1_28864;
  input [7:0] proxy_out1_28866;
  input [7:0] proxy_out1_28867;
  input selector_MUX_16_PROXY_CTRL_3_i0_1_0_0;
  input selector_MUX_19_UIdata_converter_FU_14_i0_0_0_0;
  input selector_MUX_38_reg_0_0_0_0;
  input selector_MUX_46_reg_2_0_0_0;
  input selector_MUX_51_reg_7_0_0_0;
  input selector_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0;
  input selector_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0;
  input selector_MUX_8_PROXY_CTRL_1_i0_1_0_0;
  input fuselector_PROXY_CTRL_0_i0_LOAD;
  input fuselector_PROXY_CTRL_0_i0_STORE;
  input fuselector_PROXY_CTRL_1_i0_LOAD;
  input fuselector_PROXY_CTRL_1_i0_STORE;
  input fuselector_PROXY_CTRL_2_i0_LOAD;
  input fuselector_PROXY_CTRL_2_i0_STORE;
  input fuselector_PROXY_CTRL_3_i0_LOAD;
  input fuselector_PROXY_CTRL_3_i0_STORE;
  input wrenable_reg_0;
  input wrenable_reg_1;
  input wrenable_reg_10;
  input wrenable_reg_11;
  input wrenable_reg_12;
  input wrenable_reg_13;
  input wrenable_reg_14;
  input wrenable_reg_15;
  input wrenable_reg_16;
  input wrenable_reg_2;
  input wrenable_reg_3;
  input wrenable_reg_4;
  input wrenable_reg_5;
  input wrenable_reg_6;
  input wrenable_reg_7;
  input wrenable_reg_8;
  input wrenable_reg_9;
  // OUT
  output [7:0] proxy_in1_28861;
  output [8:0] proxy_in2_28861;
  output [3:0] proxy_in3_28861;
  output proxy_sel_LOAD_28861;
  output proxy_sel_STORE_28861;
  output [7:0] proxy_in1_28864;
  output [8:0] proxy_in2_28864;
  output [3:0] proxy_in3_28864;
  output proxy_sel_LOAD_28864;
  output proxy_sel_STORE_28864;
  output [7:0] proxy_in1_28866;
  output [8:0] proxy_in2_28866;
  output [3:0] proxy_in3_28866;
  output proxy_sel_LOAD_28866;
  output proxy_sel_STORE_28866;
  output [7:0] proxy_in1_28867;
  output [8:0] proxy_in2_28867;
  output [3:0] proxy_in3_28867;
  output proxy_sel_LOAD_28867;
  output proxy_sel_STORE_28867;
  output OUT_CONDITION_remove_min_28873_29230;
  // Component and signal declarations
  wire [2:0] out_IUdata_converter_FU_15_i0_fu_remove_min_28873_30006;
  wire [7:0] out_IUdata_converter_FU_18_i0_fu_remove_min_28873_30043;
  wire [8:0] out_MUX_16_PROXY_CTRL_3_i0_1_0_0;
  wire [2:0] out_MUX_19_UIdata_converter_FU_14_i0_0_0_0;
  wire [7:0] out_MUX_38_reg_0_0_0_0;
  wire [2:0] out_MUX_46_reg_2_0_0_0;
  wire [7:0] out_MUX_51_reg_7_0_0_0;
  wire [2:0] out_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0;
  wire [2:0] out_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0;
  wire [8:0] out_MUX_8_PROXY_CTRL_1_i0_1_0_0;
  wire [7:0] out_PROXY_CTRL_1_i0_PROXY_CTRL_1_i0;
  wire [7:0] out_PROXY_CTRL_2_i0_PROXY_CTRL_2_i0;
  wire [7:0] out_PROXY_CTRL_3_i0_PROXY_CTRL_3_i0;
  wire signed [3:0] out_UIdata_converter_FU_14_i0_fu_remove_min_28873_29188;
  wire signed [8:0] out_UIdata_converter_FU_17_i0_fu_remove_min_28873_29212;
  wire [9:0] out_UUdata_converter_FU_10_i0_fu_remove_min_28873_30040;
  wire [7:0] out_addr_expr_FU_6_i0_fu_remove_min_28873_29999;
  wire [5:0] out_addr_expr_FU_7_i0_fu_remove_min_28873_30024;
  wire [7:0] out_addr_expr_FU_8_i0_fu_remove_min_28873_30028;
  wire [9:0] out_addr_expr_FU_9_i0_fu_remove_min_28873_30053;
  wire signed [7:0] out_cond_expr_FU_8_8_8_8_20_i0_fu_remove_min_28873_30374;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [8:0] out_const_10;
  wire [5:0] out_const_11;
  wire [7:0] out_const_2;
  wire [4:0] out_const_3;
  wire [7:0] out_const_4;
  wire out_const_5;
  wire [2:0] out_const_6;
  wire [1:0] out_const_7;
  wire [7:0] out_const_8;
  wire [7:0] out_const_9;
  wire [8:0] out_conv_out_addr_expr_FU_6_i0_fu_remove_min_28873_29999_8_9;
  wire [31:0] out_conv_out_const_10_9_32;
  wire [31:0] out_conv_out_const_11_6_32;
  wire [3:0] out_conv_out_const_3_5_4;
  wire [31:0] out_conv_out_const_8_8_32;
  wire [31:0] out_conv_out_const_9_8_32;
  wire [8:0] out_conv_out_reg_10_reg_10_6_9;
  wire [8:0] out_conv_out_reg_11_reg_11_8_9;
  wire [8:0] out_conv_out_reg_9_reg_9_8_9;
  wire [2:0] out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_2_1_3;
  wire [7:0] out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_0;
  wire [7:0] out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_1;
  wire out_le_expr_FU_8_8_8_21_i0_fu_remove_min_28873_29191;
  wire out_ne_expr_FU_8_0_8_22_i0_fu_remove_min_28873_29190;
  wire signed [7:0] out_plus_expr_FU_8_0_8_23_i0_fu_remove_min_28873_29206;
  wire out_read_cond_FU_16_i0_fu_remove_min_28873_29230;
  wire [7:0] out_reg_0_reg_0;
  wire [5:0] out_reg_10_reg_10;
  wire [7:0] out_reg_11_reg_11;
  wire [9:0] out_reg_12_reg_12;
  wire [7:0] out_reg_13_reg_13;
  wire [7:0] out_reg_14_reg_14;
  wire [8:0] out_reg_15_reg_15;
  wire [8:0] out_reg_16_reg_16;
  wire [2:0] out_reg_2_reg_2;
  wire [2:0] out_reg_3_reg_3;
  wire [7:0] out_reg_4_reg_4;
  wire out_reg_5_reg_5;
  wire out_reg_6_reg_6;
  wire [7:0] out_reg_7_reg_7;
  wire [7:0] out_reg_9_reg_9;
  wire [0:0] out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_2;
  wire [0:0] out_ui_bit_and_expr_FU_1_1_1_24_i0_fu_remove_min_28873_29192;
  wire [7:0] out_ui_cond_expr_FU_8_8_8_8_25_i0_fu_remove_min_28873_30376;
  wire out_ui_ne_expr_FU_8_0_8_26_i0_fu_remove_min_28873_30166;
  wire [2:0] out_ui_plus_expr_FU_8_0_8_27_i0_fu_remove_min_28873_29186;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_28_i0_fu_remove_min_28873_30012;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_28_i1_fu_remove_min_28873_30049;
  wire [7:0] out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_3;
  wire [7:0] out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_4;
  wire [7:0] sig_in_bus_mergerproxy_in1_288610_0;
  wire [7:0] sig_in_bus_mergerproxy_in1_288641_0;
  wire [7:0] sig_in_bus_mergerproxy_in1_288662_0;
  wire [7:0] sig_in_bus_mergerproxy_in1_288673_0;
  wire [8:0] sig_in_bus_mergerproxy_in2_288614_0;
  wire [8:0] sig_in_bus_mergerproxy_in2_288645_0;
  wire [8:0] sig_in_bus_mergerproxy_in2_288666_0;
  wire [8:0] sig_in_bus_mergerproxy_in2_288677_0;
  wire [3:0] sig_in_bus_mergerproxy_in3_288618_0;
  wire [3:0] sig_in_bus_mergerproxy_in3_288649_0;
  wire [3:0] sig_in_bus_mergerproxy_in3_2886610_0;
  wire [3:0] sig_in_bus_mergerproxy_in3_2886711_0;
  wire sig_in_bus_mergerproxy_sel_LOAD_2886112_0;
  wire sig_in_bus_mergerproxy_sel_LOAD_2886413_0;
  wire sig_in_bus_mergerproxy_sel_LOAD_2886614_0;
  wire sig_in_bus_mergerproxy_sel_LOAD_2886715_0;
  wire sig_in_bus_mergerproxy_sel_STORE_2886116_0;
  wire sig_in_bus_mergerproxy_sel_STORE_2886417_0;
  wire sig_in_bus_mergerproxy_sel_STORE_2886618_0;
  wire sig_in_bus_mergerproxy_sel_STORE_2886719_0;
  wire [7:0] sig_out_bus_mergerproxy_in1_288610_;
  wire [7:0] sig_out_bus_mergerproxy_in1_288641_;
  wire [7:0] sig_out_bus_mergerproxy_in1_288662_;
  wire [7:0] sig_out_bus_mergerproxy_in1_288673_;
  wire [8:0] sig_out_bus_mergerproxy_in2_288614_;
  wire [8:0] sig_out_bus_mergerproxy_in2_288645_;
  wire [8:0] sig_out_bus_mergerproxy_in2_288666_;
  wire [8:0] sig_out_bus_mergerproxy_in2_288677_;
  wire [3:0] sig_out_bus_mergerproxy_in3_288618_;
  wire [3:0] sig_out_bus_mergerproxy_in3_288649_;
  wire [3:0] sig_out_bus_mergerproxy_in3_2886610_;
  wire [3:0] sig_out_bus_mergerproxy_in3_2886711_;
  wire sig_out_bus_mergerproxy_sel_LOAD_2886112_;
  wire sig_out_bus_mergerproxy_sel_LOAD_2886413_;
  wire sig_out_bus_mergerproxy_sel_LOAD_2886614_;
  wire sig_out_bus_mergerproxy_sel_LOAD_2886715_;
  wire sig_out_bus_mergerproxy_sel_STORE_2886116_;
  wire sig_out_bus_mergerproxy_sel_STORE_2886417_;
  wire sig_out_bus_mergerproxy_sel_STORE_2886618_;
  wire sig_out_bus_mergerproxy_sel_STORE_2886719_;
  
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_2 (.out1(out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_2), .in1(out_const_0));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_3 (.out1(out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_3), .in1(out_reg_0_reg_0));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_4 (.out1(out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_4), .in1(out_const_2));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_0 (.out1(out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_0), .in1(out_reg_13_reg_13));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_1), .in1(out_const_1));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_16_PROXY_CTRL_3_i0_1_0_0 (.out1(out_MUX_16_PROXY_CTRL_3_i0_1_0_0), .sel(selector_MUX_16_PROXY_CTRL_3_i0_1_0_0), .in1(out_reg_16_reg_16), .in2(out_reg_15_reg_15));
  MUX_GATE #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(3)) MUX_19_UIdata_converter_FU_14_i0_0_0_0 (.out1(out_MUX_19_UIdata_converter_FU_14_i0_0_0_0), .sel(selector_MUX_19_UIdata_converter_FU_14_i0_0_0_0), .in1(out_reg_3_reg_3), .in2(out_reg_2_reg_2));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_38_reg_0_0_0_0 (.out1(out_MUX_38_reg_0_0_0_0), .sel(selector_MUX_38_reg_0_0_0_0), .in1(out_PROXY_CTRL_1_i0_PROXY_CTRL_1_i0), .in2(out_ui_cond_expr_FU_8_8_8_8_25_i0_fu_remove_min_28873_30376));
  MUX_GATE #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(3)) MUX_46_reg_2_0_0_0 (.out1(out_MUX_46_reg_2_0_0_0), .sel(selector_MUX_46_reg_2_0_0_0), .in1(out_reg_3_reg_3), .in2(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_2_1_3));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_51_reg_7_0_0_0 (.out1(out_MUX_51_reg_7_0_0_0), .sel(selector_MUX_51_reg_7_0_0_0), .in1(out_const_4), .in2(out_cond_expr_FU_8_8_8_8_20_i0_fu_remove_min_28873_30374));
  MUX_GATE #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(3)) MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0 (.out1(out_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0), .sel(selector_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0), .in1(out_reg_3_reg_3), .in2(out_reg_2_reg_2));
  MUX_GATE #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(3)) MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0 (.out1(out_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0), .sel(selector_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0), .in1(out_reg_3_reg_3), .in2(out_reg_2_reg_2));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_8_PROXY_CTRL_1_i0_1_0_0 (.out1(out_MUX_8_PROXY_CTRL_1_i0_1_0_0), .sel(selector_MUX_8_PROXY_CTRL_1_i0_1_0_0), .in1(out_conv_out_reg_9_reg_9_8_9), .in2(out_conv_out_addr_expr_FU_6_i0_fu_remove_min_28873_29999_8_9));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(9), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_0_i0 (.proxy_in1(sig_in_bus_mergerproxy_in1_288610_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288614_0), .proxy_in3(sig_in_bus_mergerproxy_in3_288618_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_2886112_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_2886116_0), .in1(out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_4), .in2(out_conv_out_reg_10_reg_10_6_9), .in3(out_conv_out_const_3_5_4), .in4(out_const_5), .sel_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .proxy_out1(proxy_out1_28861));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(9), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_1_i0 (.out1(out_PROXY_CTRL_1_i0_PROXY_CTRL_1_i0), .proxy_in1(sig_in_bus_mergerproxy_in1_288641_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288645_0), .proxy_in3(sig_in_bus_mergerproxy_in3_288649_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_2886413_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_2886417_0), .in1(out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_3), .in2(out_MUX_8_PROXY_CTRL_1_i0_1_0_0), .in3(out_conv_out_const_3_5_4), .in4(out_const_5), .sel_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .proxy_out1(proxy_out1_28864));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(9), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_2_i0 (.out1(out_PROXY_CTRL_2_i0_PROXY_CTRL_2_i0), .proxy_in1(sig_in_bus_mergerproxy_in1_288662_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288666_0), .proxy_in3(sig_in_bus_mergerproxy_in3_2886610_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_2886614_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_2886618_0), .in1(out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_0), .in2(out_conv_out_reg_11_reg_11_8_9), .in3(out_conv_out_const_3_5_4), .in4(out_const_5), .sel_LOAD(fuselector_PROXY_CTRL_2_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_2_i0_STORE), .proxy_out1(proxy_out1_28866));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(9), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_3_i0 (.out1(out_PROXY_CTRL_3_i0_PROXY_CTRL_3_i0), .proxy_in1(sig_in_bus_mergerproxy_in1_288673_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288677_0), .proxy_in3(sig_in_bus_mergerproxy_in3_2886711_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_2886715_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_2886719_0), .in1(out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_1), .in2(out_MUX_16_PROXY_CTRL_3_i0_1_0_0), .in3(out_conv_out_const_3_5_4), .in4(out_const_5), .sel_LOAD(fuselector_PROXY_CTRL_3_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_3_i0_STORE), .proxy_out1(proxy_out1_28867));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in1_288610_ (.out1(sig_out_bus_mergerproxy_in1_288610_), .in1({sig_in_bus_mergerproxy_in1_288610_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in1_288641_ (.out1(sig_out_bus_mergerproxy_in1_288641_), .in1({sig_in_bus_mergerproxy_in1_288641_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in1_288662_ (.out1(sig_out_bus_mergerproxy_in1_288662_), .in1({sig_in_bus_mergerproxy_in1_288662_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in1_288673_ (.out1(sig_out_bus_mergerproxy_in1_288673_), .in1({sig_in_bus_mergerproxy_in1_288673_0}));
  bus_merger #(.BITSIZE_in1(9), .PORTSIZE_in1(1), .BITSIZE_out1(9)) bus_mergerproxy_in2_288614_ (.out1(sig_out_bus_mergerproxy_in2_288614_), .in1({sig_in_bus_mergerproxy_in2_288614_0}));
  bus_merger #(.BITSIZE_in1(9), .PORTSIZE_in1(1), .BITSIZE_out1(9)) bus_mergerproxy_in2_288645_ (.out1(sig_out_bus_mergerproxy_in2_288645_), .in1({sig_in_bus_mergerproxy_in2_288645_0}));
  bus_merger #(.BITSIZE_in1(9), .PORTSIZE_in1(1), .BITSIZE_out1(9)) bus_mergerproxy_in2_288666_ (.out1(sig_out_bus_mergerproxy_in2_288666_), .in1({sig_in_bus_mergerproxy_in2_288666_0}));
  bus_merger #(.BITSIZE_in1(9), .PORTSIZE_in1(1), .BITSIZE_out1(9)) bus_mergerproxy_in2_288677_ (.out1(sig_out_bus_mergerproxy_in2_288677_), .in1({sig_in_bus_mergerproxy_in2_288677_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(1), .BITSIZE_out1(4)) bus_mergerproxy_in3_288618_ (.out1(sig_out_bus_mergerproxy_in3_288618_), .in1({sig_in_bus_mergerproxy_in3_288618_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(1), .BITSIZE_out1(4)) bus_mergerproxy_in3_288649_ (.out1(sig_out_bus_mergerproxy_in3_288649_), .in1({sig_in_bus_mergerproxy_in3_288649_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(1), .BITSIZE_out1(4)) bus_mergerproxy_in3_2886610_ (.out1(sig_out_bus_mergerproxy_in3_2886610_), .in1({sig_in_bus_mergerproxy_in3_2886610_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(1), .BITSIZE_out1(4)) bus_mergerproxy_in3_2886711_ (.out1(sig_out_bus_mergerproxy_in3_2886711_), .in1({sig_in_bus_mergerproxy_in3_2886711_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD_2886112_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886112_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886112_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD_2886413_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886413_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886413_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD_2886614_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886614_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886614_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD_2886715_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886715_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886715_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE_2886116_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886116_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886116_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE_2886417_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886417_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886417_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE_2886618_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886618_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886618_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE_2886719_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886719_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886719_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(9), .value(MEM_var_28867_28877)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(6), .value(MEM_var_28861_28879)) const_11 (.out1(out_const_11));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000101)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(8), .value(8'b01111111)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(3), .value(3'b101)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28864_28877)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28866_28877)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_addr_expr_FU_6_i0_fu_remove_min_28873_29999_8_9 (.out1(out_conv_out_addr_expr_FU_6_i0_fu_remove_min_28873_29999_8_9), .in1(out_addr_expr_FU_6_i0_fu_remove_min_28873_29999));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(32)) conv_out_const_10_9_32 (.out1(out_conv_out_const_10_9_32), .in1(out_const_10));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(32)) conv_out_const_11_6_32 (.out1(out_conv_out_const_11_6_32), .in1(out_const_11));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_3_5_4 (.out1(out_conv_out_const_3_5_4), .in1(out_const_3));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_8_8_32 (.out1(out_conv_out_const_8_8_32), .in1(out_const_8));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_9_8_32 (.out1(out_conv_out_const_9_8_32), .in1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(9)) conv_out_reg_10_reg_10_6_9 (.out1(out_conv_out_reg_10_reg_10_6_9), .in1(out_reg_10_reg_10));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_11_reg_11_8_9 (.out1(out_conv_out_reg_11_reg_11_8_9), .in1(out_reg_11_reg_11));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_9_reg_9_8_9 (.out1(out_conv_out_reg_9_reg_9_8_9), .in1(out_reg_9_reg_9));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(3)) conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_2_1_3 (.out1(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_2_1_3), .in1(out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_2));
  ui_plus_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(3)) fu_remove_min_28873_29186 (.out1(out_ui_plus_expr_FU_8_0_8_27_i0_fu_remove_min_28873_29186), .in1(out_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0), .in2(out_const_5));
  UIdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(4)) fu_remove_min_28873_29188 (.out1(out_UIdata_converter_FU_14_i0_fu_remove_min_28873_29188), .in1(out_MUX_19_UIdata_converter_FU_14_i0_0_0_0));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_remove_min_28873_29190 (.out1(out_ne_expr_FU_8_0_8_22_i0_fu_remove_min_28873_29190), .in1(out_PROXY_CTRL_3_i0_PROXY_CTRL_3_i0), .in2(out_const_0));
  le_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_remove_min_28873_29191 (.out1(out_le_expr_FU_8_8_8_21_i0_fu_remove_min_28873_29191), .in1(out_PROXY_CTRL_3_i0_PROXY_CTRL_3_i0), .in2(out_reg_7_reg_7));
  ui_bit_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_remove_min_28873_29192 (.out1(out_ui_bit_and_expr_FU_1_1_1_24_i0_fu_remove_min_28873_29192), .in1(out_reg_6_reg_6), .in2(out_reg_5_reg_5));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_remove_min_28873_29206 (.out1(out_plus_expr_FU_8_0_8_23_i0_fu_remove_min_28873_29206), .in1(out_PROXY_CTRL_2_i0_PROXY_CTRL_2_i0), .in2(out_const_7));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_remove_min_28873_29212 (.out1(out_UIdata_converter_FU_17_i0_fu_remove_min_28873_29212), .in1(out_PROXY_CTRL_1_i0_PROXY_CTRL_1_i0));
  read_cond_FU #(.BITSIZE_in1(1)) fu_remove_min_28873_29230 (.out1(out_read_cond_FU_16_i0_fu_remove_min_28873_29230), .in1(out_ui_ne_expr_FU_8_0_8_26_i0_fu_remove_min_28873_30166));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_remove_min_28873_29999 (.out1(out_addr_expr_FU_6_i0_fu_remove_min_28873_29999), .in1(out_conv_out_const_8_8_32));
  IUdata_converter_FU #(.BITSIZE_in1(4), .BITSIZE_out1(3)) fu_remove_min_28873_30006 (.out1(out_IUdata_converter_FU_15_i0_fu_remove_min_28873_30006), .in1(out_UIdata_converter_FU_14_i0_fu_remove_min_28873_29188));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(3), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_remove_min_28873_30012 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_28_i0_fu_remove_min_28873_30012), .in1(out_reg_12_reg_12), .in2(out_IUdata_converter_FU_15_i0_fu_remove_min_28873_30006));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(6)) fu_remove_min_28873_30024 (.out1(out_addr_expr_FU_7_i0_fu_remove_min_28873_30024), .in1(out_conv_out_const_11_6_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_remove_min_28873_30028 (.out1(out_addr_expr_FU_8_i0_fu_remove_min_28873_30028), .in1(out_conv_out_const_9_8_32));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(10)) fu_remove_min_28873_30040 (.out1(out_UUdata_converter_FU_10_i0_fu_remove_min_28873_30040), .in1(out_addr_expr_FU_9_i0_fu_remove_min_28873_30053));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_remove_min_28873_30043 (.out1(out_IUdata_converter_FU_18_i0_fu_remove_min_28873_30043), .in1(out_UIdata_converter_FU_17_i0_fu_remove_min_28873_29212));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(8), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_remove_min_28873_30049 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_28_i1_fu_remove_min_28873_30049), .in1(out_reg_12_reg_12), .in2(out_reg_14_reg_14));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(10)) fu_remove_min_28873_30053 (.out1(out_addr_expr_FU_9_i0_fu_remove_min_28873_30053), .in1(out_conv_out_const_10_9_32));
  ui_ne_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(1)) fu_remove_min_28873_30166 (.out1(out_ui_ne_expr_FU_8_0_8_26_i0_fu_remove_min_28873_30166), .in1(out_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0), .in2(out_const_6));
  cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_remove_min_28873_30374 (.out1(out_cond_expr_FU_8_8_8_8_20_i0_fu_remove_min_28873_30374), .in1(out_ui_bit_and_expr_FU_1_1_1_24_i0_fu_remove_min_28873_29192), .in2(out_reg_4_reg_4), .in3(out_reg_7_reg_7));
  ui_cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(3), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_remove_min_28873_30376 (.out1(out_ui_cond_expr_FU_8_8_8_8_25_i0_fu_remove_min_28873_30376), .in1(out_ui_bit_and_expr_FU_1_1_1_24_i0_fu_remove_min_28873_29192), .in2(out_reg_2_reg_2), .in3(out_reg_0_reg_0));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_MUX_38_reg_0_0_0_0), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_1 (.clock(clock), .reset(reset), .in1(8'b00000000), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_7_i0_fu_remove_min_28873_30024), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_8_i0_fu_remove_min_28873_30028), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_10_i0_fu_remove_min_28873_30040), .wenable(wrenable_reg_12));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_0_8_23_i0_fu_remove_min_28873_29206), .wenable(wrenable_reg_13));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_18_i0_fu_remove_min_28873_30043), .wenable(wrenable_reg_14));
  register_STD #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_28_i1_fu_remove_min_28873_30049), .wenable(wrenable_reg_15));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_28_i0_fu_remove_min_28873_30012), .wenable(wrenable_reg_16));
  register_SE #(.BITSIZE_in1(3), .BITSIZE_out1(3)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_MUX_46_reg_2_0_0_0), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(3), .BITSIZE_out1(3)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_27_i0_fu_remove_min_28873_29186), .wenable(wrenable_reg_3));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_PROXY_CTRL_3_i0_PROXY_CTRL_3_i0), .wenable(wrenable_reg_4));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_ne_expr_FU_8_0_8_22_i0_fu_remove_min_28873_29190), .wenable(wrenable_reg_5));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_le_expr_FU_8_8_8_21_i0_fu_remove_min_28873_29191), .wenable(wrenable_reg_6));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_MUX_51_reg_7_0_0_0), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_8 (.clock(clock), .reset(reset), .in1(8'b00000000), .wenable(wrenable_reg_8));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_6_i0_fu_remove_min_28873_29999), .wenable(wrenable_reg_9));
  // io-signal post fix
  assign proxy_in1_28861 = sig_out_bus_mergerproxy_in1_288610_;
  assign proxy_in2_28861 = sig_out_bus_mergerproxy_in2_288614_;
  assign proxy_in3_28861 = sig_out_bus_mergerproxy_in3_288618_;
  assign proxy_sel_LOAD_28861 = sig_out_bus_mergerproxy_sel_LOAD_2886112_;
  assign proxy_sel_STORE_28861 = sig_out_bus_mergerproxy_sel_STORE_2886116_;
  assign proxy_in1_28864 = sig_out_bus_mergerproxy_in1_288641_;
  assign proxy_in2_28864 = sig_out_bus_mergerproxy_in2_288645_;
  assign proxy_in3_28864 = sig_out_bus_mergerproxy_in3_288649_;
  assign proxy_sel_LOAD_28864 = sig_out_bus_mergerproxy_sel_LOAD_2886413_;
  assign proxy_sel_STORE_28864 = sig_out_bus_mergerproxy_sel_STORE_2886417_;
  assign proxy_in1_28866 = sig_out_bus_mergerproxy_in1_288662_;
  assign proxy_in2_28866 = sig_out_bus_mergerproxy_in2_288666_;
  assign proxy_in3_28866 = sig_out_bus_mergerproxy_in3_2886610_;
  assign proxy_sel_LOAD_28866 = sig_out_bus_mergerproxy_sel_LOAD_2886614_;
  assign proxy_sel_STORE_28866 = sig_out_bus_mergerproxy_sel_STORE_2886618_;
  assign proxy_in1_28867 = sig_out_bus_mergerproxy_in1_288673_;
  assign proxy_in2_28867 = sig_out_bus_mergerproxy_in2_288677_;
  assign proxy_in3_28867 = sig_out_bus_mergerproxy_in3_2886711_;
  assign proxy_sel_LOAD_28867 = sig_out_bus_mergerproxy_sel_LOAD_2886715_;
  assign proxy_sel_STORE_28867 = sig_out_bus_mergerproxy_sel_STORE_2886719_;
  assign OUT_CONDITION_remove_min_28873_29230 = out_read_cond_FU_16_i0_fu_remove_min_28873_29230;

endmodule

// FSM based controller description for remove_min
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_remove_min(done_port, selector_MUX_16_PROXY_CTRL_3_i0_1_0_0, selector_MUX_19_UIdata_converter_FU_14_i0_0_0_0, selector_MUX_38_reg_0_0_0_0, selector_MUX_46_reg_2_0_0_0, selector_MUX_51_reg_7_0_0_0, selector_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0, selector_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0, selector_MUX_8_PROXY_CTRL_1_i0_1_0_0, fuselector_PROXY_CTRL_0_i0_LOAD, fuselector_PROXY_CTRL_0_i0_STORE, fuselector_PROXY_CTRL_1_i0_LOAD, fuselector_PROXY_CTRL_1_i0_STORE, fuselector_PROXY_CTRL_2_i0_LOAD, fuselector_PROXY_CTRL_2_i0_STORE, fuselector_PROXY_CTRL_3_i0_LOAD, fuselector_PROXY_CTRL_3_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_remove_min_28873_29230, clock, reset, start_port);
  // IN
  input OUT_CONDITION_remove_min_28873_29230;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_MUX_16_PROXY_CTRL_3_i0_1_0_0;
  output selector_MUX_19_UIdata_converter_FU_14_i0_0_0_0;
  output selector_MUX_38_reg_0_0_0_0;
  output selector_MUX_46_reg_2_0_0_0;
  output selector_MUX_51_reg_7_0_0_0;
  output selector_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0;
  output selector_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0;
  output selector_MUX_8_PROXY_CTRL_1_i0_1_0_0;
  output fuselector_PROXY_CTRL_0_i0_LOAD;
  output fuselector_PROXY_CTRL_0_i0_STORE;
  output fuselector_PROXY_CTRL_1_i0_LOAD;
  output fuselector_PROXY_CTRL_1_i0_STORE;
  output fuselector_PROXY_CTRL_2_i0_LOAD;
  output fuselector_PROXY_CTRL_2_i0_STORE;
  output fuselector_PROXY_CTRL_3_i0_LOAD;
  output fuselector_PROXY_CTRL_3_i0_STORE;
  output wrenable_reg_0;
  output wrenable_reg_1;
  output wrenable_reg_10;
  output wrenable_reg_11;
  output wrenable_reg_12;
  output wrenable_reg_13;
  output wrenable_reg_14;
  output wrenable_reg_15;
  output wrenable_reg_16;
  output wrenable_reg_2;
  output wrenable_reg_3;
  output wrenable_reg_4;
  output wrenable_reg_5;
  output wrenable_reg_6;
  output wrenable_reg_7;
  output wrenable_reg_8;
  output wrenable_reg_9;
  parameter [11:0] S_0 = 12'b000000000001,
    S_11 = 12'b100000000000,
    S_1 = 12'b000000000010,
    S_5 = 12'b000000100000,
    S_6 = 12'b000001000000,
    S_7 = 12'b000010000000,
    S_8 = 12'b000100000000,
    S_9 = 12'b001000000000,
    S_10 = 12'b010000000000,
    S_2 = 12'b000000000100,
    S_3 = 12'b000000001000;
  reg [11:0] _present_state, _next_state;
  reg done_port;
  reg selector_MUX_16_PROXY_CTRL_3_i0_1_0_0;
  reg selector_MUX_19_UIdata_converter_FU_14_i0_0_0_0;
  reg selector_MUX_38_reg_0_0_0_0;
  reg selector_MUX_46_reg_2_0_0_0;
  reg selector_MUX_51_reg_7_0_0_0;
  reg selector_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0;
  reg selector_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0;
  reg selector_MUX_8_PROXY_CTRL_1_i0_1_0_0;
  reg fuselector_PROXY_CTRL_0_i0_LOAD;
  reg fuselector_PROXY_CTRL_0_i0_STORE;
  reg fuselector_PROXY_CTRL_1_i0_LOAD;
  reg fuselector_PROXY_CTRL_1_i0_STORE;
  reg fuselector_PROXY_CTRL_2_i0_LOAD;
  reg fuselector_PROXY_CTRL_2_i0_STORE;
  reg fuselector_PROXY_CTRL_3_i0_LOAD;
  reg fuselector_PROXY_CTRL_3_i0_STORE;
  reg wrenable_reg_0;
  reg wrenable_reg_1;
  reg wrenable_reg_10;
  reg wrenable_reg_11;
  reg wrenable_reg_12;
  reg wrenable_reg_13;
  reg wrenable_reg_14;
  reg wrenable_reg_15;
  reg wrenable_reg_16;
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
    selector_MUX_16_PROXY_CTRL_3_i0_1_0_0 = 1'b0;
    selector_MUX_19_UIdata_converter_FU_14_i0_0_0_0 = 1'b0;
    selector_MUX_38_reg_0_0_0_0 = 1'b0;
    selector_MUX_46_reg_2_0_0_0 = 1'b0;
    selector_MUX_51_reg_7_0_0_0 = 1'b0;
    selector_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0 = 1'b0;
    selector_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0 = 1'b0;
    selector_MUX_8_PROXY_CTRL_1_i0_1_0_0 = 1'b0;
    fuselector_PROXY_CTRL_0_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRL_0_i0_STORE = 1'b0;
    fuselector_PROXY_CTRL_1_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRL_1_i0_STORE = 1'b0;
    fuselector_PROXY_CTRL_2_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRL_2_i0_STORE = 1'b0;
    fuselector_PROXY_CTRL_3_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRL_3_i0_STORE = 1'b0;
    wrenable_reg_0 = 1'b0;
    wrenable_reg_1 = 1'b0;
    wrenable_reg_10 = 1'b0;
    wrenable_reg_11 = 1'b0;
    wrenable_reg_12 = 1'b0;
    wrenable_reg_13 = 1'b0;
    wrenable_reg_14 = 1'b0;
    wrenable_reg_15 = 1'b0;
    wrenable_reg_16 = 1'b0;
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
          fuselector_PROXY_CTRL_1_i0_LOAD = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_12 = 1'b1;
          wrenable_reg_9 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          selector_MUX_16_PROXY_CTRL_3_i0_1_0_0 = 1'bX;
          selector_MUX_19_UIdata_converter_FU_14_i0_0_0_0 = 1'bX;
          selector_MUX_38_reg_0_0_0_0 = 1'bX;
          selector_MUX_46_reg_2_0_0_0 = 1'bX;
          selector_MUX_51_reg_7_0_0_0 = 1'bX;
          selector_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0 = 1'bX;
          selector_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0 = 1'bX;
          selector_MUX_8_PROXY_CTRL_1_i0_1_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_10 = 1'bX;
          wrenable_reg_11 = 1'bX;
          wrenable_reg_12 = 1'bX;
          wrenable_reg_13 = 1'bX;
          wrenable_reg_14 = 1'bX;
          wrenable_reg_15 = 1'bX;
          wrenable_reg_16 = 1'bX;
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
      S_11 :
        begin
          selector_MUX_19_UIdata_converter_FU_14_i0_0_0_0 = 1'b1;
          selector_MUX_46_reg_2_0_0_0 = 1'b1;
          selector_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0 = 1'b1;
          selector_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0 = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_16 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_7 = 1'b1;
          if (OUT_CONDITION_remove_min_28873_29230 == 1'b1)
            begin
              _next_state = S_2;
            end
          else
            begin
              _next_state = S_6;
              wrenable_reg_16 = 1'b0;
              wrenable_reg_3 = 1'b0;
            end
        end
      S_1 :
        begin
          selector_MUX_38_reg_0_0_0_0 = 1'b1;
          selector_MUX_51_reg_7_0_0_0 = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_7 = 1'b1;
          _next_state = S_5;
        end
      S_5 :
        begin
          wrenable_reg_16 = 1'b1;
          wrenable_reg_3 = 1'b1;
          if (OUT_CONDITION_remove_min_28873_29230 == 1'b1)
            begin
              _next_state = S_2;
            end
          else
            begin
              _next_state = S_6;
              wrenable_reg_16 = 1'b0;
              wrenable_reg_3 = 1'b0;
            end
        end
      S_6 :
        begin
          selector_MUX_8_PROXY_CTRL_1_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRL_0_i0_STORE = 1'b1;
          fuselector_PROXY_CTRL_1_i0_STORE = 1'b1;
          fuselector_PROXY_CTRL_2_i0_LOAD = 1'b1;
          _next_state = S_7;
        end
      S_7 :
        begin
          selector_MUX_8_PROXY_CTRL_1_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRL_1_i0_LOAD = 1'b1;
          wrenable_reg_13 = 1'b1;
          _next_state = S_8;
        end
      S_8 :
        begin
          fuselector_PROXY_CTRL_2_i0_STORE = 1'b1;
          wrenable_reg_14 = 1'b1;
          _next_state = S_9;
        end
      S_9 :
        begin
          wrenable_reg_15 = 1'b1;
          _next_state = S_10;
          done_port = 1'b1;
        end
      S_10 :
        begin
          fuselector_PROXY_CTRL_3_i0_STORE = 1'b1;
          _next_state = S_0;
        end
      S_2 :
        begin
          selector_MUX_16_PROXY_CTRL_3_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRL_3_i0_LOAD = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          wrenable_reg_4 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_6 = 1'b1;
          _next_state = S_11;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_16_PROXY_CTRL_3_i0_1_0_0 = 1'bX;
          selector_MUX_19_UIdata_converter_FU_14_i0_0_0_0 = 1'bX;
          selector_MUX_38_reg_0_0_0_0 = 1'bX;
          selector_MUX_46_reg_2_0_0_0 = 1'bX;
          selector_MUX_51_reg_7_0_0_0 = 1'bX;
          selector_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0 = 1'bX;
          selector_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0 = 1'bX;
          selector_MUX_8_PROXY_CTRL_1_i0_1_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_10 = 1'bX;
          wrenable_reg_11 = 1'bX;
          wrenable_reg_12 = 1'bX;
          wrenable_reg_13 = 1'bX;
          wrenable_reg_14 = 1'bX;
          wrenable_reg_15 = 1'bX;
          wrenable_reg_16 = 1'bX;
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

// Top component for remove_min
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module remove_min(clock, reset, start_port, done_port, proxy_out1_28861, proxy_out1_28864, proxy_out1_28866, proxy_out1_28867, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_in1_28864, proxy_in2_28864, proxy_in3_28864, proxy_sel_LOAD_28864, proxy_sel_STORE_28864, proxy_in1_28866, proxy_in2_28866, proxy_in3_28866, proxy_sel_LOAD_28866, proxy_sel_STORE_28866, proxy_in1_28867, proxy_in2_28867, proxy_in3_28867, proxy_sel_LOAD_28867, proxy_sel_STORE_28867);
  parameter MEM_var_28861_28879=32, MEM_var_28864_28877=160, MEM_var_28866_28877=224, MEM_var_28867_28877=256;
  // IN
  input clock;
  input reset;
  input start_port;
  input [7:0] proxy_out1_28861;
  input [7:0] proxy_out1_28864;
  input [7:0] proxy_out1_28866;
  input [7:0] proxy_out1_28867;
  // OUT
  output done_port;
  output [7:0] proxy_in1_28861;
  output [8:0] proxy_in2_28861;
  output [3:0] proxy_in3_28861;
  output proxy_sel_LOAD_28861;
  output proxy_sel_STORE_28861;
  output [7:0] proxy_in1_28864;
  output [8:0] proxy_in2_28864;
  output [3:0] proxy_in3_28864;
  output proxy_sel_LOAD_28864;
  output proxy_sel_STORE_28864;
  output [7:0] proxy_in1_28866;
  output [8:0] proxy_in2_28866;
  output [3:0] proxy_in3_28866;
  output proxy_sel_LOAD_28866;
  output proxy_sel_STORE_28866;
  output [7:0] proxy_in1_28867;
  output [8:0] proxy_in2_28867;
  output [3:0] proxy_in3_28867;
  output proxy_sel_LOAD_28867;
  output proxy_sel_STORE_28867;
  // Component and signal declarations
  wire OUT_CONDITION_remove_min_28873_29230;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_PROXY_CTRL_0_i0_LOAD;
  wire fuselector_PROXY_CTRL_0_i0_STORE;
  wire fuselector_PROXY_CTRL_1_i0_LOAD;
  wire fuselector_PROXY_CTRL_1_i0_STORE;
  wire fuselector_PROXY_CTRL_2_i0_LOAD;
  wire fuselector_PROXY_CTRL_2_i0_STORE;
  wire fuselector_PROXY_CTRL_3_i0_LOAD;
  wire fuselector_PROXY_CTRL_3_i0_STORE;
  wire selector_MUX_16_PROXY_CTRL_3_i0_1_0_0;
  wire selector_MUX_19_UIdata_converter_FU_14_i0_0_0_0;
  wire selector_MUX_38_reg_0_0_0_0;
  wire selector_MUX_46_reg_2_0_0_0;
  wire selector_MUX_51_reg_7_0_0_0;
  wire selector_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0;
  wire selector_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0;
  wire selector_MUX_8_PROXY_CTRL_1_i0_1_0_0;
  wire wrenable_reg_0;
  wire wrenable_reg_1;
  wire wrenable_reg_10;
  wire wrenable_reg_11;
  wire wrenable_reg_12;
  wire wrenable_reg_13;
  wire wrenable_reg_14;
  wire wrenable_reg_15;
  wire wrenable_reg_16;
  wire wrenable_reg_2;
  wire wrenable_reg_3;
  wire wrenable_reg_4;
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  controller_remove_min Controller_i (.done_port(done_delayed_REG_signal_in), .selector_MUX_16_PROXY_CTRL_3_i0_1_0_0(selector_MUX_16_PROXY_CTRL_3_i0_1_0_0), .selector_MUX_19_UIdata_converter_FU_14_i0_0_0_0(selector_MUX_19_UIdata_converter_FU_14_i0_0_0_0), .selector_MUX_38_reg_0_0_0_0(selector_MUX_38_reg_0_0_0_0), .selector_MUX_46_reg_2_0_0_0(selector_MUX_46_reg_2_0_0_0), .selector_MUX_51_reg_7_0_0_0(selector_MUX_51_reg_7_0_0_0), .selector_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0(selector_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0), .selector_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0(selector_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0), .selector_MUX_8_PROXY_CTRL_1_i0_1_0_0(selector_MUX_8_PROXY_CTRL_1_i0_1_0_0), .fuselector_PROXY_CTRL_0_i0_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .fuselector_PROXY_CTRL_0_i0_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .fuselector_PROXY_CTRL_1_i0_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .fuselector_PROXY_CTRL_1_i0_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .fuselector_PROXY_CTRL_2_i0_LOAD(fuselector_PROXY_CTRL_2_i0_LOAD), .fuselector_PROXY_CTRL_2_i0_STORE(fuselector_PROXY_CTRL_2_i0_STORE), .fuselector_PROXY_CTRL_3_i0_LOAD(fuselector_PROXY_CTRL_3_i0_LOAD), .fuselector_PROXY_CTRL_3_i0_STORE(fuselector_PROXY_CTRL_3_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_remove_min_28873_29230(OUT_CONDITION_remove_min_28873_29230), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_remove_min #(.MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28864_28877(MEM_var_28864_28877), .MEM_var_28866_28877(MEM_var_28866_28877), .MEM_var_28867_28877(MEM_var_28867_28877)) Datapath_i (.proxy_in1_28861(proxy_in1_28861), .proxy_in2_28861(proxy_in2_28861), .proxy_in3_28861(proxy_in3_28861), .proxy_sel_LOAD_28861(proxy_sel_LOAD_28861), .proxy_sel_STORE_28861(proxy_sel_STORE_28861), .proxy_in1_28864(proxy_in1_28864), .proxy_in2_28864(proxy_in2_28864), .proxy_in3_28864(proxy_in3_28864), .proxy_sel_LOAD_28864(proxy_sel_LOAD_28864), .proxy_sel_STORE_28864(proxy_sel_STORE_28864), .proxy_in1_28866(proxy_in1_28866), .proxy_in2_28866(proxy_in2_28866), .proxy_in3_28866(proxy_in3_28866), .proxy_sel_LOAD_28866(proxy_sel_LOAD_28866), .proxy_sel_STORE_28866(proxy_sel_STORE_28866), .proxy_in1_28867(proxy_in1_28867), .proxy_in2_28867(proxy_in2_28867), .proxy_in3_28867(proxy_in3_28867), .proxy_sel_LOAD_28867(proxy_sel_LOAD_28867), .proxy_sel_STORE_28867(proxy_sel_STORE_28867), .OUT_CONDITION_remove_min_28873_29230(OUT_CONDITION_remove_min_28873_29230), .clock(clock), .reset(reset), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28864(proxy_out1_28864), .proxy_out1_28866(proxy_out1_28866), .proxy_out1_28867(proxy_out1_28867), .selector_MUX_16_PROXY_CTRL_3_i0_1_0_0(selector_MUX_16_PROXY_CTRL_3_i0_1_0_0), .selector_MUX_19_UIdata_converter_FU_14_i0_0_0_0(selector_MUX_19_UIdata_converter_FU_14_i0_0_0_0), .selector_MUX_38_reg_0_0_0_0(selector_MUX_38_reg_0_0_0_0), .selector_MUX_46_reg_2_0_0_0(selector_MUX_46_reg_2_0_0_0), .selector_MUX_51_reg_7_0_0_0(selector_MUX_51_reg_7_0_0_0), .selector_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0(selector_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0), .selector_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0(selector_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0), .selector_MUX_8_PROXY_CTRL_1_i0_1_0_0(selector_MUX_8_PROXY_CTRL_1_i0_1_0_0), .fuselector_PROXY_CTRL_0_i0_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .fuselector_PROXY_CTRL_0_i0_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .fuselector_PROXY_CTRL_1_i0_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .fuselector_PROXY_CTRL_1_i0_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .fuselector_PROXY_CTRL_2_i0_LOAD(fuselector_PROXY_CTRL_2_i0_LOAD), .fuselector_PROXY_CTRL_2_i0_STORE(fuselector_PROXY_CTRL_2_i0_STORE), .fuselector_PROXY_CTRL_3_i0_LOAD(fuselector_PROXY_CTRL_3_i0_LOAD), .fuselector_PROXY_CTRL_3_i0_STORE(fuselector_PROXY_CTRL_3_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
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

// Datapath RTL description for set_estimates
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_set_estimates(clock, reset, proxy_out1_28861, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_out1_28868, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, selector_MUX_23_reg_3_0_0_0, selector_MUX_2_PROXY_CTRL_0_i0_0_0_0, selector_MUX_3_PROXY_CTRL_0_i0_1_0_0, selector_MUX_6_PROXY_CTRL_1_i0_0_0_0, selector_MUX_7_PROXY_CTRL_1_i0_1_0_0, fuselector_PROXY_CTRL_0_i0_LOAD, fuselector_PROXY_CTRL_0_i0_STORE, fuselector_PROXY_CTRL_1_i0_LOAD, fuselector_PROXY_CTRL_1_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, OUT_MULTIIF_set_estimates_28874_30488);
  parameter MEM_var_28861_28879=32, MEM_var_28868_28879=64;
  // IN
  input clock;
  input reset;
  input [7:0] proxy_out1_28861;
  input [7:0] proxy_out1_28868;
  input selector_MUX_23_reg_3_0_0_0;
  input selector_MUX_2_PROXY_CTRL_0_i0_0_0_0;
  input selector_MUX_3_PROXY_CTRL_0_i0_1_0_0;
  input selector_MUX_6_PROXY_CTRL_1_i0_0_0_0;
  input selector_MUX_7_PROXY_CTRL_1_i0_1_0_0;
  input fuselector_PROXY_CTRL_0_i0_LOAD;
  input fuselector_PROXY_CTRL_0_i0_STORE;
  input fuselector_PROXY_CTRL_1_i0_LOAD;
  input fuselector_PROXY_CTRL_1_i0_STORE;
  input wrenable_reg_0;
  input wrenable_reg_1;
  input wrenable_reg_2;
  input wrenable_reg_3;
  input wrenable_reg_4;
  input wrenable_reg_5;
  input wrenable_reg_6;
  input wrenable_reg_7;
  input wrenable_reg_8;
  // OUT
  output [7:0] proxy_in1_28861;
  output [8:0] proxy_in2_28861;
  output [3:0] proxy_in3_28861;
  output proxy_sel_LOAD_28861;
  output proxy_sel_STORE_28861;
  output [7:0] proxy_in1_28868;
  output [8:0] proxy_in2_28868;
  output [3:0] proxy_in3_28868;
  output proxy_sel_LOAD_28868;
  output proxy_sel_STORE_28868;
  output [1:0] OUT_MULTIIF_set_estimates_28874_30488;
  // Component and signal declarations
  wire [2:0] out_IUdata_converter_FU_12_i0_fu_set_estimates_28874_30117;
  wire [2:0] out_MUX_23_reg_3_0_0_0;
  wire [7:0] out_MUX_2_PROXY_CTRL_0_i0_0_0_0;
  wire [8:0] out_MUX_3_PROXY_CTRL_0_i0_1_0_0;
  wire [7:0] out_MUX_6_PROXY_CTRL_1_i0_0_0_0;
  wire [8:0] out_MUX_7_PROXY_CTRL_1_i0_1_0_0;
  wire signed [3:0] out_UIdata_converter_FU_11_i0_fu_set_estimates_28874_29265;
  wire [7:0] out_UUdata_converter_FU_13_i0_fu_set_estimates_28874_30101;
  wire [7:0] out_UUdata_converter_FU_6_i0_fu_set_estimates_28874_30114;
  wire [6:0] out_UUdata_converter_FU_7_i0_fu_set_estimates_28874_30061;
  wire [5:0] out_addr_expr_FU_4_i0_fu_set_estimates_28874_30057;
  wire [7:0] out_addr_expr_FU_5_i0_fu_set_estimates_28874_30131;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [6:0] out_const_10;
  wire [7:0] out_const_2;
  wire [4:0] out_const_3;
  wire [7:0] out_const_4;
  wire out_const_5;
  wire [1:0] out_const_6;
  wire [2:0] out_const_7;
  wire [1:0] out_const_8;
  wire [5:0] out_const_9;
  wire [8:0] out_conv_out_addr_expr_FU_4_i0_fu_set_estimates_28874_30057_6_9;
  wire [31:0] out_conv_out_const_10_7_32;
  wire [3:0] out_conv_out_const_3_5_4;
  wire [31:0] out_conv_out_const_9_6_32;
  wire [8:0] out_conv_out_reg_0_reg_0_6_9;
  wire [8:0] out_conv_out_reg_1_reg_1_7_9;
  wire [8:0] out_conv_out_reg_8_reg_8_7_9;
  wire [2:0] out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_1_3;
  wire [7:0] out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_0;
  wire [7:0] out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_1;
  wire [1:0] out_multi_read_cond_FU_14_i0_fu_set_estimates_28874_30488;
  wire [5:0] out_reg_0_reg_0;
  wire [6:0] out_reg_1_reg_1;
  wire [7:0] out_reg_2_reg_2;
  wire [2:0] out_reg_3_reg_3;
  wire [7:0] out_reg_4_reg_4;
  wire [2:0] out_reg_5_reg_5;
  wire out_reg_6_reg_6;
  wire out_reg_7_reg_7;
  wire [6:0] out_reg_8_reg_8;
  wire out_truth_and_expr_FU_1_1_1_16_i0_fu_set_estimates_28874_30494;
  wire out_truth_not_expr_FU_1_1_17_i0_fu_set_estimates_28874_30491;
  wire [0:0] out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2;
  wire [1:0] out_ui_bit_and_expr_FU_8_0_8_18_i0_fu_set_estimates_28874_30313;
  wire [5:0] out_ui_bit_ior_concat_expr_FU_19_i0_fu_set_estimates_28874_30138;
  wire out_ui_eq_expr_FU_8_0_8_20_i0_fu_set_estimates_28874_30168;
  wire [4:0] out_ui_lshift_expr_FU_8_0_8_21_i0_fu_set_estimates_28874_30135;
  wire [5:0] out_ui_lshift_expr_FU_8_0_8_21_i1_fu_set_estimates_28874_30310;
  wire out_ui_ne_expr_FU_8_0_8_22_i0_fu_set_estimates_28874_30170;
  wire [2:0] out_ui_plus_expr_FU_8_0_8_23_i0_fu_set_estimates_28874_29247;
  wire [3:0] out_ui_plus_expr_FU_8_8_8_24_i0_fu_set_estimates_28874_30307;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_8_8_25_i0_fu_set_estimates_28874_30110;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_25_i1_fu_set_estimates_28874_30123;
  wire [2:0] out_ui_rshift_expr_FU_8_0_8_26_i0_fu_set_estimates_28874_30302;
  wire [0:0] out_ui_rshift_expr_FU_8_0_8_26_i1_fu_set_estimates_28874_30305;
  wire [7:0] out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_3;
  wire [7:0] out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_4;
  wire [7:0] sig_in_bus_mergerproxy_in1_288610_0;
  wire [7:0] sig_in_bus_mergerproxy_in1_288681_0;
  wire [8:0] sig_in_bus_mergerproxy_in2_288612_0;
  wire [8:0] sig_in_bus_mergerproxy_in2_288683_0;
  wire [3:0] sig_in_bus_mergerproxy_in3_288614_0;
  wire [3:0] sig_in_bus_mergerproxy_in3_288685_0;
  wire sig_in_bus_mergerproxy_sel_LOAD_288616_0;
  wire sig_in_bus_mergerproxy_sel_LOAD_288687_0;
  wire sig_in_bus_mergerproxy_sel_STORE_288618_0;
  wire sig_in_bus_mergerproxy_sel_STORE_288689_0;
  wire [7:0] sig_out_bus_mergerproxy_in1_288610_;
  wire [7:0] sig_out_bus_mergerproxy_in1_288681_;
  wire [8:0] sig_out_bus_mergerproxy_in2_288612_;
  wire [8:0] sig_out_bus_mergerproxy_in2_288683_;
  wire [3:0] sig_out_bus_mergerproxy_in3_288614_;
  wire [3:0] sig_out_bus_mergerproxy_in3_288685_;
  wire sig_out_bus_mergerproxy_sel_LOAD_288616_;
  wire sig_out_bus_mergerproxy_sel_LOAD_288687_;
  wire sig_out_bus_mergerproxy_sel_STORE_288618_;
  wire sig_out_bus_mergerproxy_sel_STORE_288689_;
  
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_2 (.out1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2), .in1(out_const_0));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_3 (.out1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_3), .in1(out_const_1));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_4 (.out1(out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_4), .in1(out_const_2));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_0 (.out1(out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_0), .in1(out_const_1));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_1), .in1(out_const_4));
  MUX_GATE #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(3)) MUX_23_reg_3_0_0_0 (.out1(out_MUX_23_reg_3_0_0_0), .sel(selector_MUX_23_reg_3_0_0_0), .in1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_1_3), .in2(out_ui_plus_expr_FU_8_0_8_23_i0_fu_set_estimates_28874_29247));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_2_PROXY_CTRL_0_i0_0_0_0 (.out1(out_MUX_2_PROXY_CTRL_0_i0_0_0_0), .sel(selector_MUX_2_PROXY_CTRL_0_i0_0_0_0), .in1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_3), .in2(out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_4));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_3_PROXY_CTRL_0_i0_1_0_0 (.out1(out_MUX_3_PROXY_CTRL_0_i0_1_0_0), .sel(selector_MUX_3_PROXY_CTRL_0_i0_1_0_0), .in1(out_conv_out_reg_0_reg_0_6_9), .in2(out_conv_out_addr_expr_FU_4_i0_fu_set_estimates_28874_30057_6_9));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_6_PROXY_CTRL_1_i0_0_0_0 (.out1(out_MUX_6_PROXY_CTRL_1_i0_0_0_0), .sel(selector_MUX_6_PROXY_CTRL_1_i0_0_0_0), .in1(out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_0), .in2(out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_1));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_7_PROXY_CTRL_1_i0_1_0_0 (.out1(out_MUX_7_PROXY_CTRL_1_i0_1_0_0), .sel(selector_MUX_7_PROXY_CTRL_1_i0_1_0_0), .in1(out_conv_out_reg_8_reg_8_7_9), .in2(out_conv_out_reg_1_reg_1_7_9));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(9), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_0_i0 (.proxy_in1(sig_in_bus_mergerproxy_in1_288610_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288612_0), .proxy_in3(sig_in_bus_mergerproxy_in3_288614_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_288616_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_288618_0), .in1(out_MUX_2_PROXY_CTRL_0_i0_0_0_0), .in2(out_MUX_3_PROXY_CTRL_0_i0_1_0_0), .in3(out_conv_out_const_3_5_4), .in4(out_const_5), .sel_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .proxy_out1(proxy_out1_28861));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(9), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_1_i0 (.proxy_in1(sig_in_bus_mergerproxy_in1_288681_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288683_0), .proxy_in3(sig_in_bus_mergerproxy_in3_288685_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_288687_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_288689_0), .in1(out_MUX_6_PROXY_CTRL_1_i0_0_0_0), .in2(out_MUX_7_PROXY_CTRL_1_i0_1_0_0), .in3(out_conv_out_const_3_5_4), .in4(out_const_5), .sel_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .proxy_out1(proxy_out1_28868));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in1_288610_ (.out1(sig_out_bus_mergerproxy_in1_288610_), .in1({sig_in_bus_mergerproxy_in1_288610_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in1_288681_ (.out1(sig_out_bus_mergerproxy_in1_288681_), .in1({sig_in_bus_mergerproxy_in1_288681_0}));
  bus_merger #(.BITSIZE_in1(9), .PORTSIZE_in1(1), .BITSIZE_out1(9)) bus_mergerproxy_in2_288612_ (.out1(sig_out_bus_mergerproxy_in2_288612_), .in1({sig_in_bus_mergerproxy_in2_288612_0}));
  bus_merger #(.BITSIZE_in1(9), .PORTSIZE_in1(1), .BITSIZE_out1(9)) bus_mergerproxy_in2_288683_ (.out1(sig_out_bus_mergerproxy_in2_288683_), .in1({sig_in_bus_mergerproxy_in2_288683_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(1), .BITSIZE_out1(4)) bus_mergerproxy_in3_288614_ (.out1(sig_out_bus_mergerproxy_in3_288614_), .in1({sig_in_bus_mergerproxy_in3_288614_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(1), .BITSIZE_out1(4)) bus_mergerproxy_in3_288685_ (.out1(sig_out_bus_mergerproxy_in3_288685_), .in1({sig_in_bus_mergerproxy_in3_288685_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD_288616_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288616_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288616_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD_288687_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288687_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288687_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE_288618_ (.out1(sig_out_bus_mergerproxy_sel_STORE_288618_), .in1({sig_in_bus_mergerproxy_sel_STORE_288618_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE_288689_ (.out1(sig_out_bus_mergerproxy_sel_STORE_288689_), .in1({sig_in_bus_mergerproxy_sel_STORE_288689_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(7), .value(MEM_var_28868_28879)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000101)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(8), .value(8'b01111111)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(2), .value(2'b10)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(3), .value(3'b101)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(6), .value(MEM_var_28861_28879)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(9)) conv_out_addr_expr_FU_4_i0_fu_set_estimates_28874_30057_6_9 (.out1(out_conv_out_addr_expr_FU_4_i0_fu_set_estimates_28874_30057_6_9), .in1(out_addr_expr_FU_4_i0_fu_set_estimates_28874_30057));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(32)) conv_out_const_10_7_32 (.out1(out_conv_out_const_10_7_32), .in1(out_const_10));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_3_5_4 (.out1(out_conv_out_const_3_5_4), .in1(out_const_3));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(32)) conv_out_const_9_6_32 (.out1(out_conv_out_const_9_6_32), .in1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(9)) conv_out_reg_0_reg_0_6_9 (.out1(out_conv_out_reg_0_reg_0_6_9), .in1(out_reg_0_reg_0));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_1_reg_1_7_9 (.out1(out_conv_out_reg_1_reg_1_7_9), .in1(out_reg_1_reg_1));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_8_reg_8_7_9 (.out1(out_conv_out_reg_8_reg_8_7_9), .in1(out_reg_8_reg_8));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(3)) conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_1_3 (.out1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_1_3), .in1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2));
  ui_plus_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(3)) fu_set_estimates_28874_29247 (.out1(out_ui_plus_expr_FU_8_0_8_23_i0_fu_set_estimates_28874_29247), .in1(out_reg_3_reg_3), .in2(out_const_5));
  UIdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(4)) fu_set_estimates_28874_29265 (.out1(out_UIdata_converter_FU_11_i0_fu_set_estimates_28874_29265), .in1(out_reg_3_reg_3));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(6)) fu_set_estimates_28874_30057 (.out1(out_addr_expr_FU_4_i0_fu_set_estimates_28874_30057), .in1(out_conv_out_const_9_6_32));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(7)) fu_set_estimates_28874_30061 (.out1(out_UUdata_converter_FU_7_i0_fu_set_estimates_28874_30061), .in1(out_UUdata_converter_FU_6_i0_fu_set_estimates_28874_30114));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_set_estimates_28874_30101 (.out1(out_UUdata_converter_FU_13_i0_fu_set_estimates_28874_30101), .in1(out_ui_pointer_plus_expr_FU_8_8_8_25_i1_fu_set_estimates_28874_30123));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_set_estimates_28874_30110 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_25_i0_fu_set_estimates_28874_30110), .in1(out_reg_4_reg_4), .in2(out_reg_5_reg_5));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_set_estimates_28874_30114 (.out1(out_UUdata_converter_FU_6_i0_fu_set_estimates_28874_30114), .in1(out_addr_expr_FU_5_i0_fu_set_estimates_28874_30131));
  IUdata_converter_FU #(.BITSIZE_in1(4), .BITSIZE_out1(3)) fu_set_estimates_28874_30117 (.out1(out_IUdata_converter_FU_12_i0_fu_set_estimates_28874_30117), .in1(out_UIdata_converter_FU_11_i0_fu_set_estimates_28874_29265));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(6), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_set_estimates_28874_30123 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_25_i1_fu_set_estimates_28874_30123), .in1(out_reg_2_reg_2), .in2(out_ui_bit_ior_concat_expr_FU_19_i0_fu_set_estimates_28874_30138));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_set_estimates_28874_30131 (.out1(out_addr_expr_FU_5_i0_fu_set_estimates_28874_30131), .in1(out_conv_out_const_10_7_32));
  ui_lshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(2), .BITSIZE_out1(5), .PRECISION(32)) fu_set_estimates_28874_30135 (.out1(out_ui_lshift_expr_FU_8_0_8_21_i0_fu_set_estimates_28874_30135), .in1(out_IUdata_converter_FU_12_i0_fu_set_estimates_28874_30117), .in2(out_const_6));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(6), .OFFSET_PARAMETER(2)) fu_set_estimates_28874_30138 (.out1(out_ui_bit_ior_concat_expr_FU_19_i0_fu_set_estimates_28874_30138), .in1(out_ui_lshift_expr_FU_8_0_8_21_i1_fu_set_estimates_28874_30310), .in2(out_ui_bit_and_expr_FU_8_0_8_18_i0_fu_set_estimates_28874_30313), .in3(out_const_6));
  ui_eq_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_set_estimates_28874_30168 (.out1(out_ui_eq_expr_FU_8_0_8_20_i0_fu_set_estimates_28874_30168), .in1(out_reg_3_reg_3), .in2(out_const_0));
  ui_ne_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(1)) fu_set_estimates_28874_30170 (.out1(out_ui_ne_expr_FU_8_0_8_22_i0_fu_set_estimates_28874_30170), .in1(out_reg_3_reg_3), .in2(out_const_7));
  ui_rshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_out1(3), .PRECISION(32)) fu_set_estimates_28874_30302 (.out1(out_ui_rshift_expr_FU_8_0_8_26_i0_fu_set_estimates_28874_30302), .in1(out_ui_lshift_expr_FU_8_0_8_21_i0_fu_set_estimates_28874_30135), .in2(out_const_6));
  ui_rshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(2), .BITSIZE_out1(1), .PRECISION(32)) fu_set_estimates_28874_30305 (.out1(out_ui_rshift_expr_FU_8_0_8_26_i1_fu_set_estimates_28874_30305), .in1(out_IUdata_converter_FU_12_i0_fu_set_estimates_28874_30117), .in2(out_const_6));
  ui_plus_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(4)) fu_set_estimates_28874_30307 (.out1(out_ui_plus_expr_FU_8_8_8_24_i0_fu_set_estimates_28874_30307), .in1(out_ui_rshift_expr_FU_8_0_8_26_i0_fu_set_estimates_28874_30302), .in2(out_ui_rshift_expr_FU_8_0_8_26_i1_fu_set_estimates_28874_30305));
  ui_lshift_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_set_estimates_28874_30310 (.out1(out_ui_lshift_expr_FU_8_0_8_21_i1_fu_set_estimates_28874_30310), .in1(out_ui_plus_expr_FU_8_8_8_24_i0_fu_set_estimates_28874_30307), .in2(out_const_6));
  ui_bit_and_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_set_estimates_28874_30313 (.out1(out_ui_bit_and_expr_FU_8_0_8_18_i0_fu_set_estimates_28874_30313), .in1(out_IUdata_converter_FU_12_i0_fu_set_estimates_28874_30117), .in2(out_const_8));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) fu_set_estimates_28874_30488 (.out1(out_multi_read_cond_FU_14_i0_fu_set_estimates_28874_30488), .in1({out_reg_7_reg_7, out_reg_6_reg_6}));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_set_estimates_28874_30491 (.out1(out_truth_not_expr_FU_1_1_17_i0_fu_set_estimates_28874_30491), .in1(out_ui_ne_expr_FU_8_0_8_22_i0_fu_set_estimates_28874_30170));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_set_estimates_28874_30494 (.out1(out_truth_and_expr_FU_1_1_1_16_i0_fu_set_estimates_28874_30494), .in1(out_ui_ne_expr_FU_8_0_8_22_i0_fu_set_estimates_28874_30170), .in2(out_ui_eq_expr_FU_8_0_8_20_i0_fu_set_estimates_28874_30168));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_4_i0_fu_set_estimates_28874_30057), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_7_i0_fu_set_estimates_28874_30061), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_6_i0_fu_set_estimates_28874_30114), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(3), .BITSIZE_out1(3)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_MUX_23_reg_3_0_0_0), .wenable(wrenable_reg_3));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_13_i0_fu_set_estimates_28874_30101), .wenable(wrenable_reg_4));
  register_STD #(.BITSIZE_in1(3), .BITSIZE_out1(3)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_12_i0_fu_set_estimates_28874_30117), .wenable(wrenable_reg_5));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_truth_not_expr_FU_1_1_17_i0_fu_set_estimates_28874_30491), .wenable(wrenable_reg_6));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_truth_and_expr_FU_1_1_1_16_i0_fu_set_estimates_28874_30494), .wenable(wrenable_reg_7));
  register_STD #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_25_i0_fu_set_estimates_28874_30110), .wenable(wrenable_reg_8));
  // io-signal post fix
  assign proxy_in1_28861 = sig_out_bus_mergerproxy_in1_288610_;
  assign proxy_in2_28861 = sig_out_bus_mergerproxy_in2_288612_;
  assign proxy_in3_28861 = sig_out_bus_mergerproxy_in3_288614_;
  assign proxy_sel_LOAD_28861 = sig_out_bus_mergerproxy_sel_LOAD_288616_;
  assign proxy_sel_STORE_28861 = sig_out_bus_mergerproxy_sel_STORE_288618_;
  assign proxy_in1_28868 = sig_out_bus_mergerproxy_in1_288681_;
  assign proxy_in2_28868 = sig_out_bus_mergerproxy_in2_288683_;
  assign proxy_in3_28868 = sig_out_bus_mergerproxy_in3_288685_;
  assign proxy_sel_LOAD_28868 = sig_out_bus_mergerproxy_sel_LOAD_288687_;
  assign proxy_sel_STORE_28868 = sig_out_bus_mergerproxy_sel_STORE_288689_;
  assign OUT_MULTIIF_set_estimates_28874_30488 = out_multi_read_cond_FU_14_i0_fu_set_estimates_28874_30488;

endmodule

// FSM based controller description for set_estimates
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_set_estimates(done_port, selector_MUX_23_reg_3_0_0_0, selector_MUX_2_PROXY_CTRL_0_i0_0_0_0, selector_MUX_3_PROXY_CTRL_0_i0_1_0_0, selector_MUX_6_PROXY_CTRL_1_i0_0_0_0, selector_MUX_7_PROXY_CTRL_1_i0_1_0_0, fuselector_PROXY_CTRL_0_i0_LOAD, fuselector_PROXY_CTRL_0_i0_STORE, fuselector_PROXY_CTRL_1_i0_LOAD, fuselector_PROXY_CTRL_1_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, OUT_MULTIIF_set_estimates_28874_30488, clock, reset, start_port);
  // IN
  input [1:0] OUT_MULTIIF_set_estimates_28874_30488;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_MUX_23_reg_3_0_0_0;
  output selector_MUX_2_PROXY_CTRL_0_i0_0_0_0;
  output selector_MUX_3_PROXY_CTRL_0_i0_1_0_0;
  output selector_MUX_6_PROXY_CTRL_1_i0_0_0_0;
  output selector_MUX_7_PROXY_CTRL_1_i0_1_0_0;
  output fuselector_PROXY_CTRL_0_i0_LOAD;
  output fuselector_PROXY_CTRL_0_i0_STORE;
  output fuselector_PROXY_CTRL_1_i0_LOAD;
  output fuselector_PROXY_CTRL_1_i0_STORE;
  output wrenable_reg_0;
  output wrenable_reg_1;
  output wrenable_reg_2;
  output wrenable_reg_3;
  output wrenable_reg_4;
  output wrenable_reg_5;
  output wrenable_reg_6;
  output wrenable_reg_7;
  output wrenable_reg_8;
  parameter [5:0] S_0 = 6'b000001,
    S_3 = 6'b001000,
    S_4 = 6'b010000,
    S_2 = 6'b000100,
    S_1 = 6'b000010,
    S_5 = 6'b100000;
  reg [5:0] _present_state, _next_state;
  reg done_port;
  reg selector_MUX_23_reg_3_0_0_0;
  reg selector_MUX_2_PROXY_CTRL_0_i0_0_0_0;
  reg selector_MUX_3_PROXY_CTRL_0_i0_1_0_0;
  reg selector_MUX_6_PROXY_CTRL_1_i0_0_0_0;
  reg selector_MUX_7_PROXY_CTRL_1_i0_1_0_0;
  reg fuselector_PROXY_CTRL_0_i0_LOAD;
  reg fuselector_PROXY_CTRL_0_i0_STORE;
  reg fuselector_PROXY_CTRL_1_i0_LOAD;
  reg fuselector_PROXY_CTRL_1_i0_STORE;
  reg wrenable_reg_0;
  reg wrenable_reg_1;
  reg wrenable_reg_2;
  reg wrenable_reg_3;
  reg wrenable_reg_4;
  reg wrenable_reg_5;
  reg wrenable_reg_6;
  reg wrenable_reg_7;
  reg wrenable_reg_8;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    selector_MUX_23_reg_3_0_0_0 = 1'b0;
    selector_MUX_2_PROXY_CTRL_0_i0_0_0_0 = 1'b0;
    selector_MUX_3_PROXY_CTRL_0_i0_1_0_0 = 1'b0;
    selector_MUX_6_PROXY_CTRL_1_i0_0_0_0 = 1'b0;
    selector_MUX_7_PROXY_CTRL_1_i0_1_0_0 = 1'b0;
    fuselector_PROXY_CTRL_0_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRL_0_i0_STORE = 1'b0;
    fuselector_PROXY_CTRL_1_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRL_1_i0_STORE = 1'b0;
    wrenable_reg_0 = 1'b0;
    wrenable_reg_1 = 1'b0;
    wrenable_reg_2 = 1'b0;
    wrenable_reg_3 = 1'b0;
    wrenable_reg_4 = 1'b0;
    wrenable_reg_5 = 1'b0;
    wrenable_reg_6 = 1'b0;
    wrenable_reg_7 = 1'b0;
    wrenable_reg_8 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          selector_MUX_23_reg_3_0_0_0 = 1'b1;
          selector_MUX_2_PROXY_CTRL_0_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRL_0_i0_STORE = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          _next_state = S_3;
        end
        else
        begin
          selector_MUX_23_reg_3_0_0_0 = 1'bX;
          selector_MUX_2_PROXY_CTRL_0_i0_0_0_0 = 1'bX;
          selector_MUX_3_PROXY_CTRL_0_i0_1_0_0 = 1'bX;
          selector_MUX_6_PROXY_CTRL_1_i0_0_0_0 = 1'bX;
          selector_MUX_7_PROXY_CTRL_1_i0_1_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_2 = 1'bX;
          wrenable_reg_3 = 1'bX;
          wrenable_reg_4 = 1'bX;
          wrenable_reg_5 = 1'bX;
          wrenable_reg_6 = 1'bX;
          wrenable_reg_7 = 1'bX;
          wrenable_reg_8 = 1'bX;
          _next_state = S_0;
        end
      S_3 :
        begin
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_6 = 1'b1;
          wrenable_reg_7 = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          wrenable_reg_8 = 1'b1;
          if (OUT_MULTIIF_set_estimates_28874_30488[0] == 1'b1)
            begin
              _next_state = S_5;
              done_port = 1'b1;
              wrenable_reg_8 = 1'b0;
            end
          else if (OUT_MULTIIF_set_estimates_28874_30488[1] == 1'b1)
            begin
              _next_state = S_1;
              wrenable_reg_8 = 1'b0;
            end
          else
            begin
              _next_state = S_2;
            end
        end
      S_2 :
        begin
          selector_MUX_7_PROXY_CTRL_1_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRL_1_i0_STORE = 1'b1;
          _next_state = S_3;
        end
      S_1 :
        begin
          selector_MUX_6_PROXY_CTRL_1_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRL_1_i0_STORE = 1'b1;
          _next_state = S_3;
        end
      S_5 :
        begin
          selector_MUX_3_PROXY_CTRL_0_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRL_0_i0_STORE = 1'b1;
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_23_reg_3_0_0_0 = 1'bX;
          selector_MUX_2_PROXY_CTRL_0_i0_0_0_0 = 1'bX;
          selector_MUX_3_PROXY_CTRL_0_i0_1_0_0 = 1'bX;
          selector_MUX_6_PROXY_CTRL_1_i0_0_0_0 = 1'bX;
          selector_MUX_7_PROXY_CTRL_1_i0_1_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_2 = 1'bX;
          wrenable_reg_3 = 1'bX;
          wrenable_reg_4 = 1'bX;
          wrenable_reg_5 = 1'bX;
          wrenable_reg_6 = 1'bX;
          wrenable_reg_7 = 1'bX;
          wrenable_reg_8 = 1'bX;
        end
    endcase
  end
endmodule

// Top component for set_estimates
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module set_estimates(clock, reset, start_port, done_port, proxy_out1_28861, proxy_out1_28868, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868);
  parameter MEM_var_28861_28879=32, MEM_var_28868_28879=64;
  // IN
  input clock;
  input reset;
  input start_port;
  input [7:0] proxy_out1_28861;
  input [7:0] proxy_out1_28868;
  // OUT
  output done_port;
  output [7:0] proxy_in1_28861;
  output [8:0] proxy_in2_28861;
  output [3:0] proxy_in3_28861;
  output proxy_sel_LOAD_28861;
  output proxy_sel_STORE_28861;
  output [7:0] proxy_in1_28868;
  output [8:0] proxy_in2_28868;
  output [3:0] proxy_in3_28868;
  output proxy_sel_LOAD_28868;
  output proxy_sel_STORE_28868;
  // Component and signal declarations
  wire [1:0] OUT_MULTIIF_set_estimates_28874_30488;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_PROXY_CTRL_0_i0_LOAD;
  wire fuselector_PROXY_CTRL_0_i0_STORE;
  wire fuselector_PROXY_CTRL_1_i0_LOAD;
  wire fuselector_PROXY_CTRL_1_i0_STORE;
  wire selector_MUX_23_reg_3_0_0_0;
  wire selector_MUX_2_PROXY_CTRL_0_i0_0_0_0;
  wire selector_MUX_3_PROXY_CTRL_0_i0_1_0_0;
  wire selector_MUX_6_PROXY_CTRL_1_i0_0_0_0;
  wire selector_MUX_7_PROXY_CTRL_1_i0_1_0_0;
  wire wrenable_reg_0;
  wire wrenable_reg_1;
  wire wrenable_reg_2;
  wire wrenable_reg_3;
  wire wrenable_reg_4;
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  
  controller_set_estimates Controller_i (.done_port(done_delayed_REG_signal_in), .selector_MUX_23_reg_3_0_0_0(selector_MUX_23_reg_3_0_0_0), .selector_MUX_2_PROXY_CTRL_0_i0_0_0_0(selector_MUX_2_PROXY_CTRL_0_i0_0_0_0), .selector_MUX_3_PROXY_CTRL_0_i0_1_0_0(selector_MUX_3_PROXY_CTRL_0_i0_1_0_0), .selector_MUX_6_PROXY_CTRL_1_i0_0_0_0(selector_MUX_6_PROXY_CTRL_1_i0_0_0_0), .selector_MUX_7_PROXY_CTRL_1_i0_1_0_0(selector_MUX_7_PROXY_CTRL_1_i0_1_0_0), .fuselector_PROXY_CTRL_0_i0_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .fuselector_PROXY_CTRL_0_i0_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .fuselector_PROXY_CTRL_1_i0_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .fuselector_PROXY_CTRL_1_i0_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .OUT_MULTIIF_set_estimates_28874_30488(OUT_MULTIIF_set_estimates_28874_30488), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_set_estimates #(.MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28868_28879(MEM_var_28868_28879)) Datapath_i (.proxy_in1_28861(proxy_in1_28861), .proxy_in2_28861(proxy_in2_28861), .proxy_in3_28861(proxy_in3_28861), .proxy_sel_LOAD_28861(proxy_sel_LOAD_28861), .proxy_sel_STORE_28861(proxy_sel_STORE_28861), .proxy_in1_28868(proxy_in1_28868), .proxy_in2_28868(proxy_in2_28868), .proxy_in3_28868(proxy_in3_28868), .proxy_sel_LOAD_28868(proxy_sel_LOAD_28868), .proxy_sel_STORE_28868(proxy_sel_STORE_28868), .OUT_MULTIIF_set_estimates_28874_30488(OUT_MULTIIF_set_estimates_28874_30488), .clock(clock), .reset(reset), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28868(proxy_out1_28868), .selector_MUX_23_reg_3_0_0_0(selector_MUX_23_reg_3_0_0_0), .selector_MUX_2_PROXY_CTRL_0_i0_0_0_0(selector_MUX_2_PROXY_CTRL_0_i0_0_0_0), .selector_MUX_3_PROXY_CTRL_0_i0_1_0_0(selector_MUX_3_PROXY_CTRL_0_i0_1_0_0), .selector_MUX_6_PROXY_CTRL_1_i0_0_0_0(selector_MUX_6_PROXY_CTRL_1_i0_0_0_0), .selector_MUX_7_PROXY_CTRL_1_i0_1_0_0(selector_MUX_7_PROXY_CTRL_1_i0_1_0_0), .fuselector_PROXY_CTRL_0_i0_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .fuselector_PROXY_CTRL_0_i0_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .fuselector_PROXY_CTRL_1_i0_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .fuselector_PROXY_CTRL_1_i0_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Datapath RTL description for astarF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_astarF(clock, reset, in_port_a, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, proxy_out1_28861, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, proxy_out1_28868, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_STORE, fuselector_BMEMORY_CTRL_59_i0_LOAD, fuselector_BMEMORY_CTRL_59_i0_STORE, selector_IN_UNBOUNDED_astarF_28877_29351, selector_IN_UNBOUNDED_astarF_28877_29352, selector_IN_UNBOUNDED_astarF_28877_29353, selector_IN_UNBOUNDED_astarF_28877_29365, selector_IN_UNBOUNDED_astarF_28877_29398, selector_IN_UNBOUNDED_astarF_28877_29408, selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0, selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1, selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0, selector_MUX_35_PROXY_CTRL_5_i0_0_0_0, selector_MUX_59_insert_79_i0_0_0_0, selector_MUX_60_insert_79_i0_1_0_0, fuselector_PROXY_CTRL_5_i0_LOAD, fuselector_PROXY_CTRL_5_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_29, wrenable_reg_3, wrenable_reg_30, wrenable_reg_31, wrenable_reg_32, wrenable_reg_33, wrenable_reg_34, wrenable_reg_35, wrenable_reg_36, wrenable_reg_37, wrenable_reg_38, wrenable_reg_39, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_astarF_28877_29367, OUT_CONDITION_astarF_28877_29489, OUT_CONDITION_astarF_28877_29496, OUT_CONDITION_astarF_28877_29511, OUT_CONDITION_astarF_28877_29514, OUT_UNBOUNDED_astarF_28877_29351, OUT_UNBOUNDED_astarF_28877_29352, OUT_UNBOUNDED_astarF_28877_29353, OUT_UNBOUNDED_astarF_28877_29365, OUT_UNBOUNDED_astarF_28877_29398, OUT_UNBOUNDED_astarF_28877_29408);
  parameter MEM_var_28861_28879=32, MEM_var_28862_28877=128, MEM_var_28864_28877=160, MEM_var_28865_28877=192, MEM_var_28866_28877=224, MEM_var_28867_28877=256, MEM_var_28868_28879=64;
  // IN
  input clock;
  input reset;
  input [31:0] in_port_a;
  input S_oe_ram;
  input S_we_ram;
  input [8:0] S_addr_ram;
  input [7:0] S_Wdata_ram;
  input [3:0] S_data_ram_size;
  input [7:0] M_Rdata_ram;
  input M_DataRdy;
  input [7:0] Sin_Rdata_ram;
  input Sin_DataRdy;
  input [7:0] proxy_out1_28861;
  input Min_oe_ram;
  input Min_we_ram;
  input [8:0] Min_addr_ram;
  input [7:0] Min_Wdata_ram;
  input [3:0] Min_data_ram_size;
  input [7:0] proxy_out1_28868;
  input fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_STORE;
  input fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_STORE;
  input fuselector_BMEMORY_CTRL_59_i0_LOAD;
  input fuselector_BMEMORY_CTRL_59_i0_STORE;
  input selector_IN_UNBOUNDED_astarF_28877_29351;
  input selector_IN_UNBOUNDED_astarF_28877_29352;
  input selector_IN_UNBOUNDED_astarF_28877_29353;
  input selector_IN_UNBOUNDED_astarF_28877_29365;
  input selector_IN_UNBOUNDED_astarF_28877_29398;
  input selector_IN_UNBOUNDED_astarF_28877_29408;
  input selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0;
  input selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1;
  input selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0;
  input selector_MUX_35_PROXY_CTRL_5_i0_0_0_0;
  input selector_MUX_59_insert_79_i0_0_0_0;
  input selector_MUX_60_insert_79_i0_1_0_0;
  input fuselector_PROXY_CTRL_5_i0_LOAD;
  input fuselector_PROXY_CTRL_5_i0_STORE;
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
  input wrenable_reg_5;
  input wrenable_reg_6;
  input wrenable_reg_7;
  input wrenable_reg_8;
  input wrenable_reg_9;
  // OUT
  output [7:0] Sout_Rdata_ram;
  output Sout_DataRdy;
  output [7:0] proxy_in1_28861;
  output [8:0] proxy_in2_28861;
  output [3:0] proxy_in3_28861;
  output proxy_sel_LOAD_28861;
  output proxy_sel_STORE_28861;
  output Mout_oe_ram;
  output Mout_we_ram;
  output [8:0] Mout_addr_ram;
  output [7:0] Mout_Wdata_ram;
  output [3:0] Mout_data_ram_size;
  output [7:0] proxy_in1_28868;
  output [8:0] proxy_in2_28868;
  output [3:0] proxy_in3_28868;
  output proxy_sel_LOAD_28868;
  output proxy_sel_STORE_28868;
  output OUT_CONDITION_astarF_28877_29367;
  output OUT_CONDITION_astarF_28877_29489;
  output OUT_CONDITION_astarF_28877_29496;
  output OUT_CONDITION_astarF_28877_29511;
  output OUT_CONDITION_astarF_28877_29514;
  output OUT_UNBOUNDED_astarF_28877_29351;
  output OUT_UNBOUNDED_astarF_28877_29352;
  output OUT_UNBOUNDED_astarF_28877_29353;
  output OUT_UNBOUNDED_astarF_28877_29365;
  output OUT_UNBOUNDED_astarF_28877_29398;
  output OUT_UNBOUNDED_astarF_28877_29408;
  // Component and signal declarations
  wire [7:0] out_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_array_28864_0;
  wire [7:0] out_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_array_28866_0;
  wire [7:0] out_BMEMORY_CTRL_59_i0_BMEMORY_CTRL_59_i0;
  wire signed [7:0] out_IIdata_converter_FU_22_i0_fu_astarF_28877_29492;
  wire signed [7:0] out_IIdata_converter_FU_25_i0_fu_astarF_28877_29491;
  wire signed [7:0] out_IIdata_converter_FU_26_i0_fu_astarF_28877_29495;
  wire signed [8:0] out_IIdata_converter_FU_32_i0_fu_astarF_28877_29414;
  wire signed [7:0] out_IIdata_converter_FU_34_i0_fu_astarF_28877_30189;
  wire signed [7:0] out_IIdata_converter_FU_35_i0_fu_astarF_28877_30180;
  wire signed [8:0] out_IIdata_converter_FU_36_i0_fu_astarF_28877_29401;
  wire signed [7:0] out_IIdata_converter_FU_37_i0_fu_astarF_28877_30195;
  wire [7:0] out_IUdata_converter_FU_21_i0_fu_astarF_28877_29605;
  wire [7:0] out_IUdata_converter_FU_31_i0_fu_astarF_28877_29668;
  wire [7:0] out_IUdata_converter_FU_33_i0_fu_astarF_28877_30186;
  wire [2:0] out_IUdata_converter_FU_48_i0_fu_astarF_28877_29584;
  wire [8:0] out_MUX_15_BMEMORY_CTRL_59_i0_1_0_0;
  wire [8:0] out_MUX_15_BMEMORY_CTRL_59_i0_1_0_1;
  wire [8:0] out_MUX_15_BMEMORY_CTRL_59_i0_1_1_0;
  wire [7:0] out_MUX_35_PROXY_CTRL_5_i0_0_0_0;
  wire [7:0] out_MUX_59_insert_79_i0_0_0_0;
  wire [7:0] out_MUX_60_insert_79_i0_1_0_0;
  wire [7:0] out_PROXY_CTRL_5_i0_PROXY_CTRL_5_i0;
  wire signed [8:0] out_UIdata_converter_FU_20_i0_fu_astarF_28877_29477;
  wire signed [8:0] out_UIdata_converter_FU_29_i0_fu_astarF_28877_29393;
  wire signed [3:0] out_UIdata_converter_FU_47_i0_fu_astarF_28877_29456;
  wire [8:0] out_UUdata_converter_FU_13_i0_fu_astarF_28877_29686;
  wire [7:0] out_UUdata_converter_FU_18_i0_fu_astarF_28877_29473;
  wire [9:0] out_UUdata_converter_FU_19_i0_fu_astarF_28877_29581;
  wire [7:0] out_UUdata_converter_FU_28_i0_fu_astarF_28877_29434;
  wire [9:0] out_UUdata_converter_FU_30_i0_fu_astarF_28877_29665;
  wire [2:0] out_UUdata_converter_FU_49_i0_fu_astarF_28877_29451;
  wire [9:0] out_UUdata_converter_FU_50_i0_fu_astarF_28877_29621;
  wire [5:0] out_addr_expr_FU_10_i0_fu_astarF_28877_29563;
  wire [7:0] out_addr_expr_FU_11_i0_fu_astarF_28877_29678;
  wire [8:0] out_addr_expr_FU_12_i0_fu_astarF_28877_29709;
  wire [7:0] out_addr_expr_FU_8_i0_fu_astarF_28877_29725;
  wire [7:0] out_addr_expr_FU_9_i0_fu_astarF_28877_29558;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [7:0] out_const_10;
  wire [7:0] out_const_11;
  wire [5:0] out_const_12;
  wire [4:0] out_const_2;
  wire out_const_3;
  wire [1:0] out_const_4;
  wire [2:0] out_const_5;
  wire [5:0] out_const_6;
  wire [1:0] out_const_7;
  wire [7:0] out_const_8;
  wire [7:0] out_const_9;
  wire [8:0] out_conv_in_port_a_32_9;
  wire [7:0] out_conv_out_const_0_1_8;
  wire signed [7:0] out_conv_out_const_0_I_1_I_8;
  wire [31:0] out_conv_out_const_10_8_32;
  wire [31:0] out_conv_out_const_11_8_32;
  wire [31:0] out_conv_out_const_12_6_32;
  wire [3:0] out_conv_out_const_2_5_4;
  wire [31:0] out_conv_out_const_8_8_32;
  wire [31:0] out_conv_out_const_9_8_32;
  wire [8:0] out_conv_out_reg_0_reg_0_8_9;
  wire [8:0] out_conv_out_reg_1_reg_1_6_9;
  wire [8:0] out_conv_out_reg_2_reg_2_8_9;
  wire [8:0] out_conv_out_reg_31_reg_31_8_9;
  wire [8:0] out_conv_out_reg_4_reg_4_8_9;
  wire out_gt_expr_FU_8_0_8_60_i0_fu_astarF_28877_30154;
  wire signed [7:0] out_heuristic_77_i0_fu_astarF_28877_29408;
  wire [7:0] out_iu_conv_conn_obj_1_IUdata_converter_FU_iu_conv_0;
  wire [7:0] out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_1;
  wire out_lt_expr_FU_16_16_16_61_i0_fu_astarF_28877_30150;
  wire out_ne_expr_FU_8_0_8_62_i0_fu_astarF_28877_30148;
  wire signed [7:0] out_plus_expr_FU_8_8_8_63_i0_fu_astarF_28877_29404;
  wire signed [7:0] out_plus_expr_FU_8_8_8_63_i1_fu_astarF_28877_29458;
  wire signed [8:0] out_plus_expr_FU_8_8_8_63_i2_fu_astarF_28877_29493;
  wire out_read_cond_FU_15_i0_fu_astarF_28877_29367;
  wire out_read_cond_FU_23_i0_fu_astarF_28877_29489;
  wire out_read_cond_FU_27_i0_fu_astarF_28877_29496;
  wire out_read_cond_FU_51_i0_fu_astarF_28877_29511;
  wire out_read_cond_FU_58_i0_fu_astarF_28877_29514;
  wire [7:0] out_reg_0_reg_0;
  wire [9:0] out_reg_10_reg_10;
  wire [8:0] out_reg_11_reg_11;
  wire [7:0] out_reg_12_reg_12;
  wire [7:0] out_reg_13_reg_13;
  wire [5:0] out_reg_14_reg_14;
  wire [1:0] out_reg_15_reg_15;
  wire [9:0] out_reg_16_reg_16;
  wire [8:0] out_reg_17_reg_17;
  wire [7:0] out_reg_18_reg_18;
  wire [8:0] out_reg_19_reg_19;
  wire [5:0] out_reg_1_reg_1;
  wire [7:0] out_reg_20_reg_20;
  wire [7:0] out_reg_21_reg_21;
  wire [7:0] out_reg_22_reg_22;
  wire [7:0] out_reg_23_reg_23;
  wire [7:0] out_reg_24_reg_24;
  wire [7:0] out_reg_25_reg_25;
  wire [7:0] out_reg_26_reg_26;
  wire [7:0] out_reg_27_reg_27;
  wire [5:0] out_reg_28_reg_28;
  wire [1:0] out_reg_29_reg_29;
  wire [7:0] out_reg_2_reg_2;
  wire [9:0] out_reg_30_reg_30;
  wire [7:0] out_reg_31_reg_31;
  wire [8:0] out_reg_32_reg_32;
  wire [7:0] out_reg_33_reg_33;
  wire [7:0] out_reg_34_reg_34;
  wire [7:0] out_reg_35_reg_35;
  wire [7:0] out_reg_36_reg_36;
  wire [7:0] out_reg_37_reg_37;
  wire [7:0] out_reg_38_reg_38;
  wire [7:0] out_reg_39_reg_39;
  wire [8:0] out_reg_3_reg_3;
  wire [7:0] out_reg_4_reg_4;
  wire [7:0] out_reg_5_reg_5;
  wire [2:0] out_reg_6_reg_6;
  wire [2:0] out_reg_7_reg_7;
  wire out_reg_8_reg_8;
  wire [1:0] out_reg_9_reg_9;
  wire [1:0] out_ui_bit_and_expr_FU_8_0_8_64_i0_fu_astarF_28877_30335;
  wire [1:0] out_ui_bit_and_expr_FU_8_0_8_64_i1_fu_astarF_28877_30353;
  wire [1:0] out_ui_bit_and_expr_FU_8_0_8_64_i2_fu_astarF_28877_30368;
  wire [10:0] out_ui_bit_ior_concat_expr_FU_65_i0_fu_astarF_28877_29576;
  wire [10:0] out_ui_bit_ior_concat_expr_FU_65_i1_fu_astarF_28877_29662;
  wire [4:0] out_ui_bit_ior_concat_expr_FU_66_i0_fu_astarF_28877_29618;
  wire out_ui_eq_expr_FU_8_0_8_67_i0_fu_astarF_28877_30146;
  wire out_ui_le_expr_FU_8_0_8_68_i0_fu_astarF_28877_30152;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_69_i0_fu_astarF_28877_29573;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_69_i1_fu_astarF_28877_29659;
  wire [10:0] out_ui_lshift_expr_FU_16_0_16_69_i2_fu_astarF_28877_30330;
  wire [10:0] out_ui_lshift_expr_FU_16_0_16_69_i3_fu_astarF_28877_30365;
  wire [4:0] out_ui_lshift_expr_FU_8_0_8_70_i0_fu_astarF_28877_29615;
  wire [4:0] out_ui_lshift_expr_FU_8_0_8_70_i1_fu_astarF_28877_30349;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_71_i0_fu_astarF_28877_29385;
  wire [2:0] out_ui_plus_expr_FU_8_8_8_72_i0_fu_astarF_28877_30346;
  wire [8:0] out_ui_plus_expr_FU_8_8_8_72_i1_ui_plus_expr_FU_8_8_8_72_i1;
  wire [8:0] out_ui_plus_expr_FU_8_8_8_72_i2_fu_astarF_28877_30362;
  wire [9:0] out_ui_pointer_plus_expr_FU_16_16_16_73_i0_fu_astarF_28877_29421;
  wire [9:0] out_ui_pointer_plus_expr_FU_16_16_16_73_i1_fu_astarF_28877_29444;
  wire [9:0] out_ui_pointer_plus_expr_FU_16_16_16_73_i2_fu_astarF_28877_29467;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_74_i0_fu_astarF_28877_29591;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_74_i1_fu_astarF_28877_29611;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_74_i2_fu_astarF_28877_29630;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_74_i3_fu_astarF_28877_29674;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_74_i4_fu_astarF_28877_29695;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_75_i0_fu_astarF_28877_30319;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_75_i1_fu_astarF_28877_30357;
  wire [5:0] out_ui_rshift_expr_FU_8_0_8_76_i0_fu_astarF_28877_30323;
  wire [2:0] out_ui_rshift_expr_FU_8_0_8_76_i1_fu_astarF_28877_30340;
  wire [0:0] out_ui_rshift_expr_FU_8_0_8_76_i2_fu_astarF_28877_30343;
  wire [5:0] out_ui_rshift_expr_FU_8_0_8_76_i3_fu_astarF_28877_30360;
  wire [7:0] out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_2;
  wire [7:0] out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_3;
  wire [7:0] out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_4;
  wire [7:0] proxy_out1_28864;
  wire [7:0] proxy_out1_28865;
  wire [7:0] proxy_out1_28866;
  wire [7:0] proxy_out1_28867;
  wire s_done_fu_astarF_28877_29351;
  wire s_done_fu_astarF_28877_29352;
  wire s_done_fu_astarF_28877_29365;
  wire s_done_fu_astarF_28877_29408;
  wire s_done_insert_79_i0;
  wire s_insert_79_i00;
  wire [7:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [8:0] sig_in_bus_mergerMout_addr_ram1_0;
  wire [3:0] sig_in_bus_mergerMout_data_ram_size2_0;
  wire sig_in_bus_mergerMout_oe_ram3_0;
  wire sig_in_bus_mergerMout_we_ram4_0;
  wire sig_in_bus_mergerSout_DataRdy5_0;
  wire sig_in_bus_mergerSout_DataRdy5_1;
  wire sig_in_bus_mergerSout_DataRdy5_2;
  wire sig_in_bus_mergerSout_DataRdy5_3;
  wire sig_in_bus_mergerSout_DataRdy5_4;
  wire [7:0] sig_in_bus_mergerSout_Rdata_ram6_0;
  wire [7:0] sig_in_bus_mergerSout_Rdata_ram6_1;
  wire [7:0] sig_in_bus_mergerSout_Rdata_ram6_2;
  wire [7:0] sig_in_bus_mergerSout_Rdata_ram6_3;
  wire [7:0] sig_in_bus_mergerSout_Rdata_ram6_4;
  wire [7:0] sig_in_bus_mergerproxy_in117_0;
  wire [7:0] sig_in_bus_mergerproxy_in122_0;
  wire [7:0] sig_in_bus_mergerproxy_in127_0;
  wire [7:0] sig_in_bus_mergerproxy_in127_1;
  wire [7:0] sig_in_bus_mergerproxy_in132_0;
  wire [7:0] sig_in_bus_mergerproxy_in132_1;
  wire [7:0] sig_in_bus_mergerproxy_in1_288617_0;
  wire [7:0] sig_in_bus_mergerproxy_in1_288617_1;
  wire [7:0] sig_in_bus_mergerproxy_in1_288617_2;
  wire [7:0] sig_in_bus_mergerproxy_in1_288617_3;
  wire [7:0] sig_in_bus_mergerproxy_in1_288688_0;
  wire [7:0] sig_in_bus_mergerproxy_in1_288688_1;
  wire [8:0] sig_in_bus_mergerproxy_in218_0;
  wire [8:0] sig_in_bus_mergerproxy_in223_0;
  wire [8:0] sig_in_bus_mergerproxy_in228_0;
  wire [8:0] sig_in_bus_mergerproxy_in228_1;
  wire [8:0] sig_in_bus_mergerproxy_in233_0;
  wire [8:0] sig_in_bus_mergerproxy_in233_1;
  wire [8:0] sig_in_bus_mergerproxy_in2_288619_0;
  wire [8:0] sig_in_bus_mergerproxy_in2_288619_1;
  wire [8:0] sig_in_bus_mergerproxy_in2_288619_2;
  wire [8:0] sig_in_bus_mergerproxy_in2_288619_3;
  wire [8:0] sig_in_bus_mergerproxy_in2_2886810_0;
  wire [8:0] sig_in_bus_mergerproxy_in2_2886810_1;
  wire [3:0] sig_in_bus_mergerproxy_in319_0;
  wire [3:0] sig_in_bus_mergerproxy_in324_0;
  wire [3:0] sig_in_bus_mergerproxy_in329_0;
  wire [3:0] sig_in_bus_mergerproxy_in329_1;
  wire [3:0] sig_in_bus_mergerproxy_in334_0;
  wire [3:0] sig_in_bus_mergerproxy_in334_1;
  wire [3:0] sig_in_bus_mergerproxy_in3_2886111_0;
  wire [3:0] sig_in_bus_mergerproxy_in3_2886111_1;
  wire [3:0] sig_in_bus_mergerproxy_in3_2886111_2;
  wire [3:0] sig_in_bus_mergerproxy_in3_2886111_3;
  wire [3:0] sig_in_bus_mergerproxy_in3_2886812_0;
  wire [3:0] sig_in_bus_mergerproxy_in3_2886812_1;
  wire sig_in_bus_mergerproxy_sel_LOAD20_0;
  wire sig_in_bus_mergerproxy_sel_LOAD25_0;
  wire sig_in_bus_mergerproxy_sel_LOAD30_0;
  wire sig_in_bus_mergerproxy_sel_LOAD30_1;
  wire sig_in_bus_mergerproxy_sel_LOAD35_0;
  wire sig_in_bus_mergerproxy_sel_LOAD35_1;
  wire sig_in_bus_mergerproxy_sel_LOAD_2886113_0;
  wire sig_in_bus_mergerproxy_sel_LOAD_2886113_1;
  wire sig_in_bus_mergerproxy_sel_LOAD_2886113_2;
  wire sig_in_bus_mergerproxy_sel_LOAD_2886113_3;
  wire sig_in_bus_mergerproxy_sel_LOAD_2886814_0;
  wire sig_in_bus_mergerproxy_sel_LOAD_2886814_1;
  wire sig_in_bus_mergerproxy_sel_STORE21_0;
  wire sig_in_bus_mergerproxy_sel_STORE26_0;
  wire sig_in_bus_mergerproxy_sel_STORE31_0;
  wire sig_in_bus_mergerproxy_sel_STORE31_1;
  wire sig_in_bus_mergerproxy_sel_STORE36_0;
  wire sig_in_bus_mergerproxy_sel_STORE36_1;
  wire sig_in_bus_mergerproxy_sel_STORE_2886115_0;
  wire sig_in_bus_mergerproxy_sel_STORE_2886115_1;
  wire sig_in_bus_mergerproxy_sel_STORE_2886115_2;
  wire sig_in_bus_mergerproxy_sel_STORE_2886115_3;
  wire sig_in_bus_mergerproxy_sel_STORE_2886816_0;
  wire sig_in_bus_mergerproxy_sel_STORE_2886816_1;
  wire [7:0] sig_out_bus_mergerMout_Wdata_ram0_;
  wire [8:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [3:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire sig_out_bus_mergerMout_oe_ram3_;
  wire sig_out_bus_mergerMout_we_ram4_;
  wire sig_out_bus_mergerSout_DataRdy5_;
  wire [7:0] sig_out_bus_mergerSout_Rdata_ram6_;
  wire [7:0] sig_out_bus_mergerproxy_in117_;
  wire [7:0] sig_out_bus_mergerproxy_in122_;
  wire [7:0] sig_out_bus_mergerproxy_in127_;
  wire [7:0] sig_out_bus_mergerproxy_in132_;
  wire [7:0] sig_out_bus_mergerproxy_in1_288617_;
  wire [7:0] sig_out_bus_mergerproxy_in1_288688_;
  wire [8:0] sig_out_bus_mergerproxy_in218_;
  wire [8:0] sig_out_bus_mergerproxy_in223_;
  wire [8:0] sig_out_bus_mergerproxy_in228_;
  wire [8:0] sig_out_bus_mergerproxy_in233_;
  wire [8:0] sig_out_bus_mergerproxy_in2_288619_;
  wire [8:0] sig_out_bus_mergerproxy_in2_2886810_;
  wire [3:0] sig_out_bus_mergerproxy_in319_;
  wire [3:0] sig_out_bus_mergerproxy_in324_;
  wire [3:0] sig_out_bus_mergerproxy_in329_;
  wire [3:0] sig_out_bus_mergerproxy_in334_;
  wire [3:0] sig_out_bus_mergerproxy_in3_2886111_;
  wire [3:0] sig_out_bus_mergerproxy_in3_2886812_;
  wire sig_out_bus_mergerproxy_sel_LOAD20_;
  wire sig_out_bus_mergerproxy_sel_LOAD25_;
  wire sig_out_bus_mergerproxy_sel_LOAD30_;
  wire sig_out_bus_mergerproxy_sel_LOAD35_;
  wire sig_out_bus_mergerproxy_sel_LOAD_2886113_;
  wire sig_out_bus_mergerproxy_sel_LOAD_2886814_;
  wire sig_out_bus_mergerproxy_sel_STORE21_;
  wire sig_out_bus_mergerproxy_sel_STORE26_;
  wire sig_out_bus_mergerproxy_sel_STORE31_;
  wire sig_out_bus_mergerproxy_sel_STORE36_;
  wire sig_out_bus_mergerproxy_sel_STORE_2886115_;
  wire sig_out_bus_mergerproxy_sel_STORE_2886816_;
  
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_2 (.out1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_2), .in1(out_const_1));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_3 (.out1(out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_3), .in1(out_reg_24_reg_24));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_4 (.out1(out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_4), .in1(out_reg_39_reg_39));
  BMEMORY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_Min_addr_ram(9), .BITSIZE_Mout_addr_ram(9), .BITSIZE_M_Rdata_ram(8), .BITSIZE_Min_Wdata_ram(8), .BITSIZE_Mout_Wdata_ram(8), .BITSIZE_Min_data_ram_size(4), .BITSIZE_Mout_data_ram_size(4)) BMEMORY_CTRL_59_i0 (.out1(out_BMEMORY_CTRL_59_i0_BMEMORY_CTRL_59_i0), .Mout_oe_ram(sig_in_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_bus_mergerMout_data_ram_size2_0), .clock(clock), .in1(out_iu_conv_conn_obj_1_IUdata_converter_FU_iu_conv_0), .in2(out_MUX_15_BMEMORY_CTRL_59_i0_1_1_0), .in3(out_conv_out_const_2_5_4), .in4(out_const_3), .sel_LOAD(fuselector_BMEMORY_CTRL_59_i0_LOAD), .sel_STORE(fuselector_BMEMORY_CTRL_59_i0_STORE), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .M_Rdata_ram(M_Rdata_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .M_DataRdy(M_DataRdy));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_0 (.out1(out_iu_conv_conn_obj_1_IUdata_converter_FU_iu_conv_0), .in1(out_reg_23_reg_23));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_1), .in1(out_reg_36_reg_36));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_15_BMEMORY_CTRL_59_i0_1_0_0 (.out1(out_MUX_15_BMEMORY_CTRL_59_i0_1_0_0), .sel(selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0), .in1(out_reg_32_reg_32), .in2(out_reg_19_reg_19));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_15_BMEMORY_CTRL_59_i0_1_0_1 (.out1(out_MUX_15_BMEMORY_CTRL_59_i0_1_0_1), .sel(selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1), .in1(out_reg_17_reg_17), .in2(out_reg_11_reg_11));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_15_BMEMORY_CTRL_59_i0_1_1_0 (.out1(out_MUX_15_BMEMORY_CTRL_59_i0_1_1_0), .sel(selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0), .in1(out_MUX_15_BMEMORY_CTRL_59_i0_1_0_0), .in2(out_MUX_15_BMEMORY_CTRL_59_i0_1_0_1));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_35_PROXY_CTRL_5_i0_0_0_0 (.out1(out_MUX_35_PROXY_CTRL_5_i0_0_0_0), .sel(selector_MUX_35_PROXY_CTRL_5_i0_0_0_0), .in1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_2), .in2(out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_4));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_59_insert_79_i0_0_0_0 (.out1(out_MUX_59_insert_79_i0_0_0_0), .sel(selector_MUX_59_insert_79_i0_0_0_0), .in1(out_reg_26_reg_26), .in2(out_conv_out_const_0_1_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_60_insert_79_i0_1_0_0 (.out1(out_MUX_60_insert_79_i0_1_0_0), .sel(selector_MUX_60_insert_79_i0_1_0_0), .in1(out_reg_37_reg_37), .in2(out_conv_out_const_0_I_1_I_8));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(9), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_5_i0 (.out1(out_PROXY_CTRL_5_i0_PROXY_CTRL_5_i0), .proxy_in1(sig_in_bus_mergerproxy_in1_288617_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288619_0), .proxy_in3(sig_in_bus_mergerproxy_in3_2886111_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_2886113_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_2886115_0), .in1(out_MUX_35_PROXY_CTRL_5_i0_0_0_0), .in2(out_conv_out_reg_1_reg_1_6_9), .in3(out_conv_out_const_2_5_4), .in4(out_const_3), .sel_LOAD(fuselector_PROXY_CTRL_5_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_5_i0_STORE), .proxy_out1(proxy_out1_28861));
  ARRAY_1D_STD_BRAM_SDS_BUS #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_S_addr_ram(9), .BITSIZE_S_Wdata_ram(8), .BITSIZE_Sin_Rdata_ram(8), .BITSIZE_Sout_Rdata_ram(8), .BITSIZE_S_data_ram_size(4), .MEMORY_INIT_file("array_ref_28862.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28862_28877), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(9), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) array_28862_0 (.Sout_Rdata_ram(sig_in_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_bus_mergerSout_DataRdy5_0), .clock(clock), .reset(reset), .in1(out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_1), .in2(out_conv_out_reg_2_reg_2_8_9), .in3(out_conv_out_const_2_5_4), .in4(out_const_3), .sel_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD), .sel_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(8'b00000000), .proxy_in2(9'b000000000), .proxy_in3(4'b0000), .proxy_sel_LOAD(1'b0), .proxy_sel_STORE(1'b0));
  ARRAY_1D_STD_BRAM_SDS_BUS #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_S_addr_ram(9), .BITSIZE_S_Wdata_ram(8), .BITSIZE_Sin_Rdata_ram(8), .BITSIZE_Sout_Rdata_ram(8), .BITSIZE_S_data_ram_size(4), .MEMORY_INIT_file("array_ref_28864.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28864_28877), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(9), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) array_28864_0 (.out1(out_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_array_28864_0), .Sout_Rdata_ram(sig_in_bus_mergerSout_Rdata_ram6_1), .Sout_DataRdy(sig_in_bus_mergerSout_DataRdy5_1), .proxy_out1(proxy_out1_28864), .clock(clock), .reset(reset), .in1(8'b00000000), .in2(out_conv_out_reg_0_reg_0_8_9), .in3(out_conv_out_const_2_5_4), .in4(out_const_3), .sel_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_LOAD), .sel_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_STORE), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_bus_mergerproxy_in117_), .proxy_in2(sig_out_bus_mergerproxy_in218_), .proxy_in3(sig_out_bus_mergerproxy_in319_), .proxy_sel_LOAD(sig_out_bus_mergerproxy_sel_LOAD20_), .proxy_sel_STORE(sig_out_bus_mergerproxy_sel_STORE21_));
  ARRAY_1D_STD_BRAM_SDS_BUS #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_S_addr_ram(9), .BITSIZE_S_Wdata_ram(8), .BITSIZE_Sin_Rdata_ram(8), .BITSIZE_Sout_Rdata_ram(8), .BITSIZE_S_data_ram_size(4), .MEMORY_INIT_file("array_ref_28865.mem"), .n_elements(5), .data_size(8), .address_space_begin(MEM_var_28865_28877), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(9), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) array_28865_0 (.Sout_Rdata_ram(sig_in_bus_mergerSout_Rdata_ram6_2), .Sout_DataRdy(sig_in_bus_mergerSout_DataRdy5_2), .proxy_out1(proxy_out1_28865), .clock(clock), .reset(reset), .in1(out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_3), .in2(out_conv_out_reg_31_reg_31_8_9), .in3(out_conv_out_const_2_5_4), .in4(out_const_3), .sel_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_LOAD), .sel_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_STORE), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_bus_mergerproxy_in122_), .proxy_in2(sig_out_bus_mergerproxy_in223_), .proxy_in3(sig_out_bus_mergerproxy_in324_), .proxy_sel_LOAD(sig_out_bus_mergerproxy_sel_LOAD25_), .proxy_sel_STORE(sig_out_bus_mergerproxy_sel_STORE26_));
  ARRAY_1D_STD_BRAM_SDS_BUS #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_S_addr_ram(9), .BITSIZE_S_Wdata_ram(8), .BITSIZE_Sin_Rdata_ram(8), .BITSIZE_Sout_Rdata_ram(8), .BITSIZE_S_data_ram_size(4), .MEMORY_INIT_file("array_ref_28866.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28866_28877), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(9), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) array_28866_0 (.out1(out_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_array_28866_0), .Sout_Rdata_ram(sig_in_bus_mergerSout_Rdata_ram6_3), .Sout_DataRdy(sig_in_bus_mergerSout_DataRdy5_3), .proxy_out1(proxy_out1_28866), .clock(clock), .reset(reset), .in1(8'b00000000), .in2(out_conv_out_reg_4_reg_4_8_9), .in3(out_conv_out_const_2_5_4), .in4(out_const_3), .sel_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_LOAD), .sel_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_STORE), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_bus_mergerproxy_in127_), .proxy_in2(sig_out_bus_mergerproxy_in228_), .proxy_in3(sig_out_bus_mergerproxy_in329_), .proxy_sel_LOAD(sig_out_bus_mergerproxy_sel_LOAD30_), .proxy_sel_STORE(sig_out_bus_mergerproxy_sel_STORE31_));
  ARRAY_1D_STD_BRAM_SDS_BUS #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_S_addr_ram(9), .BITSIZE_S_Wdata_ram(8), .BITSIZE_Sin_Rdata_ram(8), .BITSIZE_Sout_Rdata_ram(8), .BITSIZE_S_data_ram_size(4), .MEMORY_INIT_file("array_ref_28867.mem"), .n_elements(5), .data_size(8), .address_space_begin(MEM_var_28867_28877), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(9), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) array_28867_0 (.Sout_Rdata_ram(sig_in_bus_mergerSout_Rdata_ram6_4), .Sout_DataRdy(sig_in_bus_mergerSout_DataRdy5_4), .proxy_out1(proxy_out1_28867), .clock(clock), .reset(reset), .in1(8'b00000000), .in2(9'b000000000), .in3(4'b0000), .in4(1'b0), .sel_LOAD(1'b0), .sel_STORE(1'b0), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_bus_mergerproxy_in132_), .proxy_in2(sig_out_bus_mergerproxy_in233_), .proxy_in3(sig_out_bus_mergerproxy_in334_), .proxy_sel_LOAD(sig_out_bus_mergerproxy_sel_LOAD35_), .proxy_sel_STORE(sig_out_bus_mergerproxy_sel_STORE36_));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(9), .PORTSIZE_in1(1), .BITSIZE_out1(9)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(1), .BITSIZE_out1(4)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(5), .BITSIZE_out1(1)) bus_mergerSout_DataRdy5_ (.out1(sig_out_bus_mergerSout_DataRdy5_), .in1({sig_in_bus_mergerSout_DataRdy5_4, sig_in_bus_mergerSout_DataRdy5_3, sig_in_bus_mergerSout_DataRdy5_2, sig_in_bus_mergerSout_DataRdy5_1, sig_in_bus_mergerSout_DataRdy5_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(5), .BITSIZE_out1(8)) bus_mergerSout_Rdata_ram6_ (.out1(sig_out_bus_mergerSout_Rdata_ram6_), .in1({sig_in_bus_mergerSout_Rdata_ram6_4, sig_in_bus_mergerSout_Rdata_ram6_3, sig_in_bus_mergerSout_Rdata_ram6_2, sig_in_bus_mergerSout_Rdata_ram6_1, sig_in_bus_mergerSout_Rdata_ram6_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in117_ (.out1(sig_out_bus_mergerproxy_in117_), .in1({sig_in_bus_mergerproxy_in117_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in122_ (.out1(sig_out_bus_mergerproxy_in122_), .in1({sig_in_bus_mergerproxy_in122_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(8)) bus_mergerproxy_in127_ (.out1(sig_out_bus_mergerproxy_in127_), .in1({sig_in_bus_mergerproxy_in127_1, sig_in_bus_mergerproxy_in127_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(8)) bus_mergerproxy_in132_ (.out1(sig_out_bus_mergerproxy_in132_), .in1({sig_in_bus_mergerproxy_in132_1, sig_in_bus_mergerproxy_in132_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(4), .BITSIZE_out1(8)) bus_mergerproxy_in1_288617_ (.out1(sig_out_bus_mergerproxy_in1_288617_), .in1({sig_in_bus_mergerproxy_in1_288617_3, sig_in_bus_mergerproxy_in1_288617_2, sig_in_bus_mergerproxy_in1_288617_1, sig_in_bus_mergerproxy_in1_288617_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(8)) bus_mergerproxy_in1_288688_ (.out1(sig_out_bus_mergerproxy_in1_288688_), .in1({sig_in_bus_mergerproxy_in1_288688_1, sig_in_bus_mergerproxy_in1_288688_0}));
  bus_merger #(.BITSIZE_in1(9), .PORTSIZE_in1(1), .BITSIZE_out1(9)) bus_mergerproxy_in218_ (.out1(sig_out_bus_mergerproxy_in218_), .in1({sig_in_bus_mergerproxy_in218_0}));
  bus_merger #(.BITSIZE_in1(9), .PORTSIZE_in1(1), .BITSIZE_out1(9)) bus_mergerproxy_in223_ (.out1(sig_out_bus_mergerproxy_in223_), .in1({sig_in_bus_mergerproxy_in223_0}));
  bus_merger #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(9)) bus_mergerproxy_in228_ (.out1(sig_out_bus_mergerproxy_in228_), .in1({sig_in_bus_mergerproxy_in228_1, sig_in_bus_mergerproxy_in228_0}));
  bus_merger #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(9)) bus_mergerproxy_in233_ (.out1(sig_out_bus_mergerproxy_in233_), .in1({sig_in_bus_mergerproxy_in233_1, sig_in_bus_mergerproxy_in233_0}));
  bus_merger #(.BITSIZE_in1(9), .PORTSIZE_in1(4), .BITSIZE_out1(9)) bus_mergerproxy_in2_288619_ (.out1(sig_out_bus_mergerproxy_in2_288619_), .in1({sig_in_bus_mergerproxy_in2_288619_3, sig_in_bus_mergerproxy_in2_288619_2, sig_in_bus_mergerproxy_in2_288619_1, sig_in_bus_mergerproxy_in2_288619_0}));
  bus_merger #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(9)) bus_mergerproxy_in2_2886810_ (.out1(sig_out_bus_mergerproxy_in2_2886810_), .in1({sig_in_bus_mergerproxy_in2_2886810_1, sig_in_bus_mergerproxy_in2_2886810_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(1), .BITSIZE_out1(4)) bus_mergerproxy_in319_ (.out1(sig_out_bus_mergerproxy_in319_), .in1({sig_in_bus_mergerproxy_in319_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(1), .BITSIZE_out1(4)) bus_mergerproxy_in324_ (.out1(sig_out_bus_mergerproxy_in324_), .in1({sig_in_bus_mergerproxy_in324_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(4)) bus_mergerproxy_in329_ (.out1(sig_out_bus_mergerproxy_in329_), .in1({sig_in_bus_mergerproxy_in329_1, sig_in_bus_mergerproxy_in329_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(4)) bus_mergerproxy_in334_ (.out1(sig_out_bus_mergerproxy_in334_), .in1({sig_in_bus_mergerproxy_in334_1, sig_in_bus_mergerproxy_in334_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(4), .BITSIZE_out1(4)) bus_mergerproxy_in3_2886111_ (.out1(sig_out_bus_mergerproxy_in3_2886111_), .in1({sig_in_bus_mergerproxy_in3_2886111_3, sig_in_bus_mergerproxy_in3_2886111_2, sig_in_bus_mergerproxy_in3_2886111_1, sig_in_bus_mergerproxy_in3_2886111_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(4)) bus_mergerproxy_in3_2886812_ (.out1(sig_out_bus_mergerproxy_in3_2886812_), .in1({sig_in_bus_mergerproxy_in3_2886812_1, sig_in_bus_mergerproxy_in3_2886812_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD20_ (.out1(sig_out_bus_mergerproxy_sel_LOAD20_), .in1({sig_in_bus_mergerproxy_sel_LOAD20_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD25_ (.out1(sig_out_bus_mergerproxy_sel_LOAD25_), .in1({sig_in_bus_mergerproxy_sel_LOAD25_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD30_ (.out1(sig_out_bus_mergerproxy_sel_LOAD30_), .in1({sig_in_bus_mergerproxy_sel_LOAD30_1, sig_in_bus_mergerproxy_sel_LOAD30_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD35_ (.out1(sig_out_bus_mergerproxy_sel_LOAD35_), .in1({sig_in_bus_mergerproxy_sel_LOAD35_1, sig_in_bus_mergerproxy_sel_LOAD35_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(4), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD_2886113_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886113_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886113_3, sig_in_bus_mergerproxy_sel_LOAD_2886113_2, sig_in_bus_mergerproxy_sel_LOAD_2886113_1, sig_in_bus_mergerproxy_sel_LOAD_2886113_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD_2886814_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_2886814_), .in1({sig_in_bus_mergerproxy_sel_LOAD_2886814_1, sig_in_bus_mergerproxy_sel_LOAD_2886814_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE21_ (.out1(sig_out_bus_mergerproxy_sel_STORE21_), .in1({sig_in_bus_mergerproxy_sel_STORE21_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE26_ (.out1(sig_out_bus_mergerproxy_sel_STORE26_), .in1({sig_in_bus_mergerproxy_sel_STORE26_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE31_ (.out1(sig_out_bus_mergerproxy_sel_STORE31_), .in1({sig_in_bus_mergerproxy_sel_STORE31_1, sig_in_bus_mergerproxy_sel_STORE31_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE36_ (.out1(sig_out_bus_mergerproxy_sel_STORE36_), .in1({sig_in_bus_mergerproxy_sel_STORE36_1, sig_in_bus_mergerproxy_sel_STORE36_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(4), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE_2886115_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886115_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886115_3, sig_in_bus_mergerproxy_sel_STORE_2886115_2, sig_in_bus_mergerproxy_sel_STORE_2886115_1, sig_in_bus_mergerproxy_sel_STORE_2886115_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE_2886816_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886816_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886816_1, sig_in_bus_mergerproxy_sel_STORE_2886816_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28865_28877)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28866_28877)) const_11 (.out1(out_const_11));
  constant_value #(.BITSIZE_out1(6), .value(MEM_var_28861_28879)) const_12 (.out1(out_const_12));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(2), .value(2'b10)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(3), .value(3'b100)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(6), .value(6'b101001)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28862_28877)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28864_28877)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(9)) conv_in_port_a_32_9 (.out1(out_conv_in_port_a_32_9), .in1(in_port_a));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_const_0_1_8 (.out1(out_conv_out_const_0_1_8), .in1(out_const_0));
  IIdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_const_0_I_1_I_8 (.out1(out_conv_out_const_0_I_1_I_8), .in1(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_10_8_32 (.out1(out_conv_out_const_10_8_32), .in1(out_const_10));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_11_8_32 (.out1(out_conv_out_const_11_8_32), .in1(out_const_11));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(32)) conv_out_const_12_6_32 (.out1(out_conv_out_const_12_6_32), .in1(out_const_12));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_2_5_4 (.out1(out_conv_out_const_2_5_4), .in1(out_const_2));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_8_8_32 (.out1(out_conv_out_const_8_8_32), .in1(out_const_8));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_9_8_32 (.out1(out_conv_out_const_9_8_32), .in1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_0_reg_0_8_9 (.out1(out_conv_out_reg_0_reg_0_8_9), .in1(out_reg_0_reg_0));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(9)) conv_out_reg_1_reg_1_6_9 (.out1(out_conv_out_reg_1_reg_1_6_9), .in1(out_reg_1_reg_1));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_2_reg_2_8_9 (.out1(out_conv_out_reg_2_reg_2_8_9), .in1(out_reg_2_reg_2));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_31_reg_31_8_9 (.out1(out_conv_out_reg_31_reg_31_8_9), .in1(out_reg_31_reg_31));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) conv_out_reg_4_reg_4_8_9 (.out1(out_conv_out_reg_4_reg_4_8_9), .in1(out_reg_4_reg_4));
  set_estimates #(.MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28868_28879(MEM_var_28868_28879)) fu_astarF_28877_29351 (.done_port(s_done_fu_astarF_28877_29351), .proxy_in1_28861(sig_in_bus_mergerproxy_in1_288617_3), .proxy_in2_28861(sig_in_bus_mergerproxy_in2_288619_3), .proxy_in3_28861(sig_in_bus_mergerproxy_in3_2886111_3), .proxy_sel_LOAD_28861(sig_in_bus_mergerproxy_sel_LOAD_2886113_3), .proxy_sel_STORE_28861(sig_in_bus_mergerproxy_sel_STORE_2886115_3), .proxy_in1_28868(sig_in_bus_mergerproxy_in1_288688_1), .proxy_in2_28868(sig_in_bus_mergerproxy_in2_2886810_1), .proxy_in3_28868(sig_in_bus_mergerproxy_in3_2886812_1), .proxy_sel_LOAD_28868(sig_in_bus_mergerproxy_sel_LOAD_2886814_1), .proxy_sel_STORE_28868(sig_in_bus_mergerproxy_sel_STORE_2886816_1), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_astarF_28877_29351), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28868(proxy_out1_28868));
  init_camefrom #(.MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28865_28877(MEM_var_28865_28877)) fu_astarF_28877_29352 (.done_port(s_done_fu_astarF_28877_29352), .proxy_in1_28861(sig_in_bus_mergerproxy_in1_288617_1), .proxy_in2_28861(sig_in_bus_mergerproxy_in2_288619_1), .proxy_in3_28861(sig_in_bus_mergerproxy_in3_2886111_1), .proxy_sel_LOAD_28861(sig_in_bus_mergerproxy_sel_LOAD_2886113_1), .proxy_sel_STORE_28861(sig_in_bus_mergerproxy_sel_STORE_2886115_1), .proxy_in1_28865(sig_in_bus_mergerproxy_in122_0), .proxy_in2_28865(sig_in_bus_mergerproxy_in223_0), .proxy_in3_28865(sig_in_bus_mergerproxy_in324_0), .proxy_sel_LOAD_28865(sig_in_bus_mergerproxy_sel_LOAD25_0), .proxy_sel_STORE_28865(sig_in_bus_mergerproxy_sel_STORE26_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_astarF_28877_29352), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28865(proxy_out1_28865));
  remove_min #(.MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28864_28877(MEM_var_28864_28877), .MEM_var_28866_28877(MEM_var_28866_28877), .MEM_var_28867_28877(MEM_var_28867_28877)) fu_astarF_28877_29365 (.done_port(s_done_fu_astarF_28877_29365), .proxy_in1_28861(sig_in_bus_mergerproxy_in1_288617_2), .proxy_in2_28861(sig_in_bus_mergerproxy_in2_288619_2), .proxy_in3_28861(sig_in_bus_mergerproxy_in3_2886111_2), .proxy_sel_LOAD_28861(sig_in_bus_mergerproxy_sel_LOAD_2886113_2), .proxy_sel_STORE_28861(sig_in_bus_mergerproxy_sel_STORE_2886115_2), .proxy_in1_28864(sig_in_bus_mergerproxy_in117_0), .proxy_in2_28864(sig_in_bus_mergerproxy_in218_0), .proxy_in3_28864(sig_in_bus_mergerproxy_in319_0), .proxy_sel_LOAD_28864(sig_in_bus_mergerproxy_sel_LOAD20_0), .proxy_sel_STORE_28864(sig_in_bus_mergerproxy_sel_STORE21_0), .proxy_in1_28866(sig_in_bus_mergerproxy_in127_1), .proxy_in2_28866(sig_in_bus_mergerproxy_in228_1), .proxy_in3_28866(sig_in_bus_mergerproxy_in329_1), .proxy_sel_LOAD_28866(sig_in_bus_mergerproxy_sel_LOAD30_1), .proxy_sel_STORE_28866(sig_in_bus_mergerproxy_sel_STORE31_1), .proxy_in1_28867(sig_in_bus_mergerproxy_in132_1), .proxy_in2_28867(sig_in_bus_mergerproxy_in233_1), .proxy_in3_28867(sig_in_bus_mergerproxy_in334_1), .proxy_sel_LOAD_28867(sig_in_bus_mergerproxy_sel_LOAD35_1), .proxy_sel_STORE_28867(sig_in_bus_mergerproxy_sel_STORE36_1), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_astarF_28877_29365), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28864(proxy_out1_28864), .proxy_out1_28866(proxy_out1_28866), .proxy_out1_28867(proxy_out1_28867));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29367 (.out1(out_read_cond_FU_15_i0_fu_astarF_28877_29367), .in1(out_ui_eq_expr_FU_8_0_8_67_i0_fu_astarF_28877_30146));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_astarF_28877_29385 (.out1(out_ui_plus_expr_FU_8_0_8_71_i0_fu_astarF_28877_29385), .in1(out_reg_38_reg_38), .in2(out_const_3));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_astarF_28877_29393 (.out1(out_UIdata_converter_FU_29_i0_fu_astarF_28877_29393), .in1(out_PROXY_CTRL_5_i0_PROXY_CTRL_5_i0));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_astarF_28877_29401 (.out1(out_IIdata_converter_FU_36_i0_fu_astarF_28877_29401), .in1(out_plus_expr_FU_8_8_8_63_i0_fu_astarF_28877_29404));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) fu_astarF_28877_29404 (.out1(out_plus_expr_FU_8_8_8_63_i0_fu_astarF_28877_29404), .in1(out_IIdata_converter_FU_35_i0_fu_astarF_28877_30180), .in2(out_reg_33_reg_33));
  heuristic #(.MEM_var_28868_28879(MEM_var_28868_28879)) fu_astarF_28877_29408 (.done_port(s_done_fu_astarF_28877_29408), .return_port(out_heuristic_77_i0_fu_astarF_28877_29408), .proxy_in1_28868(sig_in_bus_mergerproxy_in1_288688_0), .proxy_in2_28868(sig_in_bus_mergerproxy_in2_2886810_0), .proxy_in3_28868(sig_in_bus_mergerproxy_in3_2886812_0), .proxy_sel_LOAD_28868(sig_in_bus_mergerproxy_sel_LOAD_2886814_0), .proxy_sel_STORE_28868(sig_in_bus_mergerproxy_sel_STORE_2886816_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_astarF_28877_29408), .goal(out_conv_out_const_0_1_8), .current(out_reg_26_reg_26), .path_cost(out_reg_34_reg_34), .proxy_out1_28868(proxy_out1_28868));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_astarF_28877_29414 (.out1(out_IIdata_converter_FU_32_i0_fu_astarF_28877_29414), .in1(out_BMEMORY_CTRL_59_i0_BMEMORY_CTRL_59_i0));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(11), .BITSIZE_out1(10), .LSB_PARAMETER(0)) fu_astarF_28877_29421 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_73_i0_fu_astarF_28877_29421), .in1(out_conv_in_port_a_32_9), .in2(out_ui_bit_ior_concat_expr_FU_65_i1_fu_astarF_28877_29662));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29434 (.out1(out_UUdata_converter_FU_28_i0_fu_astarF_28877_29434), .in1(out_PROXY_CTRL_5_i0_PROXY_CTRL_5_i0));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(5), .BITSIZE_out1(10), .LSB_PARAMETER(0)) fu_astarF_28877_29444 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_73_i1_fu_astarF_28877_29444), .in1(out_conv_in_port_a_32_9), .in2(out_ui_bit_ior_concat_expr_FU_66_i0_fu_astarF_28877_29618));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(3)) fu_astarF_28877_29451 (.out1(out_UUdata_converter_FU_49_i0_fu_astarF_28877_29451), .in1(out_PROXY_CTRL_5_i0_PROXY_CTRL_5_i0));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(4)) fu_astarF_28877_29456 (.out1(out_UIdata_converter_FU_47_i0_fu_astarF_28877_29456), .in1(out_PROXY_CTRL_5_i0_PROXY_CTRL_5_i0));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) fu_astarF_28877_29458 (.out1(out_plus_expr_FU_8_8_8_63_i1_fu_astarF_28877_29458), .in1(out_reg_21_reg_21), .in2(out_reg_33_reg_33));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(11), .BITSIZE_out1(10), .LSB_PARAMETER(0)) fu_astarF_28877_29467 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_73_i2_fu_astarF_28877_29467), .in1(out_conv_in_port_a_32_9), .in2(out_ui_bit_ior_concat_expr_FU_65_i0_fu_astarF_28877_29576));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29473 (.out1(out_UUdata_converter_FU_18_i0_fu_astarF_28877_29473), .in1(out_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_array_28864_0));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_astarF_28877_29477 (.out1(out_UIdata_converter_FU_20_i0_fu_astarF_28877_29477), .in1(out_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_array_28864_0));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29489 (.out1(out_read_cond_FU_23_i0_fu_astarF_28877_29489), .in1(out_ne_expr_FU_8_0_8_62_i0_fu_astarF_28877_30148));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29491 (.out1(out_IIdata_converter_FU_25_i0_fu_astarF_28877_29491), .in1(out_BMEMORY_CTRL_59_i0_BMEMORY_CTRL_59_i0));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29492 (.out1(out_IIdata_converter_FU_22_i0_fu_astarF_28877_29492), .in1(out_BMEMORY_CTRL_59_i0_BMEMORY_CTRL_59_i0));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(9)) fu_astarF_28877_29493 (.out1(out_plus_expr_FU_8_8_8_63_i2_fu_astarF_28877_29493), .in1(out_reg_18_reg_18), .in2(out_reg_22_reg_22));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29495 (.out1(out_IIdata_converter_FU_26_i0_fu_astarF_28877_29495), .in1(out_BMEMORY_CTRL_59_i0_BMEMORY_CTRL_59_i0));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29496 (.out1(out_read_cond_FU_27_i0_fu_astarF_28877_29496), .in1(out_lt_expr_FU_16_16_16_61_i0_fu_astarF_28877_30150));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29511 (.out1(out_read_cond_FU_51_i0_fu_astarF_28877_29511), .in1(out_ui_le_expr_FU_8_0_8_68_i0_fu_astarF_28877_30152));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29514 (.out1(out_read_cond_FU_58_i0_fu_astarF_28877_29514), .in1(out_gt_expr_FU_8_0_8_60_i0_fu_astarF_28877_30154));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_astarF_28877_29558 (.out1(out_addr_expr_FU_9_i0_fu_astarF_28877_29558), .in1(out_conv_out_const_9_8_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(6)) fu_astarF_28877_29563 (.out1(out_addr_expr_FU_10_i0_fu_astarF_28877_29563), .in1(out_conv_out_const_12_6_32));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(10), .PRECISION(32)) fu_astarF_28877_29573 (.out1(out_ui_lshift_expr_FU_16_0_16_69_i0_fu_astarF_28877_29573), .in1(out_UUdata_converter_FU_18_i0_fu_astarF_28877_29473), .in2(out_const_4));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(11), .OFFSET_PARAMETER(2)) fu_astarF_28877_29576 (.out1(out_ui_bit_ior_concat_expr_FU_65_i0_fu_astarF_28877_29576), .in1(out_ui_lshift_expr_FU_16_0_16_69_i2_fu_astarF_28877_30330), .in2(out_reg_15_reg_15), .in3(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(10)) fu_astarF_28877_29581 (.out1(out_UUdata_converter_FU_19_i0_fu_astarF_28877_29581), .in1(out_ui_pointer_plus_expr_FU_16_16_16_73_i2_fu_astarF_28877_29467));
  IUdata_converter_FU #(.BITSIZE_in1(4), .BITSIZE_out1(3)) fu_astarF_28877_29584 (.out1(out_IUdata_converter_FU_48_i0_fu_astarF_28877_29584), .in1(out_UIdata_converter_FU_47_i0_fu_astarF_28877_29456));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(3), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_astarF_28877_29591 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_74_i0_fu_astarF_28877_29591), .in1(out_reg_16_reg_16), .in2(out_reg_6_reg_6));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_astarF_28877_29605 (.out1(out_IUdata_converter_FU_21_i0_fu_astarF_28877_29605), .in1(out_UIdata_converter_FU_20_i0_fu_astarF_28877_29477));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(8), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_astarF_28877_29611 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_74_i1_fu_astarF_28877_29611), .in1(out_reg_16_reg_16), .in2(out_reg_12_reg_12));
  ui_lshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(2), .BITSIZE_out1(5), .PRECISION(32)) fu_astarF_28877_29615 (.out1(out_ui_lshift_expr_FU_8_0_8_70_i0_fu_astarF_28877_29615), .in1(out_UUdata_converter_FU_49_i0_fu_astarF_28877_29451), .in2(out_const_4));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(5), .OFFSET_PARAMETER(2)) fu_astarF_28877_29618 (.out1(out_ui_bit_ior_concat_expr_FU_66_i0_fu_astarF_28877_29618), .in1(out_ui_lshift_expr_FU_8_0_8_70_i1_fu_astarF_28877_30349), .in2(out_reg_9_reg_9), .in3(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(10)) fu_astarF_28877_29621 (.out1(out_UUdata_converter_FU_50_i0_fu_astarF_28877_29621), .in1(out_ui_pointer_plus_expr_FU_16_16_16_73_i1_fu_astarF_28877_29444));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(3), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_astarF_28877_29630 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_74_i2_fu_astarF_28877_29630), .in1(out_reg_10_reg_10), .in2(out_reg_6_reg_6));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(10), .PRECISION(32)) fu_astarF_28877_29659 (.out1(out_ui_lshift_expr_FU_16_0_16_69_i1_fu_astarF_28877_29659), .in1(out_UUdata_converter_FU_28_i0_fu_astarF_28877_29434), .in2(out_const_4));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(11), .OFFSET_PARAMETER(2)) fu_astarF_28877_29662 (.out1(out_ui_bit_ior_concat_expr_FU_65_i1_fu_astarF_28877_29662), .in1(out_ui_lshift_expr_FU_16_0_16_69_i3_fu_astarF_28877_30365), .in2(out_reg_29_reg_29), .in3(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(10)) fu_astarF_28877_29665 (.out1(out_UUdata_converter_FU_30_i0_fu_astarF_28877_29665), .in1(out_ui_pointer_plus_expr_FU_16_16_16_73_i0_fu_astarF_28877_29421));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_astarF_28877_29668 (.out1(out_IUdata_converter_FU_31_i0_fu_astarF_28877_29668), .in1(out_UIdata_converter_FU_29_i0_fu_astarF_28877_29393));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(8), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_astarF_28877_29674 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_74_i3_fu_astarF_28877_29674), .in1(out_reg_30_reg_30), .in2(out_reg_25_reg_25));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_astarF_28877_29678 (.out1(out_addr_expr_FU_11_i0_fu_astarF_28877_29678), .in1(out_conv_out_const_8_8_32));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(9)) fu_astarF_28877_29686 (.out1(out_UUdata_converter_FU_13_i0_fu_astarF_28877_29686), .in1(out_addr_expr_FU_12_i0_fu_astarF_28877_29709));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(8), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_astarF_28877_29695 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_74_i4_fu_astarF_28877_29695), .in1(out_reg_3_reg_3), .in2(out_reg_25_reg_25));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(9)) fu_astarF_28877_29709 (.out1(out_addr_expr_FU_12_i0_fu_astarF_28877_29709), .in1(out_conv_out_const_10_8_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_astarF_28877_29725 (.out1(out_addr_expr_FU_8_i0_fu_astarF_28877_29725), .in1(out_conv_out_const_11_8_32));
  ui_eq_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(6), .BITSIZE_out1(1)) fu_astarF_28877_30146 (.out1(out_ui_eq_expr_FU_8_0_8_67_i0_fu_astarF_28877_30146), .in1(out_reg_24_reg_24), .in2(out_const_6));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_astarF_28877_30148 (.out1(out_ne_expr_FU_8_0_8_62_i0_fu_astarF_28877_30148), .in1(out_reg_33_reg_33), .in2(out_const_7));
  lt_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_astarF_28877_30150 (.out1(out_lt_expr_FU_16_16_16_61_i0_fu_astarF_28877_30150), .in1(out_plus_expr_FU_8_8_8_63_i2_fu_astarF_28877_29493), .in2(out_reg_20_reg_20));
  ui_le_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(1)) fu_astarF_28877_30152 (.out1(out_ui_le_expr_FU_8_0_8_68_i0_fu_astarF_28877_30152), .in1(out_reg_38_reg_38), .in2(out_const_5));
  gt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_astarF_28877_30154 (.out1(out_gt_expr_FU_8_0_8_60_i0_fu_astarF_28877_30154), .in1(out_reg_5_reg_5), .in2(out_const_0));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_30180 (.out1(out_IIdata_converter_FU_35_i0_fu_astarF_28877_30180), .in1(out_reg_35_reg_35));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_astarF_28877_30186 (.out1(out_IUdata_converter_FU_33_i0_fu_astarF_28877_30186), .in1(out_UIdata_converter_FU_29_i0_fu_astarF_28877_29393));
  IIdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_astarF_28877_30189 (.out1(out_IIdata_converter_FU_34_i0_fu_astarF_28877_30189), .in1(out_IIdata_converter_FU_32_i0_fu_astarF_28877_29414));
  IIdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_astarF_28877_30195 (.out1(out_IIdata_converter_FU_37_i0_fu_astarF_28877_30195), .in1(out_IIdata_converter_FU_36_i0_fu_astarF_28877_29401));
  ui_rshift_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(32)) fu_astarF_28877_30319 (.out1(out_ui_rshift_expr_FU_16_0_16_75_i0_fu_astarF_28877_30319), .in1(out_ui_lshift_expr_FU_16_0_16_69_i0_fu_astarF_28877_29573), .in2(out_const_4));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_astarF_28877_30323 (.out1(out_ui_rshift_expr_FU_8_0_8_76_i0_fu_astarF_28877_30323), .in1(out_UUdata_converter_FU_18_i0_fu_astarF_28877_29473), .in2(out_const_4));
  ui_lshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(11), .PRECISION(32)) fu_astarF_28877_30330 (.out1(out_ui_lshift_expr_FU_16_0_16_69_i2_fu_astarF_28877_30330), .in1(out_ui_plus_expr_FU_8_8_8_72_i1_ui_plus_expr_FU_8_8_8_72_i1), .in2(out_const_4));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_astarF_28877_30335 (.out1(out_ui_bit_and_expr_FU_8_0_8_64_i0_fu_astarF_28877_30335), .in1(out_UUdata_converter_FU_18_i0_fu_astarF_28877_29473), .in2(out_const_7));
  ui_rshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_out1(3), .PRECISION(32)) fu_astarF_28877_30340 (.out1(out_ui_rshift_expr_FU_8_0_8_76_i1_fu_astarF_28877_30340), .in1(out_ui_lshift_expr_FU_8_0_8_70_i0_fu_astarF_28877_29615), .in2(out_const_4));
  ui_rshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(2), .BITSIZE_out1(1), .PRECISION(32)) fu_astarF_28877_30343 (.out1(out_ui_rshift_expr_FU_8_0_8_76_i2_fu_astarF_28877_30343), .in1(out_UUdata_converter_FU_49_i0_fu_astarF_28877_29451), .in2(out_const_4));
  ui_plus_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(3)) fu_astarF_28877_30346 (.out1(out_ui_plus_expr_FU_8_8_8_72_i0_fu_astarF_28877_30346), .in1(out_reg_7_reg_7), .in2(out_reg_8_reg_8));
  ui_lshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(2), .BITSIZE_out1(5), .PRECISION(32)) fu_astarF_28877_30349 (.out1(out_ui_lshift_expr_FU_8_0_8_70_i1_fu_astarF_28877_30349), .in1(out_ui_plus_expr_FU_8_8_8_72_i0_fu_astarF_28877_30346), .in2(out_const_4));
  ui_bit_and_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_astarF_28877_30353 (.out1(out_ui_bit_and_expr_FU_8_0_8_64_i1_fu_astarF_28877_30353), .in1(out_UUdata_converter_FU_49_i0_fu_astarF_28877_29451), .in2(out_const_7));
  ui_rshift_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(32)) fu_astarF_28877_30357 (.out1(out_ui_rshift_expr_FU_16_0_16_75_i1_fu_astarF_28877_30357), .in1(out_ui_lshift_expr_FU_16_0_16_69_i1_fu_astarF_28877_29659), .in2(out_const_4));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_astarF_28877_30360 (.out1(out_ui_rshift_expr_FU_8_0_8_76_i3_fu_astarF_28877_30360), .in1(out_UUdata_converter_FU_28_i0_fu_astarF_28877_29434), .in2(out_const_4));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(6), .BITSIZE_out1(9)) fu_astarF_28877_30362 (.out1(out_ui_plus_expr_FU_8_8_8_72_i2_fu_astarF_28877_30362), .in1(out_reg_27_reg_27), .in2(out_reg_28_reg_28));
  ui_lshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(11), .PRECISION(32)) fu_astarF_28877_30365 (.out1(out_ui_lshift_expr_FU_16_0_16_69_i3_fu_astarF_28877_30365), .in1(out_ui_plus_expr_FU_8_8_8_72_i2_fu_astarF_28877_30362), .in2(out_const_4));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_astarF_28877_30368 (.out1(out_ui_bit_and_expr_FU_8_0_8_64_i2_fu_astarF_28877_30368), .in1(out_UUdata_converter_FU_28_i0_fu_astarF_28877_29434), .in2(out_const_7));
  insert #(.MEM_var_28866_28877(MEM_var_28866_28877), .MEM_var_28867_28877(MEM_var_28867_28877)) insert_79_i0 (.done_port(s_done_insert_79_i0), .proxy_in1_28866(sig_in_bus_mergerproxy_in127_0), .proxy_in2_28866(sig_in_bus_mergerproxy_in228_0), .proxy_in3_28866(sig_in_bus_mergerproxy_in329_0), .proxy_sel_LOAD_28866(sig_in_bus_mergerproxy_sel_LOAD30_0), .proxy_sel_STORE_28866(sig_in_bus_mergerproxy_sel_STORE31_0), .proxy_in1_28867(sig_in_bus_mergerproxy_in132_0), .proxy_in2_28867(sig_in_bus_mergerproxy_in233_0), .proxy_in3_28867(sig_in_bus_mergerproxy_in334_0), .proxy_sel_LOAD_28867(sig_in_bus_mergerproxy_sel_LOAD35_0), .proxy_sel_STORE_28867(sig_in_bus_mergerproxy_sel_STORE36_0), .clock(clock), .reset(reset), .start_port(s_insert_79_i00), .node(out_MUX_59_insert_79_i0_0_0_0), .\priority (out_MUX_60_insert_79_i0_1_0_0), .proxy_out1_28866(proxy_out1_28866), .proxy_out1_28867(proxy_out1_28867));
  or or_or_insert_79_i00( s_insert_79_i00, selector_IN_UNBOUNDED_astarF_28877_29353, selector_IN_UNBOUNDED_astarF_28877_29398);
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_9_i0_fu_astarF_28877_29558), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_10_i0_fu_astarF_28877_29563), .wenable(wrenable_reg_1));
  register_STD #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_50_i0_fu_astarF_28877_29621), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_74_i2_fu_astarF_28877_29630), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_21_i0_fu_astarF_28877_29605), .wenable(wrenable_reg_12));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_16_0_16_75_i0_fu_astarF_28877_30319), .wenable(wrenable_reg_13));
  register_STD #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_8_0_8_76_i0_fu_astarF_28877_30323), .wenable(wrenable_reg_14));
  register_STD #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_ui_bit_and_expr_FU_8_0_8_64_i0_fu_astarF_28877_30335), .wenable(wrenable_reg_15));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_19_i0_fu_astarF_28877_29581), .wenable(wrenable_reg_16));
  register_STD #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_74_i0_fu_astarF_28877_29591), .wenable(wrenable_reg_17));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_22_i0_fu_astarF_28877_29492), .wenable(wrenable_reg_18));
  register_STD #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_19 (.out1(out_reg_19_reg_19), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_74_i1_fu_astarF_28877_29611), .wenable(wrenable_reg_19));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_11_i0_fu_astarF_28877_29678), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_20 (.out1(out_reg_20_reg_20), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_26_i0_fu_astarF_28877_29495), .wenable(wrenable_reg_20));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_21 (.out1(out_reg_21_reg_21), .clock(clock), .reset(reset), .in1(out_BMEMORY_CTRL_59_i0_BMEMORY_CTRL_59_i0), .wenable(wrenable_reg_21));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_22 (.out1(out_reg_22_reg_22), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_25_i0_fu_astarF_28877_29491), .wenable(wrenable_reg_22));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_23 (.out1(out_reg_23_reg_23), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_8_8_63_i1_fu_astarF_28877_29458), .wenable(wrenable_reg_23));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_24 (.out1(out_reg_24_reg_24), .clock(clock), .reset(reset), .in1(out_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_array_28864_0), .wenable(wrenable_reg_24));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_25 (.out1(out_reg_25_reg_25), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_31_i0_fu_astarF_28877_29668), .wenable(wrenable_reg_25));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_26 (.out1(out_reg_26_reg_26), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_33_i0_fu_astarF_28877_30186), .wenable(wrenable_reg_26));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_27 (.out1(out_reg_27_reg_27), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_16_0_16_75_i1_fu_astarF_28877_30357), .wenable(wrenable_reg_27));
  register_STD #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_28 (.out1(out_reg_28_reg_28), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_8_0_8_76_i3_fu_astarF_28877_30360), .wenable(wrenable_reg_28));
  register_STD #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_29 (.out1(out_reg_29_reg_29), .clock(clock), .reset(reset), .in1(out_ui_bit_and_expr_FU_8_0_8_64_i2_fu_astarF_28877_30368), .wenable(wrenable_reg_29));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_13_i0_fu_astarF_28877_29686), .wenable(wrenable_reg_3));
  register_STD #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_30 (.out1(out_reg_30_reg_30), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_30_i0_fu_astarF_28877_29665), .wenable(wrenable_reg_30));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_31 (.out1(out_reg_31_reg_31), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_74_i4_fu_astarF_28877_29695), .wenable(wrenable_reg_31));
  register_STD #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_32 (.out1(out_reg_32_reg_32), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_74_i3_fu_astarF_28877_29674), .wenable(wrenable_reg_32));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_33 (.out1(out_reg_33_reg_33), .clock(clock), .reset(reset), .in1(out_BMEMORY_CTRL_59_i0_BMEMORY_CTRL_59_i0), .wenable(wrenable_reg_33));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_34 (.out1(out_reg_34_reg_34), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_34_i0_fu_astarF_28877_30189), .wenable(wrenable_reg_34));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_35 (.out1(out_reg_35_reg_35), .clock(clock), .reset(reset), .in1(out_heuristic_77_i0_fu_astarF_28877_29408), .wenable(wrenable_reg_35));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_36 (.out1(out_reg_36_reg_36), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_8_8_63_i0_fu_astarF_28877_29404), .wenable(wrenable_reg_36));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_37 (.out1(out_reg_37_reg_37), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_37_i0_fu_astarF_28877_30195), .wenable(wrenable_reg_37));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_38 (.out1(out_reg_38_reg_38), .clock(clock), .reset(reset), .in1(out_PROXY_CTRL_5_i0_PROXY_CTRL_5_i0), .wenable(wrenable_reg_38));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_39 (.out1(out_reg_39_reg_39), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_71_i0_fu_astarF_28877_29385), .wenable(wrenable_reg_39));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_8_i0_fu_astarF_28877_29725), .wenable(wrenable_reg_4));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_array_28866_0), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(3), .BITSIZE_out1(3)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_48_i0_fu_astarF_28877_29584), .wenable(wrenable_reg_6));
  register_STD #(.BITSIZE_in1(3), .BITSIZE_out1(3)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_8_0_8_76_i1_fu_astarF_28877_30340), .wenable(wrenable_reg_7));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_8_0_8_76_i2_fu_astarF_28877_30343), .wenable(wrenable_reg_8));
  register_STD #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_ui_bit_and_expr_FU_8_0_8_64_i1_fu_astarF_28877_30353), .wenable(wrenable_reg_9));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(6), .BITSIZE_out1(9)) ui_plus_expr_FU_8_8_8_72_i1 (.out1(out_ui_plus_expr_FU_8_8_8_72_i1_ui_plus_expr_FU_8_8_8_72_i1), .in1(out_reg_13_reg_13), .in2(out_reg_14_reg_14));
  // io-signal post fix
  assign Sout_Rdata_ram = sig_out_bus_mergerSout_Rdata_ram6_;
  assign Sout_DataRdy = sig_out_bus_mergerSout_DataRdy5_;
  assign proxy_in1_28861 = sig_out_bus_mergerproxy_in1_288617_;
  assign proxy_in2_28861 = sig_out_bus_mergerproxy_in2_288619_;
  assign proxy_in3_28861 = sig_out_bus_mergerproxy_in3_2886111_;
  assign proxy_sel_LOAD_28861 = sig_out_bus_mergerproxy_sel_LOAD_2886113_;
  assign proxy_sel_STORE_28861 = sig_out_bus_mergerproxy_sel_STORE_2886115_;
  assign Mout_oe_ram = sig_out_bus_mergerMout_oe_ram3_;
  assign Mout_we_ram = sig_out_bus_mergerMout_we_ram4_;
  assign Mout_addr_ram = sig_out_bus_mergerMout_addr_ram1_;
  assign Mout_Wdata_ram = sig_out_bus_mergerMout_Wdata_ram0_;
  assign Mout_data_ram_size = sig_out_bus_mergerMout_data_ram_size2_;
  assign proxy_in1_28868 = sig_out_bus_mergerproxy_in1_288688_;
  assign proxy_in2_28868 = sig_out_bus_mergerproxy_in2_2886810_;
  assign proxy_in3_28868 = sig_out_bus_mergerproxy_in3_2886812_;
  assign proxy_sel_LOAD_28868 = sig_out_bus_mergerproxy_sel_LOAD_2886814_;
  assign proxy_sel_STORE_28868 = sig_out_bus_mergerproxy_sel_STORE_2886816_;
  assign OUT_CONDITION_astarF_28877_29367 = out_read_cond_FU_15_i0_fu_astarF_28877_29367;
  assign OUT_CONDITION_astarF_28877_29489 = out_read_cond_FU_23_i0_fu_astarF_28877_29489;
  assign OUT_CONDITION_astarF_28877_29496 = out_read_cond_FU_27_i0_fu_astarF_28877_29496;
  assign OUT_CONDITION_astarF_28877_29511 = out_read_cond_FU_51_i0_fu_astarF_28877_29511;
  assign OUT_CONDITION_astarF_28877_29514 = out_read_cond_FU_58_i0_fu_astarF_28877_29514;
  assign OUT_UNBOUNDED_astarF_28877_29351 = s_done_fu_astarF_28877_29351;
  assign OUT_UNBOUNDED_astarF_28877_29352 = s_done_fu_astarF_28877_29352;
  assign OUT_UNBOUNDED_astarF_28877_29353 = s_done_insert_79_i0;
  assign OUT_UNBOUNDED_astarF_28877_29365 = s_done_fu_astarF_28877_29365;
  assign OUT_UNBOUNDED_astarF_28877_29398 = s_done_insert_79_i0;
  assign OUT_UNBOUNDED_astarF_28877_29408 = s_done_fu_astarF_28877_29408;

endmodule

// FSM based controller description for astarF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_astarF(done_port, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_STORE, fuselector_BMEMORY_CTRL_59_i0_LOAD, fuselector_BMEMORY_CTRL_59_i0_STORE, selector_IN_UNBOUNDED_astarF_28877_29351, selector_IN_UNBOUNDED_astarF_28877_29352, selector_IN_UNBOUNDED_astarF_28877_29353, selector_IN_UNBOUNDED_astarF_28877_29365, selector_IN_UNBOUNDED_astarF_28877_29398, selector_IN_UNBOUNDED_astarF_28877_29408, selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0, selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1, selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0, selector_MUX_35_PROXY_CTRL_5_i0_0_0_0, selector_MUX_59_insert_79_i0_0_0_0, selector_MUX_60_insert_79_i0_1_0_0, fuselector_PROXY_CTRL_5_i0_LOAD, fuselector_PROXY_CTRL_5_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_29, wrenable_reg_3, wrenable_reg_30, wrenable_reg_31, wrenable_reg_32, wrenable_reg_33, wrenable_reg_34, wrenable_reg_35, wrenable_reg_36, wrenable_reg_37, wrenable_reg_38, wrenable_reg_39, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_astarF_28877_29367, OUT_CONDITION_astarF_28877_29489, OUT_CONDITION_astarF_28877_29496, OUT_CONDITION_astarF_28877_29511, OUT_CONDITION_astarF_28877_29514, OUT_UNBOUNDED_astarF_28877_29351, OUT_UNBOUNDED_astarF_28877_29352, OUT_UNBOUNDED_astarF_28877_29353, OUT_UNBOUNDED_astarF_28877_29365, OUT_UNBOUNDED_astarF_28877_29398, OUT_UNBOUNDED_astarF_28877_29408, clock, reset, start_port);
  // IN
  input OUT_CONDITION_astarF_28877_29367;
  input OUT_CONDITION_astarF_28877_29489;
  input OUT_CONDITION_astarF_28877_29496;
  input OUT_CONDITION_astarF_28877_29511;
  input OUT_CONDITION_astarF_28877_29514;
  input OUT_UNBOUNDED_astarF_28877_29351;
  input OUT_UNBOUNDED_astarF_28877_29352;
  input OUT_UNBOUNDED_astarF_28877_29353;
  input OUT_UNBOUNDED_astarF_28877_29365;
  input OUT_UNBOUNDED_astarF_28877_29398;
  input OUT_UNBOUNDED_astarF_28877_29408;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_STORE;
  output fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_STORE;
  output fuselector_BMEMORY_CTRL_59_i0_LOAD;
  output fuselector_BMEMORY_CTRL_59_i0_STORE;
  output selector_IN_UNBOUNDED_astarF_28877_29351;
  output selector_IN_UNBOUNDED_astarF_28877_29352;
  output selector_IN_UNBOUNDED_astarF_28877_29353;
  output selector_IN_UNBOUNDED_astarF_28877_29365;
  output selector_IN_UNBOUNDED_astarF_28877_29398;
  output selector_IN_UNBOUNDED_astarF_28877_29408;
  output selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0;
  output selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1;
  output selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0;
  output selector_MUX_35_PROXY_CTRL_5_i0_0_0_0;
  output selector_MUX_59_insert_79_i0_0_0_0;
  output selector_MUX_60_insert_79_i0_1_0_0;
  output fuselector_PROXY_CTRL_5_i0_LOAD;
  output fuselector_PROXY_CTRL_5_i0_STORE;
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
  output wrenable_reg_5;
  output wrenable_reg_6;
  output wrenable_reg_7;
  output wrenable_reg_8;
  output wrenable_reg_9;
  parameter [48:0] S_0 = 49'b0000000000000000000000000000000000000000000000001,
    S_1 = 49'b0000000000000000000000000000000000000000000000010,
    S_2 = 49'b0000000000000000000000000000000000000000000000100,
    S_3 = 49'b0000000000000000000000000000000000000000000001000,
    S_4 = 49'b0000000000000000000000000000000000000000000010000,
    S_5 = 49'b0000000000000000000000000000000000000000000100000,
    S_44 = 49'b0000100000000000000000000000000000000000000000000,
    S_45 = 49'b0001000000000000000000000000000000000000000000000,
    S_46 = 49'b0010000000000000000000000000000000000000000000000,
    S_48 = 49'b1000000000000000000000000000000000000000000000000,
    S_6 = 49'b0000000000000000000000000000000000000000001000000,
    S_7 = 49'b0000000000000000000000000000000000000000010000000,
    S_8 = 49'b0000000000000000000000000000000000000000100000000,
    S_9 = 49'b0000000000000000000000000000000000000001000000000,
    S_10 = 49'b0000000000000000000000000000000000000010000000000,
    S_47 = 49'b0100000000000000000000000000000000000000000000000,
    S_11 = 49'b0000000000000000000000000000000000000100000000000,
    S_41 = 49'b0000000100000000000000000000000000000000000000000,
    S_42 = 49'b0000001000000000000000000000000000000000000000000,
    S_43 = 49'b0000010000000000000000000000000000000000000000000,
    S_12 = 49'b0000000000000000000000000000000000001000000000000,
    S_13 = 49'b0000000000000000000000000000000000010000000000000,
    S_14 = 49'b0000000000000000000000000000000000100000000000000,
    S_15 = 49'b0000000000000000000000000000000001000000000000000,
    S_16 = 49'b0000000000000000000000000000000010000000000000000,
    S_17 = 49'b0000000000000000000000000000000100000000000000000,
    S_18 = 49'b0000000000000000000000000000001000000000000000000,
    S_19 = 49'b0000000000000000000000000000010000000000000000000,
    S_20 = 49'b0000000000000000000000000000100000000000000000000,
    S_21 = 49'b0000000000000000000000000001000000000000000000000,
    S_22 = 49'b0000000000000000000000000010000000000000000000000,
    S_23 = 49'b0000000000000000000000000100000000000000000000000,
    S_24 = 49'b0000000000000000000000001000000000000000000000000,
    S_25 = 49'b0000000000000000000000010000000000000000000000000,
    S_26 = 49'b0000000000000000000000100000000000000000000000000,
    S_27 = 49'b0000000000000000000001000000000000000000000000000,
    S_28 = 49'b0000000000000000000010000000000000000000000000000,
    S_29 = 49'b0000000000000000000100000000000000000000000000000,
    S_30 = 49'b0000000000000000001000000000000000000000000000000,
    S_31 = 49'b0000000000000000010000000000000000000000000000000,
    S_32 = 49'b0000000000000000100000000000000000000000000000000,
    S_33 = 49'b0000000000000001000000000000000000000000000000000,
    S_34 = 49'b0000000000000010000000000000000000000000000000000,
    S_35 = 49'b0000000000000100000000000000000000000000000000000,
    S_36 = 49'b0000000000001000000000000000000000000000000000000,
    S_37 = 49'b0000000000010000000000000000000000000000000000000,
    S_38 = 49'b0000000000100000000000000000000000000000000000000,
    S_39 = 49'b0000000001000000000000000000000000000000000000000,
    S_40 = 49'b0000000010000000000000000000000000000000000000000;
  reg [48:0] _present_state, _next_state;
  reg done_port;
  reg fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_STORE;
  reg fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_STORE;
  reg fuselector_BMEMORY_CTRL_59_i0_LOAD;
  reg fuselector_BMEMORY_CTRL_59_i0_STORE;
  reg selector_IN_UNBOUNDED_astarF_28877_29351;
  reg selector_IN_UNBOUNDED_astarF_28877_29352;
  reg selector_IN_UNBOUNDED_astarF_28877_29353;
  reg selector_IN_UNBOUNDED_astarF_28877_29365;
  reg selector_IN_UNBOUNDED_astarF_28877_29398;
  reg selector_IN_UNBOUNDED_astarF_28877_29408;
  reg selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0;
  reg selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1;
  reg selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0;
  reg selector_MUX_35_PROXY_CTRL_5_i0_0_0_0;
  reg selector_MUX_59_insert_79_i0_0_0_0;
  reg selector_MUX_60_insert_79_i0_1_0_0;
  reg fuselector_PROXY_CTRL_5_i0_LOAD;
  reg fuselector_PROXY_CTRL_5_i0_STORE;
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
    fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_STORE = 1'b0;
    fuselector_BMEMORY_CTRL_59_i0_LOAD = 1'b0;
    fuselector_BMEMORY_CTRL_59_i0_STORE = 1'b0;
    selector_IN_UNBOUNDED_astarF_28877_29351 = 1'b0;
    selector_IN_UNBOUNDED_astarF_28877_29352 = 1'b0;
    selector_IN_UNBOUNDED_astarF_28877_29353 = 1'b0;
    selector_IN_UNBOUNDED_astarF_28877_29365 = 1'b0;
    selector_IN_UNBOUNDED_astarF_28877_29398 = 1'b0;
    selector_IN_UNBOUNDED_astarF_28877_29408 = 1'b0;
    selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0 = 1'b0;
    selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1 = 1'b0;
    selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0 = 1'b0;
    selector_MUX_35_PROXY_CTRL_5_i0_0_0_0 = 1'b0;
    selector_MUX_59_insert_79_i0_0_0_0 = 1'b0;
    selector_MUX_60_insert_79_i0_1_0_0 = 1'b0;
    fuselector_PROXY_CTRL_5_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRL_5_i0_STORE = 1'b0;
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
    wrenable_reg_5 = 1'b0;
    wrenable_reg_6 = 1'b0;
    wrenable_reg_7 = 1'b0;
    wrenable_reg_8 = 1'b0;
    wrenable_reg_9 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          selector_IN_UNBOUNDED_astarF_28877_29351 = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          if (OUT_UNBOUNDED_astarF_28877_29351 == 1'b0)
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
          selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0 = 1'bX;
          selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1 = 1'bX;
          selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0 = 1'bX;
          selector_MUX_35_PROXY_CTRL_5_i0_0_0_0 = 1'bX;
          selector_MUX_59_insert_79_i0_0_0_0 = 1'bX;
          selector_MUX_60_insert_79_i0_1_0_0 = 1'bX;
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
          wrenable_reg_5 = 1'bX;
          wrenable_reg_6 = 1'bX;
          wrenable_reg_7 = 1'bX;
          wrenable_reg_8 = 1'bX;
          wrenable_reg_9 = 1'bX;
          _next_state = S_0;
        end
      S_1 :
        begin
          if (OUT_UNBOUNDED_astarF_28877_29351 == 1'b0)
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
          selector_IN_UNBOUNDED_astarF_28877_29352 = 1'b1;
          if (OUT_UNBOUNDED_astarF_28877_29352 == 1'b0)
            begin
              _next_state = S_3;
            end
          else
            begin
              _next_state = S_4;
            end
        end
      S_3 :
        begin
          if (OUT_UNBOUNDED_astarF_28877_29352 == 1'b0)
            begin
              _next_state = S_3;
            end
          else
            begin
              _next_state = S_4;
            end
        end
      S_4 :
        begin
          selector_IN_UNBOUNDED_astarF_28877_29353 = 1'b1;
          if (OUT_UNBOUNDED_astarF_28877_29353 == 1'b0)
            begin
              _next_state = S_5;
            end
          else
            begin
              _next_state = S_44;
            end
        end
      S_5 :
        begin
          if (OUT_UNBOUNDED_astarF_28877_29353 == 1'b0)
            begin
              _next_state = S_5;
            end
          else
            begin
              _next_state = S_44;
            end
        end
      S_44 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_LOAD = 1'b1;
          _next_state = S_45;
        end
      S_45 :
        begin
          wrenable_reg_5 = 1'b1;
          _next_state = S_46;
        end
      S_46 :
        begin
          if (OUT_CONDITION_astarF_28877_29514 == 1'b1)
            begin
              _next_state = S_6;
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
      S_6 :
        begin
          selector_IN_UNBOUNDED_astarF_28877_29365 = 1'b1;
          if (OUT_UNBOUNDED_astarF_28877_29365 == 1'b0)
            begin
              _next_state = S_7;
            end
          else
            begin
              _next_state = S_8;
            end
        end
      S_7 :
        begin
          if (OUT_UNBOUNDED_astarF_28877_29365 == 1'b0)
            begin
              _next_state = S_7;
            end
          else
            begin
              _next_state = S_8;
            end
        end
      S_8 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_LOAD = 1'b1;
          _next_state = S_9;
        end
      S_9 :
        begin
          wrenable_reg_24 = 1'b1;
          _next_state = S_10;
        end
      S_10 :
        begin
          if (OUT_CONDITION_astarF_28877_29367 == 1'b0)
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
      S_11 :
        begin
          selector_MUX_35_PROXY_CTRL_5_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRL_5_i0_STORE = 1'b1;
          _next_state = S_41;
        end
      S_41 :
        begin
          fuselector_PROXY_CTRL_5_i0_LOAD = 1'b1;
          _next_state = S_42;
        end
      S_42 :
        begin
          wrenable_reg_38 = 1'b1;
          wrenable_reg_6 = 1'b1;
          wrenable_reg_7 = 1'b1;
          wrenable_reg_8 = 1'b1;
          wrenable_reg_9 = 1'b1;
          _next_state = S_43;
        end
      S_43 :
        begin
          wrenable_reg_10 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29511 == 1'b1)
            begin
              _next_state = S_12;
            end
          else
            begin
              _next_state = S_44;
              wrenable_reg_10 = 1'b0;
            end
        end
      S_12 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_LOAD = 1'b1;
          wrenable_reg_11 = 1'b1;
          _next_state = S_13;
        end
      S_13 :
        begin
          wrenable_reg_12 = 1'b1;
          wrenable_reg_13 = 1'b1;
          wrenable_reg_14 = 1'b1;
          wrenable_reg_15 = 1'b1;
          _next_state = S_14;
        end
      S_14 :
        begin
          wrenable_reg_16 = 1'b1;
          _next_state = S_15;
        end
      S_15 :
        begin
          wrenable_reg_17 = 1'b1;
          _next_state = S_16;
        end
      S_16 :
        begin
          fuselector_BMEMORY_CTRL_59_i0_LOAD = 1'b1;
          selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1 = 1'b1;
          _next_state = S_17;
        end
      S_17 :
        begin
          wrenable_reg_18 = 1'b1;
          wrenable_reg_33 = 1'b1;
          _next_state = S_18;
        end
      S_18 :
        begin
          if (OUT_CONDITION_astarF_28877_29489 == 1'b1)
            begin
              _next_state = S_19;
            end
          else
            begin
              _next_state = S_37;
            end
        end
      S_19 :
        begin
          fuselector_BMEMORY_CTRL_59_i0_LOAD = 1'b1;
          wrenable_reg_19 = 1'b1;
          _next_state = S_20;
        end
      S_20 :
        begin
          fuselector_BMEMORY_CTRL_59_i0_LOAD = 1'b1;
          selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0 = 1'b1;
          wrenable_reg_20 = 1'b1;
          _next_state = S_21;
        end
      S_21 :
        begin
          wrenable_reg_21 = 1'b1;
          wrenable_reg_22 = 1'b1;
          _next_state = S_22;
        end
      S_22 :
        begin
          wrenable_reg_23 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29496 == 1'b1)
            begin
              _next_state = S_23;
            end
          else
            begin
              _next_state = S_37;
              wrenable_reg_23 = 1'b0;
            end
        end
      S_23 :
        begin
          fuselector_BMEMORY_CTRL_59_i0_STORE = 1'b1;
          _next_state = S_24;
        end
      S_24 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_LOAD = 1'b1;
          fuselector_PROXY_CTRL_5_i0_LOAD = 1'b1;
          _next_state = S_25;
        end
      S_25 :
        begin
          wrenable_reg_24 = 1'b1;
          wrenable_reg_25 = 1'b1;
          wrenable_reg_26 = 1'b1;
          wrenable_reg_27 = 1'b1;
          wrenable_reg_28 = 1'b1;
          wrenable_reg_29 = 1'b1;
          _next_state = S_26;
        end
      S_26 :
        begin
          wrenable_reg_30 = 1'b1;
          wrenable_reg_31 = 1'b1;
          _next_state = S_27;
        end
      S_27 :
        begin
          wrenable_reg_32 = 1'b1;
          _next_state = S_28;
        end
      S_28 :
        begin
          fuselector_BMEMORY_CTRL_59_i0_LOAD = 1'b1;
          selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0 = 1'b1;
          selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0 = 1'b1;
          _next_state = S_29;
        end
      S_29 :
        begin
          wrenable_reg_33 = 1'b1;
          wrenable_reg_34 = 1'b1;
          _next_state = S_30;
        end
      S_30 :
        begin
          selector_IN_UNBOUNDED_astarF_28877_29408 = 1'b1;
          wrenable_reg_35 = 1'b1;
          if (OUT_UNBOUNDED_astarF_28877_29408 == 1'b0)
            begin
              _next_state = S_31;
            end
          else
            begin
              _next_state = S_32;
            end
        end
      S_31 :
        begin
          wrenable_reg_35 = 1'b1;
          if (OUT_UNBOUNDED_astarF_28877_29408 == 1'b0)
            begin
              _next_state = S_31;
            end
          else
            begin
              _next_state = S_32;
            end
        end
      S_32 :
        begin
          wrenable_reg_36 = 1'b1;
          wrenable_reg_37 = 1'b1;
          _next_state = S_33;
        end
      S_33 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE = 1'b1;
          _next_state = S_34;
        end
      S_34 :
        begin
          selector_IN_UNBOUNDED_astarF_28877_29398 = 1'b1;
          selector_MUX_59_insert_79_i0_0_0_0 = 1'b1;
          selector_MUX_60_insert_79_i0_1_0_0 = 1'b1;
          if (OUT_UNBOUNDED_astarF_28877_29398 == 1'b0)
            begin
              _next_state = S_35;
            end
          else
            begin
              _next_state = S_36;
            end
        end
      S_35 :
        begin
          selector_MUX_59_insert_79_i0_0_0_0 = 1'b1;
          selector_MUX_60_insert_79_i0_1_0_0 = 1'b1;
          if (OUT_UNBOUNDED_astarF_28877_29398 == 1'b0)
            begin
              _next_state = S_35;
            end
          else
            begin
              _next_state = S_36;
            end
        end
      S_36 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_STORE = 1'b1;
          _next_state = S_37;
        end
      S_37 :
        begin
          fuselector_PROXY_CTRL_5_i0_LOAD = 1'b1;
          _next_state = S_38;
        end
      S_38 :
        begin
          wrenable_reg_38 = 1'b1;
          _next_state = S_39;
        end
      S_39 :
        begin
          wrenable_reg_39 = 1'b1;
          _next_state = S_40;
        end
      S_40 :
        begin
          fuselector_PROXY_CTRL_5_i0_STORE = 1'b1;
          _next_state = S_41;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0 = 1'bX;
          selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1 = 1'bX;
          selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0 = 1'bX;
          selector_MUX_35_PROXY_CTRL_5_i0_0_0_0 = 1'bX;
          selector_MUX_59_insert_79_i0_0_0_0 = 1'bX;
          selector_MUX_60_insert_79_i0_1_0_0 = 1'bX;
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
          wrenable_reg_5 = 1'bX;
          wrenable_reg_6 = 1'bX;
          wrenable_reg_7 = 1'bX;
          wrenable_reg_8 = 1'bX;
          wrenable_reg_9 = 1'bX;
        end
    endcase
  end
endmodule

// Top component for astarF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module astarF(clock, reset, start_port, done_port, a, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, proxy_out1_28861, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, proxy_out1_28868, Sout_Rdata_ram, Sout_DataRdy, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868);
  parameter MEM_var_28861_28879=32, MEM_var_28862_28877=128, MEM_var_28864_28877=160, MEM_var_28865_28877=192, MEM_var_28866_28877=224, MEM_var_28867_28877=256, MEM_var_28868_28879=64;
  // IN
  input clock;
  input reset;
  input start_port;
  input [31:0] a;
  input S_oe_ram;
  input S_we_ram;
  input [8:0] S_addr_ram;
  input [7:0] S_Wdata_ram;
  input [3:0] S_data_ram_size;
  input [7:0] M_Rdata_ram;
  input M_DataRdy;
  input [7:0] Sin_Rdata_ram;
  input Sin_DataRdy;
  input [7:0] proxy_out1_28861;
  input Min_oe_ram;
  input Min_we_ram;
  input [8:0] Min_addr_ram;
  input [7:0] Min_Wdata_ram;
  input [3:0] Min_data_ram_size;
  input [7:0] proxy_out1_28868;
  // OUT
  output done_port;
  output [7:0] Sout_Rdata_ram;
  output Sout_DataRdy;
  output [7:0] proxy_in1_28861;
  output [8:0] proxy_in2_28861;
  output [3:0] proxy_in3_28861;
  output proxy_sel_LOAD_28861;
  output proxy_sel_STORE_28861;
  output Mout_oe_ram;
  output Mout_we_ram;
  output [8:0] Mout_addr_ram;
  output [7:0] Mout_Wdata_ram;
  output [3:0] Mout_data_ram_size;
  output [7:0] proxy_in1_28868;
  output [8:0] proxy_in2_28868;
  output [3:0] proxy_in3_28868;
  output proxy_sel_LOAD_28868;
  output proxy_sel_STORE_28868;
  // Component and signal declarations
  wire OUT_CONDITION_astarF_28877_29367;
  wire OUT_CONDITION_astarF_28877_29489;
  wire OUT_CONDITION_astarF_28877_29496;
  wire OUT_CONDITION_astarF_28877_29511;
  wire OUT_CONDITION_astarF_28877_29514;
  wire OUT_UNBOUNDED_astarF_28877_29351;
  wire OUT_UNBOUNDED_astarF_28877_29352;
  wire OUT_UNBOUNDED_astarF_28877_29353;
  wire OUT_UNBOUNDED_astarF_28877_29365;
  wire OUT_UNBOUNDED_astarF_28877_29398;
  wire OUT_UNBOUNDED_astarF_28877_29408;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_STORE;
  wire fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_STORE;
  wire fuselector_BMEMORY_CTRL_59_i0_LOAD;
  wire fuselector_BMEMORY_CTRL_59_i0_STORE;
  wire fuselector_PROXY_CTRL_5_i0_LOAD;
  wire fuselector_PROXY_CTRL_5_i0_STORE;
  wire selector_IN_UNBOUNDED_astarF_28877_29351;
  wire selector_IN_UNBOUNDED_astarF_28877_29352;
  wire selector_IN_UNBOUNDED_astarF_28877_29353;
  wire selector_IN_UNBOUNDED_astarF_28877_29365;
  wire selector_IN_UNBOUNDED_astarF_28877_29398;
  wire selector_IN_UNBOUNDED_astarF_28877_29408;
  wire selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0;
  wire selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1;
  wire selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0;
  wire selector_MUX_35_PROXY_CTRL_5_i0_0_0_0;
  wire selector_MUX_59_insert_79_i0_0_0_0;
  wire selector_MUX_60_insert_79_i0_1_0_0;
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
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  controller_astarF Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_STORE), .fuselector_BMEMORY_CTRL_59_i0_LOAD(fuselector_BMEMORY_CTRL_59_i0_LOAD), .fuselector_BMEMORY_CTRL_59_i0_STORE(fuselector_BMEMORY_CTRL_59_i0_STORE), .selector_IN_UNBOUNDED_astarF_28877_29351(selector_IN_UNBOUNDED_astarF_28877_29351), .selector_IN_UNBOUNDED_astarF_28877_29352(selector_IN_UNBOUNDED_astarF_28877_29352), .selector_IN_UNBOUNDED_astarF_28877_29353(selector_IN_UNBOUNDED_astarF_28877_29353), .selector_IN_UNBOUNDED_astarF_28877_29365(selector_IN_UNBOUNDED_astarF_28877_29365), .selector_IN_UNBOUNDED_astarF_28877_29398(selector_IN_UNBOUNDED_astarF_28877_29398), .selector_IN_UNBOUNDED_astarF_28877_29408(selector_IN_UNBOUNDED_astarF_28877_29408), .selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0(selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0), .selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1(selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1), .selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0(selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0), .selector_MUX_35_PROXY_CTRL_5_i0_0_0_0(selector_MUX_35_PROXY_CTRL_5_i0_0_0_0), .selector_MUX_59_insert_79_i0_0_0_0(selector_MUX_59_insert_79_i0_0_0_0), .selector_MUX_60_insert_79_i0_1_0_0(selector_MUX_60_insert_79_i0_1_0_0), .fuselector_PROXY_CTRL_5_i0_LOAD(fuselector_PROXY_CTRL_5_i0_LOAD), .fuselector_PROXY_CTRL_5_i0_STORE(fuselector_PROXY_CTRL_5_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_29(wrenable_reg_29), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_30(wrenable_reg_30), .wrenable_reg_31(wrenable_reg_31), .wrenable_reg_32(wrenable_reg_32), .wrenable_reg_33(wrenable_reg_33), .wrenable_reg_34(wrenable_reg_34), .wrenable_reg_35(wrenable_reg_35), .wrenable_reg_36(wrenable_reg_36), .wrenable_reg_37(wrenable_reg_37), .wrenable_reg_38(wrenable_reg_38), .wrenable_reg_39(wrenable_reg_39), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_astarF_28877_29367(OUT_CONDITION_astarF_28877_29367), .OUT_CONDITION_astarF_28877_29489(OUT_CONDITION_astarF_28877_29489), .OUT_CONDITION_astarF_28877_29496(OUT_CONDITION_astarF_28877_29496), .OUT_CONDITION_astarF_28877_29511(OUT_CONDITION_astarF_28877_29511), .OUT_CONDITION_astarF_28877_29514(OUT_CONDITION_astarF_28877_29514), .OUT_UNBOUNDED_astarF_28877_29351(OUT_UNBOUNDED_astarF_28877_29351), .OUT_UNBOUNDED_astarF_28877_29352(OUT_UNBOUNDED_astarF_28877_29352), .OUT_UNBOUNDED_astarF_28877_29353(OUT_UNBOUNDED_astarF_28877_29353), .OUT_UNBOUNDED_astarF_28877_29365(OUT_UNBOUNDED_astarF_28877_29365), .OUT_UNBOUNDED_astarF_28877_29398(OUT_UNBOUNDED_astarF_28877_29398), .OUT_UNBOUNDED_astarF_28877_29408(OUT_UNBOUNDED_astarF_28877_29408), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_astarF #(.MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28862_28877(MEM_var_28862_28877), .MEM_var_28864_28877(MEM_var_28864_28877), .MEM_var_28865_28877(MEM_var_28865_28877), .MEM_var_28866_28877(MEM_var_28866_28877), .MEM_var_28867_28877(MEM_var_28867_28877), .MEM_var_28868_28879(MEM_var_28868_28879)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .proxy_in1_28861(proxy_in1_28861), .proxy_in2_28861(proxy_in2_28861), .proxy_in3_28861(proxy_in3_28861), .proxy_sel_LOAD_28861(proxy_sel_LOAD_28861), .proxy_sel_STORE_28861(proxy_sel_STORE_28861), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .proxy_in1_28868(proxy_in1_28868), .proxy_in2_28868(proxy_in2_28868), .proxy_in3_28868(proxy_in3_28868), .proxy_sel_LOAD_28868(proxy_sel_LOAD_28868), .proxy_sel_STORE_28868(proxy_sel_STORE_28868), .OUT_CONDITION_astarF_28877_29367(OUT_CONDITION_astarF_28877_29367), .OUT_CONDITION_astarF_28877_29489(OUT_CONDITION_astarF_28877_29489), .OUT_CONDITION_astarF_28877_29496(OUT_CONDITION_astarF_28877_29496), .OUT_CONDITION_astarF_28877_29511(OUT_CONDITION_astarF_28877_29511), .OUT_CONDITION_astarF_28877_29514(OUT_CONDITION_astarF_28877_29514), .OUT_UNBOUNDED_astarF_28877_29351(OUT_UNBOUNDED_astarF_28877_29351), .OUT_UNBOUNDED_astarF_28877_29352(OUT_UNBOUNDED_astarF_28877_29352), .OUT_UNBOUNDED_astarF_28877_29353(OUT_UNBOUNDED_astarF_28877_29353), .OUT_UNBOUNDED_astarF_28877_29365(OUT_UNBOUNDED_astarF_28877_29365), .OUT_UNBOUNDED_astarF_28877_29398(OUT_UNBOUNDED_astarF_28877_29398), .OUT_UNBOUNDED_astarF_28877_29408(OUT_UNBOUNDED_astarF_28877_29408), .clock(clock), .reset(reset), .in_port_a(a), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28861(proxy_out1_28861), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .proxy_out1_28868(proxy_out1_28868), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_STORE), .fuselector_BMEMORY_CTRL_59_i0_LOAD(fuselector_BMEMORY_CTRL_59_i0_LOAD), .fuselector_BMEMORY_CTRL_59_i0_STORE(fuselector_BMEMORY_CTRL_59_i0_STORE), .selector_IN_UNBOUNDED_astarF_28877_29351(selector_IN_UNBOUNDED_astarF_28877_29351), .selector_IN_UNBOUNDED_astarF_28877_29352(selector_IN_UNBOUNDED_astarF_28877_29352), .selector_IN_UNBOUNDED_astarF_28877_29353(selector_IN_UNBOUNDED_astarF_28877_29353), .selector_IN_UNBOUNDED_astarF_28877_29365(selector_IN_UNBOUNDED_astarF_28877_29365), .selector_IN_UNBOUNDED_astarF_28877_29398(selector_IN_UNBOUNDED_astarF_28877_29398), .selector_IN_UNBOUNDED_astarF_28877_29408(selector_IN_UNBOUNDED_astarF_28877_29408), .selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0(selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0), .selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1(selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1), .selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0(selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0), .selector_MUX_35_PROXY_CTRL_5_i0_0_0_0(selector_MUX_35_PROXY_CTRL_5_i0_0_0_0), .selector_MUX_59_insert_79_i0_0_0_0(selector_MUX_59_insert_79_i0_0_0_0), .selector_MUX_60_insert_79_i0_1_0_0(selector_MUX_60_insert_79_i0_1_0_0), .fuselector_PROXY_CTRL_5_i0_LOAD(fuselector_PROXY_CTRL_5_i0_LOAD), .fuselector_PROXY_CTRL_5_i0_STORE(fuselector_PROXY_CTRL_5_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_29(wrenable_reg_29), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_30(wrenable_reg_30), .wrenable_reg_31(wrenable_reg_31), .wrenable_reg_32(wrenable_reg_32), .wrenable_reg_33(wrenable_reg_33), .wrenable_reg_34(wrenable_reg_34), .wrenable_reg_35(wrenable_reg_35), .wrenable_reg_36(wrenable_reg_36), .wrenable_reg_37(wrenable_reg_37), .wrenable_reg_38(wrenable_reg_38), .wrenable_reg_39(wrenable_reg_39), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
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

// Datapath RTL description for make_oriented
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_make_oriented(clock, reset, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, proxy_out1_28861, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_out1_28868, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE, selector_MUX_10_PROXY_CTRL_1_i0_0_0_0, selector_MUX_11_PROXY_CTRL_1_i0_1_0_0, selector_MUX_14_PROXY_CTRL_2_i0_0_0_0, selector_MUX_15_PROXY_CTRL_2_i0_1_0_0, selector_MUX_15_PROXY_CTRL_2_i0_1_0_1, selector_MUX_15_PROXY_CTRL_2_i0_1_1_0, selector_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0, selector_MUX_48_reg_15_0_0_0, selector_MUX_49_reg_16_0_0_0, selector_MUX_60_reg_5_0_0_0, selector_MUX_61_reg_6_0_0_0, fuselector_PROXY_CTRL_1_i0_LOAD, fuselector_PROXY_CTRL_1_i0_STORE, fuselector_PROXY_CTRL_2_i0_LOAD, fuselector_PROXY_CTRL_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_make_oriented_28870_29077, OUT_CONDITION_make_oriented_28870_29094, OUT_CONDITION_make_oriented_28870_29101, OUT_CONDITION_make_oriented_28870_29103);
  parameter MEM_var_28859_28870=96, MEM_var_28861_28879=32, MEM_var_28868_28879=64;
  // IN
  input clock;
  input reset;
  input S_oe_ram;
  input S_we_ram;
  input [8:0] S_addr_ram;
  input [7:0] S_Wdata_ram;
  input [3:0] S_data_ram_size;
  input [7:0] Sin_Rdata_ram;
  input Sin_DataRdy;
  input [7:0] proxy_out1_28861;
  input [7:0] proxy_out1_28868;
  input fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD;
  input fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE;
  input selector_MUX_10_PROXY_CTRL_1_i0_0_0_0;
  input selector_MUX_11_PROXY_CTRL_1_i0_1_0_0;
  input selector_MUX_14_PROXY_CTRL_2_i0_0_0_0;
  input selector_MUX_15_PROXY_CTRL_2_i0_1_0_0;
  input selector_MUX_15_PROXY_CTRL_2_i0_1_0_1;
  input selector_MUX_15_PROXY_CTRL_2_i0_1_1_0;
  input selector_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0;
  input selector_MUX_48_reg_15_0_0_0;
  input selector_MUX_49_reg_16_0_0_0;
  input selector_MUX_60_reg_5_0_0_0;
  input selector_MUX_61_reg_6_0_0_0;
  input fuselector_PROXY_CTRL_1_i0_LOAD;
  input fuselector_PROXY_CTRL_1_i0_STORE;
  input fuselector_PROXY_CTRL_2_i0_LOAD;
  input fuselector_PROXY_CTRL_2_i0_STORE;
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
  input wrenable_reg_3;
  input wrenable_reg_4;
  input wrenable_reg_5;
  input wrenable_reg_6;
  input wrenable_reg_7;
  input wrenable_reg_8;
  input wrenable_reg_9;
  // OUT
  output [7:0] Sout_Rdata_ram;
  output Sout_DataRdy;
  output [7:0] proxy_in1_28861;
  output [8:0] proxy_in2_28861;
  output [3:0] proxy_in3_28861;
  output proxy_sel_LOAD_28861;
  output proxy_sel_STORE_28861;
  output [7:0] proxy_in1_28868;
  output [8:0] proxy_in2_28868;
  output [3:0] proxy_in3_28868;
  output proxy_sel_LOAD_28868;
  output proxy_sel_STORE_28868;
  output OUT_CONDITION_make_oriented_28870_29077;
  output OUT_CONDITION_make_oriented_28870_29094;
  output OUT_CONDITION_make_oriented_28870_29101;
  output OUT_CONDITION_make_oriented_28870_29103;
  // Component and signal declarations
  wire [7:0] out_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_array_28859_0;
  wire [7:0] out_IUdata_converter_FU_20_i0_fu_make_oriented_28870_29054;
  wire [2:0] out_IUdata_converter_FU_32_i0_fu_make_oriented_28870_29877;
  wire [7:0] out_MUX_10_PROXY_CTRL_1_i0_0_0_0;
  wire [8:0] out_MUX_11_PROXY_CTRL_1_i0_1_0_0;
  wire [7:0] out_MUX_14_PROXY_CTRL_2_i0_0_0_0;
  wire [8:0] out_MUX_15_PROXY_CTRL_2_i0_1_0_0;
  wire [8:0] out_MUX_15_PROXY_CTRL_2_i0_1_0_1;
  wire [8:0] out_MUX_15_PROXY_CTRL_2_i0_1_1_0;
  wire [8:0] out_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0;
  wire [31:0] out_MUX_48_reg_15_0_0_0;
  wire [2:0] out_MUX_49_reg_16_0_0_0;
  wire [2:0] out_MUX_60_reg_5_0_0_0;
  wire [7:0] out_MUX_61_reg_6_0_0_0;
  wire [7:0] out_PROXY_CTRL_2_i0_PROXY_CTRL_2_i0;
  wire signed [7:0] out_UIdata_converter_FU_21_i0_fu_make_oriented_28870_29043;
  wire signed [3:0] out_UIdata_converter_FU_31_i0_fu_make_oriented_28870_28961;
  wire [2:0] out_UUdata_converter_FU_18_i0_fu_make_oriented_28870_29073;
  wire [6:0] out_UUdata_converter_FU_19_i0_fu_make_oriented_28870_29092;
  wire [7:0] out_UUdata_converter_FU_33_i0_fu_make_oriented_28870_29837;
  wire [2:0] out_UUdata_converter_FU_34_i0_fu_make_oriented_28870_28964;
  wire [9:0] out_UUdata_converter_FU_35_i0_fu_make_oriented_28870_28966;
  wire [4:0] out_UUdata_converter_FU_36_i0_fu_make_oriented_28870_29932;
  wire [8:0] out_UUdata_converter_FU_8_i0_fu_make_oriented_28870_29874;
  wire [7:0] out_UUdata_converter_FU_9_i0_fu_make_oriented_28870_29850;
  wire [5:0] out_addr_expr_FU_5_i0_fu_make_oriented_28870_29829;
  wire [6:0] out_addr_expr_FU_6_i0_fu_make_oriented_28870_29833;
  wire [8:0] out_addr_expr_FU_7_i0_fu_make_oriented_28870_29908;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [5:0] out_const_10;
  wire [8:0] out_const_11;
  wire [6:0] out_const_12;
  wire [7:0] out_const_2;
  wire [4:0] out_const_3;
  wire out_const_4;
  wire [1:0] out_const_5;
  wire [2:0] out_const_6;
  wire [4:0] out_const_7;
  wire [1:0] out_const_8;
  wire [7:0] out_const_9;
  wire [8:0] out_conv_out_addr_expr_FU_5_i0_fu_make_oriented_28870_29829_6_9;
  wire [8:0] out_conv_out_addr_expr_FU_6_i0_fu_make_oriented_28870_29833_7_9;
  wire [31:0] out_conv_out_const_10_6_32;
  wire [31:0] out_conv_out_const_11_9_32;
  wire [31:0] out_conv_out_const_12_7_32;
  wire [3:0] out_conv_out_const_3_5_4;
  wire [8:0] out_conv_out_reg_0_reg_0_6_9;
  wire [8:0] out_conv_out_reg_10_reg_10_7_9;
  wire [8:0] out_conv_out_reg_14_reg_14_7_9;
  wire [8:0] out_conv_out_reg_18_reg_18_7_9;
  wire [8:0] out_conv_out_reg_19_reg_19_7_9;
  wire [8:0] out_conv_out_reg_1_reg_1_7_9;
  wire [7:0] out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_3_8;
  wire [2:0] out_conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_3_1_3;
  wire [31:0] out_conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_4_10_32;
  wire [2:0] out_conv_out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_5_1_3;
  wire out_ge_expr_FU_8_0_8_39_i0_fu_make_oriented_28870_29970;
  wire [7:0] out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_0;
  wire [7:0] out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_1;
  wire out_lt_expr_FU_8_0_8_40_i0_fu_make_oriented_28870_29075;
  wire out_read_cond_FU_22_i0_fu_make_oriented_28870_29077;
  wire out_read_cond_FU_24_i0_fu_make_oriented_28870_29094;
  wire out_read_cond_FU_27_i0_fu_make_oriented_28870_29101;
  wire out_read_cond_FU_37_i0_fu_make_oriented_28870_29103;
  wire [5:0] out_reg_0_reg_0;
  wire [6:0] out_reg_10_reg_10;
  wire [2:0] out_reg_11_reg_11;
  wire [4:0] out_reg_12_reg_12;
  wire out_reg_13_reg_13;
  wire [6:0] out_reg_14_reg_14;
  wire [31:0] out_reg_15_reg_15;
  wire [2:0] out_reg_16_reg_16;
  wire out_reg_17_reg_17;
  wire [6:0] out_reg_18_reg_18;
  wire [6:0] out_reg_19_reg_19;
  wire [6:0] out_reg_1_reg_1;
  wire out_reg_20_reg_20;
  wire [7:0] out_reg_21_reg_21;
  wire [7:0] out_reg_22_reg_22;
  wire [7:0] out_reg_23_reg_23;
  wire [7:0] out_reg_2_reg_2;
  wire [8:0] out_reg_3_reg_3;
  wire [8:0] out_reg_4_reg_4;
  wire [2:0] out_reg_5_reg_5;
  wire [7:0] out_reg_6_reg_6;
  wire [2:0] out_reg_7_reg_7;
  wire [9:0] out_reg_8_reg_8;
  wire [7:0] out_reg_9_reg_9;
  wire [2:0] out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2;
  wire [0:0] out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_3;
  wire [9:0] out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_4;
  wire [0:0] out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_5;
  wire [0:0] out_ui_bit_and_expr_FU_1_1_1_41_i0_fu_make_oriented_28870_29076;
  wire [1:0] out_ui_bit_and_expr_FU_8_0_8_42_i0_fu_make_oriented_28870_30274;
  wire [1:0] out_ui_bit_and_expr_FU_8_0_8_43_i0_fu_make_oriented_28870_30296;
  wire [4:0] out_ui_bit_ior_concat_expr_FU_44_i0_fu_make_oriented_28870_29871;
  wire [5:0] out_ui_bit_ior_concat_expr_FU_45_i0_fu_make_oriented_28870_29915;
  wire [4:0] out_ui_lshift_expr_FU_8_0_8_46_i0_fu_make_oriented_28870_29868;
  wire [4:0] out_ui_lshift_expr_FU_8_0_8_46_i1_fu_make_oriented_28870_30291;
  wire [4:0] out_ui_lshift_expr_FU_8_0_8_47_i0_fu_make_oriented_28870_29912;
  wire [5:0] out_ui_lshift_expr_FU_8_0_8_47_i1_fu_make_oriented_28870_30271;
  wire out_ui_ne_expr_FU_8_0_8_48_i0_fu_make_oriented_28870_30160;
  wire out_ui_ne_expr_FU_8_0_8_49_i0_fu_make_oriented_28870_30162;
  wire out_ui_ne_expr_FU_8_8_8_50_i0_fu_make_oriented_28870_29074;
  wire [7:0] out_ui_negate_expr_FU_8_8_51_i0_fu_make_oriented_28870_29047;
  wire [31:0] out_ui_plus_expr_FU_32_0_32_52_i0_fu_make_oriented_28870_29014;
  wire [2:0] out_ui_plus_expr_FU_8_0_8_53_i0_fu_make_oriented_28870_28981;
  wire [2:0] out_ui_plus_expr_FU_8_0_8_54_i0_fu_make_oriented_28870_29029;
  wire [5:0] out_ui_plus_expr_FU_8_8_8_55_i0_fu_make_oriented_28870_29935;
  wire [3:0] out_ui_plus_expr_FU_8_8_8_55_i1_fu_make_oriented_28870_30267;
  wire [2:0] out_ui_plus_expr_FU_8_8_8_55_i2_fu_make_oriented_28870_30288;
  wire [9:0] out_ui_pointer_plus_expr_FU_16_16_16_56_i0_fu_make_oriented_28870_28965;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_0_8_57_i0_fu_make_oriented_28870_29900;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_8_8_58_i0_fu_make_oriented_28870_29846;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_8_8_58_i1_fu_make_oriented_28870_29859;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_58_i2_fu_make_oriented_28870_29883;
  wire [6:0] out_ui_pointer_plus_expr_FU_8_8_8_58_i3_fu_make_oriented_28870_29941;
  wire [2:0] out_ui_rshift_expr_FU_8_0_8_59_i0_fu_make_oriented_28870_30262;
  wire [0:0] out_ui_rshift_expr_FU_8_0_8_59_i1_fu_make_oriented_28870_30265;
  wire [2:0] out_ui_rshift_expr_FU_8_0_8_60_i0_fu_make_oriented_28870_30281;
  wire [0:0] out_ui_rshift_expr_FU_8_0_8_60_i1_fu_make_oriented_28870_30285;
  wire [7:0] out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_6;
  wire [7:0] out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_7;
  wire [7:0] out_vb_assign_conn_obj_8_ASSIGN_VECTOR_BOOL_FU_vb_assign_8;
  wire sig_in_bus_mergerSout_DataRdy0_0;
  wire [7:0] sig_in_bus_mergerSout_Rdata_ram1_0;
  wire [7:0] sig_in_bus_mergerproxy_in1_288612_0;
  wire [7:0] sig_in_bus_mergerproxy_in1_288683_0;
  wire [8:0] sig_in_bus_mergerproxy_in2_288614_0;
  wire [8:0] sig_in_bus_mergerproxy_in2_288685_0;
  wire [3:0] sig_in_bus_mergerproxy_in3_288616_0;
  wire [3:0] sig_in_bus_mergerproxy_in3_288687_0;
  wire sig_in_bus_mergerproxy_sel_LOAD_288618_0;
  wire sig_in_bus_mergerproxy_sel_LOAD_288689_0;
  wire sig_in_bus_mergerproxy_sel_STORE_2886110_0;
  wire sig_in_bus_mergerproxy_sel_STORE_2886811_0;
  wire sig_out_bus_mergerSout_DataRdy0_;
  wire [7:0] sig_out_bus_mergerSout_Rdata_ram1_;
  wire [7:0] sig_out_bus_mergerproxy_in1_288612_;
  wire [7:0] sig_out_bus_mergerproxy_in1_288683_;
  wire [8:0] sig_out_bus_mergerproxy_in2_288614_;
  wire [8:0] sig_out_bus_mergerproxy_in2_288685_;
  wire [3:0] sig_out_bus_mergerproxy_in3_288616_;
  wire [3:0] sig_out_bus_mergerproxy_in3_288687_;
  wire sig_out_bus_mergerproxy_sel_LOAD_288618_;
  wire sig_out_bus_mergerproxy_sel_LOAD_288689_;
  wire sig_out_bus_mergerproxy_sel_STORE_2886110_;
  wire sig_out_bus_mergerproxy_sel_STORE_2886811_;
  
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(3), .BITSIZE_out1(3)) ASSIGN_UNSIGNED_FU_u_assign_2 (.out1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2), .in1(out_const_6));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_3 (.out1(out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_3), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(10), .BITSIZE_out1(10)) ASSIGN_UNSIGNED_FU_u_assign_4 (.out1(out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_4), .in1(out_reg_8_reg_8));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_5 (.out1(out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_5), .in1(out_const_0));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_6 (.out1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_6), .in1(out_const_1));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_7 (.out1(out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_7), .in1(out_reg_6_reg_6));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_8 (.out1(out_vb_assign_conn_obj_8_ASSIGN_VECTOR_BOOL_FU_vb_assign_8), .in1(out_const_2));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_0 (.out1(out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_0), .in1(out_const_9));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_1), .in1(out_reg_23_reg_23));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_10_PROXY_CTRL_1_i0_0_0_0 (.out1(out_MUX_10_PROXY_CTRL_1_i0_0_0_0), .sel(selector_MUX_10_PROXY_CTRL_1_i0_0_0_0), .in1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_6), .in2(out_vb_assign_conn_obj_8_ASSIGN_VECTOR_BOOL_FU_vb_assign_8));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_11_PROXY_CTRL_1_i0_1_0_0 (.out1(out_MUX_11_PROXY_CTRL_1_i0_1_0_0), .sel(selector_MUX_11_PROXY_CTRL_1_i0_1_0_0), .in1(out_conv_out_reg_0_reg_0_6_9), .in2(out_conv_out_addr_expr_FU_5_i0_fu_make_oriented_28870_29829_6_9));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_14_PROXY_CTRL_2_i0_0_0_0 (.out1(out_MUX_14_PROXY_CTRL_2_i0_0_0_0), .sel(selector_MUX_14_PROXY_CTRL_2_i0_0_0_0), .in1(out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_0), .in2(out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_1));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_15_PROXY_CTRL_2_i0_1_0_0 (.out1(out_MUX_15_PROXY_CTRL_2_i0_1_0_0), .sel(selector_MUX_15_PROXY_CTRL_2_i0_1_0_0), .in1(out_conv_out_reg_19_reg_19_7_9), .in2(out_conv_out_reg_18_reg_18_7_9));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_15_PROXY_CTRL_2_i0_1_0_1 (.out1(out_MUX_15_PROXY_CTRL_2_i0_1_0_1), .sel(selector_MUX_15_PROXY_CTRL_2_i0_1_0_1), .in1(out_conv_out_reg_14_reg_14_7_9), .in2(out_conv_out_reg_10_reg_10_7_9));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_15_PROXY_CTRL_2_i0_1_1_0 (.out1(out_MUX_15_PROXY_CTRL_2_i0_1_1_0), .sel(selector_MUX_15_PROXY_CTRL_2_i0_1_1_0), .in1(out_MUX_15_PROXY_CTRL_2_i0_1_0_0), .in2(out_MUX_15_PROXY_CTRL_2_i0_1_0_1));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0 (.out1(out_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0), .sel(selector_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0), .in1(out_conv_out_reg_1_reg_1_7_9), .in2(out_conv_out_addr_expr_FU_6_i0_fu_make_oriented_28870_29833_7_9));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_48_reg_15_0_0_0 (.out1(out_MUX_48_reg_15_0_0_0), .sel(selector_MUX_48_reg_15_0_0_0), .in1(out_conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_4_10_32), .in2(out_ui_plus_expr_FU_32_0_32_52_i0_fu_make_oriented_28870_29014));
  MUX_GATE #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(3)) MUX_49_reg_16_0_0_0 (.out1(out_MUX_49_reg_16_0_0_0), .sel(selector_MUX_49_reg_16_0_0_0), .in1(out_conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_3_1_3), .in2(out_ui_plus_expr_FU_8_0_8_54_i0_fu_make_oriented_28870_29029));
  MUX_GATE #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(3)) MUX_60_reg_5_0_0_0 (.out1(out_MUX_60_reg_5_0_0_0), .sel(selector_MUX_60_reg_5_0_0_0), .in1(out_reg_7_reg_7), .in2(out_conv_out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_5_1_3));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_61_reg_6_0_0_0 (.out1(out_MUX_61_reg_6_0_0_0), .sel(selector_MUX_61_reg_6_0_0_0), .in1(out_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_array_28859_0), .in2(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_3_8));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(9), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_1_i0 (.proxy_in1(sig_in_bus_mergerproxy_in1_288612_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288614_0), .proxy_in3(sig_in_bus_mergerproxy_in3_288616_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_288618_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_2886110_0), .in1(out_MUX_10_PROXY_CTRL_1_i0_0_0_0), .in2(out_MUX_11_PROXY_CTRL_1_i0_1_0_0), .in3(out_conv_out_const_3_5_4), .in4(out_const_4), .sel_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .proxy_out1(proxy_out1_28861));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(9), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_2_i0 (.out1(out_PROXY_CTRL_2_i0_PROXY_CTRL_2_i0), .proxy_in1(sig_in_bus_mergerproxy_in1_288683_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288685_0), .proxy_in3(sig_in_bus_mergerproxy_in3_288687_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_288689_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_2886811_0), .in1(out_MUX_14_PROXY_CTRL_2_i0_0_0_0), .in2(out_MUX_15_PROXY_CTRL_2_i0_1_1_0), .in3(out_conv_out_const_3_5_4), .in4(out_const_4), .sel_LOAD(fuselector_PROXY_CTRL_2_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_2_i0_STORE), .proxy_out1(proxy_out1_28868));
  ARRAY_1D_STD_BRAM_SDS_BUS #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_S_addr_ram(9), .BITSIZE_S_Wdata_ram(8), .BITSIZE_Sin_Rdata_ram(8), .BITSIZE_Sout_Rdata_ram(8), .BITSIZE_S_data_ram_size(4), .MEMORY_INIT_file("array_ref_28859.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28859_28870), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(9), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) array_28859_0 (.out1(out_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_array_28859_0), .Sout_Rdata_ram(sig_in_bus_mergerSout_Rdata_ram1_0), .Sout_DataRdy(sig_in_bus_mergerSout_DataRdy0_0), .clock(clock), .reset(reset), .in1(out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_7), .in2(out_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0), .in3(out_conv_out_const_3_5_4), .in4(out_const_4), .sel_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD), .sel_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(8'b00000000), .proxy_in2(9'b000000000), .proxy_in3(4'b0000), .proxy_sel_LOAD(1'b0), .proxy_sel_STORE(1'b0));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerSout_DataRdy0_ (.out1(sig_out_bus_mergerSout_DataRdy0_), .in1({sig_in_bus_mergerSout_DataRdy0_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerSout_Rdata_ram1_ (.out1(sig_out_bus_mergerSout_Rdata_ram1_), .in1({sig_in_bus_mergerSout_Rdata_ram1_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in1_288612_ (.out1(sig_out_bus_mergerproxy_in1_288612_), .in1({sig_in_bus_mergerproxy_in1_288612_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in1_288683_ (.out1(sig_out_bus_mergerproxy_in1_288683_), .in1({sig_in_bus_mergerproxy_in1_288683_0}));
  bus_merger #(.BITSIZE_in1(9), .PORTSIZE_in1(1), .BITSIZE_out1(9)) bus_mergerproxy_in2_288614_ (.out1(sig_out_bus_mergerproxy_in2_288614_), .in1({sig_in_bus_mergerproxy_in2_288614_0}));
  bus_merger #(.BITSIZE_in1(9), .PORTSIZE_in1(1), .BITSIZE_out1(9)) bus_mergerproxy_in2_288685_ (.out1(sig_out_bus_mergerproxy_in2_288685_), .in1({sig_in_bus_mergerproxy_in2_288685_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(1), .BITSIZE_out1(4)) bus_mergerproxy_in3_288616_ (.out1(sig_out_bus_mergerproxy_in3_288616_), .in1({sig_in_bus_mergerproxy_in3_288616_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(1), .BITSIZE_out1(4)) bus_mergerproxy_in3_288687_ (.out1(sig_out_bus_mergerproxy_in3_288687_), .in1({sig_in_bus_mergerproxy_in3_288687_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD_288618_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288618_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288618_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD_288689_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288689_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288689_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE_2886110_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886110_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886110_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE_2886811_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886811_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886811_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(6), .value(MEM_var_28861_28879)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(9), .value(MEM_var_28868_28879)) const_11 (.out1(out_const_11));
  constant_value #(.BITSIZE_out1(7), .value(MEM_var_28859_28870)) const_12 (.out1(out_const_12));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000101)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(2), .value(2'b10)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(3), .value(3'b101)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(5), .value(5'b10100)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(9)) conv_out_addr_expr_FU_5_i0_fu_make_oriented_28870_29829_6_9 (.out1(out_conv_out_addr_expr_FU_5_i0_fu_make_oriented_28870_29829_6_9), .in1(out_addr_expr_FU_5_i0_fu_make_oriented_28870_29829));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_addr_expr_FU_6_i0_fu_make_oriented_28870_29833_7_9 (.out1(out_conv_out_addr_expr_FU_6_i0_fu_make_oriented_28870_29833_7_9), .in1(out_addr_expr_FU_6_i0_fu_make_oriented_28870_29833));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(32)) conv_out_const_10_6_32 (.out1(out_conv_out_const_10_6_32), .in1(out_const_10));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(32)) conv_out_const_11_9_32 (.out1(out_conv_out_const_11_9_32), .in1(out_const_11));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(32)) conv_out_const_12_7_32 (.out1(out_conv_out_const_12_7_32), .in1(out_const_12));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_3_5_4 (.out1(out_conv_out_const_3_5_4), .in1(out_const_3));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(9)) conv_out_reg_0_reg_0_6_9 (.out1(out_conv_out_reg_0_reg_0_6_9), .in1(out_reg_0_reg_0));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_10_reg_10_7_9 (.out1(out_conv_out_reg_10_reg_10_7_9), .in1(out_reg_10_reg_10));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_14_reg_14_7_9 (.out1(out_conv_out_reg_14_reg_14_7_9), .in1(out_reg_14_reg_14));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_18_reg_18_7_9 (.out1(out_conv_out_reg_18_reg_18_7_9), .in1(out_reg_18_reg_18));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_19_reg_19_7_9 (.out1(out_conv_out_reg_19_reg_19_7_9), .in1(out_reg_19_reg_19));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(9)) conv_out_reg_1_reg_1_7_9 (.out1(out_conv_out_reg_1_reg_1_7_9), .in1(out_reg_1_reg_1));
  UUdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_3_8 (.out1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_3_8), .in1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(3)) conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_3_1_3 (.out1(out_conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_3_1_3), .in1(out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_3));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(32)) conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_4_10_32 (.out1(out_conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_4_10_32), .in1(out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_4));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(3)) conv_out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_5_1_3 (.out1(out_conv_out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_5_1_3), .in1(out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_5));
  UIdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(4)) fu_make_oriented_28870_28961 (.out1(out_UIdata_converter_FU_31_i0_fu_make_oriented_28870_28961), .in1(out_reg_5_reg_5));
  UUdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(3)) fu_make_oriented_28870_28964 (.out1(out_UUdata_converter_FU_34_i0_fu_make_oriented_28870_28964), .in1(out_reg_5_reg_5));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(3), .BITSIZE_out1(10), .LSB_PARAMETER(0)) fu_make_oriented_28870_28965 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_56_i0_fu_make_oriented_28870_28965), .in1(out_reg_4_reg_4), .in2(out_UUdata_converter_FU_34_i0_fu_make_oriented_28870_28964));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(10)) fu_make_oriented_28870_28966 (.out1(out_UUdata_converter_FU_35_i0_fu_make_oriented_28870_28966), .in1(out_ui_pointer_plus_expr_FU_16_16_16_56_i0_fu_make_oriented_28870_28965));
  ui_plus_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(3)) fu_make_oriented_28870_28981 (.out1(out_ui_plus_expr_FU_8_0_8_53_i0_fu_make_oriented_28870_28981), .in1(out_reg_5_reg_5), .in2(out_const_4));
  ui_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(3), .BITSIZE_out1(32)) fu_make_oriented_28870_29014 (.out1(out_ui_plus_expr_FU_32_0_32_52_i0_fu_make_oriented_28870_29014), .in1(out_reg_15_reg_15), .in2(out_const_6));
  ui_plus_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(3)) fu_make_oriented_28870_29029 (.out1(out_ui_plus_expr_FU_8_0_8_54_i0_fu_make_oriented_28870_29029), .in1(out_reg_16_reg_16), .in2(out_const_4));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_oriented_28870_29043 (.out1(out_UIdata_converter_FU_21_i0_fu_make_oriented_28870_29043), .in1(out_ui_negate_expr_FU_8_8_51_i0_fu_make_oriented_28870_29047));
  ui_negate_expr_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_oriented_28870_29047 (.out1(out_ui_negate_expr_FU_8_8_51_i0_fu_make_oriented_28870_29047), .in1(out_reg_21_reg_21));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_oriented_28870_29054 (.out1(out_IUdata_converter_FU_20_i0_fu_make_oriented_28870_29054), .in1(out_PROXY_CTRL_2_i0_PROXY_CTRL_2_i0));
  UUdata_converter_FU #(.BITSIZE_in1(3), .BITSIZE_out1(3)) fu_make_oriented_28870_29073 (.out1(out_UUdata_converter_FU_18_i0_fu_make_oriented_28870_29073), .in1(out_reg_16_reg_16));
  ui_ne_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(1)) fu_make_oriented_28870_29074 (.out1(out_ui_ne_expr_FU_8_8_8_50_i0_fu_make_oriented_28870_29074), .in1(out_reg_5_reg_5), .in2(out_UUdata_converter_FU_18_i0_fu_make_oriented_28870_29073));
  lt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_make_oriented_28870_29075 (.out1(out_lt_expr_FU_8_0_8_40_i0_fu_make_oriented_28870_29075), .in1(out_reg_22_reg_22), .in2(out_const_8));
  ui_bit_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_oriented_28870_29076 (.out1(out_ui_bit_and_expr_FU_1_1_1_41_i0_fu_make_oriented_28870_29076), .in1(out_lt_expr_FU_8_0_8_40_i0_fu_make_oriented_28870_29075), .in2(out_reg_17_reg_17));
  read_cond_FU #(.BITSIZE_in1(1)) fu_make_oriented_28870_29077 (.out1(out_read_cond_FU_22_i0_fu_make_oriented_28870_29077), .in1(out_ui_bit_and_expr_FU_1_1_1_41_i0_fu_make_oriented_28870_29076));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_make_oriented_28870_29092 (.out1(out_UUdata_converter_FU_19_i0_fu_make_oriented_28870_29092), .in1(out_reg_15_reg_15));
  read_cond_FU #(.BITSIZE_in1(1)) fu_make_oriented_28870_29094 (.out1(out_read_cond_FU_24_i0_fu_make_oriented_28870_29094), .in1(out_ge_expr_FU_8_0_8_39_i0_fu_make_oriented_28870_29970));
  read_cond_FU #(.BITSIZE_in1(1)) fu_make_oriented_28870_29101 (.out1(out_read_cond_FU_27_i0_fu_make_oriented_28870_29101), .in1(out_reg_20_reg_20));
  read_cond_FU #(.BITSIZE_in1(1)) fu_make_oriented_28870_29103 (.out1(out_read_cond_FU_37_i0_fu_make_oriented_28870_29103), .in1(out_reg_13_reg_13));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(6)) fu_make_oriented_28870_29829 (.out1(out_addr_expr_FU_5_i0_fu_make_oriented_28870_29829), .in1(out_conv_out_const_10_6_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_make_oriented_28870_29833 (.out1(out_addr_expr_FU_6_i0_fu_make_oriented_28870_29833), .in1(out_conv_out_const_12_7_32));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_oriented_28870_29837 (.out1(out_UUdata_converter_FU_33_i0_fu_make_oriented_28870_29837), .in1(out_ui_pointer_plus_expr_FU_8_8_8_58_i2_fu_make_oriented_28870_29883));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_make_oriented_28870_29846 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_58_i0_fu_make_oriented_28870_29846), .in1(out_reg_9_reg_9), .in2(out_reg_11_reg_11));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_oriented_28870_29850 (.out1(out_UUdata_converter_FU_9_i0_fu_make_oriented_28870_29850), .in1(out_ui_pointer_plus_expr_FU_8_0_8_57_i0_fu_make_oriented_28870_29900));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(3), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_make_oriented_28870_29859 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_58_i1_fu_make_oriented_28870_29859), .in1(out_reg_2_reg_2), .in2(out_IUdata_converter_FU_32_i0_fu_make_oriented_28870_29877));
  ui_lshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(2), .BITSIZE_out1(5), .PRECISION(32)) fu_make_oriented_28870_29868 (.out1(out_ui_lshift_expr_FU_8_0_8_46_i0_fu_make_oriented_28870_29868), .in1(out_UUdata_converter_FU_34_i0_fu_make_oriented_28870_28964), .in2(out_const_5));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(5), .OFFSET_PARAMETER(2)) fu_make_oriented_28870_29871 (.out1(out_ui_bit_ior_concat_expr_FU_44_i0_fu_make_oriented_28870_29871), .in1(out_ui_lshift_expr_FU_8_0_8_46_i1_fu_make_oriented_28870_30291), .in2(out_ui_bit_and_expr_FU_8_0_8_43_i0_fu_make_oriented_28870_30296), .in3(out_const_5));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(9)) fu_make_oriented_28870_29874 (.out1(out_UUdata_converter_FU_8_i0_fu_make_oriented_28870_29874), .in1(out_addr_expr_FU_7_i0_fu_make_oriented_28870_29908));
  IUdata_converter_FU #(.BITSIZE_in1(4), .BITSIZE_out1(3)) fu_make_oriented_28870_29877 (.out1(out_IUdata_converter_FU_32_i0_fu_make_oriented_28870_29877), .in1(out_UIdata_converter_FU_31_i0_fu_make_oriented_28870_28961));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(6), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_make_oriented_28870_29883 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_58_i2_fu_make_oriented_28870_29883), .in1(out_reg_3_reg_3), .in2(out_ui_bit_ior_concat_expr_FU_45_i0_fu_make_oriented_28870_29915));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(5), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_make_oriented_28870_29900 (.out1(out_ui_pointer_plus_expr_FU_8_0_8_57_i0_fu_make_oriented_28870_29900), .in1(out_UUdata_converter_FU_8_i0_fu_make_oriented_28870_29874), .in2(out_const_7));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(9)) fu_make_oriented_28870_29908 (.out1(out_addr_expr_FU_7_i0_fu_make_oriented_28870_29908), .in1(out_conv_out_const_11_9_32));
  ui_lshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(2), .BITSIZE_out1(5), .PRECISION(32)) fu_make_oriented_28870_29912 (.out1(out_ui_lshift_expr_FU_8_0_8_47_i0_fu_make_oriented_28870_29912), .in1(out_IUdata_converter_FU_32_i0_fu_make_oriented_28870_29877), .in2(out_const_5));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(6), .OFFSET_PARAMETER(2)) fu_make_oriented_28870_29915 (.out1(out_ui_bit_ior_concat_expr_FU_45_i0_fu_make_oriented_28870_29915), .in1(out_ui_lshift_expr_FU_8_0_8_47_i1_fu_make_oriented_28870_30271), .in2(out_ui_bit_and_expr_FU_8_0_8_42_i0_fu_make_oriented_28870_30274), .in3(out_const_5));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(5)) fu_make_oriented_28870_29932 (.out1(out_UUdata_converter_FU_36_i0_fu_make_oriented_28870_29932), .in1(out_ui_bit_ior_concat_expr_FU_44_i0_fu_make_oriented_28870_29871));
  ui_plus_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(5), .BITSIZE_out1(6)) fu_make_oriented_28870_29935 (.out1(out_ui_plus_expr_FU_8_8_8_55_i0_fu_make_oriented_28870_29935), .in1(out_reg_16_reg_16), .in2(out_reg_12_reg_12));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(6), .BITSIZE_out1(7), .LSB_PARAMETER(0)) fu_make_oriented_28870_29941 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_58_i3_fu_make_oriented_28870_29941), .in1(out_reg_4_reg_4), .in2(out_ui_plus_expr_FU_8_8_8_55_i0_fu_make_oriented_28870_29935));
  ge_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_oriented_28870_29970 (.out1(out_ge_expr_FU_8_0_8_39_i0_fu_make_oriented_28870_29970), .in1(out_reg_22_reg_22), .in2(out_const_0));
  ui_ne_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(1)) fu_make_oriented_28870_30160 (.out1(out_ui_ne_expr_FU_8_0_8_48_i0_fu_make_oriented_28870_30160), .in1(out_ui_plus_expr_FU_8_0_8_54_i0_fu_make_oriented_28870_29029), .in2(out_const_6));
  ui_ne_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(3), .BITSIZE_out1(1)) fu_make_oriented_28870_30162 (.out1(out_ui_ne_expr_FU_8_0_8_49_i0_fu_make_oriented_28870_30162), .in1(out_reg_5_reg_5), .in2(out_const_6));
  ui_rshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_out1(3), .PRECISION(32)) fu_make_oriented_28870_30262 (.out1(out_ui_rshift_expr_FU_8_0_8_59_i0_fu_make_oriented_28870_30262), .in1(out_ui_lshift_expr_FU_8_0_8_47_i0_fu_make_oriented_28870_29912), .in2(out_const_5));
  ui_rshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(2), .BITSIZE_out1(1), .PRECISION(32)) fu_make_oriented_28870_30265 (.out1(out_ui_rshift_expr_FU_8_0_8_59_i1_fu_make_oriented_28870_30265), .in1(out_IUdata_converter_FU_32_i0_fu_make_oriented_28870_29877), .in2(out_const_5));
  ui_plus_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(4)) fu_make_oriented_28870_30267 (.out1(out_ui_plus_expr_FU_8_8_8_55_i1_fu_make_oriented_28870_30267), .in1(out_ui_rshift_expr_FU_8_0_8_59_i0_fu_make_oriented_28870_30262), .in2(out_ui_rshift_expr_FU_8_0_8_59_i1_fu_make_oriented_28870_30265));
  ui_lshift_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_make_oriented_28870_30271 (.out1(out_ui_lshift_expr_FU_8_0_8_47_i1_fu_make_oriented_28870_30271), .in1(out_ui_plus_expr_FU_8_8_8_55_i1_fu_make_oriented_28870_30267), .in2(out_const_5));
  ui_bit_and_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_make_oriented_28870_30274 (.out1(out_ui_bit_and_expr_FU_8_0_8_42_i0_fu_make_oriented_28870_30274), .in1(out_IUdata_converter_FU_32_i0_fu_make_oriented_28870_29877), .in2(out_const_8));
  ui_rshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_out1(3), .PRECISION(32)) fu_make_oriented_28870_30281 (.out1(out_ui_rshift_expr_FU_8_0_8_60_i0_fu_make_oriented_28870_30281), .in1(out_ui_lshift_expr_FU_8_0_8_46_i0_fu_make_oriented_28870_29868), .in2(out_const_5));
  ui_rshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(2), .BITSIZE_out1(1), .PRECISION(32)) fu_make_oriented_28870_30285 (.out1(out_ui_rshift_expr_FU_8_0_8_60_i1_fu_make_oriented_28870_30285), .in1(out_UUdata_converter_FU_34_i0_fu_make_oriented_28870_28964), .in2(out_const_5));
  ui_plus_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(1), .BITSIZE_out1(3)) fu_make_oriented_28870_30288 (.out1(out_ui_plus_expr_FU_8_8_8_55_i2_fu_make_oriented_28870_30288), .in1(out_ui_rshift_expr_FU_8_0_8_60_i0_fu_make_oriented_28870_30281), .in2(out_ui_rshift_expr_FU_8_0_8_60_i1_fu_make_oriented_28870_30285));
  ui_lshift_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(2), .BITSIZE_out1(5), .PRECISION(32)) fu_make_oriented_28870_30291 (.out1(out_ui_lshift_expr_FU_8_0_8_46_i1_fu_make_oriented_28870_30291), .in1(out_ui_plus_expr_FU_8_8_8_55_i2_fu_make_oriented_28870_30288), .in2(out_const_5));
  ui_bit_and_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_make_oriented_28870_30296 (.out1(out_ui_bit_and_expr_FU_8_0_8_43_i0_fu_make_oriented_28870_30296), .in1(out_UUdata_converter_FU_34_i0_fu_make_oriented_28870_28964), .in2(out_const_8));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_5_i0_fu_make_oriented_28870_29829), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_6_i0_fu_make_oriented_28870_29833), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_58_i1_fu_make_oriented_28870_29859), .wenable(wrenable_reg_10));
  register_STD #(.BITSIZE_in1(3), .BITSIZE_out1(3)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_32_i0_fu_make_oriented_28870_29877), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(5), .BITSIZE_out1(5)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_36_i0_fu_make_oriented_28870_29932), .wenable(wrenable_reg_12));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_49_i0_fu_make_oriented_28870_30162), .wenable(wrenable_reg_13));
  register_STD #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_58_i0_fu_make_oriented_28870_29846), .wenable(wrenable_reg_14));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_MUX_48_reg_15_0_0_0), .wenable(wrenable_reg_15));
  register_SE #(.BITSIZE_in1(3), .BITSIZE_out1(3)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_MUX_49_reg_16_0_0_0), .wenable(wrenable_reg_16));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_8_8_50_i0_fu_make_oriented_28870_29074), .wenable(wrenable_reg_17));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_19_i0_fu_make_oriented_28870_29092), .wenable(wrenable_reg_18));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_19 (.out1(out_reg_19_reg_19), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_58_i3_fu_make_oriented_28870_29941), .wenable(wrenable_reg_19));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_9_i0_fu_make_oriented_28870_29850), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_20 (.out1(out_reg_20_reg_20), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_48_i0_fu_make_oriented_28870_30160), .wenable(wrenable_reg_20));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_21 (.out1(out_reg_21_reg_21), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_20_i0_fu_make_oriented_28870_29054), .wenable(wrenable_reg_21));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_22 (.out1(out_reg_22_reg_22), .clock(clock), .reset(reset), .in1(out_PROXY_CTRL_2_i0_PROXY_CTRL_2_i0), .wenable(wrenable_reg_22));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_23 (.out1(out_reg_23_reg_23), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_21_i0_fu_make_oriented_28870_29043), .wenable(wrenable_reg_23));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_8_i0_fu_make_oriented_28870_29874), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_7_i0_fu_make_oriented_28870_29908), .wenable(wrenable_reg_4));
  register_SE #(.BITSIZE_in1(3), .BITSIZE_out1(3)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_MUX_60_reg_5_0_0_0), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_MUX_61_reg_6_0_0_0), .wenable(wrenable_reg_6));
  register_SE #(.BITSIZE_in1(3), .BITSIZE_out1(3)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_53_i0_fu_make_oriented_28870_28981), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_35_i0_fu_make_oriented_28870_28966), .wenable(wrenable_reg_8));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_33_i0_fu_make_oriented_28870_29837), .wenable(wrenable_reg_9));
  // io-signal post fix
  assign Sout_Rdata_ram = sig_out_bus_mergerSout_Rdata_ram1_;
  assign Sout_DataRdy = sig_out_bus_mergerSout_DataRdy0_;
  assign proxy_in1_28861 = sig_out_bus_mergerproxy_in1_288612_;
  assign proxy_in2_28861 = sig_out_bus_mergerproxy_in2_288614_;
  assign proxy_in3_28861 = sig_out_bus_mergerproxy_in3_288616_;
  assign proxy_sel_LOAD_28861 = sig_out_bus_mergerproxy_sel_LOAD_288618_;
  assign proxy_sel_STORE_28861 = sig_out_bus_mergerproxy_sel_STORE_2886110_;
  assign proxy_in1_28868 = sig_out_bus_mergerproxy_in1_288683_;
  assign proxy_in2_28868 = sig_out_bus_mergerproxy_in2_288685_;
  assign proxy_in3_28868 = sig_out_bus_mergerproxy_in3_288687_;
  assign proxy_sel_LOAD_28868 = sig_out_bus_mergerproxy_sel_LOAD_288689_;
  assign proxy_sel_STORE_28868 = sig_out_bus_mergerproxy_sel_STORE_2886811_;
  assign OUT_CONDITION_make_oriented_28870_29077 = out_read_cond_FU_22_i0_fu_make_oriented_28870_29077;
  assign OUT_CONDITION_make_oriented_28870_29094 = out_read_cond_FU_24_i0_fu_make_oriented_28870_29094;
  assign OUT_CONDITION_make_oriented_28870_29101 = out_read_cond_FU_27_i0_fu_make_oriented_28870_29101;
  assign OUT_CONDITION_make_oriented_28870_29103 = out_read_cond_FU_37_i0_fu_make_oriented_28870_29103;

endmodule

// FSM based controller description for make_oriented
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_make_oriented(done_port, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE, selector_MUX_10_PROXY_CTRL_1_i0_0_0_0, selector_MUX_11_PROXY_CTRL_1_i0_1_0_0, selector_MUX_14_PROXY_CTRL_2_i0_0_0_0, selector_MUX_15_PROXY_CTRL_2_i0_1_0_0, selector_MUX_15_PROXY_CTRL_2_i0_1_0_1, selector_MUX_15_PROXY_CTRL_2_i0_1_1_0, selector_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0, selector_MUX_48_reg_15_0_0_0, selector_MUX_49_reg_16_0_0_0, selector_MUX_60_reg_5_0_0_0, selector_MUX_61_reg_6_0_0_0, fuselector_PROXY_CTRL_1_i0_LOAD, fuselector_PROXY_CTRL_1_i0_STORE, fuselector_PROXY_CTRL_2_i0_LOAD, fuselector_PROXY_CTRL_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_make_oriented_28870_29077, OUT_CONDITION_make_oriented_28870_29094, OUT_CONDITION_make_oriented_28870_29101, OUT_CONDITION_make_oriented_28870_29103, clock, reset, start_port);
  // IN
  input OUT_CONDITION_make_oriented_28870_29077;
  input OUT_CONDITION_make_oriented_28870_29094;
  input OUT_CONDITION_make_oriented_28870_29101;
  input OUT_CONDITION_make_oriented_28870_29103;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD;
  output fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE;
  output selector_MUX_10_PROXY_CTRL_1_i0_0_0_0;
  output selector_MUX_11_PROXY_CTRL_1_i0_1_0_0;
  output selector_MUX_14_PROXY_CTRL_2_i0_0_0_0;
  output selector_MUX_15_PROXY_CTRL_2_i0_1_0_0;
  output selector_MUX_15_PROXY_CTRL_2_i0_1_0_1;
  output selector_MUX_15_PROXY_CTRL_2_i0_1_1_0;
  output selector_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0;
  output selector_MUX_48_reg_15_0_0_0;
  output selector_MUX_49_reg_16_0_0_0;
  output selector_MUX_60_reg_5_0_0_0;
  output selector_MUX_61_reg_6_0_0_0;
  output fuselector_PROXY_CTRL_1_i0_LOAD;
  output fuselector_PROXY_CTRL_1_i0_STORE;
  output fuselector_PROXY_CTRL_2_i0_LOAD;
  output fuselector_PROXY_CTRL_2_i0_STORE;
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
  output wrenable_reg_3;
  output wrenable_reg_4;
  output wrenable_reg_5;
  output wrenable_reg_6;
  output wrenable_reg_7;
  output wrenable_reg_8;
  output wrenable_reg_9;
  parameter [17:0] S_0 = 18'b000000000000000001,
    S_1 = 18'b000000000000000010,
    S_15 = 18'b001000000000000000,
    S_16 = 18'b010000000000000000,
    S_17 = 18'b100000000000000000,
    S_2 = 18'b000000000000000100,
    S_3 = 18'b000000000000001000,
    S_4 = 18'b000000000000010000,
    S_5 = 18'b000000000000100000,
    S_6 = 18'b000000000001000000,
    S_7 = 18'b000000000010000000,
    S_10 = 18'b000000010000000000,
    S_11 = 18'b000000100000000000,
    S_12 = 18'b000001000000000000,
    S_13 = 18'b000010000000000000,
    S_8 = 18'b000000000100000000,
    S_9 = 18'b000000001000000000,
    S_14 = 18'b000100000000000000;
  reg [17:0] _present_state, _next_state;
  reg done_port;
  reg fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE;
  reg selector_MUX_10_PROXY_CTRL_1_i0_0_0_0;
  reg selector_MUX_11_PROXY_CTRL_1_i0_1_0_0;
  reg selector_MUX_14_PROXY_CTRL_2_i0_0_0_0;
  reg selector_MUX_15_PROXY_CTRL_2_i0_1_0_0;
  reg selector_MUX_15_PROXY_CTRL_2_i0_1_0_1;
  reg selector_MUX_15_PROXY_CTRL_2_i0_1_1_0;
  reg selector_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0;
  reg selector_MUX_48_reg_15_0_0_0;
  reg selector_MUX_49_reg_16_0_0_0;
  reg selector_MUX_60_reg_5_0_0_0;
  reg selector_MUX_61_reg_6_0_0_0;
  reg fuselector_PROXY_CTRL_1_i0_LOAD;
  reg fuselector_PROXY_CTRL_1_i0_STORE;
  reg fuselector_PROXY_CTRL_2_i0_LOAD;
  reg fuselector_PROXY_CTRL_2_i0_STORE;
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
    fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE = 1'b0;
    selector_MUX_10_PROXY_CTRL_1_i0_0_0_0 = 1'b0;
    selector_MUX_11_PROXY_CTRL_1_i0_1_0_0 = 1'b0;
    selector_MUX_14_PROXY_CTRL_2_i0_0_0_0 = 1'b0;
    selector_MUX_15_PROXY_CTRL_2_i0_1_0_0 = 1'b0;
    selector_MUX_15_PROXY_CTRL_2_i0_1_0_1 = 1'b0;
    selector_MUX_15_PROXY_CTRL_2_i0_1_1_0 = 1'b0;
    selector_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0 = 1'b0;
    selector_MUX_48_reg_15_0_0_0 = 1'b0;
    selector_MUX_49_reg_16_0_0_0 = 1'b0;
    selector_MUX_60_reg_5_0_0_0 = 1'b0;
    selector_MUX_61_reg_6_0_0_0 = 1'b0;
    fuselector_PROXY_CTRL_1_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRL_1_i0_STORE = 1'b0;
    fuselector_PROXY_CTRL_2_i0_LOAD = 1'b0;
    fuselector_PROXY_CTRL_2_i0_STORE = 1'b0;
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
          fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD = 1'b1;
          selector_MUX_10_PROXY_CTRL_1_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRL_1_i0_STORE = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          _next_state = S_1;
        end
        else
        begin
          selector_MUX_10_PROXY_CTRL_1_i0_0_0_0 = 1'bX;
          selector_MUX_11_PROXY_CTRL_1_i0_1_0_0 = 1'bX;
          selector_MUX_14_PROXY_CTRL_2_i0_0_0_0 = 1'bX;
          selector_MUX_15_PROXY_CTRL_2_i0_1_0_0 = 1'bX;
          selector_MUX_15_PROXY_CTRL_2_i0_1_0_1 = 1'bX;
          selector_MUX_15_PROXY_CTRL_2_i0_1_1_0 = 1'bX;
          selector_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0 = 1'bX;
          selector_MUX_48_reg_15_0_0_0 = 1'bX;
          selector_MUX_49_reg_16_0_0_0 = 1'bX;
          selector_MUX_60_reg_5_0_0_0 = 1'bX;
          selector_MUX_61_reg_6_0_0_0 = 1'bX;
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
          selector_MUX_61_reg_6_0_0_0 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_6 = 1'b1;
          _next_state = S_15;
        end
      S_15 :
        begin
          wrenable_reg_10 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_12 = 1'b1;
          wrenable_reg_13 = 1'b1;
          wrenable_reg_7 = 1'b1;
          wrenable_reg_8 = 1'b1;
          wrenable_reg_9 = 1'b1;
          _next_state = S_16;
        end
      S_16 :
        begin
          wrenable_reg_14 = 1'b1;
          if (OUT_CONDITION_make_oriented_28870_29103 == 1'b1)
            begin
              _next_state = S_2;
            end
          else
            begin
              _next_state = S_17;
              done_port = 1'b1;
              wrenable_reg_14 = 1'b0;
            end
        end
      S_17 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE = 1'b1;
          selector_MUX_11_PROXY_CTRL_1_i0_1_0_0 = 1'b1;
          selector_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRL_1_i0_STORE = 1'b1;
          _next_state = S_0;
        end
      S_2 :
        begin
          selector_MUX_14_PROXY_CTRL_2_i0_0_0_0 = 1'b1;
          selector_MUX_15_PROXY_CTRL_2_i0_1_0_1 = 1'b1;
          fuselector_PROXY_CTRL_2_i0_STORE = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          selector_MUX_14_PROXY_CTRL_2_i0_0_0_0 = 1'b1;
          selector_MUX_48_reg_15_0_0_0 = 1'b1;
          selector_MUX_49_reg_16_0_0_0 = 1'b1;
          fuselector_PROXY_CTRL_2_i0_STORE = 1'b1;
          wrenable_reg_15 = 1'b1;
          wrenable_reg_16 = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          wrenable_reg_15 = 1'b1;
          wrenable_reg_16 = 1'b1;
          wrenable_reg_17 = 1'b1;
          wrenable_reg_18 = 1'b1;
          wrenable_reg_19 = 1'b1;
          wrenable_reg_20 = 1'b1;
          _next_state = S_5;
        end
      S_5 :
        begin
          selector_MUX_15_PROXY_CTRL_2_i0_1_0_0 = 1'b1;
          selector_MUX_15_PROXY_CTRL_2_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRL_2_i0_LOAD = 1'b1;
          _next_state = S_6;
        end
      S_6 :
        begin
          wrenable_reg_21 = 1'b1;
          wrenable_reg_22 = 1'b1;
          _next_state = S_7;
        end
      S_7 :
        begin
          wrenable_reg_23 = 1'b1;
          if (OUT_CONDITION_make_oriented_28870_29077 == 1'b1)
            begin
              _next_state = S_8;
            end
          else
            begin
              _next_state = S_10;
              wrenable_reg_23 = 1'b0;
            end
        end
      S_10 :
        begin
          selector_MUX_15_PROXY_CTRL_2_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRL_2_i0_LOAD = 1'b1;
          _next_state = S_11;
        end
      S_11 :
        begin
          wrenable_reg_22 = 1'b1;
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
          selector_MUX_14_PROXY_CTRL_2_i0_0_0_0 = 1'b1;
          selector_MUX_15_PROXY_CTRL_2_i0_1_0_0 = 1'b1;
          selector_MUX_15_PROXY_CTRL_2_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRL_2_i0_STORE = 1'b1;
          _next_state = S_14;
        end
      S_8 :
        begin
          selector_MUX_15_PROXY_CTRL_2_i0_1_0_0 = 1'b1;
          selector_MUX_15_PROXY_CTRL_2_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRL_2_i0_STORE = 1'b1;
          _next_state = S_9;
        end
      S_9 :
        begin
          selector_MUX_14_PROXY_CTRL_2_i0_0_0_0 = 1'b1;
          selector_MUX_15_PROXY_CTRL_2_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRL_2_i0_STORE = 1'b1;
          _next_state = S_14;
        end
      S_14 :
        begin
          selector_MUX_60_reg_5_0_0_0 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_6 = 1'b1;
          if (OUT_CONDITION_make_oriented_28870_29101 == 1'b1)
            begin
              _next_state = S_4;
              selector_MUX_60_reg_5_0_0_0 = 1'b0;
              wrenable_reg_5 = 1'b0;
              wrenable_reg_6 = 1'b0;
            end
          else
            begin
              _next_state = S_15;
            end
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_10_PROXY_CTRL_1_i0_0_0_0 = 1'bX;
          selector_MUX_11_PROXY_CTRL_1_i0_1_0_0 = 1'bX;
          selector_MUX_14_PROXY_CTRL_2_i0_0_0_0 = 1'bX;
          selector_MUX_15_PROXY_CTRL_2_i0_1_0_0 = 1'bX;
          selector_MUX_15_PROXY_CTRL_2_i0_1_0_1 = 1'bX;
          selector_MUX_15_PROXY_CTRL_2_i0_1_1_0 = 1'bX;
          selector_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0 = 1'bX;
          selector_MUX_48_reg_15_0_0_0 = 1'bX;
          selector_MUX_49_reg_16_0_0_0 = 1'bX;
          selector_MUX_60_reg_5_0_0_0 = 1'bX;
          selector_MUX_61_reg_6_0_0_0 = 1'bX;
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
  parameter MEM_var_28859_28870=96, MEM_var_28861_28879=32, MEM_var_28868_28879=64;
  // IN
  input clock;
  input reset;
  input start_port;
  input S_oe_ram;
  input S_we_ram;
  input [8:0] S_addr_ram;
  input [7:0] S_Wdata_ram;
  input [3:0] S_data_ram_size;
  input [7:0] Sin_Rdata_ram;
  input Sin_DataRdy;
  input [7:0] proxy_out1_28861;
  input [7:0] proxy_out1_28868;
  // OUT
  output done_port;
  output [7:0] Sout_Rdata_ram;
  output Sout_DataRdy;
  output [7:0] proxy_in1_28861;
  output [8:0] proxy_in2_28861;
  output [3:0] proxy_in3_28861;
  output proxy_sel_LOAD_28861;
  output proxy_sel_STORE_28861;
  output [7:0] proxy_in1_28868;
  output [8:0] proxy_in2_28868;
  output [3:0] proxy_in3_28868;
  output proxy_sel_LOAD_28868;
  output proxy_sel_STORE_28868;
  // Component and signal declarations
  wire OUT_CONDITION_make_oriented_28870_29077;
  wire OUT_CONDITION_make_oriented_28870_29094;
  wire OUT_CONDITION_make_oriented_28870_29101;
  wire OUT_CONDITION_make_oriented_28870_29103;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE;
  wire fuselector_PROXY_CTRL_1_i0_LOAD;
  wire fuselector_PROXY_CTRL_1_i0_STORE;
  wire fuselector_PROXY_CTRL_2_i0_LOAD;
  wire fuselector_PROXY_CTRL_2_i0_STORE;
  wire selector_MUX_10_PROXY_CTRL_1_i0_0_0_0;
  wire selector_MUX_11_PROXY_CTRL_1_i0_1_0_0;
  wire selector_MUX_14_PROXY_CTRL_2_i0_0_0_0;
  wire selector_MUX_15_PROXY_CTRL_2_i0_1_0_0;
  wire selector_MUX_15_PROXY_CTRL_2_i0_1_0_1;
  wire selector_MUX_15_PROXY_CTRL_2_i0_1_1_0;
  wire selector_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0;
  wire selector_MUX_48_reg_15_0_0_0;
  wire selector_MUX_49_reg_16_0_0_0;
  wire selector_MUX_60_reg_5_0_0_0;
  wire selector_MUX_61_reg_6_0_0_0;
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
  wire wrenable_reg_3;
  wire wrenable_reg_4;
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  controller_make_oriented Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE), .selector_MUX_10_PROXY_CTRL_1_i0_0_0_0(selector_MUX_10_PROXY_CTRL_1_i0_0_0_0), .selector_MUX_11_PROXY_CTRL_1_i0_1_0_0(selector_MUX_11_PROXY_CTRL_1_i0_1_0_0), .selector_MUX_14_PROXY_CTRL_2_i0_0_0_0(selector_MUX_14_PROXY_CTRL_2_i0_0_0_0), .selector_MUX_15_PROXY_CTRL_2_i0_1_0_0(selector_MUX_15_PROXY_CTRL_2_i0_1_0_0), .selector_MUX_15_PROXY_CTRL_2_i0_1_0_1(selector_MUX_15_PROXY_CTRL_2_i0_1_0_1), .selector_MUX_15_PROXY_CTRL_2_i0_1_1_0(selector_MUX_15_PROXY_CTRL_2_i0_1_1_0), .selector_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0(selector_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0), .selector_MUX_48_reg_15_0_0_0(selector_MUX_48_reg_15_0_0_0), .selector_MUX_49_reg_16_0_0_0(selector_MUX_49_reg_16_0_0_0), .selector_MUX_60_reg_5_0_0_0(selector_MUX_60_reg_5_0_0_0), .selector_MUX_61_reg_6_0_0_0(selector_MUX_61_reg_6_0_0_0), .fuselector_PROXY_CTRL_1_i0_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .fuselector_PROXY_CTRL_1_i0_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .fuselector_PROXY_CTRL_2_i0_LOAD(fuselector_PROXY_CTRL_2_i0_LOAD), .fuselector_PROXY_CTRL_2_i0_STORE(fuselector_PROXY_CTRL_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_make_oriented_28870_29077(OUT_CONDITION_make_oriented_28870_29077), .OUT_CONDITION_make_oriented_28870_29094(OUT_CONDITION_make_oriented_28870_29094), .OUT_CONDITION_make_oriented_28870_29101(OUT_CONDITION_make_oriented_28870_29101), .OUT_CONDITION_make_oriented_28870_29103(OUT_CONDITION_make_oriented_28870_29103), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_make_oriented #(.MEM_var_28859_28870(MEM_var_28859_28870), .MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28868_28879(MEM_var_28868_28879)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .proxy_in1_28861(proxy_in1_28861), .proxy_in2_28861(proxy_in2_28861), .proxy_in3_28861(proxy_in3_28861), .proxy_sel_LOAD_28861(proxy_sel_LOAD_28861), .proxy_sel_STORE_28861(proxy_sel_STORE_28861), .proxy_in1_28868(proxy_in1_28868), .proxy_in2_28868(proxy_in2_28868), .proxy_in3_28868(proxy_in3_28868), .proxy_sel_LOAD_28868(proxy_sel_LOAD_28868), .proxy_sel_STORE_28868(proxy_sel_STORE_28868), .OUT_CONDITION_make_oriented_28870_29077(OUT_CONDITION_make_oriented_28870_29077), .OUT_CONDITION_make_oriented_28870_29094(OUT_CONDITION_make_oriented_28870_29094), .OUT_CONDITION_make_oriented_28870_29101(OUT_CONDITION_make_oriented_28870_29101), .OUT_CONDITION_make_oriented_28870_29103(OUT_CONDITION_make_oriented_28870_29103), .clock(clock), .reset(reset), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28868(proxy_out1_28868), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE), .selector_MUX_10_PROXY_CTRL_1_i0_0_0_0(selector_MUX_10_PROXY_CTRL_1_i0_0_0_0), .selector_MUX_11_PROXY_CTRL_1_i0_1_0_0(selector_MUX_11_PROXY_CTRL_1_i0_1_0_0), .selector_MUX_14_PROXY_CTRL_2_i0_0_0_0(selector_MUX_14_PROXY_CTRL_2_i0_0_0_0), .selector_MUX_15_PROXY_CTRL_2_i0_1_0_0(selector_MUX_15_PROXY_CTRL_2_i0_1_0_0), .selector_MUX_15_PROXY_CTRL_2_i0_1_0_1(selector_MUX_15_PROXY_CTRL_2_i0_1_0_1), .selector_MUX_15_PROXY_CTRL_2_i0_1_1_0(selector_MUX_15_PROXY_CTRL_2_i0_1_1_0), .selector_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0(selector_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0), .selector_MUX_48_reg_15_0_0_0(selector_MUX_48_reg_15_0_0_0), .selector_MUX_49_reg_16_0_0_0(selector_MUX_49_reg_16_0_0_0), .selector_MUX_60_reg_5_0_0_0(selector_MUX_60_reg_5_0_0_0), .selector_MUX_61_reg_6_0_0_0(selector_MUX_61_reg_6_0_0_0), .fuselector_PROXY_CTRL_1_i0_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .fuselector_PROXY_CTRL_1_i0_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .fuselector_PROXY_CTRL_2_i0_LOAD(fuselector_PROXY_CTRL_2_i0_LOAD), .fuselector_PROXY_CTRL_2_i0_STORE(fuselector_PROXY_CTRL_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Datapath RTL description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_main(clock, reset, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, selector_IN_UNBOUNDED_main_28879_29543, selector_IN_UNBOUNDED_main_28879_29544, wrenable_reg_0, OUT_UNBOUNDED_main_28879_29543, OUT_UNBOUNDED_main_28879_29544);
  parameter MEM_var_28859_28870=96, MEM_var_28861_28879=32, MEM_var_28862_28877=128, MEM_var_28864_28877=160, MEM_var_28865_28877=192, MEM_var_28866_28877=224, MEM_var_28867_28877=256, MEM_var_28868_28879=64;
  // IN
  input clock;
  input reset;
  input S_oe_ram;
  input S_we_ram;
  input [8:0] S_addr_ram;
  input [7:0] S_Wdata_ram;
  input [3:0] S_data_ram_size;
  input [7:0] M_Rdata_ram;
  input M_DataRdy;
  input [7:0] Sin_Rdata_ram;
  input Sin_DataRdy;
  input Min_oe_ram;
  input Min_we_ram;
  input [8:0] Min_addr_ram;
  input [7:0] Min_Wdata_ram;
  input [3:0] Min_data_ram_size;
  input selector_IN_UNBOUNDED_main_28879_29543;
  input selector_IN_UNBOUNDED_main_28879_29544;
  input wrenable_reg_0;
  // OUT
  output [7:0] Sout_Rdata_ram;
  output Sout_DataRdy;
  output Mout_oe_ram;
  output Mout_we_ram;
  output [8:0] Mout_addr_ram;
  output [7:0] Mout_Wdata_ram;
  output [3:0] Mout_data_ram_size;
  output OUT_UNBOUNDED_main_28879_29543;
  output OUT_UNBOUNDED_main_28879_29544;
  // Component and signal declarations
  wire [8:0] out_UUdata_converter_FU_5_i0_fu_main_28879_30198;
  wire [8:0] out_addr_expr_FU_4_i0_fu_main_28879_29826;
  wire [8:0] out_const_0;
  wire [31:0] out_conv_out_const_0_9_32;
  wire [31:0] out_conv_out_reg_0_reg_0_9_32;
  wire [8:0] out_reg_0_reg_0;
  wire [7:0] proxy_out1_28861;
  wire [7:0] proxy_out1_28868;
  wire s_done_fu_main_28879_29543;
  wire s_done_fu_main_28879_29544;
  wire [7:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [8:0] sig_in_bus_mergerMout_addr_ram1_0;
  wire [3:0] sig_in_bus_mergerMout_data_ram_size2_0;
  wire sig_in_bus_mergerMout_oe_ram3_0;
  wire sig_in_bus_mergerMout_we_ram4_0;
  wire sig_in_bus_mergerSout_DataRdy5_0;
  wire sig_in_bus_mergerSout_DataRdy5_1;
  wire sig_in_bus_mergerSout_DataRdy5_2;
  wire sig_in_bus_mergerSout_DataRdy5_3;
  wire [7:0] sig_in_bus_mergerSout_Rdata_ram6_0;
  wire [7:0] sig_in_bus_mergerSout_Rdata_ram6_1;
  wire [7:0] sig_in_bus_mergerSout_Rdata_ram6_2;
  wire [7:0] sig_in_bus_mergerSout_Rdata_ram6_3;
  wire [7:0] sig_in_bus_mergerproxy_in112_0;
  wire [7:0] sig_in_bus_mergerproxy_in112_1;
  wire [7:0] sig_in_bus_mergerproxy_in17_0;
  wire [7:0] sig_in_bus_mergerproxy_in17_1;
  wire [8:0] sig_in_bus_mergerproxy_in213_0;
  wire [8:0] sig_in_bus_mergerproxy_in213_1;
  wire [8:0] sig_in_bus_mergerproxy_in28_0;
  wire [8:0] sig_in_bus_mergerproxy_in28_1;
  wire [3:0] sig_in_bus_mergerproxy_in314_0;
  wire [3:0] sig_in_bus_mergerproxy_in314_1;
  wire [3:0] sig_in_bus_mergerproxy_in39_0;
  wire [3:0] sig_in_bus_mergerproxy_in39_1;
  wire sig_in_bus_mergerproxy_sel_LOAD10_0;
  wire sig_in_bus_mergerproxy_sel_LOAD10_1;
  wire sig_in_bus_mergerproxy_sel_LOAD15_0;
  wire sig_in_bus_mergerproxy_sel_LOAD15_1;
  wire sig_in_bus_mergerproxy_sel_STORE11_0;
  wire sig_in_bus_mergerproxy_sel_STORE11_1;
  wire sig_in_bus_mergerproxy_sel_STORE16_0;
  wire sig_in_bus_mergerproxy_sel_STORE16_1;
  wire [7:0] sig_out_bus_mergerMout_Wdata_ram0_;
  wire [8:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [3:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire sig_out_bus_mergerMout_oe_ram3_;
  wire sig_out_bus_mergerMout_we_ram4_;
  wire sig_out_bus_mergerSout_DataRdy5_;
  wire [7:0] sig_out_bus_mergerSout_Rdata_ram6_;
  wire [7:0] sig_out_bus_mergerproxy_in112_;
  wire [7:0] sig_out_bus_mergerproxy_in17_;
  wire [8:0] sig_out_bus_mergerproxy_in213_;
  wire [8:0] sig_out_bus_mergerproxy_in28_;
  wire [3:0] sig_out_bus_mergerproxy_in314_;
  wire [3:0] sig_out_bus_mergerproxy_in39_;
  wire sig_out_bus_mergerproxy_sel_LOAD10_;
  wire sig_out_bus_mergerproxy_sel_LOAD15_;
  wire sig_out_bus_mergerproxy_sel_STORE11_;
  wire sig_out_bus_mergerproxy_sel_STORE16_;
  
  ARRAY_1D_STD_BRAM_SDS_BUS #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_S_addr_ram(9), .BITSIZE_S_Wdata_ram(8), .BITSIZE_Sin_Rdata_ram(8), .BITSIZE_Sout_Rdata_ram(8), .BITSIZE_S_data_ram_size(4), .MEMORY_INIT_file("array_ref_28861.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28861_28879), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(9), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) array_28861_0 (.Sout_Rdata_ram(sig_in_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_bus_mergerSout_DataRdy5_0), .proxy_out1(proxy_out1_28861), .clock(clock), .reset(reset), .in1(8'b00000000), .in2(9'b000000000), .in3(4'b0000), .in4(1'b0), .sel_LOAD(1'b0), .sel_STORE(1'b0), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_bus_mergerproxy_in17_), .proxy_in2(sig_out_bus_mergerproxy_in28_), .proxy_in3(sig_out_bus_mergerproxy_in39_), .proxy_sel_LOAD(sig_out_bus_mergerproxy_sel_LOAD10_), .proxy_sel_STORE(sig_out_bus_mergerproxy_sel_STORE11_));
  ARRAY_1D_STD_BRAM_SDS_BUS #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_S_addr_ram(9), .BITSIZE_S_Wdata_ram(8), .BITSIZE_Sin_Rdata_ram(8), .BITSIZE_Sout_Rdata_ram(8), .BITSIZE_S_data_ram_size(4), .MEMORY_INIT_file("array_ref_28868.mem"), .n_elements(25), .data_size(8), .address_space_begin(MEM_var_28868_28879), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(9), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) array_28868_0 (.Sout_Rdata_ram(sig_in_bus_mergerSout_Rdata_ram6_1), .Sout_DataRdy(sig_in_bus_mergerSout_DataRdy5_1), .proxy_out1(proxy_out1_28868), .clock(clock), .reset(reset), .in1(8'b00000000), .in2(9'b000000000), .in3(4'b0000), .in4(1'b0), .sel_LOAD(1'b0), .sel_STORE(1'b0), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_bus_mergerproxy_in112_), .proxy_in2(sig_out_bus_mergerproxy_in213_), .proxy_in3(sig_out_bus_mergerproxy_in314_), .proxy_sel_LOAD(sig_out_bus_mergerproxy_sel_LOAD15_), .proxy_sel_STORE(sig_out_bus_mergerproxy_sel_STORE16_));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(9), .PORTSIZE_in1(1), .BITSIZE_out1(9)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(1), .BITSIZE_out1(4)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(4), .BITSIZE_out1(1)) bus_mergerSout_DataRdy5_ (.out1(sig_out_bus_mergerSout_DataRdy5_), .in1({sig_in_bus_mergerSout_DataRdy5_3, sig_in_bus_mergerSout_DataRdy5_2, sig_in_bus_mergerSout_DataRdy5_1, sig_in_bus_mergerSout_DataRdy5_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(4), .BITSIZE_out1(8)) bus_mergerSout_Rdata_ram6_ (.out1(sig_out_bus_mergerSout_Rdata_ram6_), .in1({sig_in_bus_mergerSout_Rdata_ram6_3, sig_in_bus_mergerSout_Rdata_ram6_2, sig_in_bus_mergerSout_Rdata_ram6_1, sig_in_bus_mergerSout_Rdata_ram6_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(8)) bus_mergerproxy_in112_ (.out1(sig_out_bus_mergerproxy_in112_), .in1({sig_in_bus_mergerproxy_in112_1, sig_in_bus_mergerproxy_in112_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(8)) bus_mergerproxy_in17_ (.out1(sig_out_bus_mergerproxy_in17_), .in1({sig_in_bus_mergerproxy_in17_1, sig_in_bus_mergerproxy_in17_0}));
  bus_merger #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(9)) bus_mergerproxy_in213_ (.out1(sig_out_bus_mergerproxy_in213_), .in1({sig_in_bus_mergerproxy_in213_1, sig_in_bus_mergerproxy_in213_0}));
  bus_merger #(.BITSIZE_in1(9), .PORTSIZE_in1(2), .BITSIZE_out1(9)) bus_mergerproxy_in28_ (.out1(sig_out_bus_mergerproxy_in28_), .in1({sig_in_bus_mergerproxy_in28_1, sig_in_bus_mergerproxy_in28_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(4)) bus_mergerproxy_in314_ (.out1(sig_out_bus_mergerproxy_in314_), .in1({sig_in_bus_mergerproxy_in314_1, sig_in_bus_mergerproxy_in314_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(4)) bus_mergerproxy_in39_ (.out1(sig_out_bus_mergerproxy_in39_), .in1({sig_in_bus_mergerproxy_in39_1, sig_in_bus_mergerproxy_in39_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD10_ (.out1(sig_out_bus_mergerproxy_sel_LOAD10_), .in1({sig_in_bus_mergerproxy_sel_LOAD10_1, sig_in_bus_mergerproxy_sel_LOAD10_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD15_ (.out1(sig_out_bus_mergerproxy_sel_LOAD15_), .in1({sig_in_bus_mergerproxy_sel_LOAD15_1, sig_in_bus_mergerproxy_sel_LOAD15_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE11_ (.out1(sig_out_bus_mergerproxy_sel_STORE11_), .in1({sig_in_bus_mergerproxy_sel_STORE11_1, sig_in_bus_mergerproxy_sel_STORE11_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE16_ (.out1(sig_out_bus_mergerproxy_sel_STORE16_), .in1({sig_in_bus_mergerproxy_sel_STORE16_1, sig_in_bus_mergerproxy_sel_STORE16_0}));
  constant_value #(.BITSIZE_out1(9), .value(MEM_var_28868_28879)) const_0 (.out1(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(32)) conv_out_const_0_9_32 (.out1(out_conv_out_const_0_9_32), .in1(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(32)) conv_out_reg_0_reg_0_9_32 (.out1(out_conv_out_reg_0_reg_0_9_32), .in1(out_reg_0_reg_0));
  make_oriented #(.MEM_var_28859_28870(MEM_var_28859_28870), .MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28868_28879(MEM_var_28868_28879)) fu_main_28879_29543 (.done_port(s_done_fu_main_28879_29543), .Sout_Rdata_ram(sig_in_bus_mergerSout_Rdata_ram6_3), .Sout_DataRdy(sig_in_bus_mergerSout_DataRdy5_3), .proxy_in1_28861(sig_in_bus_mergerproxy_in17_1), .proxy_in2_28861(sig_in_bus_mergerproxy_in28_1), .proxy_in3_28861(sig_in_bus_mergerproxy_in39_1), .proxy_sel_LOAD_28861(sig_in_bus_mergerproxy_sel_LOAD10_1), .proxy_sel_STORE_28861(sig_in_bus_mergerproxy_sel_STORE11_1), .proxy_in1_28868(sig_in_bus_mergerproxy_in112_1), .proxy_in2_28868(sig_in_bus_mergerproxy_in213_1), .proxy_in3_28868(sig_in_bus_mergerproxy_in314_1), .proxy_sel_LOAD_28868(sig_in_bus_mergerproxy_sel_LOAD15_1), .proxy_sel_STORE_28868(sig_in_bus_mergerproxy_sel_STORE16_1), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28879_29543), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28868(proxy_out1_28868));
  astarF #(.MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28862_28877(MEM_var_28862_28877), .MEM_var_28864_28877(MEM_var_28864_28877), .MEM_var_28865_28877(MEM_var_28865_28877), .MEM_var_28866_28877(MEM_var_28866_28877), .MEM_var_28867_28877(MEM_var_28867_28877), .MEM_var_28868_28879(MEM_var_28868_28879)) fu_main_28879_29544 (.done_port(s_done_fu_main_28879_29544), .Sout_Rdata_ram(sig_in_bus_mergerSout_Rdata_ram6_2), .Sout_DataRdy(sig_in_bus_mergerSout_DataRdy5_2), .proxy_in1_28861(sig_in_bus_mergerproxy_in17_0), .proxy_in2_28861(sig_in_bus_mergerproxy_in28_0), .proxy_in3_28861(sig_in_bus_mergerproxy_in39_0), .proxy_sel_LOAD_28861(sig_in_bus_mergerproxy_sel_LOAD10_0), .proxy_sel_STORE_28861(sig_in_bus_mergerproxy_sel_STORE11_0), .Mout_oe_ram(sig_in_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_bus_mergerMout_data_ram_size2_0), .proxy_in1_28868(sig_in_bus_mergerproxy_in112_0), .proxy_in2_28868(sig_in_bus_mergerproxy_in213_0), .proxy_in3_28868(sig_in_bus_mergerproxy_in314_0), .proxy_sel_LOAD_28868(sig_in_bus_mergerproxy_sel_LOAD15_0), .proxy_sel_STORE_28868(sig_in_bus_mergerproxy_sel_STORE16_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28879_29544), .a(out_conv_out_reg_0_reg_0_9_32), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28861(proxy_out1_28861), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .proxy_out1_28868(proxy_out1_28868));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(9)) fu_main_28879_29826 (.out1(out_addr_expr_FU_4_i0_fu_main_28879_29826), .in1(out_conv_out_const_0_9_32));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(9)) fu_main_28879_30198 (.out1(out_UUdata_converter_FU_5_i0_fu_main_28879_30198), .in1(out_addr_expr_FU_4_i0_fu_main_28879_29826));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_5_i0_fu_main_28879_30198), .wenable(wrenable_reg_0));
  // io-signal post fix
  assign Sout_Rdata_ram = sig_out_bus_mergerSout_Rdata_ram6_;
  assign Sout_DataRdy = sig_out_bus_mergerSout_DataRdy5_;
  assign Mout_oe_ram = sig_out_bus_mergerMout_oe_ram3_;
  assign Mout_we_ram = sig_out_bus_mergerMout_we_ram4_;
  assign Mout_addr_ram = sig_out_bus_mergerMout_addr_ram1_;
  assign Mout_Wdata_ram = sig_out_bus_mergerMout_Wdata_ram0_;
  assign Mout_data_ram_size = sig_out_bus_mergerMout_data_ram_size2_;
  assign OUT_UNBOUNDED_main_28879_29543 = s_done_fu_main_28879_29543;
  assign OUT_UNBOUNDED_main_28879_29544 = s_done_fu_main_28879_29544;

endmodule

// FSM based controller description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_main(done_port, selector_IN_UNBOUNDED_main_28879_29543, selector_IN_UNBOUNDED_main_28879_29544, wrenable_reg_0, OUT_UNBOUNDED_main_28879_29543, OUT_UNBOUNDED_main_28879_29544, clock, reset, start_port);
  // IN
  input OUT_UNBOUNDED_main_28879_29543;
  input OUT_UNBOUNDED_main_28879_29544;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_IN_UNBOUNDED_main_28879_29543;
  output selector_IN_UNBOUNDED_main_28879_29544;
  output wrenable_reg_0;
  parameter [4:0] S_0 = 5'b00001,
    S_1 = 5'b00010,
    S_2 = 5'b00100,
    S_3 = 5'b01000,
    S_4 = 5'b10000;
  reg [4:0] _present_state, _next_state;
  reg done_port;
  reg selector_IN_UNBOUNDED_main_28879_29543;
  reg selector_IN_UNBOUNDED_main_28879_29544;
  reg wrenable_reg_0;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    selector_IN_UNBOUNDED_main_28879_29543 = 1'b0;
    selector_IN_UNBOUNDED_main_28879_29544 = 1'b0;
    wrenable_reg_0 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          selector_IN_UNBOUNDED_main_28879_29543 = 1'b1;
          wrenable_reg_0 = 1'b1;
          if (OUT_UNBOUNDED_main_28879_29543 == 1'b0)
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
          if (OUT_UNBOUNDED_main_28879_29543 == 1'b0)
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
          selector_IN_UNBOUNDED_main_28879_29544 = 1'b1;
          if (OUT_UNBOUNDED_main_28879_29544 == 1'b0)
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
          if (OUT_UNBOUNDED_main_28879_29544 == 1'b0)
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
  parameter MEM_var_28859_28870=96, MEM_var_28861_28879=32, MEM_var_28862_28877=128, MEM_var_28864_28877=160, MEM_var_28865_28877=192, MEM_var_28866_28877=224, MEM_var_28867_28877=256, MEM_var_28868_28879=64;
  // IN
  input clock;
  input reset;
  input start_port;
  input S_oe_ram;
  input S_we_ram;
  input [8:0] S_addr_ram;
  input [7:0] S_Wdata_ram;
  input [3:0] S_data_ram_size;
  input [7:0] M_Rdata_ram;
  input M_DataRdy;
  input [7:0] Sin_Rdata_ram;
  input Sin_DataRdy;
  input Min_oe_ram;
  input Min_we_ram;
  input [8:0] Min_addr_ram;
  input [7:0] Min_Wdata_ram;
  input [3:0] Min_data_ram_size;
  // OUT
  output done_port;
  output [7:0] Sout_Rdata_ram;
  output Sout_DataRdy;
  output Mout_oe_ram;
  output Mout_we_ram;
  output [8:0] Mout_addr_ram;
  output [7:0] Mout_Wdata_ram;
  output [3:0] Mout_data_ram_size;
  // Component and signal declarations
  wire OUT_UNBOUNDED_main_28879_29543;
  wire OUT_UNBOUNDED_main_28879_29544;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire selector_IN_UNBOUNDED_main_28879_29543;
  wire selector_IN_UNBOUNDED_main_28879_29544;
  wire wrenable_reg_0;
  
  controller_main Controller_i (.done_port(done_delayed_REG_signal_in), .selector_IN_UNBOUNDED_main_28879_29543(selector_IN_UNBOUNDED_main_28879_29543), .selector_IN_UNBOUNDED_main_28879_29544(selector_IN_UNBOUNDED_main_28879_29544), .wrenable_reg_0(wrenable_reg_0), .OUT_UNBOUNDED_main_28879_29543(OUT_UNBOUNDED_main_28879_29543), .OUT_UNBOUNDED_main_28879_29544(OUT_UNBOUNDED_main_28879_29544), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_main #(.MEM_var_28859_28870(MEM_var_28859_28870), .MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28862_28877(MEM_var_28862_28877), .MEM_var_28864_28877(MEM_var_28864_28877), .MEM_var_28865_28877(MEM_var_28865_28877), .MEM_var_28866_28877(MEM_var_28866_28877), .MEM_var_28867_28877(MEM_var_28867_28877), .MEM_var_28868_28879(MEM_var_28868_28879)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_UNBOUNDED_main_28879_29543(OUT_UNBOUNDED_main_28879_29543), .OUT_UNBOUNDED_main_28879_29544(OUT_UNBOUNDED_main_28879_29544), .clock(clock), .reset(reset), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .selector_IN_UNBOUNDED_main_28879_29543(selector_IN_UNBOUNDED_main_28879_29543), .selector_IN_UNBOUNDED_main_28879_29544(selector_IN_UNBOUNDED_main_28879_29544), .wrenable_reg_0(wrenable_reg_0));
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
  parameter MEM_var_28859_28870=96, MEM_var_28861_28879=32, MEM_var_28862_28877=128, MEM_var_28864_28877=160, MEM_var_28865_28877=192, MEM_var_28866_28877=224, MEM_var_28867_28877=256, MEM_var_28868_28879=64;
  // IN
  input clock;
  input reset;
  input start_port;
  input S_oe_ram;
  input S_we_ram;
  input [8:0] S_addr_ram;
  input [7:0] S_Wdata_ram;
  input [3:0] S_data_ram_size;
  input [7:0] M_Rdata_ram;
  input M_DataRdy;
  // OUT
  output done_port;
  output [7:0] Sout_Rdata_ram;
  output Sout_DataRdy;
  output Mout_oe_ram;
  output Mout_we_ram;
  output [8:0] Mout_addr_ram;
  output [7:0] Mout_Wdata_ram;
  output [3:0] Mout_data_ram_size;
  // Component and signal declarations
  
  _main #(.MEM_var_28859_28870(MEM_var_28859_28870), .MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28862_28877(MEM_var_28862_28877), .MEM_var_28864_28877(MEM_var_28864_28877), .MEM_var_28865_28877(MEM_var_28865_28877), .MEM_var_28866_28877(MEM_var_28866_28877), .MEM_var_28867_28877(MEM_var_28867_28877), .MEM_var_28868_28879(MEM_var_28868_28879)) _main_i0 (.done_port(done_port), .Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .clock(clock), .reset(reset), .start_port(start_port), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(8'b00000000), .Sin_DataRdy(1'b0), .Min_oe_ram(1'b0), .Min_we_ram(1'b0), .Min_addr_ram(9'b000000000), .Min_Wdata_ram(8'b00000000), .Min_data_ram_size(4'b0000));

endmodule


