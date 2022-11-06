set_component CCC_C0_CCC_C0_0_PF_CCC
# Microsemi Corp.
# Date: 2022-Oct-11 16:20:42
#

# Base clock for PLL #0
create_clock -period 20 [ get_pins { pll_inst_0/REF_CLK_0 } ]
create_generated_clock -multiply_by 5 -divide_by 3 -source [ get_pins { pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { pll_inst_0/OUT0 } ]
