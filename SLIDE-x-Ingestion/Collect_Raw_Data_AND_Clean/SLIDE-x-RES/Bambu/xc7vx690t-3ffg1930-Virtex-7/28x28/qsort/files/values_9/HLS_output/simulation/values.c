/*
 * Politecnico di Milano
 * Code created using PandA - Version: PandA 0.9.6 - Revision 891ec3caed502474cab0813cc4a9fc678deabaa5 - Date 2022-06-07T21:33:47
 * bambu executed with: bambu -I/home/dews/Scrivania/bambu-hls/RESULTS/Bambu/xc7vx690t-3ffg1930-Virtex-7/28x28/qsort/includes/values_9 --simulate --simulator=VERILATOR --clock-period=5 --device-name=xc7vx690t-3ffg1930-VVD /home/dews/Scrivania/bambu-hls/cc4cs_bambu/benchmarkBasic/qsort/thrd.c 
 */
#define _FILE_OFFSET_BITS 64

#define __Inf (1.0/0.0)
#define __Nan (0.0/0.0)

#ifdef __cplusplus
#include <cstdio>

#include <cstdlib>

typedef bool _Bool;

#else
#include <stdio.h>

#include <stdlib.h>

extern void exit(int status);
#endif

//global variable used to store the output file
FILE * __bambu_testbench_fp;

//variable used to detect a standard end of the main (exit has not been called)
unsigned int __standard_exit;
//definition of __bambu_testbench_exit function
void __bambu_testbench_exit(void) __attribute__ ((destructor));
void __bambu_testbench_exit(void)
{
   if (!__standard_exit)
   {
      fprintf(__bambu_testbench_fp, "//expected value for return value\n");
      fprintf(__bambu_testbench_fp, "o00000000000000000000000000000000\n");
      fprintf(__bambu_testbench_fp, "e\n");
   }
}

void _Dec2Bin_(FILE * __bambu_testbench_fp, long long int num, unsigned int precision)
{
   unsigned int i;
   unsigned long long int ull_value = (unsigned long long int) num;
   for (i = 0; i < precision; ++i)
   fprintf(__bambu_testbench_fp, "%c", (((1LLU << (precision - i -1)) & ull_value) ? '1' : '0'));
}

void _Ptd2Bin_(FILE * __bambu_testbench_fp, unsigned char * num, unsigned int precision)
{
   unsigned int i, j;
   char value;
   if (precision%8)
   {
      value = *(num+precision/8);
      for (j = 8-precision%8; j < 8; ++j)
      fprintf(__bambu_testbench_fp, "%c", (((1LLU << (8 - j - 1)) & value) ? '1' : '0'));
   }
   for (i = 0; i < 8*(precision/8); i = i + 8)
   {
      value = *(num + (precision / 8) - (i / 8) - 1);
      for (j = 0; j < 8; ++j)
      fprintf(__bambu_testbench_fp, "%c", (((1LLU << (8 - j - 1)) & value) ? '1' : '0'));
   }
}

#undef main
int main()
{
   unsigned int __testbench_index, __testbench_index0, __testbench_index1, __testbench_index2;
   __standard_exit = 0;
   __bambu_testbench_fp = fopen("HLS_output//simulation/values.txt", "w");
   if (!__bambu_testbench_fp) {
      perror("can't open file: HLS_output//simulation/values.txt");
      exit(1);
   }
   
   // parameters declaration
   fprintf(__bambu_testbench_fp, "//base address 1073741824\n");
   fprintf(__bambu_testbench_fp, "b01000000000000000000000000000000\n");
   {
   }
   {
      // parameter initialization
      // function call
      system("HLS_output//simulation/main_exec");
      // print expected results
   }
   __standard_exit = 1;
   exit(0);
}

