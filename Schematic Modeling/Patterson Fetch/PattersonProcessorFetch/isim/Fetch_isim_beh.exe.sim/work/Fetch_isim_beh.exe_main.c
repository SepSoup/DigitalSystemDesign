/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    unisims_ver_m_00000000000829403950_0784449685_init();
    work_m_00000000000251260954_4127774023_init();
    xilinxcorelib_ver_m_00000000001358910285_0488586231_init();
    xilinxcorelib_ver_m_00000000001687936702_3463246476_init();
    xilinxcorelib_ver_m_00000000000277421008_0608934809_init();
    xilinxcorelib_ver_m_00000000001603977570_2660299778_init();
    work_m_00000000002489990758_0467708899_init();
    work_m_00000000002462406312_1307194410_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002462406312_1307194410");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
