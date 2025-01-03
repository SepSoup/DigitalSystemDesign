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
    work_m_00000000004211403723_3519129391_init();
    work_m_00000000002063880543_3489148277_init();
    unisims_ver_m_00000000000829403950_0784449685_init();
    unisims_ver_m_00000000001508379050_3852734344_init();
    unisims_ver_m_00000000000236260522_2449448540_init();
    work_m_00000000003517521394_0413329370_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003517521394_0413329370");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
