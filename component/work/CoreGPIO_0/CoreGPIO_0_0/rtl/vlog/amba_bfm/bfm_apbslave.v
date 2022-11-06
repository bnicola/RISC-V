// Actel Corporation Proprietary and Confidential
// Copyright 2008 Actel Corporation.  All rights reserved.
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN 
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED 
// IN ADVANCE IN WRITING.  
// Revision Information:
// SVN Revision Information:
// SVN $Revision: 6419 $
// SVN $Date: 2009-02-04 04:34:22 -0800 (Wed, 04 Feb 2009) $
`timescale 1ns/100ps
module
CoreGPIO_0_CoreGPIO_0_0_BFM_APBSLAVE
(
PCLK
,
PRESETN
,
PENABLE
,
PWRITE
,
PSEL
,
PADDR
,
PWDATA
,
PRDATA
,
PREADY
,
PSLVERR
)
;
parameter
AWIDTH
=
10
;
parameter
DEPTH
=
256
;
parameter
DWIDTH
=
32
;
parameter
INITFILE
=
" "
;
parameter
ID
=
0
;
parameter
TPD
=
1
;
parameter
ENFUNC
=
0
;
parameter
DEBUG
=
0
;
localparam
EXT_SIZE
=
2
;
// Actel Corporation Proprietary and Confidential
// Copyright 2008 Actel Corporation.  All rights reserved.
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN 
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED 
// IN ADVANCE IN WRITING.  
// Revision Information:
// SVN Revision Information:
// SVN $Revision: 6419 $
// SVN $Date: 2009-02-04 04:34:22 -0800 (Wed, 04 Feb 2009) $
localparam
BFMA1I11
=
22
;
localparam
BFMA1l11
=
0
;
localparam
BFMA1OOOI
=
4
;
localparam
BFMA1IOOI
=
8
;
localparam
BFMA1lOOI
=
12
;
localparam
BFMA1OIOI
=
16
;
localparam
BFMA1IIOI
=
20
;
localparam
BFMA1lIOI
=
24
;
localparam
BFMA1OlOI
=
28
;
localparam
BFMA1IlOI
=
32
;
localparam
BFMA1llOI
=
36
;
localparam
BFMA1O0OI
=
40
;
localparam
BFMA1I0OI
=
44
;
localparam
BFMA1l0OI
=
48
;
localparam
BFMA1O1OI
=
52
;
localparam
BFMA1I1OI
=
56
;
localparam
BFMA1l1OI
=
60
;
localparam
BFMA1OOII
=
64
;
localparam
BFMA1IOII
=
68
;
localparam
BFMA1lOII
=
72
;
localparam
BFMA1OIII
=
76
;
localparam
BFMA1IIII
=
80
;
localparam
BFMA1lIII
=
100
;
localparam
BFMA1OlII
=
101
;
localparam
BFMA1IlII
=
102
;
localparam
BFMA1llII
=
103
;
localparam
BFMA1O0II
=
104
;
localparam
BFMA1I0II
=
105
;
localparam
BFMA1l0II
=
106
;
localparam
BFMA1O1II
=
107
;
localparam
BFMA1I1II
=
108
;
localparam
BFMA1l1II
=
109
;
localparam
BFMA1OOlI
=
110
;
localparam
BFMA1IOlI
=
111
;
localparam
BFMA1lOlI
=
112
;
localparam
BFMA1OIlI
=
113
;
localparam
BFMA1IIlI
=
114
;
localparam
BFMA1lIlI
=
115
;
localparam
BFMA1OllI
=
128
;
localparam
BFMA1IllI
=
129
;
localparam
BFMA1lllI
=
130
;
localparam
BFMA1O0lI
=
131
;
localparam
BFMA1I0lI
=
132
;
localparam
BFMA1l0lI
=
133
;
localparam
BFMA1O1lI
=
134
;
localparam
BFMA1I1lI
=
135
;
localparam
BFMA1l1lI
=
136
;
localparam
BFMA1OO0I
=
137
;
localparam
BFMA1IO0I
=
138
;
localparam
BFMA1lO0I
=
139
;
localparam
BFMA1OI0I
=
140
;
localparam
BFMA1II0I
=
141
;
localparam
BFMA1lI0I
=
142
;
localparam
BFMA1Ol0I
=
150
;
localparam
BFMA1Il0I
=
151
;
localparam
BFMA1ll0I
=
152
;
localparam
BFMA1O00I
=
153
;
localparam
BFMA1I00I
=
154
;
localparam
BFMA1l00I
=
160
;
localparam
BFMA1O10I
=
161
;
localparam
BFMA1I10I
=
162
;
localparam
BFMA1l10I
=
163
;
localparam
BFMA1OO1I
=
164
;
localparam
BFMA1IO1I
=
165
;
localparam
BFMA1lO1I
=
166
;
localparam
BFMA1OI1I
=
167
;
localparam
BFMA1II1I
=
168
;
localparam
BFMA1lI1I
=
169
;
localparam
BFMA1Ol1I
=
170
;
localparam
BFMA1Il1I
=
171
;
localparam
BFMA1ll1I
=
172
;
localparam
BFMA1O01I
=
200
;
localparam
BFMA1I01I
=
201
;
localparam
BFMA1l01I
=
202
;
localparam
BFMA1O11I
=
203
;
localparam
BFMA1I11I
=
204
;
localparam
BFMA1l11I
=
205
;
localparam
BFMA1OOOl
=
206
;
localparam
BFMA1IOOl
=
207
;
localparam
BFMA1lOOl
=
208
;
localparam
BFMA1OIOl
=
209
;
localparam
BFMA1IIOl
=
210
;
localparam
BFMA1lIOl
=
211
;
localparam
BFMA1OlOl
=
212
;
localparam
BFMA1IlOl
=
213
;
localparam
BFMA1llOl
=
214
;
localparam
BFMA1O0Ol
=
215
;
localparam
BFMA1I0Ol
=
216
;
localparam
BFMA1l0Ol
=
217
;
localparam
BFMA1O1Ol
=
218
;
localparam
BFMA1I1Ol
=
219
;
localparam
BFMA1l1Ol
=
220
;
localparam
BFMA1OOIl
=
221
;
localparam
BFMA1IOIl
=
222
;
localparam
BFMA1lOIl
=
250
;
localparam
BFMA1OIIl
=
251
;
localparam
BFMA1IIIl
=
252
;
localparam
BFMA1lIIl
=
253
;
localparam
BFMA1OlIl
=
254
;
localparam
BFMA1IlIl
=
255
;
localparam
BFMA1llIl
=
1001
;
localparam
BFMA1O0Il
=
1002
;
localparam
BFMA1I0Il
=
1003
;
localparam
BFMA1l0Il
=
1004
;
localparam
BFMA1O1Il
=
1005
;
localparam
BFMA1I1Il
=
1006
;
localparam
BFMA1l1Il
=
1007
;
localparam
BFMA1OOll
=
1008
;
localparam
BFMA1IOll
=
1009
;
localparam
BFMA1lOll
=
1010
;
localparam
BFMA1OIll
=
1011
;
localparam
BFMA1IIll
=
1012
;
localparam
BFMA1lIll
=
1013
;
localparam
BFMA1Olll
=
1014
;
localparam
BFMA1Illl
=
1015
;
localparam
BFMA1llll
=
1016
;
localparam
BFMA1O0ll
=
1017
;
localparam
BFMA1I0ll
=
1018
;
localparam
BFMA1l0ll
=
1019
;
localparam
BFMA1O1ll
=
1020
;
localparam
BFMA1I1ll
=
1021
;
localparam
BFMA1l1ll
=
1022
;
localparam
BFMA1OO0l
=
1023
;
localparam
BFMA1IO0l
=
0
;
localparam
BFMA1lO0l
=
1
;
localparam
BFMA1OI0l
=
2
;
localparam
BFMA1II0l
=
3
;
localparam
BFMA1lI0l
=
4
;
localparam
BFMA1Ol0l
=
5
;
localparam
BFMA1Il0l
=
6
;
localparam
BFMA1ll0l
=
7
;
localparam
BFMA1O00l
=
8
;
localparam
BFMA1I00l
=
0
;
localparam
BFMA1l00l
=
1
;
localparam
BFMA1O10l
=
2
;
localparam
BFMA1I10l
=
3
;
localparam
BFMA1l10l
=
4
;
localparam
BFMA1OO1l
=
32
'h
00000000
;
localparam
BFMA1IO1l
=
32
'h
00002000
;
localparam
BFMA1lO1l
=
32
'h
00004000
;
localparam
BFMA1OI1l
=
32
'h
00006000
;
localparam
BFMA1II1l
=
32
'h
00008000
;
localparam
[
1
:
0
]
BFMA1lI1l
=
0
;
localparam
[
1
:
0
]
BFMA1Ol1l
=
1
;
localparam
[
1
:
0
]
BFMA1Il1l
=
2
;
localparam
[
1
:
0
]
BFMA1ll1l
=
3
;
function
integer
BFMA1O01l
;
input
[
31
:
0
]
BFMA1I01l
;
integer
BFMA1ll1l
;
begin
BFMA1ll1l
=
BFMA1I01l
;
BFMA1O01l
=
BFMA1ll1l
;
end
endfunction
function
integer
to_int_unsigned
;
input
[
31
:
0
]
BFMA1I01l
;
integer
BFMA1I01l
;
integer
BFMA1ll1l
;
begin
BFMA1ll1l
=
BFMA1I01l
;
to_int_unsigned
=
BFMA1ll1l
;
end
endfunction
function
integer
to_int_signed
;
input
[
31
:
0
]
BFMA1I01l
;
integer
BFMA1ll1l
;
begin
BFMA1ll1l
=
BFMA1I01l
;
to_int_signed
=
BFMA1ll1l
;
end
endfunction
function
[
31
:
0
]
to_slv32
;
input
BFMA1ll1l
;
integer
BFMA1ll1l
;
reg
[
31
:
0
]
BFMA1I01l
;
begin
BFMA1I01l
=
BFMA1ll1l
;
to_slv32
=
BFMA1I01l
;
end
endfunction
function
[
31
:
0
]
BFMA1l01l
;
input
[
2
:
0
]
BFMA1O11l
;
input
[
1
:
0
]
BFMA1I11l
;
input
[
31
:
0
]
BFMA1l11l
;
input
BFMA1OOO0
;
integer
BFMA1OOO0
;
reg
[
31
:
0
]
BFMA1IOO0
;
reg
BFMA1lOO0
;
begin
BFMA1IOO0
=
{
32
{
1
'b
0
}
}
;
case
(
BFMA1OOO0
)
0
:
begin
case
(
BFMA1O11l
)
3
'b
000
:
begin
case
(
BFMA1I11l
)
2
'b
00
:
begin
BFMA1IOO0
[
7
:
0
]
=
BFMA1l11l
[
7
:
0
]
;
end
2
'b
01
:
begin
BFMA1IOO0
[
15
:
8
]
=
BFMA1l11l
[
7
:
0
]
;
end
2
'b
10
:
begin
BFMA1IOO0
[
23
:
16
]
=
BFMA1l11l
[
7
:
0
]
;
end
2
'b
11
:
begin
BFMA1IOO0
[
31
:
24
]
=
BFMA1l11l
[
7
:
0
]
;
end
default
:
begin
end
endcase
end
3
'b
001
:
begin
case
(
BFMA1I11l
)
2
'b
00
:
begin
BFMA1IOO0
[
15
:
0
]
=
BFMA1l11l
[
15
:
0
]
;
end
2
'b
01
:
begin
BFMA1IOO0
[
15
:
0
]
=
BFMA1l11l
[
15
:
0
]
;
$display
(
"BFM: Missaligned AHB Cycle(Half A10=01) ? (WARNING)"
)
;
end
2
'b
10
:
begin
BFMA1IOO0
[
31
:
16
]
=
BFMA1l11l
[
15
:
0
]
;
end
2
'b
11
:
begin
BFMA1IOO0
[
31
:
16
]
=
BFMA1l11l
[
15
:
0
]
;
$display
(
"BFM: Missaligned AHB Cycle(Half A10=11) ? (WARNING)"
)
;
end
default
:
begin
end
endcase
end
3
'b
010
:
begin
BFMA1IOO0
=
BFMA1l11l
;
case
(
BFMA1I11l
)
2
'b
00
:
begin
end
2
'b
01
:
begin
$display
(
"BFM: Missaligned AHB Cycle(Word A10=01) ? (WARNING)"
)
;
end
2
'b
10
:
begin
$display
(
"BFM: Missaligned AHB Cycle(Word A10=10) ? (WARNING)"
)
;
end
2
'b
11
:
begin
$display
(
"BFM: Missaligned AHB Cycle(Word A10=11) ? (WARNING)"
)
;
end
default
:
begin
end
endcase
end
default
:
begin
$display
(
"Unexpected AHB Size setting (ERROR)"
)
;
end
endcase
end
1
:
begin
case
(
BFMA1O11l
)
3
'b
000
:
begin
case
(
BFMA1I11l
)
2
'b
00
:
begin
BFMA1IOO0
[
7
:
0
]
=
BFMA1l11l
[
7
:
0
]
;
end
2
'b
01
:
begin
BFMA1IOO0
[
15
:
8
]
=
BFMA1l11l
[
7
:
0
]
;
end
2
'b
10
:
begin
BFMA1IOO0
[
7
:
0
]
=
BFMA1l11l
[
7
:
0
]
;
end
2
'b
11
:
begin
BFMA1IOO0
[
15
:
8
]
=
BFMA1l11l
[
7
:
0
]
;
end
default
:
begin
end
endcase
end
3
'b
001
:
begin
BFMA1IOO0
[
15
:
0
]
=
BFMA1l11l
[
15
:
0
]
;
case
(
BFMA1I11l
)
2
'b
00
:
begin
end
2
'b
01
:
begin
$display
(
"BFM: Missaligned AHB Cycle(Half A10=01) ? (WARNING)"
)
;
end
2
'b
10
:
begin
$display
(
"BFM: Missaligned AHB Cycle(Half A10=10) ? (WARNING)"
)
;
end
2
'b
11
:
begin
$display
(
"BFM: Missaligned AHB Cycle(Half A10=11) ? (WARNING)"
)
;
end
default
:
begin
end
endcase
end
default
:
begin
$display
(
"Unexpected AHB Size setting (ERROR)"
)
;
end
endcase
end
2
:
begin
case
(
BFMA1O11l
)
3
'b
000
:
begin
BFMA1IOO0
[
7
:
0
]
=
BFMA1l11l
[
7
:
0
]
;
end
default
:
begin
$display
(
"Unexpected AHB Size setting (ERROR)"
)
;
end
endcase
end
8
:
begin
BFMA1IOO0
=
BFMA1l11l
;
end
default
:
begin
$display
(
"Illegal Alignment mode (ERROR)"
)
;
end
endcase
BFMA1l01l
=
BFMA1IOO0
;
end
endfunction
function
[
31
:
0
]
BFMA1OIO0
;
input
[
2
:
0
]
BFMA1O11l
;
input
[
1
:
0
]
BFMA1I11l
;
input
[
31
:
0
]
BFMA1l11l
;
input
BFMA1OOO0
;
integer
BFMA1OOO0
;
reg
[
31
:
0
]
BFMA1IOO0
;
begin
BFMA1IOO0
=
BFMA1l01l
(
BFMA1O11l
,
BFMA1I11l
,
BFMA1l11l
,
BFMA1OOO0
)
;
BFMA1OIO0
=
BFMA1IOO0
;
end
endfunction
function
[
31
:
0
]
BFMA1IIO0
;
input
[
2
:
0
]
BFMA1O11l
;
input
[
1
:
0
]
BFMA1I11l
;
input
[
31
:
0
]
BFMA1l11l
;
input
BFMA1OOO0
;
integer
BFMA1OOO0
;
reg
[
31
:
0
]
BFMA1IOO0
;
reg
BFMA1lOO0
;
begin
if
(
BFMA1OOO0
==
8
)
begin
BFMA1IOO0
=
BFMA1l11l
;
end
else
begin
BFMA1IOO0
=
0
;
BFMA1lOO0
=
BFMA1I11l
[
1
]
;
case
(
BFMA1O11l
)
3
'b
000
:
begin
case
(
BFMA1I11l
)
2
'b
00
:
BFMA1IOO0
[
7
:
0
]
=
BFMA1l11l
[
7
:
0
]
;
2
'b
01
:
BFMA1IOO0
[
7
:
0
]
=
BFMA1l11l
[
15
:
8
]
;
2
'b
10
:
BFMA1IOO0
[
7
:
0
]
=
BFMA1l11l
[
23
:
16
]
;
2
'b
11
:
BFMA1IOO0
[
7
:
0
]
=
BFMA1l11l
[
31
:
24
]
;
default
:
begin
end
endcase
end
3
'b
001
:
begin
case
(
BFMA1lOO0
)
1
'b
0
:
BFMA1IOO0
[
15
:
0
]
=
BFMA1l11l
[
15
:
0
]
;
1
'b
1
:
BFMA1IOO0
[
15
:
0
]
=
BFMA1l11l
[
31
:
16
]
;
default
:
begin
end
endcase
end
3
'b
010
:
begin
BFMA1IOO0
=
BFMA1l11l
;
end
default
:
$display
(
"Unexpected AHB Size setting (ERROR)"
)
;
endcase
end
BFMA1IIO0
=
BFMA1IOO0
;
end
endfunction
function
integer
BFMA1lIO0
;
input
BFMA1ll1l
;
integer
BFMA1ll1l
;
integer
BFMA1OlO0
;
begin
BFMA1OlO0
=
BFMA1ll1l
;
BFMA1lIO0
=
BFMA1OlO0
;
end
endfunction
function
integer
BFMA1IlO0
;
input
BFMA1O11l
;
integer
BFMA1O11l
;
integer
BFMA1OlO0
;
begin
case
(
BFMA1O11l
)
0
:
begin
BFMA1OlO0
=
'h
62
;
end
1
:
begin
BFMA1OlO0
=
'h
68
;
end
2
:
begin
BFMA1OlO0
=
'h
77
;
end
3
:
begin
BFMA1OlO0
=
'h
78
;
end
default
:
begin
BFMA1OlO0
=
'h
3f
;
end
endcase
BFMA1IlO0
=
BFMA1OlO0
;
end
endfunction
function
integer
BFMA1llO0
;
input
BFMA1O11l
;
integer
BFMA1O11l
;
input
BFMA1O0O0
;
integer
BFMA1O0O0
;
integer
BFMA1OlO0
;
begin
case
(
BFMA1O11l
)
0
:
begin
BFMA1OlO0
=
1
;
end
1
:
begin
BFMA1OlO0
=
2
;
end
2
:
begin
BFMA1OlO0
=
4
;
end
3
:
begin
BFMA1OlO0
=
BFMA1O0O0
;
end
default
:
begin
BFMA1OlO0
=
0
;
end
endcase
BFMA1llO0
=
BFMA1OlO0
;
end
endfunction
function
integer
BFMA1I0O0
;
input
BFMA1O11l
;
integer
BFMA1O11l
;
input
BFMA1l0O0
;
integer
BFMA1l0O0
;
reg
[
2
:
0
]
BFMA1OlO0
;
begin
case
(
BFMA1O11l
)
0
:
begin
BFMA1OlO0
=
3
'b
000
;
end
1
:
begin
BFMA1OlO0
=
3
'b
001
;
end
2
:
begin
BFMA1OlO0
=
3
'b
010
;
end
3
:
begin
BFMA1OlO0
=
BFMA1l0O0
;
end
default
:
begin
BFMA1OlO0
=
3
'b
XXX
;
end
endcase
BFMA1I0O0
=
BFMA1OlO0
;
end
endfunction
function
integer
BFMA1O1O0
;
input
BFMA1I1O0
;
integer
BFMA1I1O0
;
input
BFMA1ll1l
;
integer
BFMA1ll1l
;
input
BFMA1l1O0
;
integer
BFMA1l1O0
;
input
BFMA1OOI0
;
integer
BFMA1OOI0
;
integer
BFMA1IOI0
;
reg
[
31
:
0
]
BFMA1lOI0
;
reg
[
31
:
0
]
BFMA1OII0
;
reg
[
31
:
0
]
BFMA1III0
;
integer
BFMA1lII0
;
reg
[
63
:
0
]
BFMA1OlI0
;
localparam
[
31
:
0
]
BFMA1IlI0
=
0
;
localparam
[
31
:
0
]
BFMA1llI0
=
1
;
begin
BFMA1lOI0
=
BFMA1ll1l
;
BFMA1OII0
=
BFMA1l1O0
;
BFMA1lII0
=
BFMA1l1O0
;
BFMA1III0
=
{
32
{
1
'b
0
}
}
;
case
(
BFMA1I1O0
)
BFMA1llIl
:
begin
BFMA1III0
=
0
;
end
BFMA1O0Il
:
begin
BFMA1III0
=
BFMA1lOI0
+
BFMA1OII0
;
end
BFMA1I0Il
:
begin
BFMA1III0
=
BFMA1lOI0
-
BFMA1OII0
;
end
BFMA1l0Il
:
begin
BFMA1OlI0
=
BFMA1lOI0
*
BFMA1OII0
;
BFMA1III0
=
BFMA1OlI0
[
31
:
0
]
;
end
BFMA1O1Il
:
begin
BFMA1III0
=
BFMA1lOI0
/
BFMA1OII0
;
end
BFMA1OOll
:
begin
BFMA1III0
=
BFMA1lOI0
&
BFMA1OII0
;
end
BFMA1IOll
:
begin
BFMA1III0
=
BFMA1lOI0
|
BFMA1OII0
;
end
BFMA1lOll
:
begin
BFMA1III0
=
BFMA1lOI0
^
BFMA1OII0
;
end
BFMA1OIll
:
begin
BFMA1III0
=
BFMA1lOI0
^
BFMA1OII0
;
end
BFMA1lIll
:
begin
if
(
BFMA1lII0
==
0
)
begin
BFMA1III0
=
BFMA1lOI0
;
end
else
begin
BFMA1III0
=
BFMA1lOI0
>>
BFMA1lII0
;
end
end
BFMA1IIll
:
begin
if
(
BFMA1lII0
==
0
)
begin
BFMA1III0
=
BFMA1lOI0
;
end
else
begin
BFMA1III0
=
BFMA1lOI0
<<
BFMA1lII0
;
end
end
BFMA1l1Il
:
begin
BFMA1OlI0
=
{
BFMA1IlI0
,
BFMA1llI0
}
;
if
(
BFMA1lII0
>
0
)
begin
begin
:
BFMA1O0I0
integer
BFMA1I0I0
;
for
(
BFMA1I0I0
=
1
;
BFMA1I0I0
<=
BFMA1lII0
;
BFMA1I0I0
=
BFMA1I0I0
+
1
)
begin
BFMA1OlI0
=
BFMA1OlI0
[
31
:
0
]
*
BFMA1lOI0
;
end
end
end
BFMA1III0
=
BFMA1OlI0
[
31
:
0
]
;
end
BFMA1Olll
:
begin
if
(
BFMA1lOI0
==
BFMA1OII0
)
begin
BFMA1III0
=
BFMA1llI0
;
end
end
BFMA1Illl
:
begin
if
(
BFMA1lOI0
!=
BFMA1OII0
)
begin
BFMA1III0
=
BFMA1llI0
;
end
end
BFMA1llll
:
begin
if
(
BFMA1lOI0
>
BFMA1OII0
)
begin
BFMA1III0
=
BFMA1llI0
;
end
end
BFMA1O0ll
:
begin
if
(
BFMA1lOI0
<
BFMA1OII0
)
begin
BFMA1III0
=
BFMA1llI0
;
end
end
BFMA1I0ll
:
begin
if
(
BFMA1lOI0
>=
BFMA1OII0
)
begin
BFMA1III0
=
BFMA1llI0
;
end
end
BFMA1l0ll
:
begin
if
(
BFMA1lOI0
<=
BFMA1OII0
)
begin
BFMA1III0
=
BFMA1llI0
;
end
end
BFMA1I1Il
:
begin
BFMA1III0
=
BFMA1lOI0
%
BFMA1OII0
;
end
BFMA1O1ll
:
begin
if
(
BFMA1l1O0
<=
31
)
begin
BFMA1III0
=
BFMA1lOI0
;
BFMA1III0
[
BFMA1l1O0
]
=
1
'b
1
;
end
else
begin
$display
(
"Bit operation on bit >31 (FAILURE)"
)
;
$stop
;
end
end
BFMA1I1ll
:
begin
if
(
BFMA1l1O0
<=
31
)
begin
BFMA1III0
=
BFMA1lOI0
;
BFMA1III0
[
BFMA1l1O0
]
=
1
'b
0
;
end
else
begin
$display
(
"Bit operation on bit >31 (FAILURE)"
)
;
$stop
;
end
end
BFMA1l1ll
:
begin
if
(
BFMA1l1O0
<=
31
)
begin
BFMA1III0
=
BFMA1lOI0
;
BFMA1III0
[
BFMA1l1O0
]
=
~
BFMA1III0
[
BFMA1l1O0
]
;
end
else
begin
$display
(
"Bit operation on bit >31 (FAILURE)"
)
;
$stop
;
end
end
BFMA1OO0l
:
begin
if
(
BFMA1l1O0
<=
31
)
begin
BFMA1III0
=
0
;
BFMA1III0
[
0
]
=
BFMA1lOI0
[
BFMA1l1O0
]
;
end
else
begin
$display
(
"Bit operation on bit >31 (FAILURE)"
)
;
$stop
;
end
end
default
:
begin
$display
(
"Illegal Maths Operator (FAILURE)"
)
;
$stop
;
end
endcase
BFMA1IOI0
=
BFMA1III0
;
if
(
BFMA1OOI0
>=
4
)
begin
$display
(
"Calculated %d = %d (%d) %d"
,
BFMA1IOI0
,
BFMA1ll1l
,
BFMA1I1O0
,
BFMA1l1O0
)
;
end
BFMA1O1O0
=
BFMA1IOI0
;
end
endfunction
function
[
31
:
0
]
BFMA1l0I0
;
input
[
31
:
0
]
BFMA1ll1l
;
reg
[
31
:
0
]
BFMA1O1I0
;
begin
BFMA1O1I0
=
BFMA1ll1l
;
BFMA1O1I0
=
0
;
begin
:
BFMA1I1I0
integer
BFMA1I0I0
;
for
(
BFMA1I0I0
=
0
;
BFMA1I0I0
<=
31
;
BFMA1I0I0
=
BFMA1I0I0
+
1
)
begin
if
(
(
BFMA1ll1l
[
BFMA1I0I0
]
)
==
1
'b
1
)
begin
BFMA1O1I0
[
BFMA1I0I0
]
=
1
'b
1
;
end
end
end
BFMA1l0I0
=
BFMA1O1I0
;
end
endfunction
function
integer
BFMA1l1I0
;
input
BFMA1OOl0
;
integer
BFMA1OOl0
;
input
BFMA1ll1l
;
integer
BFMA1ll1l
;
integer
BFMA1IOl0
;
integer
BFMA1lOl0
;
begin
BFMA1lOl0
=
BFMA1OOl0
/
BFMA1ll1l
;
BFMA1IOl0
=
BFMA1OOl0
-
BFMA1lOl0
*
BFMA1ll1l
;
BFMA1l1I0
=
BFMA1IOl0
;
end
endfunction
function
integer
BFMA1OIl0
;
input
BFMA1OOl0
;
integer
BFMA1OOl0
;
input
BFMA1ll1l
;
integer
BFMA1ll1l
;
integer
BFMA1IOl0
;
integer
BFMA1lOl0
;
begin
BFMA1lOl0
=
BFMA1OOl0
/
BFMA1ll1l
;
BFMA1IOl0
=
BFMA1OOl0
-
BFMA1lOl0
*
BFMA1ll1l
;
BFMA1OIl0
=
BFMA1lOl0
;
end
endfunction
function
integer
to_boolean
;
input
BFMA1ll1l
;
integer
BFMA1ll1l
;
integer
BFMA1IIl0
;
begin
BFMA1IIl0
=
0
;
if
(
BFMA1ll1l
!=
0
)
BFMA1IIl0
=
1
;
to_boolean
=
BFMA1IIl0
;
end
endfunction
function
integer
BFMA1lIl0
;
input
BFMA1Oll0
;
integer
BFMA1Oll0
;
reg
[
31
:
0
]
BFMA1Ill0
;
reg
[
31
:
0
]
BFMA1lll0
;
reg
BFMA1O0l0
;
begin
BFMA1Ill0
=
BFMA1Oll0
;
BFMA1O0l0
=
1
'b
1
;
BFMA1lll0
[
0
]
=
BFMA1O0l0
^
BFMA1Ill0
[
31
]
;
BFMA1lll0
[
1
]
=
BFMA1O0l0
^
BFMA1Ill0
[
31
]
^
BFMA1Ill0
[
0
]
;
BFMA1lll0
[
2
]
=
BFMA1O0l0
^
BFMA1Ill0
[
31
]
^
BFMA1Ill0
[
1
]
;
BFMA1lll0
[
3
]
=
BFMA1Ill0
[
2
]
;
BFMA1lll0
[
4
]
=
BFMA1O0l0
^
BFMA1Ill0
[
31
]
^
BFMA1Ill0
[
3
]
;
BFMA1lll0
[
5
]
=
BFMA1O0l0
^
BFMA1Ill0
[
31
]
^
BFMA1Ill0
[
4
]
;
BFMA1lll0
[
6
]
=
BFMA1Ill0
[
5
]
;
BFMA1lll0
[
7
]
=
BFMA1O0l0
^
BFMA1Ill0
[
31
]
^
BFMA1Ill0
[
6
]
;
BFMA1lll0
[
8
]
=
BFMA1O0l0
^
BFMA1Ill0
[
31
]
^
BFMA1Ill0
[
7
]
;
BFMA1lll0
[
9
]
=
BFMA1Ill0
[
8
]
;
BFMA1lll0
[
10
]
=
BFMA1O0l0
^
BFMA1Ill0
[
31
]
^
BFMA1Ill0
[
9
]
;
BFMA1lll0
[
11
]
=
BFMA1O0l0
^
BFMA1Ill0
[
31
]
^
BFMA1Ill0
[
10
]
;
BFMA1lll0
[
12
]
=
BFMA1O0l0
^
BFMA1Ill0
[
31
]
^
BFMA1Ill0
[
11
]
;
BFMA1lll0
[
13
]
=
BFMA1Ill0
[
12
]
;
BFMA1lll0
[
14
]
=
BFMA1Ill0
[
13
]
;
BFMA1lll0
[
15
]
=
BFMA1Ill0
[
14
]
;
BFMA1lll0
[
16
]
=
BFMA1O0l0
^
BFMA1Ill0
[
31
]
^
BFMA1Ill0
[
15
]
;
BFMA1lll0
[
17
]
=
BFMA1Ill0
[
16
]
;
BFMA1lll0
[
18
]
=
BFMA1Ill0
[
17
]
;
BFMA1lll0
[
19
]
=
BFMA1Ill0
[
18
]
;
BFMA1lll0
[
20
]
=
BFMA1Ill0
[
19
]
;
BFMA1lll0
[
21
]
=
BFMA1Ill0
[
20
]
;
BFMA1lll0
[
22
]
=
BFMA1O0l0
^
BFMA1Ill0
[
31
]
^
BFMA1Ill0
[
21
]
;
BFMA1lll0
[
23
]
=
BFMA1O0l0
^
BFMA1Ill0
[
31
]
^
BFMA1Ill0
[
22
]
;
BFMA1lll0
[
24
]
=
BFMA1Ill0
[
23
]
;
BFMA1lll0
[
25
]
=
BFMA1Ill0
[
24
]
;
BFMA1lll0
[
26
]
=
BFMA1O0l0
^
BFMA1Ill0
[
31
]
^
BFMA1Ill0
[
25
]
;
BFMA1lll0
[
27
]
=
BFMA1Ill0
[
26
]
;
BFMA1lll0
[
28
]
=
BFMA1Ill0
[
27
]
;
BFMA1lll0
[
29
]
=
BFMA1Ill0
[
28
]
;
BFMA1lll0
[
30
]
=
BFMA1Ill0
[
29
]
;
BFMA1lll0
[
31
]
=
BFMA1Ill0
[
30
]
;
BFMA1lIl0
=
BFMA1lll0
;
end
endfunction
function
integer
BFMA1I0l0
;
input
BFMA1Oll0
;
integer
BFMA1Oll0
;
input
BFMA1O11l
;
integer
BFMA1O11l
;
integer
BFMA1l0l0
;
integer
BFMA1I0I0
;
reg
[
31
:
0
]
BFMA1Ill0
;
begin
BFMA1Ill0
=
BFMA1Oll0
;
for
(
BFMA1I0I0
=
31
;
BFMA1I0I0
>=
BFMA1O11l
;
BFMA1I0I0
=
BFMA1I0I0
-
1
)
BFMA1Ill0
[
BFMA1I0I0
]
=
0
;
BFMA1l0l0
=
BFMA1Ill0
;
BFMA1I0l0
=
BFMA1l0l0
;
end
endfunction
function
integer
BFMA1O1l0
;
input
BFMA1Oll0
;
integer
BFMA1Oll0
;
input
BFMA1O11l
;
integer
BFMA1O11l
;
integer
BFMA1l0l0
;
reg
[
31
:
0
]
BFMA1Ill0
;
integer
BFMA1I1l0
;
integer
BFMA1I0I0
;
begin
case
(
BFMA1O11l
)
1
:
begin
BFMA1I1l0
=
0
;
end
2
:
begin
BFMA1I1l0
=
1
;
end
4
:
begin
BFMA1I1l0
=
2
;
end
8
:
begin
BFMA1I1l0
=
3
;
end
16
:
begin
BFMA1I1l0
=
4
;
end
32
:
begin
BFMA1I1l0
=
5
;
end
64
:
begin
BFMA1I1l0
=
6
;
end
128
:
begin
BFMA1I1l0
=
7
;
end
256
:
begin
BFMA1I1l0
=
8
;
end
512
:
begin
BFMA1I1l0
=
9
;
end
1024
:
begin
BFMA1I1l0
=
10
;
end
2048
:
begin
BFMA1I1l0
=
11
;
end
4096
:
begin
BFMA1I1l0
=
12
;
end
8192
:
begin
BFMA1I1l0
=
13
;
end
16384
:
begin
BFMA1I1l0
=
14
;
end
32768
:
begin
BFMA1I1l0
=
15
;
end
65536
:
begin
BFMA1I1l0
=
16
;
end
131072
:
BFMA1I1l0
=
17
;
262144
:
BFMA1I1l0
=
18
;
524288
:
BFMA1I1l0
=
19
;
1048576
:
BFMA1I1l0
=
20
;
2097152
:
BFMA1I1l0
=
21
;
4194304
:
BFMA1I1l0
=
22
;
8388608
:
BFMA1I1l0
=
23
;
16777216
:
BFMA1I1l0
=
24
;
33554432
:
BFMA1I1l0
=
25
;
67108864
:
BFMA1I1l0
=
26
;
134217728
:
BFMA1I1l0
=
27
;
268435456
:
BFMA1I1l0
=
28
;
536870912
:
BFMA1I1l0
=
29
;
1073741824
:
BFMA1I1l0
=
30
;
default
:
begin
$display
(
"Random function error (FAILURE)"
)
;
$finish
;
end
endcase
BFMA1Ill0
=
to_slv32
(
BFMA1Oll0
)
;
if
(
BFMA1I1l0
<
31
)
begin
for
(
BFMA1I0I0
=
31
;
BFMA1I0I0
>=
BFMA1I1l0
;
BFMA1I0I0
=
BFMA1I0I0
-
1
)
BFMA1Ill0
[
BFMA1I0I0
]
=
0
;
end
BFMA1l0l0
=
to_int_signed
(
BFMA1Ill0
)
;
BFMA1O1l0
=
BFMA1l0l0
;
end
endfunction
function
bound1k
;
input
BFMA1l1l0
;
integer
BFMA1l1l0
;
input
BFMA1OO00
;
integer
BFMA1OO00
;
reg
[
31
:
0
]
BFMA1IO00
;
reg
BFMA1lO00
;
begin
BFMA1IO00
=
BFMA1OO00
;
BFMA1lO00
=
0
;
case
(
BFMA1l1l0
)
0
:
begin
if
(
BFMA1IO00
[
9
:
0
]
==
10
'b
0000000000
)
begin
BFMA1lO00
=
1
;
end
end
1
:
begin
BFMA1lO00
=
1
;
end
2
:
begin
end
default
:
begin
$display
(
"Illegal Burst Boundary Set (FAILURE)"
)
;
$finish
;
end
endcase
bound1k
=
BFMA1lO00
;
end
endfunction
input
PCLK
;
input
PRESETN
;
input
PENABLE
;
input
PWRITE
;
input
PSEL
;
input
[
AWIDTH
-
1
:
0
]
PADDR
;
input
[
DWIDTH
-
1
:
0
]
PWDATA
;
output
[
DWIDTH
-
1
:
0
]
PRDATA
;
wire
[
DWIDTH
-
1
:
0
]
#
TPD
PRDATA
;
output
PREADY
;
wire
PREADY
;
output
PSLVERR
;
wire
PSLVERR
;
wire
EXT_EN
;
wire
EXT_WR
;
wire
EXT_RD
;
wire
[
AWIDTH
-
1
:
0
]
EXT_ADDR
;
wire
[
DWIDTH
-
1
:
0
]
EXT_DATA
;
assign
EXT_EN
=
1
'b
0
;
assign
EXT_WR
=
1
'b
0
;
assign
EXT_RD
=
1
'b
0
;
assign
EXT_ADDR
=
{
AWIDTH
-
1
-
(
0
)
+
1
{
1
'b
0
}
}
;
assign
EXT_DATA
=
0
;
BFM_APBSLAVEEXT
#
(
.AWIDTH
(
AWIDTH
)
,
.DEPTH
(
DEPTH
)
,
.DWIDTH
(
DWIDTH
)
,
.EXT_SIZE
(
EXT_SIZE
)
,
.INITFILE
(
INITFILE
)
,
.ID
(
ID
)
,
.TPD
(
TPD
)
,
.ENFUNC
(
ENFUNC
)
,
.DEBUG
(
DEBUG
)
)
BFMA1OI1II
(
.PCLK
(
PCLK
)
,
.PRESETN
(
PRESETN
)
,
.PENABLE
(
PENABLE
)
,
.PWRITE
(
PWRITE
)
,
.PSEL
(
PSEL
)
,
.PADDR
(
PADDR
)
,
.PWDATA
(
PWDATA
)
,
.PRDATA
(
PRDATA
)
,
.PREADY
(
PREADY
)
,
.PSLVERR
(
PSLVERR
)
,
.EXT_EN
(
EXT_EN
)
,
.EXT_WR
(
EXT_WR
)
,
.EXT_RD
(
EXT_RD
)
,
.EXT_ADDR
(
EXT_ADDR
)
,
.EXT_DATA
(
EXT_DATA
)
)
;
endmodule
