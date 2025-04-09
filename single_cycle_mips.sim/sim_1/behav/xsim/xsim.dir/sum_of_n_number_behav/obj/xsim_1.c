/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_2100(char*, char *);
IKI_DLLESPEC extern void execute_2101(char*, char *);
IKI_DLLESPEC extern void execute_2102(char*, char *);
IKI_DLLESPEC extern void execute_3210(char*, char *);
IKI_DLLESPEC extern void execute_3211(char*, char *);
IKI_DLLESPEC extern void execute_3212(char*, char *);
IKI_DLLESPEC extern void execute_3213(char*, char *);
IKI_DLLESPEC extern void execute_3214(char*, char *);
IKI_DLLESPEC extern void execute_3215(char*, char *);
IKI_DLLESPEC extern void execute_2108(char*, char *);
IKI_DLLESPEC extern void execute_2113(char*, char *);
IKI_DLLESPEC extern void execute_3172(char*, char *);
IKI_DLLESPEC extern void execute_3173(char*, char *);
IKI_DLLESPEC extern void execute_3174(char*, char *);
IKI_DLLESPEC extern void execute_3175(char*, char *);
IKI_DLLESPEC extern void execute_3176(char*, char *);
IKI_DLLESPEC extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_3179(char*, char *);
IKI_DLLESPEC extern void execute_3180(char*, char *);
IKI_DLLESPEC extern void execute_3186(char*, char *);
IKI_DLLESPEC extern void execute_3187(char*, char *);
IKI_DLLESPEC extern void execute_3188(char*, char *);
IKI_DLLESPEC extern void execute_3189(char*, char *);
IKI_DLLESPEC extern void execute_3190(char*, char *);
IKI_DLLESPEC extern void execute_3191(char*, char *);
IKI_DLLESPEC extern void execute_3192(char*, char *);
IKI_DLLESPEC extern void execute_3193(char*, char *);
IKI_DLLESPEC extern void execute_3194(char*, char *);
IKI_DLLESPEC extern void execute_3195(char*, char *);
IKI_DLLESPEC extern void execute_3196(char*, char *);
IKI_DLLESPEC extern void execute_3197(char*, char *);
IKI_DLLESPEC extern void execute_3198(char*, char *);
IKI_DLLESPEC extern void execute_3199(char*, char *);
IKI_DLLESPEC extern void execute_3200(char*, char *);
IKI_DLLESPEC extern void execute_3201(char*, char *);
IKI_DLLESPEC extern void execute_3202(char*, char *);
IKI_DLLESPEC extern void execute_3203(char*, char *);
IKI_DLLESPEC extern void execute_3204(char*, char *);
IKI_DLLESPEC extern void execute_3205(char*, char *);
IKI_DLLESPEC extern void execute_3206(char*, char *);
IKI_DLLESPEC extern void execute_3207(char*, char *);
IKI_DLLESPEC extern void execute_3208(char*, char *);
IKI_DLLESPEC extern void execute_3209(char*, char *);
IKI_DLLESPEC extern void execute_4(char*, char *);
IKI_DLLESPEC extern void execute_6(char*, char *);
IKI_DLLESPEC extern void execute_2109(char*, char *);
IKI_DLLESPEC extern void execute_2110(char*, char *);
IKI_DLLESPEC extern void execute_2111(char*, char *);
IKI_DLLESPEC extern void execute_2112(char*, char *);
IKI_DLLESPEC extern void execute_8(char*, char *);
IKI_DLLESPEC extern void execute_3138(char*, char *);
IKI_DLLESPEC extern void execute_3139(char*, char *);
IKI_DLLESPEC extern void execute_2114(char*, char *);
IKI_DLLESPEC extern void execute_2115(char*, char *);
IKI_DLLESPEC extern void execute_2116(char*, char *);
IKI_DLLESPEC extern void execute_2117(char*, char *);
IKI_DLLESPEC extern void execute_2118(char*, char *);
IKI_DLLESPEC extern void execute_2119(char*, char *);
IKI_DLLESPEC extern void execute_2120(char*, char *);
IKI_DLLESPEC extern void execute_2121(char*, char *);
IKI_DLLESPEC extern void execute_2122(char*, char *);
IKI_DLLESPEC extern void execute_2123(char*, char *);
IKI_DLLESPEC extern void execute_2124(char*, char *);
IKI_DLLESPEC extern void execute_2125(char*, char *);
IKI_DLLESPEC extern void execute_2126(char*, char *);
IKI_DLLESPEC extern void execute_2127(char*, char *);
IKI_DLLESPEC extern void execute_2128(char*, char *);
IKI_DLLESPEC extern void execute_2129(char*, char *);
IKI_DLLESPEC extern void execute_2130(char*, char *);
IKI_DLLESPEC extern void execute_2131(char*, char *);
IKI_DLLESPEC extern void execute_2132(char*, char *);
IKI_DLLESPEC extern void execute_2133(char*, char *);
IKI_DLLESPEC extern void execute_2134(char*, char *);
IKI_DLLESPEC extern void execute_2135(char*, char *);
IKI_DLLESPEC extern void execute_2136(char*, char *);
IKI_DLLESPEC extern void execute_2137(char*, char *);
IKI_DLLESPEC extern void execute_2138(char*, char *);
IKI_DLLESPEC extern void execute_2139(char*, char *);
IKI_DLLESPEC extern void execute_2140(char*, char *);
IKI_DLLESPEC extern void execute_2141(char*, char *);
IKI_DLLESPEC extern void execute_2142(char*, char *);
IKI_DLLESPEC extern void execute_2143(char*, char *);
IKI_DLLESPEC extern void execute_2144(char*, char *);
IKI_DLLESPEC extern void execute_2145(char*, char *);
IKI_DLLESPEC extern void execute_12(char*, char *);
IKI_DLLESPEC extern void execute_3140(char*, char *);
IKI_DLLESPEC extern void execute_3141(char*, char *);
IKI_DLLESPEC extern void execute_3142(char*, char *);
IKI_DLLESPEC extern void execute_3143(char*, char *);
IKI_DLLESPEC extern void execute_3144(char*, char *);
IKI_DLLESPEC extern void execute_3145(char*, char *);
IKI_DLLESPEC extern void execute_3146(char*, char *);
IKI_DLLESPEC extern void execute_3147(char*, char *);
IKI_DLLESPEC extern void execute_3148(char*, char *);
IKI_DLLESPEC extern void execute_3149(char*, char *);
IKI_DLLESPEC extern void execute_3150(char*, char *);
IKI_DLLESPEC extern void execute_3151(char*, char *);
IKI_DLLESPEC extern void execute_3152(char*, char *);
IKI_DLLESPEC extern void execute_3153(char*, char *);
IKI_DLLESPEC extern void execute_3154(char*, char *);
IKI_DLLESPEC extern void execute_3155(char*, char *);
IKI_DLLESPEC extern void execute_3156(char*, char *);
IKI_DLLESPEC extern void execute_3157(char*, char *);
IKI_DLLESPEC extern void execute_3158(char*, char *);
IKI_DLLESPEC extern void execute_3159(char*, char *);
IKI_DLLESPEC extern void execute_3160(char*, char *);
IKI_DLLESPEC extern void execute_3161(char*, char *);
IKI_DLLESPEC extern void execute_3162(char*, char *);
IKI_DLLESPEC extern void execute_3163(char*, char *);
IKI_DLLESPEC extern void execute_3164(char*, char *);
IKI_DLLESPEC extern void execute_3165(char*, char *);
IKI_DLLESPEC extern void execute_3166(char*, char *);
IKI_DLLESPEC extern void execute_3167(char*, char *);
IKI_DLLESPEC extern void execute_3168(char*, char *);
IKI_DLLESPEC extern void execute_3169(char*, char *);
IKI_DLLESPEC extern void execute_3170(char*, char *);
IKI_DLLESPEC extern void execute_3171(char*, char *);
IKI_DLLESPEC extern void execute_2092(char*, char *);
IKI_DLLESPEC extern void execute_3177(char*, char *);
IKI_DLLESPEC extern void execute_2094(char*, char *);
IKI_DLLESPEC extern void execute_2095(char*, char *);
IKI_DLLESPEC extern void execute_3182(char*, char *);
IKI_DLLESPEC extern void execute_3183(char*, char *);
IKI_DLLESPEC extern void execute_3184(char*, char *);
IKI_DLLESPEC extern void execute_3185(char*, char *);
IKI_DLLESPEC extern void execute_2097(char*, char *);
IKI_DLLESPEC extern void execute_2098(char*, char *);
IKI_DLLESPEC extern void execute_2099(char*, char *);
IKI_DLLESPEC extern void execute_2104(char*, char *);
IKI_DLLESPEC extern void execute_2105(char*, char *);
IKI_DLLESPEC extern void execute_2106(char*, char *);
IKI_DLLESPEC extern void execute_2107(char*, char *);
IKI_DLLESPEC extern void execute_3216(char*, char *);
IKI_DLLESPEC extern void execute_3217(char*, char *);
IKI_DLLESPEC extern void execute_3218(char*, char *);
IKI_DLLESPEC extern void execute_3219(char*, char *);
IKI_DLLESPEC extern void execute_3220(char*, char *);
IKI_DLLESPEC extern void execute_3221(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[139] = {(funcp)execute_2100, (funcp)execute_2101, (funcp)execute_2102, (funcp)execute_3210, (funcp)execute_3211, (funcp)execute_3212, (funcp)execute_3213, (funcp)execute_3214, (funcp)execute_3215, (funcp)execute_2108, (funcp)execute_2113, (funcp)execute_3172, (funcp)execute_3173, (funcp)execute_3174, (funcp)execute_3175, (funcp)execute_3176, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_3179, (funcp)execute_3180, (funcp)execute_3186, (funcp)execute_3187, (funcp)execute_3188, (funcp)execute_3189, (funcp)execute_3190, (funcp)execute_3191, (funcp)execute_3192, (funcp)execute_3193, (funcp)execute_3194, (funcp)execute_3195, (funcp)execute_3196, (funcp)execute_3197, (funcp)execute_3198, (funcp)execute_3199, (funcp)execute_3200, (funcp)execute_3201, (funcp)execute_3202, (funcp)execute_3203, (funcp)execute_3204, (funcp)execute_3205, (funcp)execute_3206, (funcp)execute_3207, (funcp)execute_3208, (funcp)execute_3209, (funcp)execute_4, (funcp)execute_6, (funcp)execute_2109, (funcp)execute_2110, (funcp)execute_2111, (funcp)execute_2112, (funcp)execute_8, (funcp)execute_3138, (funcp)execute_3139, (funcp)execute_2114, (funcp)execute_2115, (funcp)execute_2116, (funcp)execute_2117, (funcp)execute_2118, (funcp)execute_2119, (funcp)execute_2120, (funcp)execute_2121, (funcp)execute_2122, (funcp)execute_2123, (funcp)execute_2124, (funcp)execute_2125, (funcp)execute_2126, (funcp)execute_2127, (funcp)execute_2128, (funcp)execute_2129, (funcp)execute_2130, (funcp)execute_2131, (funcp)execute_2132, (funcp)execute_2133, (funcp)execute_2134, (funcp)execute_2135, (funcp)execute_2136, (funcp)execute_2137, (funcp)execute_2138, (funcp)execute_2139, (funcp)execute_2140, (funcp)execute_2141, (funcp)execute_2142, (funcp)execute_2143, (funcp)execute_2144, (funcp)execute_2145, (funcp)execute_12, (funcp)execute_3140, (funcp)execute_3141, (funcp)execute_3142, (funcp)execute_3143, (funcp)execute_3144, (funcp)execute_3145, (funcp)execute_3146, (funcp)execute_3147, (funcp)execute_3148, (funcp)execute_3149, (funcp)execute_3150, (funcp)execute_3151, (funcp)execute_3152, (funcp)execute_3153, (funcp)execute_3154, (funcp)execute_3155, (funcp)execute_3156, (funcp)execute_3157, (funcp)execute_3158, (funcp)execute_3159, (funcp)execute_3160, (funcp)execute_3161, (funcp)execute_3162, (funcp)execute_3163, (funcp)execute_3164, (funcp)execute_3165, (funcp)execute_3166, (funcp)execute_3167, (funcp)execute_3168, (funcp)execute_3169, (funcp)execute_3170, (funcp)execute_3171, (funcp)execute_2092, (funcp)execute_3177, (funcp)execute_2094, (funcp)execute_2095, (funcp)execute_3182, (funcp)execute_3183, (funcp)execute_3184, (funcp)execute_3185, (funcp)execute_2097, (funcp)execute_2098, (funcp)execute_2099, (funcp)execute_2104, (funcp)execute_2105, (funcp)execute_2106, (funcp)execute_2107, (funcp)execute_3216, (funcp)execute_3217, (funcp)execute_3218, (funcp)execute_3219, (funcp)execute_3220, (funcp)execute_3221, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 139;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/sum_of_n_number_behav/xsim.reloc",  (void **)funcTab, 139);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/sum_of_n_number_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/sum_of_n_number_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_xsimdir_location_if_remapped(argc, argv)  ;
    iki_set_sv_type_file_path_name("xsim.dir/sum_of_n_number_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/sum_of_n_number_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/sum_of_n_number_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
