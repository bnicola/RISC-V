open_project -project {C:\Libero_Projects\PF_Mi_V_Tut\designer\top\top_fp\top.pro}\
         -connect_programmers {FALSE}
load_programming_data \
    -name {MPF300TS} \
    -fpga {C:\Libero_Projects\PF_Mi_V_Tut\designer\top\top.map} \
    -header {C:\Libero_Projects\PF_Mi_V_Tut\designer\top\top.hdr} \
    -snvm {C:\Libero_Projects\PF_Mi_V_Tut\designer\top\top_snvm.efc} \
    -spm {C:\Libero_Projects\PF_Mi_V_Tut\designer\top\top.spm} \
    -dca {C:\Libero_Projects\PF_Mi_V_Tut\designer\top\top.dca}
export_single_ppd \
    -name {MPF300TS} \
    -file {C:\Libero_Projects\PF_Mi_V_Tut\designer\top\top.ppd}

save_project
close_project
