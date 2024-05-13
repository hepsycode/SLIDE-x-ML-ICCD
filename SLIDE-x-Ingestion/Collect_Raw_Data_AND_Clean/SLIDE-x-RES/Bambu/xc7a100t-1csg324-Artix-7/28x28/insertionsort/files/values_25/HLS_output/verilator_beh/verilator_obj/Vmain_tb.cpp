// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vmain_tb.h for the primary calling header

#include "Vmain_tb.h"          // For This
#include "Vmain_tb__Syms.h"

//--------------------
// STATIC VARIABLES

VL_ST_SIG8(Vmain_tb::__Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[64],0,0);
VL_ST_SIG8(Vmain_tb::__Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[64],0,0);
VL_ST_SIG8(Vmain_tb::__Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[64],0,0);
VL_ST_SIG8(Vmain_tb::__Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[64],3,0);

//--------------------

VL_CTOR_IMP(Vmain_tb) {
    Vmain_tb__Syms* __restrict vlSymsp = __VlSymsp = new Vmain_tb__Syms(this, name());
    Vmain_tb* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    clock = VL_RAND_RESET_I(1);
    v__DOT__startTime = VL_RAND_RESET_Q(64);
    v__DOT__endTime = VL_RAND_RESET_Q(64);
    v__DOT__sim_time = VL_RAND_RESET_Q(64);
    v__DOT__res_file = 0;
    v__DOT__file = 0;
    v__DOT___r_ = VL_RAND_RESET_I(32);
    v__DOT___n_ = VL_RAND_RESET_I(32);
    v__DOT___addr_i_ = VL_RAND_RESET_I(32);
    v__DOT___ch_ = VL_RAND_RESET_I(32);
    v__DOT__compare_outputs = VL_RAND_RESET_I(1);
    v__DOT__success = VL_RAND_RESET_I(1);
    VL_RAND_RESET_W(8001,v__DOT__line);
    v__DOT__base_addr = VL_RAND_RESET_I(32);
    { int __Vi0=0; for (; __Vi0<1; ++__Vi0) {
	    v__DOT___bambu_testbench_mem_[__Vi0] = VL_RAND_RESET_I(8);
    }}
    v__DOT___bambu_databyte_ = VL_RAND_RESET_I(8);
    v__DOT_____05Fstate = VL_RAND_RESET_I(4);
    v__DOT_____05Fnext_state = VL_RAND_RESET_I(4);
    v__DOT__start_results_comparison = VL_RAND_RESET_I(1);
    v__DOT__next_start_port = VL_RAND_RESET_I(1);
    v__DOT__reset = VL_RAND_RESET_I(1);
    v__DOT__start_port = VL_RAND_RESET_I(1);
    v__DOT__M_Rdata_ram = VL_RAND_RESET_I(16);
    { int __Vi0=0; for (; __Vi0<2; ++__Vi0) {
	    v__DOT__reg_DataReady[__Vi0] = VL_RAND_RESET_I(32);
    }}
    v__DOT__mask = VL_RAND_RESET_I(16);
    v__DOT__M_Rdata_ram_delayed_temporary = VL_RAND_RESET_I(16);
    { int __Vi0=0; for (; __Vi0<1; ++__Vi0) {
	    v__DOT__M_Rdata_ram_delayed[__Vi0] = VL_RAND_RESET_I(16);
    }}
    v__DOT____Vlvbound2 = VL_RAND_RESET_I(8);
    v__DOT____Vlvbound3 = VL_RAND_RESET_I(8);
    v__DOT____Vlvbound4 = VL_RAND_RESET_I(8);
    v__DOT____Vlvbound5 = VL_RAND_RESET_I(8);
    v__DOT____Vlvbound7 = VL_RAND_RESET_I(8);
    v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039 = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0 = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___present_state = VL_RAND_RESET_I(4);
    v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state = VL_RAND_RESET_I(4);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_Wdata_ram0_0 = VL_RAND_RESET_I(16);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_addr_ram1_0 = VL_RAND_RESET_I(14);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_data_ram_size2_0 = VL_RAND_RESET_I(8);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_oe_ram3_0 = VL_RAND_RESET_I(2);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_we_ram4_0 = VL_RAND_RESET_I(2);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerSout_Rdata_ram6_0 = VL_RAND_RESET_I(16);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerSout_Rdata_ram6_0 = VL_RAND_RESET_I(16);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_Wdata_ram0_ = VL_RAND_RESET_I(16);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_ = VL_RAND_RESET_I(14);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_data_ram_size2_ = VL_RAND_RESET_I(8);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_oe_ram3_ = VL_RAND_RESET_I(2);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_we_ram4_ = VL_RAND_RESET_I(2);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerSout_Rdata_ram6_ = VL_RAND_RESET_I(16);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__bram_write = VL_RAND_RESET_I(2);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory_addr_a = VL_RAND_RESET_I(10);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__cs = VL_RAND_RESET_I(2);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs = VL_RAND_RESET_I(2);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__we_ram_cs = VL_RAND_RESET_I(2);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__S_Wdata_ram_int = VL_RAND_RESET_I(16);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__din_value_aggregated = VL_RAND_RESET_I(16);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__dout_a = VL_RAND_RESET_I(16);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__relative_addr = VL_RAND_RESET_I(14);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs_delayed = VL_RAND_RESET_I(2);
    { int __Vi0=0; for (; __Vi0<18; ++__Vi0) {
	    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory[__Vi0] = VL_RAND_RESET_I(8);
    }}
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT____Vlvbound1 = VL_RAND_RESET_I(8);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT____Vlvbound2 = VL_RAND_RESET_I(8);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__done_delayed_REG_signal_in = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_LOAD = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_STORE = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i1_LOAD = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_0_BMEMORY_CTRLN_20_i0_0_0_0 = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_1_BMEMORY_CTRLN_20_i0_1_0_0 = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_1_BMEMORY_CTRLN_20_i0_1_0_1 = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_23_reg_1_0_0_0 = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_0_0 = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_0_1 = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_1_0 = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_34_reg_7_0_0_0 = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_35_reg_8_0_0_0 = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_0 = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_1 = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_13 = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_14 = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_2 = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_3 = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_4 = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_5 = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_6 = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_7 = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_8 = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_9 = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state = VL_RAND_RESET_I(16);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = VL_RAND_RESET_I(16);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__out_MUX_0_BMEMORY_CTRLN_20_i0_0_0_0 = VL_RAND_RESET_I(8);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_Wdata_ram0_0 = VL_RAND_RESET_I(16);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_addr_ram1_0 = VL_RAND_RESET_I(14);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_data_ram_size2_0 = VL_RAND_RESET_I(8);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_oe_ram3_0 = VL_RAND_RESET_I(2);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_we_ram4_0 = VL_RAND_RESET_I(2);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_Wdata_ram0_0 = VL_RAND_RESET_I(16);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_addr_ram1_0 = VL_RAND_RESET_I(14);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_data_ram_size2_0 = VL_RAND_RESET_I(8);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_Wdata_ram0_ = VL_RAND_RESET_I(16);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_ = VL_RAND_RESET_I(14);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_data_ram_size2_ = VL_RAND_RESET_I(8);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_oe_ram3_ = VL_RAND_RESET_I(2);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_we_ram4_ = VL_RAND_RESET_I(2);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellinp__BMEMORY_CTRLN_20_i0__sel_LOAD = VL_RAND_RESET_I(2);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellinp__BMEMORY_CTRLN_20_i0__in2 = VL_RAND_RESET_I(14);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellout__BMEMORY_CTRLN_20_i0__out1 = VL_RAND_RESET_I(16);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_0__DOT__reg_out1 = VL_RAND_RESET_I(8);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_1__DOT__reg_out1 = VL_RAND_RESET_I(8);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_10__DOT__reg_out1 = VL_RAND_RESET_I(7);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_11__DOT__reg_out1 = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_12__DOT__reg_out1 = VL_RAND_RESET_I(7);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_13__DOT__reg_out1 = VL_RAND_RESET_I(8);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_14__DOT__reg_out1 = VL_RAND_RESET_I(8);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_2__DOT__reg_out1 = VL_RAND_RESET_I(8);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_3__DOT__reg_out1 = VL_RAND_RESET_I(8);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_4__DOT__reg_out1 = VL_RAND_RESET_I(7);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_5__DOT__reg_out1 = VL_RAND_RESET_I(7);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_6__DOT__reg_out1 = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_7__DOT__reg_out1 = VL_RAND_RESET_I(8);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_8__DOT__reg_out1 = VL_RAND_RESET_I(31);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_9__DOT__reg_out1 = VL_RAND_RESET_I(32);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__done_delayed_REG__DOT__reg_out1 = VL_RAND_RESET_I(1);
    v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__reg_0__DOT__reg_out1 = VL_RAND_RESET_I(32);
    v__DOT__main__DOT___main_i0__DOT__done_delayed_REG__DOT__reg_out1 = VL_RAND_RESET_I(1);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__0__Vfuncout = VL_RAND_RESET_I(16);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__0__m = VL_RAND_RESET_I(16);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__0__res = VL_RAND_RESET_I(16);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__1__Vfuncout = VL_RAND_RESET_I(14);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__1__m = VL_RAND_RESET_I(14);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__1__res = VL_RAND_RESET_I(14);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__2__Vfuncout = VL_RAND_RESET_I(8);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__2__m = VL_RAND_RESET_I(8);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__2__res = VL_RAND_RESET_I(8);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__3__Vfuncout = VL_RAND_RESET_I(2);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__3__m = VL_RAND_RESET_I(2);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__3__res = VL_RAND_RESET_I(2);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__4__Vfuncout = VL_RAND_RESET_I(2);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__4__m = VL_RAND_RESET_I(2);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__4__res = VL_RAND_RESET_I(2);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerSout_Rdata_ram6___DOT__merge__6__Vfuncout = VL_RAND_RESET_I(16);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerSout_Rdata_ram6___DOT__merge__6__m = VL_RAND_RESET_I(16);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerSout_Rdata_ram6___DOT__merge__6__res = VL_RAND_RESET_I(16);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__7__Vfuncout = VL_RAND_RESET_I(16);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__7__m = VL_RAND_RESET_I(16);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__7__res = VL_RAND_RESET_I(16);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__8__Vfuncout = VL_RAND_RESET_I(14);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__8__m = VL_RAND_RESET_I(14);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__8__res = VL_RAND_RESET_I(14);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__9__Vfuncout = VL_RAND_RESET_I(8);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__9__m = VL_RAND_RESET_I(8);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__9__res = VL_RAND_RESET_I(8);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__10__Vfuncout = VL_RAND_RESET_I(2);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__10__m = VL_RAND_RESET_I(2);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__10__res = VL_RAND_RESET_I(2);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__11__Vfuncout = VL_RAND_RESET_I(2);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__11__m = VL_RAND_RESET_I(2);
    __Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__11__res = VL_RAND_RESET_I(2);
    __Vtableidx1 = VL_RAND_RESET_I(6);
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[0] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[1] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[2] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[3] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[4] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[5] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[6] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[7] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[8] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[9] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[10] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[11] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[12] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[13] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[14] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[15] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[16] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[17] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[18] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[19] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[20] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[21] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[22] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[23] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[24] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[25] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[26] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[27] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[28] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[29] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[30] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[31] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[32] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[33] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[34] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[35] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[36] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[37] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[38] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[39] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[40] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[41] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[42] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[43] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[44] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[45] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[46] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[47] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[48] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[49] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[50] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[51] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[52] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[53] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[54] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[55] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[56] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[57] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[58] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[59] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[60] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[61] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[62] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[63] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[0] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[1] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[2] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[3] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[4] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[5] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[6] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[7] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[8] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[9] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[10] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[11] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[12] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[13] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[14] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[15] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[16] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[17] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[18] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[19] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[20] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[21] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[22] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[23] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[24] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[25] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[26] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[27] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[28] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[29] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[30] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[31] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[32] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[33] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[34] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[35] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[36] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[37] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[38] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[39] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[40] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[41] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[42] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[43] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[44] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[45] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[46] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[47] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[48] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[49] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[50] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[51] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[52] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[53] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[54] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[55] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[56] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[57] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[58] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[59] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[60] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[61] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[62] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039[63] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[0] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[1] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[2] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[3] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[4] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[5] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[6] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[7] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[8] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[9] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[10] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[11] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[12] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[13] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[14] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[15] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[16] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[17] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[18] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[19] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[20] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[21] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[22] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[23] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[24] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[25] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[26] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[27] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[28] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[29] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[30] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[31] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[32] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[33] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[34] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[35] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[36] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[37] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[38] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[39] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[40] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[41] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[42] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[43] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[44] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[45] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[46] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[47] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[48] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[49] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[50] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[51] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[52] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[53] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[54] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[55] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[56] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[57] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[58] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[59] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[60] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[61] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[62] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[63] = 0U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[0] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[1] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[2] = 4U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[3] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[4] = 4U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[5] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[6] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[7] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[8] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[9] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[10] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[11] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[12] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[13] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[14] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[15] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[16] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[17] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[18] = 8U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[19] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[20] = 8U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[21] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[22] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[23] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[24] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[25] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[26] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[27] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[28] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[29] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[30] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[31] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[32] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[33] = 2U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[34] = 4U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[35] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[36] = 4U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[37] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[38] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[39] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[40] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[41] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[42] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[43] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[44] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[45] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[46] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[47] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[48] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[49] = 2U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[50] = 8U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[51] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[52] = 8U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[53] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[54] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[55] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[56] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[57] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[58] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[59] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[60] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[61] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[62] = 1U;
    __Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[63] = 1U;
    __Vclklast__TOP__clock = VL_RAND_RESET_I(1);
}

