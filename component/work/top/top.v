//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Oct 18 18:40:02 2022
// Version: 2022.2 2022.2.0.10
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// top
module top(
    // Inputs
    REF_CLK_0,
    RX,
    SPISDI,
    TCK,
    TDI,
    TMS,
    TRSTB,
    resetn,
    // Outputs
    A,
    BA,
    CAS_N,
    CK0,
    CK0_N,
    CKE,
    CS_N,
    CTRLR_READY,
    DM,
    GPIO_OUT,
    ODT,
    RAS_N,
    RESET_N,
    SHIELD0,
    SHIELD1,
    SPISCLKO,
    SPISDO,
    SPISS,
    TDO,
    TX,
    WE_N,
    trigger,
    // Inouts
    DQ,
    DQS,
    DQS_N
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         REF_CLK_0;
input         RX;
input         SPISDI;
input         TCK;
input         TDI;
input         TMS;
input         TRSTB;
input         resetn;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [15:0] A;
output [2:0]  BA;
output        CAS_N;
output        CK0;
output        CK0_N;
output        CKE;
output        CS_N;
output        CTRLR_READY;
output [1:0]  DM;
output [3:0]  GPIO_OUT;
output        ODT;
output        RAS_N;
output        RESET_N;
output        SHIELD0;
output        SHIELD1;
output        SPISCLKO;
output        SPISDO;
output        SPISS;
output        TDO;
output        TX;
output        WE_N;
output        trigger;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout  [15:0] DQ;
inout  [1:0]  DQS;
inout  [1:0]  DQS_N;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [15:0] A_net_0;
wire          APB3_0_APBmslave0_PENABLE;
wire          APB3_0_APBmslave0_PREADY;
wire          APB3_0_APBmslave0_PSELx;
wire          APB3_0_APBmslave0_PSLVERR;
wire          APB3_0_APBmslave0_PWRITE;
wire   [31:0] APB3_0_APBmslave1_PRDATA;
wire          APB3_0_APBmslave1_PREADY;
wire          APB3_0_APBmslave1_PSELx;
wire          APB3_0_APBmslave1_PSLVERR;
wire   [31:0] APB3_0_APBmslave2_PRDATA;
wire          APB3_0_APBmslave2_PREADY;
wire          APB3_0_APBmslave2_PSELx;
wire          APB3_0_APBmslave2_PSLVERR;
wire          APB3_0_APBmslave3_PREADY;
wire          APB3_0_APBmslave3_PSELx;
wire          APB3_0_APBmslave3_PSLVERR;
wire   [31:0] Axi4Interconnect_0_AXI4mslave0_ARADDR;
wire   [1:0]  Axi4Interconnect_0_AXI4mslave0_ARBURST;
wire   [3:0]  Axi4Interconnect_0_AXI4mslave0_ARCACHE;
wire   [7:0]  Axi4Interconnect_0_AXI4mslave0_ARLEN;
wire   [1:0]  Axi4Interconnect_0_AXI4mslave0_ARLOCK;
wire   [2:0]  Axi4Interconnect_0_AXI4mslave0_ARPROT;
wire   [3:0]  Axi4Interconnect_0_AXI4mslave0_ARQOS;
wire          Axi4Interconnect_0_AXI4mslave0_ARREADY;
wire   [3:0]  Axi4Interconnect_0_AXI4mslave0_ARREGION;
wire   [2:0]  Axi4Interconnect_0_AXI4mslave0_ARSIZE;
wire   [0:0]  Axi4Interconnect_0_AXI4mslave0_ARUSER;
wire          Axi4Interconnect_0_AXI4mslave0_ARVALID;
wire   [31:0] Axi4Interconnect_0_AXI4mslave0_AWADDR;
wire   [1:0]  Axi4Interconnect_0_AXI4mslave0_AWBURST;
wire   [3:0]  Axi4Interconnect_0_AXI4mslave0_AWCACHE;
wire   [7:0]  Axi4Interconnect_0_AXI4mslave0_AWLEN;
wire   [1:0]  Axi4Interconnect_0_AXI4mslave0_AWLOCK;
wire   [2:0]  Axi4Interconnect_0_AXI4mslave0_AWPROT;
wire   [3:0]  Axi4Interconnect_0_AXI4mslave0_AWQOS;
wire          Axi4Interconnect_0_AXI4mslave0_AWREADY;
wire   [3:0]  Axi4Interconnect_0_AXI4mslave0_AWREGION;
wire   [2:0]  Axi4Interconnect_0_AXI4mslave0_AWSIZE;
wire   [0:0]  Axi4Interconnect_0_AXI4mslave0_AWUSER;
wire          Axi4Interconnect_0_AXI4mslave0_AWVALID;
wire          Axi4Interconnect_0_AXI4mslave0_BREADY;
wire   [1:0]  Axi4Interconnect_0_AXI4mslave0_BRESP;
wire          Axi4Interconnect_0_AXI4mslave0_BVALID;
wire   [63:0] Axi4Interconnect_0_AXI4mslave0_RDATA;
wire          Axi4Interconnect_0_AXI4mslave0_RLAST;
wire          Axi4Interconnect_0_AXI4mslave0_RREADY;
wire   [1:0]  Axi4Interconnect_0_AXI4mslave0_RRESP;
wire          Axi4Interconnect_0_AXI4mslave0_RVALID;
wire   [63:0] Axi4Interconnect_0_AXI4mslave0_WDATA;
wire          Axi4Interconnect_0_AXI4mslave0_WLAST;
wire          Axi4Interconnect_0_AXI4mslave0_WREADY;
wire   [7:0]  Axi4Interconnect_0_AXI4mslave0_WSTRB;
wire   [0:0]  Axi4Interconnect_0_AXI4mslave0_WUSER;
wire          Axi4Interconnect_0_AXI4mslave0_WVALID;
wire   [2:0]  BA_net_0;
wire          CAS_N_net_0;
wire          CCC_C0_0_OUT0_FABCLK_0;
wire          CCC_C0_0_PLL_LOCK_0;
wire          CK0_net_0;
wire          CK0_N_net_0;
wire          CKE_net_0;
wire          COREJTAGDEBUG_0_0_TGT_TCK_0;
wire          COREJTAGDEBUG_0_0_TGT_TDI_0;
wire          COREJTAGDEBUG_0_0_TGT_TMS_0;
wire          COREJTAGDEBUG_0_0_TGT_TRSTN_0;
wire          CS_N_net_0;
wire          CTRLR_READY_net_0;
wire          DDR3_0_0_SYS_CLK;
wire   [1:0]  DM_net_0;
wire   [15:0] DQ;
wire   [1:0]  DQS;
wire   [1:0]  DQS_N;
wire   [3:0]  GPIO_OUT_net_0;
wire          INIT_Monitor_0_BANK_1_CALIB_STATUS;
wire          INIT_Monitor_0_BANK_6_VDDI_STATUS;
wire          INIT_Monitor_0_DEVICE_INIT_DONE;
wire          INIT_Monitor_0_FABRIC_POR_N;
wire   [31:0] MIV_RV32_C1_0_APB_MSTR_PADDR;
wire          MIV_RV32_C1_0_APB_MSTR_PENABLE;
wire   [31:0] MIV_RV32_C1_0_APB_MSTR_PRDATA;
wire          MIV_RV32_C1_0_APB_MSTR_PREADY;
wire          MIV_RV32_C1_0_APB_MSTR_PSELx;
wire          MIV_RV32_C1_0_APB_MSTR_PSLVERR;
wire   [31:0] MIV_RV32_C1_0_APB_MSTR_PWDATA;
wire          MIV_RV32_C1_0_APB_MSTR_PWRITE;
wire   [31:0] MIV_RV32_C1_0_AXI4_MSTR_ARADDR;
wire   [1:0]  MIV_RV32_C1_0_AXI4_MSTR_ARBURST;
wire   [3:0]  MIV_RV32_C1_0_AXI4_MSTR_ARCACHE;
wire          MIV_RV32_C1_0_AXI4_MSTR_ARID;
wire   [7:0]  MIV_RV32_C1_0_AXI4_MSTR_ARLEN;
wire   [2:0]  MIV_RV32_C1_0_AXI4_MSTR_ARPROT;
wire          MIV_RV32_C1_0_AXI4_MSTR_ARREADY;
wire   [2:0]  MIV_RV32_C1_0_AXI4_MSTR_ARSIZE;
wire          MIV_RV32_C1_0_AXI4_MSTR_ARVALID;
wire   [31:0] MIV_RV32_C1_0_AXI4_MSTR_AWADDR;
wire   [1:0]  MIV_RV32_C1_0_AXI4_MSTR_AWBURST;
wire   [3:0]  MIV_RV32_C1_0_AXI4_MSTR_AWCACHE;
wire          MIV_RV32_C1_0_AXI4_MSTR_AWID;
wire   [7:0]  MIV_RV32_C1_0_AXI4_MSTR_AWLEN;
wire   [2:0]  MIV_RV32_C1_0_AXI4_MSTR_AWPROT;
wire          MIV_RV32_C1_0_AXI4_MSTR_AWREADY;
wire   [2:0]  MIV_RV32_C1_0_AXI4_MSTR_AWSIZE;
wire          MIV_RV32_C1_0_AXI4_MSTR_AWVALID;
wire   [0:0]  MIV_RV32_C1_0_AXI4_MSTR_BID;
wire          MIV_RV32_C1_0_AXI4_MSTR_BREADY;
wire   [1:0]  MIV_RV32_C1_0_AXI4_MSTR_BRESP;
wire   [0:0]  MIV_RV32_C1_0_AXI4_MSTR_BUSER;
wire          MIV_RV32_C1_0_AXI4_MSTR_BVALID;
wire   [31:0] MIV_RV32_C1_0_AXI4_MSTR_RDATA;
wire   [0:0]  MIV_RV32_C1_0_AXI4_MSTR_RID;
wire          MIV_RV32_C1_0_AXI4_MSTR_RLAST;
wire          MIV_RV32_C1_0_AXI4_MSTR_RREADY;
wire   [1:0]  MIV_RV32_C1_0_AXI4_MSTR_RRESP;
wire   [0:0]  MIV_RV32_C1_0_AXI4_MSTR_RUSER;
wire          MIV_RV32_C1_0_AXI4_MSTR_RVALID;
wire   [31:0] MIV_RV32_C1_0_AXI4_MSTR_WDATA;
wire          MIV_RV32_C1_0_AXI4_MSTR_WLAST;
wire          MIV_RV32_C1_0_AXI4_MSTR_WREADY;
wire   [3:0]  MIV_RV32_C1_0_AXI4_MSTR_WSTRB;
wire          MIV_RV32_C1_0_AXI4_MSTR_WVALID;
wire          MIV_RV32_C1_0_JTAG_TDO;
wire          ODT_net_0;
wire          RAS_N_net_0;
wire          REF_CLK_0;
wire          RESET_N_net_0;
wire          reset_syn_0_0_FABRIC_RESET_N;
wire          reset_syn_0_0_PLL_POWERDOWN_B;
wire          reset_syn_1_0_FABRIC_RESET_N;
wire          resetn;
wire          RX;
wire          SHIELD0_net_0;
wire          SHIELD1_net_0;
wire          SPISCLKO_net_0;
wire          SPISDI;
wire          SPISDO_net_0;
wire   [0:0]  SPISS_net_0;
wire          TCK;
wire          TDI;
wire          TDO_net_0;
wire          TMS;
wire          trigger_net_0;
wire          TRSTB;
wire          TX_net_0;
wire          WE_N_net_0;
wire          CKE_net_1;
wire          CS_N_net_1;
wire          ODT_net_1;
wire          RAS_N_net_1;
wire          CAS_N_net_1;
wire          WE_N_net_1;
wire          RESET_N_net_1;
wire          CK0_net_1;
wire          CK0_N_net_1;
wire          SHIELD0_net_1;
wire          SHIELD1_net_1;
wire          TDO_net_1;
wire          CTRLR_READY_net_1;
wire          SPISDO_net_1;
wire          SPISCLKO_net_1;
wire          TX_net_1;
wire          SPISS_net_1;
wire   [1:0]  DM_net_1;
wire   [2:0]  BA_net_1;
wire   [15:0] A_net_1;
wire   [3:0]  GPIO_OUT_net_1;
wire          trigger_net_1;
wire   [7:1]  SPISS_slice_0;
wire   [7:0]  SPISS_net_2;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   [3:0]  GPIO_IN_const_net_0;
wire          GND_net;
wire          VCC_net;
wire   [3:0]  MASTER0_AWQOS_const_net_0;
wire   [3:0]  MASTER0_AWREGION_const_net_0;
wire   [3:0]  MASTER0_ARQOS_const_net_0;
wire   [3:0]  MASTER0_ARREGION_const_net_0;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [31:0] APB3_0_APBmslave0_PADDR;
wire   [4:0]  APB3_0_APBmslave0_PADDR_0;
wire   [4:0]  APB3_0_APBmslave0_PADDR_0_4to0;
wire   [7:0]  APB3_0_APBmslave0_PADDR_1;
wire   [7:0]  APB3_0_APBmslave0_PADDR_1_7to0;
wire   [6:0]  APB3_0_APBmslave0_PADDR_2;
wire   [6:0]  APB3_0_APBmslave0_PADDR_2_6to0;
wire   [7:0]  APB3_0_APBmslave0_PRDATA;
wire   [31:0] APB3_0_APBmslave0_PRDATA_0;
wire   [31:8] APB3_0_APBmslave0_PRDATA_0_31to8;
wire   [7:0]  APB3_0_APBmslave0_PRDATA_0_7to0;
wire   [31:0] APB3_0_APBmslave0_PWDATA;
wire   [7:0]  APB3_0_APBmslave0_PWDATA_0;
wire   [7:0]  APB3_0_APBmslave0_PWDATA_0_7to0;
wire   [63:0] APB3_0_APBmslave0_PWDATA_1;
wire   [31:0] APB3_0_APBmslave0_PWDATA_1_31to0;
wire   [63:32]APB3_0_APBmslave0_PWDATA_1_63to32;
wire   [63:0] APB3_0_APBmslave3_PRDATA;
wire   [31:0] APB3_0_APBmslave3_PRDATA_0;
wire   [31:0] APB3_0_APBmslave3_PRDATA_0_31to0;
wire   [1:0]  Axi4Interconnect_0_AXI4mslave0_ARID;
wire   [3:0]  Axi4Interconnect_0_AXI4mslave0_ARID_0;
wire   [1:0]  Axi4Interconnect_0_AXI4mslave0_ARID_0_1to0;
wire   [3:2]  Axi4Interconnect_0_AXI4mslave0_ARID_0_3to2;
wire   [1:0]  Axi4Interconnect_0_AXI4mslave0_AWID;
wire   [3:0]  Axi4Interconnect_0_AXI4mslave0_AWID_0;
wire   [1:0]  Axi4Interconnect_0_AXI4mslave0_AWID_0_1to0;
wire   [3:2]  Axi4Interconnect_0_AXI4mslave0_AWID_0_3to2;
wire   [3:0]  Axi4Interconnect_0_AXI4mslave0_BID;
wire   [1:0]  Axi4Interconnect_0_AXI4mslave0_BID_0;
wire   [1:0]  Axi4Interconnect_0_AXI4mslave0_BID_0_1to0;
wire   [3:0]  Axi4Interconnect_0_AXI4mslave0_RID;
wire   [1:0]  Axi4Interconnect_0_AXI4mslave0_RID_0;
wire   [1:0]  Axi4Interconnect_0_AXI4mslave0_RID_0_1to0;
wire   [0:0]  MIV_RV32_C1_0_AXI4_MSTR_ARLOCK;
wire   [1:0]  MIV_RV32_C1_0_AXI4_MSTR_ARLOCK_0;
wire   [0:0]  MIV_RV32_C1_0_AXI4_MSTR_ARLOCK_0_0to0;
wire   [1:1]  MIV_RV32_C1_0_AXI4_MSTR_ARLOCK_0_1to1;
wire   [0:0]  MIV_RV32_C1_0_AXI4_MSTR_AWLOCK;
wire   [1:0]  MIV_RV32_C1_0_AXI4_MSTR_AWLOCK_0;
wire   [0:0]  MIV_RV32_C1_0_AXI4_MSTR_AWLOCK_0_0to0;
wire   [1:1]  MIV_RV32_C1_0_AXI4_MSTR_AWLOCK_0_1to1;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GPIO_IN_const_net_0          = 4'h0;
assign GND_net                      = 1'b0;
assign VCC_net                      = 1'b1;
assign MASTER0_AWQOS_const_net_0    = 4'h0;
assign MASTER0_AWREGION_const_net_0 = 4'h0;
assign MASTER0_ARQOS_const_net_0    = 4'h0;
assign MASTER0_ARREGION_const_net_0 = 4'h0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign CKE_net_1         = CKE_net_0;
assign CKE               = CKE_net_1;
assign CS_N_net_1        = CS_N_net_0;
assign CS_N              = CS_N_net_1;
assign ODT_net_1         = ODT_net_0;
assign ODT               = ODT_net_1;
assign RAS_N_net_1       = RAS_N_net_0;
assign RAS_N             = RAS_N_net_1;
assign CAS_N_net_1       = CAS_N_net_0;
assign CAS_N             = CAS_N_net_1;
assign WE_N_net_1        = WE_N_net_0;
assign WE_N              = WE_N_net_1;
assign RESET_N_net_1     = RESET_N_net_0;
assign RESET_N           = RESET_N_net_1;
assign CK0_net_1         = CK0_net_0;
assign CK0               = CK0_net_1;
assign CK0_N_net_1       = CK0_N_net_0;
assign CK0_N             = CK0_N_net_1;
assign SHIELD0_net_1     = SHIELD0_net_0;
assign SHIELD0           = SHIELD0_net_1;
assign SHIELD1_net_1     = SHIELD1_net_0;
assign SHIELD1           = SHIELD1_net_1;
assign TDO_net_1         = TDO_net_0;
assign TDO               = TDO_net_1;
assign CTRLR_READY_net_1 = CTRLR_READY_net_0;
assign CTRLR_READY       = CTRLR_READY_net_1;
assign SPISDO_net_1      = SPISDO_net_0;
assign SPISDO            = SPISDO_net_1;
assign SPISCLKO_net_1    = SPISCLKO_net_0;
assign SPISCLKO          = SPISCLKO_net_1;
assign TX_net_1          = TX_net_0;
assign TX                = TX_net_1;
assign SPISS_net_1       = SPISS_net_0[0];
assign SPISS             = SPISS_net_1;
assign DM_net_1          = DM_net_0;
assign DM[1:0]           = DM_net_1;
assign BA_net_1          = BA_net_0;
assign BA[2:0]           = BA_net_1;
assign A_net_1           = A_net_0;
assign A[15:0]           = A_net_1;
assign GPIO_OUT_net_1    = GPIO_OUT_net_0;
assign GPIO_OUT[3:0]     = GPIO_OUT_net_1;
assign trigger_net_1     = trigger_net_0;
assign trigger           = trigger_net_1;
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign SPISS_net_0[0] = SPISS_net_2[0:0];
assign SPISS_slice_0  = SPISS_net_2[7:1];
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign APB3_0_APBmslave0_PADDR_0 = { APB3_0_APBmslave0_PADDR_0_4to0 };
assign APB3_0_APBmslave0_PADDR_0_4to0 = APB3_0_APBmslave0_PADDR[4:0];
assign APB3_0_APBmslave0_PADDR_1 = { APB3_0_APBmslave0_PADDR_1_7to0 };
assign APB3_0_APBmslave0_PADDR_1_7to0 = APB3_0_APBmslave0_PADDR[7:0];
assign APB3_0_APBmslave0_PADDR_2 = { APB3_0_APBmslave0_PADDR_2_6to0 };
assign APB3_0_APBmslave0_PADDR_2_6to0 = APB3_0_APBmslave0_PADDR[6:0];

assign APB3_0_APBmslave0_PRDATA_0 = { APB3_0_APBmslave0_PRDATA_0_31to8, APB3_0_APBmslave0_PRDATA_0_7to0 };
assign APB3_0_APBmslave0_PRDATA_0_31to8 = 24'h0;
assign APB3_0_APBmslave0_PRDATA_0_7to0 = APB3_0_APBmslave0_PRDATA[7:0];

assign APB3_0_APBmslave0_PWDATA_0 = { APB3_0_APBmslave0_PWDATA_0_7to0 };
assign APB3_0_APBmslave0_PWDATA_0_7to0 = APB3_0_APBmslave0_PWDATA[7:0];
assign APB3_0_APBmslave0_PWDATA_1 = { APB3_0_APBmslave0_PWDATA_1_63to32, APB3_0_APBmslave0_PWDATA_1_31to0 };
assign APB3_0_APBmslave0_PWDATA_1_31to0 = APB3_0_APBmslave0_PWDATA[31:0];
assign APB3_0_APBmslave0_PWDATA_1_63to32 = 32'h0;

assign APB3_0_APBmslave3_PRDATA_0 = { APB3_0_APBmslave3_PRDATA_0_31to0 };
assign APB3_0_APBmslave3_PRDATA_0_31to0 = APB3_0_APBmslave3_PRDATA[31:0];

assign Axi4Interconnect_0_AXI4mslave0_ARID_0 = { Axi4Interconnect_0_AXI4mslave0_ARID_0_3to2, Axi4Interconnect_0_AXI4mslave0_ARID_0_1to0 };
assign Axi4Interconnect_0_AXI4mslave0_ARID_0_1to0 = Axi4Interconnect_0_AXI4mslave0_ARID[1:0];
assign Axi4Interconnect_0_AXI4mslave0_ARID_0_3to2 = 2'h0;

assign Axi4Interconnect_0_AXI4mslave0_AWID_0 = { Axi4Interconnect_0_AXI4mslave0_AWID_0_3to2, Axi4Interconnect_0_AXI4mslave0_AWID_0_1to0 };
assign Axi4Interconnect_0_AXI4mslave0_AWID_0_1to0 = Axi4Interconnect_0_AXI4mslave0_AWID[1:0];
assign Axi4Interconnect_0_AXI4mslave0_AWID_0_3to2 = 2'h0;

assign Axi4Interconnect_0_AXI4mslave0_BID_0 = { Axi4Interconnect_0_AXI4mslave0_BID_0_1to0 };
assign Axi4Interconnect_0_AXI4mslave0_BID_0_1to0 = Axi4Interconnect_0_AXI4mslave0_BID[1:0];

assign Axi4Interconnect_0_AXI4mslave0_RID_0 = { Axi4Interconnect_0_AXI4mslave0_RID_0_1to0 };
assign Axi4Interconnect_0_AXI4mslave0_RID_0_1to0 = Axi4Interconnect_0_AXI4mslave0_RID[1:0];

assign MIV_RV32_C1_0_AXI4_MSTR_ARLOCK_0 = { MIV_RV32_C1_0_AXI4_MSTR_ARLOCK_0_1to1, MIV_RV32_C1_0_AXI4_MSTR_ARLOCK_0_0to0 };
assign MIV_RV32_C1_0_AXI4_MSTR_ARLOCK_0_0to0 = MIV_RV32_C1_0_AXI4_MSTR_ARLOCK[0:0];
assign MIV_RV32_C1_0_AXI4_MSTR_ARLOCK_0_1to1 = 1'b0;

assign MIV_RV32_C1_0_AXI4_MSTR_AWLOCK_0 = { MIV_RV32_C1_0_AXI4_MSTR_AWLOCK_0_1to1, MIV_RV32_C1_0_AXI4_MSTR_AWLOCK_0_0to0 };
assign MIV_RV32_C1_0_AXI4_MSTR_AWLOCK_0_0to0 = MIV_RV32_C1_0_AXI4_MSTR_AWLOCK[0:0];
assign MIV_RV32_C1_0_AXI4_MSTR_AWLOCK_0_1to1 = 1'b0;

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------APB3
APB3 APB3_0(
        // Inputs
        .PADDR     ( MIV_RV32_C1_0_APB_MSTR_PADDR ),
        .PSEL      ( MIV_RV32_C1_0_APB_MSTR_PSELx ),
        .PENABLE   ( MIV_RV32_C1_0_APB_MSTR_PENABLE ),
        .PWRITE    ( MIV_RV32_C1_0_APB_MSTR_PWRITE ),
        .PWDATA    ( MIV_RV32_C1_0_APB_MSTR_PWDATA ),
        .PRDATAS0  ( APB3_0_APBmslave0_PRDATA_0 ),
        .PREADYS0  ( APB3_0_APBmslave0_PREADY ),
        .PSLVERRS0 ( APB3_0_APBmslave0_PSLVERR ),
        .PRDATAS1  ( APB3_0_APBmslave1_PRDATA ),
        .PREADYS1  ( APB3_0_APBmslave1_PREADY ),
        .PSLVERRS1 ( APB3_0_APBmslave1_PSLVERR ),
        .PRDATAS2  ( APB3_0_APBmslave2_PRDATA ),
        .PREADYS2  ( APB3_0_APBmslave2_PREADY ),
        .PSLVERRS2 ( APB3_0_APBmslave2_PSLVERR ),
        .PRDATAS3  ( APB3_0_APBmslave3_PRDATA_0 ),
        .PREADYS3  ( APB3_0_APBmslave3_PREADY ),
        .PSLVERRS3 ( APB3_0_APBmslave3_PSLVERR ),
        // Outputs
        .PRDATA    ( MIV_RV32_C1_0_APB_MSTR_PRDATA ),
        .PREADY    ( MIV_RV32_C1_0_APB_MSTR_PREADY ),
        .PSLVERR   ( MIV_RV32_C1_0_APB_MSTR_PSLVERR ),
        .PADDRS    ( APB3_0_APBmslave0_PADDR ),
        .PSELS0    ( APB3_0_APBmslave0_PSELx ),
        .PENABLES  ( APB3_0_APBmslave0_PENABLE ),
        .PWRITES   ( APB3_0_APBmslave0_PWRITE ),
        .PWDATAS   ( APB3_0_APBmslave0_PWDATA ),
        .PSELS1    ( APB3_0_APBmslave1_PSELx ),
        .PSELS2    ( APB3_0_APBmslave2_PSELx ),
        .PSELS3    ( APB3_0_APBmslave3_PSELx ) 
        );

//--------Axi4Interconnect
Axi4Interconnect Axi4Interconnect_0(
        // Inputs
        .ACLK             ( CCC_C0_0_OUT0_FABCLK_0 ),
        .ARESETN          ( reset_syn_0_0_FABRIC_RESET_N ),
        .S_CLK0           ( DDR3_0_0_SYS_CLK ),
        .SLAVE0_AWREADY   ( Axi4Interconnect_0_AXI4mslave0_AWREADY ),
        .SLAVE0_WREADY    ( Axi4Interconnect_0_AXI4mslave0_WREADY ),
        .SLAVE0_BVALID    ( Axi4Interconnect_0_AXI4mslave0_BVALID ),
        .SLAVE0_ARREADY   ( Axi4Interconnect_0_AXI4mslave0_ARREADY ),
        .SLAVE0_RLAST     ( Axi4Interconnect_0_AXI4mslave0_RLAST ),
        .SLAVE0_RVALID    ( Axi4Interconnect_0_AXI4mslave0_RVALID ),
        .MASTER0_AWVALID  ( MIV_RV32_C1_0_AXI4_MSTR_AWVALID ),
        .MASTER0_WLAST    ( MIV_RV32_C1_0_AXI4_MSTR_WLAST ),
        .MASTER0_WVALID   ( MIV_RV32_C1_0_AXI4_MSTR_WVALID ),
        .MASTER0_BREADY   ( MIV_RV32_C1_0_AXI4_MSTR_BREADY ),
        .MASTER0_ARVALID  ( MIV_RV32_C1_0_AXI4_MSTR_ARVALID ),
        .MASTER0_RREADY   ( MIV_RV32_C1_0_AXI4_MSTR_RREADY ),
        .SLAVE0_BID       ( Axi4Interconnect_0_AXI4mslave0_BID_0 ),
        .SLAVE0_BRESP     ( Axi4Interconnect_0_AXI4mslave0_BRESP ),
        .SLAVE0_RID       ( Axi4Interconnect_0_AXI4mslave0_RID_0 ),
        .SLAVE0_RDATA     ( Axi4Interconnect_0_AXI4mslave0_RDATA ),
        .SLAVE0_RRESP     ( Axi4Interconnect_0_AXI4mslave0_RRESP ),
        .SLAVE0_BUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE0_RUSER     ( GND_net ), // tied to 1'b0 from definition
        .MASTER0_AWID     ( MIV_RV32_C1_0_AXI4_MSTR_AWID ),
        .MASTER0_AWADDR   ( MIV_RV32_C1_0_AXI4_MSTR_AWADDR ),
        .MASTER0_AWLEN    ( MIV_RV32_C1_0_AXI4_MSTR_AWLEN ),
        .MASTER0_AWSIZE   ( MIV_RV32_C1_0_AXI4_MSTR_AWSIZE ),
        .MASTER0_AWBURST  ( MIV_RV32_C1_0_AXI4_MSTR_AWBURST ),
        .MASTER0_AWLOCK   ( MIV_RV32_C1_0_AXI4_MSTR_AWLOCK_0 ),
        .MASTER0_AWCACHE  ( MIV_RV32_C1_0_AXI4_MSTR_AWCACHE ),
        .MASTER0_AWPROT   ( MIV_RV32_C1_0_AXI4_MSTR_AWPROT ),
        .MASTER0_AWQOS    ( MASTER0_AWQOS_const_net_0 ), // tied to 4'h0 from definition
        .MASTER0_AWREGION ( MASTER0_AWREGION_const_net_0 ), // tied to 4'h0 from definition
        .MASTER0_WDATA    ( MIV_RV32_C1_0_AXI4_MSTR_WDATA ),
        .MASTER0_WSTRB    ( MIV_RV32_C1_0_AXI4_MSTR_WSTRB ),
        .MASTER0_ARID     ( MIV_RV32_C1_0_AXI4_MSTR_ARID ),
        .MASTER0_ARADDR   ( MIV_RV32_C1_0_AXI4_MSTR_ARADDR ),
        .MASTER0_ARLEN    ( MIV_RV32_C1_0_AXI4_MSTR_ARLEN ),
        .MASTER0_ARSIZE   ( MIV_RV32_C1_0_AXI4_MSTR_ARSIZE ),
        .MASTER0_ARBURST  ( MIV_RV32_C1_0_AXI4_MSTR_ARBURST ),
        .MASTER0_ARLOCK   ( MIV_RV32_C1_0_AXI4_MSTR_ARLOCK_0 ),
        .MASTER0_ARCACHE  ( MIV_RV32_C1_0_AXI4_MSTR_ARCACHE ),
        .MASTER0_ARPROT   ( MIV_RV32_C1_0_AXI4_MSTR_ARPROT ),
        .MASTER0_ARQOS    ( MASTER0_ARQOS_const_net_0 ), // tied to 4'h0 from definition
        .MASTER0_ARREGION ( MASTER0_ARREGION_const_net_0 ), // tied to 4'h0 from definition
        .MASTER0_AWUSER   ( GND_net ), // tied to 1'b0 from definition
        .MASTER0_WUSER    ( GND_net ), // tied to 1'b0 from definition
        .MASTER0_ARUSER   ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .SLAVE0_AWVALID   ( Axi4Interconnect_0_AXI4mslave0_AWVALID ),
        .SLAVE0_WLAST     ( Axi4Interconnect_0_AXI4mslave0_WLAST ),
        .SLAVE0_WVALID    ( Axi4Interconnect_0_AXI4mslave0_WVALID ),
        .SLAVE0_BREADY    ( Axi4Interconnect_0_AXI4mslave0_BREADY ),
        .SLAVE0_ARVALID   ( Axi4Interconnect_0_AXI4mslave0_ARVALID ),
        .SLAVE0_RREADY    ( Axi4Interconnect_0_AXI4mslave0_RREADY ),
        .MASTER0_AWREADY  ( MIV_RV32_C1_0_AXI4_MSTR_AWREADY ),
        .MASTER0_WREADY   ( MIV_RV32_C1_0_AXI4_MSTR_WREADY ),
        .MASTER0_BVALID   ( MIV_RV32_C1_0_AXI4_MSTR_BVALID ),
        .MASTER0_ARREADY  ( MIV_RV32_C1_0_AXI4_MSTR_ARREADY ),
        .MASTER0_RLAST    ( MIV_RV32_C1_0_AXI4_MSTR_RLAST ),
        .MASTER0_RVALID   ( MIV_RV32_C1_0_AXI4_MSTR_RVALID ),
        .SLAVE0_AWID      ( Axi4Interconnect_0_AXI4mslave0_AWID ),
        .SLAVE0_AWADDR    ( Axi4Interconnect_0_AXI4mslave0_AWADDR ),
        .SLAVE0_AWLEN     ( Axi4Interconnect_0_AXI4mslave0_AWLEN ),
        .SLAVE0_AWSIZE    ( Axi4Interconnect_0_AXI4mslave0_AWSIZE ),
        .SLAVE0_AWBURST   ( Axi4Interconnect_0_AXI4mslave0_AWBURST ),
        .SLAVE0_AWLOCK    ( Axi4Interconnect_0_AXI4mslave0_AWLOCK ),
        .SLAVE0_AWCACHE   ( Axi4Interconnect_0_AXI4mslave0_AWCACHE ),
        .SLAVE0_AWPROT    ( Axi4Interconnect_0_AXI4mslave0_AWPROT ),
        .SLAVE0_AWQOS     ( Axi4Interconnect_0_AXI4mslave0_AWQOS ),
        .SLAVE0_AWREGION  ( Axi4Interconnect_0_AXI4mslave0_AWREGION ),
        .SLAVE0_WDATA     ( Axi4Interconnect_0_AXI4mslave0_WDATA ),
        .SLAVE0_WSTRB     ( Axi4Interconnect_0_AXI4mslave0_WSTRB ),
        .SLAVE0_ARID      ( Axi4Interconnect_0_AXI4mslave0_ARID ),
        .SLAVE0_ARADDR    ( Axi4Interconnect_0_AXI4mslave0_ARADDR ),
        .SLAVE0_ARLEN     ( Axi4Interconnect_0_AXI4mslave0_ARLEN ),
        .SLAVE0_ARSIZE    ( Axi4Interconnect_0_AXI4mslave0_ARSIZE ),
        .SLAVE0_ARBURST   ( Axi4Interconnect_0_AXI4mslave0_ARBURST ),
        .SLAVE0_ARLOCK    ( Axi4Interconnect_0_AXI4mslave0_ARLOCK ),
        .SLAVE0_ARCACHE   ( Axi4Interconnect_0_AXI4mslave0_ARCACHE ),
        .SLAVE0_ARPROT    ( Axi4Interconnect_0_AXI4mslave0_ARPROT ),
        .SLAVE0_ARQOS     ( Axi4Interconnect_0_AXI4mslave0_ARQOS ),
        .SLAVE0_ARREGION  ( Axi4Interconnect_0_AXI4mslave0_ARREGION ),
        .SLAVE0_AWUSER    ( Axi4Interconnect_0_AXI4mslave0_AWUSER ),
        .SLAVE0_WUSER     ( Axi4Interconnect_0_AXI4mslave0_WUSER ),
        .SLAVE0_ARUSER    ( Axi4Interconnect_0_AXI4mslave0_ARUSER ),
        .MASTER0_BID      ( MIV_RV32_C1_0_AXI4_MSTR_BID ),
        .MASTER0_BRESP    ( MIV_RV32_C1_0_AXI4_MSTR_BRESP ),
        .MASTER0_RID      ( MIV_RV32_C1_0_AXI4_MSTR_RID ),
        .MASTER0_RDATA    ( MIV_RV32_C1_0_AXI4_MSTR_RDATA ),
        .MASTER0_RRESP    ( MIV_RV32_C1_0_AXI4_MSTR_RRESP ),
        .MASTER0_BUSER    ( MIV_RV32_C1_0_AXI4_MSTR_BUSER ),
        .MASTER0_RUSER    ( MIV_RV32_C1_0_AXI4_MSTR_RUSER ) 
        );

//--------CCC_C0
CCC_C0 CCC_C0_0(
        // Inputs
        .REF_CLK_0         ( REF_CLK_0 ),
        .PLL_POWERDOWN_N_0 ( reset_syn_0_0_PLL_POWERDOWN_B ),
        // Outputs
        .OUT0_FABCLK_0     ( CCC_C0_0_OUT0_FABCLK_0 ),
        .PLL_LOCK_0        ( CCC_C0_0_PLL_LOCK_0 ) 
        );

//--------CoreGPIO_0
CoreGPIO_0 CoreGPIO_0_0(
        // Inputs
        .PRESETN  ( reset_syn_0_0_FABRIC_RESET_N ),
        .PCLK     ( CCC_C0_0_OUT0_FABCLK_0 ),
        .PSEL     ( APB3_0_APBmslave1_PSELx ),
        .PENABLE  ( APB3_0_APBmslave0_PENABLE ),
        .PWRITE   ( APB3_0_APBmslave0_PWRITE ),
        .GPIO_IN  ( GPIO_IN_const_net_0 ),
        .PADDR    ( APB3_0_APBmslave0_PADDR_1 ),
        .PWDATA   ( APB3_0_APBmslave0_PWDATA ),
        // Outputs
        .PREADY   ( APB3_0_APBmslave1_PREADY ),
        .PSLVERR  ( APB3_0_APBmslave1_PSLVERR ),
        .INT      (  ),
        .GPIO_OUT ( GPIO_OUT_net_0 ),
        .PRDATA   ( APB3_0_APBmslave1_PRDATA ) 
        );

//--------COREJTAGDEBUG_0
COREJTAGDEBUG_0 COREJTAGDEBUG_0_0(
        // Inputs
        .TRSTB       ( TRSTB ),
        .TCK         ( TCK ),
        .TMS         ( TMS ),
        .TDI         ( TDI ),
        .TGT_TDO_0   ( MIV_RV32_C1_0_JTAG_TDO ),
        // Outputs
        .TDO         ( TDO_net_0 ),
        .TGT_TCK_0   ( COREJTAGDEBUG_0_0_TGT_TCK_0 ),
        .TGT_TMS_0   ( COREJTAGDEBUG_0_0_TGT_TMS_0 ),
        .TGT_TDI_0   ( COREJTAGDEBUG_0_0_TGT_TDI_0 ),
        .TGT_TRSTN_0 ( COREJTAGDEBUG_0_0_TGT_TRSTN_0 ) 
        );

//--------DDR3_0
DDR3_0 DDR3_0_0(
        // Inputs
        .PLL_REF_CLK  ( CCC_C0_0_OUT0_FABCLK_0 ),
        .SYS_RESET_N  ( reset_syn_1_0_FABRIC_RESET_N ),
        .axi0_awvalid ( Axi4Interconnect_0_AXI4mslave0_AWVALID ),
        .axi0_wlast   ( Axi4Interconnect_0_AXI4mslave0_WLAST ),
        .axi0_wvalid  ( Axi4Interconnect_0_AXI4mslave0_WVALID ),
        .axi0_bready  ( Axi4Interconnect_0_AXI4mslave0_BREADY ),
        .axi0_arvalid ( Axi4Interconnect_0_AXI4mslave0_ARVALID ),
        .axi0_rready  ( Axi4Interconnect_0_AXI4mslave0_RREADY ),
        .axi0_awid    ( Axi4Interconnect_0_AXI4mslave0_AWID_0 ),
        .axi0_awaddr  ( Axi4Interconnect_0_AXI4mslave0_AWADDR ),
        .axi0_awlen   ( Axi4Interconnect_0_AXI4mslave0_AWLEN ),
        .axi0_awsize  ( Axi4Interconnect_0_AXI4mslave0_AWSIZE ),
        .axi0_awburst ( Axi4Interconnect_0_AXI4mslave0_AWBURST ),
        .axi0_awlock  ( Axi4Interconnect_0_AXI4mslave0_AWLOCK ),
        .axi0_awcache ( Axi4Interconnect_0_AXI4mslave0_AWCACHE ),
        .axi0_awprot  ( Axi4Interconnect_0_AXI4mslave0_AWPROT ),
        .axi0_wdata   ( Axi4Interconnect_0_AXI4mslave0_WDATA ),
        .axi0_wstrb   ( Axi4Interconnect_0_AXI4mslave0_WSTRB ),
        .axi0_arid    ( Axi4Interconnect_0_AXI4mslave0_ARID_0 ),
        .axi0_araddr  ( Axi4Interconnect_0_AXI4mslave0_ARADDR ),
        .axi0_arlen   ( Axi4Interconnect_0_AXI4mslave0_ARLEN ),
        .axi0_arsize  ( Axi4Interconnect_0_AXI4mslave0_ARSIZE ),
        .axi0_arburst ( Axi4Interconnect_0_AXI4mslave0_ARBURST ),
        .axi0_arlock  ( Axi4Interconnect_0_AXI4mslave0_ARLOCK ),
        .axi0_arcache ( Axi4Interconnect_0_AXI4mslave0_ARCACHE ),
        .axi0_arprot  ( Axi4Interconnect_0_AXI4mslave0_ARPROT ),
        // Outputs
        .CKE          ( CKE_net_0 ),
        .CS_N         ( CS_N_net_0 ),
        .ODT          ( ODT_net_0 ),
        .RAS_N        ( RAS_N_net_0 ),
        .CAS_N        ( CAS_N_net_0 ),
        .WE_N         ( WE_N_net_0 ),
        .RESET_N      ( RESET_N_net_0 ),
        .CK0          ( CK0_net_0 ),
        .CK0_N        ( CK0_N_net_0 ),
        .SHIELD0      ( SHIELD0_net_0 ),
        .SHIELD1      ( SHIELD1_net_0 ),
        .SYS_CLK      ( DDR3_0_0_SYS_CLK ),
        .PLL_LOCK     (  ),
        .axi0_awready ( Axi4Interconnect_0_AXI4mslave0_AWREADY ),
        .axi0_wready  ( Axi4Interconnect_0_AXI4mslave0_WREADY ),
        .axi0_bvalid  ( Axi4Interconnect_0_AXI4mslave0_BVALID ),
        .axi0_arready ( Axi4Interconnect_0_AXI4mslave0_ARREADY ),
        .axi0_rlast   ( Axi4Interconnect_0_AXI4mslave0_RLAST ),
        .axi0_rvalid  ( Axi4Interconnect_0_AXI4mslave0_RVALID ),
        .CTRLR_READY  ( CTRLR_READY_net_0 ),
        .DM           ( DM_net_0 ),
        .BA           ( BA_net_0 ),
        .A            ( A_net_0 ),
        .axi0_bid     ( Axi4Interconnect_0_AXI4mslave0_BID ),
        .axi0_bresp   ( Axi4Interconnect_0_AXI4mslave0_BRESP ),
        .axi0_rid     ( Axi4Interconnect_0_AXI4mslave0_RID ),
        .axi0_rdata   ( Axi4Interconnect_0_AXI4mslave0_RDATA ),
        .axi0_rresp   ( Axi4Interconnect_0_AXI4mslave0_RRESP ),
        // Inouts
        .DQ           ( DQ ),
        .DQS          ( DQS ),
        .DQS_N        ( DQS_N ) 
        );

//--------INIT_Monitor
INIT_Monitor INIT_Monitor_0(
        // Outputs
        .FABRIC_POR_N               ( INIT_Monitor_0_FABRIC_POR_N ),
        .PCIE_INIT_DONE             (  ),
        .USRAM_INIT_DONE            (  ),
        .SRAM_INIT_DONE             (  ),
        .DEVICE_INIT_DONE           ( INIT_Monitor_0_DEVICE_INIT_DONE ),
        .BANK_1_CALIB_STATUS        ( INIT_Monitor_0_BANK_1_CALIB_STATUS ),
        .BANK_6_VDDI_STATUS         ( INIT_Monitor_0_BANK_6_VDDI_STATUS ),
        .XCVR_INIT_DONE             (  ),
        .USRAM_INIT_FROM_SNVM_DONE  (  ),
        .USRAM_INIT_FROM_UPROM_DONE (  ),
        .USRAM_INIT_FROM_SPI_DONE   (  ),
        .SRAM_INIT_FROM_SNVM_DONE   (  ),
        .SRAM_INIT_FROM_UPROM_DONE  (  ),
        .SRAM_INIT_FROM_SPI_DONE    (  ),
        .AUTOCALIB_DONE             (  ) 
        );

//--------MIV_RV32_C1
MIV_RV32_C1 MIV_RV32_C1_0(
        // Inputs
        .CLK              ( CCC_C0_0_OUT0_FABCLK_0 ),
        .RESETN           ( reset_syn_0_0_FABRIC_RESET_N ),
        .APB_MSTR_PREADY  ( MIV_RV32_C1_0_APB_MSTR_PREADY ),
        .APB_MSTR_PSLVERR ( MIV_RV32_C1_0_APB_MSTR_PSLVERR ),
        .AXI_MSTR_AWREADY ( MIV_RV32_C1_0_AXI4_MSTR_AWREADY ),
        .AXI_MSTR_WREADY  ( MIV_RV32_C1_0_AXI4_MSTR_WREADY ),
        .AXI_MSTR_BID     ( MIV_RV32_C1_0_AXI4_MSTR_BID ),
        .AXI_MSTR_BVALID  ( MIV_RV32_C1_0_AXI4_MSTR_BVALID ),
        .AXI_MSTR_ARREADY ( MIV_RV32_C1_0_AXI4_MSTR_ARREADY ),
        .AXI_MSTR_RID     ( MIV_RV32_C1_0_AXI4_MSTR_RID ),
        .AXI_MSTR_RLAST   ( MIV_RV32_C1_0_AXI4_MSTR_RLAST ),
        .AXI_MSTR_RVALID  ( MIV_RV32_C1_0_AXI4_MSTR_RVALID ),
        .JTAG_TRSTN       ( COREJTAGDEBUG_0_0_TGT_TRSTN_0 ),
        .JTAG_TCK         ( COREJTAGDEBUG_0_0_TGT_TCK_0 ),
        .JTAG_TDI         ( COREJTAGDEBUG_0_0_TGT_TDI_0 ),
        .JTAG_TMS         ( COREJTAGDEBUG_0_0_TGT_TMS_0 ),
        .EXT_IRQ          ( GND_net ),
        .APB_MSTR_PRDATA  ( MIV_RV32_C1_0_APB_MSTR_PRDATA ),
        .AXI_MSTR_BRESP   ( MIV_RV32_C1_0_AXI4_MSTR_BRESP ),
        .AXI_MSTR_RDATA   ( MIV_RV32_C1_0_AXI4_MSTR_RDATA ),
        .AXI_MSTR_RRESP   ( MIV_RV32_C1_0_AXI4_MSTR_RRESP ),
        // Outputs
        .APB_MSTR_PENABLE ( MIV_RV32_C1_0_APB_MSTR_PENABLE ),
        .APB_MSTR_PWRITE  ( MIV_RV32_C1_0_APB_MSTR_PWRITE ),
        .APB_MSTR_PSEL    ( MIV_RV32_C1_0_APB_MSTR_PSELx ),
        .AXI_MSTR_AWID    ( MIV_RV32_C1_0_AXI4_MSTR_AWID ),
        .AXI_MSTR_AWVALID ( MIV_RV32_C1_0_AXI4_MSTR_AWVALID ),
        .AXI_MSTR_WLAST   ( MIV_RV32_C1_0_AXI4_MSTR_WLAST ),
        .AXI_MSTR_WVALID  ( MIV_RV32_C1_0_AXI4_MSTR_WVALID ),
        .AXI_MSTR_BREADY  ( MIV_RV32_C1_0_AXI4_MSTR_BREADY ),
        .AXI_MSTR_ARID    ( MIV_RV32_C1_0_AXI4_MSTR_ARID ),
        .AXI_MSTR_ARVALID ( MIV_RV32_C1_0_AXI4_MSTR_ARVALID ),
        .AXI_MSTR_RREADY  ( MIV_RV32_C1_0_AXI4_MSTR_RREADY ),
        .JTAG_TDO         ( MIV_RV32_C1_0_JTAG_TDO ),
        .JTAG_TDO_DR      (  ),
        .EXT_RESETN       (  ),
        .TIME_COUNT_OUT   (  ),
        .APB_MSTR_PADDR   ( MIV_RV32_C1_0_APB_MSTR_PADDR ),
        .APB_MSTR_PWDATA  ( MIV_RV32_C1_0_APB_MSTR_PWDATA ),
        .AXI_MSTR_AWADDR  ( MIV_RV32_C1_0_AXI4_MSTR_AWADDR ),
        .AXI_MSTR_AWLEN   ( MIV_RV32_C1_0_AXI4_MSTR_AWLEN ),
        .AXI_MSTR_AWSIZE  ( MIV_RV32_C1_0_AXI4_MSTR_AWSIZE ),
        .AXI_MSTR_AWBURST ( MIV_RV32_C1_0_AXI4_MSTR_AWBURST ),
        .AXI_MSTR_AWLOCK  ( MIV_RV32_C1_0_AXI4_MSTR_AWLOCK ),
        .AXI_MSTR_AWCACHE ( MIV_RV32_C1_0_AXI4_MSTR_AWCACHE ),
        .AXI_MSTR_AWPROT  ( MIV_RV32_C1_0_AXI4_MSTR_AWPROT ),
        .AXI_MSTR_WDATA   ( MIV_RV32_C1_0_AXI4_MSTR_WDATA ),
        .AXI_MSTR_WSTRB   ( MIV_RV32_C1_0_AXI4_MSTR_WSTRB ),
        .AXI_MSTR_ARADDR  ( MIV_RV32_C1_0_AXI4_MSTR_ARADDR ),
        .AXI_MSTR_ARLEN   ( MIV_RV32_C1_0_AXI4_MSTR_ARLEN ),
        .AXI_MSTR_ARSIZE  ( MIV_RV32_C1_0_AXI4_MSTR_ARSIZE ),
        .AXI_MSTR_ARBURST ( MIV_RV32_C1_0_AXI4_MSTR_ARBURST ),
        .AXI_MSTR_ARLOCK  ( MIV_RV32_C1_0_AXI4_MSTR_ARLOCK ),
        .AXI_MSTR_ARCACHE ( MIV_RV32_C1_0_AXI4_MSTR_ARCACHE ),
        .AXI_MSTR_ARPROT  ( MIV_RV32_C1_0_AXI4_MSTR_ARPROT ) 
        );

//--------reset_syn_0
reset_syn_0 reset_syn_0_0(
        // Inputs
        .CLK                ( CCC_C0_0_OUT0_FABCLK_0 ),
        .EXT_RST_N          ( CTRLR_READY_net_0 ),
        .BANK_x_VDDI_STATUS ( INIT_Monitor_0_BANK_6_VDDI_STATUS ),
        .BANK_y_VDDI_STATUS ( INIT_Monitor_0_BANK_6_VDDI_STATUS ),
        .PLL_LOCK           ( CCC_C0_0_PLL_LOCK_0 ),
        .SS_BUSY            ( GND_net ),
        .INIT_DONE          ( INIT_Monitor_0_DEVICE_INIT_DONE ),
        .FF_US_RESTORE      ( GND_net ),
        .FPGA_POR_N         ( INIT_Monitor_0_FABRIC_POR_N ),
        // Outputs
        .PLL_POWERDOWN_B    ( reset_syn_0_0_PLL_POWERDOWN_B ),
        .FABRIC_RESET_N     ( reset_syn_0_0_FABRIC_RESET_N ) 
        );

//--------reset_syn_1
reset_syn_1 reset_syn_1_0(
        // Inputs
        .CLK                ( CCC_C0_0_OUT0_FABCLK_0 ),
        .EXT_RST_N          ( resetn ),
        .BANK_x_VDDI_STATUS ( INIT_Monitor_0_BANK_6_VDDI_STATUS ),
        .BANK_y_VDDI_STATUS ( INIT_Monitor_0_BANK_6_VDDI_STATUS ),
        .PLL_LOCK           ( CCC_C0_0_PLL_LOCK_0 ),
        .SS_BUSY            ( GND_net ),
        .INIT_DONE          ( INIT_Monitor_0_BANK_1_CALIB_STATUS ),
        .FF_US_RESTORE      ( GND_net ),
        .FPGA_POR_N         ( INIT_Monitor_0_FABRIC_POR_N ),
        // Outputs
        .PLL_POWERDOWN_B    (  ),
        .FABRIC_RESET_N     ( reset_syn_1_0_FABRIC_RESET_N ) 
        );

//--------scheduler
scheduler #( 
        .depth       ( 8 ),
        .THRESHOLD   ( 4 ),
        .TIMER_WIDTH ( 64 ) )
