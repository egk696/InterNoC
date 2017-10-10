/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#define CC_CLANG

#include "iki.h"
#ifdef __GNUC__
#include <stdlib.h>
#else
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#define CC_CLANG

#include "iki.h"
#ifdef __GNUC__
#include <stdlib.h>
#else
#define alloca _alloca
#endif
void relocate(char *dp) _asm("_relocate");

void relocate(char *dp)
{
	_iki_relocate(dp, "xsim.dir/DemoInterconnect_TestBench_behav/xsim.reloc", "xsim.dir/DemoInterconnect_TestBench_behav/xsimk.exe", (void*)relocate);
	_iki_vhdl_file_variable_register(dp + 589952);
	_iki_vhdl_file_variable_register(dp + 590008);


	/*Populate the transaction function pointer field in the whole net structure */
}
void sensitize(char *dp) _asm("_sensitize");

void sensitize(char *dp)
{
	_iki_sensitize(dp, "xsim.dir/DemoInterconnect_TestBench_behav/xsim.reloc");
}
void simulate(char *dp) _asm("_simulate");

void simulate(char *dp)
{
	_iki_schedule_processes_at_time_zero(dp, "xsim.dir/DemoInterconnect_TestBench_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 725448, dp + 737776, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 725504, dp + 737832, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 725640, dp + 740856, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 725832, dp + 740240, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 726000, dp + 740520, 0, 1, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 726040, dp + 740576, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 726096, dp + 740912, 0, 31, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 726192, dp + 740968, 0, 1, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 726232, dp + 741024, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 726328, dp + 740464, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 726480, dp + 739120, 0, 31, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 726520, dp + 739288, 0, 1, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 726560, dp + 739400, 0, 3, 0, 3, 4, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 726600, dp + 739064, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 726640, dp + 739176, 0, 7, 0, 7, 8, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 726680, dp + 739344, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 726736, dp + 739456, 0, 2, 0, 2, 3, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 726776, dp + 739568, 0, 3, 0, 3, 4, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 728184, dp + 739512, 0, 3, 0, 3, 4, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 726872, dp + 739232, 0, 2, 0, 2, 3, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 726912, dp + 739624, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 726968, dp + 737944, 0, 31, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 727008, dp + 738112, 0, 1, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 727048, dp + 738224, 0, 3, 0, 3, 4, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 727088, dp + 737888, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 727128, dp + 738000, 0, 7, 0, 7, 8, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 727168, dp + 738168, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 727224, dp + 738280, 0, 2, 0, 2, 3, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 727264, dp + 738392, 0, 3, 0, 3, 4, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 728224, dp + 738336, 0, 3, 0, 3, 4, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 727360, dp + 738056, 0, 2, 0, 2, 3, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 727400, dp + 738448, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 727496, dp + 739008, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 727784, dp + 740016, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 727936, dp + 738560, 0, 31, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 727976, dp + 738672, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 728088, dp + 738616, 0, 3, 0, 3, 4, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 728128, dp + 738728, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 628416, dp + 879696, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 628472, dp + 879752, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 638352, dp + 881656, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 639192, dp + 881656, 1, 1, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 640032, dp + 881656, 2, 2, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 640872, dp + 881656, 3, 3, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 638528, dp + 881040, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 639368, dp + 881040, 1, 1, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 640208, dp + 881040, 2, 2, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 641048, dp + 881040, 3, 3, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 638664, dp + 881320, 0, 1, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 639504, dp + 881320, 2, 3, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 640344, dp + 881320, 4, 5, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 641184, dp + 881320, 6, 7, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 638704, dp + 881376, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 639544, dp + 881376, 1, 1, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 640384, dp + 881376, 2, 2, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 641224, dp + 881376, 3, 3, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 638760, dp + 881712, 0, 31, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 639600, dp + 881712, 32, 63, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 640440, dp + 881712, 64, 95, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 641280, dp + 881712, 96, 127, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 638840, dp + 881768, 0, 1, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 639680, dp + 881768, 2, 3, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 640520, dp + 881768, 4, 5, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 641360, dp + 881768, 6, 7, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 638880, dp + 881824, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 639720, dp + 881824, 1, 1, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 640560, dp + 881824, 2, 2, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 641400, dp + 881824, 3, 3, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 638976, dp + 881264, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 639816, dp + 881264, 1, 1, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 640656, dp + 881264, 2, 2, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 641496, dp + 881264, 3, 3, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 635752, dp + 880424, 0, 31, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 636592, dp + 880424, 32, 63, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 637432, dp + 880424, 64, 95, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 635792, dp + 880480, 0, 2, 0, 2, 3, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 636632, dp + 880480, 3, 5, 0, 2, 3, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 637472, dp + 880480, 6, 8, 0, 2, 3, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 635872, dp + 880536, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 636712, dp + 880536, 1, 1, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 637552, dp + 880536, 2, 2, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 635928, dp + 879808, 0, 31, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 636768, dp + 879808, 32, 63, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 637608, dp + 879808, 64, 95, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 635968, dp + 879864, 0, 2, 0, 2, 3, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 636808, dp + 879864, 3, 5, 0, 2, 3, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 637648, dp + 879864, 6, 8, 0, 2, 3, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 636048, dp + 879920, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 636888, dp + 879920, 1, 1, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 637728, dp + 879920, 2, 2, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 636104, dp + 880368, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 636944, dp + 880368, 1, 1, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 637784, dp + 880368, 2, 2, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 636280, dp + 880816, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 637120, dp + 880816, 1, 1, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 637960, dp + 880816, 2, 2, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 636416, dp + 880032, 0, 31, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 637256, dp + 880032, 32, 63, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 638096, dp + 880032, 64, 95, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 636496, dp + 880088, 0, 3, 0, 3, 4, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 637336, dp + 880088, 4, 7, 0, 3, 4, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 638176, dp + 880088, 8, 11, 0, 3, 4, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 636536, dp + 880144, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 637376, dp + 880144, 1, 1, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 638216, dp + 880144, 2, 2, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 615672, dp + 1110168, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 615616, dp + 1110056, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 611488, dp + 1311976, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 611544, dp + 1312032, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 614024, dp + 1313768, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 614512, dp + 1312648, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 614664, dp + 1312984, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 614760, dp + 1313040, 0, 1, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 614800, dp + 1313096, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 614856, dp + 1313880, 0, 31, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 614896, dp + 1313824, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 614936, dp + 1313992, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 615048, dp + 1313936, 0, 1, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 615088, dp + 1314048, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 615240, dp + 1312928, 0, 0, 0, 0, 1, 1);
	_iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#define CC_CLANG
#include "iki_bridge.h"
void relocate(char *dp) _asm("_relocate");
void sensitize(char *dp) _asm("_sensitize");
void simulate(char *dp) _asm("_simulate");
void relocate(char *);

void sensitize(char *);

void simulate(char *);

int _main(int argc, char **argv)
{
_iki_heap_initialize("ms", "isimmm", 0, 10485760) ;
_iki_set_sv_type_file_path_name("xsim.dir/DemoInterconnect_TestBench_behav/xsim.svtype");
    void* design_handle = _iki_create_design("xsim.dir/DemoInterconnect_TestBench_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, _isimBridge_getWdbWriter(), 0, argc, argv);
     _iki_set_rc_trial_count(7);
    (void* ) design_handle;
    return _iki_simulate_design();
}