void Vmain_tb::__Vconfigure(Vmain_tb__Syms* vlSymsp, bool first) {
    if (0 && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
}

Vmain_tb::~Vmain_tb() {
    delete __VlSymsp; __VlSymsp=NULL;
}

//--------------------


void Vmain_tb::eval() {
    Vmain_tb__Syms* __restrict vlSymsp = this->__VlSymsp; // Setup global symbol table
    Vmain_tb* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    VL_DEBUG_IF(VL_PRINTF("\n----TOP Evaluate Vmain_tb::eval\n"); );
    int __VclockLoop = 0;
    QData __Vchange=1;
    while (VL_LIKELY(__Vchange)) {
	VL_DEBUG_IF(VL_PRINTF(" Clock loop\n"););
	vlSymsp->__Vm_activity = true;
	_eval(vlSymsp);
	__Vchange = _change_request(vlSymsp);
	if (++__VclockLoop > 100) vl_fatal(__FILE__,__LINE__,__FILE__,"Verilated model didn't converge");
    }
}

void Vmain_tb::_eval_initial_loop(Vmain_tb__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    _eval_initial(vlSymsp);
    vlSymsp->__Vm_activity = true;
    int __VclockLoop = 0;
    QData __Vchange=1;
    while (VL_LIKELY(__Vchange)) {
	_eval_settle(vlSymsp);
	_eval(vlSymsp);
	__Vchange = _change_request(vlSymsp);
	if (++__VclockLoop > 100) vl_fatal(__FILE__,__LINE__,__FILE__,"Verilated model didn't DC converge");
    }
}

//--------------------
// Internal Methods

void Vmain_tb::_initial__TOP__1(Vmain_tb__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vmain_tb::_initial__TOP__1\n"); );
    Vmain_tb* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // INITIAL at top.v:155
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__dout_a = 0U;
    // INITIAL at top.v:163
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs_delayed = 0U;
    // INITIAL at top.v:526
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_10__DOT__reg_out1 = 0U;
    // INITIAL at top.v:526
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_12__DOT__reg_out1 = 0U;
    // INITIAL at top.v:74
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_4__DOT__reg_out1 = 0U;
    // INITIAL at top.v:74
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_5__DOT__reg_out1 = 0U;
    // INITIAL at top.v:526
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_11__DOT__reg_out1 = 0U;
    // INITIAL at top.v:74
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_6__DOT__reg_out1 = 0U;
    // INITIAL at top.v:74
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_0__DOT__reg_out1 = 0U;
    // INITIAL at top.v:74
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_7__DOT__reg_out1 = 0U;
    // INITIAL at top.v:1384
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__done_delayed_REG__DOT__reg_out1 = 0U;
}

VL_INLINE_OPT void Vmain_tb::_sequent__TOP__2(Vmain_tb__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vmain_tb::_sequent__TOP__2\n"); );
    Vmain_tb* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    VL_SIG8(__Vdlyvlsb__v__DOT__M_Rdata_ram_delayed__v0,3,0);
    VL_SIG8(__Vdlyvval__v__DOT__M_Rdata_ram_delayed__v0,7,0);
    VL_SIG8(__Vdlyvlsb__v__DOT__M_Rdata_ram_delayed__v1,3,0);
    VL_SIG8(__Vdlyvval__v__DOT__M_Rdata_ram_delayed__v1,7,0);
    VL_SIG8(__Vdlyvdim0__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory__v0,4,0);
    VL_SIG8(__Vdlyvval__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory__v0,7,0);
    VL_SIG8(__Vdlyvset__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory__v0,0,0);
    VL_SIG8(__Vdlyvdim0__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory__v1,4,0);
    VL_SIG8(__Vdlyvval__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory__v1,7,0);
    VL_SIG8(__Vdlyvset__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory__v1,0,0);
    VL_SIG8(__Vdly__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_14__DOT__reg_out1,7,0);
    VL_SIG8(__Vdly__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_2__DOT__reg_out1,7,0);
    VL_SIG(__Vdly__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_8__DOT__reg_out1,30,0);
    // Body
    __Vdlyvset__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory__v0 = 0U;
    __Vdlyvset__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory__v1 = 0U;
    __Vdly__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_2__DOT__reg_out1 
	= vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_2__DOT__reg_out1;
    __Vdly__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_8__DOT__reg_out1 
	= vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_8__DOT__reg_out1;
    __Vdly__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_14__DOT__reg_out1 
	= vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_14__DOT__reg_out1;
    // ALWAYS at HLS_output//simulation/testbench_main_tb.v:460
    if (VL_UNLIKELY(((VL_ITOR_D_I(((IData)(VL_TIME_Q()) 
				   - (IData)(vlTOPp->v__DOT__startTime))) 
		      / 5.0) > 2.00000000000000000e+08))) {
	VL_WRITEF("Simulation not completed into   200000000 cycles\n");
	VL_FWRITEF(vlTOPp->v__DOT__res_file,"X\t");
	VL_FWRITEF(vlTOPp->v__DOT__res_file,"  200000000\n");
	VL_FCLOSE_I(vlTOPp->v__DOT__res_file); vlTOPp->v__DOT__res_file=0;
	VL_FCLOSE_I(vlTOPp->v__DOT__file); vlTOPp->v__DOT__file=0;
	vl_finish("HLS_output//simulation/testbench_main_tb.v",469,"");
    }
    // ALWAYS at HLS_output//simulation/testbench_main_tb.v:334
    if (VL_UNLIKELY((1U & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_we_ram4_) 
			   & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_oe_ram3_))))) {
	VL_WRITEF("ERROR - Mout_we_ram and Mout_oe_ram both enabled\n");
	VL_FCLOSE_I(vlTOPp->v__DOT__res_file); vlTOPp->v__DOT__res_file=0;
	VL_FCLOSE_I(vlTOPp->v__DOT__file); vlTOPp->v__DOT__file=0;
	vl_finish("HLS_output//simulation/testbench_main_tb.v",342,"");
    }
    if (VL_UNLIKELY((2U & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_we_ram4_) 
			   & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_oe_ram3_))))) {
	VL_WRITEF("ERROR - Mout_we_ram and Mout_oe_ram both enabled\n");
	VL_FCLOSE_I(vlTOPp->v__DOT__res_file); vlTOPp->v__DOT__res_file=0;
	VL_FCLOSE_I(vlTOPp->v__DOT__file); vlTOPp->v__DOT__file=0;
	vl_finish("HLS_output//simulation/testbench_main_tb.v",350,"");
    }
    // ALWAYS at HLS_output//simulation/testbench_main_tb.v:202
    if (VL_UNLIKELY(vlTOPp->v__DOT__next_start_port)) {
	vlTOPp->v__DOT___ch_ = (vlTOPp->v__DOT__file ? fgetc(VL_CVT_I_FP(vlTOPp->v__DOT__file)) : -1);
	vlTOPp->v__DOT__startTime = VL_TIME_Q();
	if (VL_UNLIKELY((vlTOPp->v__DOT__file ? feof(VL_CVT_I_FP(vlTOPp->v__DOT__file)) : true))) {
	    VL_WRITEF("No more values found. Simulation(s) executed: %11d.\n\n",
		      32,vlTOPp->v__DOT___n_);
	    VL_FCLOSE_I(vlTOPp->v__DOT__res_file); vlTOPp->v__DOT__res_file=0;
	    VL_FCLOSE_I(vlTOPp->v__DOT__file); vlTOPp->v__DOT__file=0;
	    vl_finish("HLS_output//simulation/testbench_main_tb.v",213,"");
	}
	while ((((0x2fU == vlTOPp->v__DOT___ch_) | 
		 (0xaU == vlTOPp->v__DOT___ch_)) | 
		(0x62U == vlTOPp->v__DOT___ch_))) {
	    vlTOPp->v__DOT___r_ = ((0x62U == vlTOPp->v__DOT___ch_)
				    ? VL_FSCANF_IX(vlTOPp->v__DOT__file,"%b\n",
						   32,
						   &(vlTOPp->v__DOT__base_addr)) 
				    : VL_FGETS_IXI(8001, &(vlTOPp->v__DOT__line), vlTOPp->v__DOT__file));
	    vlTOPp->v__DOT___ch_ = (vlTOPp->v__DOT__file ? fgetc(VL_CVT_I_FP(vlTOPp->v__DOT__file)) : -1);
	}
	while ((((0x2fU == vlTOPp->v__DOT___ch_) | 
		 (0xaU == vlTOPp->v__DOT___ch_)) | 
		(0x6dU == vlTOPp->v__DOT___ch_))) {
	    if ((0x6dU == vlTOPp->v__DOT___ch_)) {
		vlTOPp->v__DOT___r_ = VL_FSCANF_IX(vlTOPp->v__DOT__file,"%b\n",
						   8,
						   &(vlTOPp->v__DOT___bambu_databyte_)) ;
		vlTOPp->v__DOT____Vlvbound2 = vlTOPp->v__DOT___bambu_databyte_;
		if ((0U >= (1U & vlTOPp->v__DOT___addr_i_))) {
		    vlTOPp->v__DOT___bambu_testbench_mem_[(1U 
							   & vlTOPp->v__DOT___addr_i_)] 
			= vlTOPp->v__DOT____Vlvbound2;
		}
		vlTOPp->v__DOT___addr_i_ = ((IData)(1U) 
					    + vlTOPp->v__DOT___addr_i_);
	    } else {
		vlTOPp->v__DOT___r_ = VL_FGETS_IXI(8001, &(vlTOPp->v__DOT__line), vlTOPp->v__DOT__file);
	    }
	    vlTOPp->v__DOT___ch_ = (vlTOPp->v__DOT__file ? fgetc(VL_CVT_I_FP(vlTOPp->v__DOT__file)) : -1);
	}
	VL_WRITEF("Reading of vector values from input file completed. Simulation started.\n");
    }
    // ALWAYS at HLS_output//simulation/testbench_main_tb.v:250
    if ((((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_we_ram4_) 
	  & (vlTOPp->v__DOT__base_addr <= (0x7fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_)))) 
	 & ((0x7fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_)) 
	    < ((IData)(1U) + vlTOPp->v__DOT__base_addr)))) {
	vlTOPp->v__DOT____Vlvbound3 = (0xffU & (((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_Wdata_ram0_) 
						 & (IData)(vlTOPp->v__DOT__mask)) 
						| (((0U 
						     >= 
						     (1U 
						      & ((0x7fU 
							  & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_)) 
							 - vlTOPp->v__DOT__base_addr)))
						     ? 
						    vlTOPp->v__DOT___bambu_testbench_mem_
						    [
						    (1U 
						     & ((0x7fU 
							 & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_)) 
							- vlTOPp->v__DOT__base_addr))]
						     : 0U) 
						   & (~ (IData)(vlTOPp->v__DOT__mask)))));
	if ((0U >= (1U & ((0x7fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_)) 
			  - vlTOPp->v__DOT__base_addr)))) {
	    vlTOPp->v__DOT___bambu_testbench_mem_[(1U 
						   & ((0x7fU 
						       & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_)) 
						      - vlTOPp->v__DOT__base_addr))] 
		= vlTOPp->v__DOT____Vlvbound3;
	}
    }
    if (((((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_we_ram4_) 
	   >> 1U) & (vlTOPp->v__DOT__base_addr <= (0x7fU 
						   & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_) 
						      >> 7U)))) 
	 & ((0x7fU & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_) 
		      >> 7U)) < ((IData)(1U) + vlTOPp->v__DOT__base_addr)))) {
	vlTOPp->v__DOT____Vlvbound4 = (0xffU & ((((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_Wdata_ram0_) 
						  & (IData)(vlTOPp->v__DOT__mask)) 
						 >> 8U) 
						| (((0U 
						     >= 
						     (1U 
						      & ((0x7fU 
							  & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_) 
							     >> 7U)) 
							 - vlTOPp->v__DOT__base_addr)))
						     ? 
						    vlTOPp->v__DOT___bambu_testbench_mem_
						    [
						    (1U 
						     & ((0x7fU 
							 & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_) 
							    >> 7U)) 
							- vlTOPp->v__DOT__base_addr))]
						     : 0U) 
						   & (~ 
						      ((IData)(vlTOPp->v__DOT__mask) 
						       >> 8U)))));
	if ((0U >= (1U & ((0x7fU & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_) 
				    >> 7U)) - vlTOPp->v__DOT__base_addr)))) {
	    vlTOPp->v__DOT___bambu_testbench_mem_[(1U 
						   & ((0x7fU 
						       & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_) 
							  >> 7U)) 
						      - vlTOPp->v__DOT__base_addr))] 
		= vlTOPp->v__DOT____Vlvbound4;
	}
    }
    // ALWAYS at top.v:314
    if ((1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__bram_write))) {
	vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT____Vlvbound1 
	    = (0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__din_value_aggregated));
	if ((0x11U >= (0x1fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory_addr_a)))) {
	    __Vdlyvval__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory__v0 
		= vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT____Vlvbound1;
	    __Vdlyvset__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory__v0 = 1U;
	    __Vdlyvdim0__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory__v0 
		= (0x1fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory_addr_a));
	}
    }
    // ALWAYS at top.v:328
    if ((2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__bram_write))) {
	vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT____Vlvbound2 
	    = (0xffU & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__din_value_aggregated) 
			>> 8U));
	if ((0x11U >= (0x1fU & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory_addr_a) 
				>> 5U)))) {
	    __Vdlyvval__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory__v1 
		= vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT____Vlvbound2;
	    __Vdlyvset__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory__v1 = 1U;
	    __Vdlyvdim0__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory__v1 
		= (0x1fU & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory_addr_a) 
			    >> 5U));
	}
    }
    // ALWAYS at HLS_output//simulation/testbench_main_tb.v:443
    vlTOPp->v__DOT_____05Fstate = vlTOPp->v__DOT_____05Fnext_state;
    // ALWAYS at HLS_output//simulation/testbench_main_tb.v:267
    vlTOPp->v__DOT____Vlvbound5 = (0xffU & (IData)(vlTOPp->v__DOT__M_Rdata_ram_delayed_temporary));
    __Vdlyvval__v__DOT__M_Rdata_ram_delayed__v0 = vlTOPp->v__DOT____Vlvbound5;
    __Vdlyvlsb__v__DOT__M_Rdata_ram_delayed__v0 = 0U;
    // ALWAYS at HLS_output//simulation/testbench_main_tb.v:279
    vlTOPp->v__DOT____Vlvbound7 = (0xffU & ((IData)(vlTOPp->v__DOT__M_Rdata_ram_delayed_temporary) 
					    >> 8U));
    __Vdlyvval__v__DOT__M_Rdata_ram_delayed__v1 = vlTOPp->v__DOT____Vlvbound7;
    __Vdlyvlsb__v__DOT__M_Rdata_ram_delayed__v1 = 8U;
    // ALWAYS at top.v:318
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__dout_a 
	= ((0xff00U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__dout_a)) 
	   | ((0x11U >= (0x1fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory_addr_a)))
	       ? vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory
	      [(0x1fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory_addr_a))]
	       : 0U));
    // ALWAYS at top.v:332
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__dout_a 
	= ((0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__dout_a)) 
	   | (((0x11U >= (0x1fU & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory_addr_a) 
				   >> 5U))) ? vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory
	       [(0x1fU & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory_addr_a) 
			  >> 5U))] : 0U) << 8U));
    // ALWAYS at top.v:361
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs_delayed 
	= ((IData)(vlTOPp->v__DOT__reset) ? ((2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs_delayed)) 
					     | (1U 
						& (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs)))
	    : (2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs_delayed)));
    // ALWAYS at top.v:361
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs_delayed 
	= ((IData)(vlTOPp->v__DOT__reset) ? ((1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs_delayed)) 
					     | (2U 
						& (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs)))
	    : (1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs_delayed)));
    // ALWAYS at top.v:528
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_10__DOT__reg_out1 
	= (0x7fU & ((IData)(1U) + (vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__reg_0__DOT__reg_out1 
				   + vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_8__DOT__reg_out1)));
    // ALWAYS at top.v:528
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_11__DOT__reg_out1 
	= (0U != vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_8__DOT__reg_out1);
    // ALWAYS at top.v:76
    if (vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_2) {
	__Vdly__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_2__DOT__reg_out1 
	    = (0xffU & ((IData)(1U) + (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_1__DOT__reg_out1)));
    }
    // ALWAYS at top.v:76
    if (vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_4) {
	vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_4__DOT__reg_out1 
	    = (0x7fU & (vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__reg_0__DOT__reg_out1 
			+ (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_14__DOT__reg_out1)));
    }
    // ALWAYS at top.v:528
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_12__DOT__reg_out1 
	= (0x7fU & (vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__reg_0__DOT__reg_out1 
		    + vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_9__DOT__reg_out1));
    // ALWAYS at top.v:76
    if (vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_6) {
	vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_6__DOT__reg_out1 
	    = (0x12U > (0xffU & ((IData)(1U) + (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_14__DOT__reg_out1))));
    }
    // ALWAYS at top.v:1128
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state 
	= ((IData)(vlTOPp->v__DOT__reset) ? (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state)
	    : 1U);
    // ALWAYS at top.v:76
    if (vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_0) {
	vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_0__DOT__reg_out1 
	    = (0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellout__BMEMORY_CTRLN_20_i0__out1));
    }
    // ALWAYS at top.v:76
    if (vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_8) {
	__Vdly__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_8__DOT__reg_out1 
	    = (0x7fffffffU & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_35_reg_8_0_0_0)
			       ? (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_1__DOT__reg_out1)
			       : vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_9__DOT__reg_out1));
    }
    // ALWAYS at top.v:76
    if (vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_5) {
	vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_5__DOT__reg_out1 
	    = (0x7fU & (vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__reg_0__DOT__reg_out1 
			+ (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_1__DOT__reg_out1)));
    }
    // ALWAYS at top.v:76
    if (vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_14) {
	__Vdly__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_14__DOT__reg_out1 
	    = (0xffU & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_1_0)
			 ? ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_0_0)
			     ? (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_3__DOT__reg_out1)
			     : 1U) : ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_0_1)
				       ? ((IData)(1U) 
					  + vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_9__DOT__reg_out1)
				       : vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_8__DOT__reg_out1)));
    }
    // ALWAYS at HLS_output//simulation/testbench_main_tb.v:444
    vlTOPp->v__DOT__start_port = vlTOPp->v__DOT__next_start_port;
    // ALWAYS at top.v:1386
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__done_delayed_REG__DOT__reg_out1 
	= ((IData)(vlTOPp->v__DOT__reset) & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__done_delayed_REG_signal_in));
    // ALWAYS at top.v:1592
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___present_state 
	= ((IData)(vlTOPp->v__DOT__reset) ? (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state)
	    : 1U);
    // ALWAYS at top.v:76
    if (vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_7) {
	vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_7__DOT__reg_out1 
	    = (0xffU & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_34_reg_7_0_0_0)
			 ? (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_13__DOT__reg_out1)
			 : ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellout__BMEMORY_CTRLN_20_i0__out1) 
			    >> 8U)));
    }
    // ALWAYSPOST at HLS_output//simulation/testbench_main_tb.v:267
    vlTOPp->v__DOT__M_Rdata_ram_delayed[0U] = (((~ 
						 ((IData)(0xffU) 
						  << (IData)(__Vdlyvlsb__v__DOT__M_Rdata_ram_delayed__v0))) 
						& vlTOPp->v__DOT__M_Rdata_ram_delayed
						[0U]) 
					       | ((IData)(__Vdlyvval__v__DOT__M_Rdata_ram_delayed__v0) 
						  << (IData)(__Vdlyvlsb__v__DOT__M_Rdata_ram_delayed__v0)));
    vlTOPp->v__DOT__M_Rdata_ram_delayed[0U] = (((~ 
						 ((IData)(0xffU) 
						  << (IData)(__Vdlyvlsb__v__DOT__M_Rdata_ram_delayed__v1))) 
						& vlTOPp->v__DOT__M_Rdata_ram_delayed
						[0U]) 
					       | ((IData)(__Vdlyvval__v__DOT__M_Rdata_ram_delayed__v1) 
						  << (IData)(__Vdlyvlsb__v__DOT__M_Rdata_ram_delayed__v1)));
    // ALWAYSPOST at top.v:315
    if (__Vdlyvset__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory__v0) {
	vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory[__Vdlyvdim0__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory__v0] 
	    = __Vdlyvval__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory__v0;
    }
    if (__Vdlyvset__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory__v1) {
	vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory[__Vdlyvdim0__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory__v1] 
	    = __Vdlyvval__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory__v1;
    }
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerSout_Rdata_ram6_0 
	= ((0xff00U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerSout_Rdata_ram6_0)) 
	   | (0xffU & ((1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs_delayed))
		        ? (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__dout_a)
		        : 0U)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerSout_Rdata_ram6_0 
	= ((0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerSout_Rdata_ram6_0)) 
	   | (0xff00U & (((2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs_delayed))
			   ? ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__dout_a) 
			      >> 8U) : 0U) << 8U)));
    // ALWAYS at top.v:76
    if (vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_1) {
	vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_1__DOT__reg_out1 
	    = ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_23_reg_1_0_0_0)
	        ? (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_2__DOT__reg_out1)
	        : 0U);
    }
    // ALWAYS at top.v:76
    if (vlTOPp->v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0) {
	vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__reg_0__DOT__reg_out1 = 0x20U;
    }
    // ALWAYS at top.v:76
    if (vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_3) {
	vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_3__DOT__reg_out1 
	    = (0xffU & ((IData)(1U) + (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_14__DOT__reg_out1)));
    }
    // ALWAYS at top.v:76
    if (vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_9) {
	vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_9__DOT__reg_out1 
	    = ((IData)(0xffffffffU) + vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_8__DOT__reg_out1);
    }
    // ALWAYS at top.v:76
    if (vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_13) {
	vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_13__DOT__reg_out1 
	    = (0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellout__BMEMORY_CTRLN_20_i0__out1));
    }
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_2__DOT__reg_out1 
	= __Vdly__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_2__DOT__reg_out1;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_14__DOT__reg_out1 
	= __Vdly__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_14__DOT__reg_out1;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_8__DOT__reg_out1 
	= __Vdly__v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_8__DOT__reg_out1;
}

