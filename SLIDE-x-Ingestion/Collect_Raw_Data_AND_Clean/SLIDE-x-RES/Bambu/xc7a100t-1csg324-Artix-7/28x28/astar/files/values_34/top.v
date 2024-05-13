// 
// Politecnico di Milano
// Code created using PandA - Version: PandA 0.9.6 - Revision 891ec3caed502474cab0813cc4a9fc678deabaa5 - Date 2022-05-26T15:08:52
// bambu executed with: bambu -I/home/dews/Scrivania/bambu-hls/RESULTS/BAMBU/28x28/astar/includes/values_34 --simulate --simulator=VERILATOR --clock-period=5 --experimental-setup=BAMBU-AREA --device-name=xc7a100t-1csg324-VVD /home/dews/Scrivania/bambu-hls/cc4cs_bambu/benchmarkBasic/astar/thrd.c 
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
module datapath_heuristic(clock, reset, in_port_goal, in_port_current, in_port_path_cost, return_port, proxy_out1_28868, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, selector_MUX_14_gimple_return_FU_10_i0_0_0_0, fuselector_PROXY_CTRL_0_i0_LOAD, fuselector_PROXY_CTRL_0_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2, wrenable_reg_3, OUT_CONDITION_heuristic_28876_29381);
  parameter MEM_var_28868_28879=256;
  // IN
  input clock;
  input reset;
  input [7:0] in_port_goal;
  input [7:0] in_port_current;
  input signed [7:0] in_port_path_cost;
  input [7:0] proxy_out1_28868;
  input selector_MUX_14_gimple_return_FU_10_i0_0_0_0;
  input fuselector_PROXY_CTRL_0_i0_LOAD;
  input fuselector_PROXY_CTRL_0_i0_STORE;
  input wrenable_reg_0;
  input wrenable_reg_1;
  input wrenable_reg_2;
  input wrenable_reg_3;
  // OUT
  output signed [7:0] return_port;
  output [7:0] proxy_in1_28868;
  output [10:0] proxy_in2_28868;
  output [3:0] proxy_in3_28868;
  output proxy_sel_LOAD_28868;
  output proxy_sel_STORE_28868;
  output OUT_CONDITION_heuristic_28876_29381;
  // Component and signal declarations
  wire signed [7:0] out_IIconvert_expr_FU_11_i0_fu_heuristic_28876_29399;
  wire signed [7:0] out_IIdata_converter_FU_8_i0_fu_heuristic_28876_29397;
  wire [7:0] out_IUdata_converter_FU_6_i0_fu_heuristic_28876_29835;
  wire [7:0] out_MUX_14_gimple_return_FU_10_i0_0_0_0;
  wire [7:0] out_PROXY_CTRL_0_i0_PROXY_CTRL_0_i0;
  wire signed [8:0] out_UIdata_converter_FU_3_i0_fu_heuristic_28876_29378;
  wire [10:0] out_UUdata_converter_FU_5_i0_fu_heuristic_28876_29832;
  wire [9:0] out_UUdata_converter_FU_7_i0_fu_heuristic_28876_29814;
  wire signed [8:0] out___builtin_abs_8_8_12_i0_fu_heuristic_28876_29398;
  wire [10:0] out_addr_expr_FU_4_i0_fu_heuristic_28876_29853;
  wire out_const_0;
  wire [1:0] out_const_1;
  wire [4:0] out_const_2;
  wire [3:0] out_const_3;
  wire out_const_4;
  wire [1:0] out_const_5;
  wire [3:0] out_const_6;
  wire [1:0] out_const_7;
  wire [7:0] out_const_8;
  wire [8:0] out_const_9;
  wire signed [7:0] out_conv_out_const_1_I_2_I_8;
  wire [3:0] out_conv_out_const_2_5_4;
  wire [31:0] out_conv_out_const_9_9_32;
  wire [10:0] out_conv_out_reg_2_reg_2_9_11;
  wire out_ge_expr_FU_8_0_8_13_i0_fu_heuristic_28876_29827;
  wire signed [7:0] out_plus_expr_FU_8_0_8_14_i0_fu_heuristic_28876_29396;
  wire signed [7:0] out_plus_expr_FU_8_0_8_15_i0_fu_heuristic_28876_29400;
  wire out_read_cond_FU_9_i0_fu_heuristic_28876_29381;
  wire [7:0] out_reg_0_reg_0;
  wire [9:0] out_reg_1_reg_1;
  wire [8:0] out_reg_2_reg_2;
  wire [7:0] out_reg_3_reg_3;
  wire [1:0] out_ui_bit_and_expr_FU_8_0_8_16_i0_fu_heuristic_28876_30330;
  wire [9:0] out_ui_bit_ior_concat_expr_FU_17_i0_fu_heuristic_28876_29862;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_18_i0_fu_heuristic_28876_29859;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_18_i1_fu_heuristic_28876_30325;
  wire [10:0] out_ui_lshift_expr_FU_16_0_16_19_i0_fu_heuristic_28876_29865;
  wire [7:0] out_ui_plus_expr_FU_8_8_8_20_i0_fu_heuristic_28876_30321;
  wire [9:0] out_ui_pointer_plus_expr_FU_16_16_16_21_i0_fu_heuristic_28876_29842;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_0_8_22_i0_fu_heuristic_28876_29823;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_23_i0_fu_heuristic_28876_30314;
  wire [5:0] out_ui_rshift_expr_FU_8_0_8_24_i0_fu_heuristic_28876_30318;
  wire [7:0] sig_in_bus_mergerproxy_in1_288680_0;
  wire [10:0] sig_in_bus_mergerproxy_in2_288681_0;
  wire [3:0] sig_in_bus_mergerproxy_in3_288682_0;
  wire sig_in_bus_mergerproxy_sel_LOAD_288683_0;
  wire sig_in_bus_mergerproxy_sel_STORE_288684_0;
  wire [7:0] sig_out_bus_mergerproxy_in1_288680_;
  wire [10:0] sig_out_bus_mergerproxy_in2_288681_;
  wire [3:0] sig_out_bus_mergerproxy_in3_288682_;
  wire sig_out_bus_mergerproxy_sel_LOAD_288683_;
  wire sig_out_bus_mergerproxy_sel_STORE_288684_;
  
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_14_gimple_return_FU_10_i0_0_0_0 (.out1(out_MUX_14_gimple_return_FU_10_i0_0_0_0), .sel(selector_MUX_14_gimple_return_FU_10_i0_0_0_0), .in1(out_conv_out_const_1_I_2_I_8), .in2(out_plus_expr_FU_8_0_8_15_i0_fu_heuristic_28876_29400));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(11), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(11), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_0_i0 (.out1(out_PROXY_CTRL_0_i0_PROXY_CTRL_0_i0), .proxy_in1(sig_in_bus_mergerproxy_in1_288680_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288681_0), .proxy_in3(sig_in_bus_mergerproxy_in3_288682_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_288683_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_288684_0), .in1(8'b00000000), .in2(out_conv_out_reg_2_reg_2_9_11), .in3(out_conv_out_const_2_5_4), .in4(out_const_4), .sel_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .proxy_out1(proxy_out1_28868));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in1_288680_ (.out1(sig_out_bus_mergerproxy_in1_288680_), .in1({sig_in_bus_mergerproxy_in1_288680_0}));
  bus_merger #(.BITSIZE_in1(11), .PORTSIZE_in1(1), .BITSIZE_out1(11)) bus_mergerproxy_in2_288681_ (.out1(sig_out_bus_mergerproxy_in2_288681_), .in1({sig_in_bus_mergerproxy_in2_288681_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(1), .BITSIZE_out1(4)) bus_mergerproxy_in3_288682_ (.out1(sig_out_bus_mergerproxy_in3_288682_), .in1({sig_in_bus_mergerproxy_in3_288682_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD_288683_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288683_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288683_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE_288684_ (.out1(sig_out_bus_mergerproxy_sel_STORE_288684_), .in1({sig_in_bus_mergerproxy_sel_STORE_288684_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(2), .value(2'b01)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(4), .value(4'b0101)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(2), .value(2'b10)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(4), .value(4'b1011)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(8), .value(8'b11010010)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(9), .value(MEM_var_28868_28879)) const_9 (.out1(out_const_9));
  IIdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(8)) conv_out_const_1_I_2_I_8 (.out1(out_conv_out_const_1_I_2_I_8), .in1(out_const_1));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_2_5_4 (.out1(out_conv_out_const_2_5_4), .in1(out_const_2));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(32)) conv_out_const_9_9_32 (.out1(out_conv_out_const_9_9_32), .in1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(11)) conv_out_reg_2_reg_2_9_11 (.out1(out_conv_out_reg_2_reg_2_9_11), .in1(out_reg_2_reg_2));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_heuristic_28876_29378 (.out1(out_UIdata_converter_FU_3_i0_fu_heuristic_28876_29378), .in1(in_port_current));
  read_cond_FU #(.BITSIZE_in1(1)) fu_heuristic_28876_29381 (.out1(out_read_cond_FU_9_i0_fu_heuristic_28876_29381), .in1(out_ge_expr_FU_8_0_8_13_i0_fu_heuristic_28876_29827));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(4), .BITSIZE_out1(8)) fu_heuristic_28876_29396 (.out1(out_plus_expr_FU_8_0_8_14_i0_fu_heuristic_28876_29396), .in1(in_port_path_cost), .in2(out_const_6));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_heuristic_28876_29397 (.out1(out_IIdata_converter_FU_8_i0_fu_heuristic_28876_29397), .in1(out_plus_expr_FU_8_0_8_14_i0_fu_heuristic_28876_29396));
  __builtin_abs #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_heuristic_28876_29398 (.out1(out___builtin_abs_8_8_12_i0_fu_heuristic_28876_29398), .in1(out_reg_0_reg_0));
  IIconvert_expr_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_heuristic_28876_29399 (.out1(out_IIconvert_expr_FU_11_i0_fu_heuristic_28876_29399), .in1(out___builtin_abs_8_8_12_i0_fu_heuristic_28876_29398));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(4), .BITSIZE_out1(8)) fu_heuristic_28876_29400 (.out1(out_plus_expr_FU_8_0_8_15_i0_fu_heuristic_28876_29400), .in1(out_IIconvert_expr_FU_11_i0_fu_heuristic_28876_29399), .in2(out_const_3));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(10)) fu_heuristic_28876_29814 (.out1(out_UUdata_converter_FU_7_i0_fu_heuristic_28876_29814), .in1(out_ui_pointer_plus_expr_FU_16_16_16_21_i0_fu_heuristic_28876_29842));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(8), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_heuristic_28876_29823 (.out1(out_ui_pointer_plus_expr_FU_8_0_8_22_i0_fu_heuristic_28876_29823), .in1(out_reg_1_reg_1), .in2(out_const_8));
  ge_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_heuristic_28876_29827 (.out1(out_ge_expr_FU_8_0_8_13_i0_fu_heuristic_28876_29827), .in1(out_reg_3_reg_3), .in2(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(11)) fu_heuristic_28876_29832 (.out1(out_UUdata_converter_FU_5_i0_fu_heuristic_28876_29832), .in1(out_addr_expr_FU_4_i0_fu_heuristic_28876_29853));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_heuristic_28876_29835 (.out1(out_IUdata_converter_FU_6_i0_fu_heuristic_28876_29835), .in1(out_UIdata_converter_FU_3_i0_fu_heuristic_28876_29378));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(11), .BITSIZE_out1(10), .LSB_PARAMETER(0)) fu_heuristic_28876_29842 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_21_i0_fu_heuristic_28876_29842), .in1(out_UUdata_converter_FU_5_i0_fu_heuristic_28876_29832), .in2(out_ui_lshift_expr_FU_16_0_16_19_i0_fu_heuristic_28876_29865));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) fu_heuristic_28876_29853 (.out1(out_addr_expr_FU_4_i0_fu_heuristic_28876_29853), .in1(out_conv_out_const_9_9_32));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(10), .PRECISION(32)) fu_heuristic_28876_29859 (.out1(out_ui_lshift_expr_FU_16_0_16_18_i0_fu_heuristic_28876_29859), .in1(out_IUdata_converter_FU_6_i0_fu_heuristic_28876_29835), .in2(out_const_5));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(10), .OFFSET_PARAMETER(2)) fu_heuristic_28876_29862 (.out1(out_ui_bit_ior_concat_expr_FU_17_i0_fu_heuristic_28876_29862), .in1(out_ui_lshift_expr_FU_16_0_16_18_i1_fu_heuristic_28876_30325), .in2(out_ui_bit_and_expr_FU_8_0_8_16_i0_fu_heuristic_28876_30330), .in3(out_const_5));
  ui_lshift_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(1), .BITSIZE_out1(11), .PRECISION(32)) fu_heuristic_28876_29865 (.out1(out_ui_lshift_expr_FU_16_0_16_19_i0_fu_heuristic_28876_29865), .in1(out_ui_bit_ior_concat_expr_FU_17_i0_fu_heuristic_28876_29862), .in2(out_const_4));
  ui_rshift_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(32)) fu_heuristic_28876_30314 (.out1(out_ui_rshift_expr_FU_16_0_16_23_i0_fu_heuristic_28876_30314), .in1(out_ui_lshift_expr_FU_16_0_16_18_i0_fu_heuristic_28876_29859), .in2(out_const_5));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_heuristic_28876_30318 (.out1(out_ui_rshift_expr_FU_8_0_8_24_i0_fu_heuristic_28876_30318), .in1(out_IUdata_converter_FU_6_i0_fu_heuristic_28876_29835), .in2(out_const_5));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(6), .BITSIZE_out1(8)) fu_heuristic_28876_30321 (.out1(out_ui_plus_expr_FU_8_8_8_20_i0_fu_heuristic_28876_30321), .in1(out_ui_rshift_expr_FU_16_0_16_23_i0_fu_heuristic_28876_30314), .in2(out_ui_rshift_expr_FU_8_0_8_24_i0_fu_heuristic_28876_30318));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(10), .PRECISION(32)) fu_heuristic_28876_30325 (.out1(out_ui_lshift_expr_FU_16_0_16_18_i1_fu_heuristic_28876_30325), .in1(out_ui_plus_expr_FU_8_8_8_20_i0_fu_heuristic_28876_30321), .in2(out_const_5));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_heuristic_28876_30330 (.out1(out_ui_bit_and_expr_FU_8_0_8_16_i0_fu_heuristic_28876_30330), .in1(out_IUdata_converter_FU_6_i0_fu_heuristic_28876_29835), .in2(out_const_7));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_8_i0_fu_heuristic_28876_29397), .wenable(wrenable_reg_0));
  register_STD #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_7_i0_fu_heuristic_28876_29814), .wenable(wrenable_reg_1));
  register_STD #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_0_8_22_i0_fu_heuristic_28876_29823), .wenable(wrenable_reg_2));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_PROXY_CTRL_0_i0_PROXY_CTRL_0_i0), .wenable(wrenable_reg_3));
  // io-signal post fix
  assign return_port = out_MUX_14_gimple_return_FU_10_i0_0_0_0;
  assign proxy_in1_28868 = sig_out_bus_mergerproxy_in1_288680_;
  assign proxy_in2_28868 = sig_out_bus_mergerproxy_in2_288681_;
  assign proxy_in3_28868 = sig_out_bus_mergerproxy_in3_288682_;
  assign proxy_sel_LOAD_28868 = sig_out_bus_mergerproxy_sel_LOAD_288683_;
  assign proxy_sel_STORE_28868 = sig_out_bus_mergerproxy_sel_STORE_288684_;
  assign OUT_CONDITION_heuristic_28876_29381 = out_read_cond_FU_9_i0_fu_heuristic_28876_29381;

endmodule

