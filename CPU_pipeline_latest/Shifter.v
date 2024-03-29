`timescale 1ns/1ns
module Shifter( dataA, dataB, Signal, dataOut, reset );
input reset ;
input [31:0] dataA ;
input [4:0] dataB ;
input [3:0] Signal ;
output [31:0] dataOut ;


wire [31:0] R1, R2, R3, R4, R5;
parameter SRL = 6'b0011;

/*
=====================================================
下面為模擬範例，程式撰寫請遵照老師上課說明的方法來寫
=====================================================
*/


		mux2to1 row100 ( .a( dataA[0] ) , .b( dataA[1] ), .sel(dataB[0] ) , .result( R1[0] ) );
		mux2to1 row101 ( .a( dataA[1] ) , .b( dataA[2] ), .sel(dataB[0] ) , .result( R1[1] ) );	
		mux2to1 row102 ( .a( dataA[2] ) , .b( dataA[3] ), .sel(dataB[0] ) , .result( R1[2] ) );
		mux2to1 row103 ( .a( dataA[3] ) , .b( dataA[4] ), .sel(dataB[0] ) , .result( R1[3] ) );
		mux2to1 row104 ( .a( dataA[4] ) , .b( dataA[5] ), .sel(dataB[0] ) , .result( R1[4] ) );
		mux2to1 row105 ( .a( dataA[5] ) , .b( dataA[6] ), .sel(dataB[0] ) , .result( R1[5] ) );
		mux2to1 row106 ( .a( dataA[6] ) , .b( dataA[7] ), .sel(dataB[0] ) , .result( R1[6] ) );
		mux2to1 row107 ( .a( dataA[7] ) , .b( dataA[8] ), .sel(dataB[0] ) , .result( R1[7] ) );
		mux2to1 row108 ( .a( dataA[8] ) , .b( dataA[9] ), .sel(dataB[0] ) , .result( R1[8] ) );
		mux2to1 row109 ( .a( dataA[9] ) , .b( dataA[10] ), .sel(dataB[0] ) , .result( R1[9] ) );
		mux2to1 row110 ( .a( dataA[10] ) , .b( dataA[11] ), .sel(dataB[0] ) , .result( R1[10] ) );
		mux2to1 row111 ( .a( dataA[11] ) , .b( dataA[12] ), .sel(dataB[0] ) , .result( R1[11] ) );
		mux2to1 row112 ( .a( dataA[12] ) , .b( dataA[13] ), .sel(dataB[0] ) , .result( R1[12] ) );
		mux2to1 row113 ( .a( dataA[13] ) , .b( dataA[14] ), .sel(dataB[0] ) , .result( R1[13] ) );
		mux2to1 row114 ( .a( dataA[14] ) , .b( dataA[15] ), .sel(dataB[0] ) , .result( R1[14] ) );
		mux2to1 row115 ( .a( dataA[15] ) , .b( dataA[16] ), .sel(dataB[0] ) , .result( R1[15] ) );
		mux2to1 row116 ( .a( dataA[16] ) , .b( dataA[17] ), .sel(dataB[0] ) , .result( R1[16] ) );
		mux2to1 row117 ( .a( dataA[17] ) , .b( dataA[18] ), .sel(dataB[0] ) , .result( R1[17] ) );
		mux2to1 row118 ( .a( dataA[18] ) , .b( dataA[19] ), .sel(dataB[0] ) , .result( R1[18] ) );
		mux2to1 row119 ( .a( dataA[19] ) , .b( dataA[20] ), .sel(dataB[0] ) , .result( R1[19] ) );
		mux2to1 row120 ( .a( dataA[20] ) , .b( dataA[21] ), .sel(dataB[0] ) , .result( R1[20] ) );
		mux2to1 row121 ( .a( dataA[21] ) , .b( dataA[22] ), .sel(dataB[0] ) , .result( R1[21] ) );
		mux2to1 row122 ( .a( dataA[22] ) , .b( dataA[23] ), .sel(dataB[0] ) , .result( R1[22] ) );
		mux2to1 row123 ( .a( dataA[23] ) , .b( dataA[24] ), .sel(dataB[0] ) , .result( R1[23] ) );
		mux2to1 row124 ( .a( dataA[24] ) , .b( dataA[25] ), .sel(dataB[0] ) , .result( R1[24] ) );
		mux2to1 row125 ( .a( dataA[25] ) , .b( dataA[26] ), .sel(dataB[0] ) , .result( R1[25] ) );
		mux2to1 row126 ( .a( dataA[26] ) , .b( dataA[27] ), .sel(dataB[0] ) , .result( R1[26] ) );
		mux2to1 row127 ( .a( dataA[27] ) , .b( dataA[28] ), .sel(dataB[0] ) , .result( R1[27] ) );
		mux2to1 row128 ( .a( dataA[28] ) , .b( dataA[29] ), .sel(dataB[0] ) , .result( R1[28] ) );
		mux2to1 row129 ( .a( dataA[29] ) , .b( dataA[30] ), .sel(dataB[0] ) , .result( R1[29] ) );
		mux2to1 row130 ( .a( dataA[30] ) , .b( dataA[31] ), .sel(dataB[0] ) , .result( R1[30] ) );
		mux2to1 row131 ( .a( dataA[31] ) , .b( 1'b0 ), .sel(dataB[0] ) , .result( R1[31] ) );

		mux2to1 row200 ( .a( R1[0] ) , .b( R1[2] ), .sel(dataB[1] ) , .result( R2[0] ) );
		mux2to1 row201 ( .a( R1[1] ) , .b( R1[3] ), .sel(dataB[1] ) , .result( R2[1] ) );
		mux2to1 row202 ( .a( R1[2] ) , .b( R1[4] ), .sel(dataB[1] ) , .result( R2[2] ) );
		mux2to1 row203 ( .a( R1[3] ) , .b( R1[5] ), .sel(dataB[1] ) , .result( R2[3] ) );
		mux2to1 row204 ( .a( R1[4] ) , .b( R1[6] ), .sel(dataB[1] ) , .result( R2[4] ) );
		mux2to1 row205 ( .a( R1[5] ) , .b( R1[7] ), .sel(dataB[1] ) , .result( R2[5] ) );
		mux2to1 row206 ( .a( R1[6] ) , .b( R1[8] ), .sel(dataB[1] ) , .result( R2[6] ) );
		mux2to1 row207 ( .a( R1[7] ) , .b( R1[9] ), .sel(dataB[1] ) , .result( R2[7] ) );
		mux2to1 row208 ( .a( R1[8] ) , .b( R1[10] ), .sel(dataB[1] ) , .result( R2[8] ) );
		mux2to1 row209 ( .a( R1[9] ) , .b( R1[11] ), .sel(dataB[1] ) , .result( R2[9] ) );
		mux2to1 row210 ( .a( R1[10] ) , .b( R1[12] ), .sel(dataB[1] ) , .result( R2[10] ) );
		mux2to1 row211 ( .a( R1[11] ) , .b( R1[13] ), .sel(dataB[1] ) , .result( R2[11] ) );
		mux2to1 row212 ( .a( R1[12] ) , .b( R1[14] ), .sel(dataB[1] ) , .result( R2[12] ) );
		mux2to1 row213 ( .a( R1[13] ) , .b( R1[15] ), .sel(dataB[1] ) , .result( R2[13] ) );
		mux2to1 row214 ( .a( R1[14] ) , .b( R1[16] ), .sel(dataB[1] ) , .result( R2[14] ) );
		mux2to1 row215 ( .a( R1[15] ) , .b( R1[17] ), .sel(dataB[1] ) , .result( R2[15] ) );
		mux2to1 row216 ( .a( R1[16] ) , .b( R1[18] ), .sel(dataB[1] ) , .result( R2[16] ) );
		mux2to1 row217 ( .a( R1[17] ) , .b( R1[19] ), .sel(dataB[1] ) , .result( R2[17] ) );
		mux2to1 row218 ( .a( R1[18] ) , .b( R1[20] ), .sel(dataB[1] ) , .result( R2[18] ) );
		mux2to1 row219 ( .a( R1[19] ) , .b( R1[21] ), .sel(dataB[1] ) , .result( R2[19] ) );
		mux2to1 row220 ( .a( R1[20] ) , .b( R1[22] ), .sel(dataB[1] ) , .result( R2[20] ) );
		mux2to1 row221 ( .a( R1[21] ) , .b( R1[23] ), .sel(dataB[1] ) , .result( R2[21] ) );
		mux2to1 row222 ( .a( R1[22] ) , .b( R1[24] ), .sel(dataB[1] ) , .result( R2[22] ) );
		mux2to1 row223 ( .a( R1[23] ) , .b( R1[25] ), .sel(dataB[1] ) , .result( R2[23] ) );
		mux2to1 row224 ( .a( R1[24] ) , .b( R1[26] ), .sel(dataB[1] ) , .result( R2[24] ) );
		mux2to1 row225 ( .a( R1[25] ) , .b( R1[27] ), .sel(dataB[1] ) , .result( R2[25] ) );
		mux2to1 row226 ( .a( R1[26] ) , .b( R1[28] ), .sel(dataB[1] ) , .result( R2[26] ) );
		mux2to1 row227 ( .a( R1[27] ) , .b( R1[29] ), .sel(dataB[1] ) , .result( R2[27] ) );
		mux2to1 row228 ( .a( R1[28] ) , .b( R1[30] ), .sel(dataB[1] ) , .result( R2[28] ) );
		mux2to1 row229 ( .a( R1[29] ) , .b( R1[31] ), .sel(dataB[1] ) , .result( R2[29] ) );
		mux2to1 row230 ( .a( R1[30] ) , .b( 1'b0 ), .sel(dataB[1] ) , .result( R2[30] ) );
		mux2to1 row231 ( .a( R1[31] ) , .b( 1'b0 ), .sel(dataB[1] ) , .result( R2[31] ) );

		mux2to1 row300 ( .a( R2[0] ) , .b( R2[4] ), .sel(dataB[2] ) , .result( R3[0] ) );
		mux2to1 row301 ( .a( R2[1] ) , .b( R2[5] ), .sel(dataB[2] ) , .result( R3[1] ) );
		mux2to1 row302 ( .a( R2[2] ) , .b( R2[6] ), .sel(dataB[2] ) , .result( R3[2] ) );
		mux2to1 row303 ( .a( R2[3] ) , .b( R2[7] ), .sel(dataB[2] ) , .result( R3[3] ) );
		mux2to1 row304 ( .a( R2[4] ) , .b( R2[8] ), .sel(dataB[2] ) , .result( R3[4] ) );
		mux2to1 row305 ( .a( R2[5] ) , .b( R2[9] ), .sel(dataB[2] ) , .result( R3[5] ) );
		mux2to1 row306 ( .a( R2[6] ) , .b( R2[10] ), .sel(dataB[2] ) , .result( R3[6] ) );
		mux2to1 row307 ( .a( R2[7] ) , .b( R2[11] ), .sel(dataB[2] ) , .result( R3[7] ) );
		mux2to1 row308 ( .a( R2[8] ) , .b( R2[12] ), .sel(dataB[2] ) , .result( R3[8] ) );
		mux2to1 row309 ( .a( R2[9] ) , .b( R2[13] ), .sel(dataB[2] ) , .result( R3[9] ) );
		mux2to1 row310 ( .a( R2[10] ) , .b( R2[14] ), .sel(dataB[2] ) , .result( R3[10] ) );
		mux2to1 row311 ( .a( R2[11] ) , .b( R2[15] ), .sel(dataB[2] ) , .result( R3[11] ) );
		mux2to1 row312 ( .a( R2[12] ) , .b( R2[16] ), .sel(dataB[2] ) , .result( R3[12] ) );
		mux2to1 row313 ( .a( R2[13] ) , .b( R2[17] ), .sel(dataB[2] ) , .result( R3[13] ) );
		mux2to1 row314 ( .a( R2[14] ) , .b( R2[18] ), .sel(dataB[2] ) , .result( R3[14] ) );
		mux2to1 row315 ( .a( R2[15] ) , .b( R2[19] ), .sel(dataB[2] ) , .result( R3[15] ) );
		mux2to1 row316 ( .a( R2[16] ) , .b( R2[20] ), .sel(dataB[2] ) , .result( R3[16] ) );
		mux2to1 row317 ( .a( R2[17] ) , .b( R2[21] ), .sel(dataB[2] ) , .result( R3[17] ) );
		mux2to1 row318 ( .a( R2[18] ) , .b( R2[22] ), .sel(dataB[2] ) , .result( R3[18] ) );
		mux2to1 row319 ( .a( R2[19] ) , .b( R2[23] ), .sel(dataB[2] ) , .result( R3[19] ) );
		mux2to1 row320 ( .a( R2[20] ) , .b( R2[24] ), .sel(dataB[2] ) , .result( R3[20] ) );
		mux2to1 row321 ( .a( R2[21] ) , .b( R2[25] ), .sel(dataB[2] ) , .result( R3[21] ) );
		mux2to1 row322 ( .a( R2[22] ) , .b( R2[26] ), .sel(dataB[2] ) , .result( R3[22] ) );
		mux2to1 row323 ( .a( R2[23] ) , .b( R2[27] ), .sel(dataB[2] ) , .result( R3[23] ) );
		mux2to1 row324 ( .a( R2[24] ) , .b( R2[28] ), .sel(dataB[2] ) , .result( R3[24] ) );
		mux2to1 roe325 ( .a( R2[25] ) , .b( R2[29] ), .sel(dataB[2] ) , .result( R3[25] ) );
		mux2to1 row326 ( .a( R2[26] ) , .b( R2[30] ), .sel(dataB[2] ) , .result( R3[26] ) );
		mux2to1 row327 ( .a( R2[27] ) , .b( R2[31] ), .sel(dataB[2] ) , .result( R3[27] ) );
		mux2to1 row328 ( .a( R2[28] ) , .b( 1'b0 ), .sel(dataB[2] ) , .result( R3[28] ) );
		mux2to1 row329 ( .a( R2[29] ) , .b( 1'b0 ), .sel(dataB[2] ) , .result( R3[29] ) );
		mux2to1 row330 ( .a( R2[30] ) , .b( 1'b0 ), .sel(dataB[2] ) , .result( R3[30] ) );
		mux2to1 row331 ( .a( R2[31] ) , .b( 1'b0 ), .sel(dataB[2] ) , .result( R3[31] ) );

		mux2to1 row400 ( .a( R3[0] ) , .b( R3[8] ), .sel(dataB[3] ) , .result( R4[0] ) );
		mux2to1 row401 ( .a( R3[1] ) , .b( R3[9] ), .sel(dataB[3] ) , .result( R4[1] ) );
		mux2to1 row402 ( .a( R3[2] ) , .b( R3[10] ), .sel(dataB[3] ) , .result( R4[2] ) );
		mux2to1 row403 ( .a( R3[3] ) , .b( R3[11] ), .sel(dataB[3] ) , .result( R4[3] ) );
		mux2to1 row404 ( .a( R3[4] ) , .b( R3[12] ), .sel(dataB[3] ) , .result( R4[4] ) );
		mux2to1 row405 ( .a( R3[5] ) , .b( R3[13] ), .sel(dataB[3] ) , .result( R4[5] ) );
		mux2to1 row406 ( .a( R3[6] ) , .b( R3[14] ), .sel(dataB[3] ) , .result( R4[6] ) );
		mux2to1 row407 ( .a( R3[7] ) , .b( R3[15] ), .sel(dataB[3] ) , .result( R4[7] ) );
		mux2to1 row408 ( .a( R3[8] ) , .b( R3[16] ), .sel(dataB[3] ) , .result( R4[8] ) );
		mux2to1 row409 ( .a( R3[9] ) , .b( R3[17] ), .sel(dataB[3] ) , .result( R4[9] ) );
		mux2to1 row410 ( .a( R3[10] ) , .b( R3[18] ), .sel(dataB[3] ) , .result( R4[10] ) );
		mux2to1 row411 ( .a( R3[11] ) , .b( R3[19] ), .sel(dataB[3] ) , .result( R4[11] ) );
		mux2to1 row412 ( .a( R3[12] ) , .b( R3[20] ), .sel(dataB[3] ) , .result( R4[12] ) );
		mux2to1 row413 ( .a( R3[13] ) , .b( R3[21] ), .sel(dataB[3] ) , .result( R4[13] ) );
		mux2to1 row414 ( .a( R3[14] ) , .b( R3[22] ), .sel(dataB[3] ) , .result( R4[14] ) );
		mux2to1 row415 ( .a( R3[15] ) , .b( R3[23] ), .sel(dataB[3] ) , .result( R4[15] ) );
		mux2to1 row416 ( .a( R3[16] ) , .b( R3[24] ), .sel(dataB[3] ) , .result( R4[16] ) );
		mux2to1 row417 ( .a( R3[17] ) , .b( R3[25] ), .sel(dataB[3] ) , .result( R4[17] ) );
		mux2to1 row418 ( .a( R3[18] ) , .b( R3[26] ), .sel(dataB[3] ) , .result( R4[18] ) );
		mux2to1 row419 ( .a( R3[19] ) , .b( R3[27] ), .sel(dataB[3] ) , .result( R4[19] ) );
		mux2to1 row420 ( .a( R3[20] ) , .b( R3[28] ), .sel(dataB[3] ) , .result( R4[20] ) );
		mux2to1 row421 ( .a( R3[21] ) , .b( R3[29] ), .sel(dataB[3] ) , .result( R4[21] ) );
		mux2to1 row422 ( .a( R3[22] ) , .b( R3[30] ), .sel(dataB[3] ) , .result( R4[22] ) );
		mux2to1 row423 ( .a( R3[23] ) , .b( R3[31] ), .sel(dataB[3] ) , .result( R4[23] ) );
		mux2to1 row424 ( .a( R3[24] ) , .b( 1'b0 ), .sel(dataB[3] ) , .result( R4[24] ) );
		mux2to1 row425 ( .a( R3[25] ) , .b( 1'b0 ), .sel(dataB[3] ) , .result( R4[25] ) );
		mux2to1 row426 ( .a( R3[26] ) , .b( 1'b0 ), .sel(dataB[3] ) , .result( R4[26] ) );
		mux2to1 row427 ( .a( R3[27] ) , .b( 1'b0 ), .sel(dataB[3] ) , .result( R4[27] ) );
		mux2to1 row428 ( .a( R3[28] ) , .b( 1'b0 ), .sel(dataB[3] ) , .result( R4[28] ) );
		mux2to1 row429 ( .a( R3[29] ) , .b( 1'b0 ), .sel(dataB[3] ) , .result( R4[29] ) );
		mux2to1 row430 ( .a( R3[30] ) , .b( 1'b0 ), .sel(dataB[3] ) , .result( R4[30] ) );
		mux2to1 row431 ( .a( R3[31] ) , .b( 1'b0 ), .sel(dataB[3] ) , .result( R4[31] ) );

		mux2to1 row500 ( .a( R4[0] ) , .b( R4[16] ), .sel(dataB[4] ) , .result( R5[0] ) );
		mux2to1 row501 ( .a( R4[1] ) , .b( R4[17] ), .sel(dataB[4] ) , .result( R5[1] ) );
		mux2to1 row502 ( .a( R4[2] ) , .b( R4[18] ), .sel(dataB[4] ) , .result( R5[2] ) );
		mux2to1 row503 ( .a( R4[3] ) , .b( R4[19] ), .sel(dataB[4] ) , .result( R5[3] ) );
		mux2to1 row504 ( .a( R4[4] ) , .b( R4[20] ), .sel(dataB[4] ) , .result( R5[4] ) );
		mux2to1 row505 ( .a( R4[5] ) , .b( R4[21] ), .sel(dataB[4] ) , .result( R5[5] ) );
		mux2to1 row506 ( .a( R4[6] ) , .b( R4[22] ), .sel(dataB[4] ) , .result( R5[6] ) );
		mux2to1 row507 ( .a( R4[7] ) , .b( R4[23] ), .sel(dataB[4] ) , .result( R5[7] ) );
		mux2to1 row508 ( .a( R4[8] ) , .b( R4[24] ), .sel(dataB[4] ) , .result( R5[8] ) );
		mux2to1 row509 ( .a( R4[9] ) , .b( R4[25] ), .sel(dataB[4] ) , .result( R5[9] ) );
		mux2to1 row510 ( .a( R4[10] ) , .b( R4[26] ), .sel(dataB[4] ) , .result( R5[10] ) );
		mux2to1 row511 ( .a( R4[11] ) , .b( R4[27] ), .sel(dataB[4] ) , .result( R5[11] ) );
		mux2to1 row512 ( .a( R4[12] ) , .b( R4[28] ), .sel(dataB[4] ) , .result( R5[12] ) );
		mux2to1 row513 ( .a( R4[13] ) , .b( R4[29] ), .sel(dataB[4] ) , .result( R5[13] ) );
		mux2to1 row514 ( .a( R4[14] ) , .b( R4[30] ), .sel(dataB[4] ) , .result( R5[14] ) );
		mux2to1 row515 ( .a( R4[15] ) , .b( R4[31] ), .sel(dataB[4] ) , .result( R5[15] ) );
		mux2to1 row516 ( .a( R4[16] ) , .b( 1'b0 ), .sel(dataB[4] ) , .result( R5[16] ) );
		mux2to1 row517 ( .a( R4[17] ) , .b( 1'b0 ), .sel(dataB[4] ) , .result( R5[17] ) );
		mux2to1 row518 ( .a( R4[18] ) , .b( 1'b0 ), .sel(dataB[4] ) , .result( R5[18] ) );
		mux2to1 row519 ( .a( R4[19] ) , .b( 1'b0 ), .sel(dataB[4] ) , .result( R5[19] ) );
		mux2to1 row520 ( .a( R4[20] ) , .b( 1'b0 ), .sel(dataB[4] ) , .result( R5[20] ) );
		mux2to1 row521 ( .a( R4[21] ) , .b( 1'b0 ), .sel(dataB[4] ) , .result( R5[21] ) );
		mux2to1 row522 ( .a( R4[22] ) , .b( 1'b0 ), .sel(dataB[4] ) , .result( R5[22] ) );
		mux2to1 row523 ( .a( R4[23] ) , .b( 1'b0 ), .sel(dataB[4] ) , .result( R5[23] ) );
		mux2to1 row524 ( .a( R4[24] ) , .b( 1'b0 ), .sel(dataB[4] ) , .result( R5[24] ) );
		mux2to1 row525 ( .a( R4[25] ) , .b( 1'b0 ), .sel(dataB[4] ) , .result( R5[25] ) );
		mux2to1 row526 ( .a( R4[26] ) , .b( 1'b0 ), .sel(dataB[4] ) , .result( R5[26] ) );
		mux2to1 row527 ( .a( R4[27] ) , .b( 1'b0 ), .sel(dataB[4] ) , .result( R5[27] ) );
		mux2to1 row528 ( .a( R4[28] ) , .b( 1'b0 ), .sel(dataB[4] ) , .result( R5[28] ) );
		mux2to1 row529 ( .a( R4[29] ) , .b( 1'b0 ), .sel(dataB[4] ) , .result( R5[29] ) );
		mux2to1 row530 ( .a( R4[30] ) , .b( 1'b0 ), .sel(dataB[4] ) , .result( R5[30] ) );
		mux2to1 row531 ( .a( R4[31] ) , .b( 1'b0 ), .sel(dataB[4] ) , .result( R5[31] ) );
			

/*
移位器運算
*/
assign dataOut = ( reset ) ? 32'b0 : ( Signal == SRL ) ? R5 : dataA ;
/*
=====================================================
上面為模擬範例，程式撰寫請遵照老師上課說明的方法來寫
=====================================================
*/

endmodule