VL_INLINE_OPT void Vmain_tb::_sequent__TOP__3(Vmain_tb__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vmain_tb::_sequent__TOP__3\n"); );
    Vmain_tb* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // ALWAYS at HLS_output//simulation/testbench_main_tb.v:361
    if (VL_UNLIKELY(vlTOPp->v__DOT__start_results_comparison)) {
	if (VL_LIKELY(vlTOPp->v__DOT__compare_outputs)) {
	    VL_WRITEF("Simulation ended after %20u cycles.\n\n",
		      64,vlTOPp->v__DOT__sim_time);
	    if (vlTOPp->v__DOT__success) {
		VL_WRITEF("Simulation completed with success\n\n");
		VL_FWRITEF(vlTOPp->v__DOT__res_file,"1\t");
	    } else {
		VL_WRITEF("Simulation FAILED\n\n");
		VL_FWRITEF(vlTOPp->v__DOT__res_file,"0\t");
	    }
	} else {
	    VL_WRITEF("Simulation ended after %20u cycles (no expected outputs specified).\n\n",
		      64,vlTOPp->v__DOT__sim_time);
	    VL_FWRITEF(vlTOPp->v__DOT__res_file,"-\t");
	}
	VL_FWRITEF(vlTOPp->v__DOT__res_file,"%20u\n",
		   64,vlTOPp->v__DOT__sim_time);
    }
    // ALWAYS at HLS_output//simulation/testbench_main_tb.v:447
    if (vlTOPp->v__DOT__main__DOT___main_i0__DOT__done_delayed_REG__DOT__reg_out1) {
	vlTOPp->v__DOT__endTime = VL_TIME_Q();
	vlTOPp->v__DOT__sim_time = VL_EXTENDS_QI(64,32, 
						 VL_RTOI_I_D(
							     (((2.50000000000000000e+00 
								+ 
								VL_ITOR_D_I((IData)(vlTOPp->v__DOT__endTime))) 
							       - 
							       VL_ITOR_D_I((IData)(vlTOPp->v__DOT__startTime))) 
							      / 5.0)));
	vlTOPp->v__DOT__success = 1U;
	vlTOPp->v__DOT__compare_outputs = 0U;
    }
}

void Vmain_tb::_initial__TOP__4(Vmain_tb__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vmain_tb::_initial__TOP__4\n"); );
    Vmain_tb* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    VL_SIGW(__Vtemp2,159,0,5);
    // Body
    // INITIAL at top.v:169
    __Vtemp2[0U] = 0x2e6d656dU;
    __Vtemp2[1U] = 0x38383539U;
    __Vtemp2[2U] = 0x65665f32U;
    __Vtemp2[3U] = 0x61795f72U;
    __Vtemp2[4U] = 0x617272U;
    VL_READMEM_W (false,8,18, 0,5, __Vtemp2, vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory
		  ,0U,0x11U);
    // INITIAL at top.v:74
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_1__DOT__reg_out1 = 0U;
    // INITIAL at top.v:74
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__reg_0__DOT__reg_out1 = 0U;
    // INITIAL at top.v:74
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_3__DOT__reg_out1 = 0U;
    // INITIAL at top.v:74
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_9__DOT__reg_out1 = 0U;
    // INITIAL at top.v:74
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_13__DOT__reg_out1 = 0U;
    // INITIAL at top.v:74
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_2__DOT__reg_out1 = 0U;
    // INITIAL at top.v:74
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_14__DOT__reg_out1 = 0U;
    // INITIAL at top.v:74
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_8__DOT__reg_out1 = 0U;
    // INITIAL at top.v:1384
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__done_delayed_REG__DOT__reg_out1 = 0U;
}

void Vmain_tb::_settle__TOP__5(Vmain_tb__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vmain_tb::_settle__TOP__5\n"); );
    Vmain_tb* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerSout_Rdata_ram6_0 
	= ((0xff00U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerSout_Rdata_ram6_0)) 
	   | (0xffU & ((1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs_delayed))
		        ? (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__dout_a)
		        : 0U)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerSout_Rdata_ram6_0 
	= ((0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerSout_Rdata_ram6_0)) 
	   | (0xff00U & (((2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs_delayed))
			   ? ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__dout_a) 
			      >> 8U) : 0U) << 8U)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerSout_Rdata_ram6_0 
	= ((0xff00U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerSout_Rdata_ram6_0)) 
	   | (0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerSout_Rdata_ram6_0)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerSout_Rdata_ram6_0 
	= ((0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerSout_Rdata_ram6_0)) 
	   | (0xff00U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerSout_Rdata_ram6_0)));
}

