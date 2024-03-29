`timescale 1ns/1ns
module ALU( dataA, dataB, shamt, Signal, dataOut, reset );
input reset ;
input [31:0] dataA ;
input [31:0] dataB ;
input [3:0] Signal ;
input [4:0] shamt;
output [31:0] dataOut ;
wire binvert;
wire cin;
wire set;
wire [31:0]cout;
wire [31:0] srl_result, temp;
//   Signal ( 6-bits)?
//   AND  : 0
//   OR   : 1
//   ADD  : 2
//   SUB  : 5
//   SLT  : 7
//   SRL  : 3


parameter AND = 4'b0000;
parameter OR  = 4'b0001;
parameter ADD = 4'b0010;
parameter SUB = 4'b0110;
parameter SLT = 4'b0111;
parameter SRL = 4'b0011;    
/*
定義各種訊號
*/


assign cin = (Signal == SUB) ? 1: (Signal == SLT) ? 1 : 0;
assign binvert = (Signal == SUB) ? 1: (Signal == SLT) ? 1 : 0;

ALU_bit alu0(.A(dataA[0]), .B(dataB[0]), .cin(cin), .binvert(binvert), .less(set), .Signal(Signal), .dataOut(temp[0]), .set(), .cout(cout[0]));
ALU_bit alu1(.A(dataA[1]), .B(dataB[1]), .cin(cout[0]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[1]), .set(), .cout(cout[1]));
ALU_bit alu2(.A(dataA[2]), .B(dataB[2]), .cin(cout[1]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[2]), .set(), .cout(cout[2]));
ALU_bit alu3(.A(dataA[3]), .B(dataB[3]), .cin(cout[2]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[3]), .set(), .cout(cout[3]));
ALU_bit alu4(.A(dataA[4]), .B(dataB[4]), .cin(cout[3]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[4]), .set(), .cout(cout[4]));
ALU_bit alu5(.A(dataA[5]), .B(dataB[5]), .cin(cout[4]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[5]), .set(), .cout(cout[5]));
ALU_bit alu6(.A(dataA[6]), .B(dataB[6]), .cin(cout[5]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[6]), .set(), .cout(cout[6]));
ALU_bit alu7(.A(dataA[7]), .B(dataB[7]), .cin(cout[6]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[7]), .set(), .cout(cout[7]));
ALU_bit alu8(.A(dataA[8]), .B(dataB[8]), .cin(cout[7]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[8]), .set(), .cout(cout[8]));
ALU_bit alu9(.A(dataA[9]), .B(dataB[9]), .cin(cout[8]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[9]), .set(), .cout(cout[9]));
ALU_bit alu10(.A(dataA[10]), .B(dataB[10]), .cin(cout[9]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[10]), .set(), .cout(cout[10]));
ALU_bit alu11(.A(dataA[11]), .B(dataB[11]), .cin(cout[10]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[11]), .set(), .cout(cout[11]));
ALU_bit alu12(.A(dataA[12]), .B(dataB[12]), .cin(cout[11]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[12]), .set(), .cout(cout[12]));
ALU_bit alu13(.A(dataA[13]), .B(dataB[13]), .cin(cout[12]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[13]), .set(), .cout(cout[13]));
ALU_bit alu14(.A(dataA[14]), .B(dataB[14]), .cin(cout[13]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[14]), .set(), .cout(cout[14]));
ALU_bit alu15(.A(dataA[15]), .B(dataB[15]), .cin(cout[14]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[15]), .set(), .cout(cout[15]));
ALU_bit alu16(.A(dataA[16]), .B(dataB[16]), .cin(cout[15]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[16]), .set(), .cout(cout[16]));
ALU_bit alu17(.A(dataA[17]), .B(dataB[17]), .cin(cout[16]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[17]), .set(), .cout(cout[17]));
ALU_bit alu18(.A(dataA[18]), .B(dataB[18]), .cin(cout[17]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[18]), .set(), .cout(cout[18]));
ALU_bit alu19(.A(dataA[19]), .B(dataB[19]), .cin(cout[18]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[19]), .set(), .cout(cout[19]));
ALU_bit alu20(.A(dataA[20]), .B(dataB[20]), .cin(cout[19]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[20]), .set(), .cout(cout[20]));
ALU_bit alu21(.A(dataA[21]), .B(dataB[21]), .cin(cout[20]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[21]), .set(), .cout(cout[21]));
ALU_bit alu22(.A(dataA[22]), .B(dataB[22]), .cin(cout[21]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[22]), .set(), .cout(cout[22]));
ALU_bit alu23(.A(dataA[23]), .B(dataB[23]), .cin(cout[22]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[23]), .set(), .cout(cout[23]));
ALU_bit alu24(.A(dataA[24]), .B(dataB[24]), .cin(cout[23]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[24]), .set(), .cout(cout[24]));
ALU_bit alu25(.A(dataA[25]), .B(dataB[25]), .cin(cout[24]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[25]), .set(), .cout(cout[25]));
ALU_bit alu26(.A(dataA[26]), .B(dataB[26]), .cin(cout[25]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[26]), .set(), .cout(cout[26]));
ALU_bit alu27(.A(dataA[27]), .B(dataB[27]), .cin(cout[26]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[27]), .set(), .cout(cout[27]));
ALU_bit alu28(.A(dataA[28]), .B(dataB[28]), .cin(cout[27]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[28]), .set(), .cout(cout[28]));
ALU_bit alu29(.A(dataA[29]), .B(dataB[29]), .cin(cout[28]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[29]), .set(), .cout(cout[29]));
ALU_bit alu30(.A(dataA[30]), .B(dataB[30]), .cin(cout[29]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[30]), .set(), .cout(cout[30]));
ALU_bit alu31(.A(dataA[31]), .B(dataB[31]), .cin(cout[30]), .binvert(binvert), .less(1'b0), .Signal(Signal), .dataOut(temp[31]), .set(set), .cout(cout[31]));

Shifter shifter( .dataA(dataB), .dataB(shamt), .Signal(Signal), .dataOut(srl_result), .reset(reset) );

assign dataOut = ( Signal == SRL ) ? srl_result : temp;

endmodule