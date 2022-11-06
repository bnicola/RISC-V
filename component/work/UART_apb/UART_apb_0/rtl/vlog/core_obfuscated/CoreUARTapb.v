// Actel Corporation Proprietary and Confidential
//  Copyright 2008 Actel Corporation.  All rights reserved.
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//  Revision Information:
// Jun09    Revision 4.1
// Aug10    Revision 4.2
// SVN Revision Information:
// SVN $Revision: 8508 $
// SVN $Date: 2009-06-15 16:49:49 -0700 (Mon, 15 Jun 2009) $
`timescale 1ns/1ns
module
UART_apb_UART_apb_0_CoreUARTapb
(
PCLK
,
PRESETN
,
PADDR
,
PSEL
,
PENABLE
,
PWRITE
,
PWDATA
,
PRDATA
,
PREADY
,
PSLVERR
,
TXRDY
,
RXRDY
,
PARITY_ERR
,
FRAMING_ERR
,
OVERFLOW
,
RX
,
TX
)
;
parameter
FAMILY
=
15
;
parameter
TX_FIFO
=
0
;
parameter
RX_FIFO
=
0
;
parameter
BAUD_VALUE
=
0
;
parameter
FIXEDMODE
=
0
;
parameter
PRG_BIT8
=
0
;
parameter
PRG_PARITY
=
0
;
parameter
RX_LEGACY_MODE
=
0
;
parameter
BAUD_VAL_FRCTN
=
0
;
parameter
BAUD_VAL_FRCTN_EN
=
0
;
parameter
SYNC_RESET
=
(
FAMILY
==
25
)
?
1
:
0
;
input
PCLK
;
input
PRESETN
;
input
[
4
:
0
]
PADDR
;
input
PSEL
;
input
PENABLE
;
input
PWRITE
;
input
[
7
:
0
]
PWDATA
;
output
[
7
:
0
]
PRDATA
;
output
PREADY
;
output
PSLVERR
;
output
TXRDY
;
output
RXRDY
;
input
RX
;
output
TX
;
output
FRAMING_ERR
;
output
PARITY_ERR
;
output
OVERFLOW
;
`define CUARTlIOI  \
3 \
'b \
000
`define CUARTOlOI  \
3 \
'b \
001
`define CUARTIlOI  \
3 \
'b \
010
`define CUARTllOI  \
3 \
'b \
011
`define CUARTO0OI  \
3 \
'b \
100
`define CUARTI0OI  \
3 \
'b \
101
wire
PCLK
;
wire
PRESETN
;
wire
[
4
:
0
]
PADDR
;
wire
PSEL
;
wire
PENABLE
;
wire
PWRITE
;
wire
[
7
:
0
]
PWDATA
;
wire
[
7
:
0
]
PRDATA
;
wire
TXRDY
;
wire
RXRDY
;
wire
RX
;
wire
TX
;
wire
PREADY
;
wire
PSLVERR
;
reg
[
7
:
0
]
CUARTl0OI
;
reg
[
7
:
0
]
CUARTO1OI
;
reg
[
2
:
0
]
CUARTI1OI
;
reg
[
7
:
0
]
CUARTl1OI
;
reg
[
7
:
0
]
CUARTOOII
;
wire
CUARTIOII
;
wire
[
7
:
0
]
CUARTlOII
;
wire
[
7
:
0
]
CUARTOIII
;
wire
[
12
:
0
]
CUARTOl
;
wire
CUARTII1
;
wire
CUARTlI1
;
wire
CUARTOl1
;
wire
CUARTIIII
;
wire
CUARTlIII
;
wire
CUARTOlII
;
wire
OVERFLOW
;
wire
PARITY_ERR
;
wire
[
1
:
0
]
CUARTIlII
;
wire
CUARTllII
;
wire
CUARTO0II
;
wire
FRAMING_ERR
;
wire
[
2
:
0
]
CUARTI0II
;
wire
[
2
:
0
]
CUARTl0II
;
wire
CUARTI1
;
wire
CUARTl1
;
assign
CUARTI1
=
(
SYNC_RESET
==
1
)
?
1
'b
1
:
PRESETN
;
assign
CUARTl1
=
(
SYNC_RESET
==
1
)
?
PRESETN
:
1
'b
1
;
assign
PREADY
=
1
'b
1
;
assign
PSLVERR
=
1
'b
0
;
assign
CUARTIIII
=
!
(
PENABLE
&&
PWRITE
&&
(
PADDR
[
4
:
2
]
==
`CUARTlIOI
)
)
;
assign
CUARTlIII
=
!
(
PENABLE
&&
!
PWRITE
&&
(
PADDR
[
4
:
2
]
==
`CUARTOlOI
)
)
;
assign
CUARTOlII
=
!
PSEL
;
assign
CUARTlOII
=
PWDATA
;
assign
CUARTIOII
=
(
PSEL
&
!
PWRITE
&
(
!
PENABLE
||
PARITY_ERR
)
)
;
always
@
(
PADDR
or
CUARTIOII
or
CUARTOOII
or
CUARTOIII
or
CUARTl0OI
or
CUARTO1OI
or
OVERFLOW
or
PARITY_ERR
or
RXRDY
or
TXRDY
or
FRAMING_ERR
or
CUARTI1OI
)
begin
:
CUARTO1II
if
(
CUARTIOII
)
case
(
PADDR
[
4
:
2
]
)
`CUARTlIOI
:
CUARTl1OI
=
8
'b
0
;
`CUARTOlOI
:
CUARTl1OI
=
CUARTOIII
;
`CUARTIlOI
:
CUARTl1OI
=
CUARTl0OI
;
`CUARTllOI
:
CUARTl1OI
=
CUARTO1OI
;
`CUARTO0OI
:
CUARTl1OI
=
{
3
'b
0
,
FRAMING_ERR
,
OVERFLOW
,
PARITY_ERR
,
RXRDY
,
TXRDY
}
;
`CUARTI0OI
:
CUARTl1OI
=
{
5
'b
0
,
CUARTI1OI
}
;
default
:
CUARTl1OI
=
CUARTOOII
;
endcase
else
CUARTl1OI
=
CUARTOOII
;
end
assign
CUARTIlII
=
PRG_PARITY
;
assign
CUARTllII
=
(
CUARTIlII
==
2
'd
1
||
CUARTIlII
==
2
'd
2
)
?
1
'b
1
:
1
'b
0
;
assign
CUARTO0II
=
(
CUARTIlII
==
2
'd
1
)
?
1
'b
1
:
1
'b
0
;
always
@
(
posedge
PCLK
or
negedge
CUARTI1
)
begin
:
CUARTI1II
if
(
(
!
CUARTI1
)
||
(
!
CUARTl1
)
)
CUARTOOII
<=
8
'b
0
;
else
CUARTOOII
<=
CUARTl1OI
;
end
assign
PRDATA
=
(
(
RX_FIFO
==
1
)
&&
(
PARITY_ERR
==
1
'b
1
)
)
?
CUARTOIII
:
CUARTOOII
;
always
@
(
posedge
PCLK
or
negedge
CUARTI1
)
begin
:
CUARTl1II
if
(
(
!
CUARTI1
)
||
(
!
CUARTl1
)
)
CUARTl0OI
<=
8
'b
0
;
else
if
(
PSEL
&&
PENABLE
&&
PWRITE
&&
(
PADDR
[
4
:
2
]
==
`CUARTIlOI
)
)
CUARTl0OI
<=
PWDATA
;
else
CUARTl0OI
<=
CUARTl0OI
;
end
assign
CUARTOl
=
FIXEDMODE
?
BAUD_VALUE
:
{
CUARTO1OI
[
7
:
3
]
,
CUARTl0OI
}
;
always
@
(
posedge
PCLK
or
negedge
CUARTI1
)
begin
:
CUARTOOlI
if
(
(
!
CUARTI1
)
||
(
!
CUARTl1
)
)
CUARTO1OI
<=
8
'b
0
;
else
if
(
PSEL
&&
PENABLE
&&
PWRITE
&&
(
PADDR
[
4
:
2
]
==
`CUARTllOI
)
)
CUARTO1OI
<=
PWDATA
[
7
:
0
]
;
else
CUARTO1OI
<=
CUARTO1OI
;
end
generate
if
(
BAUD_VAL_FRCTN_EN
==
1
)
begin
always
@
(
posedge
PCLK
or
negedge
CUARTI1
)
begin
:
CUARTIOlI
if
(
(
!
CUARTI1
)
||
(
!
CUARTl1
)
)
CUARTI1OI
<=
3
'b
0
;
else
if
(
PSEL
&&
PENABLE
&&
PWRITE
&&
(
PADDR
[
4
:
2
]
==
`CUARTI0OI
)
)
CUARTI1OI
<=
PWDATA
[
2
:
0
]
;
else
CUARTI1OI
<=
CUARTI1OI
;
end
end
endgenerate
assign
CUARTI0II
=
(
BAUD_VAL_FRCTN
==
0
)
?
3
'b
000
:
(
BAUD_VAL_FRCTN
==
1
)
?
3
'b
001
:
(
BAUD_VAL_FRCTN
==
2
)
?
3
'b
010
:
(
BAUD_VAL_FRCTN
==
3
)
?
3
'b
011
:
(
BAUD_VAL_FRCTN
==
4
)
?
3
'b
100
:
(
BAUD_VAL_FRCTN
==
5
)
?
3
'b
101
:
(
BAUD_VAL_FRCTN
==
6
)
?
3
'b
110
:
(
BAUD_VAL_FRCTN
==
7
)
?
3
'b
111
:
3
'b
000
;
assign
CUARTII1
=
FIXEDMODE
?
PRG_BIT8
:
CUARTO1OI
[
0
]
;
assign
CUARTlI1
=
FIXEDMODE
?
CUARTllII
:
CUARTO1OI
[
1
]
;
assign
CUARTOl1
=
FIXEDMODE
?
CUARTO0II
:
CUARTO1OI
[
2
]
;
assign
CUARTl0II
=
FIXEDMODE
?
CUARTI0II
:
BAUD_VAL_FRCTN_EN
?
CUARTI1OI
:
3
'b
000
;
UART_apb_UART_apb_0_COREUART
#
(
.TX_FIFO
(
TX_FIFO
)
,
.RX_FIFO
(
RX_FIFO
)
,
.RX_LEGACY_MODE
(
RX_LEGACY_MODE
)
,
.BAUD_VAL_FRCTN_EN
(
BAUD_VAL_FRCTN_EN
)
,
.FAMILY
(
FAMILY
)
)
CUARTlOlI
(
.RESET_N
(
PRESETN
)
,
.CLK
(
PCLK
)
,
.WEN
(
CUARTIIII
)
,
.OEN
(
CUARTlIII
)
,
.CSN
(
CUARTOlII
)
,
.DATA_IN
(
CUARTlOII
)
,
.RX
(
RX
)
,
.BAUD_VAL
(
CUARTOl
)
,
.BIT8
(
CUARTII1
)
,
.PARITY_EN
(
CUARTlI1
)
,
.ODD_N_EVEN
(
CUARTOl1
)
,
.FRAMING_ERR
(
FRAMING_ERR
)
,
.PARITY_ERR
(
PARITY_ERR
)
,
.OVERFLOW
(
OVERFLOW
)
,
.TXRDY
(
TXRDY
)
,
.RXRDY
(
RXRDY
)
,
.DATA_OUT
(
CUARTOIII
)
,
.TX
(
TX
)
,
.BAUD_VAL_FRACTION
(
CUARTl0II
)
)
;
endmodule
