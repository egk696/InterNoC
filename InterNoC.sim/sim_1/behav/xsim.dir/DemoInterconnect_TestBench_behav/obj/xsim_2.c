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
	_iki_vhdl_file_variable_register(dp + 593600);
	_iki_vhdl_file_variable_register(dp + 593656);


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

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 729480, dp + 741808, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 729536, dp + 741864, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 729672, dp + 744888, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 729864, dp + 744272, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 730032, dp + 744552, 0, 1, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 730072, dp + 744608, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 730128, dp + 744944, 0, 31, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 730224, dp + 745000, 0, 1, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 730264, dp + 745056, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 730360, dp + 744496, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 730512, dp + 743152, 0, 31, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 730552, dp + 743320, 0, 1, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 730592, dp + 743432, 0, 3, 0, 3, 4, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 730632, dp + 743096, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 730672, dp + 743208, 0, 7, 0, 7, 8, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 730712, dp + 743376, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 730768, dp + 743488, 0, 2, 0, 2, 3, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 730808, dp + 743600, 0, 3, 0, 3, 4, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 732216, dp + 743544, 0, 3, 0, 3, 4, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 730904, dp + 743264, 0, 2, 0, 2, 3, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 730944, dp + 743656, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 731000, dp + 741976, 0, 31, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 731040, dp + 742144, 0, 1, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 731080, dp + 742256, 0, 3, 0, 3, 4, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 731120, dp + 741920, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 731160, dp + 742032, 0, 7, 0, 7, 8, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 731200, dp + 742200, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 731256, dp + 742312, 0, 2, 0, 2, 3, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 731296, dp + 742424, 0, 3, 0, 3, 4, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 732256, dp + 742368, 0, 3, 0, 3, 4, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 731392, dp + 742088, 0, 2, 0, 2, 3, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 731432, dp + 742480, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 731528, dp + 743040, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 731816, dp + 744048, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 731968, dp + 742592, 0, 31, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 732008, dp + 742704, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 732120, dp + 742648, 0, 3, 0, 3, 4, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 732160, dp + 742760, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 632448, dp + 883728, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 632504, dp + 883784, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 642384, dp + 885688, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 643224, dp + 885688, 1, 1, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 644064, dp + 885688, 2, 2, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 644904, dp + 885688, 3, 3, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 642560, dp + 885072, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 643400, dp + 885072, 1, 1, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 644240, dp + 885072, 2, 2, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 645080, dp + 885072, 3, 3, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 642696, dp + 885352, 0, 1, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 643536, dp + 885352, 2, 3, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 644376, dp + 885352, 4, 5, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 645216, dp + 885352, 6, 7, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 642736, dp + 885408, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 643576, dp + 885408, 1, 1, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 644416, dp + 885408, 2, 2, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 645256, dp + 885408, 3, 3, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 642792, dp + 885744, 0, 31, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 643632, dp + 885744, 32, 63, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 644472, dp + 885744, 64, 95, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 645312, dp + 885744, 96, 127, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 642872, dp + 885800, 0, 1, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 643712, dp + 885800, 2, 3, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 644552, dp + 885800, 4, 5, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 645392, dp + 885800, 6, 7, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 642912, dp + 885856, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 643752, dp + 885856, 1, 1, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 644592, dp + 885856, 2, 2, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 645432, dp + 885856, 3, 3, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 643008, dp + 885296, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 643848, dp + 885296, 1, 1, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 644688, dp + 885296, 2, 2, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 645528, dp + 885296, 3, 3, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 639784, dp + 884456, 0, 31, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 640624, dp + 884456, 32, 63, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 641464, dp + 884456, 64, 95, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 639824, dp + 884512, 0, 2, 0, 2, 3, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 640664, dp + 884512, 3, 5, 0, 2, 3, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 641504, dp + 884512, 6, 8, 0, 2, 3, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 639904, dp + 884568, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 640744, dp + 884568, 1, 1, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 641584, dp + 884568, 2, 2, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 639960, dp + 883840, 0, 31, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 640800, dp + 883840, 32, 63, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 641640, dp + 883840, 64, 95, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 640000, dp + 883896, 0, 2, 0, 2, 3, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 640840, dp + 883896, 3, 5, 0, 2, 3, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 641680, dp + 883896, 6, 8, 0, 2, 3, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 640080, dp + 883952, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 640920, dp + 883952, 1, 1, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 641760, dp + 883952, 2, 2, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 640136, dp + 884400, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 640976, dp + 884400, 1, 1, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 641816, dp + 884400, 2, 2, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 640312, dp + 884848, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 641152, dp + 884848, 1, 1, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 641992, dp + 884848, 2, 2, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 640448, dp + 884064, 0, 31, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 641288, dp + 884064, 32, 63, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 642128, dp + 884064, 64, 95, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 640528, dp + 884120, 0, 3, 0, 3, 4, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 641368, dp + 884120, 4, 7, 0, 3, 4, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 642208, dp + 884120, 8, 11, 0, 3, 4, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 640568, dp + 884176, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 641408, dp + 884176, 1, 1, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 642248, dp + 884176, 2, 2, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 619544, dp + 1115024, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 619488, dp + 1114912, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 615304, dp + 1321936, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 615360, dp + 1321992, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 617896, dp + 1323728, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 618384, dp + 1322608, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 618536, dp + 1322944, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 618632, dp + 1323000, 0, 1, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 618672, dp + 1323056, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 618728, dp + 1323840, 0, 31, 0, 31, 32, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 618768, dp + 1323784, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 618808, dp + 1323952, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 618920, dp + 1323896, 0, 1, 0, 1, 2, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 618960, dp + 1324008, 0, 0, 0, 0, 1, 1);

	_iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 619112, dp + 1322888, 0, 0, 0, 0, 1, 1);
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
