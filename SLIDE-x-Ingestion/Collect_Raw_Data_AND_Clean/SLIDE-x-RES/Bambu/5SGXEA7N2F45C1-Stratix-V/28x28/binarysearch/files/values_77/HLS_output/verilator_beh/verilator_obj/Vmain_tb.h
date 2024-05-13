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
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__selector_MUX_45_reg_1_0_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__selector_MUX_46_reg_2_0_0_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__wrenable_reg_1,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__wrenable_reg_2,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__wrenable_reg_3,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___present_state,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__out_cond_expr_FU_8_8_8_8_15_i1_fu_main_28865_29166,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__out_cond_expr_FU_8_8_8_8_15_i2_fu_main_28865_29168,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__out_eq_expr_FU_8_8_8_16_i0_fu_main_28865_29152,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__out_plus_expr_FU_8_8_8_24_i0_fu_main_28865_29072,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__out_truth_and_expr_FU_1_1_1_26_i0_fu_main_28865_29164,0,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__bram_write,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__memory_addr_a,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28861_0__DOT__bram_write,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28861_0__DOT__memory_addr_a,1,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__reg_0__DOT__reg_out1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__reg_1__DOT__reg_out1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__reg_2__DOT__reg_out1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__reg_3__DOT__reg_out1,6,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__reg_4__DOT__reg_out1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__reg_5__DOT__reg_out1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__reg_6__DOT__reg_out1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__done_delayed_REG__DOT__reg_out1,0,0);
    //char	__VpadToAlign45[1];
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__out_minus_expr_FU_8_8_8_20_i0_fu_main_28865_29069,8,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__din_value_aggregated,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__dout_a,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__tmp_addr,13,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__relative_addr,13,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28861_0__DOT__din_value_aggregated,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28861_0__DOT__dout_a,15,0);
    VL_SIG(v__DOT__res_file,31,0);
    VL_SIG(v__DOT__file,31,0);
    VL_SIG(v__DOT___r_,31,0);
    VL_SIG(v__DOT___n_,31,0);
    VL_SIG(v__DOT___addr_i_,31,0);
    VL_SIG(v__DOT___ch_,31,0);
    //char	__VpadToAlign84[4];
    VL_SIGW(v__DOT__line,8000,0,251);
    VL_SIG(v__DOT__base_addr,31,0);
    VL_SIG64(v__DOT__startTime,63,0);
    VL_SIG64(v__DOT__endTime,63,0);
    VL_SIG64(v__DOT__sim_time,63,0);
    VL_SIG8(v__DOT___bambu_testbench_mem_[1],7,0);
    //char	__VpadToAlign1121[7];
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT__memory[11],7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28861_0__DOT__memory[1],7,0);
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    static VL_ST_SIG8(__Vtable1_v__DOT__main__DOT___main_i0__DOT__done_delayed_REG_signal_in[16],0,0);
    static VL_ST_SIG8(__Vtable1_v__DOT__main__DOT___main_i0__DOT__fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_0_i0_STORE[16],0,0);
    static VL_ST_SIG8(__Vtable1_v__DOT__main__DOT___main_i0__DOT__fuselector_ARRAY_1D_STD_DISTRAM_NN_SDS_1_i0_STORE[16],0,0);
    static VL_ST_SIG8(__Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_MUX_45_reg_1_0_0_0[16],0,0);
    static VL_ST_SIG8(__Vtable1_v__DOT__main__DOT___main_i0__DOT__selector_MUX_46_reg_2_0_0_0[16],0,0);
    static VL_ST_SIG8(__Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_0[16],0,0);
    static VL_ST_SIG8(__Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_1[16],0,0);
    static VL_ST_SIG8(__Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_2[16],0,0);
    static VL_ST_SIG8(__Vtable1_v__DOT__main__DOT___main_i0__DOT__wrenable_reg_3[16],0,0);
    static VL_ST_SIG8(__Vtable1_v__DOT__main__DOT___main_i0__DOT__Controller_i__DOT___next_state[16],1,0);
    VL_SIG8(v__DOT____Vlvbound2,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT____Vlvbound1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28859_0__DOT____Vlvbound2,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28861_0__DOT____Vlvbound1,7,0);
    VL_SIG8(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT__array_28861_0__DOT____Vlvbound2,7,0);
    VL_SIG8(__Vtableidx1,3,0);
    VL_SIG8(__Vclklast__TOP__clock,0,0);
    //char	__VpadToAlign1151[1];
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT____Vcellout__array_28859_0__out1,15,0);
    VL_SIG16(v__DOT__main__DOT___main_i0__DOT__Datapath_i__DOT____Vcellout__array_28861_0__out1,15,0);
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
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
    static void	_initial__TOP__8(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__11(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__13(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__15(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__2(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__3(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__6(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_sequent__TOP__9(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_settle__TOP__10(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_settle__TOP__12(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_settle__TOP__14(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_settle__TOP__4(Vmain_tb__Syms* __restrict vlSymsp);
    static void	_settle__TOP__7(Vmain_tb__Syms* __restrict vlSymsp);
} VL_ATTR_ALIGNED(128);

#endif  /*guard*/
