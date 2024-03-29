`timescale 1ns/1ns
module TotalALU( clk, dataA, dataB, op, funct, shamt, Output, rst );

input         clk, rst;
input[1:0]    op;
input[5:0]    funct;
input[4:0]    shamt;
input[31:0]   dataA;
input[31:0]   dataB;
output[31:0]  Output;

wire [31:0] temp ;

parameter AND = 4'b0000;
parameter OR  = 4'b0001;
parameter ADD = 4'b0010;
parameter SUB = 4'b0110;
parameter SLT = 4'b0111;
parameter SRL = 4'b0011;   


parameter MULTU = 4'b1010;
parameter MADDU = 4'b1011;
parameter MFHI= 4'b1001;
parameter MFLO= 4'b1000;
/*
�w�q�U�ذT�
*/
//============================
wire [3:0]  SignaltoALU ;
wire [3:0]  SignaltoMUL ;
wire [3:0]  SignaltoMUX ;
wire [31:0] ALUOut, HiOut, LoOut, ShifterOut ;
wire [31:0] dataOut ;
wire [63:0] MulAns ;
wire HL;
wire startMULT;
/*
�w�q�U�ر�u
*/
//============================

alu_ctl alu_ctl( clk, op, funct, SignaltoALU, SignaltoMUL, SignaltoMUX, HL, startMULT );
ALU ALU( .dataA(dataA), .dataB(dataB), .shamt(shamt), .Signal(SignaltoALU), .dataOut(ALUOut), .reset(rst) );
MPY Multu( .clk(clk), .dataA(dataA), .dataB(dataB), .Signal(SignaltoMUL), .dataOut(MulAns), .reset(rst), .start(startMULT) );
HiLo HiLo( clk, MulAns, HiOut, LoOut, rst, HL );
TotalALU_MUX ALU_MUX( .ALUOut(ALUOut), .HiOut(HiOut), .LoOut(LoOut), .Signal(SignaltoMUX), .dataOut(dataOut) );
/*
�إߦU�module
*/
assign Output = dataOut ;


endmodule