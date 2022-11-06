//--------------------------------------------------------------------
// Created by Microsemi SmartDesign Tue Oct 11 16:00:39 2022
// Parameters for MIV_RV32
//--------------------------------------------------------------------


parameter AHB_END_ADDR_0 = 'hffff;
parameter AHB_END_ADDR_1 = 'h8fff;
parameter AHB_MASTER_TYPE = 0;
parameter AHB_SLAVE_MIRROR = 0;
parameter AHB_START_ADDR_0 = 'h0;
parameter AHB_START_ADDR_1 = 'h8000;
parameter APB_END_ADDR_0 = 'hffff;
parameter APB_END_ADDR_1 = 'h6fff;
parameter APB_MASTER_TYPE = 1;
parameter APB_SLAVE_MIRROR = 0;
parameter APB_START_ADDR_0 = 'h0;
parameter APB_START_ADDR_1 = 'h6000;
parameter AXI_END_ADDR_0 = 'hffff;
parameter AXI_END_ADDR_1 = 'h8fff;
parameter AXI_MASTER_TYPE = 2;
parameter AXI_SLAVE_MIRROR = 0;
parameter AXI_START_ADDR_0 = 'h0;
parameter AXI_START_ADDR_1 = 'h8001;
parameter BOOTROM_DEST_ADDR_LOWER = 'h0;
parameter BOOTROM_DEST_ADDR_UPPER = 'h4000;
parameter BOOTROM_PRESENT = 0;
parameter BOOTROM_SRC_END_ADDR_LOWER = 'h3fff;
parameter BOOTROM_SRC_END_ADDR_UPPER = 'h8000;
parameter BOOTROM_SRC_START_ADDR_LOWER = 'h0;
parameter BOOTROM_SRC_START_ADDR_UPPER = 'h8000;
parameter DEBUGGER = 1;
parameter ECC_ENABLE = 0;
parameter FAMILY = 26;
parameter FWD_REGS = 0;
parameter GEN_DECODE_RV32 = 0;
parameter GEN_MUL_TYPE = 0;
parameter GPR_REGS = 0;
parameter INTERNAL_MTIME = 1;
parameter INTERNAL_MTIME_IRQ = 1;
parameter MTIME_PRESCALER = 100;
parameter NUM_EXT_IRQS = 0;
parameter RECONFIG_BOOTROM = 0;
parameter RESET_VECTOR_ADDR_0 = 'h0;
parameter RESET_VECTOR_ADDR_1 = 'h8000;
parameter TAS_END_ADDR_0 = 'h3fff;
parameter TAS_END_ADDR_1 = 'h4000;
parameter TAS_START_ADDR_0 = 'h0;
parameter TAS_START_ADDR_1 = 'h4000;
parameter TCM_END_ADDR_0 = 'hffff;
parameter TCM_END_ADDR_1 = 'h8000;
parameter TCM_PRESENT = 1;
parameter TCM_START_ADDR_0 = 'h0;
parameter TCM_START_ADDR_1 = 'h8000;
parameter TCM_TAS_PRESENT = 0;
parameter VECTORED_INTERRUPTS = 0;
