//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Oct 11 16:00:39 2022
// Version: 2022.2 2022.2.0.10
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

//////////////////////////////////////////////////////////////////////
// Component Description (Tcl) 
//////////////////////////////////////////////////////////////////////
/*
# Exporting Component Description of MIV_RV32_C1 to TCL
# Family: PolarFire
# Part Number: MPF050T-1FCVG484I
# Create and Configure the core component MIV_RV32_C1
create_and_configure_core -core_vlnv {Microsemi:MiV:MIV_RV32:3.0.100} -component_name {MIV_RV32_C1} -params {\
"AHB_END_ADDR_0:0xffff"  \
"AHB_END_ADDR_1:0x8fff"  \
"AHB_MASTER_TYPE:0"  \
"AHB_SLAVE_MIRROR:false"  \
"AHB_START_ADDR_0:0x0"  \
"AHB_START_ADDR_1:0x8000"  \
"APB_END_ADDR_0:0xffff"  \
"APB_END_ADDR_1:0x6fff"  \
"APB_MASTER_TYPE:1"  \
"APB_SLAVE_MIRROR:false"  \
"APB_START_ADDR_0:0x0"  \
"APB_START_ADDR_1:0x6000"  \
"AXI_END_ADDR_0:0xffff"  \
"AXI_END_ADDR_1:0x8fff"  \
"AXI_MASTER_TYPE:2"  \
"AXI_SLAVE_MIRROR:false"  \
"AXI_START_ADDR_0:0x0"  \
"AXI_START_ADDR_1:0x8001"  \
"BOOTROM_DEST_ADDR_LOWER:0x0"  \
"BOOTROM_DEST_ADDR_UPPER:0x4000"  \
"BOOTROM_PRESENT:false"  \
"BOOTROM_SRC_END_ADDR_LOWER:0x3fff"  \
"BOOTROM_SRC_END_ADDR_UPPER:0x8000"  \
"BOOTROM_SRC_START_ADDR_LOWER:0x0"  \
"BOOTROM_SRC_START_ADDR_UPPER:0x8000"  \
"DEBUGGER:true"  \
"ECC_ENABLE:false"  \
"FWD_REGS:false"  \
"GEN_DECODE_RV32:0"  \
"GEN_MUL_TYPE:0"  \
"GPR_REGS:false"  \
"INTERNAL_MTIME:true"  \
"INTERNAL_MTIME_IRQ:true"  \
"MTIME_PRESCALER:100"  \
"NUM_EXT_IRQS:0"  \
"RECONFIG_BOOTROM:false"  \
"RESET_VECTOR_ADDR_0:0x0"  \
"RESET_VECTOR_ADDR_1:0x8000"  \
"TAS_END_ADDR_0:0x3fff"  \
"TAS_END_ADDR_1:0x4000"  \
"TAS_START_ADDR_0:0x0"  \
"TAS_START_ADDR_1:0x4000"  \
"TCM_END_ADDR_0:0xffff"  \
"TCM_END_ADDR_1:0x8000"  \
"TCM_PRESENT:true"  \
"TCM_START_ADDR_0:0x0"  \
"TCM_START_ADDR_1:0x8000"  \
"TCM_TAS_PRESENT:false"  \
"VECTORED_INTERRUPTS:false"   }
# Exporting Component Description of MIV_RV32_C1 to TCL done
*/

