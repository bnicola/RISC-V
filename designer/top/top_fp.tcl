new_project \
         -name {top} \
         -location {C:\Libero_Projects\PF_Mi_V_Tut\designer\top\top_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {MPF300TS} \
         -name {MPF300TS}
enable_device \
         -name {MPF300TS} \
         -enable {TRUE}
save_project
close_project
