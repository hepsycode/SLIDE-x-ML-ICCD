#include <string>
#include <verilated.h>
#include "Vmain_tb.h"

#if VM_TRACE
# include <verilated_vcd_c.h>
#endif


#define SIMULATION_MAX 200000000

static const double CLOCK_PERIOD =5;
static const double HALF_CLOCK_PERIOD = CLOCK_PERIOD/2;

double main_time = 0;

double sc_time_stamp ()  {return main_time;}

int main (int argc, char **argv, char **env)
{
      Vmain_tb *top;
   
      std::string vcd_output_filename = "HLS_output//simulation/test.vcd";
      Verilated::commandArgs(argc, argv);
      Verilated::debug(0);
      top = new Vmain_tb;
      
      
      #if VM_TRACE
      Verilated::traceEverOn(true);
      VerilatedVcdC* tfp = new VerilatedVcdC;
      #endif
      main_time=0;
   #if VM_TRACE
      top->trace (tfp, 99);
      tfp->open (vcd_output_filename.c_str());
   #endif
      int cycleCounter = 0;
      top->clock = 1;
      while (!Verilated::gotFinish() && cycleCounter < SIMULATION_MAX)
      {
           top->clock = top->clock == 0 ? 1 : 0;
           top->eval();
      #if VM_TRACE
           if (tfp) tfp->dump (main_time);
      #endif
           main_time += HALF_CLOCK_PERIOD;
           cycleCounter++;
         }
   #if VM_TRACE
      if (tfp) tfp->dump (main_time);
   #endif
      top->final();
      #if VM_TRACE
      tfp->close();
      delete tfp;
      #endif
      delete top;
      exit(0L);
}