VL_INLINE_OPT void Vmain_tb::_sequent__TOP__6(Vmain_tb__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vmain_tb::_sequent__TOP__6\n"); );
    Vmain_tb* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerSout_Rdata_ram6_0 
	= ((0xff00U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerSout_Rdata_ram6_0)) 
	   | (0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerSout_Rdata_ram6_0)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerSout_Rdata_ram6_0 
	= ((0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerSout_Rdata_ram6_0)) 
	   | (0xff00U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerSout_Rdata_ram6_0)));
    // ALWAYS at top.v:1386
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__done_delayed_REG__DOT__reg_out1 
	= ((IData)(vlTOPp->v__DOT__reset) & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in));
    // ALWAYS at top.v:722
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerSout_Rdata_ram6___DOT__merge__6__m 
	= vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerSout_Rdata_ram6_0;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerSout_Rdata_ram6___DOT__merge__6__res 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerSout_Rdata_ram6___DOT__merge__6__m;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerSout_Rdata_ram6___DOT__merge__6__Vfuncout 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerSout_Rdata_ram6___DOT__merge__6__res;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerSout_Rdata_ram6_ 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerSout_Rdata_ram6___DOT__merge__6__Vfuncout;
    // ALWAYS at top.v:1596
    vlTOPp->__Vtableidx1 = (((IData)(vlTOPp->v__DOT__start_port) 
			     << 5U) | (((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__done_delayed_REG__DOT__reg_out1) 
					<< 4U) | (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___present_state)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in 
	= vlTOPp->__Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in
	[vlTOPp->__Vtableidx1];
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039 
	= vlTOPp->__Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039
	[vlTOPp->__Vtableidx1];
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0 
	= vlTOPp->__Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0
	[vlTOPp->__Vtableidx1];
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state 
	= vlTOPp->__Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state
	[vlTOPp->__Vtableidx1];
    // ALWAYS at HLS_output//simulation/testbench_main_tb.v:391
    vlTOPp->v__DOT__start_results_comparison = 0U;
    vlTOPp->v__DOT__reset = 1U;
    vlTOPp->v__DOT__next_start_port = 0U;
    if ((0U == (IData)(vlTOPp->v__DOT_____05Fstate))) {
	vlTOPp->v__DOT__reset = 0U;
	vlTOPp->v__DOT_____05Fnext_state = 1U;
    } else {
	if ((1U == (IData)(vlTOPp->v__DOT_____05Fstate))) {
	    vlTOPp->v__DOT__reset = 0U;
	    vlTOPp->v__DOT_____05Fnext_state = 2U;
	} else {
	    if ((2U == (IData)(vlTOPp->v__DOT_____05Fstate))) {
		vlTOPp->v__DOT__next_start_port = 1U;
		vlTOPp->v__DOT_____05Fnext_state = 
		    ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__done_delayed_REG__DOT__reg_out1)
		      ? 4U : 3U);
	    } else {
		if ((3U == (IData)(vlTOPp->v__DOT_____05Fstate))) {
		    vlTOPp->v__DOT_____05Fnext_state 
			= ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__done_delayed_REG__DOT__reg_out1)
			    ? 4U : 3U);
		} else {
		    if ((4U == (IData)(vlTOPp->v__DOT_____05Fstate))) {
			vlTOPp->v__DOT__start_results_comparison = 1U;
			vlTOPp->v__DOT_____05Fnext_state = 5U;
		    } else {
			if (VL_UNLIKELY((5U == (IData)(vlTOPp->v__DOT_____05Fstate)))) {
			    VL_FCLOSE_I(vlTOPp->v__DOT__res_file); vlTOPp->v__DOT__res_file=0;
			    VL_FCLOSE_I(vlTOPp->v__DOT__file); vlTOPp->v__DOT__file=0;
			    vl_finish("HLS_output//simulation/testbench_main_tb.v",433,"");
			} else {
			    vlTOPp->v__DOT_____05Fnext_state = 0U;
			}
		    }
		}
	    }
	}
    }
}

