// 
// Politecnico di Milano
// Code created using PandA - Version: PandA 0.9.6 - Revision 891ec3caed502474cab0813cc4a9fc678deabaa5 - Date 2022-05-27T23:30:03
// bambu executed with: bambu -I/home/dews/Scrivania/bambu-hls/RESULTS/BAMBU/xc7a100t-1csg324-Artix-7/28x28/mergesort/includes/values_82 --simulate --simulator=VERILATOR --clock-period=5 --device-name=xc7a100t-1csg324-VVD /home/dews/Scrivania/bambu-hls/cc4cs_bambu/benchmarkBasic/mergesort/thrd.c 
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
module min_expr_FU(in1, in2, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_out1=1;
  // IN
  input signed [BITSIZE_in1-1:0] in1;
  input signed [BITSIZE_in2-1:0] in2;
  // OUT
  output signed [BITSIZE_out1-1:0] out1;
  assign out1 = in1 < in2 ? in1 : in2;
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
module ui_ternary_plus_expr_FU(in1, in2, in3, out1);
  parameter BITSIZE_in1=1, BITSIZE_in2=1, BITSIZE_in3=1, BITSIZE_out1=1;
  // IN
  input [BITSIZE_in1-1:0] in1;
  input [BITSIZE_in2-1:0] in2;
  input [BITSIZE_in3-1:0] in3;
  // OUT
  output [BITSIZE_out1-1:0] out1;
  assign out1 = in1 + in2 + in3;
endmodule

// This component is part of the BAMBU/PANDA IP LIBRARY
// Copyright (C) 2013-2020 Politecnico di Milano
// Author(s): Fabrizio Ferrandi <fabrizio.ferrandi@polimi.it>
// License: PANDA_LGPLv3
`timescale 1ns / 1ps
module DPROXY_CTRLN(in1, in2, in3, in4, sel_LOAD, sel_STORE, out1, proxy_in1, proxy_in2, proxy_in3, proxy_sel_LOAD, proxy_sel_STORE, proxy_out1);
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
  wire [PORTSIZE_sel_LOAD-1:0] int_sel_LOAD;
  wire [PORTSIZE_sel_STORE-1:0] int_sel_STORE;
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
  assign int_sel_LOAD = sel_LOAD & in4;
  assign int_sel_STORE = sel_STORE & in4;
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

// Datapath RTL description for merge
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_merge(clock, reset, in_port_i1, in_port_f1, in_port_f2, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, proxy_out1_28861, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_LOAD, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE, fuselector_DPROXY_CTRLN_2_i0_LOAD, fuselector_DPROXY_CTRLN_2_i0_STORE, fuselector_DPROXY_CTRLN_2_i1_LOAD, fuselector_DPROXY_CTRLN_2_i1_STORE, selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0, selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_1, selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_1_0, selector_MUX_103_reg_17_0_0_0, selector_MUX_103_reg_17_0_0_1, selector_MUX_104_reg_18_0_0_0, selector_MUX_104_reg_18_0_0_1, selector_MUX_105_reg_19_0_0_0, selector_MUX_113_reg_26_0_0_0, selector_MUX_114_reg_27_0_0_0, selector_MUX_115_reg_28_0_0_0, selector_MUX_117_reg_3_0_0_0, selector_MUX_122_reg_34_0_0_0, selector_MUX_125_reg_37_0_0_0, selector_MUX_128_reg_4_0_0_0, selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_0, selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_1, selector_MUX_13_DPROXY_CTRLN_2_i0_1_1_0, selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_0, selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_1, selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_1_0, selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0, selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_1, selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_1_0, selector_MUX_97_reg_11_0_0_0, selector_MUX_98_reg_12_0_0_0, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_29, wrenable_reg_3, wrenable_reg_30, wrenable_reg_31, wrenable_reg_32, wrenable_reg_33, wrenable_reg_34, wrenable_reg_35, wrenable_reg_36, wrenable_reg_37, wrenable_reg_38, wrenable_reg_39, wrenable_reg_4, wrenable_reg_40, wrenable_reg_41, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_merge_28863_28946, OUT_CONDITION_merge_28863_29036, OUT_CONDITION_merge_28863_29063, OUT_CONDITION_merge_28863_29105, OUT_CONDITION_merge_28863_29149, OUT_CONDITION_merge_28863_29152, OUT_CONDITION_merge_28863_29155, OUT_MULTIIF_merge_28863_29666);
  parameter MEM_var_28859_28863=64, MEM_var_28861_28867=32, MEM_var_28984_28863=32;
  // IN
  input clock;
  input reset;
  input [7:0] in_port_i1;
  input signed [7:0] in_port_f1;
  input signed [7:0] in_port_f2;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [13:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [15:0] proxy_out1_28861;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_LOAD;
  input fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE;
  input fuselector_DPROXY_CTRLN_2_i0_LOAD;
  input fuselector_DPROXY_CTRLN_2_i0_STORE;
  input fuselector_DPROXY_CTRLN_2_i1_LOAD;
  input fuselector_DPROXY_CTRLN_2_i1_STORE;
  input selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0;
  input selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_1;
  input selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_1_0;
  input selector_MUX_103_reg_17_0_0_0;
  input selector_MUX_103_reg_17_0_0_1;
  input selector_MUX_104_reg_18_0_0_0;
  input selector_MUX_104_reg_18_0_0_1;
  input selector_MUX_105_reg_19_0_0_0;
  input selector_MUX_113_reg_26_0_0_0;
  input selector_MUX_114_reg_27_0_0_0;
  input selector_MUX_115_reg_28_0_0_0;
  input selector_MUX_117_reg_3_0_0_0;
  input selector_MUX_122_reg_34_0_0_0;
  input selector_MUX_125_reg_37_0_0_0;
  input selector_MUX_128_reg_4_0_0_0;
  input selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_0;
  input selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_1;
  input selector_MUX_13_DPROXY_CTRLN_2_i0_1_1_0;
  input selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_0;
  input selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_1;
  input selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_1_0;
  input selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0;
  input selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_1;
  input selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_1_0;
  input selector_MUX_97_reg_11_0_0_0;
  input selector_MUX_98_reg_12_0_0_0;
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
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [15:0] proxy_in1_28861;
  output [13:0] proxy_in2_28861;
  output [7:0] proxy_in3_28861;
  output [1:0] proxy_sel_LOAD_28861;
  output [1:0] proxy_sel_STORE_28861;
  output OUT_CONDITION_merge_28863_28946;
  output OUT_CONDITION_merge_28863_29036;
  output OUT_CONDITION_merge_28863_29063;
  output OUT_CONDITION_merge_28863_29105;
  output OUT_CONDITION_merge_28863_29149;
  output OUT_CONDITION_merge_28863_29152;
  output OUT_CONDITION_merge_28863_29155;
  output [1:0] OUT_MULTIIF_merge_28863_29666;
  // Component and signal declarations
  wire [7:0] null_out_signal_array_28859_0_out1_0;
  wire [7:0] null_out_signal_array_28859_0_out1_1;
  wire [7:0] null_out_signal_array_28859_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_28859_0_proxy_out1_1;
  wire null_out_signal_array_28984_0_Sout_DataRdy_0;
  wire null_out_signal_array_28984_0_Sout_DataRdy_1;
  wire [7:0] null_out_signal_array_28984_0_Sout_Rdata_ram_0;
  wire [7:0] null_out_signal_array_28984_0_Sout_Rdata_ram_1;
  wire [7:0] null_out_signal_array_28984_0_out1_1;
  wire [7:0] null_out_signal_array_28984_0_proxy_out1_0;
  wire [7:0] null_out_signal_array_28984_0_proxy_out1_1;
  wire [7:0] out_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_array_28984_0;
  wire [7:0] out_ASSIGN_UNSIGNED_FU_22_i0_fu_merge_28863_29616;
  wire [7:0] out_ASSIGN_UNSIGNED_FU_23_i0_fu_merge_28863_29614;
  wire [7:0] out_ASSIGN_UNSIGNED_FU_34_i0_fu_merge_28863_29624;
  wire [7:0] out_ASSIGN_UNSIGNED_FU_48_i0_fu_merge_28863_29626;
  wire [7:0] out_DPROXY_CTRLN_2_i0_DPROXY_CTRLN_2_i0;
  wire [7:0] out_DPROXY_CTRLN_2_i1_DPROXY_CTRLN_2_i0;
  wire signed [7:0] out_IIdata_converter_FU_6_i0_fu_merge_28863_28914;
  wire signed [7:0] out_IIdata_converter_FU_7_i0_fu_merge_28863_28915;
  wire [6:0] out_IUdata_converter_FU_26_i0_fu_merge_28863_29309;
  wire [6:0] out_IUdata_converter_FU_27_i0_fu_merge_28863_29324;
  wire [6:0] out_IUdata_converter_FU_29_i0_fu_merge_28863_29369;
  wire [6:0] out_IUdata_converter_FU_36_i0_fu_merge_28863_29386;
  wire [6:0] out_IUdata_converter_FU_37_i0_fu_merge_28863_29399;
  wire [6:0] out_IUdata_converter_FU_50_i0_fu_merge_28863_29427;
  wire [6:0] out_IUdata_converter_FU_51_i0_fu_merge_28863_29440;
  wire [6:0] out_IUdata_converter_FU_56_i0_fu_merge_28863_29461;
  wire [6:0] out_IUdata_converter_FU_57_i0_fu_merge_28863_29474;
  wire [7:0] out_IUdata_converter_FU_5_i0_fu_merge_28863_28913;
  wire [7:0] out_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0;
  wire [7:0] out_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_1;
  wire [7:0] out_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_1_0;
  wire [7:0] out_MUX_103_reg_17_0_0_0;
  wire [7:0] out_MUX_103_reg_17_0_0_1;
  wire [7:0] out_MUX_104_reg_18_0_0_0;
  wire [7:0] out_MUX_104_reg_18_0_0_1;
  wire [7:0] out_MUX_105_reg_19_0_0_0;
  wire [7:0] out_MUX_113_reg_26_0_0_0;
  wire [7:0] out_MUX_114_reg_27_0_0_0;
  wire [8:0] out_MUX_115_reg_28_0_0_0;
  wire [7:0] out_MUX_117_reg_3_0_0_0;
  wire [8:0] out_MUX_122_reg_34_0_0_0;
  wire [7:0] out_MUX_125_reg_37_0_0_0;
  wire [7:0] out_MUX_128_reg_4_0_0_0;
  wire [6:0] out_MUX_13_DPROXY_CTRLN_2_i0_1_0_0;
  wire [6:0] out_MUX_13_DPROXY_CTRLN_2_i0_1_0_1;
  wire [6:0] out_MUX_13_DPROXY_CTRLN_2_i0_1_1_0;
  wire [7:0] out_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_0;
  wire [7:0] out_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_1;
  wire [7:0] out_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_1_0;
  wire [6:0] out_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0;
  wire [6:0] out_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_1;
  wire [6:0] out_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_1_0;
  wire [8:0] out_MUX_97_reg_11_0_0_0;
  wire [7:0] out_MUX_98_reg_12_0_0_0;
  wire signed [8:0] out_UIdata_converter_FU_24_i0_fu_merge_28863_29006;
  wire signed [8:0] out_UIdata_converter_FU_25_i0_fu_merge_28863_29010;
  wire signed [8:0] out_UIdata_converter_FU_28_i0_fu_merge_28863_28987;
  wire signed [8:0] out_UIdata_converter_FU_35_i0_fu_merge_28863_29030;
  wire signed [8:0] out_UIdata_converter_FU_38_i0_fu_merge_28863_29035;
  wire signed [8:0] out_UIdata_converter_FU_49_i0_fu_merge_28863_29072;
  wire signed [8:0] out_UIdata_converter_FU_52_i0_fu_merge_28863_29093;
  wire signed [8:0] out_UIdata_converter_FU_55_i0_fu_merge_28863_29142;
  wire signed [8:0] out_UIdata_converter_FU_58_i0_fu_merge_28863_29129;
  wire signed [8:0] out_UIdata_converter_FU_8_i0_fu_merge_28863_28916;
  wire [6:0] out_UUdata_converter_FU_11_i0_fu_merge_28863_29424;
  wire [6:0] out_UUdata_converter_FU_13_i0_fu_merge_28863_29437;
  wire [6:0] out_addr_expr_FU_10_i0_fu_merge_28863_29450;
  wire [6:0] out_addr_expr_FU_12_i0_fu_merge_28863_29454;
  wire [6:0] out_addr_expr_FU_9_i0_fu_merge_28863_29500;
  wire out_const_0;
  wire [1:0] out_const_1;
  wire [4:0] out_const_2;
  wire out_const_3;
  wire [7:0] out_const_4;
  wire [5:0] out_const_5;
  wire [5:0] out_const_6;
  wire [6:0] out_const_7;
  wire [7:0] out_conv_out_MUX_115_reg_28_0_0_0_9_8;
  wire [7:0] out_conv_out_MUX_122_reg_34_0_0_0_9_8;
  wire [7:0] out_conv_out_MUX_97_reg_11_0_0_0_9_8;
  wire [3:0] out_conv_out_const_2_5_4;
  wire [31:0] out_conv_out_const_5_6_32;
  wire [31:0] out_conv_out_const_6_6_32;
  wire [31:0] out_conv_out_const_7_7_32;
  wire [6:0] out_conv_out_reg_14_reg_14_8_7;
  wire [6:0] out_conv_out_reg_15_reg_15_8_7;
  wire [6:0] out_conv_out_reg_20_reg_20_8_7;
  wire [6:0] out_conv_out_reg_21_reg_21_8_7;
  wire [6:0] out_conv_out_reg_22_reg_22_8_7;
  wire [6:0] out_conv_out_reg_31_reg_31_8_7;
  wire [6:0] out_conv_out_reg_32_reg_32_8_7;
  wire [6:0] out_conv_out_reg_38_reg_38_8_7;
  wire [6:0] out_conv_out_reg_39_reg_39_8_7;
  wire [7:0] out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_11_1_8;
  wire [7:0] out_conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_12_1_8;
  wire out_ge_expr_FU_16_16_16_62_i0_fu_merge_28863_29515;
  wire out_ge_expr_FU_16_16_16_62_i1_fu_merge_28863_29517;
  wire out_ge_expr_FU_16_16_16_62_i2_fu_merge_28863_29519;
  wire out_ge_expr_FU_16_16_16_62_i3_fu_merge_28863_29521;
  wire out_ge_expr_FU_16_16_16_62_i4_fu_merge_28863_29523;
  wire signed [8:0] out_i_assign_conn_obj_10_ASSIGN_SIGNED_FU_i_assign_0;
  wire signed [8:0] out_i_assign_conn_obj_11_ASSIGN_SIGNED_FU_i_assign_1;
  wire signed [8:0] out_i_assign_conn_obj_13_ASSIGN_SIGNED_FU_i_assign_2;
  wire signed [8:0] out_i_assign_conn_obj_14_ASSIGN_SIGNED_FU_i_assign_3;
  wire signed [8:0] out_i_assign_conn_obj_5_ASSIGN_SIGNED_FU_i_assign_4;
  wire signed [8:0] out_i_assign_conn_obj_6_ASSIGN_SIGNED_FU_i_assign_5;
  wire [7:0] out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_6;
  wire [7:0] out_iu_conv_conn_obj_12_IUdata_converter_FU_iu_conv_8;
  wire [7:0] out_iu_conv_conn_obj_15_IUdata_converter_FU_iu_conv_9;
  wire [7:0] out_iu_conv_conn_obj_1_IUdata_converter_FU_iu_conv_7;
  wire [7:0] out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_10;
  wire out_le_expr_FU_16_16_16_63_i0_fu_merge_28863_29509;
  wire out_le_expr_FU_16_16_16_63_i1_fu_merge_28863_29511;
  wire out_le_expr_FU_16_16_16_63_i2_fu_merge_28863_29513;
  wire out_le_expr_FU_8_8_8_64_i0_fu_merge_28863_29507;
  wire [1:0] out_multi_read_cond_FU_30_i0_fu_merge_28863_29666;
  wire signed [7:0] out_plus_expr_FU_8_0_8_65_i0_fu_merge_28863_28912;
  wire out_read_cond_FU_15_i0_fu_merge_28863_28946;
  wire out_read_cond_FU_39_i0_fu_merge_28863_29036;
  wire out_read_cond_FU_42_i0_fu_merge_28863_29063;
  wire out_read_cond_FU_53_i0_fu_merge_28863_29105;
  wire out_read_cond_FU_59_i0_fu_merge_28863_29149;
  wire out_read_cond_FU_60_i0_fu_merge_28863_29152;
  wire out_read_cond_FU_61_i0_fu_merge_28863_29155;
  wire [7:0] out_reg_0_reg_0;
  wire [8:0] out_reg_10_reg_10;
  wire [7:0] out_reg_11_reg_11;
  wire [7:0] out_reg_12_reg_12;
  wire [8:0] out_reg_13_reg_13;
  wire [7:0] out_reg_14_reg_14;
  wire [7:0] out_reg_15_reg_15;
  wire out_reg_16_reg_16;
  wire [7:0] out_reg_17_reg_17;
  wire [7:0] out_reg_18_reg_18;
  wire [7:0] out_reg_19_reg_19;
  wire [7:0] out_reg_1_reg_1;
  wire [7:0] out_reg_20_reg_20;
  wire [7:0] out_reg_21_reg_21;
  wire [7:0] out_reg_22_reg_22;
  wire [7:0] out_reg_23_reg_23;
  wire [7:0] out_reg_24_reg_24;
  wire [8:0] out_reg_25_reg_25;
  wire [7:0] out_reg_26_reg_26;
  wire [7:0] out_reg_27_reg_27;
  wire [7:0] out_reg_28_reg_28;
  wire [7:0] out_reg_29_reg_29;
  wire [8:0] out_reg_2_reg_2;
  wire [8:0] out_reg_30_reg_30;
  wire [7:0] out_reg_31_reg_31;
  wire [7:0] out_reg_32_reg_32;
  wire out_reg_33_reg_33;
  wire [7:0] out_reg_34_reg_34;
  wire [8:0] out_reg_35_reg_35;
  wire [7:0] out_reg_36_reg_36;
  wire [7:0] out_reg_37_reg_37;
  wire [7:0] out_reg_38_reg_38;
  wire [7:0] out_reg_39_reg_39;
  wire [7:0] out_reg_3_reg_3;
  wire [7:0] out_reg_40_reg_40;
  wire out_reg_41_reg_41;
  wire [7:0] out_reg_4_reg_4;
  wire [6:0] out_reg_5_reg_5;
  wire [6:0] out_reg_6_reg_6;
  wire [6:0] out_reg_7_reg_7;
  wire out_reg_8_reg_8;
  wire [6:0] out_reg_9_reg_9;
  wire out_truth_and_expr_FU_1_1_1_66_i0_fu_merge_28863_29672;
  wire out_truth_not_expr_FU_1_1_67_i0_fu_merge_28863_29669;
  wire [0:0] out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_11;
  wire [0:0] out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_12;
  wire [0:0] out_ui_bit_and_expr_FU_1_0_1_68_i0_fu_merge_28863_29567;
  wire [7:0] out_ui_bit_ior_concat_expr_FU_69_i0_fu_merge_28863_29132;
  wire [7:0] out_ui_lshift_expr_FU_8_0_8_70_i0_fu_merge_28863_29563;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_71_i0_fu_merge_28863_28968;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_71_i1_fu_merge_28863_28979;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_71_i2_fu_merge_28863_28999;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_71_i3_fu_merge_28863_29029;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_71_i4_fu_merge_28863_29081;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_71_i5_fu_merge_28863_29135;
  wire [7:0] out_ui_plus_expr_FU_8_0_8_72_i0_fu_merge_28863_28991;
  wire [6:0] out_ui_plus_expr_FU_8_8_8_73_i0_fu_merge_28863_29560;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_74_i0_fu_merge_28863_29316;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_74_i1_fu_merge_28863_29330;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_74_i2_fu_merge_28863_29375;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_74_i3_fu_merge_28863_29392;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_74_i4_fu_merge_28863_29405;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_74_i5_fu_merge_28863_29433;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_74_i6_fu_merge_28863_29446;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_74_i7_fu_merge_28863_29467;
  wire [7:0] out_ui_pointer_plus_expr_FU_8_8_8_74_i8_fu_merge_28863_29480;
  wire [6:0] out_ui_rshift_expr_FU_8_0_8_75_i0_fu_merge_28863_29553;
  wire [6:0] out_ui_rshift_expr_FU_8_0_8_75_i1_fu_merge_28863_29558;
  wire [7:0] out_ui_ternary_mp_expr_FU_8_8_8_8_76_i0_fu_merge_28863_29034;
  wire [7:0] out_ui_ternary_mp_expr_FU_8_8_8_8_76_i1_fu_merge_28863_29096;
  wire [7:0] out_vb_assign_conn_obj_16_ASSIGN_VECTOR_BOOL_FU_vb_assign_13;
  wire [7:0] out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_14;
  wire [7:0] out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_15;
  wire [7:0] out_vb_assign_conn_obj_8_ASSIGN_VECTOR_BOOL_FU_vb_assign_16;
  wire [1:0] sig_in_bus_mergerSout_DataRdy0_0;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram1_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288612_0;
  wire [13:0] sig_in_bus_mergerproxy_in2_288613_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_288614_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_288615_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_288616_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy0_0;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram1_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288612_0;
  wire [13:0] sig_in_vector_bus_mergerproxy_in2_288613_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_288614_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_288615_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_288616_0;
  wire [1:0] sig_out_bus_mergerSout_DataRdy0_;
  wire [15:0] sig_out_bus_mergerSout_Rdata_ram1_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288612_;
  wire [13:0] sig_out_bus_mergerproxy_in2_288613_;
  wire [7:0] sig_out_bus_mergerproxy_in3_288614_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_288615_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_288616_;
  
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(9), .BITSIZE_out1(9)) ASSIGN_SIGNED_FU_i_assign_0 (.out1(out_i_assign_conn_obj_10_ASSIGN_SIGNED_FU_i_assign_0), .in1(out_reg_25_reg_25));
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(9), .BITSIZE_out1(9)) ASSIGN_SIGNED_FU_i_assign_1 (.out1(out_i_assign_conn_obj_11_ASSIGN_SIGNED_FU_i_assign_1), .in1(out_reg_30_reg_30));
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(9), .BITSIZE_out1(9)) ASSIGN_SIGNED_FU_i_assign_2 (.out1(out_i_assign_conn_obj_13_ASSIGN_SIGNED_FU_i_assign_2), .in1(out_reg_2_reg_2));
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(9), .BITSIZE_out1(9)) ASSIGN_SIGNED_FU_i_assign_3 (.out1(out_i_assign_conn_obj_14_ASSIGN_SIGNED_FU_i_assign_3), .in1(out_reg_35_reg_35));
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(9), .BITSIZE_out1(9)) ASSIGN_SIGNED_FU_i_assign_4 (.out1(out_i_assign_conn_obj_5_ASSIGN_SIGNED_FU_i_assign_4), .in1(out_reg_10_reg_10));
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(9), .BITSIZE_out1(9)) ASSIGN_SIGNED_FU_i_assign_5 (.out1(out_i_assign_conn_obj_6_ASSIGN_SIGNED_FU_i_assign_5), .in1(out_reg_13_reg_13));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_11 (.out1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_11), .in1(out_const_3));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_UNSIGNED_FU_u_assign_12 (.out1(out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_12), .in1(out_const_0));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_13 (.out1(out_vb_assign_conn_obj_16_ASSIGN_VECTOR_BOOL_FU_vb_assign_13), .in1(out_reg_36_reg_36));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_14 (.out1(out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_14), .in1(out_reg_3_reg_3));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_15 (.out1(out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_15), .in1(out_reg_4_reg_4));
  ASSIGN_VECTOR_BOOL_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) ASSIGN_VECTOR_BOOL_FU_vb_assign_16 (.out1(out_vb_assign_conn_obj_8_ASSIGN_VECTOR_BOOL_FU_vb_assign_16), .in1(in_port_i1));
  DPROXY_CTRLN #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(7), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(7), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) DPROXY_CTRLN_2_i0 (.out1({out_DPROXY_CTRLN_2_i1_DPROXY_CTRLN_2_i0, out_DPROXY_CTRLN_2_i0_DPROXY_CTRLN_2_i0}), .proxy_in1(sig_in_vector_bus_mergerproxy_in1_288612_0), .proxy_in2(sig_in_vector_bus_mergerproxy_in2_288613_0), .proxy_in3(sig_in_vector_bus_mergerproxy_in3_288614_0), .proxy_sel_LOAD(sig_in_vector_bus_mergerproxy_sel_LOAD_288615_0), .proxy_sel_STORE(sig_in_vector_bus_mergerproxy_sel_STORE_288616_0), .in1({8'b00000000, out_iu_conv_conn_obj_15_IUdata_converter_FU_iu_conv_9}), .in2({out_conv_out_reg_21_reg_21_8_7, out_MUX_13_DPROXY_CTRLN_2_i0_1_1_0}), .in3({out_conv_out_const_2_5_4, out_conv_out_const_2_5_4}), .in4({out_const_3, out_const_3}), .sel_LOAD({fuselector_DPROXY_CTRLN_2_i1_LOAD, fuselector_DPROXY_CTRLN_2_i0_LOAD}), .sel_STORE({fuselector_DPROXY_CTRLN_2_i1_STORE, fuselector_DPROXY_CTRLN_2_i0_STORE}), .proxy_out1(proxy_out1_28861));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_10 (.out1(out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_10), .in1(out_reg_23_reg_23));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_6 (.out1(out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_6), .in1(out_reg_23_reg_23));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_7 (.out1(out_iu_conv_conn_obj_1_IUdata_converter_FU_iu_conv_7), .in1(out_reg_24_reg_24));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_8 (.out1(out_iu_conv_conn_obj_12_IUdata_converter_FU_iu_conv_8), .in1(out_reg_23_reg_23));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) IUdata_converter_FU_iu_conv_9 (.out1(out_iu_conv_conn_obj_15_IUdata_converter_FU_iu_conv_9), .in1(out_reg_40_reg_40));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0 (.out1(out_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0), .sel(selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0), .in1(out_vb_assign_conn_obj_16_ASSIGN_VECTOR_BOOL_FU_vb_assign_13), .in2(out_vb_assign_conn_obj_3_ASSIGN_VECTOR_BOOL_FU_vb_assign_14));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_1 (.out1(out_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_1), .sel(selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_1), .in1(out_vb_assign_conn_obj_4_ASSIGN_VECTOR_BOOL_FU_vb_assign_15), .in2(out_vb_assign_conn_obj_8_ASSIGN_VECTOR_BOOL_FU_vb_assign_16));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_1_0 (.out1(out_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_1_0), .sel(selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_1_0), .in1(out_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0), .in2(out_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_1));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_103_reg_17_0_0_0 (.out1(out_MUX_103_reg_17_0_0_0), .sel(selector_MUX_103_reg_17_0_0_0), .in1(out_reg_3_reg_3), .in2(out_IUdata_converter_FU_5_i0_fu_merge_28863_28913));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_103_reg_17_0_0_1 (.out1(out_MUX_103_reg_17_0_0_1), .sel(selector_MUX_103_reg_17_0_0_1), .in1(out_ui_plus_expr_FU_8_0_8_71_i0_fu_merge_28863_28968), .in2(out_MUX_103_reg_17_0_0_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_104_reg_18_0_0_0 (.out1(out_MUX_104_reg_18_0_0_0), .sel(selector_MUX_104_reg_18_0_0_0), .in1(out_reg_4_reg_4), .in2(in_port_i1));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_104_reg_18_0_0_1 (.out1(out_MUX_104_reg_18_0_0_1), .sel(selector_MUX_104_reg_18_0_0_1), .in1(out_ui_plus_expr_FU_8_0_8_71_i1_fu_merge_28863_28979), .in2(out_MUX_104_reg_18_0_0_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_105_reg_19_0_0_0 (.out1(out_MUX_105_reg_19_0_0_0), .sel(selector_MUX_105_reg_19_0_0_0), .in1(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_11_1_8), .in2(out_ui_plus_expr_FU_8_0_8_71_i2_fu_merge_28863_28999));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_113_reg_26_0_0_0 (.out1(out_MUX_113_reg_26_0_0_0), .sel(selector_MUX_113_reg_26_0_0_0), .in1(out_ASSIGN_UNSIGNED_FU_22_i0_fu_merge_28863_29616), .in2(out_ASSIGN_UNSIGNED_FU_23_i0_fu_merge_28863_29614));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_114_reg_27_0_0_0 (.out1(out_MUX_114_reg_27_0_0_0), .sel(selector_MUX_114_reg_27_0_0_0), .in1(out_reg_29_reg_29), .in2(out_ui_plus_expr_FU_8_0_8_72_i0_fu_merge_28863_28991));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_115_reg_28_0_0_0 (.out1(out_MUX_115_reg_28_0_0_0), .sel(selector_MUX_115_reg_28_0_0_0), .in1(out_i_assign_conn_obj_10_ASSIGN_SIGNED_FU_i_assign_0), .in2(out_i_assign_conn_obj_11_ASSIGN_SIGNED_FU_i_assign_1));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_117_reg_3_0_0_0 (.out1(out_MUX_117_reg_3_0_0_0), .sel(selector_MUX_117_reg_3_0_0_0), .in1(out_reg_17_reg_17), .in2(out_IUdata_converter_FU_5_i0_fu_merge_28863_28913));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_122_reg_34_0_0_0 (.out1(out_MUX_122_reg_34_0_0_0), .sel(selector_MUX_122_reg_34_0_0_0), .in1(out_i_assign_conn_obj_13_ASSIGN_SIGNED_FU_i_assign_2), .in2(out_i_assign_conn_obj_14_ASSIGN_SIGNED_FU_i_assign_3));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_125_reg_37_0_0_0 (.out1(out_MUX_125_reg_37_0_0_0), .sel(selector_MUX_125_reg_37_0_0_0), .in1(out_conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_12_1_8), .in2(out_ui_plus_expr_FU_8_0_8_71_i5_fu_merge_28863_29135));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_128_reg_4_0_0_0 (.out1(out_MUX_128_reg_4_0_0_0), .sel(selector_MUX_128_reg_4_0_0_0), .in1(out_reg_18_reg_18), .in2(in_port_i1));
  MUX_GATE #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(7)) MUX_13_DPROXY_CTRLN_2_i0_1_0_0 (.out1(out_MUX_13_DPROXY_CTRLN_2_i0_1_0_0), .sel(selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_0), .in1(out_conv_out_reg_39_reg_39_8_7), .in2(out_conv_out_reg_31_reg_31_8_7));
  MUX_GATE #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(7)) MUX_13_DPROXY_CTRLN_2_i0_1_0_1 (.out1(out_MUX_13_DPROXY_CTRLN_2_i0_1_0_1), .sel(selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_1), .in1(out_conv_out_reg_20_reg_20_8_7), .in2(out_conv_out_reg_14_reg_14_8_7));
  MUX_GATE #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(7)) MUX_13_DPROXY_CTRLN_2_i0_1_1_0 (.out1(out_MUX_13_DPROXY_CTRLN_2_i0_1_1_0), .sel(selector_MUX_13_DPROXY_CTRLN_2_i0_1_1_0), .in1(out_MUX_13_DPROXY_CTRLN_2_i0_1_0_0), .in2(out_MUX_13_DPROXY_CTRLN_2_i0_1_0_1));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_0 (.out1(out_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_0), .sel(selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_0), .in1(out_iu_conv_conn_obj_0_IUdata_converter_FU_iu_conv_6), .in2(out_iu_conv_conn_obj_1_IUdata_converter_FU_iu_conv_7));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_1 (.out1(out_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_1), .sel(selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_1), .in1(out_iu_conv_conn_obj_12_IUdata_converter_FU_iu_conv_8), .in2(out_iu_conv_conn_obj_7_IUdata_converter_FU_iu_conv_10));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_1_0 (.out1(out_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_1_0), .sel(selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_1_0), .in1(out_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_0), .in2(out_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_1));
  MUX_GATE #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(7)) MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0 (.out1(out_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0), .sel(selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0), .in1(out_conv_out_reg_38_reg_38_8_7), .in2(out_conv_out_reg_32_reg_32_8_7));
  MUX_GATE #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(7)) MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_1 (.out1(out_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_1), .sel(selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_1), .in1(out_conv_out_reg_22_reg_22_8_7), .in2(out_conv_out_reg_15_reg_15_8_7));
  MUX_GATE #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(7)) MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_1_0 (.out1(out_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_1_0), .sel(selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_1_0), .in1(out_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0), .in2(out_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_1));
  MUX_GATE #(.BITSIZE_in1(9), .BITSIZE_in2(9), .BITSIZE_out1(9)) MUX_97_reg_11_0_0_0 (.out1(out_MUX_97_reg_11_0_0_0), .sel(selector_MUX_97_reg_11_0_0_0), .in1(out_i_assign_conn_obj_5_ASSIGN_SIGNED_FU_i_assign_4), .in2(out_i_assign_conn_obj_6_ASSIGN_SIGNED_FU_i_assign_5));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_98_reg_12_0_0_0 (.out1(out_MUX_98_reg_12_0_0_0), .sel(selector_MUX_98_reg_12_0_0_0), .in1(out_reg_27_reg_27), .in2(out_ui_plus_expr_FU_8_0_8_71_i3_fu_merge_28863_29029));
  ARRAY_1D_STD_DISTRAM_NN_SDS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(7), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(7), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28859.mem"), .n_elements(1), .data_size(8), .address_space_begin(MEM_var_28859_28863), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .READ_ONLY_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(7), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28859_0 (.out1({null_out_signal_array_28859_0_out1_1, null_out_signal_array_28859_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram1_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy0_0), .proxy_out1({null_out_signal_array_28859_0_proxy_out1_1, null_out_signal_array_28859_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_1_0}), .in2({7'b0000000, out_reg_7_reg_7}), .in3({4'b0000, out_conv_out_const_2_5_4}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({7'b0000000, 7'b0000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  ARRAY_1D_STD_DISTRAM_NN_SDS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(7), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(7), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28984.mem"), .n_elements(2), .data_size(8), .address_space_begin(MEM_var_28984_28863), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(1), .READ_ONLY_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(7), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28984_0 (.out1({null_out_signal_array_28984_0_out1_1, out_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_array_28984_0}), .Sout_Rdata_ram({null_out_signal_array_28984_0_Sout_Rdata_ram_1, null_out_signal_array_28984_0_Sout_Rdata_ram_0}), .Sout_DataRdy({null_out_signal_array_28984_0_Sout_DataRdy_1, null_out_signal_array_28984_0_Sout_DataRdy_0}), .proxy_out1({null_out_signal_array_28984_0_proxy_out1_1, null_out_signal_array_28984_0_proxy_out1_0}), .clock(clock), .reset(reset), .in1({8'b00000000, out_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_1_0}), .in2({7'b0000000, out_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_1_0}), .in3({4'b0000, out_conv_out_const_2_5_4}), .in4({1'b0, out_const_3}), .sel_LOAD({1'b0, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_LOAD}), .sel_STORE({1'b0, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE}), .S_oe_ram({1'b0, 1'b0}), .S_we_ram({1'b0, 1'b0}), .S_addr_ram({7'b0000000, 7'b0000000}), .S_Wdata_ram({8'b00000000, 8'b00000000}), .Sin_Rdata_ram({8'b00000000, 8'b00000000}), .S_data_ram_size({4'b0000, 4'b0000}), .Sin_DataRdy({1'b0, 1'b0}), .proxy_in1({8'b00000000, 8'b00000000}), .proxy_in2({7'b0000000, 7'b0000000}), .proxy_in3({4'b0000, 4'b0000}), .proxy_sel_LOAD({1'b0, 1'b0}), .proxy_sel_STORE({1'b0, 1'b0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerSout_DataRdy0_ (.out1(sig_out_bus_mergerSout_DataRdy0_), .in1({sig_in_bus_mergerSout_DataRdy0_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerSout_Rdata_ram1_ (.out1(sig_out_bus_mergerSout_Rdata_ram1_), .in1({sig_in_bus_mergerSout_Rdata_ram1_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288612_ (.out1(sig_out_bus_mergerproxy_in1_288612_), .in1({sig_in_bus_mergerproxy_in1_288612_0}));
  bus_merger #(.BITSIZE_in1(14), .PORTSIZE_in1(1), .BITSIZE_out1(14)) bus_mergerproxy_in2_288613_ (.out1(sig_out_bus_mergerproxy_in2_288613_), .in1({sig_in_bus_mergerproxy_in2_288613_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_288614_ (.out1(sig_out_bus_mergerproxy_in3_288614_), .in1({sig_in_bus_mergerproxy_in3_288614_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_288615_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288615_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288615_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_288616_ (.out1(sig_out_bus_mergerproxy_sel_STORE_288616_), .in1({sig_in_bus_mergerproxy_sel_STORE_288616_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(2), .value(2'b01)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(5), .value(5'b01000)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_4 (.out1(out_const_4));
  constant_value #(.BITSIZE_out1(6), .value(MEM_var_28861_28867)) const_5 (.out1(out_const_5));
  constant_value #(.BITSIZE_out1(6), .value(MEM_var_28984_28863)) const_6 (.out1(out_const_6));
  constant_value #(.BITSIZE_out1(7), .value(MEM_var_28859_28863)) const_7 (.out1(out_const_7));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) conv_out_MUX_115_reg_28_0_0_0_9_8 (.out1(out_conv_out_MUX_115_reg_28_0_0_0_9_8), .in1(out_MUX_115_reg_28_0_0_0));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) conv_out_MUX_122_reg_34_0_0_0_9_8 (.out1(out_conv_out_MUX_122_reg_34_0_0_0_9_8), .in1(out_MUX_122_reg_34_0_0_0));
  UUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) conv_out_MUX_97_reg_11_0_0_0_9_8 (.out1(out_conv_out_MUX_97_reg_11_0_0_0_9_8), .in1(out_MUX_97_reg_11_0_0_0));
  UUdata_converter_FU #(.BITSIZE_in1(5), .BITSIZE_out1(4)) conv_out_const_2_5_4 (.out1(out_conv_out_const_2_5_4), .in1(out_const_2));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(32)) conv_out_const_5_6_32 (.out1(out_conv_out_const_5_6_32), .in1(out_const_5));
  UUdata_converter_FU #(.BITSIZE_in1(6), .BITSIZE_out1(32)) conv_out_const_6_6_32 (.out1(out_conv_out_const_6_6_32), .in1(out_const_6));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(32)) conv_out_const_7_7_32 (.out1(out_conv_out_const_7_7_32), .in1(out_const_7));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(7)) conv_out_reg_14_reg_14_8_7 (.out1(out_conv_out_reg_14_reg_14_8_7), .in1(out_reg_14_reg_14));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(7)) conv_out_reg_15_reg_15_8_7 (.out1(out_conv_out_reg_15_reg_15_8_7), .in1(out_reg_15_reg_15));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(7)) conv_out_reg_20_reg_20_8_7 (.out1(out_conv_out_reg_20_reg_20_8_7), .in1(out_reg_20_reg_20));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(7)) conv_out_reg_21_reg_21_8_7 (.out1(out_conv_out_reg_21_reg_21_8_7), .in1(out_reg_21_reg_21));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(7)) conv_out_reg_22_reg_22_8_7 (.out1(out_conv_out_reg_22_reg_22_8_7), .in1(out_reg_22_reg_22));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(7)) conv_out_reg_31_reg_31_8_7 (.out1(out_conv_out_reg_31_reg_31_8_7), .in1(out_reg_31_reg_31));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(7)) conv_out_reg_32_reg_32_8_7 (.out1(out_conv_out_reg_32_reg_32_8_7), .in1(out_reg_32_reg_32));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(7)) conv_out_reg_38_reg_38_8_7 (.out1(out_conv_out_reg_38_reg_38_8_7), .in1(out_reg_38_reg_38));
  UUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(7)) conv_out_reg_39_reg_39_8_7 (.out1(out_conv_out_reg_39_reg_39_8_7), .in1(out_reg_39_reg_39));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_11_1_8 (.out1(out_conv_out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_11_1_8), .in1(out_u_assign_conn_obj_2_ASSIGN_UNSIGNED_FU_u_assign_11));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_12_1_8 (.out1(out_conv_out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_12_1_8), .in1(out_u_assign_conn_obj_9_ASSIGN_UNSIGNED_FU_u_assign_12));
  plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_merge_28863_28912 (.out1(out_plus_expr_FU_8_0_8_65_i0_fu_merge_28863_28912), .in1(in_port_f1), .in2(out_const_1));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_merge_28863_28913 (.out1(out_IUdata_converter_FU_5_i0_fu_merge_28863_28913), .in1(out_plus_expr_FU_8_0_8_65_i0_fu_merge_28863_28912));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_merge_28863_28914 (.out1(out_IIdata_converter_FU_6_i0_fu_merge_28863_28914), .in1(in_port_f1));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_merge_28863_28915 (.out1(out_IIdata_converter_FU_7_i0_fu_merge_28863_28915), .in1(in_port_f2));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_merge_28863_28916 (.out1(out_UIdata_converter_FU_8_i0_fu_merge_28863_28916), .in1(in_port_i1));
  read_cond_FU #(.BITSIZE_in1(1)) fu_merge_28863_28946 (.out1(out_read_cond_FU_15_i0_fu_merge_28863_28946), .in1(out_le_expr_FU_8_8_8_64_i0_fu_merge_28863_29507));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_merge_28863_28968 (.out1(out_ui_plus_expr_FU_8_0_8_71_i0_fu_merge_28863_28968), .in1(out_reg_3_reg_3), .in2(out_const_3));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_merge_28863_28979 (.out1(out_ui_plus_expr_FU_8_0_8_71_i1_fu_merge_28863_28979), .in1(out_reg_4_reg_4), .in2(out_const_3));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_merge_28863_28987 (.out1(out_UIdata_converter_FU_28_i0_fu_merge_28863_28987), .in1(out_ui_plus_expr_FU_8_0_8_72_i0_fu_merge_28863_28991));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) fu_merge_28863_28991 (.out1(out_ui_plus_expr_FU_8_0_8_72_i0_fu_merge_28863_28991), .in1(out_reg_19_reg_19), .in2(out_const_4));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_merge_28863_28999 (.out1(out_ui_plus_expr_FU_8_0_8_71_i2_fu_merge_28863_28999), .in1(out_reg_19_reg_19), .in2(out_const_3));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_merge_28863_29006 (.out1(out_UIdata_converter_FU_24_i0_fu_merge_28863_29006), .in1(out_reg_4_reg_4));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_merge_28863_29010 (.out1(out_UIdata_converter_FU_25_i0_fu_merge_28863_29010), .in1(out_reg_3_reg_3));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_merge_28863_29029 (.out1(out_ui_plus_expr_FU_8_0_8_71_i3_fu_merge_28863_29029), .in1(out_reg_12_reg_12), .in2(out_const_3));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_merge_28863_29030 (.out1(out_UIdata_converter_FU_35_i0_fu_merge_28863_29030), .in1(out_reg_12_reg_12));
  ui_ternary_mp_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_merge_28863_29034 (.out1(out_ui_ternary_mp_expr_FU_8_8_8_8_76_i0_fu_merge_28863_29034), .in1(out_reg_18_reg_18), .in2(out_reg_26_reg_26), .in3(out_ASSIGN_UNSIGNED_FU_34_i0_fu_merge_28863_29624));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_merge_28863_29035 (.out1(out_UIdata_converter_FU_38_i0_fu_merge_28863_29035), .in1(out_ui_ternary_mp_expr_FU_8_8_8_8_76_i0_fu_merge_28863_29034));
  read_cond_FU #(.BITSIZE_in1(1)) fu_merge_28863_29036 (.out1(out_read_cond_FU_39_i0_fu_merge_28863_29036), .in1(out_reg_16_reg_16));
  read_cond_FU #(.BITSIZE_in1(1)) fu_merge_28863_29063 (.out1(out_read_cond_FU_42_i0_fu_merge_28863_29063), .in1(out_reg_8_reg_8));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_merge_28863_29072 (.out1(out_UIdata_converter_FU_49_i0_fu_merge_28863_29072), .in1(out_reg_27_reg_27));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_merge_28863_29081 (.out1(out_ui_plus_expr_FU_8_0_8_71_i4_fu_merge_28863_29081), .in1(out_reg_27_reg_27), .in2(out_const_3));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_merge_28863_29093 (.out1(out_UIdata_converter_FU_52_i0_fu_merge_28863_29093), .in1(out_ui_ternary_mp_expr_FU_8_8_8_8_76_i1_fu_merge_28863_29096));
  ui_ternary_mp_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_merge_28863_29096 (.out1(out_ui_ternary_mp_expr_FU_8_8_8_8_76_i1_fu_merge_28863_29096), .in1(out_reg_17_reg_17), .in2(out_reg_26_reg_26), .in3(out_ASSIGN_UNSIGNED_FU_48_i0_fu_merge_28863_29626));
  read_cond_FU #(.BITSIZE_in1(1)) fu_merge_28863_29105 (.out1(out_read_cond_FU_53_i0_fu_merge_28863_29105), .in1(out_reg_33_reg_33));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_merge_28863_29129 (.out1(out_UIdata_converter_FU_58_i0_fu_merge_28863_29129), .in1(out_ui_bit_ior_concat_expr_FU_69_i0_fu_merge_28863_29132));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(8), .OFFSET_PARAMETER(1)) fu_merge_28863_29132 (.out1(out_ui_bit_ior_concat_expr_FU_69_i0_fu_merge_28863_29132), .in1(out_ui_lshift_expr_FU_8_0_8_70_i0_fu_merge_28863_29563), .in2(out_ui_bit_and_expr_FU_1_0_1_68_i0_fu_merge_28863_29567), .in3(out_const_3));
  ui_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(8)) fu_merge_28863_29135 (.out1(out_ui_plus_expr_FU_8_0_8_71_i5_fu_merge_28863_29135), .in1(out_reg_37_reg_37), .in2(out_const_3));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_merge_28863_29142 (.out1(out_UIdata_converter_FU_55_i0_fu_merge_28863_29142), .in1(out_reg_37_reg_37));
  read_cond_FU #(.BITSIZE_in1(1)) fu_merge_28863_29149 (.out1(out_read_cond_FU_59_i0_fu_merge_28863_29149), .in1(out_reg_41_reg_41));
  read_cond_FU #(.BITSIZE_in1(1)) fu_merge_28863_29152 (.out1(out_read_cond_FU_60_i0_fu_merge_28863_29152), .in1(out_ge_expr_FU_16_16_16_62_i3_fu_merge_28863_29521));
  read_cond_FU #(.BITSIZE_in1(1)) fu_merge_28863_29155 (.out1(out_read_cond_FU_61_i0_fu_merge_28863_29155), .in1(out_ge_expr_FU_16_16_16_62_i4_fu_merge_28863_29523));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(7)) fu_merge_28863_29309 (.out1(out_IUdata_converter_FU_26_i0_fu_merge_28863_29309), .in1(out_UIdata_converter_FU_24_i0_fu_merge_28863_29006));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_merge_28863_29316 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_74_i0_fu_merge_28863_29316), .in1(out_reg_5_reg_5), .in2(out_IUdata_converter_FU_26_i0_fu_merge_28863_29309));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(7)) fu_merge_28863_29324 (.out1(out_IUdata_converter_FU_27_i0_fu_merge_28863_29324), .in1(out_UIdata_converter_FU_25_i0_fu_merge_28863_29010));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_merge_28863_29330 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_74_i1_fu_merge_28863_29330), .in1(out_reg_5_reg_5), .in2(out_IUdata_converter_FU_27_i0_fu_merge_28863_29324));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(7)) fu_merge_28863_29369 (.out1(out_IUdata_converter_FU_29_i0_fu_merge_28863_29369), .in1(out_UIdata_converter_FU_28_i0_fu_merge_28863_28987));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_merge_28863_29375 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_74_i2_fu_merge_28863_29375), .in1(out_reg_6_reg_6), .in2(out_IUdata_converter_FU_29_i0_fu_merge_28863_29369));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(7)) fu_merge_28863_29386 (.out1(out_IUdata_converter_FU_36_i0_fu_merge_28863_29386), .in1(out_reg_11_reg_11));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_merge_28863_29392 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_74_i3_fu_merge_28863_29392), .in1(out_reg_5_reg_5), .in2(out_IUdata_converter_FU_36_i0_fu_merge_28863_29386));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(7)) fu_merge_28863_29399 (.out1(out_IUdata_converter_FU_37_i0_fu_merge_28863_29399), .in1(out_UIdata_converter_FU_35_i0_fu_merge_28863_29030));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_merge_28863_29405 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_74_i4_fu_merge_28863_29405), .in1(out_reg_6_reg_6), .in2(out_IUdata_converter_FU_37_i0_fu_merge_28863_29399));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(7)) fu_merge_28863_29424 (.out1(out_UUdata_converter_FU_11_i0_fu_merge_28863_29424), .in1(out_addr_expr_FU_10_i0_fu_merge_28863_29450));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(7)) fu_merge_28863_29427 (.out1(out_IUdata_converter_FU_50_i0_fu_merge_28863_29427), .in1(out_reg_28_reg_28));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_merge_28863_29433 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_74_i5_fu_merge_28863_29433), .in1(out_reg_5_reg_5), .in2(out_IUdata_converter_FU_50_i0_fu_merge_28863_29427));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(7)) fu_merge_28863_29437 (.out1(out_UUdata_converter_FU_13_i0_fu_merge_28863_29437), .in1(out_addr_expr_FU_12_i0_fu_merge_28863_29454));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(7)) fu_merge_28863_29440 (.out1(out_IUdata_converter_FU_51_i0_fu_merge_28863_29440), .in1(out_UIdata_converter_FU_49_i0_fu_merge_28863_29072));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_merge_28863_29446 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_74_i6_fu_merge_28863_29446), .in1(out_reg_6_reg_6), .in2(out_IUdata_converter_FU_51_i0_fu_merge_28863_29440));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_merge_28863_29450 (.out1(out_addr_expr_FU_10_i0_fu_merge_28863_29450), .in1(out_conv_out_const_5_6_32));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_merge_28863_29454 (.out1(out_addr_expr_FU_12_i0_fu_merge_28863_29454), .in1(out_conv_out_const_6_6_32));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(7)) fu_merge_28863_29461 (.out1(out_IUdata_converter_FU_56_i0_fu_merge_28863_29461), .in1(out_UIdata_converter_FU_55_i0_fu_merge_28863_29142));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_merge_28863_29467 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_74_i7_fu_merge_28863_29467), .in1(out_reg_6_reg_6), .in2(out_IUdata_converter_FU_56_i0_fu_merge_28863_29461));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(7)) fu_merge_28863_29474 (.out1(out_IUdata_converter_FU_57_i0_fu_merge_28863_29474), .in1(out_reg_34_reg_34));
  ui_pointer_plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(8), .LSB_PARAMETER(0)) fu_merge_28863_29480 (.out1(out_ui_pointer_plus_expr_FU_8_8_8_74_i8_fu_merge_28863_29480), .in1(out_reg_5_reg_5), .in2(out_IUdata_converter_FU_57_i0_fu_merge_28863_29474));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(7)) fu_merge_28863_29500 (.out1(out_addr_expr_FU_9_i0_fu_merge_28863_29500), .in1(out_conv_out_const_7_7_32));
  le_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_merge_28863_29507 (.out1(out_le_expr_FU_8_8_8_64_i0_fu_merge_28863_29507), .in1(out_reg_23_reg_23), .in2(out_reg_24_reg_24));
  le_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_merge_28863_29509 (.out1(out_le_expr_FU_16_16_16_63_i0_fu_merge_28863_29509), .in1(out_UIdata_converter_FU_24_i0_fu_merge_28863_29006), .in2(out_reg_0_reg_0));
  le_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_merge_28863_29511 (.out1(out_le_expr_FU_16_16_16_63_i1_fu_merge_28863_29511), .in1(out_UIdata_converter_FU_25_i0_fu_merge_28863_29010), .in2(out_reg_1_reg_1));
  le_expr_FU #(.BITSIZE_in1(9), .BITSIZE_in2(8), .BITSIZE_out1(1)) fu_merge_28863_29513 (.out1(out_le_expr_FU_16_16_16_63_i2_fu_merge_28863_29513), .in1(out_reg_13_reg_13), .in2(out_reg_0_reg_0));
  ge_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_out1(1)) fu_merge_28863_29515 (.out1(out_ge_expr_FU_16_16_16_62_i0_fu_merge_28863_29515), .in1(out_IIdata_converter_FU_7_i0_fu_merge_28863_28915), .in2(out_UIdata_converter_FU_8_i0_fu_merge_28863_28916));
  ge_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_out1(1)) fu_merge_28863_29517 (.out1(out_ge_expr_FU_16_16_16_62_i1_fu_merge_28863_29517), .in1(out_reg_1_reg_1), .in2(out_reg_30_reg_30));
  ge_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_out1(1)) fu_merge_28863_29519 (.out1(out_ge_expr_FU_16_16_16_62_i2_fu_merge_28863_29519), .in1(out_reg_1_reg_1), .in2(out_reg_35_reg_35));
  ge_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_out1(1)) fu_merge_28863_29521 (.out1(out_ge_expr_FU_16_16_16_62_i3_fu_merge_28863_29521), .in1(out_reg_0_reg_0), .in2(out_reg_10_reg_10));
  ge_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(9), .BITSIZE_out1(1)) fu_merge_28863_29523 (.out1(out_ge_expr_FU_16_16_16_62_i4_fu_merge_28863_29523), .in1(out_reg_1_reg_1), .in2(out_reg_25_reg_25));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(7), .PRECISION(8)) fu_merge_28863_29553 (.out1(out_ui_rshift_expr_FU_8_0_8_75_i0_fu_merge_28863_29553), .in1(out_ui_plus_expr_FU_8_0_8_71_i5_fu_merge_28863_29135), .in2(out_const_3));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(7), .PRECISION(8)) fu_merge_28863_29558 (.out1(out_ui_rshift_expr_FU_8_0_8_75_i1_fu_merge_28863_29558), .in1(in_port_i1), .in2(out_const_3));
  ui_plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(7)) fu_merge_28863_29560 (.out1(out_ui_plus_expr_FU_8_8_8_73_i0_fu_merge_28863_29560), .in1(out_ui_rshift_expr_FU_8_0_8_75_i0_fu_merge_28863_29553), .in2(out_reg_9_reg_9));
  ui_lshift_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(1), .BITSIZE_out1(8), .PRECISION(8)) fu_merge_28863_29563 (.out1(out_ui_lshift_expr_FU_8_0_8_70_i0_fu_merge_28863_29563), .in1(out_ui_plus_expr_FU_8_8_8_73_i0_fu_merge_28863_29560), .in2(out_const_3));
  ui_bit_and_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_merge_28863_29567 (.out1(out_ui_bit_and_expr_FU_1_0_1_68_i0_fu_merge_28863_29567), .in1(out_ui_plus_expr_FU_8_0_8_71_i5_fu_merge_28863_29135), .in2(out_const_3));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_merge_28863_29614 (.out1(out_ASSIGN_UNSIGNED_FU_23_i0_fu_merge_28863_29614), .in1(out_ui_plus_expr_FU_8_0_8_72_i0_fu_merge_28863_28991));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_merge_28863_29616 (.out1(out_ASSIGN_UNSIGNED_FU_22_i0_fu_merge_28863_29616), .in1(out_ui_plus_expr_FU_8_0_8_72_i0_fu_merge_28863_28991));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_merge_28863_29624 (.out1(out_ASSIGN_UNSIGNED_FU_34_i0_fu_merge_28863_29624), .in1(out_ui_plus_expr_FU_8_0_8_71_i3_fu_merge_28863_29029));
  ASSIGN_UNSIGNED_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_merge_28863_29626 (.out1(out_ASSIGN_UNSIGNED_FU_48_i0_fu_merge_28863_29626), .in1(out_ui_plus_expr_FU_8_0_8_71_i4_fu_merge_28863_29081));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) fu_merge_28863_29666 (.out1(out_multi_read_cond_FU_30_i0_fu_merge_28863_29666), .in1({out_truth_and_expr_FU_1_1_1_66_i0_fu_merge_28863_29672, out_truth_not_expr_FU_1_1_67_i0_fu_merge_28863_29669}));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_merge_28863_29669 (.out1(out_truth_not_expr_FU_1_1_67_i0_fu_merge_28863_29669), .in1(out_le_expr_FU_16_16_16_63_i0_fu_merge_28863_29509));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_merge_28863_29672 (.out1(out_truth_and_expr_FU_1_1_1_66_i0_fu_merge_28863_29672), .in1(out_le_expr_FU_16_16_16_63_i0_fu_merge_28863_29509), .in2(out_le_expr_FU_16_16_16_63_i1_fu_merge_28863_29511));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy0_0 (.out1(sig_in_bus_mergerSout_DataRdy0_0), .in1(sig_in_vector_bus_mergerSout_DataRdy0_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram1_0 (.out1(sig_in_bus_mergerSout_Rdata_ram1_0), .in1(sig_in_vector_bus_mergerSout_Rdata_ram1_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288612_0 (.out1(sig_in_bus_mergerproxy_in1_288612_0), .in1(sig_in_vector_bus_mergerproxy_in1_288612_0));
  join_signal #(.BITSIZE_in1(7), .PORTSIZE_in1(2), .BITSIZE_out1(14)) join_signalbus_mergerproxy_in2_288613_0 (.out1(sig_in_bus_mergerproxy_in2_288613_0), .in1(sig_in_vector_bus_mergerproxy_in2_288613_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_288614_0 (.out1(sig_in_bus_mergerproxy_in3_288614_0), .in1(sig_in_vector_bus_mergerproxy_in3_288614_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_288615_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_288615_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_288615_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_288616_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_288616_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_288616_0));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_6_i0_fu_merge_28863_28914), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_7_i0_fu_merge_28863_28915), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_24_i0_fu_merge_28863_29006), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_conv_out_MUX_97_reg_11_0_0_0_9_8), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_MUX_98_reg_12_0_0_0), .wenable(wrenable_reg_12));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_13 (.out1(out_reg_13_reg_13), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_38_i0_fu_merge_28863_29035), .wenable(wrenable_reg_13));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_14 (.out1(out_reg_14_reg_14), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_74_i3_fu_merge_28863_29392), .wenable(wrenable_reg_14));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_15 (.out1(out_reg_15_reg_15), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_74_i4_fu_merge_28863_29405), .wenable(wrenable_reg_15));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_16 (.out1(out_reg_16_reg_16), .clock(clock), .reset(reset), .in1(out_le_expr_FU_16_16_16_63_i2_fu_merge_28863_29513), .wenable(wrenable_reg_16));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_17 (.out1(out_reg_17_reg_17), .clock(clock), .reset(reset), .in1(out_MUX_103_reg_17_0_0_1), .wenable(wrenable_reg_17));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_18 (.out1(out_reg_18_reg_18), .clock(clock), .reset(reset), .in1(out_MUX_104_reg_18_0_0_1), .wenable(wrenable_reg_18));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_19 (.out1(out_reg_19_reg_19), .clock(clock), .reset(reset), .in1(out_MUX_105_reg_19_0_0_0), .wenable(wrenable_reg_19));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_8_i0_fu_merge_28863_28916), .wenable(wrenable_reg_2));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_20 (.out1(out_reg_20_reg_20), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_74_i0_fu_merge_28863_29316), .wenable(wrenable_reg_20));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_21 (.out1(out_reg_21_reg_21), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_74_i1_fu_merge_28863_29330), .wenable(wrenable_reg_21));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_22 (.out1(out_reg_22_reg_22), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_74_i2_fu_merge_28863_29375), .wenable(wrenable_reg_22));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_23 (.out1(out_reg_23_reg_23), .clock(clock), .reset(reset), .in1(out_DPROXY_CTRLN_2_i0_DPROXY_CTRLN_2_i0), .wenable(wrenable_reg_23));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_24 (.out1(out_reg_24_reg_24), .clock(clock), .reset(reset), .in1(out_DPROXY_CTRLN_2_i1_DPROXY_CTRLN_2_i0), .wenable(wrenable_reg_24));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_25 (.out1(out_reg_25_reg_25), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_25_i0_fu_merge_28863_29010), .wenable(wrenable_reg_25));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_26 (.out1(out_reg_26_reg_26), .clock(clock), .reset(reset), .in1(out_MUX_113_reg_26_0_0_0), .wenable(wrenable_reg_26));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_27 (.out1(out_reg_27_reg_27), .clock(clock), .reset(reset), .in1(out_MUX_114_reg_27_0_0_0), .wenable(wrenable_reg_27));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_28 (.out1(out_reg_28_reg_28), .clock(clock), .reset(reset), .in1(out_conv_out_MUX_115_reg_28_0_0_0_9_8), .wenable(wrenable_reg_28));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_29 (.out1(out_reg_29_reg_29), .clock(clock), .reset(reset), .in1(out_ui_plus_expr_FU_8_0_8_71_i4_fu_merge_28863_29081), .wenable(wrenable_reg_29));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_MUX_117_reg_3_0_0_0), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_30 (.out1(out_reg_30_reg_30), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_52_i0_fu_merge_28863_29093), .wenable(wrenable_reg_30));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_31 (.out1(out_reg_31_reg_31), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_74_i5_fu_merge_28863_29433), .wenable(wrenable_reg_31));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_32 (.out1(out_reg_32_reg_32), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_74_i6_fu_merge_28863_29446), .wenable(wrenable_reg_32));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_33 (.out1(out_reg_33_reg_33), .clock(clock), .reset(reset), .in1(out_ge_expr_FU_16_16_16_62_i1_fu_merge_28863_29517), .wenable(wrenable_reg_33));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_34 (.out1(out_reg_34_reg_34), .clock(clock), .reset(reset), .in1(out_conv_out_MUX_122_reg_34_0_0_0_9_8), .wenable(wrenable_reg_34));
  register_SE #(.BITSIZE_in1(9), .BITSIZE_out1(9)) reg_35 (.out1(out_reg_35_reg_35), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_58_i0_fu_merge_28863_29129), .wenable(wrenable_reg_35));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_36 (.out1(out_reg_36_reg_36), .clock(clock), .reset(reset), .in1(out_ui_bit_ior_concat_expr_FU_69_i0_fu_merge_28863_29132), .wenable(wrenable_reg_36));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_37 (.out1(out_reg_37_reg_37), .clock(clock), .reset(reset), .in1(out_MUX_125_reg_37_0_0_0), .wenable(wrenable_reg_37));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_38 (.out1(out_reg_38_reg_38), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_74_i7_fu_merge_28863_29467), .wenable(wrenable_reg_38));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_39 (.out1(out_reg_39_reg_39), .clock(clock), .reset(reset), .in1(out_ui_pointer_plus_expr_FU_8_8_8_74_i8_fu_merge_28863_29480), .wenable(wrenable_reg_39));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_MUX_128_reg_4_0_0_0), .wenable(wrenable_reg_4));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_40 (.out1(out_reg_40_reg_40), .clock(clock), .reset(reset), .in1(out_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_array_28984_0), .wenable(wrenable_reg_40));
  register_STD #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_41 (.out1(out_reg_41_reg_41), .clock(clock), .reset(reset), .in1(out_ge_expr_FU_16_16_16_62_i2_fu_merge_28863_29519), .wenable(wrenable_reg_41));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_11_i0_fu_merge_28863_29424), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_13_i0_fu_merge_28863_29437), .wenable(wrenable_reg_6));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_addr_expr_FU_9_i0_fu_merge_28863_29500), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_ge_expr_FU_16_16_16_62_i0_fu_merge_28863_29515), .wenable(wrenable_reg_8));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_8_0_8_75_i1_fu_merge_28863_29558), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy0_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy0_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram1_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram1_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288612_ (.out1(proxy_in1_28861), .in1(sig_out_bus_mergerproxy_in1_288612_));
  split_signal #(.BITSIZE_in1(14), .BITSIZE_out1(7), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288613_ (.out1(proxy_in2_28861), .in1(sig_out_bus_mergerproxy_in2_288613_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288614_ (.out1(proxy_in3_28861), .in1(sig_out_bus_mergerproxy_in3_288614_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_288615_ (.out1(proxy_sel_LOAD_28861), .in1(sig_out_bus_mergerproxy_sel_LOAD_288615_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_288616_ (.out1(proxy_sel_STORE_28861), .in1(sig_out_bus_mergerproxy_sel_STORE_288616_));
  // io-signal post fix
  assign OUT_CONDITION_merge_28863_28946 = out_read_cond_FU_15_i0_fu_merge_28863_28946;
  assign OUT_CONDITION_merge_28863_29036 = out_read_cond_FU_39_i0_fu_merge_28863_29036;
  assign OUT_CONDITION_merge_28863_29063 = out_read_cond_FU_42_i0_fu_merge_28863_29063;
  assign OUT_CONDITION_merge_28863_29105 = out_read_cond_FU_53_i0_fu_merge_28863_29105;
  assign OUT_CONDITION_merge_28863_29149 = out_read_cond_FU_59_i0_fu_merge_28863_29149;
  assign OUT_CONDITION_merge_28863_29152 = out_read_cond_FU_60_i0_fu_merge_28863_29152;
  assign OUT_CONDITION_merge_28863_29155 = out_read_cond_FU_61_i0_fu_merge_28863_29155;
  assign OUT_MULTIIF_merge_28863_29666 = out_multi_read_cond_FU_30_i0_fu_merge_28863_29666;

endmodule

// FSM based controller description for merge
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_merge(done_port, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_LOAD, fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE, fuselector_DPROXY_CTRLN_2_i0_LOAD, fuselector_DPROXY_CTRLN_2_i0_STORE, fuselector_DPROXY_CTRLN_2_i1_LOAD, fuselector_DPROXY_CTRLN_2_i1_STORE, selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0, selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_1, selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_1_0, selector_MUX_103_reg_17_0_0_0, selector_MUX_103_reg_17_0_0_1, selector_MUX_104_reg_18_0_0_0, selector_MUX_104_reg_18_0_0_1, selector_MUX_105_reg_19_0_0_0, selector_MUX_113_reg_26_0_0_0, selector_MUX_114_reg_27_0_0_0, selector_MUX_115_reg_28_0_0_0, selector_MUX_117_reg_3_0_0_0, selector_MUX_122_reg_34_0_0_0, selector_MUX_125_reg_37_0_0_0, selector_MUX_128_reg_4_0_0_0, selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_0, selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_1, selector_MUX_13_DPROXY_CTRLN_2_i0_1_1_0, selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_0, selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_1, selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_1_0, selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0, selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_1, selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_1_0, selector_MUX_97_reg_11_0_0_0, selector_MUX_98_reg_12_0_0_0, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_13, wrenable_reg_14, wrenable_reg_15, wrenable_reg_16, wrenable_reg_17, wrenable_reg_18, wrenable_reg_19, wrenable_reg_2, wrenable_reg_20, wrenable_reg_21, wrenable_reg_22, wrenable_reg_23, wrenable_reg_24, wrenable_reg_25, wrenable_reg_26, wrenable_reg_27, wrenable_reg_28, wrenable_reg_29, wrenable_reg_3, wrenable_reg_30, wrenable_reg_31, wrenable_reg_32, wrenable_reg_33, wrenable_reg_34, wrenable_reg_35, wrenable_reg_36, wrenable_reg_37, wrenable_reg_38, wrenable_reg_39, wrenable_reg_4, wrenable_reg_40, wrenable_reg_41, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_CONDITION_merge_28863_28946, OUT_CONDITION_merge_28863_29036, OUT_CONDITION_merge_28863_29063, OUT_CONDITION_merge_28863_29105, OUT_CONDITION_merge_28863_29149, OUT_CONDITION_merge_28863_29152, OUT_CONDITION_merge_28863_29155, OUT_MULTIIF_merge_28863_29666, clock, reset, start_port);
  // IN
  input OUT_CONDITION_merge_28863_28946;
  input OUT_CONDITION_merge_28863_29036;
  input OUT_CONDITION_merge_28863_29063;
  input OUT_CONDITION_merge_28863_29105;
  input OUT_CONDITION_merge_28863_29149;
  input OUT_CONDITION_merge_28863_29152;
  input OUT_CONDITION_merge_28863_29155;
  input [1:0] OUT_MULTIIF_merge_28863_29666;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_LOAD;
  output fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE;
  output fuselector_DPROXY_CTRLN_2_i0_LOAD;
  output fuselector_DPROXY_CTRLN_2_i0_STORE;
  output fuselector_DPROXY_CTRLN_2_i1_LOAD;
  output fuselector_DPROXY_CTRLN_2_i1_STORE;
  output selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0;
  output selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_1;
  output selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_1_0;
  output selector_MUX_103_reg_17_0_0_0;
  output selector_MUX_103_reg_17_0_0_1;
  output selector_MUX_104_reg_18_0_0_0;
  output selector_MUX_104_reg_18_0_0_1;
  output selector_MUX_105_reg_19_0_0_0;
  output selector_MUX_113_reg_26_0_0_0;
  output selector_MUX_114_reg_27_0_0_0;
  output selector_MUX_115_reg_28_0_0_0;
  output selector_MUX_117_reg_3_0_0_0;
  output selector_MUX_122_reg_34_0_0_0;
  output selector_MUX_125_reg_37_0_0_0;
  output selector_MUX_128_reg_4_0_0_0;
  output selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_0;
  output selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_1;
  output selector_MUX_13_DPROXY_CTRLN_2_i0_1_1_0;
  output selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_0;
  output selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_1;
  output selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_1_0;
  output selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0;
  output selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_1;
  output selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_1_0;
  output selector_MUX_97_reg_11_0_0_0;
  output selector_MUX_98_reg_12_0_0_0;
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
  parameter [19:0] S_0 = 20'b00000000000000000001,
    S_5 = 20'b00000000000000100000,
    S_17 = 20'b00100000000000000000,
    S_6 = 20'b00000000000001000000,
    S_7 = 20'b00000000000010000000,
    S_8 = 20'b00000000000100000000,
    S_1 = 20'b00000000000000000010,
    S_2 = 20'b00000000000000000100,
    S_4 = 20'b00000000000000010000,
    S_3 = 20'b00000000000000001000,
    S_18 = 20'b01000000000000000000,
    S_10 = 20'b00000000010000000000,
    S_11 = 20'b00000000100000000000,
    S_12 = 20'b00000001000000000000,
    S_9 = 20'b00000000001000000000,
    S_19 = 20'b10000000000000000000,
    S_13 = 20'b00000010000000000000,
    S_14 = 20'b00000100000000000000,
    S_15 = 20'b00001000000000000000,
    S_16 = 20'b00010000000000000000;
  reg [19:0] _present_state, _next_state;
  reg done_port;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_LOAD;
  reg fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE;
  reg fuselector_DPROXY_CTRLN_2_i0_LOAD;
  reg fuselector_DPROXY_CTRLN_2_i0_STORE;
  reg fuselector_DPROXY_CTRLN_2_i1_LOAD;
  reg fuselector_DPROXY_CTRLN_2_i1_STORE;
  reg selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0;
  reg selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_1;
  reg selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_1_0;
  reg selector_MUX_103_reg_17_0_0_0;
  reg selector_MUX_103_reg_17_0_0_1;
  reg selector_MUX_104_reg_18_0_0_0;
  reg selector_MUX_104_reg_18_0_0_1;
  reg selector_MUX_105_reg_19_0_0_0;
  reg selector_MUX_113_reg_26_0_0_0;
  reg selector_MUX_114_reg_27_0_0_0;
  reg selector_MUX_115_reg_28_0_0_0;
  reg selector_MUX_117_reg_3_0_0_0;
  reg selector_MUX_122_reg_34_0_0_0;
  reg selector_MUX_125_reg_37_0_0_0;
  reg selector_MUX_128_reg_4_0_0_0;
  reg selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_0;
  reg selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_1;
  reg selector_MUX_13_DPROXY_CTRLN_2_i0_1_1_0;
  reg selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_0;
  reg selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_1;
  reg selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_1_0;
  reg selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0;
  reg selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_1;
  reg selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_1_0;
  reg selector_MUX_97_reg_11_0_0_0;
  reg selector_MUX_98_reg_12_0_0_0;
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
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_LOAD = 1'b0;
    fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE = 1'b0;
    fuselector_DPROXY_CTRLN_2_i0_LOAD = 1'b0;
    fuselector_DPROXY_CTRLN_2_i0_STORE = 1'b0;
    fuselector_DPROXY_CTRLN_2_i1_LOAD = 1'b0;
    fuselector_DPROXY_CTRLN_2_i1_STORE = 1'b0;
    selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0 = 1'b0;
    selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_1 = 1'b0;
    selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_1_0 = 1'b0;
    selector_MUX_103_reg_17_0_0_0 = 1'b0;
    selector_MUX_103_reg_17_0_0_1 = 1'b0;
    selector_MUX_104_reg_18_0_0_0 = 1'b0;
    selector_MUX_104_reg_18_0_0_1 = 1'b0;
    selector_MUX_105_reg_19_0_0_0 = 1'b0;
    selector_MUX_113_reg_26_0_0_0 = 1'b0;
    selector_MUX_114_reg_27_0_0_0 = 1'b0;
    selector_MUX_115_reg_28_0_0_0 = 1'b0;
    selector_MUX_117_reg_3_0_0_0 = 1'b0;
    selector_MUX_122_reg_34_0_0_0 = 1'b0;
    selector_MUX_125_reg_37_0_0_0 = 1'b0;
    selector_MUX_128_reg_4_0_0_0 = 1'b0;
    selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_0 = 1'b0;
    selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_1 = 1'b0;
    selector_MUX_13_DPROXY_CTRLN_2_i0_1_1_0 = 1'b0;
    selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_0 = 1'b0;
    selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_1 = 1'b0;
    selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_1_0 = 1'b0;
    selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0 = 1'b0;
    selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_1 = 1'b0;
    selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_1_0 = 1'b0;
    selector_MUX_97_reg_11_0_0_0 = 1'b0;
    selector_MUX_98_reg_12_0_0_0 = 1'b0;
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
          selector_MUX_105_reg_19_0_0_0 = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_17 = 1'b1;
          wrenable_reg_18 = 1'b1;
          wrenable_reg_19 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_6 = 1'b1;
          wrenable_reg_7 = 1'b1;
          wrenable_reg_8 = 1'b1;
          wrenable_reg_9 = 1'b1;
          _next_state = S_5;
        end
        else
        begin
          selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0 = 1'bX;
          selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_1 = 1'bX;
          selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_1_0 = 1'bX;
          selector_MUX_103_reg_17_0_0_0 = 1'bX;
          selector_MUX_103_reg_17_0_0_1 = 1'bX;
          selector_MUX_104_reg_18_0_0_0 = 1'bX;
          selector_MUX_104_reg_18_0_0_1 = 1'bX;
          selector_MUX_105_reg_19_0_0_0 = 1'bX;
          selector_MUX_113_reg_26_0_0_0 = 1'bX;
          selector_MUX_114_reg_27_0_0_0 = 1'bX;
          selector_MUX_115_reg_28_0_0_0 = 1'bX;
          selector_MUX_117_reg_3_0_0_0 = 1'bX;
          selector_MUX_122_reg_34_0_0_0 = 1'bX;
          selector_MUX_125_reg_37_0_0_0 = 1'bX;
          selector_MUX_128_reg_4_0_0_0 = 1'bX;
          selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_0 = 1'bX;
          selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_1 = 1'bX;
          selector_MUX_13_DPROXY_CTRLN_2_i0_1_1_0 = 1'bX;
          selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_0 = 1'bX;
          selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_1 = 1'bX;
          selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_1_0 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_1 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_1_0 = 1'bX;
          selector_MUX_97_reg_11_0_0_0 = 1'bX;
          selector_MUX_98_reg_12_0_0_0 = 1'bX;
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
      S_5 :
        begin
          selector_MUX_103_reg_17_0_0_1 = 1'b1;
          selector_MUX_104_reg_18_0_0_1 = 1'b1;
          selector_MUX_113_reg_26_0_0_0 = 1'b1;
          wrenable_reg_10 = 1'b1;
          wrenable_reg_17 = 1'b1;
          wrenable_reg_18 = 1'b1;
          wrenable_reg_19 = 1'b1;
          wrenable_reg_20 = 1'b1;
          wrenable_reg_21 = 1'b1;
          wrenable_reg_22 = 1'b1;
          wrenable_reg_25 = 1'b1;
          wrenable_reg_26 = 1'b1;
          wrenable_reg_27 = 1'b1;
          if (OUT_MULTIIF_merge_28863_29666[0] == 1'b1)
            begin
              _next_state = S_18;
              selector_MUX_103_reg_17_0_0_1 = 1'b0;
              selector_MUX_104_reg_18_0_0_1 = 1'b0;
              wrenable_reg_10 = 1'b0;
              wrenable_reg_17 = 1'b0;
              wrenable_reg_18 = 1'b0;
              wrenable_reg_19 = 1'b0;
              wrenable_reg_20 = 1'b0;
              wrenable_reg_21 = 1'b0;
              wrenable_reg_22 = 1'b0;
            end
          else if (OUT_MULTIIF_merge_28863_29666[1] == 1'b1)
            begin
              _next_state = S_1;
              selector_MUX_113_reg_26_0_0_0 = 1'b0;
              wrenable_reg_10 = 1'b0;
              wrenable_reg_25 = 1'b0;
              wrenable_reg_26 = 1'b0;
              wrenable_reg_27 = 1'b0;
            end
          else
            begin
              _next_state = S_17;
              selector_MUX_103_reg_17_0_0_1 = 1'b0;
              selector_MUX_104_reg_18_0_0_1 = 1'b0;
              selector_MUX_113_reg_26_0_0_0 = 1'b0;
              wrenable_reg_17 = 1'b0;
              wrenable_reg_18 = 1'b0;
              wrenable_reg_19 = 1'b0;
              wrenable_reg_20 = 1'b0;
              wrenable_reg_21 = 1'b0;
              wrenable_reg_22 = 1'b0;
              wrenable_reg_25 = 1'b0;
            end
        end
      S_17 :
        begin
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE = 1'b1;
          selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_1 = 1'b1;
          selector_MUX_97_reg_11_0_0_0 = 1'b1;
          selector_MUX_98_reg_12_0_0_0 = 1'b1;
          wrenable_reg_11 = 1'b1;
          wrenable_reg_12 = 1'b1;
          if (OUT_CONDITION_merge_28863_29152 == 1'b1)
            begin
              _next_state = S_6;
            end
          else
            begin
              _next_state = S_9;
              selector_MUX_97_reg_11_0_0_0 = 1'b0;
              selector_MUX_98_reg_12_0_0_0 = 1'b0;
              wrenable_reg_11 = 1'b0;
              wrenable_reg_12 = 1'b0;
            end
        end
      S_6 :
        begin
          wrenable_reg_12 = 1'b1;
          wrenable_reg_13 = 1'b1;
          wrenable_reg_14 = 1'b1;
          wrenable_reg_15 = 1'b1;
          _next_state = S_7;
        end
      S_7 :
        begin
          fuselector_DPROXY_CTRLN_2_i0_LOAD = 1'b1;
          wrenable_reg_16 = 1'b1;
          wrenable_reg_23 = 1'b1;
          _next_state = S_8;
        end
      S_8 :
        begin
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE = 1'b1;
          wrenable_reg_11 = 1'b1;
          if (OUT_CONDITION_merge_28863_29036 == 1'b1)
            begin
              _next_state = S_6;
            end
          else
            begin
              _next_state = S_9;
              wrenable_reg_11 = 1'b0;
            end
        end
      S_1 :
        begin
          fuselector_DPROXY_CTRLN_2_i0_LOAD = 1'b1;
          fuselector_DPROXY_CTRLN_2_i1_LOAD = 1'b1;
          selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_1 = 1'b1;
          wrenable_reg_23 = 1'b1;
          wrenable_reg_24 = 1'b1;
          _next_state = S_2;
        end
      S_2 :
        begin
          if (OUT_CONDITION_merge_28863_28946 == 1'b1)
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
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE = 1'b1;
          selector_MUX_104_reg_18_0_0_0 = 1'b1;
          selector_MUX_117_reg_3_0_0_0 = 1'b1;
          selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_1_0 = 1'b1;
          selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_1 = 1'b1;
          wrenable_reg_18 = 1'b1;
          wrenable_reg_3 = 1'b1;
          _next_state = S_5;
        end
      S_3 :
        begin
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE = 1'b1;
          selector_MUX_103_reg_17_0_0_0 = 1'b1;
          selector_MUX_128_reg_4_0_0_0 = 1'b1;
          selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_0 = 1'b1;
          selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_1_0 = 1'b1;
          selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_1 = 1'b1;
          wrenable_reg_17 = 1'b1;
          wrenable_reg_4 = 1'b1;
          _next_state = S_5;
        end
      S_18 :
        begin
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE = 1'b1;
          selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_1_0 = 1'b1;
          selector_MUX_115_reg_28_0_0_0 = 1'b1;
          wrenable_reg_28 = 1'b1;
          if (OUT_CONDITION_merge_28863_29155 == 1'b1)
            begin
              _next_state = S_10;
            end
          else
            begin
              _next_state = S_9;
              selector_MUX_115_reg_28_0_0_0 = 1'b0;
              wrenable_reg_28 = 1'b0;
            end
        end
      S_10 :
        begin
          wrenable_reg_29 = 1'b1;
          wrenable_reg_30 = 1'b1;
          wrenable_reg_31 = 1'b1;
          wrenable_reg_32 = 1'b1;
          _next_state = S_11;
        end
      S_11 :
        begin
          fuselector_DPROXY_CTRLN_2_i0_LOAD = 1'b1;
          selector_MUX_13_DPROXY_CTRLN_2_i0_1_1_0 = 1'b1;
          wrenable_reg_23 = 1'b1;
          wrenable_reg_33 = 1'b1;
          _next_state = S_12;
        end
      S_12 :
        begin
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE = 1'b1;
          selector_MUX_114_reg_27_0_0_0 = 1'b1;
          selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_1 = 1'b1;
          selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_1_0 = 1'b1;
          wrenable_reg_27 = 1'b1;
          wrenable_reg_28 = 1'b1;
          if (OUT_CONDITION_merge_28863_29105 == 1'b1)
            begin
              _next_state = S_10;
            end
          else
            begin
              _next_state = S_9;
              selector_MUX_114_reg_27_0_0_0 = 1'b0;
              wrenable_reg_27 = 1'b0;
              wrenable_reg_28 = 1'b0;
            end
        end
      S_9 :
        begin
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE = 1'b1;
          selector_MUX_122_reg_34_0_0_0 = 1'b1;
          selector_MUX_125_reg_37_0_0_0 = 1'b1;
          wrenable_reg_34 = 1'b1;
          wrenable_reg_37 = 1'b1;
          if (OUT_CONDITION_merge_28863_29063 == 1'b1)
            begin
              _next_state = S_13;
            end
          else
            begin
              _next_state = S_19;
              done_port = 1'b1;
              selector_MUX_122_reg_34_0_0_0 = 1'b0;
              selector_MUX_125_reg_37_0_0_0 = 1'b0;
              wrenable_reg_34 = 1'b0;
              wrenable_reg_37 = 1'b0;
            end
        end
      S_19 :
        begin
          _next_state = S_0;
        end
      S_13 :
        begin
          wrenable_reg_35 = 1'b1;
          wrenable_reg_36 = 1'b1;
          wrenable_reg_37 = 1'b1;
          wrenable_reg_38 = 1'b1;
          wrenable_reg_39 = 1'b1;
          _next_state = S_14;
        end
      S_14 :
        begin
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_LOAD = 1'b1;
          selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0 = 1'b1;
          selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_1_0 = 1'b1;
          wrenable_reg_40 = 1'b1;
          wrenable_reg_41 = 1'b1;
          _next_state = S_15;
        end
      S_15 :
        begin
          fuselector_DPROXY_CTRLN_2_i0_STORE = 1'b1;
          selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_0 = 1'b1;
          selector_MUX_13_DPROXY_CTRLN_2_i0_1_1_0 = 1'b1;
          wrenable_reg_34 = 1'b1;
          if (OUT_CONDITION_merge_28863_29149 == 1'b1)
            begin
              _next_state = S_13;
            end
          else
            begin
              _next_state = S_16;
              done_port = 1'b1;
              wrenable_reg_34 = 1'b0;
            end
        end
      S_16 :
        begin
          fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE = 1'b1;
          selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0 = 1'b1;
          selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_1_0 = 1'b1;
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0 = 1'bX;
          selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_1 = 1'bX;
          selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_1_0 = 1'bX;
          selector_MUX_103_reg_17_0_0_0 = 1'bX;
          selector_MUX_103_reg_17_0_0_1 = 1'bX;
          selector_MUX_104_reg_18_0_0_0 = 1'bX;
          selector_MUX_104_reg_18_0_0_1 = 1'bX;
          selector_MUX_105_reg_19_0_0_0 = 1'bX;
          selector_MUX_113_reg_26_0_0_0 = 1'bX;
          selector_MUX_114_reg_27_0_0_0 = 1'bX;
          selector_MUX_115_reg_28_0_0_0 = 1'bX;
          selector_MUX_117_reg_3_0_0_0 = 1'bX;
          selector_MUX_122_reg_34_0_0_0 = 1'bX;
          selector_MUX_125_reg_37_0_0_0 = 1'bX;
          selector_MUX_128_reg_4_0_0_0 = 1'bX;
          selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_0 = 1'bX;
          selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_1 = 1'bX;
          selector_MUX_13_DPROXY_CTRLN_2_i0_1_1_0 = 1'bX;
          selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_0 = 1'bX;
          selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_1 = 1'bX;
          selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_1_0 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_1 = 1'bX;
          selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_1_0 = 1'bX;
          selector_MUX_97_reg_11_0_0_0 = 1'bX;
          selector_MUX_98_reg_12_0_0_0 = 1'bX;
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

// Top component for merge
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module merge(clock, reset, start_port, done_port, i1, f1, f2, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, Sin_Rdata_ram, Sin_DataRdy, proxy_out1_28861, Sout_Rdata_ram, Sout_DataRdy, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861);
  parameter MEM_var_28859_28863=64, MEM_var_28861_28867=32, MEM_var_28984_28863=32;
  // IN
  input clock;
  input reset;
  input start_port;
  input [7:0] i1;
  input signed [7:0] f1;
  input signed [7:0] f2;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [13:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [15:0] proxy_out1_28861;
  // OUT
  output done_port;
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [15:0] proxy_in1_28861;
  output [13:0] proxy_in2_28861;
  output [7:0] proxy_in3_28861;
  output [1:0] proxy_sel_LOAD_28861;
  output [1:0] proxy_sel_STORE_28861;
  // Component and signal declarations
  wire OUT_CONDITION_merge_28863_28946;
  wire OUT_CONDITION_merge_28863_29036;
  wire OUT_CONDITION_merge_28863_29063;
  wire OUT_CONDITION_merge_28863_29105;
  wire OUT_CONDITION_merge_28863_29149;
  wire OUT_CONDITION_merge_28863_29152;
  wire OUT_CONDITION_merge_28863_29155;
  wire [1:0] OUT_MULTIIF_merge_28863_29666;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_LOAD;
  wire fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE;
  wire fuselector_DPROXY_CTRLN_2_i0_LOAD;
  wire fuselector_DPROXY_CTRLN_2_i0_STORE;
  wire fuselector_DPROXY_CTRLN_2_i1_LOAD;
  wire fuselector_DPROXY_CTRLN_2_i1_STORE;
  wire selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0;
  wire selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_1;
  wire selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_1_0;
  wire selector_MUX_103_reg_17_0_0_0;
  wire selector_MUX_103_reg_17_0_0_1;
  wire selector_MUX_104_reg_18_0_0_0;
  wire selector_MUX_104_reg_18_0_0_1;
  wire selector_MUX_105_reg_19_0_0_0;
  wire selector_MUX_113_reg_26_0_0_0;
  wire selector_MUX_114_reg_27_0_0_0;
  wire selector_MUX_115_reg_28_0_0_0;
  wire selector_MUX_117_reg_3_0_0_0;
  wire selector_MUX_122_reg_34_0_0_0;
  wire selector_MUX_125_reg_37_0_0_0;
  wire selector_MUX_128_reg_4_0_0_0;
  wire selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_0;
  wire selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_1;
  wire selector_MUX_13_DPROXY_CTRLN_2_i0_1_1_0;
  wire selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_0;
  wire selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_1;
  wire selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_1_0;
  wire selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0;
  wire selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_1;
  wire selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_1_0;
  wire selector_MUX_97_reg_11_0_0_0;
  wire selector_MUX_98_reg_12_0_0_0;
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
  
  controller_merge Controller_i (.done_port(done_delayed_REG_signal_in), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_LOAD), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE), .fuselector_DPROXY_CTRLN_2_i0_LOAD(fuselector_DPROXY_CTRLN_2_i0_LOAD), .fuselector_DPROXY_CTRLN_2_i0_STORE(fuselector_DPROXY_CTRLN_2_i0_STORE), .fuselector_DPROXY_CTRLN_2_i1_LOAD(fuselector_DPROXY_CTRLN_2_i1_LOAD), .fuselector_DPROXY_CTRLN_2_i1_STORE(fuselector_DPROXY_CTRLN_2_i1_STORE), .selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0(selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0), .selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_1(selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_1), .selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_1_0(selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_1_0), .selector_MUX_103_reg_17_0_0_0(selector_MUX_103_reg_17_0_0_0), .selector_MUX_103_reg_17_0_0_1(selector_MUX_103_reg_17_0_0_1), .selector_MUX_104_reg_18_0_0_0(selector_MUX_104_reg_18_0_0_0), .selector_MUX_104_reg_18_0_0_1(selector_MUX_104_reg_18_0_0_1), .selector_MUX_105_reg_19_0_0_0(selector_MUX_105_reg_19_0_0_0), .selector_MUX_113_reg_26_0_0_0(selector_MUX_113_reg_26_0_0_0), .selector_MUX_114_reg_27_0_0_0(selector_MUX_114_reg_27_0_0_0), .selector_MUX_115_reg_28_0_0_0(selector_MUX_115_reg_28_0_0_0), .selector_MUX_117_reg_3_0_0_0(selector_MUX_117_reg_3_0_0_0), .selector_MUX_122_reg_34_0_0_0(selector_MUX_122_reg_34_0_0_0), .selector_MUX_125_reg_37_0_0_0(selector_MUX_125_reg_37_0_0_0), .selector_MUX_128_reg_4_0_0_0(selector_MUX_128_reg_4_0_0_0), .selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_0(selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_0), .selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_1(selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_1), .selector_MUX_13_DPROXY_CTRLN_2_i0_1_1_0(selector_MUX_13_DPROXY_CTRLN_2_i0_1_1_0), .selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_0(selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_0), .selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_1(selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_1), .selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_1_0(selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_1_0), .selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0(selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0), .selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_1(selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_1), .selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_1_0(selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_1_0), .selector_MUX_97_reg_11_0_0_0(selector_MUX_97_reg_11_0_0_0), .selector_MUX_98_reg_12_0_0_0(selector_MUX_98_reg_12_0_0_0), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_29(wrenable_reg_29), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_30(wrenable_reg_30), .wrenable_reg_31(wrenable_reg_31), .wrenable_reg_32(wrenable_reg_32), .wrenable_reg_33(wrenable_reg_33), .wrenable_reg_34(wrenable_reg_34), .wrenable_reg_35(wrenable_reg_35), .wrenable_reg_36(wrenable_reg_36), .wrenable_reg_37(wrenable_reg_37), .wrenable_reg_38(wrenable_reg_38), .wrenable_reg_39(wrenable_reg_39), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_40(wrenable_reg_40), .wrenable_reg_41(wrenable_reg_41), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_CONDITION_merge_28863_28946(OUT_CONDITION_merge_28863_28946), .OUT_CONDITION_merge_28863_29036(OUT_CONDITION_merge_28863_29036), .OUT_CONDITION_merge_28863_29063(OUT_CONDITION_merge_28863_29063), .OUT_CONDITION_merge_28863_29105(OUT_CONDITION_merge_28863_29105), .OUT_CONDITION_merge_28863_29149(OUT_CONDITION_merge_28863_29149), .OUT_CONDITION_merge_28863_29152(OUT_CONDITION_merge_28863_29152), .OUT_CONDITION_merge_28863_29155(OUT_CONDITION_merge_28863_29155), .OUT_MULTIIF_merge_28863_29666(OUT_MULTIIF_merge_28863_29666), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_merge #(.MEM_var_28859_28863(MEM_var_28859_28863), .MEM_var_28861_28867(MEM_var_28861_28867), .MEM_var_28984_28863(MEM_var_28984_28863)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .proxy_in1_28861(proxy_in1_28861), .proxy_in2_28861(proxy_in2_28861), .proxy_in3_28861(proxy_in3_28861), .proxy_sel_LOAD_28861(proxy_sel_LOAD_28861), .proxy_sel_STORE_28861(proxy_sel_STORE_28861), .OUT_CONDITION_merge_28863_28946(OUT_CONDITION_merge_28863_28946), .OUT_CONDITION_merge_28863_29036(OUT_CONDITION_merge_28863_29036), .OUT_CONDITION_merge_28863_29063(OUT_CONDITION_merge_28863_29063), .OUT_CONDITION_merge_28863_29105(OUT_CONDITION_merge_28863_29105), .OUT_CONDITION_merge_28863_29149(OUT_CONDITION_merge_28863_29149), .OUT_CONDITION_merge_28863_29152(OUT_CONDITION_merge_28863_29152), .OUT_CONDITION_merge_28863_29155(OUT_CONDITION_merge_28863_29155), .OUT_MULTIIF_merge_28863_29666(OUT_MULTIIF_merge_28863_29666), .clock(clock), .reset(reset), .in_port_i1(i1), .in_port_f1(f1), .in_port_f2(f2), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28861(proxy_out1_28861), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_LOAD), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_LOAD(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_LOAD), .fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE(fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE), .fuselector_DPROXY_CTRLN_2_i0_LOAD(fuselector_DPROXY_CTRLN_2_i0_LOAD), .fuselector_DPROXY_CTRLN_2_i0_STORE(fuselector_DPROXY_CTRLN_2_i0_STORE), .fuselector_DPROXY_CTRLN_2_i1_LOAD(fuselector_DPROXY_CTRLN_2_i1_LOAD), .fuselector_DPROXY_CTRLN_2_i1_STORE(fuselector_DPROXY_CTRLN_2_i1_STORE), .selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0(selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_0), .selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_1(selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_0_1), .selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_1_0(selector_MUX_0_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_0_1_0), .selector_MUX_103_reg_17_0_0_0(selector_MUX_103_reg_17_0_0_0), .selector_MUX_103_reg_17_0_0_1(selector_MUX_103_reg_17_0_0_1), .selector_MUX_104_reg_18_0_0_0(selector_MUX_104_reg_18_0_0_0), .selector_MUX_104_reg_18_0_0_1(selector_MUX_104_reg_18_0_0_1), .selector_MUX_105_reg_19_0_0_0(selector_MUX_105_reg_19_0_0_0), .selector_MUX_113_reg_26_0_0_0(selector_MUX_113_reg_26_0_0_0), .selector_MUX_114_reg_27_0_0_0(selector_MUX_114_reg_27_0_0_0), .selector_MUX_115_reg_28_0_0_0(selector_MUX_115_reg_28_0_0_0), .selector_MUX_117_reg_3_0_0_0(selector_MUX_117_reg_3_0_0_0), .selector_MUX_122_reg_34_0_0_0(selector_MUX_122_reg_34_0_0_0), .selector_MUX_125_reg_37_0_0_0(selector_MUX_125_reg_37_0_0_0), .selector_MUX_128_reg_4_0_0_0(selector_MUX_128_reg_4_0_0_0), .selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_0(selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_0), .selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_1(selector_MUX_13_DPROXY_CTRLN_2_i0_1_0_1), .selector_MUX_13_DPROXY_CTRLN_2_i0_1_1_0(selector_MUX_13_DPROXY_CTRLN_2_i0_1_1_0), .selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_0(selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_0), .selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_1(selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_0_1), .selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_1_0(selector_MUX_4_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_0_1_0), .selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0(selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_0), .selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_1(selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_0_1), .selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_1_0(selector_MUX_5_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_1_1_0), .selector_MUX_97_reg_11_0_0_0(selector_MUX_97_reg_11_0_0_0), .selector_MUX_98_reg_12_0_0_0(selector_MUX_98_reg_12_0_0_0), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_13(wrenable_reg_13), .wrenable_reg_14(wrenable_reg_14), .wrenable_reg_15(wrenable_reg_15), .wrenable_reg_16(wrenable_reg_16), .wrenable_reg_17(wrenable_reg_17), .wrenable_reg_18(wrenable_reg_18), .wrenable_reg_19(wrenable_reg_19), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_20(wrenable_reg_20), .wrenable_reg_21(wrenable_reg_21), .wrenable_reg_22(wrenable_reg_22), .wrenable_reg_23(wrenable_reg_23), .wrenable_reg_24(wrenable_reg_24), .wrenable_reg_25(wrenable_reg_25), .wrenable_reg_26(wrenable_reg_26), .wrenable_reg_27(wrenable_reg_27), .wrenable_reg_28(wrenable_reg_28), .wrenable_reg_29(wrenable_reg_29), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_30(wrenable_reg_30), .wrenable_reg_31(wrenable_reg_31), .wrenable_reg_32(wrenable_reg_32), .wrenable_reg_33(wrenable_reg_33), .wrenable_reg_34(wrenable_reg_34), .wrenable_reg_35(wrenable_reg_35), .wrenable_reg_36(wrenable_reg_36), .wrenable_reg_37(wrenable_reg_37), .wrenable_reg_38(wrenable_reg_38), .wrenable_reg_39(wrenable_reg_39), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_40(wrenable_reg_40), .wrenable_reg_41(wrenable_reg_41), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Datapath RTL description for mergesort
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_mergesort(clock, reset, in_port_size, in_port_a, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, Sin_Rdata_ram, Sin_DataRdy, proxy_out1_28861, Sout_Rdata_ram, Sout_DataRdy, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861, selector_IN_UNBOUNDED_mergesort_28866_29211, selector_MUX_33_reg_0_0_0_0, selector_MUX_44_reg_8_0_0_0, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_MULTIIF_mergesort_28866_29630, OUT_UNBOUNDED_mergesort_28866_29211);
  parameter MEM_var_28859_28863=64, MEM_var_28861_28867=32, MEM_var_28984_28863=32;
  // IN
  input clock;
  input reset;
  input [7:0] in_port_size;
  input [31:0] in_port_a;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [13:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [15:0] proxy_out1_28861;
  input selector_IN_UNBOUNDED_mergesort_28866_29211;
  input selector_MUX_33_reg_0_0_0_0;
  input selector_MUX_44_reg_8_0_0_0;
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
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [15:0] proxy_in1_28861;
  output [13:0] proxy_in2_28861;
  output [7:0] proxy_in3_28861;
  output [1:0] proxy_sel_LOAD_28861;
  output [1:0] proxy_sel_STORE_28861;
  output [1:0] OUT_MULTIIF_mergesort_28866_29630;
  output OUT_UNBOUNDED_mergesort_28866_29211;
  // Component and signal declarations
  wire signed [8:0] out_IIdata_converter_FU_10_i0_fu_mergesort_28866_29209;
  wire signed [7:0] out_IIdata_converter_FU_13_i0_fu_mergesort_28866_29541;
  wire signed [7:0] out_IIdata_converter_FU_14_i0_fu_mergesort_28866_29544;
  wire signed [7:0] out_IIdata_converter_FU_15_i0_fu_mergesort_28866_29212;
  wire signed [7:0] out_IIdata_converter_FU_20_i0_fu_mergesort_28866_29277;
  wire signed [8:0] out_IIdata_converter_FU_8_i0_fu_mergesort_28866_29202;
  wire [7:0] out_IUdata_converter_FU_12_i0_fu_mergesort_28866_29538;
  wire [7:0] out_IUdata_converter_FU_18_i0_fu_mergesort_28866_29203;
  wire [7:0] out_IUdata_converter_FU_19_i0_fu_mergesort_28866_29205;
  wire [7:0] out_IUdata_converter_FU_6_i0_fu_mergesort_28866_29198;
  wire [7:0] out_MUX_33_reg_0_0_0_0;
  wire [7:0] out_MUX_44_reg_8_0_0_0;
  wire signed [8:0] out_UIdata_converter_FU_11_i0_fu_mergesort_28866_29210;
  wire signed [7:0] out_UIdata_converter_FU_7_i0_fu_mergesort_28866_29200;
  wire signed [7:0] out_UIdata_converter_FU_9_i0_fu_mergesort_28866_29208;
  wire out_const_0;
  wire [1:0] out_const_1;
  wire out_const_2;
  wire [6:0] out_const_3;
  wire [7:0] out_const_4;
  wire [7:0] out_conv_out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0_I_2_8;
  wire [7:0] out_conv_out_i_assign_conn_obj_1_ASSIGN_SIGNED_FU_i_assign_1_I_1_8;
  wire signed [1:0] out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0;
  wire signed [0:0] out_i_assign_conn_obj_1_ASSIGN_SIGNED_FU_i_assign_1;
  wire out_le_expr_FU_8_0_8_21_i0_fu_mergesort_28866_29529;
  wire signed [7:0] out_lshift_expr_FU_8_0_8_22_i0_fu_mergesort_28866_29229;
  wire signed [7:0] out_lshift_expr_FU_8_0_8_22_i1_fu_mergesort_28866_29585;
  wire out_lt_expr_FU_8_0_8_23_i0_fu_mergesort_28866_29527;
  wire signed [7:0] out_min_expr_FU_8_0_8_24_i0_fu_mergesort_28866_29201;
  wire [1:0] out_multi_read_cond_FU_16_i0_fu_mergesort_28866_29630;
  wire signed [6:0] out_plus_expr_FU_8_8_8_25_i0_fu_mergesort_28866_29582;
  wire [7:0] out_reg_0_reg_0;
  wire out_reg_10_reg_10;
  wire [7:0] out_reg_11_reg_11;
  wire [7:0] out_reg_12_reg_12;
  wire [7:0] out_reg_1_reg_1;
  wire out_reg_2_reg_2;
  wire [6:0] out_reg_3_reg_3;
  wire [6:0] out_reg_4_reg_4;
  wire [7:0] out_reg_5_reg_5;
  wire out_reg_6_reg_6;
  wire [7:0] out_reg_7_reg_7;
  wire [7:0] out_reg_8_reg_8;
  wire [7:0] out_reg_9_reg_9;
  wire signed [6:0] out_rshift_expr_FU_8_0_8_26_i0_fu_mergesort_28866_29575;
  wire signed [6:0] out_rshift_expr_FU_8_0_8_26_i1_fu_mergesort_28866_29580;
  wire out_truth_and_expr_FU_1_1_1_27_i0_fu_mergesort_28866_29636;
  wire out_truth_not_expr_FU_1_1_28_i0_fu_mergesort_28866_29633;
  wire [7:0] out_ui_bit_ior_concat_expr_FU_29_i0_fu_mergesort_28866_29199;
  wire [7:0] out_ui_lshift_expr_FU_8_0_8_30_i0_fu_mergesort_28866_29596;
  wire [7:0] out_ui_lshift_expr_FU_8_0_8_30_i1_fu_mergesort_28866_29608;
  wire [6:0] out_ui_minus_expr_FU_8_8_8_31_i0_fu_mergesort_28866_29605;
  wire [6:0] out_ui_plus_expr_FU_8_0_8_32_i0_fu_mergesort_28866_29593;
  wire [6:0] out_ui_rshift_expr_FU_8_0_8_33_i0_fu_mergesort_28866_29589;
  wire [6:0] out_ui_rshift_expr_FU_8_0_8_33_i1_fu_mergesort_28866_29603;
  wire [7:0] out_ui_ternary_plus_expr_FU_8_0_8_8_34_i0_fu_mergesort_28866_29207;
  wire s_done_fu_mergesort_28866_29211;
  wire [1:0] sig_in_bus_mergerSout_DataRdy0_0;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram1_0;
  wire [15:0] sig_in_bus_mergerproxy_in1_288612_0;
  wire [13:0] sig_in_bus_mergerproxy_in2_288613_0;
  wire [7:0] sig_in_bus_mergerproxy_in3_288614_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD_288615_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE_288616_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy0_0;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram1_0;
  wire [15:0] sig_in_vector_bus_mergerproxy_in1_288612_0;
  wire [13:0] sig_in_vector_bus_mergerproxy_in2_288613_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in3_288614_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD_288615_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE_288616_0;
  wire [1:0] sig_out_bus_mergerSout_DataRdy0_;
  wire [15:0] sig_out_bus_mergerSout_Rdata_ram1_;
  wire [15:0] sig_out_bus_mergerproxy_in1_288612_;
  wire [13:0] sig_out_bus_mergerproxy_in2_288613_;
  wire [7:0] sig_out_bus_mergerproxy_in3_288614_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD_288615_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE_288616_;
  
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(2), .BITSIZE_out1(2)) ASSIGN_SIGNED_FU_i_assign_0 (.out1(out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0), .in1(out_const_1));
  ASSIGN_SIGNED_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) ASSIGN_SIGNED_FU_i_assign_1 (.out1(out_i_assign_conn_obj_1_ASSIGN_SIGNED_FU_i_assign_1), .in1(out_const_0));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_33_reg_0_0_0_0 (.out1(out_MUX_33_reg_0_0_0_0), .sel(selector_MUX_33_reg_0_0_0_0), .in1(out_conv_out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0_I_2_8), .in2(out_lshift_expr_FU_8_0_8_22_i0_fu_mergesort_28866_29229));
  MUX_GATE #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_out1(8)) MUX_44_reg_8_0_0_0 (.out1(out_MUX_44_reg_8_0_0_0), .sel(selector_MUX_44_reg_8_0_0_0), .in1(out_conv_out_i_assign_conn_obj_1_ASSIGN_SIGNED_FU_i_assign_1_I_1_8), .in2(out_lshift_expr_FU_8_0_8_22_i1_fu_mergesort_28866_29585));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerSout_DataRdy0_ (.out1(sig_out_bus_mergerSout_DataRdy0_), .in1({sig_in_bus_mergerSout_DataRdy0_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerSout_Rdata_ram1_ (.out1(sig_out_bus_mergerSout_Rdata_ram1_), .in1({sig_in_bus_mergerSout_Rdata_ram1_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in1_288612_ (.out1(sig_out_bus_mergerproxy_in1_288612_), .in1({sig_in_bus_mergerproxy_in1_288612_0}));
  bus_merger #(.BITSIZE_in1(14), .PORTSIZE_in1(1), .BITSIZE_out1(14)) bus_mergerproxy_in2_288613_ (.out1(sig_out_bus_mergerproxy_in2_288613_), .in1({sig_in_bus_mergerproxy_in2_288613_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in3_288614_ (.out1(sig_out_bus_mergerproxy_in3_288614_), .in1({sig_in_bus_mergerproxy_in3_288614_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD_288615_ (.out1(sig_out_bus_mergerproxy_sel_LOAD_288615_), .in1({sig_in_bus_mergerproxy_sel_LOAD_288615_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE_288616_ (.out1(sig_out_bus_mergerproxy_sel_STORE_288616_), .in1({sig_in_bus_mergerproxy_sel_STORE_288616_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(2), .value(2'b01)) const_1 (.out1(out_const_1));
  constant_value #(.BITSIZE_out1(1), .value(1'b1)) const_2 (.out1(out_const_2));
  constant_value #(.BITSIZE_out1(7), .value(7'b1111111)) const_3 (.out1(out_const_3));
  constant_value #(.BITSIZE_out1(8), .value(8'b11111111)) const_4 (.out1(out_const_4));
  IUdata_converter_FU #(.BITSIZE_in1(2), .BITSIZE_out1(8)) conv_out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0_I_2_8 (.out1(out_conv_out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0_I_2_8), .in1(out_i_assign_conn_obj_0_ASSIGN_SIGNED_FU_i_assign_0));
  IUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_i_assign_conn_obj_1_ASSIGN_SIGNED_FU_i_assign_1_I_1_8 (.out1(out_conv_out_i_assign_conn_obj_1_ASSIGN_SIGNED_FU_i_assign_1_I_1_8), .in1(out_i_assign_conn_obj_1_ASSIGN_SIGNED_FU_i_assign_1));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_mergesort_28866_29198 (.out1(out_IUdata_converter_FU_6_i0_fu_mergesort_28866_29198), .in1(out_lshift_expr_FU_8_0_8_22_i1_fu_mergesort_28866_29585));
  ui_bit_ior_concat_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_in3(1), .BITSIZE_out1(8), .OFFSET_PARAMETER(1)) fu_mergesort_28866_29199 (.out1(out_ui_bit_ior_concat_expr_FU_29_i0_fu_mergesort_28866_29199), .in1(out_ui_lshift_expr_FU_8_0_8_30_i0_fu_mergesort_28866_29596), .in2(out_const_2), .in3(out_const_2));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_mergesort_28866_29200 (.out1(out_UIdata_converter_FU_7_i0_fu_mergesort_28866_29200), .in1(out_ui_bit_ior_concat_expr_FU_29_i0_fu_mergesort_28866_29199));
  min_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8)) fu_mergesort_28866_29201 (.out1(out_min_expr_FU_8_0_8_24_i0_fu_mergesort_28866_29201), .in1(out_reg_5_reg_5), .in2(out_const_1));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_mergesort_28866_29202 (.out1(out_IIdata_converter_FU_8_i0_fu_mergesort_28866_29202), .in1(out_min_expr_FU_8_0_8_24_i0_fu_mergesort_28866_29201));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_mergesort_28866_29203 (.out1(out_IUdata_converter_FU_18_i0_fu_mergesort_28866_29203), .in1(out_reg_0_reg_0));
  IUdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_mergesort_28866_29205 (.out1(out_IUdata_converter_FU_19_i0_fu_mergesort_28866_29205), .in1(out_lshift_expr_FU_8_0_8_22_i0_fu_mergesort_28866_29229));
  ui_ternary_plus_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(8), .BITSIZE_in3(8), .BITSIZE_out1(8)) fu_mergesort_28866_29207 (.out1(out_ui_ternary_plus_expr_FU_8_0_8_8_34_i0_fu_mergesort_28866_29207), .in1(out_reg_1_reg_1), .in2(out_const_4), .in3(out_reg_9_reg_9));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_mergesort_28866_29208 (.out1(out_UIdata_converter_FU_9_i0_fu_mergesort_28866_29208), .in1(out_ui_ternary_plus_expr_FU_8_0_8_8_34_i0_fu_mergesort_28866_29207));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_mergesort_28866_29209 (.out1(out_IIdata_converter_FU_10_i0_fu_mergesort_28866_29209), .in1(out_UIdata_converter_FU_9_i0_fu_mergesort_28866_29208));
  UIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(9)) fu_mergesort_28866_29210 (.out1(out_UIdata_converter_FU_11_i0_fu_mergesort_28866_29210), .in1(out_ui_lshift_expr_FU_8_0_8_30_i1_fu_mergesort_28866_29608));
  merge #(.MEM_var_28859_28863(MEM_var_28859_28863), .MEM_var_28861_28867(MEM_var_28861_28867), .MEM_var_28984_28863(MEM_var_28984_28863)) fu_mergesort_28866_29211 (.done_port(s_done_fu_mergesort_28866_29211), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram1_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy0_0), .proxy_in1_28861(sig_in_vector_bus_mergerproxy_in1_288612_0), .proxy_in2_28861(sig_in_vector_bus_mergerproxy_in2_288613_0), .proxy_in3_28861(sig_in_vector_bus_mergerproxy_in3_288614_0), .proxy_sel_LOAD_28861(sig_in_vector_bus_mergerproxy_sel_LOAD_288615_0), .proxy_sel_STORE_28861(sig_in_vector_bus_mergerproxy_sel_STORE_288616_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_mergesort_28866_29211), .i1(out_reg_7_reg_7), .f1(out_reg_11_reg_11), .f2(out_reg_12_reg_12), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28861(proxy_out1_28861));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_mergesort_28866_29212 (.out1(out_IIdata_converter_FU_15_i0_fu_mergesort_28866_29212), .in1(out_lshift_expr_FU_8_0_8_22_i1_fu_mergesort_28866_29585));
  lshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(8)) fu_mergesort_28866_29229 (.out1(out_lshift_expr_FU_8_0_8_22_i0_fu_mergesort_28866_29229), .in1(out_reg_0_reg_0), .in2(out_const_1));
  IIdata_converter_FU #(.BITSIZE_in1(8), .BITSIZE_out1(8)) fu_mergesort_28866_29277 (.out1(out_IIdata_converter_FU_20_i0_fu_mergesort_28866_29277), .in1(out_lshift_expr_FU_8_0_8_22_i0_fu_mergesort_28866_29229));
  lt_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_mergesort_28866_29527 (.out1(out_lt_expr_FU_8_0_8_23_i0_fu_mergesort_28866_29527), .in1(out_IIdata_converter_FU_15_i0_fu_mergesort_28866_29212), .in2(out_const_1));
  le_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(1)) fu_mergesort_28866_29529 (.out1(out_le_expr_FU_8_0_8_21_i0_fu_mergesort_28866_29529), .in1(out_IIdata_converter_FU_20_i0_fu_mergesort_28866_29277), .in2(out_const_1));
  IUdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_mergesort_28866_29538 (.out1(out_IUdata_converter_FU_12_i0_fu_mergesort_28866_29538), .in1(out_UIdata_converter_FU_11_i0_fu_mergesort_28866_29210));
  IIdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_mergesort_28866_29541 (.out1(out_IIdata_converter_FU_13_i0_fu_mergesort_28866_29541), .in1(out_IIdata_converter_FU_10_i0_fu_mergesort_28866_29209));
  IIdata_converter_FU #(.BITSIZE_in1(9), .BITSIZE_out1(8)) fu_mergesort_28866_29544 (.out1(out_IIdata_converter_FU_14_i0_fu_mergesort_28866_29544), .in1(out_IIdata_converter_FU_8_i0_fu_mergesort_28866_29202));
  rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(7), .PRECISION(8)) fu_mergesort_28866_29575 (.out1(out_rshift_expr_FU_8_0_8_26_i0_fu_mergesort_28866_29575), .in1(out_reg_8_reg_8), .in2(out_const_1));
  rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(2), .BITSIZE_out1(7), .PRECISION(8)) fu_mergesort_28866_29580 (.out1(out_rshift_expr_FU_8_0_8_26_i1_fu_mergesort_28866_29580), .in1(out_lshift_expr_FU_8_0_8_22_i0_fu_mergesort_28866_29229), .in2(out_const_1));
  plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(7)) fu_mergesort_28866_29582 (.out1(out_plus_expr_FU_8_8_8_25_i0_fu_mergesort_28866_29582), .in1(out_rshift_expr_FU_8_0_8_26_i0_fu_mergesort_28866_29575), .in2(out_reg_3_reg_3));
  lshift_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(2), .BITSIZE_out1(8), .PRECISION(8)) fu_mergesort_28866_29585 (.out1(out_lshift_expr_FU_8_0_8_22_i1_fu_mergesort_28866_29585), .in1(out_plus_expr_FU_8_8_8_25_i0_fu_mergesort_28866_29582), .in2(out_const_1));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(7), .PRECISION(8)) fu_mergesort_28866_29589 (.out1(out_ui_rshift_expr_FU_8_0_8_33_i0_fu_mergesort_28866_29589), .in1(out_IUdata_converter_FU_6_i0_fu_mergesort_28866_29198), .in2(out_const_2));
  ui_plus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(7)) fu_mergesort_28866_29593 (.out1(out_ui_plus_expr_FU_8_0_8_32_i0_fu_mergesort_28866_29593), .in1(out_ui_rshift_expr_FU_8_0_8_33_i0_fu_mergesort_28866_29589), .in2(out_const_3));
  ui_lshift_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(1), .BITSIZE_out1(8), .PRECISION(8)) fu_mergesort_28866_29596 (.out1(out_ui_lshift_expr_FU_8_0_8_30_i0_fu_mergesort_28866_29596), .in1(out_ui_plus_expr_FU_8_0_8_32_i0_fu_mergesort_28866_29593), .in2(out_const_2));
  ui_rshift_expr_FU #(.BITSIZE_in1(8), .BITSIZE_in2(1), .BITSIZE_out1(7), .PRECISION(8)) fu_mergesort_28866_29603 (.out1(out_ui_rshift_expr_FU_8_0_8_33_i1_fu_mergesort_28866_29603), .in1(out_IUdata_converter_FU_19_i0_fu_mergesort_28866_29205), .in2(out_const_2));
  ui_minus_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(7), .BITSIZE_out1(7)) fu_mergesort_28866_29605 (.out1(out_ui_minus_expr_FU_8_8_8_31_i0_fu_mergesort_28866_29605), .in1(out_ui_rshift_expr_FU_8_0_8_33_i0_fu_mergesort_28866_29589), .in2(out_reg_4_reg_4));
  ui_lshift_expr_FU #(.BITSIZE_in1(7), .BITSIZE_in2(1), .BITSIZE_out1(8), .PRECISION(8)) fu_mergesort_28866_29608 (.out1(out_ui_lshift_expr_FU_8_0_8_30_i1_fu_mergesort_28866_29608), .in1(out_ui_minus_expr_FU_8_8_8_31_i0_fu_mergesort_28866_29605), .in2(out_const_2));
  multi_read_cond_FU #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) fu_mergesort_28866_29630 (.out1(out_multi_read_cond_FU_16_i0_fu_mergesort_28866_29630), .in1({out_reg_10_reg_10, out_reg_6_reg_6}));
  truth_not_expr_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_mergesort_28866_29633 (.out1(out_truth_not_expr_FU_1_1_28_i0_fu_mergesort_28866_29633), .in1(out_lt_expr_FU_8_0_8_23_i0_fu_mergesort_28866_29527));
  truth_and_expr_FU #(.BITSIZE_in1(1), .BITSIZE_in2(1), .BITSIZE_out1(1)) fu_mergesort_28866_29636 (.out1(out_truth_and_expr_FU_1_1_1_27_i0_fu_mergesort_28866_29636), .in1(out_reg_2_reg_2), .in2(out_truth_not_expr_FU_1_1_28_i0_fu_mergesort_28866_29633));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy0_0 (.out1(sig_in_bus_mergerSout_DataRdy0_0), .in1(sig_in_vector_bus_mergerSout_DataRdy0_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram1_0 (.out1(sig_in_bus_mergerSout_Rdata_ram1_0), .in1(sig_in_vector_bus_mergerSout_Rdata_ram1_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in1_288612_0 (.out1(sig_in_bus_mergerproxy_in1_288612_0), .in1(sig_in_vector_bus_mergerproxy_in1_288612_0));
  join_signal #(.BITSIZE_in1(7), .PORTSIZE_in1(2), .BITSIZE_out1(14)) join_signalbus_mergerproxy_in2_288613_0 (.out1(sig_in_bus_mergerproxy_in2_288613_0), .in1(sig_in_vector_bus_mergerproxy_in2_288613_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in3_288614_0 (.out1(sig_in_bus_mergerproxy_in3_288614_0), .in1(sig_in_vector_bus_mergerproxy_in3_288614_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD_288615_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD_288615_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD_288615_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE_288616_0 (.out1(sig_in_bus_mergerproxy_sel_STORE_288616_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE_288616_0));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_MUX_33_reg_0_0_0_0), .wenable(wrenable_reg_0));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_1 (.out1(out_reg_1_reg_1), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_18_i0_fu_mergesort_28866_29203), .wenable(wrenable_reg_1));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_10 (.out1(out_reg_10_reg_10), .clock(clock), .reset(reset), .in1(out_truth_and_expr_FU_1_1_1_27_i0_fu_mergesort_28866_29636), .wenable(wrenable_reg_10));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_11 (.out1(out_reg_11_reg_11), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_13_i0_fu_mergesort_28866_29541), .wenable(wrenable_reg_11));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_12 (.out1(out_reg_12_reg_12), .clock(clock), .reset(reset), .in1(out_IIdata_converter_FU_14_i0_fu_mergesort_28866_29544), .wenable(wrenable_reg_12));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_2 (.out1(out_reg_2_reg_2), .clock(clock), .reset(reset), .in1(out_le_expr_FU_8_0_8_21_i0_fu_mergesort_28866_29529), .wenable(wrenable_reg_2));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_3 (.out1(out_reg_3_reg_3), .clock(clock), .reset(reset), .in1(out_rshift_expr_FU_8_0_8_26_i1_fu_mergesort_28866_29580), .wenable(wrenable_reg_3));
  register_SE #(.BITSIZE_in1(7), .BITSIZE_out1(7)) reg_4 (.out1(out_reg_4_reg_4), .clock(clock), .reset(reset), .in1(out_ui_rshift_expr_FU_8_0_8_33_i1_fu_mergesort_28866_29603), .wenable(wrenable_reg_4));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_5 (.out1(out_reg_5_reg_5), .clock(clock), .reset(reset), .in1(out_UIdata_converter_FU_7_i0_fu_mergesort_28866_29200), .wenable(wrenable_reg_5));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_6 (.out1(out_reg_6_reg_6), .clock(clock), .reset(reset), .in1(out_lt_expr_FU_8_0_8_23_i0_fu_mergesort_28866_29527), .wenable(wrenable_reg_6));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_7 (.out1(out_reg_7_reg_7), .clock(clock), .reset(reset), .in1(out_IUdata_converter_FU_12_i0_fu_mergesort_28866_29538), .wenable(wrenable_reg_7));
  register_SE #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_8 (.out1(out_reg_8_reg_8), .clock(clock), .reset(reset), .in1(out_MUX_44_reg_8_0_0_0), .wenable(wrenable_reg_8));
  register_STD #(.BITSIZE_in1(8), .BITSIZE_out1(8)) reg_9 (.out1(out_reg_9_reg_9), .clock(clock), .reset(reset), .in1(out_ui_lshift_expr_FU_8_0_8_30_i1_fu_mergesort_28866_29608), .wenable(wrenable_reg_9));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy0_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy0_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram1_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram1_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in1_288612_ (.out1(proxy_in1_28861), .in1(sig_out_bus_mergerproxy_in1_288612_));
  split_signal #(.BITSIZE_in1(14), .BITSIZE_out1(7), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in2_288613_ (.out1(proxy_in2_28861), .in1(sig_out_bus_mergerproxy_in2_288613_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in3_288614_ (.out1(proxy_in3_28861), .in1(sig_out_bus_mergerproxy_in3_288614_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD_288615_ (.out1(proxy_sel_LOAD_28861), .in1(sig_out_bus_mergerproxy_sel_LOAD_288615_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE_288616_ (.out1(proxy_sel_STORE_28861), .in1(sig_out_bus_mergerproxy_sel_STORE_288616_));
  // io-signal post fix
  assign OUT_MULTIIF_mergesort_28866_29630 = out_multi_read_cond_FU_16_i0_fu_mergesort_28866_29630;
  assign OUT_UNBOUNDED_mergesort_28866_29211 = s_done_fu_mergesort_28866_29211;

endmodule

// FSM based controller description for mergesort
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_mergesort(done_port, selector_IN_UNBOUNDED_mergesort_28866_29211, selector_MUX_33_reg_0_0_0_0, selector_MUX_44_reg_8_0_0_0, wrenable_reg_0, wrenable_reg_1, wrenable_reg_10, wrenable_reg_11, wrenable_reg_12, wrenable_reg_2, wrenable_reg_3, wrenable_reg_4, wrenable_reg_5, wrenable_reg_6, wrenable_reg_7, wrenable_reg_8, wrenable_reg_9, OUT_MULTIIF_mergesort_28866_29630, OUT_UNBOUNDED_mergesort_28866_29211, clock, reset, start_port);
  // IN
  input [1:0] OUT_MULTIIF_mergesort_28866_29630;
  input OUT_UNBOUNDED_mergesort_28866_29211;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_IN_UNBOUNDED_mergesort_28866_29211;
  output selector_MUX_33_reg_0_0_0_0;
  output selector_MUX_44_reg_8_0_0_0;
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
    S_6 = 8'b01000000,
    S_1 = 8'b00000010,
    S_2 = 8'b00000100,
    S_3 = 8'b00001000,
    S_4 = 8'b00010000,
    S_5 = 8'b00100000,
    S_7 = 8'b10000000;
  reg [7:0] _present_state, _next_state;
  reg done_port;
  reg selector_IN_UNBOUNDED_mergesort_28866_29211;
  reg selector_MUX_33_reg_0_0_0_0;
  reg selector_MUX_44_reg_8_0_0_0;
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
    selector_IN_UNBOUNDED_mergesort_28866_29211 = 1'b0;
    selector_MUX_33_reg_0_0_0_0 = 1'b0;
    selector_MUX_44_reg_8_0_0_0 = 1'b0;
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
          selector_MUX_33_reg_0_0_0_0 = 1'b1;
          wrenable_reg_0 = 1'b1;
          _next_state = S_6;
        end
        else
        begin
          selector_MUX_33_reg_0_0_0_0 = 1'bX;
          selector_MUX_44_reg_8_0_0_0 = 1'bX;
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
      S_6 :
        begin
          selector_MUX_44_reg_8_0_0_0 = 1'b1;
          wrenable_reg_0 = 1'b1;
          wrenable_reg_1 = 1'b1;
          wrenable_reg_2 = 1'b1;
          wrenable_reg_3 = 1'b1;
          wrenable_reg_4 = 1'b1;
          wrenable_reg_8 = 1'b1;
          _next_state = S_1;
        end
      S_1 :
        begin
          wrenable_reg_10 = 1'b1;
          wrenable_reg_5 = 1'b1;
          wrenable_reg_6 = 1'b1;
          wrenable_reg_7 = 1'b1;
          wrenable_reg_8 = 1'b1;
          wrenable_reg_9 = 1'b1;
          _next_state = S_2;
        end
      S_2 :
        begin
          wrenable_reg_11 = 1'b1;
          wrenable_reg_12 = 1'b1;
          _next_state = S_3;
        end
      S_3 :
        begin
          selector_IN_UNBOUNDED_mergesort_28866_29211 = 1'b1;
          if (OUT_UNBOUNDED_mergesort_28866_29211 == 1'b0)
            begin
              _next_state = S_4;
            end
          else
            begin
              _next_state = S_5;
            end
        end
      S_4 :
        begin
          if (OUT_UNBOUNDED_mergesort_28866_29211 == 1'b0)
            begin
              _next_state = S_4;
            end
          else
            begin
              _next_state = S_5;
            end
        end
      S_5 :
        begin
          if (OUT_MULTIIF_mergesort_28866_29630[0] == 1'b1)
            begin
              _next_state = S_1;
            end
          else if (OUT_MULTIIF_mergesort_28866_29630[1] == 1'b1)
            begin
              _next_state = S_6;
            end
          else
            begin
              _next_state = S_7;
              done_port = 1'b1;
            end
        end
      S_7 :
        begin
          _next_state = S_0;
        end
      default :
        begin
          _next_state = S_0;
          selector_MUX_33_reg_0_0_0_0 = 1'bX;
          selector_MUX_44_reg_8_0_0_0 = 1'bX;
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

// Top component for mergesort
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module mergesort(clock, reset, start_port, done_port, size, a, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, Sin_Rdata_ram, Sin_DataRdy, proxy_out1_28861, Sout_Rdata_ram, Sout_DataRdy, proxy_in1_28861, proxy_in2_28861, proxy_in3_28861, proxy_sel_LOAD_28861, proxy_sel_STORE_28861);
  parameter MEM_var_28859_28863=64, MEM_var_28861_28867=32, MEM_var_28984_28863=32;
  // IN
  input clock;
  input reset;
  input start_port;
  input [7:0] size;
  input [31:0] a;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [13:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input [15:0] proxy_out1_28861;
  // OUT
  output done_port;
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output [15:0] proxy_in1_28861;
  output [13:0] proxy_in2_28861;
  output [7:0] proxy_in3_28861;
  output [1:0] proxy_sel_LOAD_28861;
  output [1:0] proxy_sel_STORE_28861;
  // Component and signal declarations
  wire [1:0] OUT_MULTIIF_mergesort_28866_29630;
  wire OUT_UNBOUNDED_mergesort_28866_29211;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire selector_IN_UNBOUNDED_mergesort_28866_29211;
  wire selector_MUX_33_reg_0_0_0_0;
  wire selector_MUX_44_reg_8_0_0_0;
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
  
  controller_mergesort Controller_i (.done_port(done_delayed_REG_signal_in), .selector_IN_UNBOUNDED_mergesort_28866_29211(selector_IN_UNBOUNDED_mergesort_28866_29211), .selector_MUX_33_reg_0_0_0_0(selector_MUX_33_reg_0_0_0_0), .selector_MUX_44_reg_8_0_0_0(selector_MUX_44_reg_8_0_0_0), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9), .OUT_MULTIIF_mergesort_28866_29630(OUT_MULTIIF_mergesort_28866_29630), .OUT_UNBOUNDED_mergesort_28866_29211(OUT_UNBOUNDED_mergesort_28866_29211), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_mergesort #(.MEM_var_28859_28863(MEM_var_28859_28863), .MEM_var_28861_28867(MEM_var_28861_28867), .MEM_var_28984_28863(MEM_var_28984_28863)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .proxy_in1_28861(proxy_in1_28861), .proxy_in2_28861(proxy_in2_28861), .proxy_in3_28861(proxy_in3_28861), .proxy_sel_LOAD_28861(proxy_sel_LOAD_28861), .proxy_sel_STORE_28861(proxy_sel_STORE_28861), .OUT_MULTIIF_mergesort_28866_29630(OUT_MULTIIF_mergesort_28866_29630), .OUT_UNBOUNDED_mergesort_28866_29211(OUT_UNBOUNDED_mergesort_28866_29211), .clock(clock), .reset(reset), .in_port_size(size), .in_port_a(a), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28861(proxy_out1_28861), .selector_IN_UNBOUNDED_mergesort_28866_29211(selector_IN_UNBOUNDED_mergesort_28866_29211), .selector_MUX_33_reg_0_0_0_0(selector_MUX_33_reg_0_0_0_0), .selector_MUX_44_reg_8_0_0_0(selector_MUX_44_reg_8_0_0_0), .wrenable_reg_0(wrenable_reg_0), .wrenable_reg_1(wrenable_reg_1), .wrenable_reg_10(wrenable_reg_10), .wrenable_reg_11(wrenable_reg_11), .wrenable_reg_12(wrenable_reg_12), .wrenable_reg_2(wrenable_reg_2), .wrenable_reg_3(wrenable_reg_3), .wrenable_reg_4(wrenable_reg_4), .wrenable_reg_5(wrenable_reg_5), .wrenable_reg_6(wrenable_reg_6), .wrenable_reg_7(wrenable_reg_7), .wrenable_reg_8(wrenable_reg_8), .wrenable_reg_9(wrenable_reg_9));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Datapath RTL description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module datapath_main(clock, reset, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy, selector_IN_UNBOUNDED_main_28867_29289, wrenable_reg_0, OUT_UNBOUNDED_main_28867_29289);
  parameter MEM_var_28859_28863=64, MEM_var_28861_28867=32, MEM_var_28984_28863=32;
  // IN
  input clock;
  input reset;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [13:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  input selector_IN_UNBOUNDED_main_28867_29289;
  input wrenable_reg_0;
  // OUT
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  output OUT_UNBOUNDED_main_28867_29289;
  // Component and signal declarations
  wire [7:0] null_out_signal_array_28861_0_out1_0;
  wire [7:0] null_out_signal_array_28861_0_out1_1;
  wire out_UUdata_converter_FU_4_i0_fu_main_28867_29535;
  wire out_addr_expr_FU_3_i0_fu_main_28867_29301;
  wire out_const_0;
  wire [6:0] out_const_1;
  wire [7:0] out_conv_out_const_0_1_8;
  wire [31:0] out_conv_out_const_1_7_32;
  wire [31:0] out_conv_out_reg_0_reg_0_1_32;
  wire out_reg_0_reg_0;
  wire [15:0] proxy_out1_28861;
  wire s_done_fu_main_28867_29289;
  wire [1:0] sig_in_bus_mergerSout_DataRdy0_0;
  wire [1:0] sig_in_bus_mergerSout_DataRdy0_1;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram1_0;
  wire [15:0] sig_in_bus_mergerSout_Rdata_ram1_1;
  wire [15:0] sig_in_bus_mergerproxy_in12_0;
  wire [13:0] sig_in_bus_mergerproxy_in23_0;
  wire [7:0] sig_in_bus_mergerproxy_in34_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_LOAD5_0;
  wire [1:0] sig_in_bus_mergerproxy_sel_STORE6_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy0_0;
  wire [1:0] sig_in_vector_bus_mergerSout_DataRdy0_1;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram1_0;
  wire [15:0] sig_in_vector_bus_mergerSout_Rdata_ram1_1;
  wire [15:0] sig_in_vector_bus_mergerproxy_in12_0;
  wire [13:0] sig_in_vector_bus_mergerproxy_in23_0;
  wire [7:0] sig_in_vector_bus_mergerproxy_in34_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_LOAD5_0;
  wire [1:0] sig_in_vector_bus_mergerproxy_sel_STORE6_0;
  wire [1:0] sig_out_bus_mergerSout_DataRdy0_;
  wire [15:0] sig_out_bus_mergerSout_Rdata_ram1_;
  wire [15:0] sig_out_bus_mergerproxy_in12_;
  wire [13:0] sig_out_bus_mergerproxy_in23_;
  wire [7:0] sig_out_bus_mergerproxy_in34_;
  wire [1:0] sig_out_bus_mergerproxy_sel_LOAD5_;
  wire [1:0] sig_out_bus_mergerproxy_sel_STORE6_;
  wire [15:0] sig_out_vector_bus_mergerproxy_in12_;
  wire [13:0] sig_out_vector_bus_mergerproxy_in23_;
  wire [7:0] sig_out_vector_bus_mergerproxy_in34_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_LOAD5_;
  wire [1:0] sig_out_vector_bus_mergerproxy_sel_STORE6_;
  
  ARRAY_1D_STD_DISTRAM_NN_SDS #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_in2(7), .PORTSIZE_in2(2), .BITSIZE_in3(4), .PORTSIZE_in3(2), .BITSIZE_in4(1), .PORTSIZE_in4(2), .BITSIZE_sel_LOAD(1), .PORTSIZE_sel_LOAD(2), .BITSIZE_sel_STORE(1), .PORTSIZE_sel_STORE(2), .BITSIZE_S_oe_ram(1), .PORTSIZE_S_oe_ram(2), .BITSIZE_S_we_ram(1), .PORTSIZE_S_we_ram(2), .BITSIZE_out1(8), .PORTSIZE_out1(2), .BITSIZE_S_addr_ram(7), .PORTSIZE_S_addr_ram(2), .BITSIZE_S_Wdata_ram(8), .PORTSIZE_S_Wdata_ram(2), .BITSIZE_Sin_Rdata_ram(8), .PORTSIZE_Sin_Rdata_ram(2), .BITSIZE_Sout_Rdata_ram(8), .PORTSIZE_Sout_Rdata_ram(2), .BITSIZE_S_data_ram_size(4), .PORTSIZE_S_data_ram_size(2), .BITSIZE_Sin_DataRdy(1), .PORTSIZE_Sin_DataRdy(2), .BITSIZE_Sout_DataRdy(1), .PORTSIZE_Sout_DataRdy(2), .MEMORY_INIT_file("array_ref_28861.mem"), .n_elements(2), .data_size(8), .address_space_begin(MEM_var_28861_28867), .address_space_rangesize(32), .BUS_PIPELINED(1), .BRAM_BITSIZE(8), .PRIVATE_MEMORY(0), .READ_ONLY_MEMORY(0), .USE_SPARSE_MEMORY(1), .BITSIZE_proxy_in1(8), .PORTSIZE_proxy_in1(2), .BITSIZE_proxy_in2(7), .PORTSIZE_proxy_in2(2), .BITSIZE_proxy_in3(4), .PORTSIZE_proxy_in3(2), .BITSIZE_proxy_sel_LOAD(1), .PORTSIZE_proxy_sel_LOAD(2), .BITSIZE_proxy_sel_STORE(1), .PORTSIZE_proxy_sel_STORE(2), .BITSIZE_proxy_out1(8), .PORTSIZE_proxy_out1(2)) array_28861_0 (.out1({null_out_signal_array_28861_0_out1_1, null_out_signal_array_28861_0_out1_0}), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram1_0), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy0_0), .proxy_out1(proxy_out1_28861), .clock(clock), .reset(reset), .in1({8'b00000000, 8'b00000000}), .in2({7'b0000000, 7'b0000000}), .in3({4'b0000, 4'b0000}), .in4({1'b0, 1'b0}), .sel_LOAD({1'b0, 1'b0}), .sel_STORE({1'b0, 1'b0}), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .Sin_Rdata_ram(Sin_Rdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_DataRdy(Sin_DataRdy), .proxy_in1(sig_out_vector_bus_mergerproxy_in12_), .proxy_in2(sig_out_vector_bus_mergerproxy_in23_), .proxy_in3(sig_out_vector_bus_mergerproxy_in34_), .proxy_sel_LOAD(sig_out_vector_bus_mergerproxy_sel_LOAD5_), .proxy_sel_STORE(sig_out_vector_bus_mergerproxy_sel_STORE6_));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(2), .BITSIZE_out1(2)) bus_mergerSout_DataRdy0_ (.out1(sig_out_bus_mergerSout_DataRdy0_), .in1({sig_in_bus_mergerSout_DataRdy0_1, sig_in_bus_mergerSout_DataRdy0_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(2), .BITSIZE_out1(16)) bus_mergerSout_Rdata_ram1_ (.out1(sig_out_bus_mergerSout_Rdata_ram1_), .in1({sig_in_bus_mergerSout_Rdata_ram1_1, sig_in_bus_mergerSout_Rdata_ram1_0}));
  bus_merger #(.BITSIZE_in1(16), .PORTSIZE_in1(1), .BITSIZE_out1(16)) bus_mergerproxy_in12_ (.out1(sig_out_bus_mergerproxy_in12_), .in1({sig_in_bus_mergerproxy_in12_0}));
  bus_merger #(.BITSIZE_in1(14), .PORTSIZE_in1(1), .BITSIZE_out1(14)) bus_mergerproxy_in23_ (.out1(sig_out_bus_mergerproxy_in23_), .in1({sig_in_bus_mergerproxy_in23_0}));
  bus_merger #(.BITSIZE_in1(8), .PORTSIZE_in1(1), .BITSIZE_out1(8)) bus_mergerproxy_in34_ (.out1(sig_out_bus_mergerproxy_in34_), .in1({sig_in_bus_mergerproxy_in34_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_LOAD5_ (.out1(sig_out_bus_mergerproxy_sel_LOAD5_), .in1({sig_in_bus_mergerproxy_sel_LOAD5_0}));
  bus_merger #(.BITSIZE_in1(2), .PORTSIZE_in1(1), .BITSIZE_out1(2)) bus_mergerproxy_sel_STORE6_ (.out1(sig_out_bus_mergerproxy_sel_STORE6_), .in1({sig_in_bus_mergerproxy_sel_STORE6_0}));
  constant_value #(.BITSIZE_out1(1), .value(1'b0)) const_0 (.out1(out_const_0));
  constant_value #(.BITSIZE_out1(7), .value(MEM_var_28861_28867)) const_1 (.out1(out_const_1));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(8)) conv_out_const_0_1_8 (.out1(out_conv_out_const_0_1_8), .in1(out_const_0));
  UUdata_converter_FU #(.BITSIZE_in1(7), .BITSIZE_out1(32)) conv_out_const_1_7_32 (.out1(out_conv_out_const_1_7_32), .in1(out_const_1));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(32)) conv_out_reg_0_reg_0_1_32 (.out1(out_conv_out_reg_0_reg_0_1_32), .in1(out_reg_0_reg_0));
  mergesort #(.MEM_var_28859_28863(MEM_var_28859_28863), .MEM_var_28861_28867(MEM_var_28861_28867), .MEM_var_28984_28863(MEM_var_28984_28863)) fu_main_28867_29289 (.done_port(s_done_fu_main_28867_29289), .Sout_Rdata_ram(sig_in_vector_bus_mergerSout_Rdata_ram1_1), .Sout_DataRdy(sig_in_vector_bus_mergerSout_DataRdy0_1), .proxy_in1_28861(sig_in_vector_bus_mergerproxy_in12_0), .proxy_in2_28861(sig_in_vector_bus_mergerproxy_in23_0), .proxy_in3_28861(sig_in_vector_bus_mergerproxy_in34_0), .proxy_sel_LOAD_28861(sig_in_vector_bus_mergerproxy_sel_LOAD5_0), .proxy_sel_STORE_28861(sig_in_vector_bus_mergerproxy_sel_STORE6_0), .clock(clock), .reset(reset), .start_port(selector_IN_UNBOUNDED_main_28867_29289), .size(out_conv_out_const_0_1_8), .a(out_conv_out_reg_0_reg_0_1_32), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .proxy_out1_28861(proxy_out1_28861));
  addr_expr_FU #(.BITSIZE_in1(32), .BITSIZE_out1(1)) fu_main_28867_29301 (.out1(out_addr_expr_FU_3_i0_fu_main_28867_29301), .in1(out_conv_out_const_1_7_32));
  UUdata_converter_FU #(.BITSIZE_in1(1), .BITSIZE_out1(1)) fu_main_28867_29535 (.out1(out_UUdata_converter_FU_4_i0_fu_main_28867_29535), .in1(out_addr_expr_FU_3_i0_fu_main_28867_29301));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy0_0 (.out1(sig_in_bus_mergerSout_DataRdy0_0), .in1(sig_in_vector_bus_mergerSout_DataRdy0_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerSout_DataRdy0_1 (.out1(sig_in_bus_mergerSout_DataRdy0_1), .in1(sig_in_vector_bus_mergerSout_DataRdy0_1));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram1_0 (.out1(sig_in_bus_mergerSout_Rdata_ram1_0), .in1(sig_in_vector_bus_mergerSout_Rdata_ram1_0));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerSout_Rdata_ram1_1 (.out1(sig_in_bus_mergerSout_Rdata_ram1_1), .in1(sig_in_vector_bus_mergerSout_Rdata_ram1_1));
  join_signal #(.BITSIZE_in1(8), .PORTSIZE_in1(2), .BITSIZE_out1(16)) join_signalbus_mergerproxy_in12_0 (.out1(sig_in_bus_mergerproxy_in12_0), .in1(sig_in_vector_bus_mergerproxy_in12_0));
  join_signal #(.BITSIZE_in1(7), .PORTSIZE_in1(2), .BITSIZE_out1(14)) join_signalbus_mergerproxy_in23_0 (.out1(sig_in_bus_mergerproxy_in23_0), .in1(sig_in_vector_bus_mergerproxy_in23_0));
  join_signal #(.BITSIZE_in1(4), .PORTSIZE_in1(2), .BITSIZE_out1(8)) join_signalbus_mergerproxy_in34_0 (.out1(sig_in_bus_mergerproxy_in34_0), .in1(sig_in_vector_bus_mergerproxy_in34_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_LOAD5_0 (.out1(sig_in_bus_mergerproxy_sel_LOAD5_0), .in1(sig_in_vector_bus_mergerproxy_sel_LOAD5_0));
  join_signal #(.BITSIZE_in1(1), .PORTSIZE_in1(2), .BITSIZE_out1(2)) join_signalbus_mergerproxy_sel_STORE6_0 (.out1(sig_in_bus_mergerproxy_sel_STORE6_0), .in1(sig_in_vector_bus_mergerproxy_sel_STORE6_0));
  register_SE #(.BITSIZE_in1(1), .BITSIZE_out1(1)) reg_0 (.out1(out_reg_0_reg_0), .clock(clock), .reset(reset), .in1(out_UUdata_converter_FU_4_i0_fu_main_28867_29535), .wenable(wrenable_reg_0));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerSout_DataRdy0_ (.out1(Sout_DataRdy), .in1(sig_out_bus_mergerSout_DataRdy0_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerSout_Rdata_ram1_ (.out1(Sout_Rdata_ram), .in1(sig_out_bus_mergerSout_Rdata_ram1_));
  split_signal #(.BITSIZE_in1(16), .BITSIZE_out1(8), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in12_ (.out1(sig_out_vector_bus_mergerproxy_in12_), .in1(sig_out_bus_mergerproxy_in12_));
  split_signal #(.BITSIZE_in1(14), .BITSIZE_out1(7), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in23_ (.out1(sig_out_vector_bus_mergerproxy_in23_), .in1(sig_out_bus_mergerproxy_in23_));
  split_signal #(.BITSIZE_in1(8), .BITSIZE_out1(4), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_in34_ (.out1(sig_out_vector_bus_mergerproxy_in34_), .in1(sig_out_bus_mergerproxy_in34_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_LOAD5_ (.out1(sig_out_vector_bus_mergerproxy_sel_LOAD5_), .in1(sig_out_bus_mergerproxy_sel_LOAD5_));
  split_signal #(.BITSIZE_in1(2), .BITSIZE_out1(1), .PORTSIZE_out1(2)) split_signalbus_mergerproxy_sel_STORE6_ (.out1(sig_out_vector_bus_mergerproxy_sel_STORE6_), .in1(sig_out_bus_mergerproxy_sel_STORE6_));
  // io-signal post fix
  assign OUT_UNBOUNDED_main_28867_29289 = s_done_fu_main_28867_29289;

endmodule

// FSM based controller description for main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module controller_main(done_port, selector_IN_UNBOUNDED_main_28867_29289, wrenable_reg_0, OUT_UNBOUNDED_main_28867_29289, clock, reset, start_port);
  // IN
  input OUT_UNBOUNDED_main_28867_29289;
  input clock;
  input reset;
  input start_port;
  // OUT
  output done_port;
  output selector_IN_UNBOUNDED_main_28867_29289;
  output wrenable_reg_0;
  parameter [3:0] S_0 = 4'b0001,
    S_1 = 4'b0010,
    S_2 = 4'b0100,
    S_3 = 4'b1000;
  reg [3:0] _present_state, _next_state;
  reg done_port;
  reg selector_IN_UNBOUNDED_main_28867_29289;
  reg wrenable_reg_0;
  
  always @(posedge clock)
    if (reset == 1'b0) _present_state <= S_0;
    else _present_state <= _next_state;
  
  always @(*)
  begin
    done_port = 1'b0;
    selector_IN_UNBOUNDED_main_28867_29289 = 1'b0;
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
          selector_IN_UNBOUNDED_main_28867_29289 = 1'b1;
          if (OUT_UNBOUNDED_main_28867_29289 == 1'b0)
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
          if (OUT_UNBOUNDED_main_28867_29289 == 1'b0)
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
module _main(clock, reset, start_port, done_port, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, Sin_Rdata_ram, Sin_DataRdy, Sout_Rdata_ram, Sout_DataRdy);
  parameter MEM_var_28859_28863=64, MEM_var_28861_28867=32, MEM_var_28984_28863=32;
  // IN
  input clock;
  input reset;
  input start_port;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [13:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  input [15:0] Sin_Rdata_ram;
  input [1:0] Sin_DataRdy;
  // OUT
  output done_port;
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  // Component and signal declarations
  wire OUT_UNBOUNDED_main_28867_29289;
  wire done_delayed_REG_signal_in;
  wire done_delayed_REG_signal_out;
  wire selector_IN_UNBOUNDED_main_28867_29289;
  wire wrenable_reg_0;
  
  controller_main Controller_i (.done_port(done_delayed_REG_signal_in), .selector_IN_UNBOUNDED_main_28867_29289(selector_IN_UNBOUNDED_main_28867_29289), .wrenable_reg_0(wrenable_reg_0), .OUT_UNBOUNDED_main_28867_29289(OUT_UNBOUNDED_main_28867_29289), .clock(clock), .reset(reset), .start_port(start_port));
  datapath_main #(.MEM_var_28859_28863(MEM_var_28859_28863), .MEM_var_28861_28867(MEM_var_28861_28867), .MEM_var_28984_28863(MEM_var_28984_28863)) Datapath_i (.Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .OUT_UNBOUNDED_main_28867_29289(OUT_UNBOUNDED_main_28867_29289), .clock(clock), .reset(reset), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_Rdata_ram(Sin_Rdata_ram), .Sin_DataRdy(Sin_DataRdy), .selector_IN_UNBOUNDED_main_28867_29289(selector_IN_UNBOUNDED_main_28867_29289), .wrenable_reg_0(wrenable_reg_0));
  flipflop_AR #(.BITSIZE_in1(1), .BITSIZE_out1(1)) done_delayed_REG (.out1(done_delayed_REG_signal_out), .clock(clock), .reset(reset), .in1(done_delayed_REG_signal_in));
  // io-signal post fix
  assign done_port = done_delayed_REG_signal_out;

endmodule

// Minimal interface for function: main
// This component has been derived from the input source code and so it does not fall under the copyright of PandA framework, but it follows the input source code copyright, and may be aggregated with components of the BAMBU/PANDA IP LIBRARY.
// Author(s): Component automatically generated by bambu
// License: THIS COMPONENT IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
`timescale 1ns / 1ps
module main(clock, reset, start_port, S_oe_ram, S_we_ram, S_addr_ram, S_Wdata_ram, S_data_ram_size, done_port, Sout_Rdata_ram, Sout_DataRdy);
  parameter MEM_var_28859_28863=64, MEM_var_28861_28867=32, MEM_var_28984_28863=32;
  // IN
  input clock;
  input reset;
  input start_port;
  input [1:0] S_oe_ram;
  input [1:0] S_we_ram;
  input [13:0] S_addr_ram;
  input [15:0] S_Wdata_ram;
  input [7:0] S_data_ram_size;
  // OUT
  output done_port;
  output [15:0] Sout_Rdata_ram;
  output [1:0] Sout_DataRdy;
  // Component and signal declarations
  
  _main #(.MEM_var_28859_28863(MEM_var_28859_28863), .MEM_var_28861_28867(MEM_var_28861_28867), .MEM_var_28984_28863(MEM_var_28984_28863)) _main_i0 (.done_port(done_port), .Sout_Rdata_ram(Sout_Rdata_ram), .Sout_DataRdy(Sout_DataRdy), .clock(clock), .reset(reset), .start_port(start_port), .S_oe_ram(S_oe_ram), .S_we_ram(S_we_ram), .S_addr_ram(S_addr_ram), .S_Wdata_ram(S_Wdata_ram), .S_data_ram_size(S_data_ram_size), .Sin_Rdata_ram({8'b00000000, 8'b00000000}), .Sin_DataRdy({1'b0, 1'b0}));

endmodule


