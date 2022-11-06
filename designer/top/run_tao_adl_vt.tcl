set_device -family {PolarFire} -die {MPF300TS} -speed {-1}
read_adl {C:\Libero_Projects\PF_Mi_V_Tut\designer\top\top.adl}
read_afl {C:\Libero_Projects\PF_Mi_V_Tut\designer\top\top.afl}
map_netlist
read_sdc {C:\Libero_Projects\PF_Mi_V_Tut\constraint\top_derived_constraints.sdc}
read_sdc {C:\Libero_Projects\PF_Mi_V_Tut\constraint\timing_user_constraints.sdc}
check_constraints -ignore_errors {C:\Libero_Projects\PF_Mi_V_Tut\constraint\timing_sdc_errors.log}
estimate_jitter -report {C:\Libero_Projects\PF_Mi_V_Tut\designer\top\timing_analysis_jitter_report.txt}
write_sdc -mode smarttime {C:\Libero_Projects\PF_Mi_V_Tut\designer\top\timing_analysis.sdc}
