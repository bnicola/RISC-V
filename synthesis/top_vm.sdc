# Written by Synplify Pro version map202109actsp1, Build 056R. Synopsys Run ID: sid1666171833 
# Top Level Design Parameters 

# Clocks 
create_clock -period 20.000 -waveform {0.000 10.000} -name {REF_CLK_0} [get_ports {REF_CLK_0}] 
create_clock -period 33.330 -waveform {0.000 16.665} -name {TCK} [get_ports {TCK}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {DDR3_0_DDRPHY_BLK_LANE_1_CTRL_PF_LANECTRL|TX_DQS_inferred_clock} [get_pins {DDR3_0_0/DDRPHY_BLK_0/LANE_1_CTRL/I_LANECTRL/TX_DQS}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {DDR3_0_DDRPHY_BLK_LANE_1_CTRL_PF_LANECTRL|TX_DQS_270_inferred_clock} [get_pins {DDR3_0_0/DDRPHY_BLK_0/LANE_1_CTRL/I_LANECTRL/TX_DQS_270}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {DDR3_0_DDRPHY_BLK_LANE_0_CTRL_PF_LANECTRL|TX_DQS_inferred_clock} [get_pins {DDR3_0_0/DDRPHY_BLK_0/LANE_0_CTRL/I_LANECTRL/TX_DQS}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {DDR3_0_DDRPHY_BLK_LANE_0_CTRL_PF_LANECTRL|TX_DQS_270_inferred_clock} [get_pins {DDR3_0_0/DDRPHY_BLK_0/LANE_0_CTRL/I_LANECTRL/TX_DQS_270}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {DDR3_0_DDRPHY_BLK_LANECTRL_ADDR_CMD_0_PF_LANECTRL|TX_DQS_270_inferred_clock} [get_pins {DDR3_0_0/DDRPHY_BLK_0/LANECTRL_ADDR_CMD_0/I_LANECTRL/TX_DQS_270}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {COREDDR_TIP_INT_Z73|VCO_PHSEL_ROTATE_inferred_clock[0]} [get_pins {DDR3_0_0/DDRPHY_BLK_0/IOD_TRAINING_0/COREDDR_TIP_INT_U/VCO_PHSEL_ROTATE[0]/Q}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {COREJTAGDEBUG_Z14|iUDRCK_inferred_clock} [get_pins {COREJTAGDEBUG_0_0/COREJTAGDEBUG_0_0/genblk1.genblk1.genblk1.UJTAG_inst/UDRCK}] 

# Virtual Clocks 

# Generated Clocks 
create_generated_clock -name {CCC_C0_0/CCC_C0_0/pll_inst_0/OUT0} -multiply_by {5} -divide_by {3} -source [get_pins {CCC_C0_0/CCC_C0_0/pll_inst_0/REF_CLK_0}]  [get_pins {CCC_C0_0/CCC_C0_0/pll_inst_0/OUT0}] 
create_generated_clock -name {DDR3_0_0/CCC_0/pll_inst_0/OUT0} -multiply_by {8} -source [get_pins {DDR3_0_0/CCC_0/pll_inst_0/REF_CLK_0}]  [get_pins {DDR3_0_0/CCC_0/pll_inst_0/OUT0}] 
create_generated_clock -name {DDR3_0_0/CCC_0/pll_inst_0/OUT1} -multiply_by {2} -source [get_pins {DDR3_0_0/CCC_0/pll_inst_0/REF_CLK_0}]  [get_pins {DDR3_0_0/CCC_0/pll_inst_0/OUT1}] 
create_generated_clock -name {DDR3_0_0/CCC_0/pll_inst_0/OUT2} -multiply_by {8} -source [get_pins {DDR3_0_0/CCC_0/pll_inst_0/REF_CLK_0}]  [get_pins {DDR3_0_0/CCC_0/pll_inst_0/OUT2}] 
create_generated_clock -name {DDR3_0_0/CCC_0/pll_inst_0/OUT3} -multiply_by {8} -source [get_pins {DDR3_0_0/CCC_0/pll_inst_0/REF_CLK_0}]  [get_pins {DDR3_0_0/CCC_0/pll_inst_0/OUT3}] 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 
set_false_path -through [get_pins {reset_syn_0_0/reset_syn_0_0/dff_15/Q}] 
set_false_path -through [get_pins {DDR3_0_0/DDRPHY_BLK_0/OB_A_12/Y}] 
set_false_path -through [get_pins {DDR3_0_0/DDRPHY_BLK_0/OB_DIFF_CK0/Y}] 
set_false_path -through [get_pins {DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQS/I_BIBUF_DIFF_DQS_0/Y DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQS/I_BIBUF_DIFF_DQS_0/Y DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_BIBUF_7/Y DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_BIBUF_6/Y DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_BIBUF_5/Y DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_BIBUF_4/Y DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_BIBUF_3/Y DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_BIBUF_2/Y DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_BIBUF_1/Y DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_BIBUF_0/Y DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQS/I_BIBUF_DIFF_DQS_0/Y DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_BIBUF_7/Y DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_BIBUF_6/Y DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_BIBUF_5/Y DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_BIBUF_4/Y DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_BIBUF_3/Y DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_BIBUF_2/Y DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_BIBUF_1/Y DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_BIBUF_0/Y DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQS/I_BIBUF_DIFF_DQS_0/Y}] 
set_false_path -through [get_pins {DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DM/I_TRIBUFF_FEEDBACK_0/Y DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DM/I_TRIBUFF_FEEDBACK_0/Y DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DM/I_TRIBUFF_FEEDBACK_0/Y DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DM/I_TRIBUFF_FEEDBACK_0/Y}] 
set_false_path -through [get_pins {DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQS/I_BIBUF_DIFF_DQS_0/YN DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQS/I_BIBUF_DIFF_DQS_0/YN DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQS/I_BIBUF_DIFF_DQS_0/YN DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQS/I_BIBUF_DIFF_DQS_0/YN}] 
set_false_path -through [get_pins {DDR3_0_0/DDRPHY_BLK_0/IOD_A_11_0/I_IOD_5/TX DDR3_0_0/DDRPHY_BLK_0/IOD_A_11_0/I_IOD_3/TX DDR3_0_0/DDRPHY_BLK_0/IOD_A_11_0/I_IOD_1/TX DDR3_0_0/DDRPHY_BLK_0/IOD_A_11_0/I_IOD_4/TX DDR3_0_0/DDRPHY_BLK_0/IOD_A_11_0/I_IOD_7/TX DDR3_0_0/DDRPHY_BLK_0/IOD_A_11_0/I_IOD_10/TX DDR3_0_0/DDRPHY_BLK_0/IOD_A_11_0/I_IOD_6/TX DDR3_0_0/DDRPHY_BLK_0/IOD_A_11_0/I_IOD_2/TX DDR3_0_0/DDRPHY_BLK_0/IOD_A_11_0/I_IOD_9/TX DDR3_0_0/DDRPHY_BLK_0/IOD_A_11_0/I_IOD_0/TX DDR3_0_0/DDRPHY_BLK_0/IOD_A_11_0/I_IOD_8/TX DDR3_0_0/DDRPHY_BLK_0/IOD_A_11_0/I_IOD_11/TX DDR3_0_0/DDRPHY_BLK_0/IOD_A_13/I_IOD_0/TX DDR3_0_0/DDRPHY_BLK_0/IOD_A_14/I_IOD_0/TX DDR3_0_0/DDRPHY_BLK_0/IOD_A_15/I_IOD_0/TX DDR3_0_0/DDRPHY_BLK_0/IOD_BA/I_IOD_1/TX DDR3_0_0/DDRPHY_BLK_0/IOD_BA/I_IOD_2/TX DDR3_0_0/DDRPHY_BLK_0/IOD_BA/I_IOD_0/TX DDR3_0_0/DDRPHY_BLK_0/IOD_CAS_N/I_IOD_0/TX DDR3_0_0/DDRPHY_BLK_0/IOD_CKE/I_IOD_0/TX DDR3_0_0/DDRPHY_BLK_0/IOD_CS_N/I_IOD_0/TX DDR3_0_0/DDRPHY_BLK_0/IOD_ODT/I_IOD_0/TX DDR3_0_0/DDRPHY_BLK_0/IOD_RAS_N/I_IOD_0/TX DDR3_0_0/DDRPHY_BLK_0/IOD_RESET_N/I_IOD_0/TX DDR3_0_0/DDRPHY_BLK_0/IOD_WE_N/I_IOD_0/TX DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DM/I_IOD_0/TX DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DM/I_IOD_0/TX}] 
set_false_path -through [get_pins {DDR3_0_0/DDRPHY_BLK_0/IOD_A_11_0/I_IOD_5/OE DDR3_0_0/DDRPHY_BLK_0/IOD_A_11_0/I_IOD_3/OE DDR3_0_0/DDRPHY_BLK_0/IOD_A_11_0/I_IOD_1/OE DDR3_0_0/DDRPHY_BLK_0/IOD_A_11_0/I_IOD_4/OE DDR3_0_0/DDRPHY_BLK_0/IOD_A_11_0/I_IOD_7/OE DDR3_0_0/DDRPHY_BLK_0/IOD_A_11_0/I_IOD_10/OE DDR3_0_0/DDRPHY_BLK_0/IOD_A_11_0/I_IOD_6/OE DDR3_0_0/DDRPHY_BLK_0/IOD_A_11_0/I_IOD_2/OE DDR3_0_0/DDRPHY_BLK_0/IOD_A_11_0/I_IOD_9/OE DDR3_0_0/DDRPHY_BLK_0/IOD_A_11_0/I_IOD_0/OE DDR3_0_0/DDRPHY_BLK_0/IOD_A_11_0/I_IOD_8/OE DDR3_0_0/DDRPHY_BLK_0/IOD_A_11_0/I_IOD_11/OE DDR3_0_0/DDRPHY_BLK_0/IOD_A_13/I_IOD_0/OE DDR3_0_0/DDRPHY_BLK_0/IOD_A_14/I_IOD_0/OE DDR3_0_0/DDRPHY_BLK_0/IOD_A_15/I_IOD_0/OE DDR3_0_0/DDRPHY_BLK_0/IOD_BA/I_IOD_1/OE DDR3_0_0/DDRPHY_BLK_0/IOD_BA/I_IOD_2/OE DDR3_0_0/DDRPHY_BLK_0/IOD_BA/I_IOD_0/OE DDR3_0_0/DDRPHY_BLK_0/IOD_CAS_N/I_IOD_0/OE DDR3_0_0/DDRPHY_BLK_0/IOD_CKE/I_IOD_0/OE DDR3_0_0/DDRPHY_BLK_0/IOD_CS_N/I_IOD_0/OE DDR3_0_0/DDRPHY_BLK_0/IOD_ODT/I_IOD_0/OE DDR3_0_0/DDRPHY_BLK_0/IOD_RAS_N/I_IOD_0/OE DDR3_0_0/DDRPHY_BLK_0/IOD_RESET_N/I_IOD_0/OE DDR3_0_0/DDRPHY_BLK_0/IOD_WE_N/I_IOD_0/OE DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DM/I_IOD_0/OE DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DM/I_IOD_0/OE}] 
set_false_path -through [get_pins {DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_IOD_0/TX DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_IOD_6/TX DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_IOD_3/TX DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_IOD_7/TX DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_IOD_4/TX DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_IOD_5/TX DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_IOD_2/TX DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_IOD_1/TX DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQS/I_IOD_0/TX DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_IOD_0/TX DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_IOD_6/TX DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_IOD_3/TX DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_IOD_7/TX DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_IOD_4/TX DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_IOD_5/TX DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_IOD_2/TX DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_IOD_1/TX DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQS/I_IOD_0/TX}] 
set_false_path -through [get_pins {DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_IOD_0/OE DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_IOD_6/OE DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_IOD_3/OE DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_IOD_7/OE DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_IOD_4/OE DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_IOD_5/OE DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_IOD_2/OE DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_IOD_1/OE DDR3_0_0/DDRPHY_BLK_0/LANE_0_IOD_DQS/I_IOD_0/OE DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_IOD_0/OE DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_IOD_6/OE DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_IOD_3/OE DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_IOD_7/OE DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_IOD_4/OE DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_IOD_5/OE DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_IOD_2/OE DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_IOD_1/OE DDR3_0_0/DDRPHY_BLK_0/LANE_1_IOD_DQS/I_IOD_0/OE}] 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 

# Output Delay Constraints 

# Wire Loads 

# Other Constraints 

# syn_hier Attributes 

# set_case Attributes 

# Clock Delay Constraints 
set_clock_groups -asynchronous -group [get_clocks {DDR3_0_0/CCC_0/pll_inst_0/OUT1}]
set_clock_groups -asynchronous -group [get_clocks {DDR3_0_DDRPHY_BLK_LANE_1_CTRL_PF_LANECTRL|TX_DQS_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {DDR3_0_DDRPHY_BLK_LANE_1_CTRL_PF_LANECTRL|TX_DQS_270_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {DDR3_0_DDRPHY_BLK_LANE_0_CTRL_PF_LANECTRL|TX_DQS_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {DDR3_0_DDRPHY_BLK_LANE_0_CTRL_PF_LANECTRL|TX_DQS_270_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {DDR3_0_DDRPHY_BLK_LANECTRL_ADDR_CMD_0_PF_LANECTRL|TX_DQS_270_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {COREDDR_TIP_INT_Z73|VCO_PHSEL_ROTATE_inferred_clock[0]}]
set_clock_groups -asynchronous -group [get_clocks {COREJTAGDEBUG_Z14|iUDRCK_inferred_clock}]

# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 
# set_false_path -from [get_cells { Axi4Interconnect_0.*.SlvConvertor_loop[*].slvcnv.slvCDC.genblk1*.rdGrayCounter*.cntGray* }] -to [get_cells { Axi4Interconnect_0.*.SlvConvertor_loop[*].slvcnv.slvCDC.genblk1*.rdPtr_s1* }]
# set_false_path -from [get_cells { Axi4Interconnect_0.*.SlvConvertor_loop[*].slvcnv.slvCDC.genblk1*.wrGrayCounter*.cntGray* }] -to [get_cells { Axi4Interconnect_0.*.SlvConvertor_loop[*].slvcnv.slvCDC.genblk1*.wrPtr_s1* }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.*.I_IOD_*.ARST_N }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_*_CTRL.I_LANECTRL.HS_IO_CLK_PAUSE }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANECTRL_ADDR_CMD_0.I_LANECTRL*.HS_IO_CLK_PAUSE }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.*.I_IOD_*.RX_SYNC_RST* }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.*.I_IOD_*.DELAY_LINE_MOVE }]
# set_false_path -through [get_pins { DDR3_0_0.DDRPHY_BLK_0.*.I_IOD_*.DELAY_LINE_OUT_OF_RANGE }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_0_CTRL.I_LANECTRL.DDR_READ }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_0_CTRL.I_LANECTRL.RESET }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_0_CTRL.I_LANECTRL.DELAY_LINE_DIRECTION }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_0_CTRL.I_LANECTRL.DELAY_LINE_MOVE }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_0_CTRL.I_LANECTRL.DELAY_LINE_LOAD DDR3_0_0.DDRPHY_BLK_0.LANE_0_CTRL.I_LANECTRL.DELAY_LINE_SEL }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_0_CTRL.I_LANECTRL.SWITCH }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_0_CTRL.I_LANECTRL.READ_CLK_SEL[2] }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_0_CTRL.I_LANECTRL.DLL_CODE[0] }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_0_CTRL.I_LANECTRL.DLL_CODE[1] }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_0_CTRL.I_LANECTRL.DLL_CODE[2] }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_0_CTRL.I_LANECTRL.DLL_CODE[3] }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_0_CTRL.I_LANECTRL.DLL_CODE[4] }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_0_CTRL.I_LANECTRL.DLL_CODE[5] }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_0_CTRL.I_LANECTRL.DLL_CODE[6] }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_0_CTRL.I_LANECTRL.DLL_CODE[7] }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_1_CTRL.I_LANECTRL.DDR_READ }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_1_CTRL.I_LANECTRL.RESET }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_1_CTRL.I_LANECTRL.DELAY_LINE_DIRECTION }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_1_CTRL.I_LANECTRL.DELAY_LINE_MOVE }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_1_CTRL.I_LANECTRL.DELAY_LINE_LOAD DDR3_0_0.DDRPHY_BLK_0.LANE_1_CTRL.I_LANECTRL.DELAY_LINE_SEL }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_1_CTRL.I_LANECTRL.SWITCH }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_1_CTRL.I_LANECTRL.READ_CLK_SEL[2] }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_1_CTRL.I_LANECTRL.DLL_CODE[0] }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_1_CTRL.I_LANECTRL.DLL_CODE[1] }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_1_CTRL.I_LANECTRL.DLL_CODE[2] }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_1_CTRL.I_LANECTRL.DLL_CODE[3] }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_1_CTRL.I_LANECTRL.DLL_CODE[4] }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_1_CTRL.I_LANECTRL.DLL_CODE[5] }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_1_CTRL.I_LANECTRL.DLL_CODE[6] }]
# set_false_path -to [get_pins { DDR3_0_0.DDRPHY_BLK_0.LANE_1_CTRL.I_LANECTRL.DLL_CODE[7] }]
# set_false_path -to [get_pins { DDR3_0_0.CCC_0.pll_inst_0.PHASE_OUT0_SEL }]
# set_false_path -to [get_pins { DDR3_0_0.CCC_0.pll_inst_0.PHASE_OUT2_SEL }]
# set_false_path -to [get_pins { DDR3_0_0.CCC_0.pll_inst_0.PHASE_OUT3_SEL }]


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 

