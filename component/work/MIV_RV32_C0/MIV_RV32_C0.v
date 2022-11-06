//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sun Oct  9 14:17:37 2022
// Version: 2022.2 2022.2.0.10
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

//////////////////////////////////////////////////////////////////////
// Component Description (Tcl) 
//////////////////////////////////////////////////////////////////////
/*
# Exporting Component Description of MIV_RV32_C0 to TCL
# Family: PolarFire
# Part Number: MPF300TS-1FCG1152I
# Create and Configure the core component MIV_RV32_C0
create_and_configure_core -core_vlnv {Microsemi:MiV:MIV_RV32:3.0.100} -component_name {MIV_RV32_C0} -params {\
"AHB_END_ADDR_0:0xffff"  \
"AHB_END_ADDR_1:0x8fff"  \
"AHB_MASTER_TYPE:1"  \
"AHB_SLAVE_MIRROR:false"  \
"AHB_START_ADDR_0:0x0"  \
"AHB_START_ADDR_1:0x8000"  \
"APB_END_ADDR_0:0xffff"  \
"APB_END_ADDR_1:0x7fff"  \
"APB_MASTER_TYPE:1"  \
"APB_SLAVE_MIRROR:false"  \
"APB_START_ADDR_0:0x0"  \
"APB_START_ADDR_1:0x7000"  \
"AXI_END_ADDR_0:0xffff"  \
"AXI_END_ADDR_1:0x6fff"  \
"AXI_MASTER_TYPE:0"  \
"AXI_SLAVE_MIRROR:false"  \
"AXI_START_ADDR_0:0x0"  \
"AXI_START_ADDR_1:0x6000"  \
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
"TCM_END_ADDR_0:0x3fff"  \
"TCM_END_ADDR_1:0x4000"  \
"TCM_PRESENT:false"  \
"TCM_START_ADDR_0:0x0"  \
"TCM_START_ADDR_1:0x4000"  \
"TCM_TAS_PRESENT:false"  \
"VECTORED_INTERRUPTS:false"   }
# Exporting Component Description of MIV_RV32_C0 to TCL done
*/