// FSM based controller description for heuristic
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_heuristic(done_port, selector_MUX_14_gimple_return_FU_10_i0_0_0_0, fuselector_PROXY_CTRL_0_i0_LOAD, fuselector_PROXY_CTRL_0_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2, wrenable_reg_3, OUT_CONDITION_heuristic_28876_29381, clock, reset, start_port);
  // IN
  input OUT_CONDITION_heuristic_28876_29381;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_MUX_14_gimple_return_FU_10_i0_0_0_0;
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
  reg selector_MUX_14_gimple_return_FU_10_i0_0_0_0;
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
    selector_MUX_14_gimple_return_FU_10_i0_0_0_0 = 1'b0;
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
          selector_MUX_14_gimple_return_FU_10_i0_0_0_0 = 1'bX;
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
          if (OUT_CONDITION_heuristic_28876_29381 == 1'b0)
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
          selector_MUX_14_gimple_return_FU_10_i0_0_0_0 = 1'b1;
          _next_state = S_0;
        end
      S_5 :
        begin
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_14_gimple_return_FU_10_i0_0_0_0 = 1'bX;
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
  parameter MEM_var_28868_28879=256;
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
  output [10:0] proxy_in2_28868;
  output [3:0] proxy_in3_28868;
  output proxy_sel_LOAD_28868;
  output proxy_sel_STORE_28868;
  // Component and signal declarations
  wire OUT_CONDITION_heuristic_28876_29381;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_PROXY_CTRL_0_i0_LOAD;
  wire fuselector_PROXY_CTRL_0_i0_STORE;
  wire selector_MUX_14_gimple_return_FU_10_i0_0_0_0;
  wire wrenable_reg_0;
  wire wrenable_reg_1;
  wire wrenable_reg_2;
  wire wrenable_reg_3;
  
  controller_heuristic Controller_i (.done_port(done_delayed_REG_signal_in), .selector_MUX_14_gimple_return_FU_10_i0_0_0_0(selector_MUX_14_gimple_return_FU_10_i0_0_0_0), .fuselector_PROXY_CTRL_0_i0_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .fuselector_PROXY_CTRL_0_i0_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .OUT_CONDITION_heuristic_28876_29381(OUT_CONDITION_heuristic_28876_29381), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_heuristic #(.MEM_var_28868_28879(MEM_var_28868_28879)) Datapath_i (.return_port(return_port), .proxy_in1_28868(proxy_in1_28868), .proxy_in2_28868(proxy_in2_28868), .proxy_in3_28868(proxy_in3_28868), .proxy_sel_LOAD_28868(proxy_sel_LOAD_28868), .proxy_sel_STORE_28868(proxy_sel_STORE_28868), .OUT_CONDITION_heuristic_28876_29381(OUT_CONDITION_heuristic_28876_29381), .clock(clock), .reset(reset), .in_port_goal(goal), .in_port_current(current), .in_port_path_cost(path_cost), .proxy_out1_28868(proxy_out1_28868), .selector_MUX_14_gimple_return_FU_10_i0_0_0_0(selector_MUX_14_gimple_return_FU_10_i0_0_0_0), .fuselector_PROXY_CTRL_0_i0_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .fuselector_PROXY_CTRL_0_i0_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3));
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
module datapath_init_camefrom(clock, reset, proxy_out1_28861, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_out1_28865, proxy_in1_28865, proxy_in2_28865, proxy_in3_28865, proxy_sel_LOAD_28865, proxy_sel_STORE_28865, selector_MUX_17_reg_2_0_0_0, fuselector_PROXY_CTRL_0_i0_LOAD, fuselector_PROXY_CTRL_0_i0_STORE, fuselector_PROXY_CTRL_1_i0_LOAD, fuselector_PROXY_CTRL_1_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, OUT_CONDITION_init_camefrom_28871_29187);
  parameter MEM_var_28861_28879=128, MEM_var_28865_28877=768;
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
  output [10:0] proxy_in2_28861;
  output [3:0] proxy_in3_28861;
  output proxy_sel_LOAD_28861;
  output proxy_sel_STORE_28861;
  output [7:0] proxy_in1_28865;
  output [10:0] proxy_in2_28865;
  output [3:0] proxy_in3_28865;
  output proxy_sel_LOAD_28865;
  output proxy_sel_STORE_28865;
  output OUT_CONDITION_init_camefrom_28871_29187;
  // Component and signal declarations
  wire [3:0] out_IUdata_converter_FU_9_i0_fu_init_camefrom_28871_29871;
  wire [3:0] out_MUX_17_reg_2_0_0_0;
  wire signed [4:0] out_UIdata_converter_FU_8_i0_fu_init_camefrom_28871_29184;
  wire [10:0] out_UUdata_converter_FU_5_i0_fu_init_camefrom_28871_29868;
  wire [10:0] out_addr_expr_FU_4_i0_fu_init_camefrom_28871_29881;
  wire [7:0] out_addr_expr_FU_6_i0_fu_init_camefrom_28871_29885;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [4:0] out_const_2;
  wire out_const_3;
  wire [3:0] out_const_4;
  wire [7:0] out_const_5;
  wire [7:0] out_const_6;
  wire [9:0] out_const_7;
  wire [3:0] out_conv_out_const_2_5_4;
  wire [31:0] out_conv_out_const_6_8_32;
  wire [31:0] out_conv_out_const_7_10_32;
  wire [10:0] out_conv_out_reg_1_reg_1_8_11;
  wire [10:0] out_conv_out_reg_3_reg_3_10_11;
  wire [3:0] out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_0_1_4;
  wire out_read_cond_FU_10_i0_fu_init_camefrom_28871_29187;
  wire [10:0] out_reg_0_reg_0;
  wire [7:0] out_reg_1_reg_1;
  wire [3:0] out_reg_2_reg_2;
  wire [9:0] out_reg_3_reg_3;
  wire out_reg_4_reg_4;
  wire [0:0] out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_0;
  wire out_ui_ne_expr_FU_8_0_8_12_i0_fu_init_camefrom_28871_30260;
  wire [3:0] out_ui_plus_expr_FU_8_0_8_13_i0_fu_init_camefrom_28871_29186;
  wire [9:0] out_ui_pointer_plus_expr_FU_16_16_16_14_i0_fu_init_camefrom_28871_29877;
  wire [7:0] out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_1;
  wire [7:0] out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_2;
  wire [7:0] sig_in_bus_mergerproxy_in1_288610_0;
  wire [7:0] sig_in_bus_mergerproxy_in1_288651_0;
  wire [10:0] sig_in_bus_mergerproxy_in2_288612_0;
  wire [10:0] sig_in_bus_mergerproxy_in2_288653_0;
  wire [3:0] sig_in_bus_mergerproxy_in3_288614_0;
  wire [3:0] sig_in_bus_mergerproxy_in3_288655_0;
  wire sig_in_bus_mergerproxy_sel_LOAD_288616_0;
  wire sig_in_bus_mergerproxy_sel_LOAD_288657_0;
  wire sig_in_bus_mergerproxy_sel_STORE_288618_0;
  wire sig_in_bus_mergerproxy_sel_STORE_288659_0;
  wire [7:0] sig_out_bus_mergerproxy_in1_288610_;
  wire [7:0] sig_out_bus_mergerproxy_in1_288651_;
  wire [10:0] sig_out_bus_mergerproxy_in2_288612_;
  wire [10:0] sig_out_bus_mergerproxy_in2_288653_;
  wire [3:0] sig_out_bus_mergerproxy_in3_288614_;
  wire [3:0] sig_out_bus_mergerproxy_in3_288655_;
  wire sig_out_bus_mergerproxy_sel_LOAD_288616_;
  wire sig_out_bus_mergerproxy_sel_LOAD_288657_;
  wire sig_out_bus_mergerproxy_sel_STORE_288618_;
  wire sig_out_bus_mergerproxy_sel_STORE_288659_;
  
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_0 (.out1(out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_0), .in1(out_const_0));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_1 (.out1(out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_1), .in1(out_const_5));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_2 (.out1(out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_2), .in1(out_const_1));
  MUX_GATE #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(4)) MUX_17_reg_2_0_0_0 (.out1(out_MUX_17_reg_2_0_0_0), .sel(selector_MUX_17_reg_2_0_0_0), .in1(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_0_1_4), .in2(out_ui_plus_expr_FU_8_0_8_13_i0_fu_init_camefrom_28871_29186));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(11), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(11), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_0_i0 (.proxy_in1(sig_in_bus_mergerproxy_in1_288610_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288612_0), .proxy_in3(sig_in_bus_mergerproxy_in3_288614_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_288616_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_288618_0), .in1(out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_2), .in2(out_conv_out_reg_1_reg_1_8_11), .in3(out_conv_out_const_2_5_4), .in4(out_const_3), .sel_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .proxy_out1(proxy_out1_28861));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(11), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(11), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_1_i0 (.proxy_in1(sig_in_bus_mergerproxy_in1_288651_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288653_0), .proxy_in3(sig_in_bus_mergerproxy_in3_288655_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_288657_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_288659_0), .in1(out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_1), .in2(out_conv_out_reg_3_reg_3_10_11), .in3(out_conv_out_const_2_5_4), .in4(out_const_3), .sel_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .proxy_out1(proxy_out1_28865));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in1_288610_ (.out1(sig_out_bus_mergerproxy_in1_288610_), .in1({sig_in_bus_mergerproxy_in1_288610_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in1_288651_ (.out1(sig_out_bus_mergerproxy_in1_288651_), .in1({sig_in_bus_mergerproxy_in1_288651_0}));
  bus_merger #(.BITSIZE_in1(11), .PORTSIZE_in1(1), .BITSIZE_out1(11)) bus_mergerproxy_in2_288612_ (.out1(sig_out_bus_mergerproxy_in2_288612_), .in1({sig_in_bus_mergerproxy_in2_288612_0}));
  bus_merger #(.BITSIZE_in1(11), .PORTSIZE_in1(1), .BITSIZE_out1(11)) bus_mergerproxy_in2_288653_ (.out1(sig_out_bus_mergerproxy_in2_288653_), .in1({sig_in_bus_mergerproxy_in2_288653_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(1), .BITSIZE_out1(4)) bus_mergerproxy_in3_288614_ (.out1(sig_out_bus_mergerproxy_in3_288614_), .in1({sig_in_bus_mergerproxy_in3_288614_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(1), .BITSIZE_out1(4)) bus_mergerproxy_in3_288655_ (.out1(sig_out_bus_mergerproxy_in3_288655_), .in1({sig_in_bus_mergerproxy_in3_288655_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD_288616_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288616_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288616_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD_288657_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288657_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288657_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE_288618_ (.out1(sig_out_bus_mergerproxy_sel_STORE_288618_), .in1({sig_in_bus_mergerproxy_sel_STORE_288618_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE_288659_ (.out1(sig_out_bus_mergerproxy_sel_STORE_288659_), .in1({sig_in_bus_mergerproxy_sel_STORE_288659_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00001010)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(4), .value(4'b1010)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28861_28879)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(10), .value(MEM_var_28865_28877)) const_7 (.out1(out_const_7));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_2_5_4 (.out1(out_conv_out_const_2_5_4), .in1(out_const_2));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_6_8_32 (.out1(out_conv_out_const_6_8_32), .in1(out_const_6));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(32)) conv_out_const_7_10_32 (.out1(out_conv_out_const_7_10_32), .in1(out_const_7));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(11)) conv_out_reg_1_reg_1_8_11 (.out1(out_conv_out_reg_1_reg_1_8_11), .in1(out_reg_1_reg_1));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(11)) conv_out_reg_3_reg_3_10_11 (.out1(out_conv_out_reg_3_reg_3_10_11), .in1(out_reg_3_reg_3));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(4)) conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_0_1_4 (.out1(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_0_1_4), .in1(out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_0));
  UIdata_converter_FU #(.BITSIZE_in1(4), .BITSIZE_out1(5)) fu_init_camefrom_28871_29184 (.out1(out_UIdata_converter_FU_8_i0_fu_init_camefrom_28871_29184), .in1(out_reg_2_reg_2));
  ui_plus_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(1), .BITSIZE_out1(4)) fu_init_camefrom_28871_29186 (.out1(out_ui_plus_expr_FU_8_0_8_13_i0_fu_init_camefrom_28871_29186), .in1(out_reg_2_reg_2), .in2(out_const_3));
  read_cond_FU #(.BITSIZE_in1(1)) fu_init_camefrom_28871_29187 (.out1(out_read_cond_FU_10_i0_fu_init_camefrom_28871_29187), .in1(out_reg_4_reg_4));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(11)) fu_init_camefrom_28871_29868 (.out1(out_UUdata_converter_FU_5_i0_fu_init_camefrom_28871_29868), .in1(out_addr_expr_FU_4_i0_fu_init_camefrom_28871_29881));
  IUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) fu_init_camefrom_28871_29871 (.out1(out_IUdata_converter_FU_9_i0_fu_init_camefrom_28871_29871), .in1(out_UIdata_converter_FU_8_i0_fu_init_camefrom_28871_29184));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(4), .BITSIZE_out1(10), .LSB_PARAMETER(0)) fu_init_camefrom_28871_29877 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_14_i0_fu_init_camefrom_28871_29877), .in1(out_reg_0_reg_0), .in2(out_IUdata_converter_FU_9_i0_fu_init_camefrom_28871_29871));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) fu_init_camefrom_28871_29881 (.out1(out_addr_expr_FU_4_i0_fu_init_camefrom_28871_29881), .in1(out_conv_out_const_7_10_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_init_camefrom_28871_29885 (.out1(out_addr_expr_FU_6_i0_fu_init_camefrom_28871_29885), .in1(out_conv_out_const_6_8_32));
  ui_ne_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(1)) fu_init_camefrom_28871_30260 (.out1(out_ui_ne_expr_FU_8_0_8_12_i0_fu_init_camefrom_28871_30260), .in1(out_ui_plus_expr_FU_8_0_8_13_i0_fu_init_camefrom_28871_29186), .in2(out_const_4));
  register_SE #(.BITSIZE_in1(11), .BITSIZE_out1(11)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_5_i0_fu_init_camefrom_28871_29868), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_6_i0_fu_init_camefrom_28871_29885), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(4), .BITSIZE_out1(4)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_MUX_17_reg_2_0_0_0), .wenable(wrenable_reg_2));
  register_STD #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_14_i0_fu_init_camefrom_28871_29877), .wenable(wrenable_reg_3));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_12_i0_fu_init_camefrom_28871_30260), .wenable(wrenable_reg_4));
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
  assign OUT_CONDITION_init_camefrom_28871_29187 = out_read_cond_FU_10_i0_fu_init_camefrom_28871_29187;

endmodule

// FSM based controller description for init_camefrom
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_init_camefrom(done_port, selector_MUX_17_reg_2_0_0_0, fuselector_PROXY_CTRL_0_i0_LOAD, fuselector_PROXY_CTRL_0_i0_STORE, fuselector_PROXY_CTRL_1_i0_LOAD, fuselector_PROXY_CTRL_1_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, OUT_CONDITION_init_camefrom_28871_29187, clock, reset, start_port);
  // IN
  input OUT_CONDITION_init_camefrom_28871_29187;
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
          if (OUT_CONDITION_init_camefrom_28871_29187 == 1'b1)
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
  parameter MEM_var_28861_28879=128, MEM_var_28865_28877=768;
  // IN
  input clock;
  input reset;
  input start_port;
  input [7:0] proxy_out1_28861;
  input [7:0] proxy_out1_28865;
  // OUT
  output done_port;
  output [7:0] proxy_in1_28861;
  output [10:0] proxy_in2_28861;
  output [3:0] proxy_in3_28861;
  output proxy_sel_LOAD_28861;
  output proxy_sel_STORE_28861;
  output [7:0] proxy_in1_28865;
  output [10:0] proxy_in2_28865;
  output [3:0] proxy_in3_28865;
  output proxy_sel_LOAD_28865;
  output proxy_sel_STORE_28865;
  // Component and signal declarations
  wire OUT_CONDITION_init_camefrom_28871_29187;
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
  
  controller_init_camefrom Controller_i (.done_port(done_delayed_REG_signal_in), .selector_MUX_17_reg_2_0_0_0(selector_MUX_17_reg_2_0_0_0), .fuselector_PROXY_CTRL_0_i0_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .fuselector_PROXY_CTRL_0_i0_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .fuselector_PROXY_CTRL_1_i0_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .fuselector_PROXY_CTRL_1_i0_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .OUT_CONDITION_init_camefrom_28871_29187(OUT_CONDITION_init_camefrom_28871_29187), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_init_camefrom #(.MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28865_28877(MEM_var_28865_28877)) Datapath_i (.proxy_in1_28861(proxy_in1_28861), .proxy_in2_28861(proxy_in2_28861), .proxy_in3_28861(proxy_in3_28861), .proxy_sel_LOAD_28861(proxy_sel_LOAD_28861), .proxy_sel_STORE_28861(proxy_sel_STORE_28861), .proxy_in1_28865(proxy_in1_28865), .proxy_in2_28865(proxy_in2_28865), .proxy_in3_28865(proxy_in3_28865), .proxy_sel_LOAD_28865(proxy_sel_LOAD_28865), .proxy_sel_STORE_28865(proxy_sel_STORE_28865), .OUT_CONDITION_init_camefrom_28871_29187(OUT_CONDITION_init_camefrom_28871_29187), .clock(clock), .reset(reset), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28865(proxy_out1_28865), .selector_MUX_17_reg_2_0_0_0(selector_MUX_17_reg_2_0_0_0), .fuselector_PROXY_CTRL_0_i0_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .fuselector_PROXY_CTRL_0_i0_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .fuselector_PROXY_CTRL_1_i0_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .fuselector_PROXY_CTRL_1_i0_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4));
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
  parameter MEM_var_28866_28877=896, MEM_var_28867_28877=1024;
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
  output [10:0] proxy_in2_28866;
  output [3:0] proxy_in3_28866;
  output proxy_sel_LOAD_28866;
  output proxy_sel_STORE_28866;
  output [7:0] proxy_in1_28867;
  output [10:0] proxy_in2_28867;
  output [3:0] proxy_in3_28867;
  output proxy_sel_LOAD_28867;
  output proxy_sel_STORE_28867;
  // Component and signal declarations
  wire [7:0] out_IUdata_converter_FU_7_i0_fu_insert_28872_29892;
  wire [10:0] out_MUX_2_PROXY_CTRL_0_i0_1_0_0;
  wire [7:0] out_PROXY_CTRL_0_i0_PROXY_CTRL_0_i0;
  wire signed [8:0] out_UIdata_converter_FU_4_i0_fu_insert_28872_29216;
  wire [11:0] out_UUdata_converter_FU_6_i0_fu_insert_28872_29889;
  wire [11:0] out_addr_expr_FU_5_i0_fu_insert_28872_29910;
  wire [9:0] out_addr_expr_FU_8_i0_fu_insert_28872_29902;
  wire [1:0] out_const_0;
  wire [4:0] out_const_1;
  wire out_const_2;
  wire [10:0] out_const_3;
  wire [9:0] out_const_4;
  wire [10:0] out_conv_out_addr_expr_FU_8_i0_fu_insert_28872_29902_10_11;
  wire [3:0] out_conv_out_const_1_5_4;
  wire [31:0] out_conv_out_const_3_11_32;
  wire [31:0] out_conv_out_const_4_10_32;
  wire [10:0] out_conv_out_reg_1_reg_1_10_11;
  wire [7:0] out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_0;
  wire [7:0] out_iu_conv_conn_obj_1_IUdata_converter_FU_iu_conv_1;
  wire signed [7:0] out_plus_expr_FU_8_0_8_10_i0_fu_insert_28872_29219;
  wire [10:0] out_reg_0_reg_0;
  wire [9:0] out_reg_1_reg_1;
  wire [7:0] out_reg_2_reg_2;
  wire [10:0] out_ui_pointer_plus_expr_FU_16_16_16_11_i0_fu_insert_28872_29898;
  wire [7:0] sig_in_bus_mergerproxy_in1_288660_0;
  wire [7:0] sig_in_bus_mergerproxy_in1_288671_0;
  wire [10:0] sig_in_bus_mergerproxy_in2_288662_0;
  wire [10:0] sig_in_bus_mergerproxy_in2_288673_0;
  wire [3:0] sig_in_bus_mergerproxy_in3_288664_0;
  wire [3:0] sig_in_bus_mergerproxy_in3_288675_0;
  wire sig_in_bus_mergerproxy_sel_LOAD_288666_0;
  wire sig_in_bus_mergerproxy_sel_LOAD_288677_0;
  wire sig_in_bus_mergerproxy_sel_STORE_288668_0;
  wire sig_in_bus_mergerproxy_sel_STORE_288679_0;
  wire [7:0] sig_out_bus_mergerproxy_in1_288660_;
  wire [7:0] sig_out_bus_mergerproxy_in1_288671_;
  wire [10:0] sig_out_bus_mergerproxy_in2_288662_;
  wire [10:0] sig_out_bus_mergerproxy_in2_288673_;
  wire [3:0] sig_out_bus_mergerproxy_in3_288664_;
  wire [3:0] sig_out_bus_mergerproxy_in3_288675_;
  wire sig_out_bus_mergerproxy_sel_LOAD_288666_;
  wire sig_out_bus_mergerproxy_sel_LOAD_288677_;
  wire sig_out_bus_mergerproxy_sel_STORE_288668_;
  wire sig_out_bus_mergerproxy_sel_STORE_288679_;
  
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_0 (.out1(out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_0), .in1(in_port_priority));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_1_IUdata_converter_FU_iu_conv_1), .in1(out_reg_2_reg_2));
  MUX_GATE #(.BITSIZE_in1(11), .BITSIZE_in2(11), .BITSIZE_out1(11)) MUX_2_PROXY_CTRL_0_i0_1_0_0 (.out1(out_MUX_2_PROXY_CTRL_0_i0_1_0_0), .sel(selector_MUX_2_PROXY_CTRL_0_i0_1_0_0), .in1(out_conv_out_reg_1_reg_1_10_11), .in2(out_conv_out_addr_expr_FU_8_i0_fu_insert_28872_29902_10_11));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(11), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(11), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_0_i0 (.out1(out_PROXY_CTRL_0_i0_PROXY_CTRL_0_i0), .proxy_in1(sig_in_bus_mergerproxy_in1_288660_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288662_0), .proxy_in3(sig_in_bus_mergerproxy_in3_288664_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_288666_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_288668_0), .in1(out_iu_conv_conn_obj_1_IUdata_converter_FU_iu_conv_1), .in2(out_MUX_2_PROXY_CTRL_0_i0_1_0_0), .in3(out_conv_out_const_1_5_4), .in4(out_const_2), .sel_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .proxy_out1(proxy_out1_28866));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(11), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(11), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_1_i0 (.proxy_in1(sig_in_bus_mergerproxy_in1_288671_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288673_0), .proxy_in3(sig_in_bus_mergerproxy_in3_288675_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_288677_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_288679_0), .in1(out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_0), .in2(out_reg_0_reg_0), .in3(out_conv_out_const_1_5_4), .in4(out_const_2), .sel_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .proxy_out1(proxy_out1_28867));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in1_288660_ (.out1(sig_out_bus_mergerproxy_in1_288660_), .in1({sig_in_bus_mergerproxy_in1_288660_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in1_288671_ (.out1(sig_out_bus_mergerproxy_in1_288671_), .in1({sig_in_bus_mergerproxy_in1_288671_0}));
  bus_merger #(.BITSIZE_in1(11), .PORTSIZE_in1(1), .BITSIZE_out1(11)) bus_mergerproxy_in2_288662_ (.out1(sig_out_bus_mergerproxy_in2_288662_), .in1({sig_in_bus_mergerproxy_in2_288662_0}));
  bus_merger #(.BITSIZE_in1(11), .PORTSIZE_in1(1), .BITSIZE_out1(11)) bus_mergerproxy_in2_288673_ (.out1(sig_out_bus_mergerproxy_in2_288673_), .in1({sig_in_bus_mergerproxy_in2_288673_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(1), .BITSIZE_out1(4)) bus_mergerproxy_in3_288664_ (.out1(sig_out_bus_mergerproxy_in3_288664_), .in1({sig_in_bus_mergerproxy_in3_288664_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(1), .BITSIZE_out1(4)) bus_mergerproxy_in3_288675_ (.out1(sig_out_bus_mergerproxy_in3_288675_), .in1({sig_in_bus_mergerproxy_in3_288675_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD_288666_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288666_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288666_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD_288677_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288677_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288677_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE_288668_ (.out1(sig_out_bus_mergerproxy_sel_STORE_288668_), .in1({sig_in_bus_mergerproxy_sel_STORE_288668_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE_288679_ (.out1(sig_out_bus_mergerproxy_sel_STORE_288679_), .in1({sig_in_bus_mergerproxy_sel_STORE_288679_0}));
  constant_value #(.BITSIZE_out1(2), .value(2'b01)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(11), .value(MEM_var_28867_28877)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(10), .value(MEM_var_28866_28877)) const_4 (.out1(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(11)) conv_out_addr_expr_FU_8_i0_fu_insert_28872_29902_10_11 (.out1(out_conv_out_addr_expr_FU_8_i0_fu_insert_28872_29902_10_11), .in1(out_addr_expr_FU_8_i0_fu_insert_28872_29902));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_1_5_4 (.out1(out_conv_out_const_1_5_4), .in1(out_const_1));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(32)) conv_out_const_3_11_32 (.out1(out_conv_out_const_3_11_32), .in1(out_const_3));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(32)) conv_out_const_4_10_32 (.out1(out_conv_out_const_4_10_32), .in1(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(11)) conv_out_reg_1_reg_1_10_11 (.out1(out_conv_out_reg_1_reg_1_10_11), .in1(out_reg_1_reg_1));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_insert_28872_29216 (.out1(out_UIdata_converter_FU_4_i0_fu_insert_28872_29216), .in1(in_port_node));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_insert_28872_29219 (.out1(out_plus_expr_FU_8_0_8_10_i0_fu_insert_28872_29219), .in1(out_PROXY_CTRL_0_i0_PROXY_CTRL_0_i0), .in2(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(12)) fu_insert_28872_29889 (.out1(out_UUdata_converter_FU_6_i0_fu_insert_28872_29889), .in1(out_addr_expr_FU_5_i0_fu_insert_28872_29910));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_insert_28872_29892 (.out1(out_IUdata_converter_FU_7_i0_fu_insert_28872_29892), .in1(out_UIdata_converter_FU_4_i0_fu_insert_28872_29216));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(12), .BITSIZE_in2(8), .BITSIZE_out1(11), .LSB_PARAMETER(0)) fu_insert_28872_29898 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_11_i0_fu_insert_28872_29898), .in1(out_UUdata_converter_FU_6_i0_fu_insert_28872_29889), .in2(out_IUdata_converter_FU_7_i0_fu_insert_28872_29892));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(10)) fu_insert_28872_29902 (.out1(out_addr_expr_FU_8_i0_fu_insert_28872_29902), .in1(out_conv_out_const_4_10_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(12)) fu_insert_28872_29910 (.out1(out_addr_expr_FU_5_i0_fu_insert_28872_29910), .in1(out_conv_out_const_3_11_32));
  register_STD #(.BITSIZE_in1(11), .BITSIZE_out1(11)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_11_i0_fu_insert_28872_29898), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_8_i0_fu_insert_28872_29902), .wenable(wrenable_reg_1));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_0_8_10_i0_fu_insert_28872_29219), .wenable(wrenable_reg_2));
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
  parameter MEM_var_28866_28877=896, MEM_var_28867_28877=1024;
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
  output [10:0] proxy_in2_28866;
  output [3:0] proxy_in3_28866;
  output proxy_sel_LOAD_28866;
  output proxy_sel_STORE_28866;
  output [7:0] proxy_in1_28867;
  output [10:0] proxy_in2_28867;
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
module datapath_remove_min(clock, reset, proxy_out1_28861, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_out1_28864, proxy_in1_28864, proxy_in2_28864, proxy_in3_28864, proxy_sel_LOAD_28864, proxy_sel_STORE_28864, proxy_out1_28866, proxy_in1_28866, proxy_in2_28866, proxy_in3_28866, proxy_sel_LOAD_28866, proxy_sel_STORE_28866, proxy_out1_28867, proxy_in1_28867, proxy_in2_28867, proxy_in3_28867, proxy_sel_LOAD_28867, proxy_sel_STORE_28867, selector_MUX_16_PROXY_CTRL_3_i0_1_0_0, selector_MUX_19_UIdata_converter_FU_14_i0_0_0_0, selector_MUX_38_reg_0_0_0_0, selector_MUX_46_reg_2_0_0_0, selector_MUX_51_reg_7_0_0_0, selector_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0, selector_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0, selector_MUX_8_PROXY_CTRL_1_i0_1_0_0, fuselector_PROXY_CTRL_0_i0_LOAD, fuselector_PROXY_CTRL_0_i0_STORE, fuselector_PROXY_CTRL_1_i0_LOAD, fuselector_PROXY_CTRL_1_i0_STORE, fuselector_PROXY_CTRL_2_i0_LOAD, fuselector_PROXY_CTRL_2_i0_STORE, fuselector_PROXY_CTRL_3_i0_LOAD, fuselector_PROXY_CTRL_3_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_remove_min_28873_29303);
  parameter MEM_var_28861_28879=128, MEM_var_28864_28877=640, MEM_var_28866_28877=896, MEM_var_28867_28877=1024;
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
  output [10:0] proxy_in2_28861;
  output [3:0] proxy_in3_28861;
  output proxy_sel_LOAD_28861;
  output proxy_sel_STORE_28861;
  output [7:0] proxy_in1_28864;
  output [10:0] proxy_in2_28864;
  output [3:0] proxy_in3_28864;
  output proxy_sel_LOAD_28864;
  output proxy_sel_STORE_28864;
  output [7:0] proxy_in1_28866;
  output [10:0] proxy_in2_28866;
  output [3:0] proxy_in3_28866;
  output proxy_sel_LOAD_28866;
  output proxy_sel_STORE_28866;
  output [7:0] proxy_in1_28867;
  output [10:0] proxy_in2_28867;
  output [3:0] proxy_in3_28867;
  output proxy_sel_LOAD_28867;
  output proxy_sel_STORE_28867;
  output OUT_CONDITION_remove_min_28873_29303;
  // Component and signal declarations
  wire [3:0] out_IUdata_converter_FU_15_i0_fu_remove_min_28873_30104;
  wire [7:0] out_IUdata_converter_FU_18_i0_fu_remove_min_28873_30141;
  wire [10:0] out_MUX_16_PROXY_CTRL_3_i0_1_0_0;
  wire [3:0] out_MUX_19_UIdata_converter_FU_14_i0_0_0_0;
  wire [7:0] out_MUX_38_reg_0_0_0_0;
  wire [3:0] out_MUX_46_reg_2_0_0_0;
  wire [7:0] out_MUX_51_reg_7_0_0_0;
  wire [3:0] out_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0;
  wire [3:0] out_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0;
  wire [10:0] out_MUX_8_PROXY_CTRL_1_i0_1_0_0;
  wire [7:0] out_PROXY_CTRL_1_i0_PROXY_CTRL_1_i0;
  wire [7:0] out_PROXY_CTRL_2_i0_PROXY_CTRL_2_i0;
  wire [7:0] out_PROXY_CTRL_3_i0_PROXY_CTRL_3_i0;
  wire signed [4:0] out_UIdata_converter_FU_14_i0_fu_remove_min_28873_29261;
  wire signed [8:0] out_UIdata_converter_FU_17_i0_fu_remove_min_28873_29285;
  wire [11:0] out_UUdata_converter_FU_10_i0_fu_remove_min_28873_30138;
  wire [9:0] out_addr_expr_FU_6_i0_fu_remove_min_28873_30097;
  wire [7:0] out_addr_expr_FU_7_i0_fu_remove_min_28873_30122;
  wire [9:0] out_addr_expr_FU_8_i0_fu_remove_min_28873_30126;
  wire [11:0] out_addr_expr_FU_9_i0_fu_remove_min_28873_30151;
  wire signed [7:0] out_cond_expr_FU_8_8_8_8_20_i0_fu_remove_min_28873_30513;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [9:0] out_const_10;
  wire [9:0] out_const_11;
  wire [7:0] out_const_2;
  wire [4:0] out_const_3;
  wire [7:0] out_const_4;
  wire out_const_5;
  wire [3:0] out_const_6;
  wire [10:0] out_const_7;
  wire [1:0] out_const_8;
  wire [7:0] out_const_9;
  wire [10:0] out_conv_out_addr_expr_FU_6_i0_fu_remove_min_28873_30097_10_11;
  wire [31:0] out_conv_out_const_10_10_32;
  wire [31:0] out_conv_out_const_11_10_32;
  wire [3:0] out_conv_out_const_3_5_4;
  wire [31:0] out_conv_out_const_7_11_32;
  wire [31:0] out_conv_out_const_9_8_32;
  wire [10:0] out_conv_out_reg_10_reg_10_8_11;
  wire [10:0] out_conv_out_reg_11_reg_11_10_11;
  wire [10:0] out_conv_out_reg_9_reg_9_10_11;
  wire [3:0] out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_2_1_4;
  wire [7:0] out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_0;
  wire [7:0] out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_1;
  wire out_le_expr_FU_8_8_8_21_i0_fu_remove_min_28873_29264;
  wire out_ne_expr_FU_8_0_8_22_i0_fu_remove_min_28873_29263;
  wire signed [7:0] out_plus_expr_FU_8_0_8_23_i0_fu_remove_min_28873_29279;
  wire out_read_cond_FU_16_i0_fu_remove_min_28873_29303;
  wire [7:0] out_reg_0_reg_0;
  wire [7:0] out_reg_10_reg_10;
  wire [9:0] out_reg_11_reg_11;
  wire [11:0] out_reg_12_reg_12;
  wire [7:0] out_reg_13_reg_13;
  wire [7:0] out_reg_14_reg_14;
  wire [10:0] out_reg_15_reg_15;
  wire [10:0] out_reg_16_reg_16;
  wire [3:0] out_reg_2_reg_2;
  wire [3:0] out_reg_3_reg_3;
  wire [7:0] out_reg_4_reg_4;
  wire out_reg_5_reg_5;
  wire out_reg_6_reg_6;
  wire [7:0] out_reg_7_reg_7;
  wire [9:0] out_reg_9_reg_9;
  wire [0:0] out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_2;
  wire [0:0] out_ui_bit_and_expr_FU_1_1_1_24_i0_fu_remove_min_28873_29265;
  wire [7:0] out_ui_cond_expr_FU_8_8_8_8_25_i0_fu_remove_min_28873_30515;
  wire out_ui_ne_expr_FU_8_0_8_26_i0_fu_remove_min_28873_30270;
  wire [3:0] out_ui_plus_expr_FU_8_0_8_27_i0_fu_remove_min_28873_29259;
  wire [10:0] out_ui_pointer_plus_expr_FU_16_16_16_28_i0_fu_remove_min_28873_30110;
  wire [10:0] out_ui_pointer_plus_expr_FU_16_16_16_28_i1_fu_remove_min_28873_30147;
  wire [7:0] out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_3;
  wire [7:0] out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_4;
  wire [7:0] sig_in_bus_mergerproxy_in1_288610_0;
  wire [7:0] sig_in_bus_mergerproxy_in1_288641_0;
  wire [7:0] sig_in_bus_mergerproxy_in1_288662_0;
  wire [7:0] sig_in_bus_mergerproxy_in1_288673_0;
  wire [10:0] sig_in_bus_mergerproxy_in2_288614_0;
  wire [10:0] sig_in_bus_mergerproxy_in2_288645_0;
  wire [10:0] sig_in_bus_mergerproxy_in2_288666_0;
  wire [10:0] sig_in_bus_mergerproxy_in2_288677_0;
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
  wire [10:0] sig_out_bus_mergerproxy_in2_288614_;
  wire [10:0] sig_out_bus_mergerproxy_in2_288645_;
  wire [10:0] sig_out_bus_mergerproxy_in2_288666_;
  wire [10:0] sig_out_bus_mergerproxy_in2_288677_;
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
  MUX_GATE #(.BITSIZE_in1(11), .BITSIZE_in2(11), .BITSIZE_out1(11)) MUX_16_PROXY_CTRL_3_i0_1_0_0 (.out1(out_MUX_16_PROXY_CTRL_3_i0_1_0_0), .sel(selector_MUX_16_PROXY_CTRL_3_i0_1_0_0), .in1(out_reg_16_reg_16), .in2(out_reg_15_reg_15));
  MUX_GATE #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(4)) MUX_19_UIdata_converter_FU_14_i0_0_0_0 (.out1(out_MUX_19_UIdata_converter_FU_14_i0_0_0_0), .sel(selector_MUX_19_UIdata_converter_FU_14_i0_0_0_0), .in1(out_reg_3_reg_3), .in2(out_reg_2_reg_2));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_38_reg_0_0_0_0 (.out1(out_MUX_38_reg_0_0_0_0), .sel(selector_MUX_38_reg_0_0_0_0), .in1(out_PROXY_CTRL_1_i0_PROXY_CTRL_1_i0), .in2(out_ui_cond_expr_FU_8_8_8_8_25_i0_fu_remove_min_28873_30515));
  MUX_GATE #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(4)) MUX_46_reg_2_0_0_0 (.out1(out_MUX_46_reg_2_0_0_0), .sel(selector_MUX_46_reg_2_0_0_0), .in1(out_reg_3_reg_3), .in2(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_2_1_4));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_51_reg_7_0_0_0 (.out1(out_MUX_51_reg_7_0_0_0), .sel(selector_MUX_51_reg_7_0_0_0), .in1(out_const_4), .in2(out_cond_expr_FU_8_8_8_8_20_i0_fu_remove_min_28873_30513));
  MUX_GATE #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(4)) MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0 (.out1(out_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0), .sel(selector_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0), .in1(out_reg_3_reg_3), .in2(out_reg_2_reg_2));
  MUX_GATE #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(4)) MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0 (.out1(out_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0), .sel(selector_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0), .in1(out_reg_3_reg_3), .in2(out_reg_2_reg_2));
  MUX_GATE #(.BITSIZE_in1(11), .BITSIZE_in2(11), .BITSIZE_out1(11)) MUX_8_PROXY_CTRL_1_i0_1_0_0 (.out1(out_MUX_8_PROXY_CTRL_1_i0_1_0_0), .sel(selector_MUX_8_PROXY_CTRL_1_i0_1_0_0), .in1(out_conv_out_reg_9_reg_9_10_11), .in2(out_conv_out_addr_expr_FU_6_i0_fu_remove_min_28873_30097_10_11));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(11), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(11), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_0_i0 (.proxy_in1(sig_in_bus_mergerproxy_in1_288610_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288614_0), .proxy_in3(sig_in_bus_mergerproxy_in3_288618_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_2886112_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_2886116_0), .in1(out_vb_assign_conn_obj_2_ASSIGN_VECTOR_BOOL_FU_vb_assign_4), .in2(out_conv_out_reg_10_reg_10_8_11), .in3(out_conv_out_const_3_5_4), .in4(out_const_5), .sel_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .proxy_out1(proxy_out1_28861));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(11), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(11), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_1_i0 (.out1(out_PROXY_CTRL_1_i0_PROXY_CTRL_1_i0), .proxy_in1(sig_in_bus_mergerproxy_in1_288641_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288645_0), .proxy_in3(sig_in_bus_mergerproxy_in3_288649_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_2886413_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_2886417_0), .in1(out_vb_assign_conn_obj_1_ASSIGN_VECTOR_BOOL_FU_vb_assign_3), .in2(out_MUX_8_PROXY_CTRL_1_i0_1_0_0), .in3(out_conv_out_const_3_5_4), .in4(out_const_5), .sel_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .proxy_out1(proxy_out1_28864));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(11), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(11), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_2_i0 (.out1(out_PROXY_CTRL_2_i0_PROXY_CTRL_2_i0), .proxy_in1(sig_in_bus_mergerproxy_in1_288662_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288666_0), .proxy_in3(sig_in_bus_mergerproxy_in3_2886610_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_2886614_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_2886618_0), .in1(out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_0), .in2(out_conv_out_reg_11_reg_11_10_11), .in3(out_conv_out_const_3_5_4), .in4(out_const_5), .sel_LOAD(fuselector_PROXY_CTRL_2_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_2_i0_STORE), .proxy_out1(proxy_out1_28866));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(11), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(11), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_3_i0 (.out1(out_PROXY_CTRL_3_i0_PROXY_CTRL_3_i0), .proxy_in1(sig_in_bus_mergerproxy_in1_288673_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288677_0), .proxy_in3(sig_in_bus_mergerproxy_in3_2886711_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_2886715_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_2886719_0), .in1(out_iu_conv_conn_obj_4_IUdata_converter_FU_iu_conv_1), .in2(out_MUX_16_PROXY_CTRL_3_i0_1_0_0), .in3(out_conv_out_const_3_5_4), .in4(out_const_5), .sel_LOAD(fuselector_PROXY_CTRL_3_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_3_i0_STORE), .proxy_out1(proxy_out1_28867));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in1_288610_ (.out1(sig_out_bus_mergerproxy_in1_288610_), .in1({sig_in_bus_mergerproxy_in1_288610_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in1_288641_ (.out1(sig_out_bus_mergerproxy_in1_288641_), .in1({sig_in_bus_mergerproxy_in1_288641_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in1_288662_ (.out1(sig_out_bus_mergerproxy_in1_288662_), .in1({sig_in_bus_mergerproxy_in1_288662_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in1_288673_ (.out1(sig_out_bus_mergerproxy_in1_288673_), .in1({sig_in_bus_mergerproxy_in1_288673_0}));
  bus_merger #(.BITSIZE_in1(11), .PORTSIZE_in1(1), .BITSIZE_out1(11)) bus_mergerproxy_in2_288614_ (.out1(sig_out_bus_mergerproxy_in2_288614_), .in1({sig_in_bus_mergerproxy_in2_288614_0}));
  bus_merger #(.BITSIZE_in1(11), .PORTSIZE_in1(1), .BITSIZE_out1(11)) bus_mergerproxy_in2_288645_ (.out1(sig_out_bus_mergerproxy_in2_288645_), .in1({sig_in_bus_mergerproxy_in2_288645_0}));
  bus_merger #(.BITSIZE_in1(11), .PORTSIZE_in1(1), .BITSIZE_out1(11)) bus_mergerproxy_in2_288666_ (.out1(sig_out_bus_mergerproxy_in2_288666_), .in1({sig_in_bus_mergerproxy_in2_288666_0}));
  bus_merger #(.BITSIZE_in1(11), .PORTSIZE_in1(1), .BITSIZE_out1(11)) bus_mergerproxy_in2_288677_ (.out1(sig_out_bus_mergerproxy_in2_288677_), .in1({sig_in_bus_mergerproxy_in2_288677_0}));
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
  constant_value #(.BITSIZE_out1(10), .value(MEM_var_28864_28877)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(10), .value(MEM_var_28866_28877)) const_11 (.out1(out_const_11));
  constant_value #(.BITSIZE_out1(8), .value(8'b00001010)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(8), .value(8'b01111111)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(4), .value(4'b1010)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(11), .value(MEM_var_28867_28877)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28861_28879)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(11)) conv_out_addr_expr_FU_6_i0_fu_remove_min_28873_30097_10_11 (.out1(out_conv_out_addr_expr_FU_6_i0_fu_remove_min_28873_30097_10_11), .in1(out_addr_expr_FU_6_i0_fu_remove_min_28873_30097));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(32)) conv_out_const_10_10_32 (.out1(out_conv_out_const_10_10_32), .in1(out_const_10));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(32)) conv_out_const_11_10_32 (.out1(out_conv_out_const_11_10_32), .in1(out_const_11));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_3_5_4 (.out1(out_conv_out_const_3_5_4), .in1(out_const_3));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(32)) conv_out_const_7_11_32 (.out1(out_conv_out_const_7_11_32), .in1(out_const_7));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_9_8_32 (.out1(out_conv_out_const_9_8_32), .in1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(11)) conv_out_reg_10_reg_10_8_11 (.out1(out_conv_out_reg_10_reg_10_8_11), .in1(out_reg_10_reg_10));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(11)) conv_out_reg_11_reg_11_10_11 (.out1(out_conv_out_reg_11_reg_11_10_11), .in1(out_reg_11_reg_11));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(11)) conv_out_reg_9_reg_9_10_11 (.out1(out_conv_out_reg_9_reg_9_10_11), .in1(out_reg_9_reg_9));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(4)) conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_2_1_4 (.out1(out_conv_out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_2_1_4), .in1(out_u_assign_conn_obj_0_ASSIGN_UNSIGNED_FU_u_assign_2));
  ui_plus_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(1), .BITSIZE_out1(4)) fu_remove_min_28873_29259 (.out1(out_ui_plus_expr_FU_8_0_8_27_i0_fu_remove_min_28873_29259), .in1(out_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0), .in2(out_const_5));
  UIdata_converter_FU #(.BITSIZE_in1(4), .BITSIZE_out1(5)) fu_remove_min_28873_29261 (.out1(out_UIdata_converter_FU_14_i0_fu_remove_min_28873_29261), .in1(out_MUX_19_UIdata_converter_FU_14_i0_0_0_0));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_remove_min_28873_29263 (.out1(out_ne_expr_FU_8_0_8_22_i0_fu_remove_min_28873_29263), .in1(out_PROXY_CTRL_3_i0_PROXY_CTRL_3_i0), .in2(out_const_0));
  le_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_remove_min_28873_29264 (.out1(out_le_expr_FU_8_8_8_21_i0_fu_remove_min_28873_29264), .in1(out_PROXY_CTRL_3_i0_PROXY_CTRL_3_i0), .in2(out_reg_7_reg_7));
  ui_bit_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_remove_min_28873_29265 (.out1(out_ui_bit_and_expr_FU_1_1_1_24_i0_fu_remove_min_28873_29265), .in1(out_reg_6_reg_6), .in2(out_reg_5_reg_5));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_remove_min_28873_29279 (.out1(out_plus_expr_FU_8_0_8_23_i0_fu_remove_min_28873_29279), .in1(out_PROXY_CTRL_2_i0_PROXY_CTRL_2_i0), .in2(out_const_8));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_remove_min_28873_29285 (.out1(out_UIdata_converter_FU_17_i0_fu_remove_min_28873_29285), .in1(out_PROXY_CTRL_1_i0_PROXY_CTRL_1_i0));
  read_cond_FU #(.BITSIZE_in1(1)) fu_remove_min_28873_29303 (.out1(out_read_cond_FU_16_i0_fu_remove_min_28873_29303), .in1(out_ui_ne_expr_FU_8_0_8_26_i0_fu_remove_min_28873_30270));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(10)) fu_remove_min_28873_30097 (.out1(out_addr_expr_FU_6_i0_fu_remove_min_28873_30097), .in1(out_conv_out_const_10_10_32));
  IUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) fu_remove_min_28873_30104 (.out1(out_IUdata_converter_FU_15_i0_fu_remove_min_28873_30104), .in1(out_UIdata_converter_FU_14_i0_fu_remove_min_28873_29261));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(12), .BITSIZE_in2(4), .BITSIZE_out1(11), .LSB_PARAMETER(0)) fu_remove_min_28873_30110 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_28_i0_fu_remove_min_28873_30110), .in1(out_reg_12_reg_12), .in2(out_IUdata_converter_FU_15_i0_fu_remove_min_28873_30104));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_remove_min_28873_30122 (.out1(out_addr_expr_FU_7_i0_fu_remove_min_28873_30122), .in1(out_conv_out_const_9_8_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(10)) fu_remove_min_28873_30126 (.out1(out_addr_expr_FU_8_i0_fu_remove_min_28873_30126), .in1(out_conv_out_const_11_10_32));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(12)) fu_remove_min_28873_30138 (.out1(out_UUdata_converter_FU_10_i0_fu_remove_min_28873_30138), .in1(out_addr_expr_FU_9_i0_fu_remove_min_28873_30151));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_remove_min_28873_30141 (.out1(out_IUdata_converter_FU_18_i0_fu_remove_min_28873_30141), .in1(out_UIdata_converter_FU_17_i0_fu_remove_min_28873_29285));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(12), .BITSIZE_in2(8), .BITSIZE_out1(11), .LSB_PARAMETER(0)) fu_remove_min_28873_30147 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_28_i1_fu_remove_min_28873_30147), .in1(out_reg_12_reg_12), .in2(out_reg_14_reg_14));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(12)) fu_remove_min_28873_30151 (.out1(out_addr_expr_FU_9_i0_fu_remove_min_28873_30151), .in1(out_conv_out_const_7_11_32));
  ui_ne_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(1)) fu_remove_min_28873_30270 (.out1(out_ui_ne_expr_FU_8_0_8_26_i0_fu_remove_min_28873_30270), .in1(out_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0), .in2(out_const_6));
  cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_remove_min_28873_30513 (.out1(out_cond_expr_FU_8_8_8_8_20_i0_fu_remove_min_28873_30513), .in1(out_ui_bit_and_expr_FU_1_1_1_24_i0_fu_remove_min_28873_29265), .in2(out_reg_4_reg_4), .in3(out_reg_7_reg_7));
  ui_cond_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(4), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_remove_min_28873_30515 (.out1(out_ui_cond_expr_FU_8_8_8_8_25_i0_fu_remove_min_28873_30515), .in1(out_ui_bit_and_expr_FU_1_1_1_24_i0_fu_remove_min_28873_29265), .in2(out_reg_2_reg_2), .in3(out_reg_0_reg_0));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_MUX_38_reg_0_0_0_0), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_1 (.clock(clock), .reset(reset), .in1(8'b00000000), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_7_i0_fu_remove_min_28873_30122), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_8_i0_fu_remove_min_28873_30126), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(12), .BITSIZE_out1(12)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_10_i0_fu_remove_min_28873_30138), .wenable(wrenable_reg_12));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_0_8_23_i0_fu_remove_min_28873_29279), .wenable(wrenable_reg_13));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_18_i0_fu_remove_min_28873_30141), .wenable(wrenable_reg_14));
  register_STD #(.BITSIZE_in1(11), .BITSIZE_out1(11)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_28_i1_fu_remove_min_28873_30147), .wenable(wrenable_reg_15));
  register_SE #(.BITSIZE_in1(11), .BITSIZE_out1(11)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_28_i0_fu_remove_min_28873_30110), .wenable(wrenable_reg_16));
  register_SE #(.BITSIZE_in1(4), .BITSIZE_out1(4)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_MUX_46_reg_2_0_0_0), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(4), .BITSIZE_out1(4)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_27_i0_fu_remove_min_28873_29259), .wenable(wrenable_reg_3));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_PROXY_CTRL_3_i0_PROXY_CTRL_3_i0), .wenable(wrenable_reg_4));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_ne_expr_FU_8_0_8_22_i0_fu_remove_min_28873_29263), .wenable(wrenable_reg_5));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_le_expr_FU_8_8_8_21_i0_fu_remove_min_28873_29264), .wenable(wrenable_reg_6));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_MUX_51_reg_7_0_0_0), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_8 (.clock(clock), .reset(reset), .in1(8'b00000000), .wenable(wrenable_reg_8));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_6_i0_fu_remove_min_28873_30097), .wenable(wrenable_reg_9));
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
  assign OUT_CONDITION_remove_min_28873_29303 = out_read_cond_FU_16_i0_fu_remove_min_28873_29303;

endmodule

// FSM based controller description for remove_min
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_remove_min(done_port, selector_MUX_16_PROXY_CTRL_3_i0_1_0_0, selector_MUX_19_UIdata_converter_FU_14_i0_0_0_0, selector_MUX_38_reg_0_0_0_0, selector_MUX_46_reg_2_0_0_0, selector_MUX_51_reg_7_0_0_0, selector_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0, selector_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0, selector_MUX_8_PROXY_CTRL_1_i0_1_0_0, fuselector_PROXY_CTRL_0_i0_LOAD, fuselector_PROXY_CTRL_0_i0_STORE, fuselector_PROXY_CTRL_1_i0_LOAD, fuselector_PROXY_CTRL_1_i0_STORE, fuselector_PROXY_CTRL_2_i0_LOAD, fuselector_PROXY_CTRL_2_i0_STORE, fuselector_PROXY_CTRL_3_i0_LOAD, fuselector_PROXY_CTRL_3_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_remove_min_28873_29303, clock, reset, start_port);
  // IN
  input OUT_CONDITION_remove_min_28873_29303;
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
          if (OUT_CONDITION_remove_min_28873_29303 == 1'b1)
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
          if (OUT_CONDITION_remove_min_28873_29303 == 1'b1)
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
  parameter MEM_var_28861_28879=128, MEM_var_28864_28877=640, MEM_var_28866_28877=896, MEM_var_28867_28877=1024;
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
  output [10:0] proxy_in2_28861;
  output [3:0] proxy_in3_28861;
  output proxy_sel_LOAD_28861;
  output proxy_sel_STORE_28861;
  output [7:0] proxy_in1_28864;
  output [10:0] proxy_in2_28864;
  output [3:0] proxy_in3_28864;
  output proxy_sel_LOAD_28864;
  output proxy_sel_STORE_28864;
  output [7:0] proxy_in1_28866;
  output [10:0] proxy_in2_28866;
  output [3:0] proxy_in3_28866;
  output proxy_sel_LOAD_28866;
  output proxy_sel_STORE_28866;
  output [7:0] proxy_in1_28867;
  output [10:0] proxy_in2_28867;
  output [3:0] proxy_in3_28867;
  output proxy_sel_LOAD_28867;
  output proxy_sel_STORE_28867;
  // Component and signal declarations
  wire OUT_CONDITION_remove_min_28873_29303;
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
  
  controller_remove_min Controller_i (.done_port(done_delayed_REG_signal_in), .selector_MUX_16_PROXY_CTRL_3_i0_1_0_0(selector_MUX_16_PROXY_CTRL_3_i0_1_0_0), .selector_MUX_19_UIdata_converter_FU_14_i0_0_0_0(selector_MUX_19_UIdata_converter_FU_14_i0_0_0_0), .selector_MUX_38_reg_0_0_0_0(selector_MUX_38_reg_0_0_0_0), .selector_MUX_46_reg_2_0_0_0(selector_MUX_46_reg_2_0_0_0), .selector_MUX_51_reg_7_0_0_0(selector_MUX_51_reg_7_0_0_0), .selector_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0(selector_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0), .selector_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0(selector_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0), .selector_MUX_8_PROXY_CTRL_1_i0_1_0_0(selector_MUX_8_PROXY_CTRL_1_i0_1_0_0), .fuselector_PROXY_CTRL_0_i0_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .fuselector_PROXY_CTRL_0_i0_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .fuselector_PROXY_CTRL_1_i0_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .fuselector_PROXY_CTRL_1_i0_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .fuselector_PROXY_CTRL_2_i0_LOAD(fuselector_PROXY_CTRL_2_i0_LOAD), .fuselector_PROXY_CTRL_2_i0_STORE(fuselector_PROXY_CTRL_2_i0_STORE), .fuselector_PROXY_CTRL_3_i0_LOAD(fuselector_PROXY_CTRL_3_i0_LOAD), .fuselector_PROXY_CTRL_3_i0_STORE(fuselector_PROXY_CTRL_3_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_remove_min_28873_29303(OUT_CONDITION_remove_min_28873_29303), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_remove_min #(.MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28864_28877(MEM_var_28864_28877), .MEM_var_28866_28877(MEM_var_28866_28877), .MEM_var_28867_28877(MEM_var_28867_28877)) Datapath_i (.proxy_in1_28861(proxy_in1_28861), .proxy_in2_28861(proxy_in2_28861), .proxy_in3_28861(proxy_in3_28861), .proxy_sel_LOAD_28861(proxy_sel_LOAD_28861), .proxy_sel_STORE_28861(proxy_sel_STORE_28861), .proxy_in1_28864(proxy_in1_28864), .proxy_in2_28864(proxy_in2_28864), .proxy_in3_28864(proxy_in3_28864), .proxy_sel_LOAD_28864(proxy_sel_LOAD_28864), .proxy_sel_STORE_28864(proxy_sel_STORE_28864), .proxy_in1_28866(proxy_in1_28866), .proxy_in2_28866(proxy_in2_28866), .proxy_in3_28866(proxy_in3_28866), .proxy_sel_LOAD_28866(proxy_sel_LOAD_28866), .proxy_sel_STORE_28866(proxy_sel_STORE_28866), .proxy_in1_28867(proxy_in1_28867), .proxy_in2_28867(proxy_in2_28867), .proxy_in3_28867(proxy_in3_28867), .proxy_sel_LOAD_28867(proxy_sel_LOAD_28867), .proxy_sel_STORE_28867(proxy_sel_STORE_28867), .OUT_CONDITION_remove_min_28873_29303(OUT_CONDITION_remove_min_28873_29303), .clock(clock), .reset(reset), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28864(proxy_out1_28864), .proxy_out1_28866(proxy_out1_28866), .proxy_out1_28867(proxy_out1_28867), .selector_MUX_16_PROXY_CTRL_3_i0_1_0_0(selector_MUX_16_PROXY_CTRL_3_i0_1_0_0), .selector_MUX_19_UIdata_converter_FU_14_i0_0_0_0(selector_MUX_19_UIdata_converter_FU_14_i0_0_0_0), .selector_MUX_38_reg_0_0_0_0(selector_MUX_38_reg_0_0_0_0), .selector_MUX_46_reg_2_0_0_0(selector_MUX_46_reg_2_0_0_0), .selector_MUX_51_reg_7_0_0_0(selector_MUX_51_reg_7_0_0_0), .selector_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0(selector_MUX_59_ui_ne_expr_FU_8_0_8_26_i0_0_0_0), .selector_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0(selector_MUX_61_ui_plus_expr_FU_8_0_8_27_i0_0_0_0), .selector_MUX_8_PROXY_CTRL_1_i0_1_0_0(selector_MUX_8_PROXY_CTRL_1_i0_1_0_0), .fuselector_PROXY_CTRL_0_i0_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .fuselector_PROXY_CTRL_0_i0_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .fuselector_PROXY_CTRL_1_i0_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .fuselector_PROXY_CTRL_1_i0_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .fuselector_PROXY_CTRL_2_i0_LOAD(fuselector_PROXY_CTRL_2_i0_LOAD), .fuselector_PROXY_CTRL_2_i0_STORE(fuselector_PROXY_CTRL_2_i0_STORE), .fuselector_PROXY_CTRL_3_i0_LOAD(fuselector_PROXY_CTRL_3_i0_LOAD), .fuselector_PROXY_CTRL_3_i0_STORE(fuselector_PROXY_CTRL_3_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Datapath RTL description for set_estimates
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_set_estimates(clock, reset, proxy_out1_28861, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_out1_28868, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, selector_MUX_24_reg_3_0_0_0, selector_MUX_3_PROXY_CTRL_0_i0_0_0_0, selector_MUX_4_PROXY_CTRL_0_i0_1_0_0, selector_MUX_7_PROXY_CTRL_1_i0_0_0_0, selector_MUX_8_PROXY_CTRL_1_i0_1_0_0, fuselector_PROXY_CTRL_0_i0_LOAD, fuselector_PROXY_CTRL_0_i0_STORE, fuselector_PROXY_CTRL_1_i0_LOAD, fuselector_PROXY_CTRL_1_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, OUT_CONDITION_set_estimates_28874_29313, OUT_CONDITION_set_estimates_28874_29342);
  parameter MEM_var_28861_28879=128, MEM_var_28868_28879=256;
  // IN
  input clock;
  input reset;
  input [7:0] proxy_out1_28861;
  input [7:0] proxy_out1_28868;
  input selector_MUX_24_reg_3_0_0_0;
  input selector_MUX_3_PROXY_CTRL_0_i0_0_0_0;
  input selector_MUX_4_PROXY_CTRL_0_i0_1_0_0;
  input selector_MUX_7_PROXY_CTRL_1_i0_0_0_0;
  input selector_MUX_8_PROXY_CTRL_1_i0_1_0_0;
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
  // OUT
  output [7:0] proxy_in1_28861;
  output [10:0] proxy_in2_28861;
  output [3:0] proxy_in3_28861;
  output proxy_sel_LOAD_28861;
  output proxy_sel_STORE_28861;
  output [7:0] proxy_in1_28868;
  output [10:0] proxy_in2_28868;
  output [3:0] proxy_in3_28868;
  output proxy_sel_LOAD_28868;
  output proxy_sel_STORE_28868;
  output OUT_CONDITION_set_estimates_28874_29313;
  output OUT_CONDITION_set_estimates_28874_29342;
  // Component and signal declarations
  wire [3:0] out_IUdata_converter_FU_13_i0_fu_set_estimates_28874_30218;
  wire [3:0] out_MUX_24_reg_3_0_0_0;
  wire [7:0] out_MUX_3_PROXY_CTRL_0_i0_0_0_0;
  wire [10:0] out_MUX_4_PROXY_CTRL_0_i0_1_0_0;
  wire [7:0] out_MUX_7_PROXY_CTRL_1_i0_0_0_0;
  wire [10:0] out_MUX_8_PROXY_CTRL_1_i0_1_0_0;
  wire signed [4:0] out_UIdata_converter_FU_12_i0_fu_set_estimates_28874_29338;
  wire [9:0] out_UUdata_converter_FU_14_i0_fu_set_estimates_28874_30202;
  wire [9:0] out_UUdata_converter_FU_6_i0_fu_set_estimates_28874_30215;
  wire [8:0] out_UUdata_converter_FU_7_i0_fu_set_estimates_28874_30159;
  wire [7:0] out_addr_expr_FU_4_i0_fu_set_estimates_28874_30155;
  wire [9:0] out_addr_expr_FU_5_i0_fu_set_estimates_28874_30232;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [8:0] out_const_10;
  wire [7:0] out_const_2;
  wire [4:0] out_const_3;
  wire [7:0] out_const_4;
  wire out_const_5;
  wire [1:0] out_const_6;
  wire [3:0] out_const_7;
  wire [1:0] out_const_8;
  wire [7:0] out_const_9;
  wire [10:0] out_conv_out_addr_expr_FU_4_i0_fu_set_estimates_28874_30155_8_11;
  wire [31:0] out_conv_out_const_10_9_32;
  wire [3:0] out_conv_out_const_3_5_4;
  wire [31:0] out_conv_out_const_9_8_32;
  wire [10:0] out_conv_out_reg_0_reg_0_8_11;
  wire [10:0] out_conv_out_reg_1_reg_1_9_11;
  wire [10:0] out_conv_out_reg_7_reg_7_9_11;
  wire [3:0] out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_1_4;
  wire [7:0] out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_0;
  wire [7:0] out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_1;
  wire out_read_cond_FU_15_i0_fu_set_estimates_28874_29342;
  wire out_read_cond_FU_9_i0_fu_set_estimates_28874_29313;
  wire [7:0] out_reg_0_reg_0;
  wire [8:0] out_reg_1_reg_1;
  wire [9:0] out_reg_2_reg_2;
  wire [3:0] out_reg_3_reg_3;
  wire [9:0] out_reg_4_reg_4;
  wire [3:0] out_reg_5_reg_5;
  wire out_reg_6_reg_6;
  wire [8:0] out_reg_7_reg_7;
  wire [0:0] out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2;
  wire [1:0] out_ui_bit_and_expr_FU_8_0_8_17_i0_fu_set_estimates_28874_30453;
  wire [6:0] out_ui_bit_ior_concat_expr_FU_18_i0_fu_set_estimates_28874_30239;
  wire out_ui_eq_expr_FU_8_0_8_19_i0_fu_set_estimates_28874_30272;
  wire [5:0] out_ui_lshift_expr_FU_8_0_8_20_i0_fu_set_estimates_28874_30236;
  wire [6:0] out_ui_lshift_expr_FU_8_0_8_20_i1_fu_set_estimates_28874_30450;
  wire [7:0] out_ui_lshift_expr_FU_8_0_8_21_i0_fu_set_estimates_28874_30242;
  wire out_ui_ne_expr_FU_8_0_8_22_i0_fu_set_estimates_28874_30274;
  wire [3:0] out_ui_plus_expr_FU_8_0_8_23_i0_fu_set_estimates_28874_29320;
  wire [4:0] out_ui_plus_expr_FU_8_8_8_24_i0_fu_set_estimates_28874_30447;
  wire [9:0] out_ui_pointer_plus_expr_FU_16_16_16_25_i0_fu_set_estimates_28874_30224;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_26_i0_fu_set_estimates_28874_30211;
  wire [3:0] out_ui_rshift_expr_FU_8_0_8_27_i0_fu_set_estimates_28874_30442;
  wire [1:0] out_ui_rshift_expr_FU_8_0_8_27_i1_fu_set_estimates_28874_30445;
  wire [7:0] out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_3;
  wire [7:0] out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_4;
  wire [7:0] sig_in_bus_mergerproxy_in1_288610_0;
  wire [7:0] sig_in_bus_mergerproxy_in1_288681_0;
  wire [10:0] sig_in_bus_mergerproxy_in2_288612_0;
  wire [10:0] sig_in_bus_mergerproxy_in2_288683_0;
  wire [3:0] sig_in_bus_mergerproxy_in3_288614_0;
  wire [3:0] sig_in_bus_mergerproxy_in3_288685_0;
  wire sig_in_bus_mergerproxy_sel_LOAD_288616_0;
  wire sig_in_bus_mergerproxy_sel_LOAD_288687_0;
  wire sig_in_bus_mergerproxy_sel_STORE_288618_0;
  wire sig_in_bus_mergerproxy_sel_STORE_288689_0;
  wire [7:0] sig_out_bus_mergerproxy_in1_288610_;
  wire [7:0] sig_out_bus_mergerproxy_in1_288681_;
  wire [10:0] sig_out_bus_mergerproxy_in2_288612_;
  wire [10:0] sig_out_bus_mergerproxy_in2_288683_;
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
  MUX_GATE #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(4)) MUX_24_reg_3_0_0_0 (.out1(out_MUX_24_reg_3_0_0_0), .sel(selector_MUX_24_reg_3_0_0_0), .in1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_1_4), .in2(out_ui_plus_expr_FU_8_0_8_23_i0_fu_set_estimates_28874_29320));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_3_PROXY_CTRL_0_i0_0_0_0 (.out1(out_MUX_3_PROXY_CTRL_0_i0_0_0_0), .sel(selector_MUX_3_PROXY_CTRL_0_i0_0_0_0), .in1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_3), .in2(out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_4));
  MUX_GATE #(.BITSIZE_in1(11), .BITSIZE_in2(11), .BITSIZE_out1(11)) MUX_4_PROXY_CTRL_0_i0_1_0_0 (.out1(out_MUX_4_PROXY_CTRL_0_i0_1_0_0), .sel(selector_MUX_4_PROXY_CTRL_0_i0_1_0_0), .in1(out_conv_out_reg_0_reg_0_8_11), .in2(out_conv_out_addr_expr_FU_4_i0_fu_set_estimates_28874_30155_8_11));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_7_PROXY_CTRL_1_i0_0_0_0 (.out1(out_MUX_7_PROXY_CTRL_1_i0_0_0_0), .sel(selector_MUX_7_PROXY_CTRL_1_i0_0_0_0), .in1(out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_0), .in2(out_iu_conv_conn_obj_3_IUdata_converter_FU_iu_conv_1));
  MUX_GATE #(.BITSIZE_in1(11), .BITSIZE_in2(11), .BITSIZE_out1(11)) MUX_8_PROXY_CTRL_1_i0_1_0_0 (.out1(out_MUX_8_PROXY_CTRL_1_i0_1_0_0), .sel(selector_MUX_8_PROXY_CTRL_1_i0_1_0_0), .in1(out_conv_out_reg_7_reg_7_9_11), .in2(out_conv_out_reg_1_reg_1_9_11));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(11), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(11), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_0_i0 (.proxy_in1(sig_in_bus_mergerproxy_in1_288610_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288612_0), .proxy_in3(sig_in_bus_mergerproxy_in3_288614_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_288616_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_288618_0), .in1(out_MUX_3_PROXY_CTRL_0_i0_0_0_0), .in2(out_MUX_4_PROXY_CTRL_0_i0_1_0_0), .in3(out_conv_out_const_3_5_4), .in4(out_const_5), .sel_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .proxy_out1(proxy_out1_28861));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(11), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(11), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_1_i0 (.proxy_in1(sig_in_bus_mergerproxy_in1_288681_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288683_0), .proxy_in3(sig_in_bus_mergerproxy_in3_288685_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_288687_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_288689_0), .in1(out_MUX_7_PROXY_CTRL_1_i0_0_0_0), .in2(out_MUX_8_PROXY_CTRL_1_i0_1_0_0), .in3(out_conv_out_const_3_5_4), .in4(out_const_5), .sel_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .proxy_out1(proxy_out1_28868));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in1_288610_ (.out1(sig_out_bus_mergerproxy_in1_288610_), .in1({sig_in_bus_mergerproxy_in1_288610_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in1_288681_ (.out1(sig_out_bus_mergerproxy_in1_288681_), .in1({sig_in_bus_mergerproxy_in1_288681_0}));
  bus_merger #(.BITSIZE_in1(11), .PORTSIZE_in1(1), .BITSIZE_out1(11)) bus_mergerproxy_in2_288612_ (.out1(sig_out_bus_mergerproxy_in2_288612_), .in1({sig_in_bus_mergerproxy_in2_288612_0}));
  bus_merger #(.BITSIZE_in1(11), .PORTSIZE_in1(1), .BITSIZE_out1(11)) bus_mergerproxy_in2_288683_ (.out1(sig_out_bus_mergerproxy_in2_288683_), .in1({sig_in_bus_mergerproxy_in2_288683_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(1), .BITSIZE_out1(4)) bus_mergerproxy_in3_288614_ (.out1(sig_out_bus_mergerproxy_in3_288614_), .in1({sig_in_bus_mergerproxy_in3_288614_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(1), .BITSIZE_out1(4)) bus_mergerproxy_in3_288685_ (.out1(sig_out_bus_mergerproxy_in3_288685_), .in1({sig_in_bus_mergerproxy_in3_288685_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD_288616_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288616_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288616_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD_288687_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288687_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288687_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE_288618_ (.out1(sig_out_bus_mergerproxy_sel_STORE_288618_), .in1({sig_in_bus_mergerproxy_sel_STORE_288618_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE_288689_ (.out1(sig_out_bus_mergerproxy_sel_STORE_288689_), .in1({sig_in_bus_mergerproxy_sel_STORE_288689_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(9), .value(MEM_var_28868_28879)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(8), .value(8'b00001010)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(8), .value(8'b01111111)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(2), .value(2'b10)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(4), .value(4'b1010)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28861_28879)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(11)) conv_out_addr_expr_FU_4_i0_fu_set_estimates_28874_30155_8_11 (.out1(out_conv_out_addr_expr_FU_4_i0_fu_set_estimates_28874_30155_8_11), .in1(out_addr_expr_FU_4_i0_fu_set_estimates_28874_30155));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(32)) conv_out_const_10_9_32 (.out1(out_conv_out_const_10_9_32), .in1(out_const_10));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_3_5_4 (.out1(out_conv_out_const_3_5_4), .in1(out_const_3));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_9_8_32 (.out1(out_conv_out_const_9_8_32), .in1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(11)) conv_out_reg_0_reg_0_8_11 (.out1(out_conv_out_reg_0_reg_0_8_11), .in1(out_reg_0_reg_0));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(11)) conv_out_reg_1_reg_1_9_11 (.out1(out_conv_out_reg_1_reg_1_9_11), .in1(out_reg_1_reg_1));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(11)) conv_out_reg_7_reg_7_9_11 (.out1(out_conv_out_reg_7_reg_7_9_11), .in1(out_reg_7_reg_7));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(4)) conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_1_4 (.out1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_1_4), .in1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2));
  read_cond_FU #(.BITSIZE_in1(1)) fu_set_estimates_28874_29313 (.out1(out_read_cond_FU_9_i0_fu_set_estimates_28874_29313), .in1(out_reg_6_reg_6));
  ui_plus_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(1), .BITSIZE_out1(4)) fu_set_estimates_28874_29320 (.out1(out_ui_plus_expr_FU_8_0_8_23_i0_fu_set_estimates_28874_29320), .in1(out_reg_3_reg_3), .in2(out_const_5));
  UIdata_converter_FU #(.BITSIZE_in1(4), .BITSIZE_out1(5)) fu_set_estimates_28874_29338 (.out1(out_UIdata_converter_FU_12_i0_fu_set_estimates_28874_29338), .in1(out_reg_3_reg_3));
  read_cond_FU #(.BITSIZE_in1(1)) fu_set_estimates_28874_29342 (.out1(out_read_cond_FU_15_i0_fu_set_estimates_28874_29342), .in1(out_ui_ne_expr_FU_8_0_8_22_i0_fu_set_estimates_28874_30274));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_set_estimates_28874_30155 (.out1(out_addr_expr_FU_4_i0_fu_set_estimates_28874_30155), .in1(out_conv_out_const_9_8_32));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(9)) fu_set_estimates_28874_30159 (.out1(out_UUdata_converter_FU_7_i0_fu_set_estimates_28874_30159), .in1(out_UUdata_converter_FU_6_i0_fu_set_estimates_28874_30215));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(10)) fu_set_estimates_28874_30202 (.out1(out_UUdata_converter_FU_14_i0_fu_set_estimates_28874_30202), .in1(out_ui_pointer_plus_expr_FU_16_16_16_25_i0_fu_set_estimates_28874_30224));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(4), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_set_estimates_28874_30211 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_26_i0_fu_set_estimates_28874_30211), .in1(out_reg_4_reg_4), .in2(out_reg_5_reg_5));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(10)) fu_set_estimates_28874_30215 (.out1(out_UUdata_converter_FU_6_i0_fu_set_estimates_28874_30215), .in1(out_addr_expr_FU_5_i0_fu_set_estimates_28874_30232));
  IUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) fu_set_estimates_28874_30218 (.out1(out_IUdata_converter_FU_13_i0_fu_set_estimates_28874_30218), .in1(out_UIdata_converter_FU_12_i0_fu_set_estimates_28874_29338));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(8), .BITSIZE_out1(10), .LSB_PARAMETER(0)) fu_set_estimates_28874_30224 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_25_i0_fu_set_estimates_28874_30224), .in1(out_reg_2_reg_2), .in2(out_ui_lshift_expr_FU_8_0_8_21_i0_fu_set_estimates_28874_30242));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(10)) fu_set_estimates_28874_30232 (.out1(out_addr_expr_FU_5_i0_fu_set_estimates_28874_30232), .in1(out_conv_out_const_10_9_32));
  ui_lshift_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_set_estimates_28874_30236 (.out1(out_ui_lshift_expr_FU_8_0_8_20_i0_fu_set_estimates_28874_30236), .in1(out_IUdata_converter_FU_13_i0_fu_set_estimates_28874_30218), .in2(out_const_6));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(7), .OFFSET_PARAMETER(2)) fu_set_estimates_28874_30239 (.out1(out_ui_bit_ior_concat_expr_FU_18_i0_fu_set_estimates_28874_30239), .in1(out_ui_lshift_expr_FU_8_0_8_20_i1_fu_set_estimates_28874_30450), .in2(out_ui_bit_and_expr_FU_8_0_8_17_i0_fu_set_estimates_28874_30453), .in3(out_const_6));
  ui_lshift_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(1), .BITSIZE_out1(8), .PRECISION(32)) fu_set_estimates_28874_30242 (.out1(out_ui_lshift_expr_FU_8_0_8_21_i0_fu_set_estimates_28874_30242), .in1(out_ui_bit_ior_concat_expr_FU_18_i0_fu_set_estimates_28874_30239), .in2(out_const_5));
  ui_eq_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_set_estimates_28874_30272 (.out1(out_ui_eq_expr_FU_8_0_8_19_i0_fu_set_estimates_28874_30272), .in1(out_reg_3_reg_3), .in2(out_const_0));
  ui_ne_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(1)) fu_set_estimates_28874_30274 (.out1(out_ui_ne_expr_FU_8_0_8_22_i0_fu_set_estimates_28874_30274), .in1(out_reg_3_reg_3), .in2(out_const_7));
  ui_rshift_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(2), .BITSIZE_out1(4), .PRECISION(32)) fu_set_estimates_28874_30442 (.out1(out_ui_rshift_expr_FU_8_0_8_27_i0_fu_set_estimates_28874_30442), .in1(out_ui_lshift_expr_FU_8_0_8_20_i0_fu_set_estimates_28874_30236), .in2(out_const_6));
  ui_rshift_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(2), .BITSIZE_out1(2), .PRECISION(32)) fu_set_estimates_28874_30445 (.out1(out_ui_rshift_expr_FU_8_0_8_27_i1_fu_set_estimates_28874_30445), .in1(out_IUdata_converter_FU_13_i0_fu_set_estimates_28874_30218), .in2(out_const_6));
  ui_plus_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(2), .BITSIZE_out1(5)) fu_set_estimates_28874_30447 (.out1(out_ui_plus_expr_FU_8_8_8_24_i0_fu_set_estimates_28874_30447), .in1(out_ui_rshift_expr_FU_8_0_8_27_i0_fu_set_estimates_28874_30442), .in2(out_ui_rshift_expr_FU_8_0_8_27_i1_fu_set_estimates_28874_30445));
  ui_lshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_out1(7), .PRECISION(32)) fu_set_estimates_28874_30450 (.out1(out_ui_lshift_expr_FU_8_0_8_20_i1_fu_set_estimates_28874_30450), .in1(out_ui_plus_expr_FU_8_8_8_24_i0_fu_set_estimates_28874_30447), .in2(out_const_6));
  ui_bit_and_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_set_estimates_28874_30453 (.out1(out_ui_bit_and_expr_FU_8_0_8_17_i0_fu_set_estimates_28874_30453), .in1(out_IUdata_converter_FU_13_i0_fu_set_estimates_28874_30218), .in2(out_const_8));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_4_i0_fu_set_estimates_28874_30155), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_7_i0_fu_set_estimates_28874_30159), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_6_i0_fu_set_estimates_28874_30215), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(4), .BITSIZE_out1(4)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_MUX_24_reg_3_0_0_0), .wenable(wrenable_reg_3));
  register_STD #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_14_i0_fu_set_estimates_28874_30202), .wenable(wrenable_reg_4));
  register_STD #(.BITSIZE_in1(4), .BITSIZE_out1(4)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_13_i0_fu_set_estimates_28874_30218), .wenable(wrenable_reg_5));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_ui_eq_expr_FU_8_0_8_19_i0_fu_set_estimates_28874_30272), .wenable(wrenable_reg_6));
  register_STD #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_26_i0_fu_set_estimates_28874_30211), .wenable(wrenable_reg_7));
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
  assign OUT_CONDITION_set_estimates_28874_29313 = out_read_cond_FU_9_i0_fu_set_estimates_28874_29313;
  assign OUT_CONDITION_set_estimates_28874_29342 = out_read_cond_FU_15_i0_fu_set_estimates_28874_29342;