void Vmain_tb::_settle__TOP__7(Vmain_tb__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vmain_tb::_settle__TOP__7\n"); );
    Vmain_tb* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // ALWAYS at top.v:722
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerSout_Rdata_ram6___DOT__merge__6__m 
	= vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerSout_Rdata_ram6_0;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerSout_Rdata_ram6___DOT__merge__6__res 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerSout_Rdata_ram6___DOT__merge__6__m;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerSout_Rdata_ram6___DOT__merge__6__Vfuncout 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerSout_Rdata_ram6___DOT__merge__6__res;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerSout_Rdata_ram6_ 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerSout_Rdata_ram6___DOT__merge__6__Vfuncout;
    // ALWAYS at top.v:1596
    vlTOPp->__Vtableidx1 = (((IData)(vlTOPp->v__DOT__start_port) 
			     << 5U) | (((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__done_delayed_REG__DOT__reg_out1) 
					<< 4U) | (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___present_state)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in 
	= vlTOPp->__Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in
	[vlTOPp->__Vtableidx1];
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039 
	= vlTOPp->__Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039
	[vlTOPp->__Vtableidx1];
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0 
	= vlTOPp->__Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0
	[vlTOPp->__Vtableidx1];
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state 
	= vlTOPp->__Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state
	[vlTOPp->__Vtableidx1];
    // ALWAYS at HLS_output//simulation/testbench_main_tb.v:391
    vlTOPp->v__DOT__start_results_comparison = 0U;
    vlTOPp->v__DOT__reset = 1U;
    vlTOPp->v__DOT__next_start_port = 0U;
    if ((0U == (IData)(vlTOPp->v__DOT_____05Fstate))) {
	vlTOPp->v__DOT__reset = 0U;
	vlTOPp->v__DOT_____05Fnext_state = 1U;
    } else {
	if ((1U == (IData)(vlTOPp->v__DOT_____05Fstate))) {
	    vlTOPp->v__DOT__reset = 0U;
	    vlTOPp->v__DOT_____05Fnext_state = 2U;
	} else {
	    if ((2U == (IData)(vlTOPp->v__DOT_____05Fstate))) {
		vlTOPp->v__DOT__next_start_port = 1U;
		vlTOPp->v__DOT_____05Fnext_state = 
		    ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__done_delayed_REG__DOT__reg_out1)
		      ? 4U : 3U);
	    } else {
		if ((3U == (IData)(vlTOPp->v__DOT_____05Fstate))) {
		    vlTOPp->v__DOT_____05Fnext_state 
			= ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__done_delayed_REG__DOT__reg_out1)
			    ? 4U : 3U);
		} else {
		    if ((4U == (IData)(vlTOPp->v__DOT_____05Fstate))) {
			vlTOPp->v__DOT__start_results_comparison = 1U;
			vlTOPp->v__DOT_____05Fnext_state = 5U;
		    } else {
			if (VL_UNLIKELY((5U == (IData)(vlTOPp->v__DOT_____05Fstate)))) {
			    VL_FCLOSE_I(vlTOPp->v__DOT__res_file); vlTOPp->v__DOT__res_file=0;
			    VL_FCLOSE_I(vlTOPp->v__DOT__file); vlTOPp->v__DOT__file=0;
			    vl_finish("HLS_output//simulation/testbench_main_tb.v",433,"");
			} else {
			    vlTOPp->v__DOT_____05Fnext_state = 0U;
			}
		    }
		}
	    }
	}
    }
    vlTOPp->v__DOT__M_Rdata_ram = ((0xff00U & (IData)(vlTOPp->v__DOT__M_Rdata_ram)) 
				   | (0xffU & (vlTOPp->v__DOT__M_Rdata_ram_delayed
					       [0U] 
					       | (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerSout_Rdata_ram6_))));
    vlTOPp->v__DOT__M_Rdata_ram = ((0xffU & (IData)(vlTOPp->v__DOT__M_Rdata_ram)) 
				   | (0xff00U & (vlTOPp->v__DOT__M_Rdata_ram_delayed
						 [0U] 
						 | (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerSout_Rdata_ram6_))));
    // ALWAYS at top.v:1134
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__done_delayed_REG_signal_in = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_LOAD = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_STORE = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i1_LOAD = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_0_BMEMORY_CTRLN_20_i0_0_0_0 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_1_BMEMORY_CTRLN_20_i0_1_0_0 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_1_BMEMORY_CTRLN_20_i0_1_0_1 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_23_reg_1_0_0_0 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_0_0 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_0_1 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_1_0 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_34_reg_7_0_0_0 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_35_reg_8_0_0_0 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_0 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_1 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_13 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_14 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_2 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_3 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_4 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_5 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_6 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_7 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_8 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_9 = 0U;
    if (((((((((1U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state)) 
	       | (0x8000U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) 
	      | (4U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) 
	     | (8U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) 
	    | (0x10U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) 
	   | (0x20U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) 
	  | (0x40U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) 
	 | (0x80U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state)))) {
	if ((1U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
	    if (vlTOPp->v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039) {
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_1_0 = 1U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_1 = 1U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_14 = 1U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 4U;
	    } else {
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_0_BMEMORY_CTRLN_20_i0_0_0_0 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_1_BMEMORY_CTRLN_20_i0_1_0_0 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_1_BMEMORY_CTRLN_20_i0_1_0_1 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_23_reg_1_0_0_0 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_0_0 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_0_1 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_1_0 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_34_reg_7_0_0_0 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_35_reg_8_0_0_0 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_0 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_1 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_13 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_14 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_2 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_3 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_4 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_5 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_6 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_7 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_8 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_9 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 1U;
	    }
	} else {
	    if ((0x8000U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_STORE = 1U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_1_BMEMORY_CTRLN_20_i0_1_0_0 = 1U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_2 = 1U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_3 = 1U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_4 = 1U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_5 = 1U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_6 = 1U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 8U;
	    } else {
		if ((4U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
		    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_2 = 1U;
		    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_3 = 1U;
		    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_4 = 1U;
		    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_5 = 1U;
		    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_6 = 1U;
		    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 8U;
		} else {
		    if ((8U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
			vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_LOAD = 1U;
			vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i1_LOAD = 1U;
			vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_1_BMEMORY_CTRLN_20_i0_1_0_0 = 1U;
			vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x10U;
		    } else {
			if ((0x10U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
			    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_0 = 1U;
			    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_7 = 1U;
			    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x20U;
			} else {
			    if ((0x20U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
				vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_35_reg_8_0_0_0 = 1U;
				vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_8 = 1U;
				if (VL_LTS_III(1,8,8, (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_0__DOT__reg_out1), (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_7__DOT__reg_out1))) {
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x40U;
				} else {
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x2000U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_35_reg_8_0_0_0 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_8 = 0U;
				}
			    } else {
				if ((0x40U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_9 = 1U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x80U;
				} else {
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_STORE = 1U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_0_BMEMORY_CTRLN_20_i0_0_0_0 = 1U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_1_BMEMORY_CTRLN_20_i0_1_0_1 = 1U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_14 = 1U;
				    if (vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_11__DOT__reg_out1) {
					vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x100U;
					vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_14 = 0U;
				    } else {
					vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x2000U;
				    }
				}
			    }
			}
		    }
		}
	    }
	}
    } else {
	if ((0x100U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
	    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x200U;
	} else {
	    if ((0x200U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_LOAD = 1U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x400U;
	    } else {
		if ((0x400U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
		    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_13 = 1U;
		    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x800U;
		} else {
		    if ((0x800U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
			vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_34_reg_7_0_0_0 = 1U;
			vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_7 = 1U;
			vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_8 = 1U;
			if (VL_LTS_III(1,8,8, (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_0__DOT__reg_out1), (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_13__DOT__reg_out1))) {
			    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x40U;
			} else {
			    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x1000U;
			    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_34_reg_7_0_0_0 = 0U;
			    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_7 = 0U;
			    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_8 = 0U;
			}
		    } else {
			if ((0x1000U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
			    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_0_1 = 1U;
			    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_14 = 1U;
			    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x2000U;
			} else {
			    if ((0x2000U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
				vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_23_reg_1_0_0_0 = 1U;
				vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_4 = 1U;
				vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_0_0 = 1U;
				vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_1_0 = 1U;
				vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_1 = 1U;
				vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_14 = 1U;
				if (vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_6__DOT__reg_out1) {
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x8000U;
				} else {
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 2U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__done_delayed_REG_signal_in = 1U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_23_reg_1_0_0_0 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_0_0 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_1_0 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_1 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_14 = 0U;
				}
			    } else {
				if ((2U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_STORE = 1U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_1_BMEMORY_CTRLN_20_i0_1_0_0 = 1U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 1U;
				} else {
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 1U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_0_BMEMORY_CTRLN_20_i0_0_0_0 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_1_BMEMORY_CTRLN_20_i0_1_0_0 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_1_BMEMORY_CTRLN_20_i0_1_0_1 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_23_reg_1_0_0_0 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_0_0 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_0_1 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_1_0 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_34_reg_7_0_0_0 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_35_reg_8_0_0_0 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_0 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_1 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_13 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_14 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_2 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_3 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_4 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_5 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_6 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_7 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_8 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_9 = 0U;
				}
			    }
			}
		    }
		}
	    }
	}
    }
}

void Vmain_tb::_initial__TOP__8(Vmain_tb__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vmain_tb::_initial__TOP__8\n"); );
    Vmain_tb* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    //char	__VpadToAlign180[4];
    VL_SIGW(__Vtemp3,287,0,9);
    //char	__VpadToAlign220[4];
    VL_SIGW(__Vtemp4,95,0,3);
    // Body
    // INITIAL at HLS_output//simulation/testbench_main_tb.v:153
    __Vtemp3[0U] = 0x2e747874U;
    __Vtemp3[1U] = 0x6c756573U;
    __Vtemp3[2U] = 0x6e2f7661U;
    __Vtemp3[3U] = 0x6174696fU;
    __Vtemp3[4U] = 0x696d756cU;
    __Vtemp3[5U] = 0x742f2f73U;
    __Vtemp3[6U] = 0x75747075U;
    __Vtemp3[7U] = 0x4c535f6fU;
    __Vtemp3[8U] = 0x48U;
    vlTOPp->v__DOT__file = VL_FOPEN_WI(9, __Vtemp3, 0x72U);
    if (VL_UNLIKELY((0U == vlTOPp->v__DOT__file))) {
	VL_WRITEF("ERROR - Error opening the file\n");
	vl_finish("HLS_output//simulation/testbench_main_tb.v",161,"");
    }
    __Vtemp4[0U] = 0x2e747874U;
    __Vtemp4[1U] = 0x756c7473U;
    __Vtemp4[2U] = 0x726573U;
    vlTOPp->v__DOT__res_file = VL_FOPEN_WI(3, __Vtemp4
					   , 0x77U);
    if (VL_UNLIKELY((0U == vlTOPp->v__DOT__res_file))) {
	VL_WRITEF("ERROR - Error opening the res_file\n");
	VL_FCLOSE_I(vlTOPp->v__DOT__file); vlTOPp->v__DOT__file=0;
	vl_finish("HLS_output//simulation/testbench_main_tb.v",171,"");
    }
    vlTOPp->v__DOT__sim_time = VL_ULL(0);
    vlTOPp->v__DOT__startTime = VL_ULL(0);
    vlTOPp->v__DOT__endTime = VL_ULL(0);
    vlTOPp->v__DOT___ch_ = 0U;
    vlTOPp->v__DOT___n_ = 0U;
    vlTOPp->v__DOT___r_ = 0U;
    vlTOPp->v__DOT__line[0U] = 0U;
    vlTOPp->v__DOT__line[1U] = 0U;
    vlTOPp->v__DOT__line[2U] = 0U;
    vlTOPp->v__DOT__line[3U] = 0U;
    vlTOPp->v__DOT__line[4U] = 0U;
    vlTOPp->v__DOT__line[5U] = 0U;
    vlTOPp->v__DOT__line[6U] = 0U;
    vlTOPp->v__DOT__line[7U] = 0U;
    vlTOPp->v__DOT__line[8U] = 0U;
    vlTOPp->v__DOT__line[9U] = 0U;
    vlTOPp->v__DOT__line[0xaU] = 0U;
    vlTOPp->v__DOT__line[0xbU] = 0U;
    vlTOPp->v__DOT__line[0xcU] = 0U;
    vlTOPp->v__DOT__line[0xdU] = 0U;
    vlTOPp->v__DOT__line[0xeU] = 0U;
    vlTOPp->v__DOT__line[0xfU] = 0U;
    vlTOPp->v__DOT__line[0x10U] = 0U;
    vlTOPp->v__DOT__line[0x11U] = 0U;
    vlTOPp->v__DOT__line[0x12U] = 0U;
    vlTOPp->v__DOT__line[0x13U] = 0U;
    vlTOPp->v__DOT__line[0x14U] = 0U;
    vlTOPp->v__DOT__line[0x15U] = 0U;
    vlTOPp->v__DOT__line[0x16U] = 0U;
    vlTOPp->v__DOT__line[0x17U] = 0U;
    vlTOPp->v__DOT__line[0x18U] = 0U;
    vlTOPp->v__DOT__line[0x19U] = 0U;
    vlTOPp->v__DOT__line[0x1aU] = 0U;
    vlTOPp->v__DOT__line[0x1bU] = 0U;
    vlTOPp->v__DOT__line[0x1cU] = 0U;
    vlTOPp->v__DOT__line[0x1dU] = 0U;
    vlTOPp->v__DOT__line[0x1eU] = 0U;
    vlTOPp->v__DOT__line[0x1fU] = 0U;
    vlTOPp->v__DOT__line[0x20U] = 0U;
    vlTOPp->v__DOT__line[0x21U] = 0U;
    vlTOPp->v__DOT__line[0x22U] = 0U;
    vlTOPp->v__DOT__line[0x23U] = 0U;
    vlTOPp->v__DOT__line[0x24U] = 0U;
    vlTOPp->v__DOT__line[0x25U] = 0U;
    vlTOPp->v__DOT__line[0x26U] = 0U;
    vlTOPp->v__DOT__line[0x27U] = 0U;
    vlTOPp->v__DOT__line[0x28U] = 0U;
    vlTOPp->v__DOT__line[0x29U] = 0U;
    vlTOPp->v__DOT__line[0x2aU] = 0U;
    vlTOPp->v__DOT__line[0x2bU] = 0U;
    vlTOPp->v__DOT__line[0x2cU] = 0U;
    vlTOPp->v__DOT__line[0x2dU] = 0U;
    vlTOPp->v__DOT__line[0x2eU] = 0U;
    vlTOPp->v__DOT__line[0x2fU] = 0U;
    vlTOPp->v__DOT__line[0x30U] = 0U;
    vlTOPp->v__DOT__line[0x31U] = 0U;
    vlTOPp->v__DOT__line[0x32U] = 0U;
    vlTOPp->v__DOT__line[0x33U] = 0U;
    vlTOPp->v__DOT__line[0x34U] = 0U;
    vlTOPp->v__DOT__line[0x35U] = 0U;
    vlTOPp->v__DOT__line[0x36U] = 0U;
    vlTOPp->v__DOT__line[0x37U] = 0U;
    vlTOPp->v__DOT__line[0x38U] = 0U;
    vlTOPp->v__DOT__line[0x39U] = 0U;
    vlTOPp->v__DOT__line[0x3aU] = 0U;
    vlTOPp->v__DOT__line[0x3bU] = 0U;
    vlTOPp->v__DOT__line[0x3cU] = 0U;
    vlTOPp->v__DOT__line[0x3dU] = 0U;
    vlTOPp->v__DOT__line[0x3eU] = 0U;
    vlTOPp->v__DOT__line[0x3fU] = 0U;
    vlTOPp->v__DOT__line[0x40U] = 0U;
    vlTOPp->v__DOT__line[0x41U] = 0U;
    vlTOPp->v__DOT__line[0x42U] = 0U;
    vlTOPp->v__DOT__line[0x43U] = 0U;
    vlTOPp->v__DOT__line[0x44U] = 0U;
    vlTOPp->v__DOT__line[0x45U] = 0U;
    vlTOPp->v__DOT__line[0x46U] = 0U;
    vlTOPp->v__DOT__line[0x47U] = 0U;
    vlTOPp->v__DOT__line[0x48U] = 0U;
    vlTOPp->v__DOT__line[0x49U] = 0U;
    vlTOPp->v__DOT__line[0x4aU] = 0U;
    vlTOPp->v__DOT__line[0x4bU] = 0U;
    vlTOPp->v__DOT__line[0x4cU] = 0U;
    vlTOPp->v__DOT__line[0x4dU] = 0U;
    vlTOPp->v__DOT__line[0x4eU] = 0U;
    vlTOPp->v__DOT__line[0x4fU] = 0U;
    vlTOPp->v__DOT__line[0x50U] = 0U;
    vlTOPp->v__DOT__line[0x51U] = 0U;
    vlTOPp->v__DOT__line[0x52U] = 0U;
    vlTOPp->v__DOT__line[0x53U] = 0U;
    vlTOPp->v__DOT__line[0x54U] = 0U;
    vlTOPp->v__DOT__line[0x55U] = 0U;
    vlTOPp->v__DOT__line[0x56U] = 0U;
    vlTOPp->v__DOT__line[0x57U] = 0U;
    vlTOPp->v__DOT__line[0x58U] = 0U;
    vlTOPp->v__DOT__line[0x59U] = 0U;
    vlTOPp->v__DOT__line[0x5aU] = 0U;
    vlTOPp->v__DOT__line[0x5bU] = 0U;
    vlTOPp->v__DOT__line[0x5cU] = 0U;
    vlTOPp->v__DOT__line[0x5dU] = 0U;
    vlTOPp->v__DOT__line[0x5eU] = 0U;
    vlTOPp->v__DOT__line[0x5fU] = 0U;
    vlTOPp->v__DOT__line[0x60U] = 0U;
    vlTOPp->v__DOT__line[0x61U] = 0U;
    vlTOPp->v__DOT__line[0x62U] = 0U;
    vlTOPp->v__DOT__line[0x63U] = 0U;
    vlTOPp->v__DOT__line[0x64U] = 0U;
    vlTOPp->v__DOT__line[0x65U] = 0U;
    vlTOPp->v__DOT__line[0x66U] = 0U;
    vlTOPp->v__DOT__line[0x67U] = 0U;
    vlTOPp->v__DOT__line[0x68U] = 0U;
    vlTOPp->v__DOT__line[0x69U] = 0U;
    vlTOPp->v__DOT__line[0x6aU] = 0U;
    vlTOPp->v__DOT__line[0x6bU] = 0U;
    vlTOPp->v__DOT__line[0x6cU] = 0U;
    vlTOPp->v__DOT__line[0x6dU] = 0U;
    vlTOPp->v__DOT__line[0x6eU] = 0U;
    vlTOPp->v__DOT__line[0x6fU] = 0U;
    vlTOPp->v__DOT__line[0x70U] = 0U;
    vlTOPp->v__DOT__line[0x71U] = 0U;
    vlTOPp->v__DOT__line[0x72U] = 0U;
    vlTOPp->v__DOT__line[0x73U] = 0U;
    vlTOPp->v__DOT__line[0x74U] = 0U;
    vlTOPp->v__DOT__line[0x75U] = 0U;
    vlTOPp->v__DOT__line[0x76U] = 0U;
    vlTOPp->v__DOT__line[0x77U] = 0U;
    vlTOPp->v__DOT__line[0x78U] = 0U;
    vlTOPp->v__DOT__line[0x79U] = 0U;
    vlTOPp->v__DOT__line[0x7aU] = 0U;
    vlTOPp->v__DOT__line[0x7bU] = 0U;
    vlTOPp->v__DOT__line[0x7cU] = 0U;
    vlTOPp->v__DOT__line[0x7dU] = 0U;
    vlTOPp->v__DOT__line[0x7eU] = 0U;
    vlTOPp->v__DOT__line[0x7fU] = 0U;
    vlTOPp->v__DOT__line[0x80U] = 0U;
    vlTOPp->v__DOT__line[0x81U] = 0U;
    vlTOPp->v__DOT__line[0x82U] = 0U;
    vlTOPp->v__DOT__line[0x83U] = 0U;
    vlTOPp->v__DOT__line[0x84U] = 0U;
    vlTOPp->v__DOT__line[0x85U] = 0U;
    vlTOPp->v__DOT__line[0x86U] = 0U;
    vlTOPp->v__DOT__line[0x87U] = 0U;
    vlTOPp->v__DOT__line[0x88U] = 0U;
    vlTOPp->v__DOT__line[0x89U] = 0U;
    vlTOPp->v__DOT__line[0x8aU] = 0U;
    vlTOPp->v__DOT__line[0x8bU] = 0U;
    vlTOPp->v__DOT__line[0x8cU] = 0U;
    vlTOPp->v__DOT__line[0x8dU] = 0U;
    vlTOPp->v__DOT__line[0x8eU] = 0U;
    vlTOPp->v__DOT__line[0x8fU] = 0U;
    vlTOPp->v__DOT__line[0x90U] = 0U;
    vlTOPp->v__DOT__line[0x91U] = 0U;
    vlTOPp->v__DOT__line[0x92U] = 0U;
    vlTOPp->v__DOT__line[0x93U] = 0U;
    vlTOPp->v__DOT__line[0x94U] = 0U;
    vlTOPp->v__DOT__line[0x95U] = 0U;
    vlTOPp->v__DOT__line[0x96U] = 0U;
    vlTOPp->v__DOT__line[0x97U] = 0U;
    vlTOPp->v__DOT__line[0x98U] = 0U;
    vlTOPp->v__DOT__line[0x99U] = 0U;
    vlTOPp->v__DOT__line[0x9aU] = 0U;
    vlTOPp->v__DOT__line[0x9bU] = 0U;
    vlTOPp->v__DOT__line[0x9cU] = 0U;
    vlTOPp->v__DOT__line[0x9dU] = 0U;
    vlTOPp->v__DOT__line[0x9eU] = 0U;
    vlTOPp->v__DOT__line[0x9fU] = 0U;
    vlTOPp->v__DOT__line[0xa0U] = 0U;
    vlTOPp->v__DOT__line[0xa1U] = 0U;
    vlTOPp->v__DOT__line[0xa2U] = 0U;
    vlTOPp->v__DOT__line[0xa3U] = 0U;
    vlTOPp->v__DOT__line[0xa4U] = 0U;
    vlTOPp->v__DOT__line[0xa5U] = 0U;
    vlTOPp->v__DOT__line[0xa6U] = 0U;
    vlTOPp->v__DOT__line[0xa7U] = 0U;
    vlTOPp->v__DOT__line[0xa8U] = 0U;
    vlTOPp->v__DOT__line[0xa9U] = 0U;
    vlTOPp->v__DOT__line[0xaaU] = 0U;
    vlTOPp->v__DOT__line[0xabU] = 0U;
    vlTOPp->v__DOT__line[0xacU] = 0U;
    vlTOPp->v__DOT__line[0xadU] = 0U;
    vlTOPp->v__DOT__line[0xaeU] = 0U;
    vlTOPp->v__DOT__line[0xafU] = 0U;
    vlTOPp->v__DOT__line[0xb0U] = 0U;
    vlTOPp->v__DOT__line[0xb1U] = 0U;
    vlTOPp->v__DOT__line[0xb2U] = 0U;
    vlTOPp->v__DOT__line[0xb3U] = 0U;
    vlTOPp->v__DOT__line[0xb4U] = 0U;
    vlTOPp->v__DOT__line[0xb5U] = 0U;
    vlTOPp->v__DOT__line[0xb6U] = 0U;
    vlTOPp->v__DOT__line[0xb7U] = 0U;
    vlTOPp->v__DOT__line[0xb8U] = 0U;
    vlTOPp->v__DOT__line[0xb9U] = 0U;
    vlTOPp->v__DOT__line[0xbaU] = 0U;
    vlTOPp->v__DOT__line[0xbbU] = 0U;
    vlTOPp->v__DOT__line[0xbcU] = 0U;
    vlTOPp->v__DOT__line[0xbdU] = 0U;
    vlTOPp->v__DOT__line[0xbeU] = 0U;
    vlTOPp->v__DOT__line[0xbfU] = 0U;
    vlTOPp->v__DOT__line[0xc0U] = 0U;
    vlTOPp->v__DOT__line[0xc1U] = 0U;
    vlTOPp->v__DOT__line[0xc2U] = 0U;
    vlTOPp->v__DOT__line[0xc3U] = 0U;
    vlTOPp->v__DOT__line[0xc4U] = 0U;
    vlTOPp->v__DOT__line[0xc5U] = 0U;
    vlTOPp->v__DOT__line[0xc6U] = 0U;
    vlTOPp->v__DOT__line[0xc7U] = 0U;
    vlTOPp->v__DOT__line[0xc8U] = 0U;
    vlTOPp->v__DOT__line[0xc9U] = 0U;
    vlTOPp->v__DOT__line[0xcaU] = 0U;
    vlTOPp->v__DOT__line[0xcbU] = 0U;
    vlTOPp->v__DOT__line[0xccU] = 0U;
    vlTOPp->v__DOT__line[0xcdU] = 0U;
    vlTOPp->v__DOT__line[0xceU] = 0U;
    vlTOPp->v__DOT__line[0xcfU] = 0U;
    vlTOPp->v__DOT__line[0xd0U] = 0U;
    vlTOPp->v__DOT__line[0xd1U] = 0U;
    vlTOPp->v__DOT__line[0xd2U] = 0U;
    vlTOPp->v__DOT__line[0xd3U] = 0U;
    vlTOPp->v__DOT__line[0xd4U] = 0U;
    vlTOPp->v__DOT__line[0xd5U] = 0U;
    vlTOPp->v__DOT__line[0xd6U] = 0U;
    vlTOPp->v__DOT__line[0xd7U] = 0U;
    vlTOPp->v__DOT__line[0xd8U] = 0U;
    vlTOPp->v__DOT__line[0xd9U] = 0U;
    vlTOPp->v__DOT__line[0xdaU] = 0U;
    vlTOPp->v__DOT__line[0xdbU] = 0U;
    vlTOPp->v__DOT__line[0xdcU] = 0U;
    vlTOPp->v__DOT__line[0xddU] = 0U;
    vlTOPp->v__DOT__line[0xdeU] = 0U;
    vlTOPp->v__DOT__line[0xdfU] = 0U;
    vlTOPp->v__DOT__line[0xe0U] = 0U;
    vlTOPp->v__DOT__line[0xe1U] = 0U;
    vlTOPp->v__DOT__line[0xe2U] = 0U;
    vlTOPp->v__DOT__line[0xe3U] = 0U;
    vlTOPp->v__DOT__line[0xe4U] = 0U;
    vlTOPp->v__DOT__line[0xe5U] = 0U;
    vlTOPp->v__DOT__line[0xe6U] = 0U;
    vlTOPp->v__DOT__line[0xe7U] = 0U;
    vlTOPp->v__DOT__line[0xe8U] = 0U;
    vlTOPp->v__DOT__line[0xe9U] = 0U;
    vlTOPp->v__DOT__line[0xeaU] = 0U;
    vlTOPp->v__DOT__line[0xebU] = 0U;
    vlTOPp->v__DOT__line[0xecU] = 0U;
    vlTOPp->v__DOT__line[0xedU] = 0U;
    vlTOPp->v__DOT__line[0xeeU] = 0U;
    vlTOPp->v__DOT__line[0xefU] = 0U;
    vlTOPp->v__DOT__line[0xf0U] = 0U;
    vlTOPp->v__DOT__line[0xf1U] = 0U;
    vlTOPp->v__DOT__line[0xf2U] = 0U;
    vlTOPp->v__DOT__line[0xf3U] = 0U;
    vlTOPp->v__DOT__line[0xf4U] = 0U;
    vlTOPp->v__DOT__line[0xf5U] = 0U;
    vlTOPp->v__DOT__line[0xf6U] = 0U;
    vlTOPp->v__DOT__line[0xf7U] = 0U;
    vlTOPp->v__DOT__line[0xf8U] = 0U;
    vlTOPp->v__DOT__line[0xf9U] = 0U;
    vlTOPp->v__DOT__line[0xfaU] = 0U;
    vlTOPp->v__DOT___addr_i_ = 0U;
    vlTOPp->v__DOT__compare_outputs = 0U;
    vlTOPp->v__DOT_____05Fnext_state = 0U;
    vlTOPp->v__DOT__reset = 0U;
    vlTOPp->v__DOT__next_start_port = 0U;
    vlTOPp->v__DOT__success = 1U;
    vlTOPp->v__DOT__reg_DataReady[0U] = 0U;
    vlTOPp->v__DOT__reg_DataReady[1U] = 0U;
    vlTOPp->v__DOT___bambu_testbench_mem_[0U] = 0U;
}

VL_INLINE_OPT void Vmain_tb::_sequent__TOP__9(Vmain_tb__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vmain_tb::_sequent__TOP__9\n"); );
    Vmain_tb* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__M_Rdata_ram = ((0xff00U & (IData)(vlTOPp->v__DOT__M_Rdata_ram)) 
				   | (0xffU & (vlTOPp->v__DOT__M_Rdata_ram_delayed
					       [0U] 
					       | (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerSout_Rdata_ram6_))));
    vlTOPp->v__DOT__M_Rdata_ram = ((0xffU & (IData)(vlTOPp->v__DOT__M_Rdata_ram)) 
				   | (0xff00U & (vlTOPp->v__DOT__M_Rdata_ram_delayed
						 [0U] 
						 | (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerSout_Rdata_ram6_))));
    // ALWAYS at top.v:1134
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__done_delayed_REG_signal_in = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_LOAD = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_STORE = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i1_LOAD = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_0_BMEMORY_CTRLN_20_i0_0_0_0 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_1_BMEMORY_CTRLN_20_i0_1_0_0 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_1_BMEMORY_CTRLN_20_i0_1_0_1 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_23_reg_1_0_0_0 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_0_0 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_0_1 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_1_0 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_34_reg_7_0_0_0 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_35_reg_8_0_0_0 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_0 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_1 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_13 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_14 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_2 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_3 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_4 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_5 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_6 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_7 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_8 = 0U;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_9 = 0U;
    if (((((((((1U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state)) 
	       | (0x8000U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) 
	      | (4U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) 
	     | (8U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) 
	    | (0x10U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) 
	   | (0x20U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) 
	  | (0x40U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) 
	 | (0x80U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state)))) {
	if ((1U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
	    if (vlTOPp->v__DOT__main__DOT___main_i0__DOT__selector_IN_UNBOUNDED_main_28864_29039) {
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_1_0 = 1U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_1 = 1U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_14 = 1U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 4U;
	    } else {
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_0_BMEMORY_CTRLN_20_i0_0_0_0 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_1_BMEMORY_CTRLN_20_i0_1_0_0 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_1_BMEMORY_CTRLN_20_i0_1_0_1 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_23_reg_1_0_0_0 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_0_0 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_0_1 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_1_0 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_34_reg_7_0_0_0 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_35_reg_8_0_0_0 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_0 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_1 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_13 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_14 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_2 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_3 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_4 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_5 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_6 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_7 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_8 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_9 = 0U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 1U;
	    }
	} else {
	    if ((0x8000U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_STORE = 1U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_1_BMEMORY_CTRLN_20_i0_1_0_0 = 1U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_2 = 1U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_3 = 1U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_4 = 1U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_5 = 1U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_6 = 1U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 8U;
	    } else {
		if ((4U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
		    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_2 = 1U;
		    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_3 = 1U;
		    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_4 = 1U;
		    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_5 = 1U;
		    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_6 = 1U;
		    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 8U;
		} else {
		    if ((8U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
			vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_LOAD = 1U;
			vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i1_LOAD = 1U;
			vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_1_BMEMORY_CTRLN_20_i0_1_0_0 = 1U;
			vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x10U;
		    } else {
			if ((0x10U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
			    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_0 = 1U;
			    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_7 = 1U;
			    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x20U;
			} else {
			    if ((0x20U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
				vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_35_reg_8_0_0_0 = 1U;
				vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_8 = 1U;
				if (VL_LTS_III(1,8,8, (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_0__DOT__reg_out1), (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_7__DOT__reg_out1))) {
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x40U;
				} else {
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x2000U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_35_reg_8_0_0_0 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_8 = 0U;
				}
			    } else {
				if ((0x40U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_9 = 1U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x80U;
				} else {
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_STORE = 1U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_0_BMEMORY_CTRLN_20_i0_0_0_0 = 1U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_1_BMEMORY_CTRLN_20_i0_1_0_1 = 1U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_14 = 1U;
				    if (vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_11__DOT__reg_out1) {
					vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x100U;
					vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_14 = 0U;
				    } else {
					vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x2000U;
				    }
				}
			    }
			}
		    }
		}
	    }
	}
    } else {
	if ((0x100U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
	    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x200U;
	} else {
	    if ((0x200U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_LOAD = 1U;
		vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x400U;
	    } else {
		if ((0x400U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
		    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_13 = 1U;
		    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x800U;
		} else {
		    if ((0x800U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
			vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_34_reg_7_0_0_0 = 1U;
			vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_7 = 1U;
			vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_8 = 1U;
			if (VL_LTS_III(1,8,8, (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_0__DOT__reg_out1), (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_13__DOT__reg_out1))) {
			    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x40U;
			} else {
			    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x1000U;
			    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_34_reg_7_0_0_0 = 0U;
			    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_7 = 0U;
			    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_8 = 0U;
			}
		    } else {
			if ((0x1000U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
			    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_0_1 = 1U;
			    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_14 = 1U;
			    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x2000U;
			} else {
			    if ((0x2000U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
				vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_23_reg_1_0_0_0 = 1U;
				vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_4 = 1U;
				vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_0_0 = 1U;
				vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_1_0 = 1U;
				vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_1 = 1U;
				vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_14 = 1U;
				if (vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_6__DOT__reg_out1) {
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 0x8000U;
				} else {
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 2U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__done_delayed_REG_signal_in = 1U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_23_reg_1_0_0_0 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_0_0 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_1_0 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_1 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_14 = 0U;
				}
			    } else {
				if ((2U == (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___present_state))) {
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_STORE = 1U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_1_BMEMORY_CTRLN_20_i0_1_0_0 = 1U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 1U;
				} else {
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Controller_i__DOT___next_state = 1U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_0_BMEMORY_CTRLN_20_i0_0_0_0 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_1_BMEMORY_CTRLN_20_i0_1_0_0 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_1_BMEMORY_CTRLN_20_i0_1_0_1 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_23_reg_1_0_0_0 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_0_0 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_0_1 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_28_reg_14_0_1_0 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_34_reg_7_0_0_0 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_35_reg_8_0_0_0 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_0 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_1 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_13 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_14 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_2 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_3 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_4 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_5 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_6 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_7 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_8 = 0U;
				    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__wrenable_reg_9 = 0U;
				}
			    }
			}
		    }
		}
	    }
	}
    }
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellout__BMEMORY_CTRLN_20_i0__out1 
	= ((0xff00U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellout__BMEMORY_CTRLN_20_i0__out1)) 
	   | (0xffU & (IData)(vlTOPp->v__DOT__M_Rdata_ram)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellout__BMEMORY_CTRLN_20_i0__out1 
	= ((0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellout__BMEMORY_CTRLN_20_i0__out1)) 
	   | (0xff00U & (IData)(vlTOPp->v__DOT__M_Rdata_ram)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__out_MUX_0_BMEMORY_CTRLN_20_i0_0_0_0 
	= ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_0_BMEMORY_CTRLN_20_i0_0_0_0)
	    ? (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_7__DOT__reg_out1)
	    : (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_0__DOT__reg_out1));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_we_ram4_0 
	= ((2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_we_ram4_0)) 
	   | (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_STORE));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_we_ram4_0 
	= ((1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_we_ram4_0)) 
	   | (2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_STORE)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellinp__BMEMORY_CTRLN_20_i0__in2 
	= (((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_5__DOT__reg_out1) 
	    << 7U) | ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_1_BMEMORY_CTRLN_20_i0_1_0_1)
		       ? (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_10__DOT__reg_out1)
		       : ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_1_BMEMORY_CTRLN_20_i0_1_0_0)
			   ? (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_4__DOT__reg_out1)
			   : (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_12__DOT__reg_out1))));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellinp__BMEMORY_CTRLN_20_i0__sel_LOAD 
	= (((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i1_LOAD) 
	    << 1U) | (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_LOAD));
}

void Vmain_tb::_settle__TOP__10(Vmain_tb__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vmain_tb::_settle__TOP__10\n"); );
    Vmain_tb* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellout__BMEMORY_CTRLN_20_i0__out1 
	= ((0xff00U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellout__BMEMORY_CTRLN_20_i0__out1)) 
	   | (0xffU & (IData)(vlTOPp->v__DOT__M_Rdata_ram)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellout__BMEMORY_CTRLN_20_i0__out1 
	= ((0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellout__BMEMORY_CTRLN_20_i0__out1)) 
	   | (0xff00U & (IData)(vlTOPp->v__DOT__M_Rdata_ram)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__out_MUX_0_BMEMORY_CTRLN_20_i0_0_0_0 
	= ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_0_BMEMORY_CTRLN_20_i0_0_0_0)
	    ? (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_7__DOT__reg_out1)
	    : (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_0__DOT__reg_out1));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_we_ram4_0 
	= ((2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_we_ram4_0)) 
	   | (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_STORE));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_we_ram4_0 
	= ((1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_we_ram4_0)) 
	   | (2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_STORE)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellinp__BMEMORY_CTRLN_20_i0__in2 
	= (((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_5__DOT__reg_out1) 
	    << 7U) | ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_1_BMEMORY_CTRLN_20_i0_1_0_1)
		       ? (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_10__DOT__reg_out1)
		       : ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__selector_MUX_1_BMEMORY_CTRLN_20_i0_1_0_0)
			   ? (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_4__DOT__reg_out1)
			   : (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__reg_12__DOT__reg_out1))));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellinp__BMEMORY_CTRLN_20_i0__sel_LOAD 
	= (((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i1_LOAD) 
	    << 1U) | (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_LOAD));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_Wdata_ram0_0 
	= ((0xff00U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_Wdata_ram0_0)) 
	   | ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_STORE)
	       ? (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__out_MUX_0_BMEMORY_CTRLN_20_i0_0_0_0)
	       : 0U));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_Wdata_ram0_0 
	= ((0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_Wdata_ram0_0)) 
	   | (0xff00U & (((2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_STORE))
			   ? ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__out_MUX_0_BMEMORY_CTRLN_20_i0_0_0_0) 
			      >> 8U) : 0U) << 8U)));
    // ALWAYS at top.v:722
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__11__m 
	= vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_we_ram4_0;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__11__res 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__11__m;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__11__Vfuncout 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__11__res;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_we_ram4_ 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__11__Vfuncout;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_oe_ram3_0 
	= ((2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_oe_ram3_0)) 
	   | (1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellinp__BMEMORY_CTRLN_20_i0__sel_LOAD)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_oe_ram3_0 
	= ((1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_oe_ram3_0)) 
	   | (2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellinp__BMEMORY_CTRLN_20_i0__sel_LOAD)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_data_ram_size2_0 
	= ((0xf0U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_data_ram_size2_0)) 
	   | ((1U & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellinp__BMEMORY_CTRLN_20_i0__sel_LOAD) 
		     | (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_STORE)))
	       ? 8U : 0U));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_data_ram_size2_0 
	= ((0xfU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_data_ram_size2_0)) 
	   | (((2U & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellinp__BMEMORY_CTRLN_20_i0__sel_LOAD) 
		      | (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_STORE)))
	        ? 8U : 0U) << 4U));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_addr_ram1_0 
	= ((0x3f80U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_addr_ram1_0)) 
	   | (0x7fU & ((1U & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellinp__BMEMORY_CTRLN_20_i0__sel_LOAD) 
			      | (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_STORE)))
		        ? (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellinp__BMEMORY_CTRLN_20_i0__in2)
		        : 0U)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_addr_ram1_0 
	= ((0x7fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_addr_ram1_0)) 
	   | (0x3f80U & (((2U & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellinp__BMEMORY_CTRLN_20_i0__sel_LOAD) 
				 | (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_STORE)))
			   ? ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellinp__BMEMORY_CTRLN_20_i0__in2) 
			      >> 7U) : 0U) << 7U)));
}

VL_INLINE_OPT void Vmain_tb::_sequent__TOP__11(Vmain_tb__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vmain_tb::_sequent__TOP__11\n"); );
    Vmain_tb* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_Wdata_ram0_0 
	= ((0xff00U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_Wdata_ram0_0)) 
	   | ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_STORE)
	       ? (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__out_MUX_0_BMEMORY_CTRLN_20_i0_0_0_0)
	       : 0U));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_Wdata_ram0_0 
	= ((0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_Wdata_ram0_0)) 
	   | (0xff00U & (((2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_STORE))
			   ? ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__out_MUX_0_BMEMORY_CTRLN_20_i0_0_0_0) 
			      >> 8U) : 0U) << 8U)));
    // ALWAYS at top.v:722
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__11__m 
	= vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_we_ram4_0;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__11__res 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__11__m;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__11__Vfuncout 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__11__res;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_we_ram4_ 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__11__Vfuncout;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_oe_ram3_0 
	= ((2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_oe_ram3_0)) 
	   | (1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellinp__BMEMORY_CTRLN_20_i0__sel_LOAD)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_oe_ram3_0 
	= ((1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_oe_ram3_0)) 
	   | (2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellinp__BMEMORY_CTRLN_20_i0__sel_LOAD)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_data_ram_size2_0 
	= ((0xf0U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_data_ram_size2_0)) 
	   | ((1U & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellinp__BMEMORY_CTRLN_20_i0__sel_LOAD) 
		     | (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_STORE)))
	       ? 8U : 0U));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_data_ram_size2_0 
	= ((0xfU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_data_ram_size2_0)) 
	   | (((2U & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellinp__BMEMORY_CTRLN_20_i0__sel_LOAD) 
		      | (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_STORE)))
	        ? 8U : 0U) << 4U));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_addr_ram1_0 
	= ((0x3f80U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_addr_ram1_0)) 
	   | (0x7fU & ((1U & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellinp__BMEMORY_CTRLN_20_i0__sel_LOAD) 
			      | (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_STORE)))
		        ? (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellinp__BMEMORY_CTRLN_20_i0__in2)
		        : 0U)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_addr_ram1_0 
	= ((0x7fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_addr_ram1_0)) 
	   | (0x3f80U & (((2U & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellinp__BMEMORY_CTRLN_20_i0__sel_LOAD) 
				 | (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__fuselector_BMEMORY_CTRLN_20_i0_STORE)))
			   ? ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT____Vcellinp__BMEMORY_CTRLN_20_i0__in2) 
			      >> 7U) : 0U) << 7U)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_Wdata_ram0_0 
	= ((0xff00U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_Wdata_ram0_0)) 
	   | (0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_Wdata_ram0_0)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_Wdata_ram0_0 
	= ((0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_Wdata_ram0_0)) 
	   | (0xff00U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_Wdata_ram0_0)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_we_ram4_0 
	= ((2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_we_ram4_0)) 
	   | (1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_we_ram4_)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_we_ram4_0 
	= ((1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_we_ram4_0)) 
	   | (2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_we_ram4_)));
    // ALWAYS at top.v:722
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__10__m 
	= vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_oe_ram3_0;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__10__res 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__10__m;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__10__Vfuncout 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__10__res;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_oe_ram3_ 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__10__Vfuncout;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_data_ram_size2_0 
	= ((0xf0U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_data_ram_size2_0)) 
	   | (0xfU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_data_ram_size2_0)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_data_ram_size2_0 
	= ((0xfU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_data_ram_size2_0)) 
	   | (0xf0U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_data_ram_size2_0)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_addr_ram1_0 
	= ((0x3f80U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_addr_ram1_0)) 
	   | (0x7fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_addr_ram1_0)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_addr_ram1_0 
	= ((0x7fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_addr_ram1_0)) 
	   | (0x3f80U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_addr_ram1_0)));
}