// MIV_RV32_C0
module MIV_RV32_C0(
    // Inputs
    AHB_MSTR_HRDATA,
    AHB_MSTR_HREADY,
    AHB_MSTR_HRESP,
    APB_MSTR_PRDATA,
    APB_MSTR_PREADY,
    APB_MSTR_PSLVERR,
    CLK,
    EXT_IRQ,
    JTAG_TCK,
    JTAG_TDI,
    JTAG_TMS,
    JTAG_TRSTN,
    RESETN,
    // Outputs
    AHB_MSTR_HADDR,
    AHB_MSTR_HBURST,
    AHB_MSTR_HMASTLOCK,
    AHB_MSTR_HPROT,
    AHB_MSTR_HSIZE,
    AHB_MSTR_HTRANS,
    AHB_MSTR_HWDATA,
    AHB_MSTR_HWRITE,
    APB_MSTR_PADDR,
    APB_MSTR_PENABLE,
    APB_MSTR_PSEL,
    APB_MSTR_PWDATA,
    APB_MSTR_PWRITE,
    EXT_RESETN,
    JTAG_TDO,
    JTAG_TDO_DR,
    TIME_COUNT_OUT
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [31:0] AHB_MSTR_HRDATA;
input         AHB_MSTR_HREADY;
input         AHB_MSTR_HRESP;
input  [31:0] APB_MSTR_PRDATA;
input         APB_MSTR_PREADY;
input         APB_MSTR_PSLVERR;
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
output [31:0] AHB_MSTR_HADDR;
output [2:0]  AHB_MSTR_HBURST;
output        AHB_MSTR_HMASTLOCK;
output [3:0]  AHB_MSTR_HPROT;
output [2:0]  AHB_MSTR_HSIZE;
output [1:0]  AHB_MSTR_HTRANS;
output [31:0] AHB_MSTR_HWDATA;
output        AHB_MSTR_HWRITE;
output [31:0] APB_MSTR_PADDR;
output        APB_MSTR_PENABLE;
output        APB_MSTR_PSEL;
output [31:0] APB_MSTR_PWDATA;
output        APB_MSTR_PWRITE;
output        EXT_RESETN;
output        JTAG_TDO;
output        JTAG_TDO_DR;
output [63:0] TIME_COUNT_OUT;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [31:0] AHBL_MSTR_HADDR;
wire   [2:0]  AHBL_MSTR_HBURST;
wire          AHBL_MSTR_HLOCK;
wire   [3:0]  AHBL_MSTR_HPROT;
wire   [31:0] AHB_MSTR_HRDATA;
wire          AHB_MSTR_HREADY;
wire          AHB_MSTR_HRESP;
wire   [2:0]  AHBL_MSTR_HSIZE;
wire   [1:0]  AHBL_MSTR_HTRANS;
wire   [31:0] AHBL_MSTR_HWDATA;
wire          AHBL_MSTR_HWRITE;
wire   [31:0] APB_MSTR_PADDR_net_0;
wire          APB_MSTR_PENABLE_net_0;
wire   [31:0] APB_MSTR_PRDATA;
wire          APB_MSTR_PREADY;
wire          APB_MSTR_PSELx;
wire          APB_MSTR_PSLVERR;
wire   [31:0] APB_MSTR_PWDATA_net_0;
wire          APB_MSTR_PWRITE_net_0;
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
wire   [31:0] AHBL_MSTR_HADDR_net_0;
wire   [1:0]  AHBL_MSTR_HTRANS_net_0;
wire          AHBL_MSTR_HWRITE_net_0;
wire   [2:0]  AHBL_MSTR_HSIZE_net_0;
wire   [2:0]  AHBL_MSTR_HBURST_net_0;
wire   [3:0]  AHBL_MSTR_HPROT_net_0;
wire   [31:0] AHBL_MSTR_HWDATA_net_0;
wire          AHBL_MSTR_HLOCK_net_0;
wire   [31:0] APB_MSTR_PADDR_net_1;
wire          APB_MSTR_PENABLE_net_1;
wire          APB_MSTR_PWRITE_net_1;
wire   [31:0] APB_MSTR_PWDATA_net_1;
wire          APB_MSTR_PSELx_net_0;
wire          JTAG_TDO_net_1;
wire          JTAG_TDO_DR_net_1;
wire          EXT_RESETN_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   [63:0] TIME_COUNT_IN_const_net_0;
wire          GND_net;
wire   [5:0]  MSYS_EI_const_net_0;
wire   [1:0]  AXI_MSTR_BRESP_const_net_0;
wire   [31:0] AXI_MSTR_RDATA_const_net_0;
wire   [1:0]  AXI_MSTR_RRESP_const_net_0;
wire   [31:0] TCM_APB_SLV_PADDR_const_net_0;
wire   [31:0] TCM_APB_SLV_PWDATA_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign TIME_COUNT_IN_const_net_0      = 64'h0000000000000000;
assign GND_net                        = 1'b0;
assign MSYS_EI_const_net_0            = 6'h00;
assign AXI_MSTR_BRESP_const_net_0     = 2'h0;
assign AXI_MSTR_RDATA_const_net_0     = 32'h00000000;
assign AXI_MSTR_RRESP_const_net_0     = 2'h0;
assign TCM_APB_SLV_PADDR_const_net_0  = 32'h00000000;
assign TCM_APB_SLV_PWDATA_const_net_0 = 32'h00000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign TIME_COUNT_OUT_net_1   = TIME_COUNT_OUT_net_0;
assign TIME_COUNT_OUT[63:0]   = TIME_COUNT_OUT_net_1;
assign AHBL_MSTR_HADDR_net_0  = AHBL_MSTR_HADDR;
assign AHB_MSTR_HADDR[31:0]   = AHBL_MSTR_HADDR_net_0;
assign AHBL_MSTR_HTRANS_net_0 = AHBL_MSTR_HTRANS;
assign AHB_MSTR_HTRANS[1:0]   = AHBL_MSTR_HTRANS_net_0;
assign AHBL_MSTR_HWRITE_net_0 = AHBL_MSTR_HWRITE;
assign AHB_MSTR_HWRITE        = AHBL_MSTR_HWRITE_net_0;
assign AHBL_MSTR_HSIZE_net_0  = AHBL_MSTR_HSIZE;
assign AHB_MSTR_HSIZE[2:0]    = AHBL_MSTR_HSIZE_net_0;
assign AHBL_MSTR_HBURST_net_0 = AHBL_MSTR_HBURST;
assign AHB_MSTR_HBURST[2:0]   = AHBL_MSTR_HBURST_net_0;
assign AHBL_MSTR_HPROT_net_0  = AHBL_MSTR_HPROT;
assign AHB_MSTR_HPROT[3:0]    = AHBL_MSTR_HPROT_net_0;
assign AHBL_MSTR_HWDATA_net_0 = AHBL_MSTR_HWDATA;
assign AHB_MSTR_HWDATA[31:0]  = AHBL_MSTR_HWDATA_net_0;
assign AHBL_MSTR_HLOCK_net_0  = AHBL_MSTR_HLOCK;
assign AHB_MSTR_HMASTLOCK     = AHBL_MSTR_HLOCK_net_0;
assign APB_MSTR_PADDR_net_1   = APB_MSTR_PADDR_net_0;
assign APB_MSTR_PADDR[31:0]   = APB_MSTR_PADDR_net_1;
assign APB_MSTR_PENABLE_net_1 = APB_MSTR_PENABLE_net_0;
assign APB_MSTR_PENABLE       = APB_MSTR_PENABLE_net_1;
assign APB_MSTR_PWRITE_net_1  = APB_MSTR_PWRITE_net_0;
assign APB_MSTR_PWRITE        = APB_MSTR_PWRITE_net_1;
assign APB_MSTR_PWDATA_net_1  = APB_MSTR_PWDATA_net_0;
assign APB_MSTR_PWDATA[31:0]  = APB_MSTR_PWDATA_net_1;
assign APB_MSTR_PSELx_net_0   = APB_MSTR_PSELx;
assign APB_MSTR_PSEL          = APB_MSTR_PSELx_net_0;
assign JTAG_TDO_net_1         = JTAG_TDO_net_0;
assign JTAG_TDO               = JTAG_TDO_net_1;
assign JTAG_TDO_DR_net_1      = JTAG_TDO_DR_net_0;
assign JTAG_TDO_DR            = JTAG_TDO_DR_net_1;
assign EXT_RESETN_net_1       = EXT_RESETN_net_0;
assign EXT_RESETN             = EXT_RESETN_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------MIV_RV32_C0_MIV_RV32_C0_0_MIV_RV32   -   Microsemi:MiV:MIV_RV32:3.0.100
MIV_RV32_C0_MIV_RV32_C0_0_MIV_RV32 #( 
        .AHB_END_ADDR_0               ( 'hffff ),
        .AHB_END_ADDR_1               ( 'h8fff ),
        .AHB_MASTER_TYPE              ( 1 ),
        .AHB_SLAVE_MIRROR             ( 0 ),
        .AHB_START_ADDR_0             ( 'h0 ),
        .AHB_START_ADDR_1             ( 'h8000 ),
        .APB_END_ADDR_0               ( 'hffff ),
        .APB_END_ADDR_1               ( 'h7fff ),
        .APB_MASTER_TYPE              ( 1 ),
        .APB_SLAVE_MIRROR             ( 0 ),
        .APB_START_ADDR_0             ( 'h0 ),
        .APB_START_ADDR_1             ( 'h7000 ),
        .AXI_END_ADDR_0               ( 'hffff ),
        .AXI_END_ADDR_1               ( 'h6fff ),
        .AXI_MASTER_TYPE              ( 0 ),
        .AXI_SLAVE_MIRROR             ( 0 ),
        .AXI_START_ADDR_0             ( 'h0 ),
        .AXI_START_ADDR_1             ( 'h6000 ),
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
        .TCM_END_ADDR_0               ( 'h3fff ),
        .TCM_END_ADDR_1               ( 'h4000 ),
        .TCM_PRESENT                  ( 0 ),
        .TCM_START_ADDR_0             ( 'h0 ),
        .TCM_START_ADDR_1             ( 'h4000 ),
        .TCM_TAS_PRESENT              ( 0 ),
        .VECTORED_INTERRUPTS          ( 0 ) )
MIV_RV32_C0_0(
        // Inputs
        .TIME_COUNT_IN          ( TIME_COUNT_IN_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .TMR_IRQ                ( GND_net ), // tied to 1'b0 from definition
        .EXT_IRQ                ( EXT_IRQ ),
        .JTAG_TRSTN             ( JTAG_TRSTN ),
        .JTAG_TCK               ( JTAG_TCK ),
        .JTAG_TDI               ( JTAG_TDI ),
        .JTAG_TMS               ( JTAG_TMS ),
        .APB_MSTR_PREADY        ( APB_MSTR_PREADY ),
        .APB_MSTR_PRDATA        ( APB_MSTR_PRDATA ),
        .APB_MSTR_PSLVERR       ( APB_MSTR_PSLVERR ),
        .TCM_CPU_ACCESS_DISABLE ( GND_net ), // tied to 1'b0 from definition
        .TCM_TAS_ACCESS_DISABLE ( GND_net ), // tied to 1'b0 from definition
        .TCM_APB_SLV_PADDR      ( TCM_APB_SLV_PADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .TCM_APB_SLV_PSEL       ( GND_net ), // tied to 1'b0 from definition
        .TCM_APB_SLV_PENABLE    ( GND_net ), // tied to 1'b0 from definition
        .TCM_APB_SLV_PWRITE     ( GND_net ), // tied to 1'b0 from definition
        .TCM_APB_SLV_PWDATA     ( TCM_APB_SLV_PWDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .AXI_MSTR_ARREADY       ( GND_net ), // tied to 1'b0 from definition
        .AXI_MSTR_RRESP         ( AXI_MSTR_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .AXI_MSTR_RDATA         ( AXI_MSTR_RDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .AXI_MSTR_RLAST         ( GND_net ), // tied to 1'b0 from definition
        .AXI_MSTR_RID           ( GND_net ), // tied to 1'b0 from definition
        .AXI_MSTR_RVALID        ( GND_net ), // tied to 1'b0 from definition
        .AXI_MSTR_AWREADY       ( GND_net ), // tied to 1'b0 from definition
        .AXI_MSTR_WREADY        ( GND_net ), // tied to 1'b0 from definition
        .AXI_MSTR_BRESP         ( AXI_MSTR_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .AXI_MSTR_BID           ( GND_net ), // tied to 1'b0 from definition
        .AXI_MSTR_BVALID        ( GND_net ), // tied to 1'b0 from definition
        .AHB_MSTR_HRDATA        ( AHB_MSTR_HRDATA ),
        .AHB_MSTR_HREADY        ( AHB_MSTR_HREADY ),
        .AHB_MSTR_HRESP         ( AHB_MSTR_HRESP ),
        .CLK                    ( CLK ),
        .RESETN                 ( RESETN ),
        .MSYS_EI                ( MSYS_EI_const_net_0 ), // tied to 6'h00 from definition
        // Outputs
        .JTAG_TDO               ( JTAG_TDO_net_0 ),
        .JTAG_TDO_DR            ( JTAG_TDO_DR_net_0 ),
        .APB_MSTR_PADDR         ( APB_MSTR_PADDR_net_0 ),
        .APB_MSTR_PSEL          ( APB_MSTR_PSELx ),
        .APB_MSTR_PENABLE       ( APB_MSTR_PENABLE_net_0 ),
        .APB_MSTR_PWRITE        ( APB_MSTR_PWRITE_net_0 ),
        .APB_MSTR_PWDATA        ( APB_MSTR_PWDATA_net_0 ),
        .TCM_APB_SLV_PREADY     (  ),
        .TCM_APB_SLV_PRDATA     (  ),
        .TCM_APB_SLV_PSLVERR    (  ),
        .AXI_MSTR_ARID          (  ),
        .AXI_MSTR_ARADDR        (  ),
        .AXI_MSTR_ARLEN         (  ),
        .AXI_MSTR_ARSIZE        (  ),
        .AXI_MSTR_ARBURST       (  ),
        .AXI_MSTR_ARLOCK        (  ),
        .AXI_MSTR_ARCACHE       (  ),
        .AXI_MSTR_ARVALID       (  ),
        .AXI_MSTR_RREADY        (  ),
        .AXI_MSTR_AWID          (  ),
        .AXI_MSTR_AWADDR        (  ),
        .AXI_MSTR_AWLEN         (  ),
        .AXI_MSTR_AWSIZE        (  ),
        .AXI_MSTR_AWBURST       (  ),
        .AXI_MSTR_AWLOCK        (  ),
        .AXI_MSTR_AWCACHE       (  ),
        .AXI_MSTR_AWPROT        (  ),
        .AXI_MSTR_AWVALID       (  ),
        .AXI_MSTR_WDATA         (  ),
        .AXI_MSTR_WSTRB         (  ),
        .AXI_MSTR_WLAST         (  ),
        .AXI_MSTR_WID           (  ),
        .AXI_MSTR_WVALID        (  ),
        .AXI_MSTR_BREADY        (  ),
        .AHB_MSTR_HADDR         ( AHBL_MSTR_HADDR ),
        .AHB_MSTR_HBURST        ( AHBL_MSTR_HBURST ),
        .AHB_MSTR_HMASTLOCK     ( AHBL_MSTR_HLOCK ),
        .AHB_MSTR_HPROT         ( AHBL_MSTR_HPROT ),
        .AHB_MSTR_HSIZE         ( AHBL_MSTR_HSIZE ),
        .AHB_MSTR_HTRANS        ( AHBL_MSTR_HTRANS ),
        .AHB_MSTR_HWDATA        ( AHBL_MSTR_HWDATA ),
        .AHB_MSTR_HWRITE        ( AHBL_MSTR_HWRITE ),
        .AXI_MSTR_ARPROT        (  ),
        .AHB_MSTR_HSEL          (  ),
        .EXT_RESETN             ( EXT_RESETN_net_0 ),
        .TIME_COUNT_OUT         ( TIME_COUNT_OUT_net_0 ) 
        );


endmodule
