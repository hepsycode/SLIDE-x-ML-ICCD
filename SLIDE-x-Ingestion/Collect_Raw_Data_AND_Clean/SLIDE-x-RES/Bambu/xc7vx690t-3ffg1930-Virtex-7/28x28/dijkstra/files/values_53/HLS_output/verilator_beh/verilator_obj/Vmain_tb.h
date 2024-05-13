// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _Vmain_tb_H_
#define _Vmain_tb_H_

#include "verilated.h"
#include "Vmain_tb__Inlines.h"
class Vmain_tb__Syms;

//----------

VL_MODULE(Vmain_tb) {
  public:
    // CELLS
    // Public to allow access to /*verilator_public*/ items;
    // otherwise the application code can consider these internals.
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(clock,0,0);
    //char	__VpadToAlign1[3];
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    VL_SIG8(v__DOT__compare_outputs,0,0);
    VL_SIG8(v__DOT__success,0,0);
    VL_SIG8(v__DOT___bambu_databyte_,7,0);
    VL_SIG8(v__DOT_____05Fstate,3,0);
    VL_SIG8(v__DOT_____05Fnext_state,3,0);
    VL_SIG8(v__DOT__start_results_comparison,0,0);
    VL_SIG8(v__DOT__next_start_port,0,0);
    VL_SIG8(v__DOT__reset,0,0);
    VL_SIG8(v__DOT__start_port,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28866_29524,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___present_state,3,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state,3,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_data_ram_size2_0,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_oe_ram3_0,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_we_ram4_0,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_data_ram_size2_,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_oe_ram3_,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_we_ram4_,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28861_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__bram_write,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28861_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__cs,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28861_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28861_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__we_ram_cs,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28861_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs_delayed,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__done_delayed_REG_signal_in,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_LOAD,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_STORE,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_LOAD,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__fuselector_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_STORE,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__fuselector_BMEMORY_CTRLN_85_i0_LOAD,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__fuselector_BMEMORY_CTRLN_85_i0_STORE,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_0_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_0_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_100_reg_0_0_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_103_reg_11_0_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_104_reg_12_0_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_108_reg_16_0_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_109_reg_17_0_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_115_reg_22_0_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_116_reg_23_0_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_117_reg_24_0_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_118_reg_25_0_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_120_reg_27_0_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_122_reg_29_0_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_127_reg_33_0_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_128_reg_34_0_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_132_reg_38_0_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_141_reg_6_0_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_141_reg_6_0_0_1,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_144_reg_9_0_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_1_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i0_1_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_5_ARRAY_1D_STD_BRAM_NN_SDS_BUS_0_i1_1_0_1,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_8_BMEMORY_CTRLN_85_i0_0_0_1,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_8_BMEMORY_CTRLN_85_i0_0_1_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_1,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_2,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_9_BMEMORY_CTRLN_85_i0_1_0_3,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_9_BMEMORY_CTRLN_85_i0_1_1_1,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__selector_MUX_9_BMEMORY_CTRLN_85_i0_1_2_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_1,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_10,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_11,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_12,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_13,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_14,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_15,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_16,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_17,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_18,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_19,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_2,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_20,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_21,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_22,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_23,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_24,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_25,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_27,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_28,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_29,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_3,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_30,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_31,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_32,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_33,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_34,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_35,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_36,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_38,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_39,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_4,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_41,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_42,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_5,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_6,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_7,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_8,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__wrenable_reg_9,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__out_MUX_100_reg_0_0_0_0,2,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__out_MUX_108_reg_16_0_0_0,4,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__out_MUX_118_reg_25_0_0_0,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__out_MUX_120_reg_27_0_0_0,4,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__out_MUX_122_reg_29_0_0_0,4,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__out_MUX_128_reg_34_0_0_0,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__out_MUX_132_reg_38_0_0_0,4,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__out_MUX_141_reg_6_0_0_1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__out_MUX_8_BMEMORY_CTRLN_85_i0_0_1_0,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__out_lt_expr_FU_16_16_16_90_i0_fu_dijkstraF_28863_29776,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__out_plus_expr_FU_8_8_8_95_i0_fu_dijkstraF_28863_29401,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_data_ram_size2_0,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_oe_ram3_0,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_we_ram4_0,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_data_ram_size2_0,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_data_ram_size2_,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_oe_ram3_,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_we_ram4_,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__bram_write,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__cs,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__we_ram_cs,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs_delayed,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_0__DOT__reg_out1,2,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_13__DOT__reg_out1,4,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_14__DOT__reg_out1,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_16__DOT__reg_out1,4,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_19__DOT__reg_out1,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_20__DOT__reg_out1,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_21__DOT__reg_out1,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_22__DOT__reg_out1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_23__DOT__reg_out1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_25__DOT__reg_out1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_27__DOT__reg_out1,4,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_28__DOT__reg_out1,4,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_29__DOT__reg_out1,4,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_32__DOT__reg_out1,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_34__DOT__reg_out1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_36__DOT__reg_out1,4,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_38__DOT__reg_out1,4,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_42__DOT__reg_out1,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_43__DOT__reg_out1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_44__DOT__reg_out1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_6__DOT__reg_out1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_7__DOT__reg_out1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_8__DOT__reg_out1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_9__DOT__reg_out1,4,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__done_delayed_REG__DOT__reg_out1,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__done_delayed_REG__DOT__reg_out1,0,0);
    VL_SIG16(v__DOT__M_Rdata_ram,15,0);
    VL_SIG16(v__DOT__mask,15,0);
    VL_SIG16(v__DOT__M_Rdata_ram_delayed_temporary,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_Wdata_ram0_0,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerSout_Rdata_ram6_0,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerSout_Rdata_ram6_1,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerSout_Rdata_ram6_0,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_Wdata_ram0_,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerSout_Rdata_ram6_,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28861_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__S_Wdata_ram_int,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28861_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__din_value_aggregated,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28861_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__dout_a,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__out_MUX_9_BMEMORY_CTRLN_85_i0_1_2_0,10,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__out_ui_pointer_plus_expr_FU_16_16_16_122_i0_fu_dijkstraF_28863_29370,11,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_Wdata_ram0_0,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__sig_in_bus_mergerSout_Rdata_ram6_0,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_Wdata_ram0_0,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerSout_Rdata_ram6_0,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_Wdata_ram0_,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__sig_out_bus_mergerSout_Rdata_ram6_,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory_addr_a,9,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__S_Wdata_ram_int,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__din_value_aggregated,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__dout_a,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_1__DOT__reg_out1,10,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_26__DOT__reg_out1,14,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_30__DOT__reg_out1,8,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_35__DOT__reg_out1,11,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_37__DOT__reg_out1,12,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_40__DOT__reg_out1,12,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_5__DOT__reg_out1,10,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__reg_0__DOT__reg_out1,10,0);
    VL_SIG(v__DOT__res_file,31,0);
    VL_SIG(v__DOT__file,31,0);
    VL_SIG(v__DOT___r_,31,0);
    VL_SIG(v__DOT___n_,31,0);
    VL_SIG(v__DOT___addr_i_,31,0);
    VL_SIG(v__DOT___ch_,31,0);
    VL_SIGW(v__DOT__line,8000,0,251);
    VL_SIG(v__DOT__base_addr,31,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_addr_ram1_0,21,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_,21,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28861_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory_addr_a,17,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28861_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__relative_addr,21,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__out_MUX_103_reg_11_0_0_0,31,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__out_MUX_104_reg_12_0_0_0,31,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__out_MUX_109_reg_17_0_0_0,31,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__out_MUX_117_reg_24_0_0_0,31,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__out_MUX_127_reg_33_0_0_0,31,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__out_ui_pointer_plus_expr_FU_32_32_32_124_i0_fu_dijkstraF_28863_29545,31,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_addr_ram1_0,21,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_addr_ram1_0,21,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_,21,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__tmp_addr,21,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__relative_addr,21,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_10__DOT__reg_out1,31,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_11__DOT__reg_out1,31,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_12__DOT__reg_out1,31,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_15__DOT__reg_out1,31,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_17__DOT__reg_out1,31,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_18__DOT__reg_out1,31,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_2__DOT__reg_out1,31,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_24__DOT__reg_out1,31,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_3__DOT__reg_out1,31,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_31__DOT__reg_out1,31,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_33__DOT__reg_out1,31,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_39__DOT__reg_out1,31,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_4__DOT__reg_out1,31,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__reg_41__DOT__reg_out1,31,0);
    //char	__VpadToAlign1372[4];
    VL_SIG64(v__DOT__startTime,63,0);
    VL_SIG64(v__DOT__endTime,63,0);
    VL_SIG64(v__DOT__sim_time,63,0);
    VL_SIG64(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Controller_i__DOT___present_state,34,0);
    VL_SIG64(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Controller_i__DOT___next_state,34,0);
    VL_SIG8(v__DOT___bambu_testbench_mem_[1],7,0);
    //char	__VpadToAlign1417[7];
    VL_SIG(v__DOT__reg_DataReady[2],31,0);
    VL_SIG16(v__DOT__M_Rdata_ram_delayed[1],15,0);
    //char	__VpadToAlign1434[6];
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28861_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory[441],7,0);
    //char	__VpadToAlign1881[7];
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory[21],7,0);
    //char	__VpadToAlign1909[3];
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    static VL_ST_SIG8(__Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[64],0,0);
    static VL_ST_SIG8(__Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28866_29524[64],0,0);
    static VL_ST_SIG8(__Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[64],0,0);
    static VL_ST_SIG8(__Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[64],3,0);
    VL_SIG8(v__DOT____Vlvbound2,7,0);
    VL_SIG8(v__DOT____Vlvbound3,7,0);
    VL_SIG8(v__DOT____Vlvbound4,7,0);
    VL_SIG8(v__DOT____Vlvbound5,7,0);
    VL_SIG8(v__DOT____Vlvbound7,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28861_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT____Vlvbound1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28861_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT____Vlvbound2,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT____Vcellinp__array_28859_0__sel_STORE,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT____Vcellinp__array_28859_0__sel_LOAD,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT____Vlvbound1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT____Vlvbound2,7,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__2__Vfuncout,7,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__2__m,7,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__2__res,7,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__3__Vfuncout,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__3__m,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__3__res,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__4__Vfuncout,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__4__m,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__4__res,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__9__Vfuncout,7,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__9__m,7,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__9__res,7,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__10__Vfuncout,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__10__m,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__10__res,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__11__Vfuncout,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__11__m,1,0);
    VL_SIG8(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__11__res,1,0);
    VL_SIG8(__Vtableidx1,5,0);
    VL_SIG8(__Vclklast__TOP__clock,0,0);
    //char	__VpadToAlign1947[1];
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT____Vcellout__BMEMORY_CTRLN_85_i0__out1,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT____Vcellinp__array_28859_0__in1,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT____Vcellout__array_28859_0__out1,15,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__0__Vfuncout,15,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__0__m,15,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__0__res,15,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerSout_Rdata_ram6___DOT__merge__6__Vfuncout,15,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerSout_Rdata_ram6___DOT__merge__6__res,15,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__7__Vfuncout,15,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__7__m,15,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__7__res,15,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__bus_mergerSout_Rdata_ram6___DOT__merge__13__Vfuncout,15,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__bus_mergerSout_Rdata_ram6___DOT__merge__13__m,15,0);
    VL_SIG16(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__bus_mergerSout_Rdata_ram6___DOT__merge__13__res,15,0);
    VL_SIG(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT____Vcellinp__array_28859_0__in2,21,0);
    VL_SIG(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__1__Vfuncout,21,0);
    VL_SIG(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__1__m,21,0);
    VL_SIG(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__1__res,21,0);
    VL_SIG(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerSout_Rdata_ram6___DOT__merge__6__m,31,0);
    VL_SIG(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__8__Vfuncout,21,0);
    VL_SIG(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__8__m,21,0);
    VL_SIG(__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28866_29524__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__8__res,21,0);
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    //char	__VpadToAlign2012[4];
    Vmain_tb__Syms*	__VlSymsp;		// Symbol table
    
    // PARAMETERS
    // Parameters marked /*verilator public*/ for use by application code
    
    // CONSTRUCTORS
  private:
    Vmain_tb& operator= (const Vmain_tb&);	///< Copying not allowed
    Vmain_tb(const Vmain_tb&);	///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible WRT DPI scope names.
    Vmain_tb(const char* name="TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~Vmain_tb();
    
    // USER METHODS
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval();
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
  private:
    static void _eval_initial_loop(Vmain_tb__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(Vmain_tb__Syms* symsp, bool first);
  private:
    static QData	_change_request(Vmain_tb__Syms* __restrict vlSymsp);
  public:
    static void	_eval(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_eval_initial(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_eval_settle(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_initial__TOP__1(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_initial__TOP__5(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_initial__TOP__9(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__10(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__12(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__14(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__16(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__18(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__20(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__22(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__3(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__4(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__7(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_settle__TOP__11(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_settle__TOP__13(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_settle__TOP__15(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_settle__TOP__17(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_settle__TOP__19(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_settle__TOP__2(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_settle__TOP__21(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_settle__TOP__23(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_settle__TOP__6(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_settle__TOP__8(Vmain_tb__Syms* __restrict vlSymsp);
} VL_ATTR_ALIGNED(128);

#endif  /*guard*/
