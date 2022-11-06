set_component DDR3_0_CCC_0_PF_CCC
# Microsemi Corp.
# Date: 2022-Oct-11 16:07:26
#

# Base clock for PLL #0
create_clock -period 12 [ get_pins { pll_inst_0/REF_CLK_0 } ]
create_generated_clock -multiply_by 8 -source [ get_pins { pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { pll_inst_0/OUT0 } ]
create_generated_clock -multiply_by 2 -source [ get_pins { pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { pll_inst_0/OUT1 } ]
create_generated_clock -multiply_by 8 -source [ get_pins { pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { pll_inst_0/OUT2 } ]
create_generated_clock -multiply_by 8 -source [ get_pins { pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { pll_inst_0/OUT3 } ]