void Vmain_tb::_settle__TOP__12(Vmain_tb__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vmain_tb::_settle__TOP__12\n"); );
    Vmain_tb* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_Wdata_ram0_0 
	= ((0xff00U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_Wdata_ram0_0)) 
	   | (0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_Wdata_ram0_0)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_Wdata_ram0_0 
	= ((0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_Wdata_ram0_0)) 
	   | (0xff00U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_Wdata_ram0_0)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_we_ram4_0 
	= ((2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_we_ram4_0)) 
	   | (1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_we_ram4_)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_we_ram4_0 
	= ((1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_we_ram4_0)) 
	   | (2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_we_ram4_)));
    // ALWAYS at top.v:722
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__10__m 
	= vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_oe_ram3_0;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__10__res 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__10__m;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__10__Vfuncout 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__10__res;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_oe_ram3_ 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__10__Vfuncout;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_data_ram_size2_0 
	= ((0xf0U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_data_ram_size2_0)) 
	   | (0xfU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_data_ram_size2_0)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_data_ram_size2_0 
	= ((0xfU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_data_ram_size2_0)) 
	   | (0xf0U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_data_ram_size2_0)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_addr_ram1_0 
	= ((0x3f80U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_addr_ram1_0)) 
	   | (0x7fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_addr_ram1_0)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_addr_ram1_0 
	= ((0x7fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_addr_ram1_0)) 
	   | (0x3f80U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_vector_bus_mergerMout_addr_ram1_0)));
    // ALWAYS at top.v:722
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__7__m 
	= vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_Wdata_ram0_0;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__7__res 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__7__m;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__7__Vfuncout 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__7__res;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_Wdata_ram0_ 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__7__Vfuncout;
    // ALWAYS at top.v:722
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__4__m 
	= vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_we_ram4_0;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__4__res 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__4__m;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__4__Vfuncout 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__4__res;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_we_ram4_ 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__4__Vfuncout;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_oe_ram3_0 
	= ((2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_oe_ram3_0)) 
	   | (1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_oe_ram3_)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_oe_ram3_0 
	= ((1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_oe_ram3_0)) 
	   | (2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_oe_ram3_)));
    // ALWAYS at top.v:722
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__9__m 
	= vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_data_ram_size2_0;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__9__res 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__9__m;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__9__Vfuncout 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__9__res;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_data_ram_size2_ 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__9__Vfuncout;
    // ALWAYS at top.v:722
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__8__m 
	= vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_addr_ram1_0;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__8__res 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__8__m;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__8__Vfuncout 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__8__res;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_ 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__8__Vfuncout;
}