endmodule

// FSM based controller description for set_estimates
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_set_estimates(done_port, selector_MUX_24_reg_3_0_0_0, selector_MUX_3_PROXY_CTRL_0_i0_0_0_0, selector_MUX_4_PROXY_CTRL_0_i0_1_0_0, selector_MUX_7_PROXY_CTRL_1_i0_0_0_0, selector_MUX_8_PROXY_CTRL_1_i0_1_0_0, fuselector_PROXY_CTRL_0_i0_LOAD, fuselector_PROXY_CTRL_0_i0_STORE, fuselector_PROXY_CTRL_1_i0_LOAD, fuselector_PROXY_CTRL_1_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, OUT_CONDITION_set_estimates_28874_29313, OUT_CONDITION_set_estimates_28874_29342, clock, reset, start_port);
  // IN
  input OUT_CONDITION_set_estimates_28874_29313;
  input OUT_CONDITION_set_estimates_28874_29342;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_MUX_24_reg_3_0_0_0;
  output selector_MUX_3_PROXY_CTRL_0_i0_0_0_0;
  output selector_MUX_4_PROXY_CTRL_0_i0_1_0_0;
  output selector_MUX_7_PROXY_CTRL_1_i0_0_0_0;
  output selector_MUX_8_PROXY_CTRL_1_i0_1_0_0;
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
  parameter [5:0] S_0 = 6'b000001,
    S_4 = 6'b010000,
    S_5 = 6'b100000,
    S_1 = 6'b000010,
    S_3 = 6'b001000,
    S_2 = 6'b000100;
  reg [5:0] _present_state, _next_state;
  reg done_port;
  reg selector_MUX_24_reg_3_0_0_0;
  reg selector_MUX_3_PROXY_CTRL_0_i0_0_0_0;
  reg selector_MUX_4_PROXY_CTRL_0_i0_1_0_0;
  reg selector_MUX_7_PROXY_CTRL_1_i0_0_0_0;
  reg selector_MUX_8_PROXY_CTRL_1_i0_1_0_0;
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
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    selector_MUX_24_reg_3_0_0_0 = 1'b0;
    selector_MUX_3_PROXY_CTRL_0_i0_0_0_0 = 1'b0;
    selector_MUX_4_PROXY_CTRL_0_i0_1_0_0 = 1'b0;
    selector_MUX_7_PROXY_CTRL_1_i0_0_0_0 = 1'b0;
    selector_MUX_8_PROXY_CTRL_1_i0_1_0_0 = 1'b0;
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
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          selector_MUX_24_reg_3_0_0_0 = 1'b1;
          selector_MUX_3_PROXY_CTRL_0_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRL_0_i0_STORE = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          _next_state = S_4;
        end
        else
        begin
          selector_MUX_24_reg_3_0_0_0 = 1'bX;
          selector_MUX_3_PROXY_CTRL_0_i0_0_0_0 = 1'bX;
          selector_MUX_4_PROXY_CTRL_0_i0_1_0_0 = 1'bX;
          selector_MUX_7_PROXY_CTRL_1_i0_0_0_0 = 1'bX;
          selector_MUX_8_PROXY_CTRL_1_i0_1_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_2 = 1'bX;
          wrenable_reg_3 = 1'bX;
          wrenable_reg_4 = 1'bX;
          wrenable_reg_5 = 1'bX;
          wrenable_reg_6 = 1'bX;
          wrenable_reg_7 = 1'bX;
          _next_state = S_0;
        end
      S_4 :
        begin
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_6 = 1'b1;
          if (OUT_CONDITION_set_estimates_28874_29342 == 1'b1)
            begin
              _next_state = S_1;
            end
          else
            begin
              _next_state = S_5;
              done_port = 1'b1;
              wrenable_reg_3 = 1'b0;
              wrenable_reg_4 = 1'b0;
              wrenable_reg_5 = 1'b0;
              wrenable_reg_6 = 1'b0;
            end
        end
      S_5 :
        begin
          selector_MUX_4_PROXY_CTRL_0_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRL_0_i0_STORE = 1'b1;
          _next_state = S_0;
        end
      S_1 :
        begin
          wrenable_reg_7 = 1'b1;
          if (OUT_CONDITION_set_estimates_28874_29313 == 1'b1)
            begin
              _next_state = S_2;
              wrenable_reg_7 = 1'b0;
            end
          else
            begin
              _next_state = S_3;
            end
        end
      S_3 :
        begin
          selector_MUX_8_PROXY_CTRL_1_i0_1_0_0 = 1'b1;
          fuselector_PROXY_CTRL_1_i0_STORE = 1'b1;
          _next_state = S_4;
        end
      S_2 :
        begin
          selector_MUX_7_PROXY_CTRL_1_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRL_1_i0_STORE = 1'b1;
          _next_state = S_4;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_24_reg_3_0_0_0 = 1'bX;
          selector_MUX_3_PROXY_CTRL_0_i0_0_0_0 = 1'bX;
          selector_MUX_4_PROXY_CTRL_0_i0_1_0_0 = 1'bX;
          selector_MUX_7_PROXY_CTRL_1_i0_0_0_0 = 1'bX;
          selector_MUX_8_PROXY_CTRL_1_i0_1_0_0 = 1'bX;
          wrenable_reg_0 = 1'bX;
          wrenable_reg_1 = 1'bX;
          wrenable_reg_2 = 1'bX;
          wrenable_reg_3 = 1'bX;
          wrenable_reg_4 = 1'bX;
          wrenable_reg_5 = 1'bX;
          wrenable_reg_6 = 1'bX;
          wrenable_reg_7 = 1'bX;
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
  parameter MEM_var_28861_28879=128, MEM_var_28868_28879=256;
  // IN
  input clock;
  input reset;
  input start_port;
  input [7:0] proxy_out1_28861;
  input [7:0] proxy_out1_28868;
  // OUT
  output done_port;
  output [7:0] proxy_in1_28861;
  output [10:0] proxy_in2_28861;
  output [3:0] proxy_in3_28861;
  output proxy_sel_LOAD_28861;
  output proxy_sel_STORE_28861;
  output [7:0] proxy_in1_28868;
  output [10:0] proxy_in2_28868;
  output [3:0] proxy_in3_28868;
  output proxy_sel_LOAD_28868;
  output proxy_sel_STORE_28868;
  // Component and signal declarations
  wire OUT_CONDITION_set_estimates_28874_29313;
  wire OUT_CONDITION_set_estimates_28874_29342;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_PROXY_CTRL_0_i0_LOAD;
  wire fuselector_PROXY_CTRL_0_i0_STORE;
  wire fuselector_PROXY_CTRL_1_i0_LOAD;
  wire fuselector_PROXY_CTRL_1_i0_STORE;
  wire selector_MUX_24_reg_3_0_0_0;
  wire selector_MUX_3_PROXY_CTRL_0_i0_0_0_0;
  wire selector_MUX_4_PROXY_CTRL_0_i0_1_0_0;
  wire selector_MUX_7_PROXY_CTRL_1_i0_0_0_0;
  wire selector_MUX_8_PROXY_CTRL_1_i0_1_0_0;
  wire wrenable_reg_0;
  wire wrenable_reg_1;
  wire wrenable_reg_2;
  wire wrenable_reg_3;
  wire wrenable_reg_4;
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  wire wrenable_reg_7;
  
  controller_set_estimates Controller_i (.done_port(done_delayed_REG_signal_in), .selector_MUX_24_reg_3_0_0_0(selector_MUX_24_reg_3_0_0_0), .selector_MUX_3_PROXY_CTRL_0_i0_0_0_0(selector_MUX_3_PROXY_CTRL_0_i0_0_0_0), .selector_MUX_4_PROXY_CTRL_0_i0_1_0_0(selector_MUX_4_PROXY_CTRL_0_i0_1_0_0), .selector_MUX_7_PROXY_CTRL_1_i0_0_0_0(selector_MUX_7_PROXY_CTRL_1_i0_0_0_0), .selector_MUX_8_PROXY_CTRL_1_i0_1_0_0(selector_MUX_8_PROXY_CTRL_1_i0_1_0_0), .fuselector_PROXY_CTRL_0_i0_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .fuselector_PROXY_CTRL_0_i0_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .fuselector_PROXY_CTRL_1_i0_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .fuselector_PROXY_CTRL_1_i0_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .OUT_CONDITION_set_estimates_28874_29313(OUT_CONDITION_set_estimates_28874_29313), .OUT_CONDITION_set_estimates_28874_29342(OUT_CONDITION_set_estimates_28874_29342), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_set_estimates #(.MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28868_28879(MEM_var_28868_28879)) Datapath_i (.proxy_in1_28861(proxy_in1_28861), .proxy_in2_28861(proxy_in2_28861), .proxy_in3_28861(proxy_in3_28861), .proxy_sel_LOAD_28861(proxy_sel_LOAD_28861), .proxy_sel_STORE_28861(proxy_sel_STORE_28861), .proxy_in1_28868(proxy_in1_28868), .proxy_in2_28868(proxy_in2_28868), .proxy_in3_28868(proxy_in3_28868), .proxy_sel_LOAD_28868(proxy_sel_LOAD_28868), .proxy_sel_STORE_28868(proxy_sel_STORE_28868), .OUT_CONDITION_set_estimates_28874_29313(OUT_CONDITION_set_estimates_28874_29313), .OUT_CONDITION_set_estimates_28874_29342(OUT_CONDITION_set_estimates_28874_29342), .clock(clock), .reset(reset), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28868(proxy_out1_28868), .selector_MUX_24_reg_3_0_0_0(selector_MUX_24_reg_3_0_0_0), .selector_MUX_3_PROXY_CTRL_0_i0_0_0_0(selector_MUX_3_PROXY_CTRL_0_i0_0_0_0), .selector_MUX_4_PROXY_CTRL_0_i0_1_0_0(selector_MUX_4_PROXY_CTRL_0_i0_1_0_0), .selector_MUX_7_PROXY_CTRL_1_i0_0_0_0(selector_MUX_7_PROXY_CTRL_1_i0_0_0_0), .selector_MUX_8_PROXY_CTRL_1_i0_1_0_0(selector_MUX_8_PROXY_CTRL_1_i0_1_0_0), .fuselector_PROXY_CTRL_0_i0_LOAD(fuselector_PROXY_CTRL_0_i0_LOAD), .fuselector_PROXY_CTRL_0_i0_STORE(fuselector_PROXY_CTRL_0_i0_STORE), .fuselector_PROXY_CTRL_1_i0_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .fuselector_PROXY_CTRL_1_i0_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Datapath RTL description for astarF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_astarF(clock, reset, in_port_a, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, proxy_out1_28861, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, proxy_out1_28868, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_STORE, fuselector_BMEMORY_CTRL_59_i0_LOAD, fuselector_BMEMORY_CTRL_59_i0_STORE, selector_IN_UNBOUNDED_astarF_28877_29424, selector_IN_UNBOUNDED_astarF_28877_29425, selector_IN_UNBOUNDED_astarF_28877_29426, selector_IN_UNBOUNDED_astarF_28877_29438, selector_IN_UNBOUNDED_astarF_28877_29471, selector_IN_UNBOUNDED_astarF_28877_29481, selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0, selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1, selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0, selector_MUX_35_PROXY_CTRL_5_i0_0_0_0, selector_MUX_59_insert_81_i0_0_0_0, selector_MUX_60_insert_81_i0_1_0_0, fuselector_PROXY_CTRL_5_i0_LOAD, fuselector_PROXY_CTRL_5_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_29, wrenable_reg_3, wrenable_reg_30, wrenable_reg_31, wrenable_reg_32, wrenable_reg_33, wrenable_reg_34, wrenable_reg_35, wrenable_reg_36, wrenable_reg_37, wrenable_reg_38, wrenable_reg_39, wrenable_reg_4, wrenable_reg_40, wrenable_reg_41, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_astarF_28877_29440, OUT_CONDITION_astarF_28877_29562, OUT_CONDITION_astarF_28877_29569, OUT_CONDITION_astarF_28877_29584, OUT_CONDITION_astarF_28877_29587, OUT_UNBOUNDED_astarF_28877_29424, OUT_UNBOUNDED_astarF_28877_29425, OUT_UNBOUNDED_astarF_28877_29426, OUT_UNBOUNDED_astarF_28877_29438, OUT_UNBOUNDED_astarF_28877_29471, OUT_UNBOUNDED_astarF_28877_29481);
  parameter MEM_var_28861_28879=128, MEM_var_28862_28877=512, MEM_var_28864_28877=640, MEM_var_28865_28877=768, MEM_var_28866_28877=896, MEM_var_28867_28877=1024, MEM_var_28868_28879=256;
  // IN
  input clock;
  input reset;
  input [31:0] in_port_a;
  input S_oe_ram;
  input S_we_ram;
  input [10:0] S_addr_ram;
  input [7:0] S_Wdata_ram;
  input [3:0] S_data_ram_size;
  input [7:0] M_Rdata_ram;
  input M_DataRdy;
  input [7:0] Sin_Rdata_ram;
  input Sin_DataRdy;
  input [7:0] proxy_out1_28861;
  input Min_oe_ram;
  input Min_we_ram;
  input [10:0] Min_addr_ram;
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
  input selector_IN_UNBOUNDED_astarF_28877_29424;
  input selector_IN_UNBOUNDED_astarF_28877_29425;
  input selector_IN_UNBOUNDED_astarF_28877_29426;
  input selector_IN_UNBOUNDED_astarF_28877_29438;
  input selector_IN_UNBOUNDED_astarF_28877_29471;
  input selector_IN_UNBOUNDED_astarF_28877_29481;
  input selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0;
  input selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1;
  input selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0;
  input selector_MUX_35_PROXY_CTRL_5_i0_0_0_0;
  input selector_MUX_59_insert_81_i0_0_0_0;
  input selector_MUX_60_insert_81_i0_1_0_0;
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
  input wrenable_reg_40;
  input wrenable_reg_41;
  input wrenable_reg_5;
  input wrenable_reg_6;
  input wrenable_reg_7;
  input wrenable_reg_8;
  input wrenable_reg_9;
  // OUT
  output [7:0] Sout_Rdata_ram;
  output Sout_DataRdy;
  output [7:0] proxy_in1_28861;
  output [10:0] proxy_in2_28861;
  output [3:0] proxy_in3_28861;
  output proxy_sel_LOAD_28861;
  output proxy_sel_STORE_28861;
  output Mout_oe_ram;
  output Mout_we_ram;
  output [10:0] Mout_addr_ram;
  output [7:0] Mout_Wdata_ram;
  output [3:0] Mout_data_ram_size;
  output [7:0] proxy_in1_28868;
  output [10:0] proxy_in2_28868;
  output [3:0] proxy_in3_28868;
  output proxy_sel_LOAD_28868;
  output proxy_sel_STORE_28868;
  output OUT_CONDITION_astarF_28877_29440;
  output OUT_CONDITION_astarF_28877_29562;
  output OUT_CONDITION_astarF_28877_29569;
  output OUT_CONDITION_astarF_28877_29584;
  output OUT_CONDITION_astarF_28877_29587;
  output OUT_UNBOUNDED_astarF_28877_29424;
  output OUT_UNBOUNDED_astarF_28877_29425;
  output OUT_UNBOUNDED_astarF_28877_29426;
  output OUT_UNBOUNDED_astarF_28877_29438;
  output OUT_UNBOUNDED_astarF_28877_29471;
  output OUT_UNBOUNDED_astarF_28877_29481;
  // Component and signal declarations
  wire [7:0] out_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_array_28864_0;
  wire [7:0] out_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_array_28866_0;
  wire [7:0] out_BMEMORY_CTRL_59_i0_BMEMORY_CTRL_59_i0;
  wire signed [7:0] out_IIdata_converter_FU_22_i0_fu_astarF_28877_29565;
  wire signed [7:0] out_IIdata_converter_FU_26_i0_fu_astarF_28877_29564;
  wire signed [7:0] out_IIdata_converter_FU_27_i0_fu_astarF_28877_29568;
  wire signed [8:0] out_IIdata_converter_FU_33_i0_fu_astarF_28877_29487;
  wire signed [7:0] out_IIdata_converter_FU_35_i0_fu_astarF_28877_30293;
  wire signed [7:0] out_IIdata_converter_FU_36_i0_fu_astarF_28877_30284;
  wire signed [8:0] out_IIdata_converter_FU_37_i0_fu_astarF_28877_29474;
  wire signed [7:0] out_IIdata_converter_FU_38_i0_fu_astarF_28877_30299;
  wire [7:0] out_IUdata_converter_FU_21_i0_fu_astarF_28877_29682;
  wire [7:0] out_IUdata_converter_FU_32_i0_fu_astarF_28877_29751;
  wire [7:0] out_IUdata_converter_FU_34_i0_fu_astarF_28877_30290;
  wire [3:0] out_IUdata_converter_FU_49_i0_fu_astarF_28877_29661;
  wire [10:0] out_MUX_15_BMEMORY_CTRL_59_i0_1_0_0;
  wire [10:0] out_MUX_15_BMEMORY_CTRL_59_i0_1_0_1;
  wire [10:0] out_MUX_15_BMEMORY_CTRL_59_i0_1_1_0;
  wire [7:0] out_MUX_35_PROXY_CTRL_5_i0_0_0_0;
  wire [7:0] out_MUX_59_insert_81_i0_0_0_0;
  wire [7:0] out_MUX_60_insert_81_i0_1_0_0;
  wire [7:0] out_PROXY_CTRL_5_i0_PROXY_CTRL_5_i0;
  wire signed [8:0] out_UIdata_converter_FU_20_i0_fu_astarF_28877_29550;
  wire signed [8:0] out_UIdata_converter_FU_30_i0_fu_astarF_28877_29466;
  wire signed [4:0] out_UIdata_converter_FU_48_i0_fu_astarF_28877_29529;
  wire [31:0] out_UUdata_converter_FU_13_i0_fu_astarF_28877_29769;
  wire [7:0] out_UUdata_converter_FU_18_i0_fu_astarF_28877_29546;
  wire [12:0] out_UUdata_converter_FU_19_i0_fu_astarF_28877_29658;
  wire [11:0] out_UUdata_converter_FU_23_i0_fu_astarF_28877_29701;
  wire [7:0] out_UUdata_converter_FU_29_i0_fu_astarF_28877_29507;
  wire [12:0] out_UUdata_converter_FU_31_i0_fu_astarF_28877_29748;
  wire [3:0] out_UUdata_converter_FU_50_i0_fu_astarF_28877_29524;
  wire [31:0] out_addr_expr_FU_10_i0_fu_astarF_28877_29636;
  wire [31:0] out_addr_expr_FU_11_i0_fu_astarF_28877_29761;
  wire [31:0] out_addr_expr_FU_12_i0_fu_astarF_28877_29792;
  wire [31:0] out_addr_expr_FU_8_i0_fu_astarF_28877_29808;
  wire [31:0] out_addr_expr_FU_9_i0_fu_astarF_28877_29631;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [9:0] out_const_10;
  wire [9:0] out_const_11;
  wire [9:0] out_const_12;
  wire [4:0] out_const_2;
  wire out_const_3;
  wire [1:0] out_const_4;
  wire [3:0] out_const_5;
  wire [1:0] out_const_6;
  wire [7:0] out_const_7;
  wire [7:0] out_const_8;
  wire [9:0] out_const_9;
  wire [10:0] out_conv_in_port_a_32_11;
  wire [7:0] out_conv_out_const_0_1_8;
  wire signed [7:0] out_conv_out_const_0_I_1_I_8;
  wire [31:0] out_conv_out_const_10_10_32;
  wire [31:0] out_conv_out_const_11_10_32;
  wire [31:0] out_conv_out_const_12_10_32;
  wire [3:0] out_conv_out_const_2_5_4;
  wire [31:0] out_conv_out_const_8_8_32;
  wire [31:0] out_conv_out_const_9_10_32;
  wire [10:0] out_conv_out_reg_0_reg_0_32_11;
  wire [10:0] out_conv_out_reg_17_reg_17_14_11;
  wire [10:0] out_conv_out_reg_19_reg_19_14_11;
  wire [10:0] out_conv_out_reg_1_reg_1_32_11;
  wire [10:0] out_conv_out_reg_20_reg_20_13_11;
  wire [10:0] out_conv_out_reg_2_reg_2_32_11;
  wire [10:0] out_conv_out_reg_33_reg_33_32_11;
  wire [10:0] out_conv_out_reg_34_reg_34_14_11;
  wire [10:0] out_conv_out_reg_4_reg_4_32_11;
  wire out_gt_expr_FU_8_0_8_60_i0_fu_astarF_28877_30258;
  wire signed [7:0] out_heuristic_79_i0_fu_astarF_28877_29481;
  wire [7:0] out_iu_conv_conn_obj_1_IUdata_converter_FU_iu_conv_0;
  wire [7:0] out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_1;
  wire out_lt_expr_FU_16_16_16_61_i0_fu_astarF_28877_30254;
  wire out_ne_expr_FU_8_0_8_62_i0_fu_astarF_28877_30252;
  wire signed [7:0] out_plus_expr_FU_8_8_8_63_i0_fu_astarF_28877_29477;
  wire signed [7:0] out_plus_expr_FU_8_8_8_63_i1_fu_astarF_28877_29531;
  wire signed [8:0] out_plus_expr_FU_8_8_8_63_i2_fu_astarF_28877_29566;
  wire out_read_cond_FU_15_i0_fu_astarF_28877_29440;
  wire out_read_cond_FU_24_i0_fu_astarF_28877_29562;
  wire out_read_cond_FU_28_i0_fu_astarF_28877_29569;
  wire out_read_cond_FU_51_i0_fu_astarF_28877_29584;
  wire out_read_cond_FU_58_i0_fu_astarF_28877_29587;
  wire [31:0] out_reg_0_reg_0;
  wire [6:0] out_reg_10_reg_10;
  wire [11:0] out_reg_11_reg_11;
  wire [7:0] out_reg_12_reg_12;
  wire [7:0] out_reg_13_reg_13;
  wire [5:0] out_reg_14_reg_14;
  wire [1:0] out_reg_15_reg_15;
  wire [12:0] out_reg_16_reg_16;
  wire [13:0] out_reg_17_reg_17;
  wire [7:0] out_reg_18_reg_18;
  wire [13:0] out_reg_19_reg_19;
  wire [31:0] out_reg_1_reg_1;
  wire [12:0] out_reg_20_reg_20;
  wire [7:0] out_reg_21_reg_21;
  wire [7:0] out_reg_22_reg_22;
  wire [7:0] out_reg_23_reg_23;
  wire [8:0] out_reg_24_reg_24;
  wire [7:0] out_reg_25_reg_25;
  wire [7:0] out_reg_26_reg_26;
  wire [7:0] out_reg_27_reg_27;
  wire [7:0] out_reg_28_reg_28;
  wire [7:0] out_reg_29_reg_29;
  wire [31:0] out_reg_2_reg_2;
  wire [5:0] out_reg_30_reg_30;
  wire [1:0] out_reg_31_reg_31;
  wire [12:0] out_reg_32_reg_32;
  wire [31:0] out_reg_33_reg_33;
  wire [13:0] out_reg_34_reg_34;
  wire [7:0] out_reg_35_reg_35;
  wire [7:0] out_reg_36_reg_36;
  wire [7:0] out_reg_37_reg_37;
  wire [7:0] out_reg_38_reg_38;
  wire [7:0] out_reg_39_reg_39;
  wire [31:0] out_reg_3_reg_3;
  wire [7:0] out_reg_40_reg_40;
  wire [7:0] out_reg_41_reg_41;
  wire [31:0] out_reg_4_reg_4;
  wire [7:0] out_reg_5_reg_5;
  wire [3:0] out_reg_6_reg_6;
  wire [3:0] out_reg_7_reg_7;
  wire [1:0] out_reg_8_reg_8;
  wire [1:0] out_reg_9_reg_9;
  wire [1:0] out_ui_bit_and_expr_FU_8_0_8_64_i0_fu_astarF_28877_30475;
  wire [1:0] out_ui_bit_and_expr_FU_8_0_8_64_i1_fu_astarF_28877_30492;
  wire [1:0] out_ui_bit_and_expr_FU_8_0_8_64_i2_fu_astarF_28877_30507;
  wire [10:0] out_ui_bit_ior_concat_expr_FU_65_i0_fu_astarF_28877_29649;
  wire [10:0] out_ui_bit_ior_concat_expr_FU_65_i1_fu_astarF_28877_29742;
  wire [5:0] out_ui_bit_ior_concat_expr_FU_66_i0_fu_astarF_28877_29695;
  wire out_ui_eq_expr_FU_8_0_8_67_i0_fu_astarF_28877_30250;
  wire out_ui_le_expr_FU_8_0_8_68_i0_fu_astarF_28877_30256;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_69_i0_fu_astarF_28877_29646;
  wire [9:0] out_ui_lshift_expr_FU_16_0_16_69_i1_fu_astarF_28877_29739;
  wire [10:0] out_ui_lshift_expr_FU_16_0_16_69_i2_fu_astarF_28877_30470;
  wire [10:0] out_ui_lshift_expr_FU_16_0_16_69_i3_fu_astarF_28877_30504;
  wire [11:0] out_ui_lshift_expr_FU_16_0_16_70_i0_fu_astarF_28877_29653;
  wire [11:0] out_ui_lshift_expr_FU_16_0_16_70_i1_fu_astarF_28877_29745;
  wire [5:0] out_ui_lshift_expr_FU_8_0_8_71_i0_fu_astarF_28877_29692;
  wire [5:0] out_ui_lshift_expr_FU_8_0_8_71_i1_fu_astarF_28877_30489;
  wire [6:0] out_ui_lshift_expr_FU_8_0_8_72_i0_fu_astarF_28877_29698;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_73_i0_fu_astarF_28877_29458;
  wire [3:0] out_ui_plus_expr_FU_8_8_8_74_i0_fu_astarF_28877_30486;
  wire [8:0] out_ui_plus_expr_FU_8_8_8_74_i1_ui_plus_expr_FU_8_8_8_74_i1;
  wire [8:0] out_ui_plus_expr_FU_8_8_8_74_i2_fu_astarF_28877_30501;
  wire [12:0] out_ui_pointer_plus_expr_FU_16_16_16_75_i0_fu_astarF_28877_29494;
  wire [11:0] out_ui_pointer_plus_expr_FU_16_16_16_75_i1_fu_astarF_28877_29517;
  wire [12:0] out_ui_pointer_plus_expr_FU_16_16_16_75_i2_fu_astarF_28877_29540;
  wire [13:0] out_ui_pointer_plus_expr_FU_16_16_16_75_i3_fu_astarF_28877_29668;
  wire [13:0] out_ui_pointer_plus_expr_FU_16_16_16_75_i4_fu_astarF_28877_29688;
  wire [12:0] out_ui_pointer_plus_expr_FU_16_16_16_75_i5_fu_astarF_28877_29710;
  wire [13:0] out_ui_pointer_plus_expr_FU_16_16_16_75_i6_fu_astarF_28877_29757;
  wire [31:0] out_ui_pointer_plus_expr_FU_32_32_32_76_i0_fu_astarF_28877_29778;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_77_i0_fu_astarF_28877_30459;
  wire [7:0] out_ui_rshift_expr_FU_16_0_16_77_i1_fu_astarF_28877_30496;
  wire [5:0] out_ui_rshift_expr_FU_8_0_8_78_i0_fu_astarF_28877_30463;
  wire [3:0] out_ui_rshift_expr_FU_8_0_8_78_i1_fu_astarF_28877_30480;
  wire [1:0] out_ui_rshift_expr_FU_8_0_8_78_i2_fu_astarF_28877_30484;
  wire [5:0] out_ui_rshift_expr_FU_8_0_8_78_i3_fu_astarF_28877_30499;
  wire [7:0] out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_2;
  wire [7:0] out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_3;
  wire [7:0] out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_4;
  wire [7:0] proxy_out1_28864;
  wire [7:0] proxy_out1_28865;
  wire [7:0] proxy_out1_28866;
  wire [7:0] proxy_out1_28867;
  wire s_done_fu_astarF_28877_29424;
  wire s_done_fu_astarF_28877_29425;
  wire s_done_fu_astarF_28877_29438;
  wire s_done_fu_astarF_28877_29481;
  wire s_done_insert_81_i0;
  wire s_insert_81_i00;
  wire [7:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [10:0] sig_in_bus_mergerMout_addr_ram1_0;
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
  wire [10:0] sig_in_bus_mergerproxy_in218_0;
  wire [10:0] sig_in_bus_mergerproxy_in223_0;
  wire [10:0] sig_in_bus_mergerproxy_in228_0;
  wire [10:0] sig_in_bus_mergerproxy_in228_1;
  wire [10:0] sig_in_bus_mergerproxy_in233_0;
  wire [10:0] sig_in_bus_mergerproxy_in233_1;
  wire [10:0] sig_in_bus_mergerproxy_in2_288619_0;
  wire [10:0] sig_in_bus_mergerproxy_in2_288619_1;
  wire [10:0] sig_in_bus_mergerproxy_in2_288619_2;
  wire [10:0] sig_in_bus_mergerproxy_in2_288619_3;
  wire [10:0] sig_in_bus_mergerproxy_in2_2886810_0;
  wire [10:0] sig_in_bus_mergerproxy_in2_2886810_1;
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
  wire [10:0] sig_out_bus_mergerMout_addr_ram1_;
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
  wire [10:0] sig_out_bus_mergerproxy_in218_;
  wire [10:0] sig_out_bus_mergerproxy_in223_;
  wire [10:0] sig_out_bus_mergerproxy_in228_;
  wire [10:0] sig_out_bus_mergerproxy_in233_;
  wire [10:0] sig_out_bus_mergerproxy_in2_288619_;
  wire [10:0] sig_out_bus_mergerproxy_in2_2886810_;
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
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_3 (.out1(out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_3), .in1(out_reg_26_reg_26));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_4 (.out1(out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_4), .in1(out_reg_41_reg_41));
  BMEMORY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(11), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_Min_addr_ram(11), .BITSIZE_Mout_addr_ram(11), .BITSIZE_M_Rdata_ram(8), .BITSIZE_Min_Wdata_ram(8), .BITSIZE_Mout_Wdata_ram(8), .BITSIZE_Min_data_ram_size(4), .BITSIZE_Mout_data_ram_size(4)) BMEMORY_CTRL_59_i0 (.out1(out_BMEMORY_CTRL_59_i0_BMEMORY_CTRL_59_i0), .Mout_oe_ram(sig_in_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_bus_mergerMout_data_ram_size2_0), .clock(clock), .in1(out_iu_conv_conn_obj_1_IUdata_converter_FU_iu_conv_0), .in2(out_MUX_15_BMEMORY_CTRL_59_i0_1_1_0), .in3(out_conv_out_const_2_5_4), .in4(out_const_3), .sel_LOAD(fuselector_BMEMORY_CTRL_59_i0_LOAD), .sel_STORE(fuselector_BMEMORY_CTRL_59_i0_STORE), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .M_Rdata_ram(M_Rdata_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .M_DataRdy(M_DataRdy));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_0 (.out1(out_iu_conv_conn_obj_1_IUdata_converter_FU_iu_conv_0), .in1(out_reg_23_reg_23));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_1), .in1(out_reg_38_reg_38));
  MUX_GATE #(.BITSIZE_in1(11), .BITSIZE_in2(11), .BITSIZE_out1(11)) MUX_15_BMEMORY_CTRL_59_i0_1_0_0 (.out1(out_MUX_15_BMEMORY_CTRL_59_i0_1_0_0), .sel(selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0), .in1(out_conv_out_reg_34_reg_34_14_11), .in2(out_conv_out_reg_20_reg_20_13_11));
  MUX_GATE #(.BITSIZE_in1(11), .BITSIZE_in2(11), .BITSIZE_out1(11)) MUX_15_BMEMORY_CTRL_59_i0_1_0_1 (.out1(out_MUX_15_BMEMORY_CTRL_59_i0_1_0_1), .sel(selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1), .in1(out_conv_out_reg_19_reg_19_14_11), .in2(out_conv_out_reg_17_reg_17_14_11));
  MUX_GATE #(.BITSIZE_in1(11), .BITSIZE_in2(11), .BITSIZE_out1(11)) MUX_15_BMEMORY_CTRL_59_i0_1_1_0 (.out1(out_MUX_15_BMEMORY_CTRL_59_i0_1_1_0), .sel(selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0), .in1(out_MUX_15_BMEMORY_CTRL_59_i0_1_0_0), .in2(out_MUX_15_BMEMORY_CTRL_59_i0_1_0_1));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_35_PROXY_CTRL_5_i0_0_0_0 (.out1(out_MUX_35_PROXY_CTRL_5_i0_0_0_0), .sel(selector_MUX_35_PROXY_CTRL_5_i0_0_0_0), .in1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_2), .in2(out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_4));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_59_insert_81_i0_0_0_0 (.out1(out_MUX_59_insert_81_i0_0_0_0), .sel(selector_MUX_59_insert_81_i0_0_0_0), .in1(out_reg_28_reg_28), .in2(out_conv_out_const_0_1_8));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_60_insert_81_i0_1_0_0 (.out1(out_MUX_60_insert_81_i0_1_0_0), .sel(selector_MUX_60_insert_81_i0_1_0_0), .in1(out_reg_39_reg_39), .in2(out_conv_out_const_0_I_1_I_8));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(11), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(11), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_5_i0 (.out1(out_PROXY_CTRL_5_i0_PROXY_CTRL_5_i0), .proxy_in1(sig_in_bus_mergerproxy_in1_288617_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288619_0), .proxy_in3(sig_in_bus_mergerproxy_in3_2886111_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_2886113_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_2886115_0), .in1(out_MUX_35_PROXY_CTRL_5_i0_0_0_0), .in2(out_conv_out_reg_1_reg_1_32_11), .in3(out_conv_out_const_2_5_4), .in4(out_const_3), .sel_LOAD(fuselector_PROXY_CTRL_5_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_5_i0_STORE), .proxy_out1(proxy_out1_28861));
  ARRAY_1D_STD_BRAM_SDS_BUS #(.BITSIZE_in1(8), .BITSIZE_in2(11), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_S_addr_ram(11), .BITSIZE_S_Wdata_ram(8), .BITSIZE_Sin_Rdata_ram(8), .BITSIZE_Sout_Rdata_ram(8), .BITSIZE_S_data_ram_size(4), .MEMORY_INIT_file("array_ref_28862.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28862_28877), .address_space_rangesize(128), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(11), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) array_28862_0 (.Sout_Rdata_ram(sig_in_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_bus_mergerSout_DataRdy5_0), .clock(clock), .reset(reset), .in1(out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_1), .in2(out_conv_out_reg_2_reg_2_32_11), .in3(out_conv_out_const_2_5_4), .in4(out_const_3), .sel_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD), .sel_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(8'b00000000), .proxy_in2(11'b00000000000), .proxy_in3(4'b0000), .proxy_sel_LOAD(1'b0), .proxy_sel_STORE(1'b0));
  ARRAY_1D_STD_BRAM_SDS_BUS #(.BITSIZE_in1(8), .BITSIZE_in2(11), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_S_addr_ram(11), .BITSIZE_S_Wdata_ram(8), .BITSIZE_Sin_Rdata_ram(8), .BITSIZE_Sout_Rdata_ram(8), .BITSIZE_S_data_ram_size(4), .MEMORY_INIT_file("array_ref_28864.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28864_28877), .address_space_rangesize(128), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(11), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) array_28864_0 (.out1(out_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_array_28864_0), .Sout_Rdata_ram(sig_in_bus_mergerSout_Rdata_ram6_1), .Sout_DataRdy(sig_in_bus_mergerSout_DataRdy5_1), .proxy_out1(proxy_out1_28864), .clock(clock), .reset(reset), .in1(8'b00000000), .in2(out_conv_out_reg_0_reg_0_32_11), .in3(out_conv_out_const_2_5_4), .in4(out_const_3), .sel_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_LOAD), .sel_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_STORE), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_bus_mergerproxy_in117_), .proxy_in2(sig_out_bus_mergerproxy_in218_), .proxy_in3(sig_out_bus_mergerproxy_in319_), .proxy_sel_LOAD(sig_out_bus_mergerproxy_sel_LOAD20_), .proxy_sel_STORE(sig_out_bus_mergerproxy_sel_STORE21_));
  ARRAY_1D_STD_BRAM_SDS_BUS #(.BITSIZE_in1(8), .BITSIZE_in2(11), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_S_addr_ram(11), .BITSIZE_S_Wdata_ram(8), .BITSIZE_Sin_Rdata_ram(8), .BITSIZE_Sout_Rdata_ram(8), .BITSIZE_S_data_ram_size(4), .MEMORY_INIT_file("array_ref_28865.mem"), .n_elements(10), .data_size(8), .address_space_begin(MEM_var_28865_28877), .address_space_rangesize(128), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(11), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) array_28865_0 (.Sout_Rdata_ram(sig_in_bus_mergerSout_Rdata_ram6_2), .Sout_DataRdy(sig_in_bus_mergerSout_DataRdy5_2), .proxy_out1(proxy_out1_28865), .clock(clock), .reset(reset), .in1(out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_3), .in2(out_conv_out_reg_33_reg_33_32_11), .in3(out_conv_out_const_2_5_4), .in4(out_const_3), .sel_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_LOAD), .sel_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_STORE), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_bus_mergerproxy_in122_), .proxy_in2(sig_out_bus_mergerproxy_in223_), .proxy_in3(sig_out_bus_mergerproxy_in324_), .proxy_sel_LOAD(sig_out_bus_mergerproxy_sel_LOAD25_), .proxy_sel_STORE(sig_out_bus_mergerproxy_sel_STORE26_));
  ARRAY_1D_STD_BRAM_SDS_BUS #(.BITSIZE_in1(8), .BITSIZE_in2(11), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_S_addr_ram(11), .BITSIZE_S_Wdata_ram(8), .BITSIZE_Sin_Rdata_ram(8), .BITSIZE_Sout_Rdata_ram(8), .BITSIZE_S_data_ram_size(4), .MEMORY_INIT_file("array_ref_28866.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28866_28877), .address_space_rangesize(128), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(11), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) array_28866_0 (.out1(out_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_array_28866_0), .Sout_Rdata_ram(sig_in_bus_mergerSout_Rdata_ram6_3), .Sout_DataRdy(sig_in_bus_mergerSout_DataRdy5_3), .proxy_out1(proxy_out1_28866), .clock(clock), .reset(reset), .in1(8'b00000000), .in2(out_conv_out_reg_4_reg_4_32_11), .in3(out_conv_out_const_2_5_4), .in4(out_const_3), .sel_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_LOAD), .sel_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_STORE), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_bus_mergerproxy_in127_), .proxy_in2(sig_out_bus_mergerproxy_in228_), .proxy_in3(sig_out_bus_mergerproxy_in329_), .proxy_sel_LOAD(sig_out_bus_mergerproxy_sel_LOAD30_), .proxy_sel_STORE(sig_out_bus_mergerproxy_sel_STORE31_));
  ARRAY_1D_STD_BRAM_SDS_BUS #(.BITSIZE_in1(8), .BITSIZE_in2(11), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_S_addr_ram(11), .BITSIZE_S_Wdata_ram(8), .BITSIZE_Sin_Rdata_ram(8), .BITSIZE_Sout_Rdata_ram(8), .BITSIZE_S_data_ram_size(4), .MEMORY_INIT_file("array_ref_28867.mem"), .n_elements(10), .data_size(8), .address_space_begin(MEM_var_28867_28877), .address_space_rangesize(128), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(11), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) array_28867_0 (.Sout_Rdata_ram(sig_in_bus_mergerSout_Rdata_ram6_4), .Sout_DataRdy(sig_in_bus_mergerSout_DataRdy5_4), .proxy_out1(proxy_out1_28867), .clock(clock), .reset(reset), .in1(8'b00000000), .in2(11'b00000000000), .in3(4'b0000), .in4(1'b0), .sel_LOAD(1'b0), .sel_STORE(1'b0), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_bus_mergerproxy_in132_), .proxy_in2(sig_out_bus_mergerproxy_in233_), .proxy_in3(sig_out_bus_mergerproxy_in334_), .proxy_sel_LOAD(sig_out_bus_mergerproxy_sel_LOAD35_), .proxy_sel_STORE(sig_out_bus_mergerproxy_sel_STORE36_));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(11), .PORTSIZE_in1(1), .BITSIZE_out1(11)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
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
  bus_merger #(.BITSIZE_in1(11), .PORTSIZE_in1(1), .BITSIZE_out1(11)) bus_mergerproxy_in218_ (.out1(sig_out_bus_mergerproxy_in218_), .in1({sig_in_bus_mergerproxy_in218_0}));
  bus_merger #(.BITSIZE_in1(11), .PORTSIZE_in1(1), .BITSIZE_out1(11)) bus_mergerproxy_in223_ (.out1(sig_out_bus_mergerproxy_in223_), .in1({sig_in_bus_mergerproxy_in223_0}));
  bus_merger #(.BITSIZE_in1(11), .PORTSIZE_in1(2), .BITSIZE_out1(11)) bus_mergerproxy_in228_ (.out1(sig_out_bus_mergerproxy_in228_), .in1({sig_in_bus_mergerproxy_in228_1, sig_in_bus_mergerproxy_in228_0}));
  bus_merger #(.BITSIZE_in1(11), .PORTSIZE_in1(2), .BITSIZE_out1(11)) bus_mergerproxy_in233_ (.out1(sig_out_bus_mergerproxy_in233_), .in1({sig_in_bus_mergerproxy_in233_1, sig_in_bus_mergerproxy_in233_0}));
  bus_merger #(.BITSIZE_in1(11), .PORTSIZE_in1(4), .BITSIZE_out1(11)) bus_mergerproxy_in2_288619_ (.out1(sig_out_bus_mergerproxy_in2_288619_), .in1({sig_in_bus_mergerproxy_in2_288619_3, sig_in_bus_mergerproxy_in2_288619_2, sig_in_bus_mergerproxy_in2_288619_1, sig_in_bus_mergerproxy_in2_288619_0}));
  bus_merger #(.BITSIZE_in1(11), .PORTSIZE_in1(2), .BITSIZE_out1(11)) bus_mergerproxy_in2_2886810_ (.out1(sig_out_bus_mergerproxy_in2_2886810_), .in1({sig_in_bus_mergerproxy_in2_2886810_1, sig_in_bus_mergerproxy_in2_2886810_0}));
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
  constant_value #(.BITSIZE_out1(10), .value(MEM_var_28864_28877)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(10), .value(MEM_var_28865_28877)) const_11 (.out1(out_const_11));
  constant_value #(.BITSIZE_out1(10), .value(MEM_var_28866_28877)) const_12 (.out1(out_const_12));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(2), .value(2'b10)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(4), .value(4'b1001)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(8), .value(8'b11010010)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28861_28879)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(10), .value(MEM_var_28862_28877)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) conv_in_port_a_32_11 (.out1(out_conv_in_port_a_32_11), .in1(in_port_a));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_const_0_1_8 (.out1(out_conv_out_const_0_1_8), .in1(out_const_0));
  IIdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_const_0_I_1_I_8 (.out1(out_conv_out_const_0_I_1_I_8), .in1(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(32)) conv_out_const_10_10_32 (.out1(out_conv_out_const_10_10_32), .in1(out_const_10));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(32)) conv_out_const_11_10_32 (.out1(out_conv_out_const_11_10_32), .in1(out_const_11));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(32)) conv_out_const_12_10_32 (.out1(out_conv_out_const_12_10_32), .in1(out_const_12));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_2_5_4 (.out1(out_conv_out_const_2_5_4), .in1(out_const_2));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_8_8_32 (.out1(out_conv_out_const_8_8_32), .in1(out_const_8));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(32)) conv_out_const_9_10_32 (.out1(out_conv_out_const_9_10_32), .in1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) conv_out_reg_0_reg_0_32_11 (.out1(out_conv_out_reg_0_reg_0_32_11), .in1(out_reg_0_reg_0));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(11)) conv_out_reg_17_reg_17_14_11 (.out1(out_conv_out_reg_17_reg_17_14_11), .in1(out_reg_17_reg_17));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(11)) conv_out_reg_19_reg_19_14_11 (.out1(out_conv_out_reg_19_reg_19_14_11), .in1(out_reg_19_reg_19));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) conv_out_reg_1_reg_1_32_11 (.out1(out_conv_out_reg_1_reg_1_32_11), .in1(out_reg_1_reg_1));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(11)) conv_out_reg_20_reg_20_13_11 (.out1(out_conv_out_reg_20_reg_20_13_11), .in1(out_reg_20_reg_20));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) conv_out_reg_2_reg_2_32_11 (.out1(out_conv_out_reg_2_reg_2_32_11), .in1(out_reg_2_reg_2));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) conv_out_reg_33_reg_33_32_11 (.out1(out_conv_out_reg_33_reg_33_32_11), .in1(out_reg_33_reg_33));
  UUdata_converter_FU #(.BITSIZE_in1(14), .BITSIZE_out1(11)) conv_out_reg_34_reg_34_14_11 (.out1(out_conv_out_reg_34_reg_34_14_11), .in1(out_reg_34_reg_34));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) conv_out_reg_4_reg_4_32_11 (.out1(out_conv_out_reg_4_reg_4_32_11), .in1(out_reg_4_reg_4));
  set_estimates #(.MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28868_28879(MEM_var_28868_28879)) fu_astarF_28877_29424 (.done_port(s_done_fu_astarF_28877_29424), .proxy_in1_28861(sig_in_bus_mergerproxy_in1_288617_3), .proxy_in2_28861(sig_in_bus_mergerproxy_in2_288619_3), .proxy_in3_28861(sig_in_bus_mergerproxy_in3_2886111_3), .proxy_sel_LOAD_28861(sig_in_bus_mergerproxy_sel_LOAD_2886113_3), .proxy_sel_STORE_28861(sig_in_bus_mergerproxy_sel_STORE_2886115_3), .proxy_in1_28868(sig_in_bus_mergerproxy_in1_288688_1), .proxy_in2_28868(sig_in_bus_mergerproxy_in2_2886810_1), .proxy_in3_28868(sig_in_bus_mergerproxy_in3_2886812_1), .proxy_sel_LOAD_28868(sig_in_bus_mergerproxy_sel_LOAD_2886814_1), .proxy_sel_STORE_28868(sig_in_bus_mergerproxy_sel_STORE_2886816_1), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_astarF_28877_29424), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28868(proxy_out1_28868));
  init_camefrom #(.MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28865_28877(MEM_var_28865_28877)) fu_astarF_28877_29425 (.done_port(s_done_fu_astarF_28877_29425), .proxy_in1_28861(sig_in_bus_mergerproxy_in1_288617_1), .proxy_in2_28861(sig_in_bus_mergerproxy_in2_288619_1), .proxy_in3_28861(sig_in_bus_mergerproxy_in3_2886111_1), .proxy_sel_LOAD_28861(sig_in_bus_mergerproxy_sel_LOAD_2886113_1), .proxy_sel_STORE_28861(sig_in_bus_mergerproxy_sel_STORE_2886115_1), .proxy_in1_28865(sig_in_bus_mergerproxy_in122_0), .proxy_in2_28865(sig_in_bus_mergerproxy_in223_0), .proxy_in3_28865(sig_in_bus_mergerproxy_in324_0), .proxy_sel_LOAD_28865(sig_in_bus_mergerproxy_sel_LOAD25_0), .proxy_sel_STORE_28865(sig_in_bus_mergerproxy_sel_STORE26_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_astarF_28877_29425), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28865(proxy_out1_28865));
  remove_min #(.MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28864_28877(MEM_var_28864_28877), .MEM_var_28866_28877(MEM_var_28866_28877), .MEM_var_28867_28877(MEM_var_28867_28877)) fu_astarF_28877_29438 (.done_port(s_done_fu_astarF_28877_29438), .proxy_in1_28861(sig_in_bus_mergerproxy_in1_288617_2), .proxy_in2_28861(sig_in_bus_mergerproxy_in2_288619_2), .proxy_in3_28861(sig_in_bus_mergerproxy_in3_2886111_2), .proxy_sel_LOAD_28861(sig_in_bus_mergerproxy_sel_LOAD_2886113_2), .proxy_sel_STORE_28861(sig_in_bus_mergerproxy_sel_STORE_2886115_2), .proxy_in1_28864(sig_in_bus_mergerproxy_in117_0), .proxy_in2_28864(sig_in_bus_mergerproxy_in218_0), .proxy_in3_28864(sig_in_bus_mergerproxy_in319_0), .proxy_sel_LOAD_28864(sig_in_bus_mergerproxy_sel_LOAD20_0), .proxy_sel_STORE_28864(sig_in_bus_mergerproxy_sel_STORE21_0), .proxy_in1_28866(sig_in_bus_mergerproxy_in127_1), .proxy_in2_28866(sig_in_bus_mergerproxy_in228_1), .proxy_in3_28866(sig_in_bus_mergerproxy_in329_1), .proxy_sel_LOAD_28866(sig_in_bus_mergerproxy_sel_LOAD30_1), .proxy_sel_STORE_28866(sig_in_bus_mergerproxy_sel_STORE31_1), .proxy_in1_28867(sig_in_bus_mergerproxy_in132_1), .proxy_in2_28867(sig_in_bus_mergerproxy_in233_1), .proxy_in3_28867(sig_in_bus_mergerproxy_in334_1), .proxy_sel_LOAD_28867(sig_in_bus_mergerproxy_sel_LOAD35_1), .proxy_sel_STORE_28867(sig_in_bus_mergerproxy_sel_STORE36_1), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_astarF_28877_29438), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28864(proxy_out1_28864), .proxy_out1_28866(proxy_out1_28866), .proxy_out1_28867(proxy_out1_28867));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29440 (.out1(out_read_cond_FU_15_i0_fu_astarF_28877_29440), .in1(out_ui_eq_expr_FU_8_0_8_67_i0_fu_astarF_28877_30250));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_astarF_28877_29458 (.out1(out_ui_plus_expr_FU_8_0_8_73_i0_fu_astarF_28877_29458), .in1(out_reg_40_reg_40), .in2(out_const_3));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_astarF_28877_29466 (.out1(out_UIdata_converter_FU_30_i0_fu_astarF_28877_29466), .in1(out_PROXY_CTRL_5_i0_PROXY_CTRL_5_i0));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_astarF_28877_29474 (.out1(out_IIdata_converter_FU_37_i0_fu_astarF_28877_29474), .in1(out_plus_expr_FU_8_8_8_63_i0_fu_astarF_28877_29477));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) fu_astarF_28877_29477 (.out1(out_plus_expr_FU_8_8_8_63_i0_fu_astarF_28877_29477), .in1(out_IIdata_converter_FU_36_i0_fu_astarF_28877_30284), .in2(out_reg_35_reg_35));
  heuristic #(.MEM_var_28868_28879(MEM_var_28868_28879)) fu_astarF_28877_29481 (.done_port(s_done_fu_astarF_28877_29481), .return_port(out_heuristic_79_i0_fu_astarF_28877_29481), .proxy_in1_28868(sig_in_bus_mergerproxy_in1_288688_0), .proxy_in2_28868(sig_in_bus_mergerproxy_in2_2886810_0), .proxy_in3_28868(sig_in_bus_mergerproxy_in3_2886812_0), .proxy_sel_LOAD_28868(sig_in_bus_mergerproxy_sel_LOAD_2886814_0), .proxy_sel_STORE_28868(sig_in_bus_mergerproxy_sel_STORE_2886816_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_astarF_28877_29481), .goal(out_conv_out_const_0_1_8), .current(out_reg_28_reg_28), .path_cost(out_reg_36_reg_36), .proxy_out1_28868(proxy_out1_28868));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_astarF_28877_29487 (.out1(out_IIdata_converter_FU_33_i0_fu_astarF_28877_29487), .in1(out_BMEMORY_CTRL_59_i0_BMEMORY_CTRL_59_i0));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(12), .BITSIZE_out1(13), .LSB_PARAMETER(0)) fu_astarF_28877_29494 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_75_i0_fu_astarF_28877_29494), .in1(out_conv_in_port_a_32_11), .in2(out_ui_lshift_expr_FU_16_0_16_70_i1_fu_astarF_28877_29745));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29507 (.out1(out_UUdata_converter_FU_29_i0_fu_astarF_28877_29507), .in1(out_PROXY_CTRL_5_i0_PROXY_CTRL_5_i0));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(7), .BITSIZE_out1(12), .LSB_PARAMETER(0)) fu_astarF_28877_29517 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_75_i1_fu_astarF_28877_29517), .in1(out_conv_in_port_a_32_11), .in2(out_reg_10_reg_10));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(4)) fu_astarF_28877_29524 (.out1(out_UUdata_converter_FU_50_i0_fu_astarF_28877_29524), .in1(out_PROXY_CTRL_5_i0_PROXY_CTRL_5_i0));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(5)) fu_astarF_28877_29529 (.out1(out_UIdata_converter_FU_48_i0_fu_astarF_28877_29529), .in1(out_PROXY_CTRL_5_i0_PROXY_CTRL_5_i0));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) fu_astarF_28877_29531 (.out1(out_plus_expr_FU_8_8_8_63_i1_fu_astarF_28877_29531), .in1(out_reg_21_reg_21), .in2(out_reg_35_reg_35));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(12), .BITSIZE_out1(13), .LSB_PARAMETER(0)) fu_astarF_28877_29540 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_75_i2_fu_astarF_28877_29540), .in1(out_conv_in_port_a_32_11), .in2(out_ui_lshift_expr_FU_16_0_16_70_i0_fu_astarF_28877_29653));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29546 (.out1(out_UUdata_converter_FU_18_i0_fu_astarF_28877_29546), .in1(out_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_array_28864_0));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_astarF_28877_29550 (.out1(out_UIdata_converter_FU_20_i0_fu_astarF_28877_29550), .in1(out_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_array_28864_0));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29562 (.out1(out_read_cond_FU_24_i0_fu_astarF_28877_29562), .in1(out_ne_expr_FU_8_0_8_62_i0_fu_astarF_28877_30252));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29564 (.out1(out_IIdata_converter_FU_26_i0_fu_astarF_28877_29564), .in1(out_BMEMORY_CTRL_59_i0_BMEMORY_CTRL_59_i0));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29565 (.out1(out_IIdata_converter_FU_22_i0_fu_astarF_28877_29565), .in1(out_BMEMORY_CTRL_59_i0_BMEMORY_CTRL_59_i0));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(9)) fu_astarF_28877_29566 (.out1(out_plus_expr_FU_8_8_8_63_i2_fu_astarF_28877_29566), .in1(out_reg_18_reg_18), .in2(out_reg_22_reg_22));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_29568 (.out1(out_IIdata_converter_FU_27_i0_fu_astarF_28877_29568), .in1(out_BMEMORY_CTRL_59_i0_BMEMORY_CTRL_59_i0));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29569 (.out1(out_read_cond_FU_28_i0_fu_astarF_28877_29569), .in1(out_lt_expr_FU_16_16_16_61_i0_fu_astarF_28877_30254));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29584 (.out1(out_read_cond_FU_51_i0_fu_astarF_28877_29584), .in1(out_ui_le_expr_FU_8_0_8_68_i0_fu_astarF_28877_30256));
  read_cond_FU #(.BITSIZE_in1(1)) fu_astarF_28877_29587 (.out1(out_read_cond_FU_58_i0_fu_astarF_28877_29587), .in1(out_gt_expr_FU_8_0_8_60_i0_fu_astarF_28877_30258));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_29631 (.out1(out_addr_expr_FU_9_i0_fu_astarF_28877_29631), .in1(out_conv_out_const_10_10_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_29636 (.out1(out_addr_expr_FU_10_i0_fu_astarF_28877_29636), .in1(out_conv_out_const_8_8_32));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(10), .PRECISION(32)) fu_astarF_28877_29646 (.out1(out_ui_lshift_expr_FU_16_0_16_69_i0_fu_astarF_28877_29646), .in1(out_UUdata_converter_FU_18_i0_fu_astarF_28877_29546), .in2(out_const_4));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(11), .OFFSET_PARAMETER(2)) fu_astarF_28877_29649 (.out1(out_ui_bit_ior_concat_expr_FU_65_i0_fu_astarF_28877_29649), .in1(out_ui_lshift_expr_FU_16_0_16_69_i2_fu_astarF_28877_30470), .in2(out_reg_15_reg_15), .in3(out_const_4));
  ui_lshift_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(1), .BITSIZE_out1(12), .PRECISION(32)) fu_astarF_28877_29653 (.out1(out_ui_lshift_expr_FU_16_0_16_70_i0_fu_astarF_28877_29653), .in1(out_ui_bit_ior_concat_expr_FU_65_i0_fu_astarF_28877_29649), .in2(out_const_3));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(13)) fu_astarF_28877_29658 (.out1(out_UUdata_converter_FU_19_i0_fu_astarF_28877_29658), .in1(out_ui_pointer_plus_expr_FU_16_16_16_75_i2_fu_astarF_28877_29540));
  IUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) fu_astarF_28877_29661 (.out1(out_IUdata_converter_FU_49_i0_fu_astarF_28877_29661), .in1(out_UIdata_converter_FU_48_i0_fu_astarF_28877_29529));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(4), .BITSIZE_out1(14), .LSB_PARAMETER(0)) fu_astarF_28877_29668 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_75_i3_fu_astarF_28877_29668), .in1(out_reg_16_reg_16), .in2(out_reg_6_reg_6));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_astarF_28877_29682 (.out1(out_IUdata_converter_FU_21_i0_fu_astarF_28877_29682), .in1(out_UIdata_converter_FU_20_i0_fu_astarF_28877_29550));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(8), .BITSIZE_out1(14), .LSB_PARAMETER(0)) fu_astarF_28877_29688 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_75_i4_fu_astarF_28877_29688), .in1(out_reg_16_reg_16), .in2(out_reg_12_reg_12));
  ui_lshift_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_astarF_28877_29692 (.out1(out_ui_lshift_expr_FU_8_0_8_71_i0_fu_astarF_28877_29692), .in1(out_UUdata_converter_FU_50_i0_fu_astarF_28877_29524), .in2(out_const_4));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(6), .OFFSET_PARAMETER(2)) fu_astarF_28877_29695 (.out1(out_ui_bit_ior_concat_expr_FU_66_i0_fu_astarF_28877_29695), .in1(out_ui_lshift_expr_FU_8_0_8_71_i1_fu_astarF_28877_30489), .in2(out_reg_9_reg_9), .in3(out_const_4));
  ui_lshift_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(1), .BITSIZE_out1(7), .PRECISION(32)) fu_astarF_28877_29698 (.out1(out_ui_lshift_expr_FU_8_0_8_72_i0_fu_astarF_28877_29698), .in1(out_ui_bit_ior_concat_expr_FU_66_i0_fu_astarF_28877_29695), .in2(out_const_3));
  UUdata_converter_FU #(.BITSIZE_in1(12), .BITSIZE_out1(12)) fu_astarF_28877_29701 (.out1(out_UUdata_converter_FU_23_i0_fu_astarF_28877_29701), .in1(out_ui_pointer_plus_expr_FU_16_16_16_75_i1_fu_astarF_28877_29517));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(12), .BITSIZE_in2(4), .BITSIZE_out1(13), .LSB_PARAMETER(0)) fu_astarF_28877_29710 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_75_i5_fu_astarF_28877_29710), .in1(out_reg_11_reg_11), .in2(out_reg_6_reg_6));
  ui_lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(10), .PRECISION(32)) fu_astarF_28877_29739 (.out1(out_ui_lshift_expr_FU_16_0_16_69_i1_fu_astarF_28877_29739), .in1(out_UUdata_converter_FU_29_i0_fu_astarF_28877_29507), .in2(out_const_4));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(11), .OFFSET_PARAMETER(2)) fu_astarF_28877_29742 (.out1(out_ui_bit_ior_concat_expr_FU_65_i1_fu_astarF_28877_29742), .in1(out_ui_lshift_expr_FU_16_0_16_69_i3_fu_astarF_28877_30504), .in2(out_reg_31_reg_31), .in3(out_const_4));
  ui_lshift_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(1), .BITSIZE_out1(12), .PRECISION(32)) fu_astarF_28877_29745 (.out1(out_ui_lshift_expr_FU_16_0_16_70_i1_fu_astarF_28877_29745), .in1(out_ui_bit_ior_concat_expr_FU_65_i1_fu_astarF_28877_29742), .in2(out_const_3));
  UUdata_converter_FU #(.BITSIZE_in1(13), .BITSIZE_out1(13)) fu_astarF_28877_29748 (.out1(out_UUdata_converter_FU_31_i0_fu_astarF_28877_29748), .in1(out_ui_pointer_plus_expr_FU_16_16_16_75_i0_fu_astarF_28877_29494));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_astarF_28877_29751 (.out1(out_IUdata_converter_FU_32_i0_fu_astarF_28877_29751), .in1(out_UIdata_converter_FU_30_i0_fu_astarF_28877_29466));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(13), .BITSIZE_in2(8), .BITSIZE_out1(14), .LSB_PARAMETER(0)) fu_astarF_28877_29757 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_75_i6_fu_astarF_28877_29757), .in1(out_reg_32_reg_32), .in2(out_reg_27_reg_27));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_29761 (.out1(out_addr_expr_FU_11_i0_fu_astarF_28877_29761), .in1(out_conv_out_const_9_10_32));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_29769 (.out1(out_UUdata_converter_FU_13_i0_fu_astarF_28877_29769), .in1(out_addr_expr_FU_12_i0_fu_astarF_28877_29792));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(8), .BITSIZE_out1(32), .LSB_PARAMETER(0)) fu_astarF_28877_29778 (.out1(out_ui_pointer_plus_expr_FU_32_32_32_76_i0_fu_astarF_28877_29778), .in1(out_reg_3_reg_3), .in2(out_reg_27_reg_27));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_29792 (.out1(out_addr_expr_FU_12_i0_fu_astarF_28877_29792), .in1(out_conv_out_const_11_10_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(32)) fu_astarF_28877_29808 (.out1(out_addr_expr_FU_8_i0_fu_astarF_28877_29808), .in1(out_conv_out_const_12_10_32));
  ui_eq_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_astarF_28877_30250 (.out1(out_ui_eq_expr_FU_8_0_8_67_i0_fu_astarF_28877_30250), .in1(out_reg_26_reg_26), .in2(out_const_7));
  ne_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_astarF_28877_30252 (.out1(out_ne_expr_FU_8_0_8_62_i0_fu_astarF_28877_30252), .in1(out_reg_35_reg_35), .in2(out_const_6));
  lt_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_astarF_28877_30254 (.out1(out_lt_expr_FU_16_16_16_61_i0_fu_astarF_28877_30254), .in1(out_reg_24_reg_24), .in2(out_reg_25_reg_25));
  ui_le_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(4), .BITSIZE_out1(1)) fu_astarF_28877_30256 (.out1(out_ui_le_expr_FU_8_0_8_68_i0_fu_astarF_28877_30256), .in1(out_reg_40_reg_40), .in2(out_const_5));
  gt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_astarF_28877_30258 (.out1(out_gt_expr_FU_8_0_8_60_i0_fu_astarF_28877_30258), .in1(out_reg_5_reg_5), .in2(out_const_0));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_astarF_28877_30284 (.out1(out_IIdata_converter_FU_36_i0_fu_astarF_28877_30284), .in1(out_reg_37_reg_37));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_astarF_28877_30290 (.out1(out_IUdata_converter_FU_34_i0_fu_astarF_28877_30290), .in1(out_UIdata_converter_FU_30_i0_fu_astarF_28877_29466));
  IIdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_astarF_28877_30293 (.out1(out_IIdata_converter_FU_35_i0_fu_astarF_28877_30293), .in1(out_IIdata_converter_FU_33_i0_fu_astarF_28877_29487));
  IIdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_astarF_28877_30299 (.out1(out_IIdata_converter_FU_38_i0_fu_astarF_28877_30299), .in1(out_IIdata_converter_FU_37_i0_fu_astarF_28877_29474));
  ui_rshift_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(32)) fu_astarF_28877_30459 (.out1(out_ui_rshift_expr_FU_16_0_16_77_i0_fu_astarF_28877_30459), .in1(out_ui_lshift_expr_FU_16_0_16_69_i0_fu_astarF_28877_29646), .in2(out_const_4));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_astarF_28877_30463 (.out1(out_ui_rshift_expr_FU_8_0_8_78_i0_fu_astarF_28877_30463), .in1(out_UUdata_converter_FU_18_i0_fu_astarF_28877_29546), .in2(out_const_4));
  ui_lshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(11), .PRECISION(32)) fu_astarF_28877_30470 (.out1(out_ui_lshift_expr_FU_16_0_16_69_i2_fu_astarF_28877_30470), .in1(out_ui_plus_expr_FU_8_8_8_74_i1_ui_plus_expr_FU_8_8_8_74_i1), .in2(out_const_4));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_astarF_28877_30475 (.out1(out_ui_bit_and_expr_FU_8_0_8_64_i0_fu_astarF_28877_30475), .in1(out_UUdata_converter_FU_18_i0_fu_astarF_28877_29546), .in2(out_const_6));
  ui_rshift_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(2), .BITSIZE_out1(4), .PRECISION(32)) fu_astarF_28877_30480 (.out1(out_ui_rshift_expr_FU_8_0_8_78_i1_fu_astarF_28877_30480), .in1(out_ui_lshift_expr_FU_8_0_8_71_i0_fu_astarF_28877_29692), .in2(out_const_4));
  ui_rshift_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(2), .BITSIZE_out1(2), .PRECISION(32)) fu_astarF_28877_30484 (.out1(out_ui_rshift_expr_FU_8_0_8_78_i2_fu_astarF_28877_30484), .in1(out_UUdata_converter_FU_50_i0_fu_astarF_28877_29524), .in2(out_const_4));
  ui_plus_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(2), .BITSIZE_out1(4)) fu_astarF_28877_30486 (.out1(out_ui_plus_expr_FU_8_8_8_74_i0_fu_astarF_28877_30486), .in1(out_reg_7_reg_7), .in2(out_reg_8_reg_8));
  ui_lshift_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_astarF_28877_30489 (.out1(out_ui_lshift_expr_FU_8_0_8_71_i1_fu_astarF_28877_30489), .in1(out_ui_plus_expr_FU_8_8_8_74_i0_fu_astarF_28877_30486), .in2(out_const_4));
  ui_bit_and_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_astarF_28877_30492 (.out1(out_ui_bit_and_expr_FU_8_0_8_64_i1_fu_astarF_28877_30492), .in1(out_UUdata_converter_FU_50_i0_fu_astarF_28877_29524), .in2(out_const_6));
  ui_rshift_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(32)) fu_astarF_28877_30496 (.out1(out_ui_rshift_expr_FU_16_0_16_77_i1_fu_astarF_28877_30496), .in1(out_ui_lshift_expr_FU_16_0_16_69_i1_fu_astarF_28877_29739), .in2(out_const_4));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_astarF_28877_30499 (.out1(out_ui_rshift_expr_FU_8_0_8_78_i3_fu_astarF_28877_30499), .in1(out_UUdata_converter_FU_29_i0_fu_astarF_28877_29507), .in2(out_const_4));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(6), .BITSIZE_out1(9)) fu_astarF_28877_30501 (.out1(out_ui_plus_expr_FU_8_8_8_74_i2_fu_astarF_28877_30501), .in1(out_reg_29_reg_29), .in2(out_reg_30_reg_30));
  ui_lshift_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(2), .BITSIZE_out1(11), .PRECISION(32)) fu_astarF_28877_30504 (.out1(out_ui_lshift_expr_FU_16_0_16_69_i3_fu_astarF_28877_30504), .in1(out_ui_plus_expr_FU_8_8_8_74_i2_fu_astarF_28877_30501), .in2(out_const_4));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_astarF_28877_30507 (.out1(out_ui_bit_and_expr_FU_8_0_8_64_i2_fu_astarF_28877_30507), .in1(out_UUdata_converter_FU_29_i0_fu_astarF_28877_29507), .in2(out_const_6));
  insert #(.MEM_var_28866_28877(MEM_var_28866_28877), .MEM_var_28867_28877(MEM_var_28867_28877)) insert_81_i0 (.done_port(s_done_insert_81_i0), .proxy_in1_28866(sig_in_bus_mergerproxy_in127_0), .proxy_in2_28866(sig_in_bus_mergerproxy_in228_0), .proxy_in3_28866(sig_in_bus_mergerproxy_in329_0), .proxy_sel_LOAD_28866(sig_in_bus_mergerproxy_sel_LOAD30_0), .proxy_sel_STORE_28866(sig_in_bus_mergerproxy_sel_STORE31_0), .proxy_in1_28867(sig_in_bus_mergerproxy_in132_0), .proxy_in2_28867(sig_in_bus_mergerproxy_in233_0), .proxy_in3_28867(sig_in_bus_mergerproxy_in334_0), .proxy_sel_LOAD_28867(sig_in_bus_mergerproxy_sel_LOAD35_0), .proxy_sel_STORE_28867(sig_in_bus_mergerproxy_sel_STORE36_0), .clock(clock), .reset(reset), .start_port(s_insert_81_i00), .node(out_MUX_59_insert_81_i0_0_0_0), .\priority (out_MUX_60_insert_81_i0_1_0_0), .proxy_out1_28866(proxy_out1_28866), .proxy_out1_28867(proxy_out1_28867));
  or or_or_insert_81_i00( s_insert_81_i00, selector_IN_UNBOUNDED_astarF_28877_29426, selector_IN_UNBOUNDED_astarF_28877_29471);
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_9_i0_fu_astarF_28877_29631), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_10_i0_fu_astarF_28877_29636), .wenable(wrenable_reg_1));
  register_STD #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_ui_lshift_expr_FU_8_0_8_72_i0_fu_astarF_28877_29698), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(12), .BITSIZE_out1(12)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_23_i0_fu_astarF_28877_29701), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_21_i0_fu_astarF_28877_29682), .wenable(wrenable_reg_12));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_16_0_16_77_i0_fu_astarF_28877_30459), .wenable(wrenable_reg_13));
  register_STD #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_8_0_8_78_i0_fu_astarF_28877_30463), .wenable(wrenable_reg_14));
  register_STD #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_ui_bit_and_expr_FU_8_0_8_64_i0_fu_astarF_28877_30475), .wenable(wrenable_reg_15));
  register_SE #(.BITSIZE_in1(13), .BITSIZE_out1(13)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_19_i0_fu_astarF_28877_29658), .wenable(wrenable_reg_16));
  register_STD #(.BITSIZE_in1(14), .BITSIZE_out1(14)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_75_i3_fu_astarF_28877_29668), .wenable(wrenable_reg_17));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_22_i0_fu_astarF_28877_29565), .wenable(wrenable_reg_18));
  register_STD #(.BITSIZE_in1(14), .BITSIZE_out1(14)) reg_19 (.out1(out_reg_19_reg_19), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_75_i4_fu_astarF_28877_29688), .wenable(wrenable_reg_19));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_11_i0_fu_astarF_28877_29761), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(13), .BITSIZE_out1(13)) reg_20 (.out1(out_reg_20_reg_20), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_75_i5_fu_astarF_28877_29710), .wenable(wrenable_reg_20));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_21 (.out1(out_reg_21_reg_21), .clock(clock), .reset(reset), .in1(out_BMEMORY_CTRL_59_i0_BMEMORY_CTRL_59_i0), .wenable(wrenable_reg_21));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_22 (.out1(out_reg_22_reg_22), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_26_i0_fu_astarF_28877_29564), .wenable(wrenable_reg_22));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_23 (.out1(out_reg_23_reg_23), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_8_8_63_i1_fu_astarF_28877_29531), .wenable(wrenable_reg_23));
  register_STD #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_24 (.out1(out_reg_24_reg_24), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_8_8_63_i2_fu_astarF_28877_29566), .wenable(wrenable_reg_24));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_25 (.out1(out_reg_25_reg_25), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_27_i0_fu_astarF_28877_29568), .wenable(wrenable_reg_25));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_26 (.out1(out_reg_26_reg_26), .clock(clock), .reset(reset), .in1(out_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_array_28864_0), .wenable(wrenable_reg_26));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_27 (.out1(out_reg_27_reg_27), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_32_i0_fu_astarF_28877_29751), .wenable(wrenable_reg_27));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_28 (.out1(out_reg_28_reg_28), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_34_i0_fu_astarF_28877_30290), .wenable(wrenable_reg_28));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_29 (.out1(out_reg_29_reg_29), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_16_0_16_77_i1_fu_astarF_28877_30496), .wenable(wrenable_reg_29));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_13_i0_fu_astarF_28877_29769), .wenable(wrenable_reg_3));
  register_STD #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_30 (.out1(out_reg_30_reg_30), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_8_0_8_78_i3_fu_astarF_28877_30499), .wenable(wrenable_reg_30));
  register_STD #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_31 (.out1(out_reg_31_reg_31), .clock(clock), .reset(reset), .in1(out_ui_bit_and_expr_FU_8_0_8_64_i2_fu_astarF_28877_30507), .wenable(wrenable_reg_31));
  register_STD #(.BITSIZE_in1(13), .BITSIZE_out1(13)) reg_32 (.out1(out_reg_32_reg_32), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_31_i0_fu_astarF_28877_29748), .wenable(wrenable_reg_32));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_33 (.out1(out_reg_33_reg_33), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_32_32_32_76_i0_fu_astarF_28877_29778), .wenable(wrenable_reg_33));
  register_STD #(.BITSIZE_in1(14), .BITSIZE_out1(14)) reg_34 (.out1(out_reg_34_reg_34), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_16_16_16_75_i6_fu_astarF_28877_29757), .wenable(wrenable_reg_34));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_35 (.out1(out_reg_35_reg_35), .clock(clock), .reset(reset), .in1(out_BMEMORY_CTRL_59_i0_BMEMORY_CTRL_59_i0), .wenable(wrenable_reg_35));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_36 (.out1(out_reg_36_reg_36), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_35_i0_fu_astarF_28877_30293), .wenable(wrenable_reg_36));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_37 (.out1(out_reg_37_reg_37), .clock(clock), .reset(reset), .in1(out_heuristic_79_i0_fu_astarF_28877_29481), .wenable(wrenable_reg_37));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_38 (.out1(out_reg_38_reg_38), .clock(clock), .reset(reset), .in1(out_plus_expr_FU_8_8_8_63_i0_fu_astarF_28877_29477), .wenable(wrenable_reg_38));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_39 (.out1(out_reg_39_reg_39), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_38_i0_fu_astarF_28877_30299), .wenable(wrenable_reg_39));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_8_i0_fu_astarF_28877_29808), .wenable(wrenable_reg_4));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_40 (.out1(out_reg_40_reg_40), .clock(clock), .reset(reset), .in1(out_PROXY_CTRL_5_i0_PROXY_CTRL_5_i0), .wenable(wrenable_reg_40));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_41 (.out1(out_reg_41_reg_41), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_73_i0_fu_astarF_28877_29458), .wenable(wrenable_reg_41));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_array_28866_0), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(4), .BITSIZE_out1(4)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_49_i0_fu_astarF_28877_29661), .wenable(wrenable_reg_6));
  register_STD #(.BITSIZE_in1(4), .BITSIZE_out1(4)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_8_0_8_78_i1_fu_astarF_28877_30480), .wenable(wrenable_reg_7));
  register_STD #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_8_0_8_78_i2_fu_astarF_28877_30484), .wenable(wrenable_reg_8));
  register_STD #(.BITSIZE_in1(2), .BITSIZE_out1(2)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_ui_bit_and_expr_FU_8_0_8_64_i1_fu_astarF_28877_30492), .wenable(wrenable_reg_9));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(6), .BITSIZE_out1(9)) ui_plus_expr_FU_8_8_8_74_i1 (.out1(out_ui_plus_expr_FU_8_8_8_74_i1_ui_plus_expr_FU_8_8_8_74_i1), .in1(out_reg_13_reg_13), .in2(out_reg_14_reg_14));
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
  assign OUT_CONDITION_astarF_28877_29440 = out_read_cond_FU_15_i0_fu_astarF_28877_29440;
  assign OUT_CONDITION_astarF_28877_29562 = out_read_cond_FU_24_i0_fu_astarF_28877_29562;
  assign OUT_CONDITION_astarF_28877_29569 = out_read_cond_FU_28_i0_fu_astarF_28877_29569;
  assign OUT_CONDITION_astarF_28877_29584 = out_read_cond_FU_51_i0_fu_astarF_28877_29584;
  assign OUT_CONDITION_astarF_28877_29587 = out_read_cond_FU_58_i0_fu_astarF_28877_29587;
  assign OUT_UNBOUNDED_astarF_28877_29424 = s_done_fu_astarF_28877_29424;
  assign OUT_UNBOUNDED_astarF_28877_29425 = s_done_fu_astarF_28877_29425;
  assign OUT_UNBOUNDED_astarF_28877_29426 = s_done_insert_81_i0;
  assign OUT_UNBOUNDED_astarF_28877_29438 = s_done_fu_astarF_28877_29438;
  assign OUT_UNBOUNDED_astarF_28877_29471 = s_done_insert_81_i0;
  assign OUT_UNBOUNDED_astarF_28877_29481 = s_done_fu_astarF_28877_29481;

