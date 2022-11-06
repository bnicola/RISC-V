// Copyright (c) 2020, Microchip Corporation
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in the
//       documentation and/or other materials provided with the distribution.
//     * Neither the name of the <organization> nor the
//       names of its contributors may be used to endorse or promote products
//       derived from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL MICROCHIP CORPORATIONM BE LIABLE FOR ANY
// DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
// APACHE LICENSE
// Copyright (c) 2020, Microchip Corporation 
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
//
// SVN Revision Information:
// SVN $Revision: $
// SVN $Date: $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
////////////////////////////////////////////////////////////////////////////////
//`define RVFI
`timescale 1ns/10ps
module MIV_RV32_C0_MIV_RV32_C0_0_MIV_RV32
//********************************************************************************
// Parameter description

   #(   
    parameter FAMILY                          = 26,
	
    parameter [15:0] RESET_VECTOR_ADDR_1      = 16'h8000,
    parameter [15:0] RESET_VECTOR_ADDR_0      = 16'h0000,
    parameter [0:0]  DEBUGGER                 = 1,
	
	parameter        AXI_MASTER_TYPE           = 0,
	parameter        AXI_SLAVE_MIRROR          = 0,
    parameter [15:0] AXI_START_ADDR_1         = 16'h6000,
    parameter [15:0] AXI_START_ADDR_0         = 16'h0000,
    parameter [15:0] AXI_END_ADDR_1           = 16'h6FFF,
    parameter [15:0] AXI_END_ADDR_0           = 16'hFFFF,
	                                         
    parameter        AHB_MASTER_TYPE      = 1,
    parameter        AHB_SLAVE_MIRROR     = 0,
    parameter [15:0] AHB_START_ADDR_1     = 16'h8000,
    parameter [15:0] AHB_START_ADDR_0     = 16'h0000,
    parameter [15:0] AHB_END_ADDR_1       = 16'h8FFF,
    parameter [15:0] AHB_END_ADDR_0       = 16'hFFFF,
	
    parameter        APB_MASTER_TYPE      = 1,
    parameter        APB_SLAVE_MIRROR     = 0,
    parameter [15:0] APB_START_ADDR_1     = 16'h7000,
    parameter [15:0] APB_START_ADDR_0     = 16'h0000,
    parameter [15:0] APB_END_ADDR_1       = 16'h7FFF,
    parameter [15:0] APB_END_ADDR_0       = 16'hFFFF,
	
    parameter        TCM_PRESENT          = 0,
    parameter [15:0] TCM_START_ADDR_1     = 16'h4000,
    parameter [15:0] TCM_START_ADDR_0     = 16'h0000,
    parameter [15:0] TCM_END_ADDR_1       = 16'h4000,
    parameter [15:0] TCM_END_ADDR_0       = 16'h3FFF,
	
    parameter        TCM_TAS_PRESENT      = 0,
    parameter [15:0] TAS_START_ADDR_1     = 16'h4000,
    parameter [15:0] TAS_START_ADDR_0     = 16'h0000,
    parameter [15:0] TAS_END_ADDR_1       = 16'h4000,//
    parameter [15:0] TAS_END_ADDR_0       = 16'h3FFF,

   parameter GEN_DECODE_RV32              = 3,
   parameter GEN_MUL_TYPE                 = 0,
   
   parameter VECTORED_INTERRUPTS          = 0,
   parameter NUM_EXT_IRQS                 = 0,
   
   parameter FWD_REGS                     = 0,
   parameter ECC_ENABLE                   = 0, 
   
   parameter INTERNAL_MTIME               = 1,
   parameter INTERNAL_MTIME_IRQ           = 1,
   parameter MTIME_PRESCALER              = 16'd100,
   
   parameter GPR_REGS                     = 0,
   
   parameter        BOOTROM_PRESENT              = 0, 
   parameter [15:0] BOOTROM_SRC_START_ADDR_UPPER = 16'h8000,
   parameter [15:0] BOOTROM_SRC_START_ADDR_LOWER = 16'h0000,
   parameter [15:0] BOOTROM_SRC_END_ADDR_UPPER   = 16'h8000,
   parameter [15:0] BOOTROM_SRC_END_ADDR_LOWER   = 16'h3FFF,
   parameter [15:0] BOOTROM_DEST_ADDR_UPPER      = 16'h4000,
   parameter [15:0] BOOTROM_DEST_ADDR_LOWER      = 16'h0000,
   parameter        RECONFIG_BOOTROM             = 0
    
   )

//********************************************************************************
// Port description

  (    
    
    input                                    CLK,
    input                                    RESETN,
    output                                   EXT_RESETN,
    
    // CPU controls
    input    [63:0]                          TIME_COUNT_IN,     
    input                                    TMR_IRQ,
    input                                    EXT_IRQ,
    input    [NUM_EXT_IRQS-1:0]              MSYS_EI,
	output [63:0]                            TIME_COUNT_OUT,
    input                                    JTAG_TRSTN,
    input                                    JTAG_TCK,
    input                                    JTAG_TDI,
    input                                    JTAG_TMS,
    output                                   JTAG_TDO,
    output                                   JTAG_TDO_DR,
      
    // APB Master interface
    output       [31:0]                      APB_MSTR_PADDR, 
    output                                   APB_MSTR_PSEL,
    output                                   APB_MSTR_PENABLE, 
    output                                   APB_MSTR_PWRITE, 
    output       [31:0]                      APB_MSTR_PWDATA,
    input                                    APB_MSTR_PREADY, 
    input    [31:0]                          APB_MSTR_PRDATA,
    input                                    APB_MSTR_PSLVERR,
    
    // TCM ACCESS 
    input                                    TCM_CPU_ACCESS_DISABLE,  
    input                                    TCM_TAS_ACCESS_DISABLE, 
	
    // APB Slave interface (TCM direct access port)
    input    [31:0]                          TCM_APB_SLV_PADDR, 
    input                                    TCM_APB_SLV_PSEL,
    input                                    TCM_APB_SLV_PENABLE, 
    input                                    TCM_APB_SLV_PWRITE, 
    input    [31:0]                          TCM_APB_SLV_PWDATA,
    output                                   TCM_APB_SLV_PREADY, 
    output   [31:0]                          TCM_APB_SLV_PRDATA,
    output                                   TCM_APB_SLV_PSLVERR,
    
    // AXI Master interface
    output                                   AXI_MSTR_ARID,
    output  [31:0]                           AXI_MSTR_ARADDR,
    output  [(AXI_MASTER_TYPE*4)-1:0]        AXI_MSTR_ARLEN,
    output  [2:0]                            AXI_MSTR_ARSIZE,
    output  [1:0]                            AXI_MSTR_ARBURST,
    output  [2-AXI_MASTER_TYPE:0]            AXI_MSTR_ARLOCK,
    output  [3:0]                            AXI_MSTR_ARCACHE,
    output  [2:0]                            AXI_MSTR_ARPROT,
    input                                    AXI_MSTR_ARREADY,
    output                                   AXI_MSTR_ARVALID,
    input   [1:0]                            AXI_MSTR_RRESP,
    input   [31:0]                           AXI_MSTR_RDATA,
    input                                    AXI_MSTR_RLAST,
    input                                    AXI_MSTR_RID,
    output                                   AXI_MSTR_RREADY,
    input                                    AXI_MSTR_RVALID,
    output                                   AXI_MSTR_AWID,
    output  [31:0]                           AXI_MSTR_AWADDR,
    output [(AXI_MASTER_TYPE*4)-1:0]         AXI_MSTR_AWLEN,
    output  [2:0]                            AXI_MSTR_AWSIZE,
    output  [1:0]                            AXI_MSTR_AWBURST,
    output  [2-AXI_MASTER_TYPE:0]            AXI_MSTR_AWLOCK,
    output  [3:0]                            AXI_MSTR_AWCACHE,
    output  [2:0]                            AXI_MSTR_AWPROT,
    input                                    AXI_MSTR_AWREADY,
    output                                   AXI_MSTR_AWVALID,
    output  [31:0]                           AXI_MSTR_WDATA,
    output  [3:0]                            AXI_MSTR_WSTRB,
    output                                   AXI_MSTR_WLAST,
    output                                   AXI_MSTR_WID,
    input                                    AXI_MSTR_WREADY,
    output                                   AXI_MSTR_WVALID,
    input    [1:0]                           AXI_MSTR_BRESP,
    input                                    AXI_MSTR_BID,
    output                                   AXI_MSTR_BREADY,
    input                                    AXI_MSTR_BVALID,
    
    // AHB Master interface
    output                                   AHB_MSTR_HSEL,      // Only used in mirrored i/f
    output       [31:0]                      AHB_MSTR_HADDR,     
    output       [2:0]                       AHB_MSTR_HBURST,    
    output                                   AHB_MSTR_HMASTLOCK, 
    output       [3:0]                       AHB_MSTR_HPROT,     
    output       [2:0]                       AHB_MSTR_HSIZE,     
    output       [1:0]                       AHB_MSTR_HTRANS,    
    output       [31:0]                      AHB_MSTR_HWDATA,    
    output                                   AHB_MSTR_HWRITE,    
    input    [31:0]                          AHB_MSTR_HRDATA,    
    input                                    AHB_MSTR_HREADY,    
    input                                    AHB_MSTR_HRESP       
    
    
  );
   
//********************************************************************************
// Declarations

// Configurable HART ID
 localparam l_hart_id                       = 32'b0;

//top level 
 localparam USE_BUS_PARITY                  = 0;
 localparam TCM0_UDMA_PRESENT               = 0;
 localparam APB_MSTR_REGISTER_IO            = 1;
 localparam CPU_ADDR_WIDTH                  = 32;
 localparam AXI_MSTR_ADDR_WIDTH             = 32;
 localparam APB_MSTR_ADDR_WIDTH             = 32;
 localparam AHB_MSTR_ADDR_WIDTH             = 32;
 localparam UDMA_PRESENT                    = 0;
 localparam UDMA_CTRL_ADDR_WIDTH            = 32;    
 localparam OPSRV_CFG_ADDR_WIDTH            = 32;    
 localparam TCM0_ADDR_WIDTH                 = 32;
 localparam TCM0_CPU_I_PRESENT              = 1;
 localparam TCM0_CPU_D_PRESENT              = 1;
 localparam TCM0_USE_RAM_PARITY_BITS        = 0;
 localparam TCM_TAS_ADDR_WIDTH             = 32;
 localparam MAX_EXT_IRQS                    = 6;
 
 localparam TCM1_ADDR_WIDTH                 = 32;
 localparam TCM1_CPU_I_PRESENT              = 1; 
 localparam TCM1_CPU_D_PRESENT              = 1; 
 localparam TCM1_USE_RAM_PARITY_BITS        = 0; 
 
//opsrv package
  localparam l_opsrv_cfg_axi_mstr_present      = (AXI_MASTER_TYPE != 0) ? 1: 0;
  localparam l_opsrv_cfg_ahb_mstr_present      = (AHB_MASTER_TYPE != 0) ? 1: 0;
  localparam l_opsrv_cfg_apb_mstr_present      = (APB_MASTER_TYPE != 0) ? 1: 0; 
  localparam l_opsrv_cfg_core_debug            = DEBUGGER;
  localparam l_core_cfg_hw_debug               = DEBUGGER;
  localparam l_core_cfg_num_triggers           = (DEBUGGER) ? 2 : 0;
  localparam l_opsrv_cfg_tcm_tas_present       = TCM_TAS_PRESENT;
  localparam l_opsrv_cfg_tcm0_tas_present      = TCM_TAS_PRESENT;
  localparam l_apb_mstr_start_addr             = (APB_MASTER_TYPE != 0) ? {APB_START_ADDR_1, APB_START_ADDR_0} : 32'h0FFF_FFE0;
  localparam l_apb_mstr_end_addr               = (APB_MASTER_TYPE != 0) ? {APB_END_ADDR_1  , APB_END_ADDR_0  } : 32'h0FFF_FFE1;
  localparam l_tcm0_start_addr                 = (TCM_PRESENT)          ? {TCM_START_ADDR_1, TCM_START_ADDR_0} : 32'h0FFF_FFE2;
  localparam l_tcm0_end_addr                   = (TCM_PRESENT)          ? {TCM_END_ADDR_1  , TCM_END_ADDR_0  } : 32'h0FFF_FFE3;
  localparam l_tcm_tas_tcm0_start_addr         = (TCM_TAS_PRESENT)      ? {TAS_START_ADDR_1, TAS_START_ADDR_0} : 32'h0FFF_FFE4;
  localparam l_tcm_tas_tcm0_end_addr           = (TCM_TAS_PRESENT)      ? {TAS_END_ADDR_1  , TAS_END_ADDR_0}   : 32'h0FFF_FFE5;
  localparam l_axi_mstr_start_addr             = (AXI_MASTER_TYPE != 0) ? {AXI_START_ADDR_1, AXI_START_ADDR_0} : 32'h0FFF_FFE6;
  localparam l_axi_mstr_end_addr               = (AXI_MASTER_TYPE != 0) ? {AXI_END_ADDR_1  , AXI_END_ADDR_0  } : 32'h0FFF_FFE7;
  localparam l_ahb_mstr_start_addr             = (AHB_MASTER_TYPE != 0) ? {AHB_START_ADDR_1, AHB_START_ADDR_0} : 32'h0FFF_FFE8;
  localparam l_ahb_mstr_end_addr               = (AHB_MASTER_TYPE != 0) ? {AHB_END_ADDR_1  , AHB_END_ADDR_0  } : 32'h0FFF_FFE9;
  localparam l_tcm1_start_addr                 =                                                                 32'h0000_A000;
  localparam l_tcm1_end_addr                   =                                                                 32'h0000_A200;
  localparam l_tcm_tas_tcm1_start_addr        =                                                                 32'h0FFF_FFEC;
  localparam l_tcm_tas_tcm1_end_addr          =                                                                 32'h0FFF_FFED;    
  localparam l_tcm_tas_udma_ctrl_start_addr   =                                                                 32'h0FFF_FFEE;
  localparam l_tcm_tas_udma_ctrl_end_addr     =                                                                 32'h0FFF_FFEF; 
  localparam l_udma_ctrl_start_addr            =                                                                 32'h0FFF_FFE0;
  localparam l_udma_ctrl_end_addr              =                                                                 32'h0FFF_FFF1;
  localparam l_opsrv_cfg_start_addr            = 32'h0000_6000;
  localparam l_opsrv_cfg_end_addr              = 32'h0000_6FFF;
  localparam l_core_cfg_time_count_width       = 64;

  localparam l_opsrv_cfg_tcm0_present         = TCM_PRESENT;
  localparam l_opsrv_cfg_tcm1_present         = BOOTROM_PRESENT;
  localparam BOOTROM_SRC_START_ADDR           = {BOOTROM_SRC_START_ADDR_UPPER[15:0], BOOTROM_SRC_START_ADDR_LOWER[15:0]};
  localparam BOOTROM_SRC_END_ADDR             = {BOOTROM_SRC_END_ADDR_UPPER[15:0], BOOTROM_SRC_END_ADDR_LOWER[15:0]};
  localparam BOOTROM_DEST_ADDR                = {BOOTROM_DEST_ADDR_UPPER[15:0], BOOTROM_DEST_ADDR_LOWER[15:0]};
  
//core package
  localparam logic[31:0] l_core_reset_vector           = (BOOTROM_PRESENT) ? l_tcm1_start_addr : {RESET_VECTOR_ADDR_1, RESET_VECTOR_ADDR_0};
  localparam logic[27:0] l_core_mtvec_offset           = 28'h4;
  localparam logic[31:0] l_core_static_mtvec_base      = l_core_reset_vector + l_core_mtvec_offset;
  localparam logic       l_core_cfg_static_mtvec_base  = VECTORED_INTERRUPTS;
  localparam logic       l_core_cfg_static_mtvec_mode  = 1'b1;
  localparam logic[1:0]  l_core_static_mtvec_mode      = (VECTORED_INTERRUPTS) ? 2'b1 : 2'b0;
  localparam             l_core_cfg_hw_multiply_divide = (GEN_DECODE_RV32 > 1) ? 1 : 0;
  localparam             l_core_cfg_hw_compressed      = ((GEN_DECODE_RV32 == 1) | (GEN_DECODE_RV32 == 3)) ? 1 : 0;
  localparam             l_core_cfg_hw_macc_multiplier = GEN_MUL_TYPE;
  localparam logic [3:0] l_core_num_sys_ext_irqs       = 8;
  localparam logic       l_core_cfg_lsu_fwd            = FWD_REGS;
  localparam logic       l_core_cfg_csr_fwd            = FWD_REGS;
  localparam logic       l_core_cfg_exu_fwd            = FWD_REGS;
  localparam logic       l_core_cfg_gpr_type           = GPR_REGS;
  
// Signals 
   wire                                   debug_sys_reset;    
   
// Assignments
  assign AHB_MSTR_HSEL = 1'b1;
  assign EXT_RESETN = RESETN & ~debug_sys_reset;
  
//Unused Signals
  wire       tcm_tas_udma_ctrl_irq;
  wire [5:0] m_sys_ext_irq_int;
  wire       APB_MSTR_PADDR_P;
  wire [3:0] APB_MSTR_PWDATA_P;
  wire [3:0] APB_MSTR_PRDATA_P; 
  wire [3:0] APB_MSTR_PSTRB; 
  wire [2:0] APB_MSTR_PPROT;
  wire       AXI_MSTR_AWADDR_P;
  wire [3:0] AXI_MSTR_WDATA_P; 
  wire       AHB_MSTR_HADDR_P;   
  wire [3:0] AHB_MSTR_HWDATA_P;  
  wire       AXI_MSTR_ARADDR_P;
  wire [3:0] TCM_APB_SLV_PRDATA_P; 
  wire [2:0] TCM_APB_SLV_PPROT         = 3'b0;
  wire       tcm1_cpu_access_disable   = 1'b0; 
  wire       tcm1_dma_access_disable   = 1'b0;
  wire       tcm1_tas_access_disable   = 1'b0;
  wire       sys_parity_disable        = 1'b0;
  wire       TCM_APB_SLV_PADDR_P       = 1'b0;
  wire [3:0] TCM_APB_SLV_PWDATA_P      = 1'b0; 
  wire [3:0] AXI_MSTR_RDATA_P          = 4'b0;
  wire [3:0] AHB_MSTR_HRDATA_P         = 4'b0;  
  
  wire [3:0] axi_mstr_arlen_int;
  wire [3:0] axi_mstr_awlen_int;
  wire       axi_mstr_arlock_int;
  wire       axi_mstr_awlock_int;
  
  assign AXI_MSTR_ARLEN  = (AXI_MASTER_TYPE == 2) ? {4'b0, axi_mstr_arlen_int}  : (AXI_MASTER_TYPE == 1) ?  axi_mstr_arlen_int  : 1'b0; // always 1 beat from CPU
  assign AXI_MSTR_AWLEN  = (AXI_MASTER_TYPE == 2) ? {4'b0, axi_mstr_awlen_int}  : (AXI_MASTER_TYPE == 1) ?  axi_mstr_awlen_int  : 1'b0; // always 1 beat from CPU
  assign AXI_MSTR_ARLOCK = (AXI_MASTER_TYPE == 1) ? {1'b0, axi_mstr_arlock_int} : (AXI_MASTER_TYPE == 2) ?  axi_mstr_arlock_int : 1'b0; // Always normal (no lock, no exclusive) for now
  assign AXI_MSTR_AWLOCK = (AXI_MASTER_TYPE == 1) ? {1'b0, axi_mstr_awlock_int} : (AXI_MASTER_TYPE == 2) ?  axi_mstr_awlock_int : 1'b0; // Always normal (no lock, no exclusive) for now
  
  generate
  if(NUM_EXT_IRQS == MAX_EXT_IRQS) begin : gen_irq_6
    assign m_sys_ext_irq_int = MSYS_EI[NUM_EXT_IRQS-1:0];
  end else begin : ngen_gen_irq_6
    assign m_sys_ext_irq_int = {{((MAX_EXT_IRQS)-NUM_EXT_IRQS){1'b0}}, MSYS_EI[NUM_EXT_IRQS-1:0]};
  end
  endgenerate
miv_rv32_opsrv 
   #(   
    .FAMILY                             (FAMILY                          ),
    .CPU_ADDR_WIDTH                     (CPU_ADDR_WIDTH                  ),    
    .APB_MSTR_ADDR_WIDTH                (APB_MSTR_ADDR_WIDTH             ),
    .APB_MSTR_REGISTER_IO               (APB_MSTR_REGISTER_IO            ),
    .AHB_MSTR_ADDR_WIDTH                (AHB_MSTR_ADDR_WIDTH             ),
    .UDMA_PRESENT                       (UDMA_PRESENT                    ),
    .UDMA_CTRL_ADDR_WIDTH               (UDMA_CTRL_ADDR_WIDTH            ),
    .OPSRV_CFG_ADDR_WIDTH               (OPSRV_CFG_ADDR_WIDTH            ),
    .TCM0_ADDR_WIDTH                    (TCM0_ADDR_WIDTH                 ),
    .TCM0_UDMA_PRESENT                  (TCM0_UDMA_PRESENT               ),
    .TCM0_CPU_I_PRESENT                 (TCM0_CPU_I_PRESENT              ),
    .TCM0_CPU_D_PRESENT                 (TCM0_CPU_D_PRESENT              ),
    .TCM0_USE_RAM_PARITY_BITS           (TCM0_USE_RAM_PARITY_BITS        ),
    .TCM_DAP_ADDR_WIDTH                 (TCM_TAS_ADDR_WIDTH             ),
    .TCM1_ADDR_WIDTH                    (TCM1_ADDR_WIDTH                 ),
    .TCM1_CPU_I_PRESENT                 (TCM1_CPU_I_PRESENT              ),
    .TCM1_CPU_D_PRESENT                 (TCM1_CPU_D_PRESENT              ),
    .TCM1_USE_RAM_PARITY_BITS           (TCM1_USE_RAM_PARITY_BITS        ),
    .USE_BUS_PARITY                     (USE_BUS_PARITY                  ),                                 
    .l_opsrv_cfg_axi_mstr_present       (l_opsrv_cfg_axi_mstr_present    ),
    .l_opsrv_cfg_ahb_mstr_present       (l_opsrv_cfg_ahb_mstr_present    ),
	.l_opsrv_cfg_apb_mstr_present       (l_opsrv_cfg_apb_mstr_present    ),
    .l_opsrv_cfg_core_debug             (l_opsrv_cfg_core_debug          ),
    .l_core_cfg_hw_debug                (l_core_cfg_hw_debug             ),
    .l_core_cfg_num_triggers            (l_core_cfg_num_triggers         ),
    .l_opsrv_cfg_tcm0_present           (l_opsrv_cfg_tcm0_present        ),
    .l_opsrv_cfg_tcm1_present           (l_opsrv_cfg_tcm1_present        ),
    .l_axi_mstr_start_addr              (l_axi_mstr_start_addr           ), 
    .l_axi_mstr_end_addr                (l_axi_mstr_end_addr             ),
    .l_apb_mstr_start_addr              (l_apb_mstr_start_addr           ),
    .l_apb_mstr_end_addr                (l_apb_mstr_end_addr             ),
    .l_ahb_mstr_start_addr              (l_ahb_mstr_start_addr           ),
    .l_ahb_mstr_end_addr                (l_ahb_mstr_end_addr             ),
    .l_udma_ctrl_start_addr             (l_udma_ctrl_start_addr          ),
    .l_udma_ctrl_end_addr               (l_udma_ctrl_end_addr            ),
    .l_opsrv_cfg_start_addr             (l_opsrv_cfg_start_addr          ),
    .l_opsrv_cfg_end_addr               (l_opsrv_cfg_end_addr            ),
    .l_tcm0_start_addr                  (l_tcm0_start_addr               ),
    .l_tcm0_end_addr                    (l_tcm0_end_addr                 ),
    .l_tcm1_start_addr                  (l_tcm1_start_addr               ),
    .l_tcm1_end_addr                    (l_tcm1_end_addr                 ),
    .l_tcm_dap_udma_ctrl_start_addr     (l_tcm_tas_udma_ctrl_start_addr ),
    .l_tcm_dap_udma_ctrl_end_addr       (l_tcm_tas_udma_ctrl_end_addr   ),
    .l_tcm_dap_tcm0_start_addr          (l_tcm_tas_tcm0_start_addr      ),
    .l_tcm_dap_tcm0_end_addr            (l_tcm_tas_tcm0_end_addr        ),
    .l_tcm_dap_tcm1_start_addr          (l_tcm_tas_tcm1_start_addr      ),
    .l_tcm_dap_tcm1_end_addr            (l_tcm_tas_tcm1_end_addr        ),
    .l_opsrv_cfg_tcm_dap_present        (l_opsrv_cfg_tcm_tas_present    ),
	.l_opsrv_cfg_tcm0_dap_present       (l_opsrv_cfg_tcm0_tas_present    ),
	.l_core_reset_vector                (l_core_reset_vector             ),
    .l_core_cfg_hw_multiply_divide      (l_core_cfg_hw_multiply_divide   ),
    .l_core_cfg_hw_compressed           (l_core_cfg_hw_compressed        ),
    .l_core_static_mtvec_base           (l_core_static_mtvec_base        ),
    .l_core_cfg_static_mtvec_base       (l_core_cfg_static_mtvec_base    ),
    .l_core_cfg_static_mtvec_mode       (l_core_cfg_static_mtvec_mode    ),
    .l_core_static_mtvec_mode           (l_core_static_mtvec_mode        ),
	.l_core_num_sys_ext_irqs            (l_core_num_sys_ext_irqs         ),
	.l_core_cfg_hw_macc_multiplier      (l_core_cfg_hw_macc_multiplier   ),
	.l_core_cfg_time_count_width        (l_core_cfg_time_count_width     ),
    .l_core_cfg_lsu_fwd                 (l_core_cfg_lsu_fwd              ),
    .l_core_cfg_csr_fwd                 (l_core_cfg_csr_fwd              ),
    .l_core_cfg_exu_fwd                 (l_core_cfg_exu_fwd              ),
    .l_core_cfg_gpr_type                (l_core_cfg_gpr_type             ),
    .RAM_SB_IN_WIDTH                    (4                               ),
    .RAM_SB_OUT_WIDTH                   (4                               ), 
    .ECC_ENABLE                         (ECC_ENABLE                      ),
    .INTERNAL_MTIME                     (INTERNAL_MTIME                  ),
    .INTERNAL_MTIME_IRQ                 (INTERNAL_MTIME_IRQ              ),
    .MTIME_PRESCALER                    (MTIME_PRESCALER                 ),
    .BOOTROM_SRC_START_ADDR             (BOOTROM_SRC_START_ADDR          ),
    .BOOTROM_SRC_END_ADDR               (BOOTROM_SRC_END_ADDR            ),
    .BOOTROM_DEST_ADDR                  (BOOTROM_DEST_ADDR               ),
    .RECONFIG_BOOTROM                   (RECONFIG_BOOTROM                )
   )                                    
   
u_opsrv_0

  ( .clk                                    (CLK),
    .resetn                                 (RESETN),
    .mtime_count                            (TIME_COUNT_IN),    
    .m_timer_irq                            (TMR_IRQ),
    .m_external_irq                         (EXT_IRQ),
    .m_sys_ext_irq                          (m_sys_ext_irq_int),
	.debug_sys_reset                        (debug_sys_reset),
    .jtag_trst                              (JTAG_TRSTN),
    .jtag_tck                               (JTAG_TCK),
    .jtag_tdi                               (JTAG_TDI),
    .jtag_tms                               (JTAG_TMS),
    .jtag_tdo                               (JTAG_TDO),
    .jtag_tdo_dr                            (JTAG_TDO_DR),    
    .apb_mstr_paddr                         (APB_MSTR_PADDR), 
    .apb_mstr_paddr_p                       (APB_MSTR_PADDR_P),
    .apb_mstr_pprot                         (APB_MSTR_PPROT),
    .apb_mstr_psel                          (APB_MSTR_PSEL),
    .apb_mstr_penable                       (APB_MSTR_PENABLE), 
    .apb_mstr_pwrite                        (APB_MSTR_PWRITE), 
    .apb_mstr_pwdata                        (APB_MSTR_PWDATA),
    .apb_mstr_pwdata_p                      (APB_MSTR_PWDATA_P),
    .apb_mstr_pstrb                         (APB_MSTR_PSTRB), 
    .apb_mstr_pready                        (APB_MSTR_PREADY), 
    .apb_mstr_prdata                        (APB_MSTR_PRDATA),
    .apb_mstr_prdata_p                      (APB_MSTR_PRDATA_P), 
    .apb_mstr_pslverr                       (APB_MSTR_PSLVERR),    
    .tcm0_cpu_access_disable                (TCM_CPU_ACCESS_DISABLE),  
    .tcm0_dma_access_disable                (1'b1), 
    .tcm0_dap_access_disable                (TCM_TAS_ACCESS_DISABLE), 
    .tcm1_cpu_access_disable                (tcm1_cpu_access_disable),  
    .tcm1_dma_access_disable                (tcm1_dma_access_disable), 
    .tcm1_dap_access_disable                (tcm1_dap_access_disable),
    .tcm_dap_apb_slv_paddr                  (TCM_APB_SLV_PADDR), 
    .tcm_dap_apb_slv_paddr_p                (TCM_APB_SLV_PADDR_P),
    .tcm_dap_apb_slv_pprot                  (TCM_APB_SLV_PPROT),
    .tcm_dap_apb_slv_psel                   (TCM_APB_SLV_PSEL),
    .tcm_dap_apb_slv_penable                (TCM_APB_SLV_PENABLE), 
    .tcm_dap_apb_slv_pwrite                 (TCM_APB_SLV_PWRITE), 
    .tcm_dap_apb_slv_pwdata                 (TCM_APB_SLV_PWDATA),
    .tcm_dap_apb_slv_pwdata_p               (TCM_APB_SLV_PWDATA_P), 
    .tcm_dap_apb_slv_pready                 (TCM_APB_SLV_PREADY), 
    .tcm_dap_apb_slv_prdata                 (TCM_APB_SLV_PRDATA),
    .tcm_dap_apb_slv_prdata_p               (TCM_APB_SLV_PRDATA_P), 
    .tcm_dap_apb_slv_pslverr                (TCM_APB_SLV_PSLVERR),    
    .tcm_dap_udma_ctrl_irq                  (TCM_TAS_UDMA_CTRL_IRQ),
    .axi_mstr_aclk_en                       (1'b1),
    .axi_mstr_arid                          (AXI_MSTR_ARID),
    .axi_mstr_araddr                        (AXI_MSTR_ARADDR),
    .axi_mstr_arlen                         (axi_mstr_arlen_int),
    .axi_mstr_arsize                        (AXI_MSTR_ARSIZE),
    .axi_mstr_arburst                       (AXI_MSTR_ARBURST),
    .axi_mstr_arlock                        (axi_mstr_arlock_int),
    .axi_mstr_arcache                       (AXI_MSTR_ARCACHE),
    .axi_mstr_arprot                        (AXI_MSTR_ARPROT),
    .axi_mstr_arready                       (AXI_MSTR_ARREADY),
    .axi_mstr_arvalid                       (AXI_MSTR_ARVALID),
    .axi_mstr_ar_addr_p                     (AXI_MSTR_ARADDR_P),
    .axi_mstr_rresp                         (AXI_MSTR_RRESP),
    .axi_mstr_rdata                         (AXI_MSTR_RDATA),
    .axi_mstr_rlast                         (AXI_MSTR_RLAST),
    .axi_mstr_rid                           (AXI_MSTR_RID),
    .axi_mstr_rready                        (AXI_MSTR_RREADY),
    .axi_mstr_rvalid                        (AXI_MSTR_RVALID),
    .axi_mstr_r_data_p                      (AXI_MSTR_RDATA_P),
    .axi_mstr_awid                          (AXI_MSTR_AWID),
    .axi_mstr_awaddr                        (AXI_MSTR_AWADDR),
    .axi_mstr_awlen                         (axi_mstr_awlen_int),
    .axi_mstr_awsize                        (AXI_MSTR_AWSIZE),
    .axi_mstr_awburst                       (AXI_MSTR_AWBURST),
    .axi_mstr_awlock                        (axi_mstr_awlock_int),
    .axi_mstr_awcache                       (AXI_MSTR_AWCACHE),
    .axi_mstr_awprot                        (AXI_MSTR_AWPROT),
    .axi_mstr_aw_addr_p                     (AXI_MSTR_AWADDR_P),
    .axi_mstr_awready                       (AXI_MSTR_AWREADY),
    .axi_mstr_awvalid                       (AXI_MSTR_AWVALID),
    .axi_mstr_wdata                         (AXI_MSTR_WDATA),
    .axi_mstr_wstrb                         (AXI_MSTR_WSTRB),
    .axi_mstr_wlast                         (AXI_MSTR_WLAST),
    .axi_mstr_wid                           (AXI_MSTR_WID),
    .axi_mstr_wready                        (AXI_MSTR_WREADY),
    .axi_mstr_wvalid                        (AXI_MSTR_WVALID),
    .axi_mstr_w_data_p                      (AXI_MSTR_WDATA_P), 
    .axi_mstr_bresp                         (AXI_MSTR_BRESP),
    .axi_mstr_bid                           (AXI_MSTR_BID),
    .axi_mstr_bready                        (AXI_MSTR_BREADY),
    .axi_mstr_bvalid                        (AXI_MSTR_BVALID),     
    .ahb_mstr_haddr                         (AHB_MSTR_HADDR),     
    .ahb_mstr_haddr_p                       (AHB_MSTR_HADDR_P),   
    .ahb_mstr_hburst                        (AHB_MSTR_HBURST),    
    .ahb_mstr_hmastlock                     (AHB_MSTR_HMASTLOCK), 
    .ahb_mstr_hprot                         (AHB_MSTR_HPROT),     
    .ahb_mstr_hsize                         (AHB_MSTR_HSIZE),     
    .ahb_mstr_htrans                        (AHB_MSTR_HTRANS),    
    .ahb_mstr_hwdata                        (AHB_MSTR_HWDATA),    
    .ahb_mstr_hwdata_p                      (AHB_MSTR_HWDATA_P),  
    .ahb_mstr_hwrite                        (AHB_MSTR_HWRITE),    
    .ahb_mstr_hrdata                        (AHB_MSTR_HRDATA),    
    .ahb_mstr_hrdata_p                      (AHB_MSTR_HRDATA_P),  
    .ahb_mstr_hready                        (AHB_MSTR_HREADY),    
    .ahb_mstr_hresp                         (AHB_MSTR_HRESP),
    .tcm0_uncorrectable_ecc_error           (),
    .tcm1_uncorrectable_ecc_error           (),
    .gpr_uncorrectable_ecc_error            (),
    .hart_id                                (l_hart_id),
	.sys_parity_disable                     (sys_parity_disable),
	.tcm0_ram_sb_out                        (),
    .tcm0_ram_sb_in                         (4'b0),
    .tcm1_ram_sb_out                        (),
    .tcm1_ram_sb_in                         (4'b0),
	.mtime_count_out                        (TIME_COUNT_OUT)
  );
    
endmodule