VL_INLINE_OPT void Vmain_tb::_sequent__TOP__13(Vmain_tb__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vmain_tb::_sequent__TOP__13\n"); );
    Vmain_tb* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // ALWAYS at top.v:722
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__7__m 
	= vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_Wdata_ram0_0;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__7__res 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__7__m;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__7__Vfuncout 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__7__res;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_Wdata_ram0_ 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__7__Vfuncout;
    // ALWAYS at top.v:722
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__4__m 
	= vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_we_ram4_0;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__4__res 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__4__m;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__4__Vfuncout 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__4__res;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_we_ram4_ 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_we_ram4___DOT__merge__4__Vfuncout;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_oe_ram3_0 
	= ((2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_oe_ram3_0)) 
	   | (1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_oe_ram3_)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_oe_ram3_0 
	= ((1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_oe_ram3_0)) 
	   | (2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_oe_ram3_)));
    // ALWAYS at top.v:722
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__9__m 
	= vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_data_ram_size2_0;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__9__res 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__9__m;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__9__Vfuncout 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__9__res;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_data_ram_size2_ 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__9__Vfuncout;
    // ALWAYS at top.v:722
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__8__m 
	= vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_addr_ram1_0;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__8__res 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__8__m;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__8__Vfuncout 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__8__res;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_ 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__8__Vfuncout;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_Wdata_ram0_0 
	= ((0xff00U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_Wdata_ram0_0)) 
	   | (0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_Wdata_ram0_)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_Wdata_ram0_0 
	= ((0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_Wdata_ram0_0)) 
	   | (0xff00U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_Wdata_ram0_)));
    // ALWAYS at top.v:722
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__3__m 
	= vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_oe_ram3_0;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__3__res 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__3__m;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__3__Vfuncout 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__3__res;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_oe_ram3_ 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__3__Vfuncout;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_data_ram_size2_0 
	= ((0xf0U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_data_ram_size2_0)) 
	   | (0xfU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_data_ram_size2_)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_data_ram_size2_0 
	= ((0xfU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_data_ram_size2_0)) 
	   | (0xf0U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_data_ram_size2_)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_addr_ram1_0 
	= ((0x3f80U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_addr_ram1_0)) 
	   | (0x7fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_addr_ram1_0 
	= ((0x7fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_addr_ram1_0)) 
	   | (0x3f80U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_)));
}