endmodule

// FSM based controller description for astarF
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_astarF(done_port, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_STORE, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_STORE, fuselector_BMEMORY_CTRL_59_i0_LOAD, fuselector_BMEMORY_CTRL_59_i0_STORE, selector_IN_UNBOUNDED_astarF_28877_29424, selector_IN_UNBOUNDED_astarF_28877_29425, selector_IN_UNBOUNDED_astarF_28877_29426, selector_IN_UNBOUNDED_astarF_28877_29438, selector_IN_UNBOUNDED_astarF_28877_29471, selector_IN_UNBOUNDED_astarF_28877_29481, selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0, selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1, selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0, selector_MUX_35_PROXY_CTRL_5_i0_0_0_0, selector_MUX_59_insert_81_i0_0_0_0, selector_MUX_60_insert_81_i0_1_0_0, fuselector_PROXY_CTRL_5_i0_LOAD, fuselector_PROXY_CTRL_5_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_29, wrenable_reg_3, wrenable_reg_30, wrenable_reg_31, wrenable_reg_32, wrenable_reg_33, wrenable_reg_34, wrenable_reg_35, wrenable_reg_36, wrenable_reg_37, wrenable_reg_38, wrenable_reg_39, wrenable_reg_4, wrenable_reg_40, wrenable_reg_41, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_astarF_28877_29440, OUT_CONDITION_astarF_28877_29562, OUT_CONDITION_astarF_28877_29569, OUT_CONDITION_astarF_28877_29584, OUT_CONDITION_astarF_28877_29587, OUT_UNBOUNDED_astarF_28877_29424, OUT_UNBOUNDED_astarF_28877_29425, OUT_UNBOUNDED_astarF_28877_29426, OUT_UNBOUNDED_astarF_28877_29438, OUT_UNBOUNDED_astarF_28877_29471, OUT_UNBOUNDED_astarF_28877_29481, clock, reset, start_port);
  // IN
  input OUT_CONDITION_astarF_28877_29440;
  input OUT_CONDITION_astarF_28877_29562;
  input OUT_CONDITION_astarF_28877_29569;
  input OUT_CONDITION_astarF_28877_29584;
  input OUT_CONDITION_astarF_28877_29587;
  input OUT_UNBOUNDED_astarF_28877_29424;
  input OUT_UNBOUNDED_astarF_28877_29425;
  input OUT_UNBOUNDED_astarF_28877_29426;
  input OUT_UNBOUNDED_astarF_28877_29438;
  input OUT_UNBOUNDED_astarF_28877_29471;
  input OUT_UNBOUNDED_astarF_28877_29481;
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
  output selector_IN_UNBOUNDED_astarF_28877_29424;
  output selector_IN_UNBOUNDED_astarF_28877_29425;
  output selector_IN_UNBOUNDED_astarF_28877_29426;
  output selector_IN_UNBOUNDED_astarF_28877_29438;
  output selector_IN_UNBOUNDED_astarF_28877_29471;
  output selector_IN_UNBOUNDED_astarF_28877_29481;
  output selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0;
  output selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1;
  output selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0;
  output selector_MUX_35_PROXY_CTRL_5_i0_0_0_0;
  output selector_MUX_59_insert_81_i0_0_0_0;
  output selector_MUX_60_insert_81_i0_1_0_0;
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
  output wrenable_reg_40;
  output wrenable_reg_41;
  output wrenable_reg_5;
  output wrenable_reg_6;
  output wrenable_reg_7;
  output wrenable_reg_8;
  output wrenable_reg_9;
  parameter [49:0] S_0 = 50'b00000000000000000000000000000000000000000000000001,
    S_1 = 50'b00000000000000000000000000000000000000000000000010,
    S_2 = 50'b00000000000000000000000000000000000000000000000100,
    S_3 = 50'b00000000000000000000000000000000000000000000001000,
    S_4 = 50'b00000000000000000000000000000000000000000000010000,
    S_5 = 50'b00000000000000000000000000000000000000000000100000,
    S_45 = 50'b00001000000000000000000000000000000000000000000000,
    S_46 = 50'b00010000000000000000000000000000000000000000000000,
    S_47 = 50'b00100000000000000000000000000000000000000000000000,
    S_49 = 50'b10000000000000000000000000000000000000000000000000,
    S_6 = 50'b00000000000000000000000000000000000000000001000000,
    S_7 = 50'b00000000000000000000000000000000000000000010000000,
    S_8 = 50'b00000000000000000000000000000000000000000100000000,
    S_9 = 50'b00000000000000000000000000000000000000001000000000,
    S_10 = 50'b00000000000000000000000000000000000000010000000000,
    S_48 = 50'b01000000000000000000000000000000000000000000000000,
    S_11 = 50'b00000000000000000000000000000000000000100000000000,
    S_42 = 50'b00000001000000000000000000000000000000000000000000,
    S_43 = 50'b00000010000000000000000000000000000000000000000000,
    S_44 = 50'b00000100000000000000000000000000000000000000000000,
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
    S_37 = 50'b00000000000010000000000000000000000000000000000000,
    S_38 = 50'b00000000000100000000000000000000000000000000000000,
    S_39 = 50'b00000000001000000000000000000000000000000000000000,
    S_40 = 50'b00000000010000000000000000000000000000000000000000,
    S_41 = 50'b00000000100000000000000000000000000000000000000000;
  reg [49:0] _present_state, _next_state;
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
  reg selector_IN_UNBOUNDED_astarF_28877_29424;
  reg selector_IN_UNBOUNDED_astarF_28877_29425;
  reg selector_IN_UNBOUNDED_astarF_28877_29426;
  reg selector_IN_UNBOUNDED_astarF_28877_29438;
  reg selector_IN_UNBOUNDED_astarF_28877_29471;
  reg selector_IN_UNBOUNDED_astarF_28877_29481;
  reg selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0;
  reg selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1;
  reg selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0;
  reg selector_MUX_35_PROXY_CTRL_5_i0_0_0_0;
  reg selector_MUX_59_insert_81_i0_0_0_0;
  reg selector_MUX_60_insert_81_i0_1_0_0;
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
  reg wrenable_reg_40;
  reg wrenable_reg_41;
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
    selector_IN_UNBOUNDED_astarF_28877_29424 = 1'b0;
    selector_IN_UNBOUNDED_astarF_28877_29425 = 1'b0;
    selector_IN_UNBOUNDED_astarF_28877_29426 = 1'b0;
    selector_IN_UNBOUNDED_astarF_28877_29438 = 1'b0;
    selector_IN_UNBOUNDED_astarF_28877_29471 = 1'b0;
    selector_IN_UNBOUNDED_astarF_28877_29481 = 1'b0;
    selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0 = 1'b0;
    selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1 = 1'b0;
    selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0 = 1'b0;
    selector_MUX_35_PROXY_CTRL_5_i0_0_0_0 = 1'b0;
    selector_MUX_59_insert_81_i0_0_0_0 = 1'b0;
    selector_MUX_60_insert_81_i0_1_0_0 = 1'b0;
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
    wrenable_reg_40 = 1'b0;
    wrenable_reg_41 = 1'b0;
    wrenable_reg_5 = 1'b0;
    wrenable_reg_6 = 1'b0;
    wrenable_reg_7 = 1'b0;
    wrenable_reg_8 = 1'b0;
    wrenable_reg_9 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          selector_IN_UNBOUNDED_astarF_28877_29424 = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          if (OUT_UNBOUNDED_astarF_28877_29424 == 1'b0)
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
          selector_MUX_59_insert_81_i0_0_0_0 = 1'bX;
          selector_MUX_60_insert_81_i0_1_0_0 = 1'bX;
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
          wrenable_reg_5 = 1'bX;
          wrenable_reg_6 = 1'bX;
          wrenable_reg_7 = 1'bX;
          wrenable_reg_8 = 1'bX;
          wrenable_reg_9 = 1'bX;
          _next_state = S_0;
        end
      S_1 :
        begin
          if (OUT_UNBOUNDED_astarF_28877_29424 == 1'b0)
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
          selector_IN_UNBOUNDED_astarF_28877_29425 = 1'b1;
          if (OUT_UNBOUNDED_astarF_28877_29425 == 1'b0)
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
          if (OUT_UNBOUNDED_astarF_28877_29425 == 1'b0)
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
          selector_IN_UNBOUNDED_astarF_28877_29426 = 1'b1;
          if (OUT_UNBOUNDED_astarF_28877_29426 == 1'b0)
            begin
              _next_state = S_5;
            end
          else
            begin
              _next_state = S_45;
            end
        end
      S_5 :
        begin
          if (OUT_UNBOUNDED_astarF_28877_29426 == 1'b0)
            begin
              _next_state = S_5;
            end
          else
            begin
              _next_state = S_45;
            end
        end
      S_45 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_LOAD = 1'b1;
          _next_state = S_46;
        end
      S_46 :
        begin
          wrenable_reg_5 = 1'b1;
          _next_state = S_47;
        end
      S_47 :
        begin
          if (OUT_CONDITION_astarF_28877_29587 == 1'b1)
            begin
              _next_state = S_6;
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
      S_6 :
        begin
          selector_IN_UNBOUNDED_astarF_28877_29438 = 1'b1;
          if (OUT_UNBOUNDED_astarF_28877_29438 == 1'b0)
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
          if (OUT_UNBOUNDED_astarF_28877_29438 == 1'b0)
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
          wrenable_reg_26 = 1'b1;
          _next_state = S_10;
        end
      S_10 :
        begin
          if (OUT_CONDITION_astarF_28877_29440 == 1'b0)
            begin
              _next_state = S_11;
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
      S_11 :
        begin
          selector_MUX_35_PROXY_CTRL_5_i0_0_0_0 = 1'b1;
          fuselector_PROXY_CTRL_5_i0_STORE = 1'b1;
          _next_state = S_42;
        end
      S_42 :
        begin
          fuselector_PROXY_CTRL_5_i0_LOAD = 1'b1;
          _next_state = S_43;
        end
      S_43 :
        begin
          wrenable_reg_40 = 1'b1;
          wrenable_reg_6 = 1'b1;
          wrenable_reg_7 = 1'b1;
          wrenable_reg_8 = 1'b1;
          wrenable_reg_9 = 1'b1;
          _next_state = S_44;
        end
      S_44 :
        begin
          wrenable_reg_10 = 1'b1;
          if (OUT_CONDITION_astarF_28877_29584 == 1'b1)
            begin
              _next_state = S_12;
            end
          else
            begin
              _next_state = S_45;
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
          _next_state = S_17;
        end
      S_17 :
        begin
          wrenable_reg_18 = 1'b1;
          wrenable_reg_35 = 1'b1;
          _next_state = S_18;
        end
      S_18 :
        begin
          if (OUT_CONDITION_astarF_28877_29562 == 1'b1)
            begin
              _next_state = S_19;
            end
          else
            begin
              _next_state = S_38;
            end
        end
      S_19 :
        begin
          wrenable_reg_19 = 1'b1;
          wrenable_reg_20 = 1'b1;
          _next_state = S_20;
        end
      S_20 :
        begin
          fuselector_BMEMORY_CTRL_59_i0_LOAD = 1'b1;
          selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1 = 1'b1;
          _next_state = S_21;
        end
      S_21 :
        begin
          fuselector_BMEMORY_CTRL_59_i0_LOAD = 1'b1;
          selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0 = 1'b1;
          wrenable_reg_21 = 1'b1;
          wrenable_reg_22 = 1'b1;
          _next_state = S_22;
        end
      S_22 :
        begin
          wrenable_reg_23 = 1'b1;
          wrenable_reg_24 = 1'b1;
          wrenable_reg_25 = 1'b1;
          _next_state = S_23;
        end
      S_23 :
        begin
          if (OUT_CONDITION_astarF_28877_29569 == 1'b1)
            begin
              _next_state = S_24;
            end
          else
            begin
              _next_state = S_38;
            end
        end
      S_24 :
        begin
          fuselector_BMEMORY_CTRL_59_i0_STORE = 1'b1;
          selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0 = 1'b1;
          _next_state = S_25;
        end
      S_25 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_LOAD = 1'b1;
          fuselector_PROXY_CTRL_5_i0_LOAD = 1'b1;
          _next_state = S_26;
        end
      S_26 :
        begin
          wrenable_reg_26 = 1'b1;
          wrenable_reg_27 = 1'b1;
          wrenable_reg_28 = 1'b1;
          wrenable_reg_29 = 1'b1;
          wrenable_reg_30 = 1'b1;
          wrenable_reg_31 = 1'b1;
          _next_state = S_27;
        end
      S_27 :
        begin
          wrenable_reg_32 = 1'b1;
          wrenable_reg_33 = 1'b1;
          _next_state = S_28;
        end
      S_28 :
        begin
          wrenable_reg_34 = 1'b1;
          _next_state = S_29;
        end
      S_29 :
        begin
          fuselector_BMEMORY_CTRL_59_i0_LOAD = 1'b1;
          selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0 = 1'b1;
          selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0 = 1'b1;
          _next_state = S_30;
        end
      S_30 :
        begin
          wrenable_reg_35 = 1'b1;
          wrenable_reg_36 = 1'b1;
          _next_state = S_31;
        end
      S_31 :
        begin
          selector_IN_UNBOUNDED_astarF_28877_29481 = 1'b1;
          wrenable_reg_37 = 1'b1;
          if (OUT_UNBOUNDED_astarF_28877_29481 == 1'b0)
            begin
              _next_state = S_32;
            end
          else
            begin
              _next_state = S_33;
            end
        end
      S_32 :
        begin
          wrenable_reg_37 = 1'b1;
          if (OUT_UNBOUNDED_astarF_28877_29481 == 1'b0)
            begin
              _next_state = S_32;
            end
          else
            begin
              _next_state = S_33;
            end
        end
      S_33 :
        begin
          wrenable_reg_38 = 1'b1;
          wrenable_reg_39 = 1'b1;
          _next_state = S_34;
        end
      S_34 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE = 1'b1;
          _next_state = S_35;
        end
      S_35 :
        begin
          selector_IN_UNBOUNDED_astarF_28877_29471 = 1'b1;
          selector_MUX_59_insert_81_i0_0_0_0 = 1'b1;
          selector_MUX_60_insert_81_i0_1_0_0 = 1'b1;
          if (OUT_UNBOUNDED_astarF_28877_29471 == 1'b0)
            begin
              _next_state = S_36;
            end
          else
            begin
              _next_state = S_37;
            end
        end
      S_36 :
        begin
          selector_MUX_59_insert_81_i0_0_0_0 = 1'b1;
          selector_MUX_60_insert_81_i0_1_0_0 = 1'b1;
          if (OUT_UNBOUNDED_astarF_28877_29471 == 1'b0)
            begin
              _next_state = S_36;
            end
          else
            begin
              _next_state = S_37;
            end
        end
      S_37 :
        begin
          fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_STORE = 1'b1;
          _next_state = S_38;
        end
      S_38 :
        begin
          fuselector_PROXY_CTRL_5_i0_LOAD = 1'b1;
          _next_state = S_39;
        end
      S_39 :
        begin
          wrenable_reg_40 = 1'b1;
          _next_state = S_40;
        end
      S_40 :
        begin
          wrenable_reg_41 = 1'b1;
          _next_state = S_41;
        end
      S_41 :
        begin
          fuselector_PROXY_CTRL_5_i0_STORE = 1'b1;
          _next_state = S_42;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0 = 1'bX;
          selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1 = 1'bX;
          selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0 = 1'bX;
          selector_MUX_35_PROXY_CTRL_5_i0_0_0_0 = 1'bX;
          selector_MUX_59_insert_81_i0_0_0_0 = 1'bX;
          selector_MUX_60_insert_81_i0_1_0_0 = 1'bX;
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
  parameter MEM_var_28861_28879=128, MEM_var_28862_28877=512, MEM_var_28864_28877=640, MEM_var_28865_28877=768, MEM_var_28866_28877=896, MEM_var_28867_28877=1024, MEM_var_28868_28879=256;
  // IN
  input clock;
  input reset;
  input start_port;
  input [31:0] a;
  input S_oe_ram;
  input S_we_ram;
  input [10:0] S_addr_ram;
  input [7:0] S_Wdata_ram;
  input [3:0] S_data_ram_size;
  input [7:0] M_Rdata_ram;
  input M_DataRdy;
  input [7:0] Sin_Rdata_ram;
  input Sin_DataRdy;
  input [7:0] proxy_out1_28861;
  input Min_oe_ram;
  input Min_we_ram;
  input [10:0] Min_addr_ram;
  input [7:0] Min_Wdata_ram;
  input [3:0] Min_data_ram_size;
  input [7:0] proxy_out1_28868;
  // OUT
  output done_port;
  output [7:0] Sout_Rdata_ram;
  output Sout_DataRdy;
  output [7:0] proxy_in1_28861;
  output [10:0] proxy_in2_28861;
  output [3:0] proxy_in3_28861;
  output proxy_sel_LOAD_28861;
  output proxy_sel_STORE_28861;
  output Mout_oe_ram;
  output Mout_we_ram;
  output [10:0] Mout_addr_ram;
  output [7:0] Mout_Wdata_ram;
  output [3:0] Mout_data_ram_size;
  output [7:0] proxy_in1_28868;
  output [10:0] proxy_in2_28868;
  output [3:0] proxy_in3_28868;
  output proxy_sel_LOAD_28868;
  output proxy_sel_STORE_28868;
  // Component and signal declarations
  wire OUT_CONDITION_astarF_28877_29440;
  wire OUT_CONDITION_astarF_28877_29562;
  wire OUT_CONDITION_astarF_28877_29569;
  wire OUT_CONDITION_astarF_28877_29584;
  wire OUT_CONDITION_astarF_28877_29587;
  wire OUT_UNBOUNDED_astarF_28877_29424;
  wire OUT_UNBOUNDED_astarF_28877_29425;
  wire OUT_UNBOUNDED_astarF_28877_29426;
  wire OUT_UNBOUNDED_astarF_28877_29438;
  wire OUT_UNBOUNDED_astarF_28877_29471;
  wire OUT_UNBOUNDED_astarF_28877_29481;
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
  wire selector_IN_UNBOUNDED_astarF_28877_29424;
  wire selector_IN_UNBOUNDED_astarF_28877_29425;
  wire selector_IN_UNBOUNDED_astarF_28877_29426;
  wire selector_IN_UNBOUNDED_astarF_28877_29438;
  wire selector_IN_UNBOUNDED_astarF_28877_29471;
  wire selector_IN_UNBOUNDED_astarF_28877_29481;
  wire selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0;
  wire selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1;
  wire selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0;
  wire selector_MUX_35_PROXY_CTRL_5_i0_0_0_0;
  wire selector_MUX_59_insert_81_i0_0_0_0;
  wire selector_MUX_60_insert_81_i0_1_0_0;
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
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  controller_astarF Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_STORE), .fuselector_BMEMORY_CTRL_59_i0_LOAD(fuselector_BMEMORY_CTRL_59_i0_LOAD), .fuselector_BMEMORY_CTRL_59_i0_STORE(fuselector_BMEMORY_CTRL_59_i0_STORE), .selector_IN_UNBOUNDED_astarF_28877_29424(selector_IN_UNBOUNDED_astarF_28877_29424), .selector_IN_UNBOUNDED_astarF_28877_29425(selector_IN_UNBOUNDED_astarF_28877_29425), .selector_IN_UNBOUNDED_astarF_28877_29426(selector_IN_UNBOUNDED_astarF_28877_29426), .selector_IN_UNBOUNDED_astarF_28877_29438(selector_IN_UNBOUNDED_astarF_28877_29438), .selector_IN_UNBOUNDED_astarF_28877_29471(selector_IN_UNBOUNDED_astarF_28877_29471), .selector_IN_UNBOUNDED_astarF_28877_29481(selector_IN_UNBOUNDED_astarF_28877_29481), .selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0(selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0), .selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1(selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1), .selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0(selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0), .selector_MUX_35_PROXY_CTRL_5_i0_0_0_0(selector_MUX_35_PROXY_CTRL_5_i0_0_0_0), .selector_MUX_59_insert_81_i0_0_0_0(selector_MUX_59_insert_81_i0_0_0_0), .selector_MUX_60_insert_81_i0_1_0_0(selector_MUX_60_insert_81_i0_1_0_0), .fuselector_PROXY_CTRL_5_i0_LOAD(fuselector_PROXY_CTRL_5_i0_LOAD), .fuselector_PROXY_CTRL_5_i0_STORE(fuselector_PROXY_CTRL_5_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_29(wrenable_reg_29), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_30(wrenable_reg_30), .wrenable_reg_31(wrenable_reg_31), .wrenable_reg_32(wrenable_reg_32), .wrenable_reg_33(wrenable_reg_33), .wrenable_reg_34(wrenable_reg_34), .wrenable_reg_35(wrenable_reg_35), .wrenable_reg_36(wrenable_reg_36), .wrenable_reg_37(wrenable_reg_37), .wrenable_reg_38(wrenable_reg_38), .wrenable_reg_39(wrenable_reg_39), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_40(wrenable_reg_40), .wrenable_reg_41(wrenable_reg_41), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_astarF_28877_29440(OUT_CONDITION_astarF_28877_29440), .OUT_CONDITION_astarF_28877_29562(OUT_CONDITION_astarF_28877_29562), .OUT_CONDITION_astarF_28877_29569(OUT_CONDITION_astarF_28877_29569), .OUT_CONDITION_astarF_28877_29584(OUT_CONDITION_astarF_28877_29584), .OUT_CONDITION_astarF_28877_29587(OUT_CONDITION_astarF_28877_29587), .OUT_UNBOUNDED_astarF_28877_29424(OUT_UNBOUNDED_astarF_28877_29424), .OUT_UNBOUNDED_astarF_28877_29425(OUT_UNBOUNDED_astarF_28877_29425), .OUT_UNBOUNDED_astarF_28877_29426(OUT_UNBOUNDED_astarF_28877_29426), .OUT_UNBOUNDED_astarF_28877_29438(OUT_UNBOUNDED_astarF_28877_29438), .OUT_UNBOUNDED_astarF_28877_29471(OUT_UNBOUNDED_astarF_28877_29471), .OUT_UNBOUNDED_astarF_28877_29481(OUT_UNBOUNDED_astarF_28877_29481), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_astarF #(.MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28862_28877(MEM_var_28862_28877), .MEM_var_28864_28877(MEM_var_28864_28877), .MEM_var_28865_28877(MEM_var_28865_28877), .MEM_var_28866_28877(MEM_var_28866_28877), .MEM_var_28867_28877(MEM_var_28867_28877), .MEM_var_28868_28879(MEM_var_28868_28879)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .proxy_in1_28861(proxy_in1_28861), .proxy_in2_28861(proxy_in2_28861), .proxy_in3_28861(proxy_in3_28861), .proxy_sel_LOAD_28861(proxy_sel_LOAD_28861), .proxy_sel_STORE_28861(proxy_sel_STORE_28861), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .proxy_in1_28868(proxy_in1_28868), .proxy_in2_28868(proxy_in2_28868), .proxy_in3_28868(proxy_in3_28868), .proxy_sel_LOAD_28868(proxy_sel_LOAD_28868), .proxy_sel_STORE_28868(proxy_sel_STORE_28868), .OUT_CONDITION_astarF_28877_29440(OUT_CONDITION_astarF_28877_29440), .OUT_CONDITION_astarF_28877_29562(OUT_CONDITION_astarF_28877_29562), .OUT_CONDITION_astarF_28877_29569(OUT_CONDITION_astarF_28877_29569), .OUT_CONDITION_astarF_28877_29584(OUT_CONDITION_astarF_28877_29584), .OUT_CONDITION_astarF_28877_29587(OUT_CONDITION_astarF_28877_29587), .OUT_UNBOUNDED_astarF_28877_29424(OUT_UNBOUNDED_astarF_28877_29424), .OUT_UNBOUNDED_astarF_28877_29425(OUT_UNBOUNDED_astarF_28877_29425), .OUT_UNBOUNDED_astarF_28877_29426(OUT_UNBOUNDED_astarF_28877_29426), .OUT_UNBOUNDED_astarF_28877_29438(OUT_UNBOUNDED_astarF_28877_29438), .OUT_UNBOUNDED_astarF_28877_29471(OUT_UNBOUNDED_astarF_28877_29471), .OUT_UNBOUNDED_astarF_28877_29481(OUT_UNBOUNDED_astarF_28877_29481), .clock(clock), .reset(reset), .in_port_a(a), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28861(proxy_out1_28861), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .proxy_out1_28868(proxy_out1_28868), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_1_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_2_i0_STORE), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_3_i0_STORE), .fuselector_BMEMORY_CTRL_59_i0_LOAD(fuselector_BMEMORY_CTRL_59_i0_LOAD), .fuselector_BMEMORY_CTRL_59_i0_STORE(fuselector_BMEMORY_CTRL_59_i0_STORE), .selector_IN_UNBOUNDED_astarF_28877_29424(selector_IN_UNBOUNDED_astarF_28877_29424), .selector_IN_UNBOUNDED_astarF_28877_29425(selector_IN_UNBOUNDED_astarF_28877_29425), .selector_IN_UNBOUNDED_astarF_28877_29426(selector_IN_UNBOUNDED_astarF_28877_29426), .selector_IN_UNBOUNDED_astarF_28877_29438(selector_IN_UNBOUNDED_astarF_28877_29438), .selector_IN_UNBOUNDED_astarF_28877_29471(selector_IN_UNBOUNDED_astarF_28877_29471), .selector_IN_UNBOUNDED_astarF_28877_29481(selector_IN_UNBOUNDED_astarF_28877_29481), .selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0(selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_0), .selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1(selector_MUX_15_BMEMORY_CTRL_59_i0_1_0_1), .selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0(selector_MUX_15_BMEMORY_CTRL_59_i0_1_1_0), .selector_MUX_35_PROXY_CTRL_5_i0_0_0_0(selector_MUX_35_PROXY_CTRL_5_i0_0_0_0), .selector_MUX_59_insert_81_i0_0_0_0(selector_MUX_59_insert_81_i0_0_0_0), .selector_MUX_60_insert_81_i0_1_0_0(selector_MUX_60_insert_81_i0_1_0_0), .fuselector_PROXY_CTRL_5_i0_LOAD(fuselector_PROXY_CTRL_5_i0_LOAD), .fuselector_PROXY_CTRL_5_i0_STORE(fuselector_PROXY_CTRL_5_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_29(wrenable_reg_29), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_30(wrenable_reg_30), .wrenable_reg_31(wrenable_reg_31), .wrenable_reg_32(wrenable_reg_32), .wrenable_reg_33(wrenable_reg_33), .wrenable_reg_34(wrenable_reg_34), .wrenable_reg_35(wrenable_reg_35), .wrenable_reg_36(wrenable_reg_36), .wrenable_reg_37(wrenable_reg_37), .wrenable_reg_38(wrenable_reg_38), .wrenable_reg_39(wrenable_reg_39), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_40(wrenable_reg_40), .wrenable_reg_41(wrenable_reg_41), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
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
module datapath_make_oriented(clock, reset, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, proxy_out1_28861, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, proxy_out1_28868, proxy_in1_28868, proxy_in2_28868, proxy_in3_28868, proxy_sel_LOAD_28868, proxy_sel_STORE_28868, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE, selector_MUX_10_PROXY_CTRL_1_i0_0_0_0, selector_MUX_11_PROXY_CTRL_1_i0_1_0_0, selector_MUX_14_PROXY_CTRL_2_i0_0_0_0, selector_MUX_15_PROXY_CTRL_2_i0_1_0_0, selector_MUX_15_PROXY_CTRL_2_i0_1_0_1, selector_MUX_15_PROXY_CTRL_2_i0_1_1_0, selector_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0, selector_MUX_48_reg_14_0_0_0, selector_MUX_49_reg_15_0_0_0, selector_MUX_60_reg_5_0_0_0, selector_MUX_61_reg_6_0_0_0, fuselector_PROXY_CTRL_1_i0_LOAD, fuselector_PROXY_CTRL_1_i0_STORE, fuselector_PROXY_CTRL_2_i0_LOAD, fuselector_PROXY_CTRL_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_make_oriented_28870_29150, OUT_CONDITION_make_oriented_28870_29167, OUT_CONDITION_make_oriented_28870_29174, OUT_CONDITION_make_oriented_28870_29176);
  parameter MEM_var_28859_28870=384, MEM_var_28861_28879=128, MEM_var_28868_28879=256;
  // IN
  input clock;
  input reset;
  input S_oe_ram;
  input S_we_ram;
  input [10:0] S_addr_ram;
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
  input selector_MUX_48_reg_14_0_0_0;
  input selector_MUX_49_reg_15_0_0_0;
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
  output [10:0] proxy_in2_28861;
  output [3:0] proxy_in3_28861;
  output proxy_sel_LOAD_28861;
  output proxy_sel_STORE_28861;
  output [7:0] proxy_in1_28868;
  output [10:0] proxy_in2_28868;
  output [3:0] proxy_in3_28868;
  output proxy_sel_LOAD_28868;
  output proxy_sel_STORE_28868;
  output OUT_CONDITION_make_oriented_28870_29150;
  output OUT_CONDITION_make_oriented_28870_29167;
  output OUT_CONDITION_make_oriented_28870_29174;
  output OUT_CONDITION_make_oriented_28870_29176;
  // Component and signal declarations
  wire [7:0] out_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_array_28859_0;
  wire [7:0] out_IUdata_converter_FU_21_i0_fu_make_oriented_28870_29127;
  wire [3:0] out_IUdata_converter_FU_33_i0_fu_make_oriented_28870_29969;
  wire [7:0] out_MUX_10_PROXY_CTRL_1_i0_0_0_0;
  wire [10:0] out_MUX_11_PROXY_CTRL_1_i0_1_0_0;
  wire [7:0] out_MUX_14_PROXY_CTRL_2_i0_0_0_0;
  wire [10:0] out_MUX_15_PROXY_CTRL_2_i0_1_0_0;
  wire [10:0] out_MUX_15_PROXY_CTRL_2_i0_1_0_1;
  wire [10:0] out_MUX_15_PROXY_CTRL_2_i0_1_1_0;
  wire [10:0] out_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0;
  wire [31:0] out_MUX_48_reg_14_0_0_0;
  wire [3:0] out_MUX_49_reg_15_0_0_0;
  wire [3:0] out_MUX_60_reg_5_0_0_0;
  wire [7:0] out_MUX_61_reg_6_0_0_0;
  wire [7:0] out_PROXY_CTRL_2_i0_PROXY_CTRL_2_i0;
  wire signed [7:0] out_UIdata_converter_FU_22_i0_fu_make_oriented_28870_29116;
  wire signed [4:0] out_UIdata_converter_FU_32_i0_fu_make_oriented_28870_29034;
  wire [3:0] out_UUdata_converter_FU_19_i0_fu_make_oriented_28870_29146;
  wire [8:0] out_UUdata_converter_FU_20_i0_fu_make_oriented_28870_29165;
  wire [9:0] out_UUdata_converter_FU_34_i0_fu_make_oriented_28870_29925;
  wire [3:0] out_UUdata_converter_FU_35_i0_fu_make_oriented_28870_29037;
  wire [10:0] out_UUdata_converter_FU_36_i0_fu_make_oriented_28870_29039;
  wire [6:0] out_UUdata_converter_FU_37_i0_fu_make_oriented_28870_30030;
  wire [10:0] out_UUdata_converter_FU_8_i0_fu_make_oriented_28870_29966;
  wire [9:0] out_UUdata_converter_FU_9_i0_fu_make_oriented_28870_29938;
  wire [10:0] out_addr_expr_FU_10_i0_fu_make_oriented_28870_29951;
  wire [7:0] out_addr_expr_FU_5_i0_fu_make_oriented_28870_29917;
  wire [8:0] out_addr_expr_FU_6_i0_fu_make_oriented_28870_29921;
  wire [10:0] out_addr_expr_FU_7_i0_fu_make_oriented_28870_30000;
  wire out_const_0;
  wire [7:0] out_const_1;
  wire [7:0] out_const_10;
  wire [7:0] out_const_11;
  wire [8:0] out_const_12;
  wire [8:0] out_const_13;
  wire [7:0] out_const_2;
  wire [4:0] out_const_3;
  wire out_const_4;
  wire [1:0] out_const_5;
  wire [2:0] out_const_6;
  wire [3:0] out_const_7;
  wire [6:0] out_const_8;
  wire [1:0] out_const_9;
  wire [10:0] out_conv_out_addr_expr_FU_5_i0_fu_make_oriented_28870_29917_8_11;
  wire [10:0] out_conv_out_addr_expr_FU_6_i0_fu_make_oriented_28870_29921_9_11;
  wire [31:0] out_conv_out_const_11_8_32;
  wire [31:0] out_conv_out_const_12_9_32;
  wire [31:0] out_conv_out_const_13_9_32;
  wire [3:0] out_conv_out_const_3_5_4;
  wire [10:0] out_conv_out_reg_0_reg_0_8_11;
  wire [10:0] out_conv_out_reg_10_reg_10_9_11;
  wire [10:0] out_conv_out_reg_13_reg_13_9_11;
  wire [10:0] out_conv_out_reg_17_reg_17_9_11;
  wire [10:0] out_conv_out_reg_18_reg_18_9_11;
  wire [10:0] out_conv_out_reg_1_reg_1_9_11;
  wire [7:0] out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_4_8;
  wire [3:0] out_conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_3_1_4;
  wire [31:0] out_conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_4_11_32;
  wire [3:0] out_conv_out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_5_1_4;
  wire out_ge_expr_FU_8_0_8_40_i0_fu_make_oriented_28870_30068;
  wire [7:0] out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_0;
  wire [7:0] out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_1;
  wire out_lt_expr_FU_8_0_8_41_i0_fu_make_oriented_28870_29148;
  wire out_read_cond_FU_23_i0_fu_make_oriented_28870_29150;
  wire out_read_cond_FU_25_i0_fu_make_oriented_28870_29167;
  wire out_read_cond_FU_28_i0_fu_make_oriented_28870_29174;
  wire out_read_cond_FU_38_i0_fu_make_oriented_28870_29176;
  wire [7:0] out_reg_0_reg_0;
  wire [8:0] out_reg_10_reg_10;
  wire [3:0] out_reg_11_reg_11;
  wire [5:0] out_reg_12_reg_12;
  wire [8:0] out_reg_13_reg_13;
  wire [31:0] out_reg_14_reg_14;
  wire [3:0] out_reg_15_reg_15;
  wire out_reg_16_reg_16;
  wire [8:0] out_reg_17_reg_17;
  wire [8:0] out_reg_18_reg_18;
  wire out_reg_19_reg_19;
  wire [8:0] out_reg_1_reg_1;
  wire [7:0] out_reg_20_reg_20;
  wire [7:0] out_reg_21_reg_21;
  wire [7:0] out_reg_22_reg_22;
  wire [9:0] out_reg_2_reg_2;
  wire [10:0] out_reg_3_reg_3;
  wire [10:0] out_reg_4_reg_4;
  wire [3:0] out_reg_5_reg_5;
  wire [7:0] out_reg_6_reg_6;
  wire [3:0] out_reg_7_reg_7;
  wire [10:0] out_reg_8_reg_8;
  wire [9:0] out_reg_9_reg_9;
  wire [3:0] out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2;
  wire [0:0] out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_3;
  wire [10:0] out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_4;
  wire [0:0] out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_5;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_42_i0_fu_make_oriented_28870_30391;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_42_i1_fu_make_oriented_28870_30437;
  wire [0:0] out_ui_bit_and_expr_FU_1_1_1_43_i0_fu_make_oriented_28870_29149;
  wire [1:0] out_ui_bit_and_expr_FU_8_0_8_44_i0_fu_make_oriented_28870_30350;
  wire [1:0] out_ui_bit_and_expr_FU_8_0_8_45_i0_fu_make_oriented_28870_30372;
  wire [31:0] out_ui_bit_ior_concat_expr_FU_46_i0_fu_make_oriented_28870_29087;
  wire [5:0] out_ui_bit_ior_concat_expr_FU_47_i0_fu_make_oriented_28870_29959;
  wire [6:0] out_ui_bit_ior_concat_expr_FU_48_i0_fu_make_oriented_28870_30007;
  wire [7:0] out_ui_bit_ior_concat_expr_FU_49_i0_fu_make_oriented_28870_30033;
  wire [31:0] out_ui_lshift_expr_FU_32_0_32_50_i0_fu_make_oriented_28870_30434;
  wire [5:0] out_ui_lshift_expr_FU_8_0_8_51_i0_fu_make_oriented_28870_29956;
  wire [5:0] out_ui_lshift_expr_FU_8_0_8_51_i1_fu_make_oriented_28870_30368;
  wire [6:0] out_ui_lshift_expr_FU_8_0_8_52_i0_fu_make_oriented_28870_29963;
  wire [5:0] out_ui_lshift_expr_FU_8_0_8_53_i0_fu_make_oriented_28870_30004;
  wire [6:0] out_ui_lshift_expr_FU_8_0_8_53_i1_fu_make_oriented_28870_30346;
  wire [7:0] out_ui_lshift_expr_FU_8_0_8_54_i0_fu_make_oriented_28870_30010;
  wire [7:0] out_ui_lshift_expr_FU_8_0_8_54_i1_fu_make_oriented_28870_30387;
  wire out_ui_ne_expr_FU_8_0_8_55_i0_fu_make_oriented_28870_30264;
  wire out_ui_ne_expr_FU_8_0_8_56_i0_fu_make_oriented_28870_30266;
  wire out_ui_ne_expr_FU_8_8_8_57_i0_fu_make_oriented_28870_29147;
  wire [7:0] out_ui_negate_expr_FU_8_8_58_i0_fu_make_oriented_28870_29120;
  wire [30:0] out_ui_plus_expr_FU_32_0_32_59_i0_fu_make_oriented_28870_30431;
  wire [3:0] out_ui_plus_expr_FU_8_0_8_60_i0_fu_make_oriented_28870_29054;
  wire [3:0] out_ui_plus_expr_FU_8_0_8_61_i0_fu_make_oriented_28870_29102;
  wire [4:0] out_ui_plus_expr_FU_8_8_8_62_i0_fu_make_oriented_28870_30342;
  wire [3:0] out_ui_plus_expr_FU_8_8_8_62_i1_fu_make_oriented_28870_30365;
  wire [6:0] out_ui_plus_expr_FU_8_8_8_62_i2_fu_make_oriented_28870_30384;
  wire [9:0] out_ui_pointer_plus_expr_FU_16_0_16_63_i0_fu_make_oriented_28870_29992;
  wire [10:0] out_ui_pointer_plus_expr_FU_16_16_16_64_i0_fu_make_oriented_28870_29038;
  wire [9:0] out_ui_pointer_plus_expr_FU_16_16_16_64_i1_fu_make_oriented_28870_29975;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_65_i0_fu_make_oriented_28870_29934;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_65_i1_fu_make_oriented_28870_29947;
  wire [8:0] out_ui_pointer_plus_expr_FU_8_8_8_65_i2_fu_make_oriented_28870_30039;
  wire [30:0] out_ui_rshift_expr_FU_32_0_32_66_i0_fu_make_oriented_28870_30427;
  wire [3:0] out_ui_rshift_expr_FU_8_0_8_67_i0_fu_make_oriented_28870_30336;
  wire [1:0] out_ui_rshift_expr_FU_8_0_8_67_i1_fu_make_oriented_28870_30340;
  wire [3:0] out_ui_rshift_expr_FU_8_0_8_68_i0_fu_make_oriented_28870_30358;
  wire [1:0] out_ui_rshift_expr_FU_8_0_8_68_i1_fu_make_oriented_28870_30362;
  wire [2:0] out_ui_rshift_expr_FU_8_0_8_69_i0_fu_make_oriented_28870_30377;
  wire [5:0] out_ui_rshift_expr_FU_8_0_8_69_i1_fu_make_oriented_28870_30382;
  wire [7:0] out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_6;
  wire [7:0] out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_7;
  wire [7:0] out_vb_assign_conn_obj_8_ASSIGN_VECTOR_BOOL_FU_vb_assign_8;
  wire sig_in_bus_mergerSout_DataRdy0_0;
  wire [7:0] sig_in_bus_mergerSout_Rdata_ram1_0;
  wire [7:0] sig_in_bus_mergerproxy_in1_288612_0;
  wire [7:0] sig_in_bus_mergerproxy_in1_288683_0;
  wire [10:0] sig_in_bus_mergerproxy_in2_288614_0;
  wire [10:0] sig_in_bus_mergerproxy_in2_288685_0;
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
  wire [10:0] sig_out_bus_mergerproxy_in2_288614_;
  wire [10:0] sig_out_bus_mergerproxy_in2_288685_;
  wire [3:0] sig_out_bus_mergerproxy_in3_288616_;
  wire [3:0] sig_out_bus_mergerproxy_in3_288687_;
  wire sig_out_bus_mergerproxy_sel_LOAD_288618_;
  wire sig_out_bus_mergerproxy_sel_LOAD_288689_;
  wire sig_out_bus_mergerproxy_sel_STORE_2886110_;
  wire sig_out_bus_mergerproxy_sel_STORE_2886811_;
  
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(4), .BITSIZE_out1(4)) ASSIGN_UNSIGNED_FU_u_assign_2 (.out1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2), .in1(out_const_7));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_3 (.out1(out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_3), .in1(out_const_0));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(11), .BITSIZE_out1(11)) ASSIGN_UNSIGNED_FU_u_assign_4 (.out1(out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_4), .in1(out_reg_8_reg_8));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_5 (.out1(out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_5), .in1(out_const_0));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_6 (.out1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_6), .in1(out_const_1));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_7 (.out1(out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_7), .in1(out_reg_6_reg_6));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_8 (.out1(out_vb_assign_conn_obj_8_ASSIGN_VECTOR_BOOL_FU_vb_assign_8), .in1(out_const_2));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_0 (.out1(out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_0), .in1(out_const_10));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_1 (.out1(out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_1), .in1(out_reg_22_reg_22));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_10_PROXY_CTRL_1_i0_0_0_0 (.out1(out_MUX_10_PROXY_CTRL_1_i0_0_0_0), .sel(selector_MUX_10_PROXY_CTRL_1_i0_0_0_0), .in1(out_vb_assign_conn_obj_0_ASSIGN_VECTOR_BOOL_FU_vb_assign_6), .in2(out_vb_assign_conn_obj_8_ASSIGN_VECTOR_BOOL_FU_vb_assign_8));
  MUX_GATE #(.BITSIZE_in1(11), .BITSIZE_in2(11), .BITSIZE_out1(11)) MUX_11_PROXY_CTRL_1_i0_1_0_0 (.out1(out_MUX_11_PROXY_CTRL_1_i0_1_0_0), .sel(selector_MUX_11_PROXY_CTRL_1_i0_1_0_0), .in1(out_conv_out_reg_0_reg_0_8_11), .in2(out_conv_out_addr_expr_FU_5_i0_fu_make_oriented_28870_29917_8_11));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_14_PROXY_CTRL_2_i0_0_0_0 (.out1(out_MUX_14_PROXY_CTRL_2_i0_0_0_0), .sel(selector_MUX_14_PROXY_CTRL_2_i0_0_0_0), .in1(out_iu_conv_conn_obj_2_IUdata_converter_FU_iu_conv_0), .in2(out_iu_conv_conn_obj_5_IUdata_converter_FU_iu_conv_1));
  MUX_GATE #(.BITSIZE_in1(11), .BITSIZE_in2(11), .BITSIZE_out1(11)) MUX_15_PROXY_CTRL_2_i0_1_0_0 (.out1(out_MUX_15_PROXY_CTRL_2_i0_1_0_0), .sel(selector_MUX_15_PROXY_CTRL_2_i0_1_0_0), .in1(out_conv_out_reg_18_reg_18_9_11), .in2(out_conv_out_reg_17_reg_17_9_11));
  MUX_GATE #(.BITSIZE_in1(11), .BITSIZE_in2(11), .BITSIZE_out1(11)) MUX_15_PROXY_CTRL_2_i0_1_0_1 (.out1(out_MUX_15_PROXY_CTRL_2_i0_1_0_1), .sel(selector_MUX_15_PROXY_CTRL_2_i0_1_0_1), .in1(out_conv_out_reg_13_reg_13_9_11), .in2(out_conv_out_reg_10_reg_10_9_11));
  MUX_GATE #(.BITSIZE_in1(11), .BITSIZE_in2(11), .BITSIZE_out1(11)) MUX_15_PROXY_CTRL_2_i0_1_1_0 (.out1(out_MUX_15_PROXY_CTRL_2_i0_1_1_0), .sel(selector_MUX_15_PROXY_CTRL_2_i0_1_1_0), .in1(out_MUX_15_PROXY_CTRL_2_i0_1_0_0), .in2(out_MUX_15_PROXY_CTRL_2_i0_1_0_1));
  MUX_GATE #(.BITSIZE_in1(11), .BITSIZE_in2(11), .BITSIZE_out1(11)) MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0 (.out1(out_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0), .sel(selector_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0), .in1(out_conv_out_reg_1_reg_1_9_11), .in2(out_conv_out_addr_expr_FU_6_i0_fu_make_oriented_28870_29921_9_11));
  MUX_GATE #(.BITSIZE_in1(32), .BITSIZE_in2(32), .BITSIZE_out1(32)) MUX_48_reg_14_0_0_0 (.out1(out_MUX_48_reg_14_0_0_0), .sel(selector_MUX_48_reg_14_0_0_0), .in1(out_conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_4_11_32), .in2(out_ui_bit_ior_concat_expr_FU_46_i0_fu_make_oriented_28870_29087));
  MUX_GATE #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(4)) MUX_49_reg_15_0_0_0 (.out1(out_MUX_49_reg_15_0_0_0), .sel(selector_MUX_49_reg_15_0_0_0), .in1(out_conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_3_1_4), .in2(out_ui_plus_expr_FU_8_0_8_61_i0_fu_make_oriented_28870_29102));
  MUX_GATE #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(4)) MUX_60_reg_5_0_0_0 (.out1(out_MUX_60_reg_5_0_0_0), .sel(selector_MUX_60_reg_5_0_0_0), .in1(out_reg_7_reg_7), .in2(out_conv_out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_5_1_4));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_61_reg_6_0_0_0 (.out1(out_MUX_61_reg_6_0_0_0), .sel(selector_MUX_61_reg_6_0_0_0), .in1(out_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_array_28859_0), .in2(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_4_8));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(11), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(11), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_1_i0 (.proxy_in1(sig_in_bus_mergerproxy_in1_288612_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288614_0), .proxy_in3(sig_in_bus_mergerproxy_in3_288616_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_288618_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_2886110_0), .in1(out_MUX_10_PROXY_CTRL_1_i0_0_0_0), .in2(out_MUX_11_PROXY_CTRL_1_i0_1_0_0), .in3(out_conv_out_const_3_5_4), .in4(out_const_4), .sel_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .proxy_out1(proxy_out1_28861));
  PROXY_CTRL #(.BITSIZE_in1(8), .BITSIZE_in2(11), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(11), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) PROXY_CTRL_2_i0 (.out1(out_PROXY_CTRL_2_i0_PROXY_CTRL_2_i0), .proxy_in1(sig_in_bus_mergerproxy_in1_288683_0), .proxy_in2(sig_in_bus_mergerproxy_in2_288685_0), .proxy_in3(sig_in_bus_mergerproxy_in3_288687_0), .proxy_sel_LOAD(sig_in_bus_mergerproxy_sel_LOAD_288689_0), .proxy_sel_STORE(sig_in_bus_mergerproxy_sel_STORE_2886811_0), .in1(out_MUX_14_PROXY_CTRL_2_i0_0_0_0), .in2(out_MUX_15_PROXY_CTRL_2_i0_1_1_0), .in3(out_conv_out_const_3_5_4), .in4(out_const_4), .sel_LOAD(fuselector_PROXY_CTRL_2_i0_LOAD), .sel_STORE(fuselector_PROXY_CTRL_2_i0_STORE), .proxy_out1(proxy_out1_28868));
  ARRAY_1D_STD_BRAM_SDS_BUS #(.BITSIZE_in1(8), .BITSIZE_in2(11), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_S_addr_ram(11), .BITSIZE_S_Wdata_ram(8), .BITSIZE_Sin_Rdata_ram(8), .BITSIZE_Sout_Rdata_ram(8), .BITSIZE_S_data_ram_size(4), .MEMORY_INIT_file("array_ref_28859.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28859_28870), .address_space_rangesize(128), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(11), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) array_28859_0 (.out1(out_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_array_28859_0), .Sout_Rdata_ram(sig_in_bus_mergerSout_Rdata_ram1_0), .Sout_DataRdy(sig_in_bus_mergerSout_DataRdy0_0), .clock(clock), .reset(reset), .in1(out_vb_assign_conn_obj_7_ASSIGN_VECTOR_BOOL_FU_vb_assign_7), .in2(out_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0), .in3(out_conv_out_const_3_5_4), .in4(out_const_4), .sel_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD), .sel_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(8'b00000000), .proxy_in2(11'b00000000000), .proxy_in3(4'b0000), .proxy_sel_LOAD(1'b0), .proxy_sel_STORE(1'b0));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerSout_DataRdy0_ (.out1(sig_out_bus_mergerSout_DataRdy0_), .in1({sig_in_bus_mergerSout_DataRdy0_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerSout_Rdata_ram1_ (.out1(sig_out_bus_mergerSout_Rdata_ram1_), .in1({sig_in_bus_mergerSout_Rdata_ram1_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in1_288612_ (.out1(sig_out_bus_mergerproxy_in1_288612_), .in1({sig_in_bus_mergerproxy_in1_288612_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in1_288683_ (.out1(sig_out_bus_mergerproxy_in1_288683_), .in1({sig_in_bus_mergerproxy_in1_288683_0}));
  bus_merger #(.BITSIZE_in1(11), .PORTSIZE_in1(1), .BITSIZE_out1(11)) bus_mergerproxy_in2_288614_ (.out1(sig_out_bus_mergerproxy_in2_288614_), .in1({sig_in_bus_mergerproxy_in2_288614_0}));
  bus_merger #(.BITSIZE_in1(11), .PORTSIZE_in1(1), .BITSIZE_out1(11)) bus_mergerproxy_in2_288685_ (.out1(sig_out_bus_mergerproxy_in2_288685_), .in1({sig_in_bus_mergerproxy_in2_288685_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(1), .BITSIZE_out1(4)) bus_mergerproxy_in3_288616_ (.out1(sig_out_bus_mergerproxy_in3_288616_), .in1({sig_in_bus_mergerproxy_in3_288616_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(1), .BITSIZE_out1(4)) bus_mergerproxy_in3_288687_ (.out1(sig_out_bus_mergerproxy_in3_288687_), .in1({sig_in_bus_mergerproxy_in3_288687_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD_288618_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288618_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288618_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD_288689_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288689_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288689_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE_2886110_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886110_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886110_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE_2886811_ (.out1(sig_out_bus_mergerproxy_sel_STORE_2886811_), .in1({sig_in_bus_mergerproxy_sel_STORE_2886811_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(8), .value(8'b00000000)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_10 (.out1(out_const_10));
  constant_value #(.BITSIZE_out1(8), .value(MEM_var_28861_28879)) const_11 (.out1(out_const_11));
  constant_value #(.BITSIZE_out1(9), .value(MEM_var_28868_28879)) const_12 (.out1(out_const_12));
  constant_value #(.BITSIZE_out1(9), .value(MEM_var_28859_28870)) const_13 (.out1(out_const_13));
  constant_value #(.BITSIZE_out1(8), .value(8'b00001010)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(2), .value(2'b10)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(3), .value(3'b101)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(4), .value(4'b1010)) const_7 (.out1(out_const_7));
  constant_value #(.BITSIZE_out1(7), .value(7'b1011010)) const_8 (.out1(out_const_8));
  constant_value #(.BITSIZE_out1(2), .value(2'b11)) const_9 (.out1(out_const_9));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(11)) conv_out_addr_expr_FU_5_i0_fu_make_oriented_28870_29917_8_11 (.out1(out_conv_out_addr_expr_FU_5_i0_fu_make_oriented_28870_29917_8_11), .in1(out_addr_expr_FU_5_i0_fu_make_oriented_28870_29917));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(11)) conv_out_addr_expr_FU_6_i0_fu_make_oriented_28870_29921_9_11 (.out1(out_conv_out_addr_expr_FU_6_i0_fu_make_oriented_28870_29921_9_11), .in1(out_addr_expr_FU_6_i0_fu_make_oriented_28870_29921));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(32)) conv_out_const_11_8_32 (.out1(out_conv_out_const_11_8_32), .in1(out_const_11));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(32)) conv_out_const_12_9_32 (.out1(out_conv_out_const_12_9_32), .in1(out_const_12));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(32)) conv_out_const_13_9_32 (.out1(out_conv_out_const_13_9_32), .in1(out_const_13));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_3_5_4 (.out1(out_conv_out_const_3_5_4), .in1(out_const_3));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(11)) conv_out_reg_0_reg_0_8_11 (.out1(out_conv_out_reg_0_reg_0_8_11), .in1(out_reg_0_reg_0));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(11)) conv_out_reg_10_reg_10_9_11 (.out1(out_conv_out_reg_10_reg_10_9_11), .in1(out_reg_10_reg_10));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(11)) conv_out_reg_13_reg_13_9_11 (.out1(out_conv_out_reg_13_reg_13_9_11), .in1(out_reg_13_reg_13));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(11)) conv_out_reg_17_reg_17_9_11 (.out1(out_conv_out_reg_17_reg_17_9_11), .in1(out_reg_17_reg_17));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(11)) conv_out_reg_18_reg_18_9_11 (.out1(out_conv_out_reg_18_reg_18_9_11), .in1(out_reg_18_reg_18));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(11)) conv_out_reg_1_reg_1_9_11 (.out1(out_conv_out_reg_1_reg_1_9_11), .in1(out_reg_1_reg_1));
  UUdata_converter_FU #(.BITSIZE_in1(4), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_4_8 (.out1(out_conv_out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2_4_8), .in1(out_u_assign_conn_obj_1_ASSIGN_UNSIGNED_FU_u_assign_2));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(4)) conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_3_1_4 (.out1(out_conv_out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_3_1_4), .in1(out_u_assign_conn_obj_3_ASSIGN_UNSIGNED_FU_u_assign_3));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(32)) conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_4_11_32 (.out1(out_conv_out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_4_11_32), .in1(out_u_assign_conn_obj_4_ASSIGN_UNSIGNED_FU_u_assign_4));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(4)) conv_out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_5_1_4 (.out1(out_conv_out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_5_1_4), .in1(out_u_assign_conn_obj_6_ASSIGN_UNSIGNED_FU_u_assign_5));
  UIdata_converter_FU #(.BITSIZE_in1(4), .BITSIZE_out1(5)) fu_make_oriented_28870_29034 (.out1(out_UIdata_converter_FU_32_i0_fu_make_oriented_28870_29034), .in1(out_reg_5_reg_5));
  UUdata_converter_FU #(.BITSIZE_in1(4), .BITSIZE_out1(4)) fu_make_oriented_28870_29037 (.out1(out_UUdata_converter_FU_35_i0_fu_make_oriented_28870_29037), .in1(out_reg_5_reg_5));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(4), .BITSIZE_out1(11), .LSB_PARAMETER(0)) fu_make_oriented_28870_29038 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_64_i0_fu_make_oriented_28870_29038), .in1(out_reg_3_reg_3), .in2(out_UUdata_converter_FU_35_i0_fu_make_oriented_28870_29037));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(11)) fu_make_oriented_28870_29039 (.out1(out_UUdata_converter_FU_36_i0_fu_make_oriented_28870_29039), .in1(out_ui_pointer_plus_expr_FU_16_16_16_64_i0_fu_make_oriented_28870_29038));
  ui_plus_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(1), .BITSIZE_out1(4)) fu_make_oriented_28870_29054 (.out1(out_ui_plus_expr_FU_8_0_8_60_i0_fu_make_oriented_28870_29054), .in1(out_reg_5_reg_5), .in2(out_const_4));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(32), .OFFSET_PARAMETER(1)) fu_make_oriented_28870_29087 (.out1(out_ui_bit_ior_concat_expr_FU_46_i0_fu_make_oriented_28870_29087), .in1(out_ui_lshift_expr_FU_32_0_32_50_i0_fu_make_oriented_28870_30434), .in2(out_ui_bit_and_expr_FU_1_0_1_42_i1_fu_make_oriented_28870_30437), .in3(out_const_4));
  ui_plus_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(1), .BITSIZE_out1(4)) fu_make_oriented_28870_29102 (.out1(out_ui_plus_expr_FU_8_0_8_61_i0_fu_make_oriented_28870_29102), .in1(out_reg_15_reg_15), .in2(out_const_4));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_oriented_28870_29116 (.out1(out_UIdata_converter_FU_22_i0_fu_make_oriented_28870_29116), .in1(out_ui_negate_expr_FU_8_8_58_i0_fu_make_oriented_28870_29120));
  ui_negate_expr_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_oriented_28870_29120 (.out1(out_ui_negate_expr_FU_8_8_58_i0_fu_make_oriented_28870_29120), .in1(out_reg_20_reg_20));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_make_oriented_28870_29127 (.out1(out_IUdata_converter_FU_21_i0_fu_make_oriented_28870_29127), .in1(out_PROXY_CTRL_2_i0_PROXY_CTRL_2_i0));
  UUdata_converter_FU #(.BITSIZE_in1(4), .BITSIZE_out1(4)) fu_make_oriented_28870_29146 (.out1(out_UUdata_converter_FU_19_i0_fu_make_oriented_28870_29146), .in1(out_reg_15_reg_15));
  ui_ne_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(1)) fu_make_oriented_28870_29147 (.out1(out_ui_ne_expr_FU_8_8_8_57_i0_fu_make_oriented_28870_29147), .in1(out_reg_5_reg_5), .in2(out_UUdata_converter_FU_19_i0_fu_make_oriented_28870_29146));
  lt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_make_oriented_28870_29148 (.out1(out_lt_expr_FU_8_0_8_41_i0_fu_make_oriented_28870_29148), .in1(out_reg_21_reg_21), .in2(out_const_9));
  ui_bit_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_oriented_28870_29149 (.out1(out_ui_bit_and_expr_FU_1_1_1_43_i0_fu_make_oriented_28870_29149), .in1(out_lt_expr_FU_8_0_8_41_i0_fu_make_oriented_28870_29148), .in2(out_reg_16_reg_16));
  read_cond_FU #(.BITSIZE_in1(1)) fu_make_oriented_28870_29150 (.out1(out_read_cond_FU_23_i0_fu_make_oriented_28870_29150), .in1(out_ui_bit_and_expr_FU_1_1_1_43_i0_fu_make_oriented_28870_29149));
  UUdata_converter_FU #(.BITSIZE_in1(32), .BITSIZE_out1(9)) fu_make_oriented_28870_29165 (.out1(out_UUdata_converter_FU_20_i0_fu_make_oriented_28870_29165), .in1(out_reg_14_reg_14));
  read_cond_FU #(.BITSIZE_in1(1)) fu_make_oriented_28870_29167 (.out1(out_read_cond_FU_25_i0_fu_make_oriented_28870_29167), .in1(out_ge_expr_FU_8_0_8_40_i0_fu_make_oriented_28870_30068));
  read_cond_FU #(.BITSIZE_in1(1)) fu_make_oriented_28870_29174 (.out1(out_read_cond_FU_28_i0_fu_make_oriented_28870_29174), .in1(out_reg_19_reg_19));
  read_cond_FU #(.BITSIZE_in1(1)) fu_make_oriented_28870_29176 (.out1(out_read_cond_FU_38_i0_fu_make_oriented_28870_29176), .in1(out_ui_ne_expr_FU_8_0_8_56_i0_fu_make_oriented_28870_30266));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(8)) fu_make_oriented_28870_29917 (.out1(out_addr_expr_FU_5_i0_fu_make_oriented_28870_29917), .in1(out_conv_out_const_11_8_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(9)) fu_make_oriented_28870_29921 (.out1(out_addr_expr_FU_6_i0_fu_make_oriented_28870_29921), .in1(out_conv_out_const_13_9_32));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(10)) fu_make_oriented_28870_29925 (.out1(out_UUdata_converter_FU_34_i0_fu_make_oriented_28870_29925), .in1(out_ui_pointer_plus_expr_FU_16_16_16_64_i1_fu_make_oriented_28870_29975));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(4), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_make_oriented_28870_29934 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_65_i0_fu_make_oriented_28870_29934), .in1(out_reg_9_reg_9), .in2(out_reg_11_reg_11));
  UUdata_converter_FU #(.BITSIZE_in1(10), .BITSIZE_out1(10)) fu_make_oriented_28870_29938 (.out1(out_UUdata_converter_FU_9_i0_fu_make_oriented_28870_29938), .in1(out_ui_pointer_plus_expr_FU_16_0_16_63_i0_fu_make_oriented_28870_29992));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(10), .BITSIZE_in2(4), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_make_oriented_28870_29947 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_65_i1_fu_make_oriented_28870_29947), .in1(out_reg_2_reg_2), .in2(out_IUdata_converter_FU_33_i0_fu_make_oriented_28870_29969));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) fu_make_oriented_28870_29951 (.out1(out_addr_expr_FU_10_i0_fu_make_oriented_28870_29951), .in1(out_conv_out_const_12_9_32));
  ui_lshift_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_make_oriented_28870_29956 (.out1(out_ui_lshift_expr_FU_8_0_8_51_i0_fu_make_oriented_28870_29956), .in1(out_UUdata_converter_FU_35_i0_fu_make_oriented_28870_29037), .in2(out_const_5));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(6), .OFFSET_PARAMETER(2)) fu_make_oriented_28870_29959 (.out1(out_ui_bit_ior_concat_expr_FU_47_i0_fu_make_oriented_28870_29959), .in1(out_ui_lshift_expr_FU_8_0_8_51_i1_fu_make_oriented_28870_30368), .in2(out_ui_bit_and_expr_FU_8_0_8_45_i0_fu_make_oriented_28870_30372), .in3(out_const_5));
  ui_lshift_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(1), .BITSIZE_out1(7), .PRECISION(32)) fu_make_oriented_28870_29963 (.out1(out_ui_lshift_expr_FU_8_0_8_52_i0_fu_make_oriented_28870_29963), .in1(out_ui_bit_ior_concat_expr_FU_47_i0_fu_make_oriented_28870_29959), .in2(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(11)) fu_make_oriented_28870_29966 (.out1(out_UUdata_converter_FU_8_i0_fu_make_oriented_28870_29966), .in1(out_addr_expr_FU_7_i0_fu_make_oriented_28870_30000));
  IUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) fu_make_oriented_28870_29969 (.out1(out_IUdata_converter_FU_33_i0_fu_make_oriented_28870_29969), .in1(out_UIdata_converter_FU_32_i0_fu_make_oriented_28870_29034));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(8), .BITSIZE_out1(10), .LSB_PARAMETER(0)) fu_make_oriented_28870_29975 (.out1(out_ui_pointer_plus_expr_FU_16_16_16_64_i1_fu_make_oriented_28870_29975), .in1(out_reg_4_reg_4), .in2(out_ui_lshift_expr_FU_8_0_8_54_i0_fu_make_oriented_28870_30010));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(7), .BITSIZE_out1(10), .LSB_PARAMETER(0)) fu_make_oriented_28870_29992 (.out1(out_ui_pointer_plus_expr_FU_16_0_16_63_i0_fu_make_oriented_28870_29992), .in1(out_UUdata_converter_FU_8_i0_fu_make_oriented_28870_29966), .in2(out_const_8));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) fu_make_oriented_28870_30000 (.out1(out_addr_expr_FU_7_i0_fu_make_oriented_28870_30000), .in1(out_conv_out_const_12_9_32));
  ui_lshift_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_make_oriented_28870_30004 (.out1(out_ui_lshift_expr_FU_8_0_8_53_i0_fu_make_oriented_28870_30004), .in1(out_IUdata_converter_FU_33_i0_fu_make_oriented_28870_29969), .in2(out_const_5));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_in3(2), .BITSIZE_out1(7), .OFFSET_PARAMETER(2)) fu_make_oriented_28870_30007 (.out1(out_ui_bit_ior_concat_expr_FU_48_i0_fu_make_oriented_28870_30007), .in1(out_ui_lshift_expr_FU_8_0_8_53_i1_fu_make_oriented_28870_30346), .in2(out_ui_bit_and_expr_FU_8_0_8_44_i0_fu_make_oriented_28870_30350), .in3(out_const_5));
  ui_lshift_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(1), .BITSIZE_out1(8), .PRECISION(32)) fu_make_oriented_28870_30010 (.out1(out_ui_lshift_expr_FU_8_0_8_54_i0_fu_make_oriented_28870_30010), .in1(out_ui_bit_ior_concat_expr_FU_48_i0_fu_make_oriented_28870_30007), .in2(out_const_4));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(7)) fu_make_oriented_28870_30030 (.out1(out_UUdata_converter_FU_37_i0_fu_make_oriented_28870_30030), .in1(out_ui_lshift_expr_FU_8_0_8_52_i0_fu_make_oriented_28870_29963));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(8), .OFFSET_PARAMETER(1)) fu_make_oriented_28870_30033 (.out1(out_ui_bit_ior_concat_expr_FU_49_i0_fu_make_oriented_28870_30033), .in1(out_ui_lshift_expr_FU_8_0_8_54_i1_fu_make_oriented_28870_30387), .in2(out_ui_bit_and_expr_FU_1_0_1_42_i0_fu_make_oriented_28870_30391), .in3(out_const_4));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(11), .BITSIZE_in2(8), .BITSIZE_out1(9), .LSB_PARAMETER(0)) fu_make_oriented_28870_30039 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_65_i2_fu_make_oriented_28870_30039), .in1(out_reg_3_reg_3), .in2(out_ui_bit_ior_concat_expr_FU_49_i0_fu_make_oriented_28870_30033));
  ge_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_oriented_28870_30068 (.out1(out_ge_expr_FU_8_0_8_40_i0_fu_make_oriented_28870_30068), .in1(out_reg_21_reg_21), .in2(out_const_0));
  ui_ne_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(1)) fu_make_oriented_28870_30264 (.out1(out_ui_ne_expr_FU_8_0_8_55_i0_fu_make_oriented_28870_30264), .in1(out_ui_plus_expr_FU_8_0_8_61_i0_fu_make_oriented_28870_29102), .in2(out_const_7));
  ui_ne_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(4), .BITSIZE_out1(1)) fu_make_oriented_28870_30266 (.out1(out_ui_ne_expr_FU_8_0_8_56_i0_fu_make_oriented_28870_30266), .in1(out_reg_5_reg_5), .in2(out_const_7));
  ui_rshift_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(2), .BITSIZE_out1(4), .PRECISION(32)) fu_make_oriented_28870_30336 (.out1(out_ui_rshift_expr_FU_8_0_8_67_i0_fu_make_oriented_28870_30336), .in1(out_ui_lshift_expr_FU_8_0_8_53_i0_fu_make_oriented_28870_30004), .in2(out_const_5));
  ui_rshift_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(2), .BITSIZE_out1(2), .PRECISION(32)) fu_make_oriented_28870_30340 (.out1(out_ui_rshift_expr_FU_8_0_8_67_i1_fu_make_oriented_28870_30340), .in1(out_IUdata_converter_FU_33_i0_fu_make_oriented_28870_29969), .in2(out_const_5));
  ui_plus_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(2), .BITSIZE_out1(5)) fu_make_oriented_28870_30342 (.out1(out_ui_plus_expr_FU_8_8_8_62_i0_fu_make_oriented_28870_30342), .in1(out_ui_rshift_expr_FU_8_0_8_67_i0_fu_make_oriented_28870_30336), .in2(out_ui_rshift_expr_FU_8_0_8_67_i1_fu_make_oriented_28870_30340));
  ui_lshift_expr_FU #(.BITSIZE_in1(5), .BITSIZE_in2(2), .BITSIZE_out1(7), .PRECISION(32)) fu_make_oriented_28870_30346 (.out1(out_ui_lshift_expr_FU_8_0_8_53_i1_fu_make_oriented_28870_30346), .in1(out_ui_plus_expr_FU_8_8_8_62_i0_fu_make_oriented_28870_30342), .in2(out_const_5));
  ui_bit_and_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_make_oriented_28870_30350 (.out1(out_ui_bit_and_expr_FU_8_0_8_44_i0_fu_make_oriented_28870_30350), .in1(out_IUdata_converter_FU_33_i0_fu_make_oriented_28870_29969), .in2(out_const_9));
  ui_rshift_expr_FU #(.BITSIZE_in1(6), .BITSIZE_in2(2), .BITSIZE_out1(4), .PRECISION(32)) fu_make_oriented_28870_30358 (.out1(out_ui_rshift_expr_FU_8_0_8_68_i0_fu_make_oriented_28870_30358), .in1(out_ui_lshift_expr_FU_8_0_8_51_i0_fu_make_oriented_28870_29956), .in2(out_const_5));
  ui_rshift_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(2), .BITSIZE_out1(2), .PRECISION(32)) fu_make_oriented_28870_30362 (.out1(out_ui_rshift_expr_FU_8_0_8_68_i1_fu_make_oriented_28870_30362), .in1(out_UUdata_converter_FU_35_i0_fu_make_oriented_28870_29037), .in2(out_const_5));
  ui_plus_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(2), .BITSIZE_out1(4)) fu_make_oriented_28870_30365 (.out1(out_ui_plus_expr_FU_8_8_8_62_i1_fu_make_oriented_28870_30365), .in1(out_ui_rshift_expr_FU_8_0_8_68_i0_fu_make_oriented_28870_30358), .in2(out_ui_rshift_expr_FU_8_0_8_68_i1_fu_make_oriented_28870_30362));
  ui_lshift_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(2), .BITSIZE_out1(6), .PRECISION(32)) fu_make_oriented_28870_30368 (.out1(out_ui_lshift_expr_FU_8_0_8_51_i1_fu_make_oriented_28870_30368), .in1(out_ui_plus_expr_FU_8_8_8_62_i1_fu_make_oriented_28870_30365), .in2(out_const_5));
  ui_bit_and_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(2), .BITSIZE_out1(2)) fu_make_oriented_28870_30372 (.out1(out_ui_bit_and_expr_FU_8_0_8_45_i0_fu_make_oriented_28870_30372), .in1(out_UUdata_converter_FU_35_i0_fu_make_oriented_28870_29037), .in2(out_const_9));
  ui_rshift_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(1), .BITSIZE_out1(3), .PRECISION(32)) fu_make_oriented_28870_30377 (.out1(out_ui_rshift_expr_FU_8_0_8_69_i0_fu_make_oriented_28870_30377), .in1(out_reg_15_reg_15), .in2(out_const_4));
  ui_rshift_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(1), .BITSIZE_out1(6), .PRECISION(32)) fu_make_oriented_28870_30382 (.out1(out_ui_rshift_expr_FU_8_0_8_69_i1_fu_make_oriented_28870_30382), .in1(out_UUdata_converter_FU_37_i0_fu_make_oriented_28870_30030), .in2(out_const_4));
  ui_plus_expr_FU #(.BITSIZE_in1(3), .BITSIZE_in2(6), .BITSIZE_out1(7)) fu_make_oriented_28870_30384 (.out1(out_ui_plus_expr_FU_8_8_8_62_i2_fu_make_oriented_28870_30384), .in1(out_ui_rshift_expr_FU_8_0_8_69_i0_fu_make_oriented_28870_30377), .in2(out_reg_12_reg_12));
  ui_lshift_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(1), .BITSIZE_out1(8), .PRECISION(32)) fu_make_oriented_28870_30387 (.out1(out_ui_lshift_expr_FU_8_0_8_54_i1_fu_make_oriented_28870_30387), .in1(out_ui_plus_expr_FU_8_8_8_62_i2_fu_make_oriented_28870_30384), .in2(out_const_4));
  ui_bit_and_expr_FU #(.BITSIZE_in1(4), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_oriented_28870_30391 (.out1(out_ui_bit_and_expr_FU_1_0_1_42_i0_fu_make_oriented_28870_30391), .in1(out_reg_15_reg_15), .in2(out_const_4));
  ui_rshift_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(31), .PRECISION(32)) fu_make_oriented_28870_30427 (.out1(out_ui_rshift_expr_FU_32_0_32_66_i0_fu_make_oriented_28870_30427), .in1(out_reg_14_reg_14), .in2(out_const_4));
  ui_plus_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(3), .BITSIZE_out1(31)) fu_make_oriented_28870_30431 (.out1(out_ui_plus_expr_FU_32_0_32_59_i0_fu_make_oriented_28870_30431), .in1(out_ui_rshift_expr_FU_32_0_32_66_i0_fu_make_oriented_28870_30427), .in2(out_const_6));
  ui_lshift_expr_FU #(.BITSIZE_in1(31), .BITSIZE_in2(1), .BITSIZE_out1(32), .PRECISION(32)) fu_make_oriented_28870_30434 (.out1(out_ui_lshift_expr_FU_32_0_32_50_i0_fu_make_oriented_28870_30434), .in1(out_ui_plus_expr_FU_32_0_32_59_i0_fu_make_oriented_28870_30431), .in2(out_const_4));
  ui_bit_and_expr_FU #(.BITSIZE_in1(32), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_make_oriented_28870_30437 (.out1(out_ui_bit_and_expr_FU_1_0_1_42_i1_fu_make_oriented_28870_30437), .in1(out_reg_14_reg_14), .in2(out_const_4));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_5_i0_fu_make_oriented_28870_29917), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_6_i0_fu_make_oriented_28870_29921), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_65_i1_fu_make_oriented_28870_29947), .wenable(wrenable_reg_10));
  register_STD #(.BITSIZE_in1(4), .BITSIZE_out1(4)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_33_i0_fu_make_oriented_28870_29969), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(6), .BITSIZE_out1(6)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_8_0_8_69_i1_fu_make_oriented_28870_30382), .wenable(wrenable_reg_12));
  register_STD #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_65_i0_fu_make_oriented_28870_29934), .wenable(wrenable_reg_13));
  register_SE #(.BITSIZE_in1(32), .BITSIZE_out1(32)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_MUX_48_reg_14_0_0_0), .wenable(wrenable_reg_14));
  register_SE #(.BITSIZE_in1(4), .BITSIZE_out1(4)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_MUX_49_reg_15_0_0_0), .wenable(wrenable_reg_15));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_8_8_57_i0_fu_make_oriented_28870_29147), .wenable(wrenable_reg_16));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_20_i0_fu_make_oriented_28870_29165), .wenable(wrenable_reg_17));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_65_i2_fu_make_oriented_28870_30039), .wenable(wrenable_reg_18));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_19 (.out1(out_reg_19_reg_19), .clock(clock), .reset(reset), .in1(out_ui_ne_expr_FU_8_0_8_55_i0_fu_make_oriented_28870_30264), .wenable(wrenable_reg_19));
  register_SE #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_9_i0_fu_make_oriented_28870_29938), .wenable(wrenable_reg_2));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_20 (.out1(out_reg_20_reg_20), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_21_i0_fu_make_oriented_28870_29127), .wenable(wrenable_reg_20));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_21 (.out1(out_reg_21_reg_21), .clock(clock), .reset(reset), .in1(out_PROXY_CTRL_2_i0_PROXY_CTRL_2_i0), .wenable(wrenable_reg_21));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_22 (.out1(out_reg_22_reg_22), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_22_i0_fu_make_oriented_28870_29116), .wenable(wrenable_reg_22));
  register_SE #(.BITSIZE_in1(11), .BITSIZE_out1(11)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_10_i0_fu_make_oriented_28870_29951), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(11), .BITSIZE_out1(11)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_8_i0_fu_make_oriented_28870_29966), .wenable(wrenable_reg_4));
  register_SE #(.BITSIZE_in1(4), .BITSIZE_out1(4)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_MUX_60_reg_5_0_0_0), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_MUX_61_reg_6_0_0_0), .wenable(wrenable_reg_6));
  register_SE #(.BITSIZE_in1(4), .BITSIZE_out1(4)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_60_i0_fu_make_oriented_28870_29054), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(11), .BITSIZE_out1(11)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_36_i0_fu_make_oriented_28870_29039), .wenable(wrenable_reg_8));
  register_STD #(.BITSIZE_in1(10), .BITSIZE_out1(10)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_34_i0_fu_make_oriented_28870_29925), .wenable(wrenable_reg_9));
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
  assign OUT_CONDITION_make_oriented_28870_29150 = out_read_cond_FU_23_i0_fu_make_oriented_28870_29150;
  assign OUT_CONDITION_make_oriented_28870_29167 = out_read_cond_FU_25_i0_fu_make_oriented_28870_29167;
  assign OUT_CONDITION_make_oriented_28870_29174 = out_read_cond_FU_28_i0_fu_make_oriented_28870_29174;
  assign OUT_CONDITION_make_oriented_28870_29176 = out_read_cond_FU_38_i0_fu_make_oriented_28870_29176;

