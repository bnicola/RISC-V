set_device \
    -family  PolarFire \
    -die     PA5M300TS \
    -package fcg1152 \
    -speed   -1 \
    -tempr   {IND} \
    -voltr   {IND}
set_def {VOLTAGE} {1.0}
set_def {VCCI_1.2_VOLTR} {IND}
set_def {VCCI_1.5_VOLTR} {IND}
set_def {VCCI_1.8_VOLTR} {IND}
set_def {VCCI_2.5_VOLTR} {IND}
set_def {VCCI_3.3_VOLTR} {IND}
set_def {RTG4_MITIGATION_ON} {0}
set_def USE_CONSTRAINTS_FLOW 1
set_def NETLIST_TYPE EDIF
set_name top
set_workdir {C:\Libero_Projects\PF_Mi_V_Tut\designer\top}
set_log     {C:\Libero_Projects\PF_Mi_V_Tut\designer\top\top_sdc.log}
set_design_state pre_layout