void Vmain_tb::_settle__TOP__14(Vmain_tb__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vmain_tb::_settle__TOP__14\n"); );
    Vmain_tb* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_Wdata_ram0_0 
	= ((0xff00U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_Wdata_ram0_0)) 
	   | (0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_Wdata_ram0_)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_Wdata_ram0_0 
	= ((0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_Wdata_ram0_0)) 
	   | (0xff00U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_Wdata_ram0_)));
    // ALWAYS at top.v:722
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__3__m 
	= vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_oe_ram3_0;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__3__res 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__3__m;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__3__Vfuncout 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__3__res;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_oe_ram3_ 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_oe_ram3___DOT__merge__3__Vfuncout;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_data_ram_size2_0 
	= ((0xf0U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_data_ram_size2_0)) 
	   | (0xfU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_data_ram_size2_)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_data_ram_size2_0 
	= ((0xfU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_data_ram_size2_0)) 
	   | (0xf0U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_data_ram_size2_)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_addr_ram1_0 
	= ((0x3f80U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_addr_ram1_0)) 
	   | (0x7fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_addr_ram1_0 
	= ((0x7fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_addr_ram1_0)) 
	   | (0x3f80U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__fu_main_28864_29039__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_)));
    // ALWAYS at top.v:722
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__0__m 
	= vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_Wdata_ram0_0;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__0__res 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__0__m;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__0__Vfuncout 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__0__res;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_Wdata_ram0_ 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__0__Vfuncout;
    // ALWAYS at top.v:722
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__2__m 
	= vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_data_ram_size2_0;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__2__res 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__2__m;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__2__Vfuncout 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__2__res;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_data_ram_size2_ 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__2__Vfuncout;
    // ALWAYS at top.v:722
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__1__m 
	= vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_addr_ram1_0;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__1__res 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__1__m;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__1__Vfuncout 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__1__res;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_ 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__1__Vfuncout;
}

VL_INLINE_OPT void Vmain_tb::_sequent__TOP__15(Vmain_tb__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vmain_tb::_sequent__TOP__15\n"); );
    Vmain_tb* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // ALWAYS at top.v:722
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__0__m 
	= vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_Wdata_ram0_0;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__0__res 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__0__m;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__0__Vfuncout 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__0__res;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_Wdata_ram0_ 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_Wdata_ram0___DOT__merge__0__Vfuncout;
    // ALWAYS at top.v:722
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__2__m 
	= vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_data_ram_size2_0;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__2__res 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__2__m;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__2__Vfuncout 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__2__res;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_data_ram_size2_ 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_data_ram_size2___DOT__merge__2__Vfuncout;
    // ALWAYS at top.v:722
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__1__m 
	= vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_in_bus_mergerMout_addr_ram1_0;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__1__res 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__1__m;
    vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__1__Vfuncout 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__1__res;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_ 
	= vlTOPp->__Vfunc_v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__bus_mergerMout_addr_ram1___DOT__merge__1__Vfuncout;
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__S_Wdata_ram_int 
	= ((0xff00U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__S_Wdata_ram_int)) 
	   | (0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_Wdata_ram0_)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__S_Wdata_ram_int 
	= ((0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__S_Wdata_ram_int)) 
	   | (0xff00U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_Wdata_ram0_)));
    vlTOPp->v__DOT__mask = ((0xff00U & (IData)(vlTOPp->v__DOT__mask)) 
			    | (0xffU & (((IData)(1U) 
					 << (0xfU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_data_ram_size2_))) 
					- (IData)(1U))));
    vlTOPp->v__DOT__mask = ((0xffU & (IData)(vlTOPp->v__DOT__mask)) 
			    | (0xff00U & ((((IData)(1U) 
					    << (0xfU 
						& ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_data_ram_size2_) 
						   >> 4U))) 
					   - (IData)(1U)) 
					  << 8U)));
    vlTOPp->v__DOT__M_Rdata_ram_delayed_temporary = 
	((0xff00U & (IData)(vlTOPp->v__DOT__M_Rdata_ram_delayed_temporary)) 
	 | (((vlTOPp->v__DOT__base_addr <= (0x7fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_))) 
	     & ((0x7fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_)) 
		< ((IData)(1U) + vlTOPp->v__DOT__base_addr)))
	     ? ((0U >= (1U & ((0x7fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_)) 
			      - vlTOPp->v__DOT__base_addr)))
		 ? vlTOPp->v__DOT___bambu_testbench_mem_
		[(1U & ((0x7fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_)) 
			- vlTOPp->v__DOT__base_addr))]
		 : 0U) : 0U));
    vlTOPp->v__DOT__M_Rdata_ram_delayed_temporary = 
	((0xffU & (IData)(vlTOPp->v__DOT__M_Rdata_ram_delayed_temporary)) 
	 | ((((vlTOPp->v__DOT__base_addr <= (0x7fU 
					     & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_) 
						>> 7U))) 
	      & ((0x7fU & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_) 
			   >> 7U)) < ((IData)(1U) + vlTOPp->v__DOT__base_addr)))
	      ? ((0U >= (1U & ((0x7fU & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_) 
					 >> 7U)) - vlTOPp->v__DOT__base_addr)))
		  ? vlTOPp->v__DOT___bambu_testbench_mem_
		 [(1U & ((0x7fU & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_) 
				   >> 7U)) - vlTOPp->v__DOT__base_addr))]
		  : 0U) : 0U) << 8U));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__relative_addr 
	= ((0x3fe0U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__relative_addr)) 
	   | (0x1fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__relative_addr 
	= ((0x307fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__relative_addr)) 
	   | (0xf80U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__cs 
	= ((2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__cs)) 
	   | (1U == (3U & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_) 
			   >> 5U))));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__cs 
	= ((1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__cs)) 
	   | ((1U == (3U & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_) 
			    >> 0xcU))) << 1U));
}

void Vmain_tb::_settle__TOP__16(Vmain_tb__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vmain_tb::_settle__TOP__16\n"); );
    Vmain_tb* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__S_Wdata_ram_int 
	= ((0xff00U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__S_Wdata_ram_int)) 
	   | (0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_Wdata_ram0_)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__S_Wdata_ram_int 
	= ((0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__S_Wdata_ram_int)) 
	   | (0xff00U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_Wdata_ram0_)));
    vlTOPp->v__DOT__mask = ((0xff00U & (IData)(vlTOPp->v__DOT__mask)) 
			    | (0xffU & (((IData)(1U) 
					 << (0xfU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_data_ram_size2_))) 
					- (IData)(1U))));
    vlTOPp->v__DOT__mask = ((0xffU & (IData)(vlTOPp->v__DOT__mask)) 
			    | (0xff00U & ((((IData)(1U) 
					    << (0xfU 
						& ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_data_ram_size2_) 
						   >> 4U))) 
					   - (IData)(1U)) 
					  << 8U)));
    vlTOPp->v__DOT__M_Rdata_ram_delayed_temporary = 
	((0xff00U & (IData)(vlTOPp->v__DOT__M_Rdata_ram_delayed_temporary)) 
	 | (((vlTOPp->v__DOT__base_addr <= (0x7fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_))) 
	     & ((0x7fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_)) 
		< ((IData)(1U) + vlTOPp->v__DOT__base_addr)))
	     ? ((0U >= (1U & ((0x7fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_)) 
			      - vlTOPp->v__DOT__base_addr)))
		 ? vlTOPp->v__DOT___bambu_testbench_mem_
		[(1U & ((0x7fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_)) 
			- vlTOPp->v__DOT__base_addr))]
		 : 0U) : 0U));
    vlTOPp->v__DOT__M_Rdata_ram_delayed_temporary = 
	((0xffU & (IData)(vlTOPp->v__DOT__M_Rdata_ram_delayed_temporary)) 
	 | ((((vlTOPp->v__DOT__base_addr <= (0x7fU 
					     & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_) 
						>> 7U))) 
	      & ((0x7fU & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_) 
			   >> 7U)) < ((IData)(1U) + vlTOPp->v__DOT__base_addr)))
	      ? ((0U >= (1U & ((0x7fU & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_) 
					 >> 7U)) - vlTOPp->v__DOT__base_addr)))
		  ? vlTOPp->v__DOT___bambu_testbench_mem_
		 [(1U & ((0x7fU & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_) 
				   >> 7U)) - vlTOPp->v__DOT__base_addr))]
		  : 0U) : 0U) << 8U));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__relative_addr 
	= ((0x3fe0U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__relative_addr)) 
	   | (0x1fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__relative_addr 
	= ((0x307fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__relative_addr)) 
	   | (0xf80U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__cs 
	= ((2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__cs)) 
	   | (1U == (3U & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_) 
			   >> 5U))));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__cs 
	= ((1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__cs)) 
	   | ((1U == (3U & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_addr_ram1_) 
			    >> 0xcU))) << 1U));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__din_value_aggregated 
	= ((0xff00U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__din_value_aggregated)) 
	   | (0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__S_Wdata_ram_int)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__din_value_aggregated 
	= ((0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__din_value_aggregated)) 
	   | (0xff00U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__S_Wdata_ram_int)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory_addr_a 
	= ((0x3e0U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory_addr_a)) 
	   | (0x1fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__relative_addr)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory_addr_a 
	= ((0x1fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory_addr_a)) 
	   | (0x3e0U & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__relative_addr) 
			>> 2U)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs 
	= ((2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs)) 
	   | (1U & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_oe_ram3_) 
		    & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__cs))));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs 
	= ((1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs)) 
	   | (2U & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_oe_ram3_) 
		    & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__cs))));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__we_ram_cs 
	= ((2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__we_ram_cs)) 
	   | (1U & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_we_ram4_) 
		    & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__cs))));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__we_ram_cs 
	= ((1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__we_ram_cs)) 
	   | (2U & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_we_ram4_) 
		    & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__cs))));
}

VL_INLINE_OPT void Vmain_tb::_sequent__TOP__17(Vmain_tb__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vmain_tb::_sequent__TOP__17\n"); );
    Vmain_tb* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__din_value_aggregated 
	= ((0xff00U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__din_value_aggregated)) 
	   | (0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__S_Wdata_ram_int)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__din_value_aggregated 
	= ((0xffU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__din_value_aggregated)) 
	   | (0xff00U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__S_Wdata_ram_int)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory_addr_a 
	= ((0x3e0U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory_addr_a)) 
	   | (0x1fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__relative_addr)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory_addr_a 
	= ((0x1fU & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__memory_addr_a)) 
	   | (0x3e0U & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__relative_addr) 
			>> 2U)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs 
	= ((2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs)) 
	   | (1U & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_oe_ram3_) 
		    & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__cs))));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs 
	= ((1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__oe_ram_cs)) 
	   | (2U & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_oe_ram3_) 
		    & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__cs))));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__we_ram_cs 
	= ((2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__we_ram_cs)) 
	   | (1U & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_we_ram4_) 
		    & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__cs))));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__we_ram_cs 
	= ((1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__we_ram_cs)) 
	   | (2U & ((IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__sig_out_bus_mergerMout_we_ram4_) 
		    & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__cs))));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__bram_write 
	= ((2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__bram_write)) 
	   | (1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__we_ram_cs)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__bram_write 
	= ((1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__bram_write)) 
	   | (2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__we_ram_cs)));
}

void Vmain_tb::_settle__TOP__18(Vmain_tb__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vmain_tb::_settle__TOP__18\n"); );
    Vmain_tb* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__bram_write 
	= ((2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__bram_write)) 
	   | (1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__we_ram_cs)));
    vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__bram_write 
	= ((1U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__bram_write)) 
	   | (2U & (IData)(vlTOPp->v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__ARRAY_1D_STD_BRAM_NN_instance__DOT__we_ram_cs)));
}

void Vmain_tb::_eval(Vmain_tb__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vmain_tb::_eval\n"); );
    Vmain_tb* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (((IData)(vlTOPp->clock) & (~ (IData)(vlTOPp->__Vclklast__TOP__clock)))) {
	vlTOPp->_sequent__TOP__2(vlSymsp);
    }
    if (((~ (IData)(vlTOPp->clock)) & (IData)(vlTOPp->__Vclklast__TOP__clock))) {
	vlTOPp->_sequent__TOP__3(vlSymsp);
    }
    if (((IData)(vlTOPp->clock) & (~ (IData)(vlTOPp->__Vclklast__TOP__clock)))) {
	vlTOPp->_sequent__TOP__6(vlSymsp);
	vlTOPp->_sequent__TOP__9(vlSymsp);
	vlTOPp->_sequent__TOP__11(vlSymsp);
	vlTOPp->_sequent__TOP__13(vlSymsp);
	vlTOPp->_sequent__TOP__15(vlSymsp);
	vlTOPp->_sequent__TOP__17(vlSymsp);
    }
    // Final
    vlTOPp->__Vclklast__TOP__clock = vlTOPp->clock;
}

void Vmain_tb::_eval_initial(Vmain_tb__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vmain_tb::_eval_initial\n"); );
    Vmain_tb* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_initial__TOP__1(vlSymsp);
    vlTOPp->_initial__TOP__4(vlSymsp);
    vlTOPp->_initial__TOP__8(vlSymsp);
}

void Vmain_tb::final() {
    VL_DEBUG_IF(VL_PRINTF("    Vmain_tb::final\n"); );
    // Variables
    Vmain_tb__Syms* __restrict vlSymsp = this->__VlSymsp;
    Vmain_tb* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void Vmain_tb::_eval_settle(Vmain_tb__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vmain_tb::_eval_settle\n"); );
    Vmain_tb* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_settle__TOP__5(vlSymsp);
    vlTOPp->_settle__TOP__7(vlSymsp);
    vlTOPp->_settle__TOP__10(vlSymsp);
    vlTOPp->_settle__TOP__12(vlSymsp);
    vlTOPp->_settle__TOP__14(vlSymsp);
    vlTOPp->_settle__TOP__16(vlSymsp);
    vlTOPp->_settle__TOP__18(vlSymsp);
}

VL_INLINE_OPT QData Vmain_tb::_change_request(Vmain_tb__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_PRINTF("    Vmain_tb::_change_request\n"); );
    Vmain_tb* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}