endmodule

// FSM based controller description for make_oriented
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_make_oriented(done_port, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD, fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE, selector_MUX_10_PROXY_CTRL_1_i0_0_0_0, selector_MUX_11_PROXY_CTRL_1_i0_1_0_0, selector_MUX_14_PROXY_CTRL_2_i0_0_0_0, selector_MUX_15_PROXY_CTRL_2_i0_1_0_0, selector_MUX_15_PROXY_CTRL_2_i0_1_0_1, selector_MUX_15_PROXY_CTRL_2_i0_1_1_0, selector_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0, selector_MUX_48_reg_14_0_0_0, selector_MUX_49_reg_15_0_0_0, selector_MUX_60_reg_5_0_0_0, selector_MUX_61_reg_6_0_0_0, fuselector_PROXY_CTRL_1_i0_LOAD, fuselector_PROXY_CTRL_1_i0_STORE, fuselector_PROXY_CTRL_2_i0_LOAD, fuselector_PROXY_CTRL_2_i0_STORE, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_make_oriented_28870_29150, OUT_CONDITION_make_oriented_28870_29167, OUT_CONDITION_make_oriented_28870_29174, OUT_CONDITION_make_oriented_28870_29176, clock, reset, start_port);
  // IN
  input OUT_CONDITION_make_oriented_28870_29150;
  input OUT_CONDITION_make_oriented_28870_29167;
  input OUT_CONDITION_make_oriented_28870_29174;
  input OUT_CONDITION_make_oriented_28870_29176;
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
  output selector_MUX_48_reg_14_0_0_0;
  output selector_MUX_49_reg_15_0_0_0;
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
  output wrenable_reg_3;
  output wrenable_reg_4;
  output wrenable_reg_5;
  output wrenable_reg_6;
  output wrenable_reg_7;
  output wrenable_reg_8;
  output wrenable_reg_9;
  parameter [17:0] S_0 = 18'b000000000000000001,
    S_1 = 18'b000000000000000010,
    S_16 = 18'b010000000000000000,
    S_17 = 18'b100000000000000000,
    S_2 = 18'b000000000000000100,
    S_3 = 18'b000000000000001000,
    S_4 = 18'b000000000000010000,
    S_5 = 18'b000000000000100000,
    S_6 = 18'b000000000001000000,
    S_7 = 18'b000000000010000000,
    S_8 = 18'b000000000100000000,
    S_11 = 18'b000000100000000000,
    S_12 = 18'b000001000000000000,
    S_13 = 18'b000010000000000000,
    S_14 = 18'b000100000000000000,
    S_9 = 18'b000000001000000000,
    S_10 = 18'b000000010000000000,
    S_15 = 18'b001000000000000000;
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
  reg selector_MUX_48_reg_14_0_0_0;
  reg selector_MUX_49_reg_15_0_0_0;
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
    selector_MUX_48_reg_14_0_0_0 = 1'b0;
    selector_MUX_49_reg_15_0_0_0 = 1'b0;
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
          selector_MUX_48_reg_14_0_0_0 = 1'bX;
          selector_MUX_49_reg_15_0_0_0 = 1'bX;
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
          _next_state = S_16;
        end
      S_16 :
        begin
          wrenable_reg_10 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_12 = 1'b1;
          wrenable_reg_7 = 1'b1;
          wrenable_reg_8 = 1'b1;
          wrenable_reg_9 = 1'b1;
          if (OUT_CONDITION_make_oriented_28870_29176 == 1'b1)
            begin
              _next_state = S_2;
            end
          else
            begin
              _next_state = S_17;
              done_port = 1'b1;
              wrenable_reg_10 = 1'b0;
              wrenable_reg_11 = 1'b0;
              wrenable_reg_12 = 1'b0;
              wrenable_reg_7 = 1'b0;
              wrenable_reg_8 = 1'b0;
              wrenable_reg_9 = 1'b0;
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
          wrenable_reg_13 = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          selector_MUX_14_PROXY_CTRL_2_i0_0_0_0 = 1'b1;
          selector_MUX_15_PROXY_CTRL_2_i0_1_0_1 = 1'b1;
          fuselector_PROXY_CTRL_2_i0_STORE = 1'b1;
          _next_state = S_4;
        end
      S_4 :
        begin
          selector_MUX_14_PROXY_CTRL_2_i0_0_0_0 = 1'b1;
          selector_MUX_48_reg_14_0_0_0 = 1'b1;
          selector_MUX_49_reg_15_0_0_0 = 1'b1;
          fuselector_PROXY_CTRL_2_i0_STORE = 1'b1;
          wrenable_reg_14 = 1'b1;
          wrenable_reg_15 = 1'b1;
          _next_state = S_5;
        end
      S_5 :
        begin
          wrenable_reg_14 = 1'b1;
          wrenable_reg_15 = 1'b1;
          wrenable_reg_16 = 1'b1;
          wrenable_reg_17 = 1'b1;
          wrenable_reg_18 = 1'b1;
          wrenable_reg_19 = 1'b1;
          _next_state = S_6;
        end
      S_6 :
        begin
          selector_MUX_15_PROXY_CTRL_2_i0_1_0_0 = 1'b1;
          selector_MUX_15_PROXY_CTRL_2_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRL_2_i0_LOAD = 1'b1;
          _next_state = S_7;
        end
      S_7 :
        begin
          wrenable_reg_20 = 1'b1;
          wrenable_reg_21 = 1'b1;
          _next_state = S_8;
        end
      S_8 :
        begin
          wrenable_reg_22 = 1'b1;
          if (OUT_CONDITION_make_oriented_28870_29150 == 1'b1)
            begin
              _next_state = S_9;
            end
          else
            begin
              _next_state = S_11;
              wrenable_reg_22 = 1'b0;
            end
        end
      S_11 :
        begin
          selector_MUX_15_PROXY_CTRL_2_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRL_2_i0_LOAD = 1'b1;
          _next_state = S_12;
        end
      S_12 :
        begin
          wrenable_reg_21 = 1'b1;
          _next_state = S_13;
        end
      S_13 :
        begin
          if (OUT_CONDITION_make_oriented_28870_29167 == 1'b1)
            begin
              _next_state = S_14;
            end
          else
            begin
              _next_state = S_15;
            end
        end
      S_14 :
        begin
          selector_MUX_14_PROXY_CTRL_2_i0_0_0_0 = 1'b1;
          selector_MUX_15_PROXY_CTRL_2_i0_1_0_0 = 1'b1;
          selector_MUX_15_PROXY_CTRL_2_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRL_2_i0_STORE = 1'b1;
          _next_state = S_15;
        end
      S_9 :
        begin
          selector_MUX_15_PROXY_CTRL_2_i0_1_0_0 = 1'b1;
          selector_MUX_15_PROXY_CTRL_2_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRL_2_i0_STORE = 1'b1;
          _next_state = S_10;
        end
      S_10 :
        begin
          selector_MUX_14_PROXY_CTRL_2_i0_0_0_0 = 1'b1;
          selector_MUX_15_PROXY_CTRL_2_i0_1_1_0 = 1'b1;
          fuselector_PROXY_CTRL_2_i0_STORE = 1'b1;
          _next_state = S_15;
        end
      S_15 :
        begin
          selector_MUX_60_reg_5_0_0_0 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_6 = 1'b1;
          if (OUT_CONDITION_make_oriented_28870_29174 == 1'b1)
            begin
              _next_state = S_5;
              selector_MUX_60_reg_5_0_0_0 = 1'b0;
              wrenable_reg_5 = 1'b0;
              wrenable_reg_6 = 1'b0;
            end
          else
            begin
              _next_state = S_16;
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
          selector_MUX_48_reg_14_0_0_0 = 1'bX;
          selector_MUX_49_reg_15_0_0_0 = 1'bX;
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
  parameter MEM_var_28859_28870=384, MEM_var_28861_28879=128, MEM_var_28868_28879=256;
  // IN
  input clock;
  input reset;
  input start_port;
  input S_oe_ram;
  input S_we_ram;
  input [10:0] S_addr_ram;
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
  output [10:0] proxy_in2_28861;
  output [3:0] proxy_in3_28861;
  output proxy_sel_LOAD_28861;
  output proxy_sel_STORE_28861;
  output [7:0] proxy_in1_28868;
  output [10:0] proxy_in2_28868;
  output [3:0] proxy_in3_28868;
  output proxy_sel_LOAD_28868;
  output proxy_sel_STORE_28868;
  // Component and signal declarations
  wire OUT_CONDITION_make_oriented_28870_29150;
  wire OUT_CONDITION_make_oriented_28870_29167;
  wire OUT_CONDITION_make_oriented_28870_29174;
  wire OUT_CONDITION_make_oriented_28870_29176;
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
  wire selector_MUX_48_reg_14_0_0_0;
  wire selector_MUX_49_reg_15_0_0_0;
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
  wire wrenable_reg_3;
  wire wrenable_reg_4;
  wire wrenable_reg_5;
  wire wrenable_reg_6;
  wire wrenable_reg_7;
  wire wrenable_reg_8;
  wire wrenable_reg_9;
  
  controller_make_oriented Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE), .selector_MUX_10_PROXY_CTRL_1_i0_0_0_0(selector_MUX_10_PROXY_CTRL_1_i0_0_0_0), .selector_MUX_11_PROXY_CTRL_1_i0_1_0_0(selector_MUX_11_PROXY_CTRL_1_i0_1_0_0), .selector_MUX_14_PROXY_CTRL_2_i0_0_0_0(selector_MUX_14_PROXY_CTRL_2_i0_0_0_0), .selector_MUX_15_PROXY_CTRL_2_i0_1_0_0(selector_MUX_15_PROXY_CTRL_2_i0_1_0_0), .selector_MUX_15_PROXY_CTRL_2_i0_1_0_1(selector_MUX_15_PROXY_CTRL_2_i0_1_0_1), .selector_MUX_15_PROXY_CTRL_2_i0_1_1_0(selector_MUX_15_PROXY_CTRL_2_i0_1_1_0), .selector_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0(selector_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0), .selector_MUX_48_reg_14_0_0_0(selector_MUX_48_reg_14_0_0_0), .selector_MUX_49_reg_15_0_0_0(selector_MUX_49_reg_15_0_0_0), .selector_MUX_60_reg_5_0_0_0(selector_MUX_60_reg_5_0_0_0), .selector_MUX_61_reg_6_0_0_0(selector_MUX_61_reg_6_0_0_0), .fuselector_PROXY_CTRL_1_i0_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .fuselector_PROXY_CTRL_1_i0_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .fuselector_PROXY_CTRL_2_i0_LOAD(fuselector_PROXY_CTRL_2_i0_LOAD), .fuselector_PROXY_CTRL_2_i0_STORE(fuselector_PROXY_CTRL_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_make_oriented_28870_29150(OUT_CONDITION_make_oriented_28870_29150), .OUT_CONDITION_make_oriented_28870_29167(OUT_CONDITION_make_oriented_28870_29167), .OUT_CONDITION_make_oriented_28870_29174(OUT_CONDITION_make_oriented_28870_29174), .OUT_CONDITION_make_oriented_28870_29176(OUT_CONDITION_make_oriented_28870_29176), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_make_oriented #(.MEM_var_28859_28870(MEM_var_28859_28870), .MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28868_28879(MEM_var_28868_28879)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .proxy_in1_28861(proxy_in1_28861), .proxy_in2_28861(proxy_in2_28861), .proxy_in3_28861(proxy_in3_28861), .proxy_sel_LOAD_28861(proxy_sel_LOAD_28861), .proxy_sel_STORE_28861(proxy_sel_STORE_28861), .proxy_in1_28868(proxy_in1_28868), .proxy_in2_28868(proxy_in2_28868), .proxy_in3_28868(proxy_in3_28868), .proxy_sel_LOAD_28868(proxy_sel_LOAD_28868), .proxy_sel_STORE_28868(proxy_sel_STORE_28868), .OUT_CONDITION_make_oriented_28870_29150(OUT_CONDITION_make_oriented_28870_29150), .OUT_CONDITION_make_oriented_28870_29167(OUT_CONDITION_make_oriented_28870_29167), .OUT_CONDITION_make_oriented_28870_29174(OUT_CONDITION_make_oriented_28870_29174), .OUT_CONDITION_make_oriented_28870_29176(OUT_CONDITION_make_oriented_28870_29176), .clock(clock), .reset(reset), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28868(proxy_out1_28868), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE(fuselector_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_STORE), .selector_MUX_10_PROXY_CTRL_1_i0_0_0_0(selector_MUX_10_PROXY_CTRL_1_i0_0_0_0), .selector_MUX_11_PROXY_CTRL_1_i0_1_0_0(selector_MUX_11_PROXY_CTRL_1_i0_1_0_0), .selector_MUX_14_PROXY_CTRL_2_i0_0_0_0(selector_MUX_14_PROXY_CTRL_2_i0_0_0_0), .selector_MUX_15_PROXY_CTRL_2_i0_1_0_0(selector_MUX_15_PROXY_CTRL_2_i0_1_0_0), .selector_MUX_15_PROXY_CTRL_2_i0_1_0_1(selector_MUX_15_PROXY_CTRL_2_i0_1_0_1), .selector_MUX_15_PROXY_CTRL_2_i0_1_1_0(selector_MUX_15_PROXY_CTRL_2_i0_1_1_0), .selector_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0(selector_MUX_1_ARRAY_1D_STD_BRAM_SDS_BUS_0_i0_1_0_0), .selector_MUX_48_reg_14_0_0_0(selector_MUX_48_reg_14_0_0_0), .selector_MUX_49_reg_15_0_0_0(selector_MUX_49_reg_15_0_0_0), .selector_MUX_60_reg_5_0_0_0(selector_MUX_60_reg_5_0_0_0), .selector_MUX_61_reg_6_0_0_0(selector_MUX_61_reg_6_0_0_0), .fuselector_PROXY_CTRL_1_i0_LOAD(fuselector_PROXY_CTRL_1_i0_LOAD), .fuselector_PROXY_CTRL_1_i0_STORE(fuselector_PROXY_CTRL_1_i0_STORE), .fuselector_PROXY_CTRL_2_i0_LOAD(fuselector_PROXY_CTRL_2_i0_LOAD), .fuselector_PROXY_CTRL_2_i0_STORE(fuselector_PROXY_CTRL_2_i0_STORE), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Datapath RTL description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_main(clock, reset, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, M_Rdata_ram, M_DataRdy, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, Min_oe_ram, Min_we_ram, Min_addr_ram, Min_Wdata_ram, Min_data_ram_size, Mout_oe_ram, Mout_we_ram, Mout_addr_ram, Mout_Wdata_ram, Mout_data_ram_size, selector_IN_UNBOUNDED_main_28879_29616, selector_IN_UNBOUNDED_main_28879_29617, wrenable_reg_0, OUT_UNBOUNDED_main_28879_29616, OUT_UNBOUNDED_main_28879_29617);
  parameter MEM_var_28859_28870=384, MEM_var_28861_28879=128, MEM_var_28862_28877=512, MEM_var_28864_28877=640, MEM_var_28865_28877=768, MEM_var_28866_28877=896, MEM_var_28867_28877=1024, MEM_var_28868_28879=256;
  // IN
  input clock;
  input reset;
  input S_oe_ram;
  input S_we_ram;
  input [10:0] S_addr_ram;
  input [7:0] S_Wdata_ram;
  input [3:0] S_data_ram_size;
  input [7:0] M_Rdata_ram;
  input M_DataRdy;
  input [7:0] Sin_Rdata_ram;
  input Sin_DataRdy;
  input Min_oe_ram;
  input Min_we_ram;
  input [10:0] Min_addr_ram;
  input [7:0] Min_Wdata_ram;
  input [3:0] Min_data_ram_size;
  input selector_IN_UNBOUNDED_main_28879_29616;
  input selector_IN_UNBOUNDED_main_28879_29617;
  input wrenable_reg_0;
  // OUT
  output [7:0] Sout_Rdata_ram;
  output Sout_DataRdy;
  output Mout_oe_ram;
  output Mout_we_ram;
  output [10:0] Mout_addr_ram;
  output [7:0] Mout_Wdata_ram;
  output [3:0] Mout_data_ram_size;
  output OUT_UNBOUNDED_main_28879_29616;
  output OUT_UNBOUNDED_main_28879_29617;
  // Component and signal declarations
  wire [10:0] out_UUdata_converter_FU_5_i0_fu_main_28879_30302;
  wire [10:0] out_addr_expr_FU_4_i0_fu_main_28879_29914;
  wire [10:0] out_const_0;
  wire [31:0] out_conv_out_const_0_11_32;
  wire [31:0] out_conv_out_reg_0_reg_0_11_32;
  wire [10:0] out_reg_0_reg_0;
  wire [7:0] proxy_out1_28861;
  wire [7:0] proxy_out1_28868;
  wire s_done_fu_main_28879_29616;
  wire s_done_fu_main_28879_29617;
  wire [7:0] sig_in_bus_mergerMout_Wdata_ram0_0;
  wire [10:0] sig_in_bus_mergerMout_addr_ram1_0;
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
  wire [10:0] sig_in_bus_mergerproxy_in213_0;
  wire [10:0] sig_in_bus_mergerproxy_in213_1;
  wire [10:0] sig_in_bus_mergerproxy_in28_0;
  wire [10:0] sig_in_bus_mergerproxy_in28_1;
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
  wire [10:0] sig_out_bus_mergerMout_addr_ram1_;
  wire [3:0] sig_out_bus_mergerMout_data_ram_size2_;
  wire sig_out_bus_mergerMout_oe_ram3_;
  wire sig_out_bus_mergerMout_we_ram4_;
  wire sig_out_bus_mergerSout_DataRdy5_;
  wire [7:0] sig_out_bus_mergerSout_Rdata_ram6_;
  wire [7:0] sig_out_bus_mergerproxy_in112_;
  wire [7:0] sig_out_bus_mergerproxy_in17_;
  wire [10:0] sig_out_bus_mergerproxy_in213_;
  wire [10:0] sig_out_bus_mergerproxy_in28_;
  wire [3:0] sig_out_bus_mergerproxy_in314_;
  wire [3:0] sig_out_bus_mergerproxy_in39_;
  wire sig_out_bus_mergerproxy_sel_LOAD10_;
  wire sig_out_bus_mergerproxy_sel_LOAD15_;
  wire sig_out_bus_mergerproxy_sel_STORE11_;
  wire sig_out_bus_mergerproxy_sel_STORE16_;
  
  ARRAY_1D_STD_BRAM_SDS_BUS #(.BITSIZE_in1(8), .BITSIZE_in2(11), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_S_addr_ram(11), .BITSIZE_S_Wdata_ram(8), .BITSIZE_Sin_Rdata_ram(8), .BITSIZE_Sout_Rdata_ram(8), .BITSIZE_S_data_ram_size(4), .MEMORY_INIT_file("array_ref_28861.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28861_28879), .address_space_rangesize(128), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(11), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) array_28861_0 (.Sout_Rdata_ram(sig_in_bus_mergerSout_Rdata_ram6_0), .Sout_DataRdy(sig_in_bus_mergerSout_DataRdy5_0), .proxy_out1(proxy_out1_28861), .clock(clock), .reset(reset), .in1(8'b00000000), .in2(11'b00000000000), .in3(4'b0000), .in4(1'b0), .sel_LOAD(1'b0), .sel_STORE(1'b0), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_bus_mergerproxy_in17_), .proxy_in2(sig_out_bus_mergerproxy_in28_), .proxy_in3(sig_out_bus_mergerproxy_in39_), .proxy_sel_LOAD(sig_out_bus_mergerproxy_sel_LOAD10_), .proxy_sel_STORE(sig_out_bus_mergerproxy_sel_STORE11_));
  ARRAY_1D_STD_BRAM_SDS_BUS #(.BITSIZE_in1(8), .BITSIZE_in2(11), .BITSIZE_in3(4), .BITSIZE_out1(8), .BITSIZE_S_addr_ram(11), .BITSIZE_S_Wdata_ram(8), .BITSIZE_Sin_Rdata_ram(8), .BITSIZE_Sout_Rdata_ram(8), .BITSIZE_S_data_ram_size(4), .MEMORY_INIT_file("array_ref_28868.mem"), .n_elements(100), .data_size(8), .address_space_begin(MEM_var_28868_28879), .address_space_rangesize(128), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .BITSIZE_proxy_in2(11), .BITSIZE_proxy_in3(4), .BITSIZE_proxy_out1(8)) array_28868_0 (.Sout_Rdata_ram(sig_in_bus_mergerSout_Rdata_ram6_1), .Sout_DataRdy(sig_in_bus_mergerSout_DataRdy5_1), .proxy_out1(proxy_out1_28868), .clock(clock), .reset(reset), .in1(8'b00000000), .in2(11'b00000000000), .in3(4'b0000), .in4(1'b0), .sel_LOAD(1'b0), .sel_STORE(1'b0), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_bus_mergerproxy_in112_), .proxy_in2(sig_out_bus_mergerproxy_in213_), .proxy_in3(sig_out_bus_mergerproxy_in314_), .proxy_sel_LOAD(sig_out_bus_mergerproxy_sel_LOAD15_), .proxy_sel_STORE(sig_out_bus_mergerproxy_sel_STORE16_));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerMout_Wdata_ram0_ (.out1(sig_out_bus_mergerMout_Wdata_ram0_), .in1({sig_in_bus_mergerMout_Wdata_ram0_0}));
  bus_merger #(.BITSIZE_in1(11), .PORTSIZE_in1(1), .BITSIZE_out1(11)) bus_mergerMout_addr_ram1_ (.out1(sig_out_bus_mergerMout_addr_ram1_), .in1({sig_in_bus_mergerMout_addr_ram1_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(1), .BITSIZE_out1(4)) bus_mergerMout_data_ram_size2_ (.out1(sig_out_bus_mergerMout_data_ram_size2_), .in1({sig_in_bus_mergerMout_data_ram_size2_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerMout_oe_ram3_ (.out1(sig_out_bus_mergerMout_oe_ram3_), .in1({sig_in_bus_mergerMout_oe_ram3_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(1), .BITSIZE_out1(1)) bus_mergerMout_we_ram4_ (.out1(sig_out_bus_mergerMout_we_ram4_), .in1({sig_in_bus_mergerMout_we_ram4_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(4), .BITSIZE_out1(1)) bus_mergerSout_DataRdy5_ (.out1(sig_out_bus_mergerSout_DataRdy5_), .in1({sig_in_bus_mergerSout_DataRdy5_3, sig_in_bus_mergerSout_DataRdy5_2, sig_in_bus_mergerSout_DataRdy5_1, sig_in_bus_mergerSout_DataRdy5_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(4), .BITSIZE_out1(8)) bus_mergerSout_Rdata_ram6_ (.out1(sig_out_bus_mergerSout_Rdata_ram6_), .in1({sig_in_bus_mergerSout_Rdata_ram6_3, sig_in_bus_mergerSout_Rdata_ram6_2, sig_in_bus_mergerSout_Rdata_ram6_1, sig_in_bus_mergerSout_Rdata_ram6_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(8)) bus_mergerproxy_in112_ (.out1(sig_out_bus_mergerproxy_in112_), .in1({sig_in_bus_mergerproxy_in112_1, sig_in_bus_mergerproxy_in112_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(8)) bus_mergerproxy_in17_ (.out1(sig_out_bus_mergerproxy_in17_), .in1({sig_in_bus_mergerproxy_in17_1, sig_in_bus_mergerproxy_in17_0}));
  bus_merger #(.BITSIZE_in1(11), .PORTSIZE_in1(2), .BITSIZE_out1(11)) bus_mergerproxy_in213_ (.out1(sig_out_bus_mergerproxy_in213_), .in1({sig_in_bus_mergerproxy_in213_1, sig_in_bus_mergerproxy_in213_0}));
  bus_merger #(.BITSIZE_in1(11), .PORTSIZE_in1(2), .BITSIZE_out1(11)) bus_mergerproxy_in28_ (.out1(sig_out_bus_mergerproxy_in28_), .in1({sig_in_bus_mergerproxy_in28_1, sig_in_bus_mergerproxy_in28_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(4)) bus_mergerproxy_in314_ (.out1(sig_out_bus_mergerproxy_in314_), .in1({sig_in_bus_mergerproxy_in314_1, sig_in_bus_mergerproxy_in314_0}));
  bus_merger #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(4)) bus_mergerproxy_in39_ (.out1(sig_out_bus_mergerproxy_in39_), .in1({sig_in_bus_mergerproxy_in39_1, sig_in_bus_mergerproxy_in39_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD10_ (.out1(sig_out_bus_mergerproxy_sel_LOAD10_), .in1({sig_in_bus_mergerproxy_sel_LOAD10_1, sig_in_bus_mergerproxy_sel_LOAD10_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(1)) bus_mergerproxy_sel_LOAD15_ (.out1(sig_out_bus_mergerproxy_sel_LOAD15_), .in1({sig_in_bus_mergerproxy_sel_LOAD15_1, sig_in_bus_mergerproxy_sel_LOAD15_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE11_ (.out1(sig_out_bus_mergerproxy_sel_STORE11_), .in1({sig_in_bus_mergerproxy_sel_STORE11_1, sig_in_bus_mergerproxy_sel_STORE11_0}));
  bus_merger #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(1)) bus_mergerproxy_sel_STORE16_ (.out1(sig_out_bus_mergerproxy_sel_STORE16_), .in1({sig_in_bus_mergerproxy_sel_STORE16_1, sig_in_bus_mergerproxy_sel_STORE16_0}));
  constant_value #(.BITSIZE_out1(11), .value(MEM_var_28868_28879)) const_0 (.out1(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(32)) conv_out_const_0_11_32 (.out1(out_conv_out_const_0_11_32), .in1(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(32)) conv_out_reg_0_reg_0_11_32 (.out1(out_conv_out_reg_0_reg_0_11_32), .in1(out_reg_0_reg_0));
  make_oriented #(.MEM_var_28859_28870(MEM_var_28859_28870), .MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28868_28879(MEM_var_28868_28879)) fu_main_28879_29616 (.done_port(s_done_fu_main_28879_29616), .Sout_Rdata_ram(sig_in_bus_mergerSout_Rdata_ram6_3), .Sout_DataRdy(sig_in_bus_mergerSout_DataRdy5_3), .proxy_in1_28861(sig_in_bus_mergerproxy_in17_1), .proxy_in2_28861(sig_in_bus_mergerproxy_in28_1), .proxy_in3_28861(sig_in_bus_mergerproxy_in39_1), .proxy_sel_LOAD_28861(sig_in_bus_mergerproxy_sel_LOAD10_1), .proxy_sel_STORE_28861(sig_in_bus_mergerproxy_sel_STORE11_1), .proxy_in1_28868(sig_in_bus_mergerproxy_in112_1), .proxy_in2_28868(sig_in_bus_mergerproxy_in213_1), .proxy_in3_28868(sig_in_bus_mergerproxy_in314_1), .proxy_sel_LOAD_28868(sig_in_bus_mergerproxy_sel_LOAD15_1), .proxy_sel_STORE_28868(sig_in_bus_mergerproxy_sel_STORE16_1), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28879_29616), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28861(proxy_out1_28861), .proxy_out1_28868(proxy_out1_28868));
  astarF #(.MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28862_28877(MEM_var_28862_28877), .MEM_var_28864_28877(MEM_var_28864_28877), .MEM_var_28865_28877(MEM_var_28865_28877), .MEM_var_28866_28877(MEM_var_28866_28877), .MEM_var_28867_28877(MEM_var_28867_28877), .MEM_var_28868_28879(MEM_var_28868_28879)) fu_main_28879_29617 (.done_port(s_done_fu_main_28879_29617), .Sout_Rdata_ram(sig_in_bus_mergerSout_Rdata_ram6_2), .Sout_DataRdy(sig_in_bus_mergerSout_DataRdy5_2), .proxy_in1_28861(sig_in_bus_mergerproxy_in17_0), .proxy_in2_28861(sig_in_bus_mergerproxy_in28_0), .proxy_in3_28861(sig_in_bus_mergerproxy_in39_0), .proxy_sel_LOAD_28861(sig_in_bus_mergerproxy_sel_LOAD10_0), .proxy_sel_STORE_28861(sig_in_bus_mergerproxy_sel_STORE11_0), .Mout_oe_ram(sig_in_bus_mergerMout_oe_ram3_0), .Mout_we_ram(sig_in_bus_mergerMout_we_ram4_0), .Mout_addr_ram(sig_in_bus_mergerMout_addr_ram1_0), .Mout_Wdata_ram(sig_in_bus_mergerMout_Wdata_ram0_0), .Mout_data_ram_size(sig_in_bus_mergerMout_data_ram_size2_0), .proxy_in1_28868(sig_in_bus_mergerproxy_in112_0), .proxy_in2_28868(sig_in_bus_mergerproxy_in213_0), .proxy_in3_28868(sig_in_bus_mergerproxy_in314_0), .proxy_sel_LOAD_28868(sig_in_bus_mergerproxy_sel_LOAD15_0), .proxy_sel_STORE_28868(sig_in_bus_mergerproxy_sel_STORE16_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28879_29617), .a(out_conv_out_reg_0_reg_0_11_32), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28861(proxy_out1_28861), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .proxy_out1_28868(proxy_out1_28868));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(11)) fu_main_28879_29914 (.out1(out_addr_expr_FU_4_i0_fu_main_28879_29914), .in1(out_conv_out_const_0_11_32));
  UUdata_converter_FU #(.BITSIZE_in1(11), .BITSIZE_out1(11)) fu_main_28879_30302 (.out1(out_UUdata_converter_FU_5_i0_fu_main_28879_30302), .in1(out_addr_expr_FU_4_i0_fu_main_28879_29914));
  register_SE #(.BITSIZE_in1(11), .BITSIZE_out1(11)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_5_i0_fu_main_28879_30302), .wenable(wrenable_reg_0));
  // io-signal post fix
  assign Sout_Rdata_ram = sig_out_bus_mergerSout_Rdata_ram6_;
  assign Sout_DataRdy = sig_out_bus_mergerSout_DataRdy5_;
  assign Mout_oe_ram = sig_out_bus_mergerMout_oe_ram3_;
  assign Mout_we_ram = sig_out_bus_mergerMout_we_ram4_;
  assign Mout_addr_ram = sig_out_bus_mergerMout_addr_ram1_;
  assign Mout_Wdata_ram = sig_out_bus_mergerMout_Wdata_ram0_;
  assign Mout_data_ram_size = sig_out_bus_mergerMout_data_ram_size2_;
  assign OUT_UNBOUNDED_main_28879_29616 = s_done_fu_main_28879_29616;
  assign OUT_UNBOUNDED_main_28879_29617 = s_done_fu_main_28879_29617;

endmodule

// FSM based controller description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_main(done_port, selector_IN_UNBOUNDED_main_28879_29616, selector_IN_UNBOUNDED_main_28879_29617, wrenable_reg_0, OUT_UNBOUNDED_main_28879_29616, OUT_UNBOUNDED_main_28879_29617, clock, reset, start_port);
  // IN
  input OUT_UNBOUNDED_main_28879_29616;
  input OUT_UNBOUNDED_main_28879_29617;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_IN_UNBOUNDED_main_28879_29616;
  output selector_IN_UNBOUNDED_main_28879_29617;
  output wrenable_reg_0;
  parameter [4:0] S_0 = 5'b00001,
    S_1 = 5'b00010,
    S_2 = 5'b00100,
    S_3 = 5'b01000,
    S_4 = 5'b10000;
  reg [4:0] _present_state, _next_state;
  reg done_port;
  reg selector_IN_UNBOUNDED_main_28879_29616;
  reg selector_IN_UNBOUNDED_main_28879_29617;
  reg wrenable_reg_0;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    selector_IN_UNBOUNDED_main_28879_29616 = 1'b0;
    selector_IN_UNBOUNDED_main_28879_29617 = 1'b0;
    wrenable_reg_0 = 1'b0;
    case (_present_state)
      S_0 :
        if(start_port == 1'b1)
        begin
          selector_IN_UNBOUNDED_main_28879_29616 = 1'b1;
          wrenable_reg_0 = 1'b1;
          if (OUT_UNBOUNDED_main_28879_29616 == 1'b0)
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
          if (OUT_UNBOUNDED_main_28879_29616 == 1'b0)
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
          selector_IN_UNBOUNDED_main_28879_29617 = 1'b1;
          if (OUT_UNBOUNDED_main_28879_29617 == 1'b0)
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
          if (OUT_UNBOUNDED_main_28879_29617 == 1'b0)
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
  parameter MEM_var_28859_28870=384, MEM_var_28861_28879=128, MEM_var_28862_28877=512, MEM_var_28864_28877=640, MEM_var_28865_28877=768, MEM_var_28866_28877=896, MEM_var_28867_28877=1024, MEM_var_28868_28879=256;
  // IN
  input clock;
  input reset;
  input start_port;
  input S_oe_ram;
  input S_we_ram;
  input [10:0] S_addr_ram;
  input [7:0] S_Wdata_ram;
  input [3:0] S_data_ram_size;
  input [7:0] M_Rdata_ram;
  input M_DataRdy;
  input [7:0] Sin_Rdata_ram;
  input Sin_DataRdy;
  input Min_oe_ram;
  input Min_we_ram;
  input [10:0] Min_addr_ram;
  input [7:0] Min_Wdata_ram;
  input [3:0] Min_data_ram_size;
  // OUT
  output done_port;
  output [7:0] Sout_Rdata_ram;
  output Sout_DataRdy;
  output Mout_oe_ram;
  output Mout_we_ram;
  output [10:0] Mout_addr_ram;
  output [7:0] Mout_Wdata_ram;
  output [3:0] Mout_data_ram_size;
  // Component and signal declarations
  wire OUT_UNBOUNDED_main_28879_29616;
  wire OUT_UNBOUNDED_main_28879_29617;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire selector_IN_UNBOUNDED_main_28879_29616;
  wire selector_IN_UNBOUNDED_main_28879_29617;
  wire wrenable_reg_0;
  
  controller_main Controller_i (.done_port(done_delayed_REG_signal_in), .selector_IN_UNBOUNDED_main_28879_29616(selector_IN_UNBOUNDED_main_28879_29616), .selector_IN_UNBOUNDED_main_28879_29617(selector_IN_UNBOUNDED_main_28879_29617), .wrenable_reg_0(wrenable_reg_0), .OUT_UNBOUNDED_main_28879_29616(OUT_UNBOUNDED_main_28879_29616), .OUT_UNBOUNDED_main_28879_29617(OUT_UNBOUNDED_main_28879_29617), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_main #(.MEM_var_28859_28870(MEM_var_28859_28870), .MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28862_28877(MEM_var_28862_28877), .MEM_var_28864_28877(MEM_var_28864_28877), .MEM_var_28865_28877(MEM_var_28865_28877), .MEM_var_28866_28877(MEM_var_28866_28877), .MEM_var_28867_28877(MEM_var_28867_28877), .MEM_var_28868_28879(MEM_var_28868_28879)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .OUT_UNBOUNDED_main_28879_29616(OUT_UNBOUNDED_main_28879_29616), .OUT_UNBOUNDED_main_28879_29617(OUT_UNBOUNDED_main_28879_29617), .clock(clock), .reset(reset), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .Min_oe_ram(Min_oe_ram), .Min_we_ram(Min_we_ram), .Min_addr_ram(Min_addr_ram), .Min_Wdata_ram(Min_Wdata_ram), .Min_data_ram_size(Min_data_ram_size), .selector_IN_UNBOUNDED_main_28879_29616(selector_IN_UNBOUNDED_main_28879_29616), .selector_IN_UNBOUNDED_main_28879_29617(selector_IN_UNBOUNDED_main_28879_29617), .wrenable_reg_0(wrenable_reg_0));
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
  parameter MEM_var_28859_28870=384, MEM_var_28861_28879=128, MEM_var_28862_28877=512, MEM_var_28864_28877=640, MEM_var_28865_28877=768, MEM_var_28866_28877=896, MEM_var_28867_28877=1024, MEM_var_28868_28879=256;
  // IN
  input clock;
  input reset;
  input start_port;
  input S_oe_ram;
  input S_we_ram;
  input [10:0] S_addr_ram;
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
  output [10:0] Mout_addr_ram;
  output [7:0] Mout_Wdata_ram;
  output [3:0] Mout_data_ram_size;
  // Component and signal declarations
  
  _main #(.MEM_var_28859_28870(MEM_var_28859_28870), .MEM_var_28861_28879(MEM_var_28861_28879), .MEM_var_28862_28877(MEM_var_28862_28877), .MEM_var_28864_28877(MEM_var_28864_28877), .MEM_var_28865_28877(MEM_var_28865_28877), .MEM_var_28866_28877(MEM_var_28866_28877), .MEM_var_28867_28877(MEM_var_28867_28877), .MEM_var_28868_28879(MEM_var_28868_28879)) _main_i0 (.done_port(done_port), .Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .Mout_oe_ram(Mout_oe_ram), .Mout_we_ram(Mout_we_ram), .Mout_addr_ram(Mout_addr_ram), .Mout_Wdata_ram(Mout_Wdata_ram), .Mout_data_ram_size(Mout_data_ram_size), .clock(clock), .reset(reset), .start_port(start_port), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .M_Rdata_ram(M_Rdata_ram), .M_DataRdy(M_DataRdy), .Sin_Rdata_ram(8'b00000000), .Sin_DataRdy(1'b0), .Min_oe_ram(1'b0), .Min_we_ram(1'b0), .Min_addr_ram(11'b00000000000), .Min_Wdata_ram(8'b00000000), .Min_data_ram_size(4'b0000));

endmodule