scheduler_0(
        // Inputs
        .pclk    ( CCC_C0_0_OUT0_FABCLK_0 ),
        .presetn ( reset_syn_0_0_FABRIC_RESET_N ),
        .penable ( APB3_0_APBmslave0_PENABLE ),
        .psel    ( APB3_0_APBmslave3_PSELx ),
        .paddr   ( APB3_0_APBmslave0_PADDR ),
        .pwrite  ( APB3_0_APBmslave0_PWRITE ),
        .pwdata  ( APB3_0_APBmslave0_PWDATA_1 ),
        // Outputs
        .prdata  ( APB3_0_APBmslave3_PRDATA ),
        .pready  ( APB3_0_APBmslave3_PREADY ),
        .pslverr ( APB3_0_APBmslave3_PSLVERR ),
        .trigger ( trigger_net_0 ) 
        );

//--------SPI_Controller
SPI_Controller SPI_Controller_0(
        // Inputs
        .PCLK       ( CCC_C0_0_OUT0_FABCLK_0 ),
        .PRESETN    ( reset_syn_0_0_FABRIC_RESET_N ),
        .SPISSI     ( VCC_net ),
        .SPISDI     ( SPISDI ),
        .SPICLKI    ( GND_net ),
        .PSEL       ( APB3_0_APBmslave2_PSELx ),
        .PENABLE    ( APB3_0_APBmslave0_PENABLE ),
        .PWRITE     ( APB3_0_APBmslave0_PWRITE ),
        .PADDR      ( APB3_0_APBmslave0_PADDR_2 ),
        .PWDATA     ( APB3_0_APBmslave0_PWDATA ),
        // Outputs
        .SPIINT     (  ),
        .SPIRXAVAIL (  ),
        .SPITXRFM   (  ),
        .SPISCLKO   ( SPISCLKO_net_0 ),
        .SPIOEN     (  ),
        .SPISDO     ( SPISDO_net_0 ),
        .SPIMODE    (  ),
        .PREADY     ( APB3_0_APBmslave2_PREADY ),
        .PSLVERR    ( APB3_0_APBmslave2_PSLVERR ),
        .SPISS      ( SPISS_net_2 ),
        .PRDATA     ( APB3_0_APBmslave2_PRDATA ) 
        );

//--------UART_apb
UART_apb UART_apb_0(
        // Inputs
        .PCLK        ( CCC_C0_0_OUT0_FABCLK_0 ),
        .PRESETN     ( reset_syn_0_0_FABRIC_RESET_N ),
        .RX          ( RX ),
        .PSEL        ( APB3_0_APBmslave0_PSELx ),
        .PENABLE     ( APB3_0_APBmslave0_PENABLE ),
        .PWRITE      ( APB3_0_APBmslave0_PWRITE ),
        .PADDR       ( APB3_0_APBmslave0_PADDR_0 ),
        .PWDATA      ( APB3_0_APBmslave0_PWDATA_0 ),
        // Outputs
        .TXRDY       (  ),
        .RXRDY       (  ),
        .PARITY_ERR  (  ),
        .OVERFLOW    (  ),
        .TX          ( TX_net_0 ),
        .FRAMING_ERR (  ),
        .PREADY      ( APB3_0_APBmslave0_PREADY ),
        .PSLVERR     ( APB3_0_APBmslave0_PSLVERR ),
        .PRDATA      ( APB3_0_APBmslave0_PRDATA ) 
        );


endmodule