// MIV_RV32_C1
module MIV_RV32_C1(
    // Inputs
    APB_MSTR_PRDATA,
    APB_MSTR_PREADY,
    APB_MSTR_PSLVERR,
    AXI_MSTR_ARREADY,
    AXI_MSTR_AWREADY,
    AXI_MSTR_BID,
    AXI_MSTR_BRESP,
    AXI_MSTR_BVALID,
    AXI_MSTR_RDATA,
    AXI_MSTR_RID,
    AXI_MSTR_RLAST,
    AXI_MSTR_RRESP,
    AXI_MSTR_RVALID,
    AXI_MSTR_WREADY,
    CLK,
    EXT_IRQ,
    JTAG_TCK,
    JTAG_TDI,
    JTAG_TMS,
    JTAG_TRSTN,
    RESETN,
    // Outputs
    APB_MSTR_PADDR,
    APB_MSTR_PENABLE,
    APB_MSTR_PSEL,
    APB_MSTR_PWDATA,
    APB_MSTR_PWRITE,
    AXI_MSTR_ARADDR,
    AXI_MSTR_ARBURST,
    AXI_MSTR_ARCACHE,
    AXI_MSTR_ARID,
    AXI_MSTR_ARLEN,
    AXI_MSTR_ARLOCK,
    AXI_MSTR_ARPROT,
    AXI_MSTR_ARSIZE,
    AXI_MSTR_ARVALID,
    AXI_MSTR_AWADDR,
    AXI_MSTR_AWBURST,
    AXI_MSTR_AWCACHE,
    AXI_MSTR_AWID,
    AXI_MSTR_AWLEN,
    AXI_MSTR_AWLOCK,
    AXI_MSTR_AWPROT,
    AXI_MSTR_AWSIZE,
    AXI_MSTR_AWVALID,
    AXI_MSTR_BREADY,
    AXI_MSTR_RREADY,
    AXI_MSTR_WDATA,
    AXI_MSTR_WLAST,
    AXI_MSTR_WSTRB,
    AXI_MSTR_WVALID,
    EXT_RESETN,
    JTAG_TDO,
    JTAG_TDO_DR,
    TIME_COUNT_OUT
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [31:0] APB_MSTR_PRDATA;
input         APB_MSTR_PREADY;
input         APB_MSTR_PSLVERR;
input         AXI_MSTR_ARREADY;
input         AXI_MSTR_AWREADY;
input         AXI_MSTR_BID;
input  [1:0]  AXI_MSTR_BRESP;
input         AXI_MSTR_BVALID;
input  [31:0] AXI_MSTR_RDATA;
input         AXI_MSTR_RID;
input         AXI_MSTR_RLAST;
input  [1:0]  AXI_MSTR_RRESP;
input         AXI_MSTR_RVALID;
input         AXI_MSTR_WREADY;
input         CLK;
input         EXT_IRQ;
input         JTAG_TCK;
input         JTAG_TDI;
input         JTAG_TMS;
input         JTAG_TRSTN;
input         RESETN;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [31:0] APB_MSTR_PADDR;
output        APB_MSTR_PENABLE;
output        APB_MSTR_PSEL;
output [31:0] APB_MSTR_PWDATA;
output        APB_MSTR_PWRITE;
output [31:0] AXI_MSTR_ARADDR;
output [1:0]  AXI_MSTR_ARBURST;
output [3:0]  AXI_MSTR_ARCACHE;
output        AXI_MSTR_ARID;
output [7:0]  AXI_MSTR_ARLEN;
output [0:0]  AXI_MSTR_ARLOCK;
output [2:0]  AXI_MSTR_ARPROT;
output [2:0]  AXI_MSTR_ARSIZE;
output        AXI_MSTR_ARVALID;
output [31:0] AXI_MSTR_AWADDR;
output [1:0]  AXI_MSTR_AWBURST;
output [3:0]  AXI_MSTR_AWCACHE;
output        AXI_MSTR_AWID;
output [7:0]  AXI_MSTR_AWLEN;
output [0:0]  AXI_MSTR_AWLOCK;
output [2:0]  AXI_MSTR_AWPROT;
output [2:0]  AXI_MSTR_AWSIZE;
output        AXI_MSTR_AWVALID;
output        AXI_MSTR_BREADY;
output        AXI_MSTR_RREADY;
output [31:0] AXI_MSTR_WDATA;
output        AXI_MSTR_WLAST;
output [3:0]  AXI_MSTR_WSTRB;
output        AXI_MSTR_WVALID;
output        EXT_RESETN;
output        JTAG_TDO;
output        JTAG_TDO_DR;
output [63:0] TIME_COUNT_OUT;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [31:0] APB_MSTR_PADDR_net_0;
wire          APB_MSTR_PENABLE_net_0;
wire   [31:0] APB_MSTR_PRDATA;
wire          APB_MSTR_PREADY;
wire          APB_MSTR_PSELx;
wire          APB_MSTR_PSLVERR;
wire   [31:0] APB_MSTR_PWDATA_net_0;
wire          APB_MSTR_PWRITE_net_0;
wire   [31:0] AXI4_MSTR_ARADDR;
wire   [1:0]  AXI4_MSTR_ARBURST;
wire   [3:0]  AXI4_MSTR_ARCACHE;
wire          AXI4_MSTR_ARID;
wire   [7:0]  AXI4_MSTR_ARLEN;
wire   [0:0]  AXI4_MSTR_ARLOCK;
wire   [2:0]  AXI4_MSTR_ARPROT;
wire          AXI_MSTR_ARREADY;
wire   [2:0]  AXI4_MSTR_ARSIZE;
wire          AXI4_MSTR_ARVALID;
wire   [31:0] AXI4_MSTR_AWADDR;
wire   [1:0]  AXI4_MSTR_AWBURST;
wire   [3:0]  AXI4_MSTR_AWCACHE;
wire          AXI4_MSTR_AWID;
wire   [7:0]  AXI4_MSTR_AWLEN;
wire   [0:0]  AXI4_MSTR_AWLOCK;
wire   [2:0]  AXI4_MSTR_AWPROT;
wire          AXI_MSTR_AWREADY;
wire   [2:0]  AXI4_MSTR_AWSIZE;
wire          AXI4_MSTR_AWVALID;
wire          AXI_MSTR_BID;
wire          AXI4_MSTR_BREADY;
wire   [1:0]  AXI_MSTR_BRESP;
wire          AXI_MSTR_BVALID;
wire   [31:0] AXI_MSTR_RDATA;
wire          AXI_MSTR_RID;
wire          AXI_MSTR_RLAST;
wire          AXI4_MSTR_RREADY;
wire   [1:0]  AXI_MSTR_RRESP;
wire          AXI_MSTR_RVALID;
wire   [31:0] AXI4_MSTR_WDATA;
wire          AXI4_MSTR_WLAST;
wire          AXI_MSTR_WREADY;
wire   [3:0]  AXI4_MSTR_WSTRB;
wire          AXI4_MSTR_WVALID;
wire          CLK;
wire          EXT_IRQ;
wire          EXT_RESETN_net_0;
wire          JTAG_TCK;
wire          JTAG_TDI;
wire          JTAG_TDO_net_0;
wire          JTAG_TDO_DR_net_0;
wire          JTAG_TMS;
wire          JTAG_TRSTN;
wire          RESETN;
wire   [63:0] TIME_COUNT_OUT_net_0;
wire   [63:0] TIME_COUNT_OUT_net_1;
wire   [31:0] APB_MSTR_PADDR_net_1;
wire          APB_MSTR_PENABLE_net_1;
wire          APB_MSTR_PWRITE_net_1;
wire   [31:0] APB_MSTR_PWDATA_net_1;
wire          APB_MSTR_PSELx_net_0;
wire          AXI4_MSTR_AWID_net_0;
wire   [31:0] AXI4_MSTR_AWADDR_net_0;
wire   [7:0]  AXI4_MSTR_AWLEN_net_0;
wire   [2:0]  AXI4_MSTR_AWSIZE_net_0;
wire   [1:0]  AXI4_MSTR_AWBURST_net_0;
wire   [0:0]  AXI4_MSTR_AWLOCK_net_0;
wire   [3:0]  AXI4_MSTR_AWCACHE_net_0;
wire   [2:0]  AXI4_MSTR_AWPROT_net_0;
wire          AXI4_MSTR_AWVALID_net_0;
wire   [31:0] AXI4_MSTR_WDATA_net_0;
wire   [3:0]  AXI4_MSTR_WSTRB_net_0;
wire          AXI4_MSTR_WLAST_net_0;
wire          AXI4_MSTR_WVALID_net_0;
wire          AXI4_MSTR_BREADY_net_0;
wire          AXI4_MSTR_ARID_net_0;
wire   [31:0] AXI4_MSTR_ARADDR_net_0;
wire   [7:0]  AXI4_MSTR_ARLEN_net_0;
wire   [2:0]  AXI4_MSTR_ARSIZE_net_0;
wire   [1:0]  AXI4_MSTR_ARBURST_net_0;
wire   [0:0]  AXI4_MSTR_ARLOCK_net_0;
wire   [3:0]  AXI4_MSTR_ARCACHE_net_0;
wire   [2:0]  AXI4_MSTR_ARPROT_net_0;
wire          AXI4_MSTR_ARVALID_net_0;
wire          AXI4_MSTR_RREADY_net_0;
wire          JTAG_TDO_net_1;
wire          JTAG_TDO_DR_net_1;
wire          EXT_RESETN_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
wire   [63:0] TIME_COUNT_IN_const_net_0;
wire   [5:0]  MSYS_EI_const_net_0;
wire   [31:0] AHB_MSTR_HRDATA_const_net_0;
wire          VCC_net;
wire   [31:0] TCM_APB_SLV_PADDR_const_net_0;
wire   [31:0] TCM_APB_SLV_PWDATA_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net                        = 1'b0;
assign TIME_COUNT_IN_const_net_0      = 64'h0000000000000000;
assign MSYS_EI_const_net_0            = 6'h00;
assign AHB_MSTR_HRDATA_const_net_0    = 32'h00000000;
assign VCC_net                        = 1'b1;
assign TCM_APB_SLV_PADDR_const_net_0  = 32'h00000000;
assign TCM_APB_SLV_PWDATA_const_net_0 = 32'h00000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign TIME_COUNT_OUT_net_1      = TIME_COUNT_OUT_net_0;
assign TIME_COUNT_OUT[63:0]      = TIME_COUNT_OUT_net_1;
assign APB_MSTR_PADDR_net_1      = APB_MSTR_PADDR_net_0;
assign APB_MSTR_PADDR[31:0]      = APB_MSTR_PADDR_net_1;
assign APB_MSTR_PENABLE_net_1    = APB_MSTR_PENABLE_net_0;
assign APB_MSTR_PENABLE          = APB_MSTR_PENABLE_net_1;
assign APB_MSTR_PWRITE_net_1     = APB_MSTR_PWRITE_net_0;
assign APB_MSTR_PWRITE           = APB_MSTR_PWRITE_net_1;
assign APB_MSTR_PWDATA_net_1     = APB_MSTR_PWDATA_net_0;
assign APB_MSTR_PWDATA[31:0]     = APB_MSTR_PWDATA_net_1;
assign APB_MSTR_PSELx_net_0      = APB_MSTR_PSELx;
assign APB_MSTR_PSEL             = APB_MSTR_PSELx_net_0;
assign AXI4_MSTR_AWID_net_0      = AXI4_MSTR_AWID;
assign AXI_MSTR_AWID             = AXI4_MSTR_AWID_net_0;
assign AXI4_MSTR_AWADDR_net_0    = AXI4_MSTR_AWADDR;
assign AXI_MSTR_AWADDR[31:0]     = AXI4_MSTR_AWADDR_net_0;
assign AXI4_MSTR_AWLEN_net_0     = AXI4_MSTR_AWLEN;
assign AXI_MSTR_AWLEN[7:0]       = AXI4_MSTR_AWLEN_net_0;
assign AXI4_MSTR_AWSIZE_net_0    = AXI4_MSTR_AWSIZE;
assign AXI_MSTR_AWSIZE[2:0]      = AXI4_MSTR_AWSIZE_net_0;
assign AXI4_MSTR_AWBURST_net_0   = AXI4_MSTR_AWBURST;
assign AXI_MSTR_AWBURST[1:0]     = AXI4_MSTR_AWBURST_net_0;
assign AXI4_MSTR_AWLOCK_net_0[0] = AXI4_MSTR_AWLOCK[0];
assign AXI_MSTR_AWLOCK[0:0]      = AXI4_MSTR_AWLOCK_net_0[0];
assign AXI4_MSTR_AWCACHE_net_0   = AXI4_MSTR_AWCACHE;
assign AXI_MSTR_AWCACHE[3:0]     = AXI4_MSTR_AWCACHE_net_0;
assign AXI4_MSTR_AWPROT_net_0    = AXI4_MSTR_AWPROT;
assign AXI_MSTR_AWPROT[2:0]      = AXI4_MSTR_AWPROT_net_0;
assign AXI4_MSTR_AWVALID_net_0   = AXI4_MSTR_AWVALID;
assign AXI_MSTR_AWVALID          = AXI4_MSTR_AWVALID_net_0;
assign AXI4_MSTR_WDATA_net_0     = AXI4_MSTR_WDATA;
assign AXI_MSTR_WDATA[31:0]      = AXI4_MSTR_WDATA_net_0;
assign AXI4_MSTR_WSTRB_net_0     = AXI4_MSTR_WSTRB;
assign AXI_MSTR_WSTRB[3:0]       = AXI4_MSTR_WSTRB_net_0;
assign AXI4_MSTR_WLAST_net_0     = AXI4_MSTR_WLAST;
assign AXI_MSTR_WLAST            = AXI4_MSTR_WLAST_net_0;
assign AXI4_MSTR_WVALID_net_0    = AXI4_MSTR_WVALID;
assign AXI_MSTR_WVALID           = AXI4_MSTR_WVALID_net_0;
assign AXI4_MSTR_BREADY_net_0    = AXI4_MSTR_BREADY;
assign AXI_MSTR_BREADY           = AXI4_MSTR_BREADY_net_0;
assign AXI4_MSTR_ARID_net_0      = AXI4_MSTR_ARID;
assign AXI_MSTR_ARID             = AXI4_MSTR_ARID_net_0;
assign AXI4_MSTR_ARADDR_net_0    = AXI4_MSTR_ARADDR;
assign AXI_MSTR_ARADDR[31:0]     = AXI4_MSTR_ARADDR_net_0;
assign AXI4_MSTR_ARLEN_net_0     = AXI4_MSTR_ARLEN;
assign AXI_MSTR_ARLEN[7:0]       = AXI4_MSTR_ARLEN_net_0;
assign AXI4_MSTR_ARSIZE_net_0    = AXI4_MSTR_ARSIZE;
assign AXI_MSTR_ARSIZE[2:0]      = AXI4_MSTR_ARSIZE_net_0;
assign AXI4_MSTR_ARBURST_net_0   = AXI4_MSTR_ARBURST;
assign AXI_MSTR_ARBURST[1:0]     = AXI4_MSTR_ARBURST_net_0;
assign AXI4_MSTR_ARLOCK_net_0[0] = AXI4_MSTR_ARLOCK[0];
assign AXI_MSTR_ARLOCK[0:0]      = AXI4_MSTR_ARLOCK_net_0[0];
assign AXI4_MSTR_ARCACHE_net_0   = AXI4_MSTR_ARCACHE;
assign AXI_MSTR_ARCACHE[3:0]     = AXI4_MSTR_ARCACHE_net_0;
assign AXI4_MSTR_ARPROT_net_0    = AXI4_MSTR_ARPROT;
assign AXI_MSTR_ARPROT[2:0]      = AXI4_MSTR_ARPROT_net_0;
assign AXI4_MSTR_ARVALID_net_0   = AXI4_MSTR_ARVALID;
assign AXI_MSTR_ARVALID          = AXI4_MSTR_ARVALID_net_0;
assign AXI4_MSTR_RREADY_net_0    = AXI4_MSTR_RREADY;
assign AXI_MSTR_RREADY           = AXI4_MSTR_RREADY_net_0;
assign JTAG_TDO_net_1            = JTAG_TDO_net_0;
assign JTAG_TDO                  = JTAG_TDO_net_1;
assign JTAG_TDO_DR_net_1         = JTAG_TDO_DR_net_0;
assign JTAG_TDO_DR               = JTAG_TDO_DR_net_1;
assign EXT_RESETN_net_1          = EXT_RESETN_net_0;
assign EXT_RESETN                = EXT_RESETN_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------MIV_RV32_C1_MIV_RV32_C1_0_MIV_RV32   -   Microsemi:MiV:MIV_RV32:3.0.100
MIV_RV32_C1_MIV_RV32_C1_0_MIV_RV32 #( 
        .AHB_END_ADDR_0               ( 'hffff ),
        .AHB_END_ADDR_1               ( 'h8fff ),
        .AHB_MASTER_TYPE              ( 0 ),
        .AHB_SLAVE_MIRROR             ( 0 ),
        .AHB_START_ADDR_0             ( 'h0 ),
        .AHB_START_ADDR_1             ( 'h8000 ),
        .APB_END_ADDR_0               ( 'hffff ),
        .APB_END_ADDR_1               ( 'h6fff ),
        .APB_MASTER_TYPE              ( 1 ),
        .APB_SLAVE_MIRROR             ( 0 ),
        .APB_START_ADDR_0             ( 'h0 ),
        .APB_START_ADDR_1             ( 'h6000 ),
        .AXI_END_ADDR_0               ( 'hffff ),
        .AXI_END_ADDR_1               ( 'h8fff ),
        .AXI_MASTER_TYPE              ( 2 ),
        .AXI_SLAVE_MIRROR             ( 0 ),
        .AXI_START_ADDR_0             ( 'h0 ),
        .AXI_START_ADDR_1             ( 'h8001 ),
        .BOOTROM_DEST_ADDR_LOWER      ( 'h0 ),
        .BOOTROM_DEST_ADDR_UPPER      ( 'h4000 ),
        .BOOTROM_PRESENT              ( 0 ),
        .BOOTROM_SRC_END_ADDR_LOWER   ( 'h3fff ),
        .BOOTROM_SRC_END_ADDR_UPPER   ( 'h8000 ),
        .BOOTROM_SRC_START_ADDR_LOWER ( 'h0 ),
        .BOOTROM_SRC_START_ADDR_UPPER ( 'h8000 ),
        .DEBUGGER                     ( 1 ),
        .ECC_ENABLE                   ( 0 ),
        .FAMILY                       ( 26 ),
        .FWD_REGS                     ( 0 ),
        .GEN_DECODE_RV32              ( 0 ),
        .GEN_MUL_TYPE                 ( 0 ),
        .GPR_REGS                     ( 0 ),
        .INTERNAL_MTIME               ( 1 ),
        .INTERNAL_MTIME_IRQ           ( 1 ),
        .MTIME_PRESCALER              ( 100 ),
        .NUM_EXT_IRQS                 ( 0 ),
        .RECONFIG_BOOTROM             ( 0 ),
        .RESET_VECTOR_ADDR_0          ( 'h0 ),
        .RESET_VECTOR_ADDR_1          ( 'h8000 ),
        .TAS_END_ADDR_0               ( 'h3fff ),
        .TAS_END_ADDR_1               ( 'h4000 ),
        .TAS_START_ADDR_0             ( 'h0 ),
        .TAS_START_ADDR_1             ( 'h4000 ),
        .TCM_END_ADDR_0               ( 'hffff ),
        .TCM_END_ADDR_1               ( 'h8000 ),
        .TCM_PRESENT                  ( 1 ),
        .TCM_START_ADDR_0             ( 'h0 ),
        .TCM_START_ADDR_1             ( 'h8000 ),
        .TCM_TAS_PRESENT              ( 0 ),
        .VECTORED_INTERRUPTS          ( 0 ) )
MIV_RV32_C1_0(
        // Inputs
        .TMR_IRQ                ( GND_net ), // tied to 1'b0 from definition
        .EXT_IRQ                ( EXT_IRQ ),
        .JTAG_TRSTN             ( JTAG_TRSTN ),
        .JTAG_TCK               ( JTAG_TCK ),
        .JTAG_TDI               ( JTAG_TDI ),
        .JTAG_TMS               ( JTAG_TMS ),
        .APB_MSTR_PREADY        ( APB_MSTR_PREADY ),
        .APB_MSTR_PSLVERR       ( APB_MSTR_PSLVERR ),
        .TCM_CPU_ACCESS_DISABLE ( GND_net ), // tied to 1'b0 from definition
        .TCM_TAS_ACCESS_DISABLE ( GND_net ), // tied to 1'b0 from definition
        .TCM_APB_SLV_PSEL       ( GND_net ), // tied to 1'b0 from definition
        .TCM_APB_SLV_PENABLE    ( GND_net ), // tied to 1'b0 from definition
        .TCM_APB_SLV_PWRITE     ( GND_net ), // tied to 1'b0 from definition
        .AXI_MSTR_ARREADY       ( AXI_MSTR_ARREADY ),
        .AXI_MSTR_RLAST         ( AXI_MSTR_RLAST ),
        .AXI_MSTR_RID           ( AXI_MSTR_RID ),
        .AXI_MSTR_RVALID        ( AXI_MSTR_RVALID ),
        .AXI_MSTR_AWREADY       ( AXI_MSTR_AWREADY ),
        .AXI_MSTR_WREADY        ( AXI_MSTR_WREADY ),
        .AXI_MSTR_BID           ( AXI_MSTR_BID ),
        .AXI_MSTR_BVALID        ( AXI_MSTR_BVALID ),
        .AHB_MSTR_HREADY        ( VCC_net ), // tied to 1'b1 from definition
        .AHB_MSTR_HRESP         ( GND_net ), // tied to 1'b0 from definition
        .CLK                    ( CLK ),
        .RESETN                 ( RESETN ),
        .TIME_COUNT_IN          ( TIME_COUNT_IN_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .APB_MSTR_PRDATA        ( APB_MSTR_PRDATA ),
        .TCM_APB_SLV_PADDR      ( TCM_APB_SLV_PADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .TCM_APB_SLV_PWDATA     ( TCM_APB_SLV_PWDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .AXI_MSTR_RRESP         ( AXI_MSTR_RRESP ),
        .AXI_MSTR_RDATA         ( AXI_MSTR_RDATA ),
        .AXI_MSTR_BRESP         ( AXI_MSTR_BRESP ),
        .AHB_MSTR_HRDATA        ( AHB_MSTR_HRDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .MSYS_EI                ( MSYS_EI_const_net_0 ), // tied to 6'h00 from definition
        // Outputs
        .JTAG_TDO               ( JTAG_TDO_net_0 ),
        .JTAG_TDO_DR            ( JTAG_TDO_DR_net_0 ),
        .APB_MSTR_PSEL          ( APB_MSTR_PSELx ),
        .APB_MSTR_PENABLE       ( APB_MSTR_PENABLE_net_0 ),
        .APB_MSTR_PWRITE        ( APB_MSTR_PWRITE_net_0 ),
        .TCM_APB_SLV_PREADY     (  ),
        .TCM_APB_SLV_PSLVERR    (  ),
        .AXI_MSTR_ARID          ( AXI4_MSTR_ARID ),
        .AXI_MSTR_ARVALID       ( AXI4_MSTR_ARVALID ),
        .AXI_MSTR_RREADY        ( AXI4_MSTR_RREADY ),
        .AXI_MSTR_AWID          ( AXI4_MSTR_AWID ),
        .AXI_MSTR_AWVALID       ( AXI4_MSTR_AWVALID ),
        .AXI_MSTR_WLAST         ( AXI4_MSTR_WLAST ),
        .AXI_MSTR_WID           (  ),
        .AXI_MSTR_WVALID        ( AXI4_MSTR_WVALID ),
        .AXI_MSTR_BREADY        ( AXI4_MSTR_BREADY ),
        .AHB_MSTR_HMASTLOCK     (  ),
        .AHB_MSTR_HWRITE        (  ),
        .AHB_MSTR_HSEL          (  ),
        .EXT_RESETN             ( EXT_RESETN_net_0 ),
        .APB_MSTR_PADDR         ( APB_MSTR_PADDR_net_0 ),
        .APB_MSTR_PWDATA        ( APB_MSTR_PWDATA_net_0 ),
        .TCM_APB_SLV_PRDATA     (  ),
        .AXI_MSTR_ARADDR        ( AXI4_MSTR_ARADDR ),
        .AXI_MSTR_ARLEN         ( AXI4_MSTR_ARLEN ),
        .AXI_MSTR_ARSIZE        ( AXI4_MSTR_ARSIZE ),
        .AXI_MSTR_ARBURST       ( AXI4_MSTR_ARBURST ),
        .AXI_MSTR_ARLOCK        ( AXI4_MSTR_ARLOCK ),
        .AXI_MSTR_ARCACHE       ( AXI4_MSTR_ARCACHE ),
        .AXI_MSTR_AWADDR        ( AXI4_MSTR_AWADDR ),
        .AXI_MSTR_AWLEN         ( AXI4_MSTR_AWLEN ),
        .AXI_MSTR_AWSIZE        ( AXI4_MSTR_AWSIZE ),
        .AXI_MSTR_AWBURST       ( AXI4_MSTR_AWBURST ),
        .AXI_MSTR_AWLOCK        ( AXI4_MSTR_AWLOCK ),
        .AXI_MSTR_AWCACHE       ( AXI4_MSTR_AWCACHE ),
        .AXI_MSTR_AWPROT        ( AXI4_MSTR_AWPROT ),
        .AXI_MSTR_WDATA         ( AXI4_MSTR_WDATA ),
        .AXI_MSTR_WSTRB         ( AXI4_MSTR_WSTRB ),
        .AHB_MSTR_HADDR         (  ),
        .AHB_MSTR_HBURST        (  ),
        .AHB_MSTR_HPROT         (  ),
        .AHB_MSTR_HSIZE         (  ),
        .AHB_MSTR_HTRANS        (  ),
        .AHB_MSTR_HWDATA        (  ),
        .AXI_MSTR_ARPROT        ( AXI4_MSTR_ARPROT ),
        .TIME_COUNT_OUT         ( TIME_COUNT_OUT_net_0 ) 
        );


endmodule
