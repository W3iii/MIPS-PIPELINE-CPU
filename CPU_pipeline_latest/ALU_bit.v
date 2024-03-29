`timescale 1ns/1ns
module ALU_bit(A, B, cin, binvert, less, Signal, dataOut, set, cout);

  input A, B, cin, binvert, less;
	input [3:0]Signal;
  output dataOut, set, cout;
	wire in0, in1, in2, in3, XB;
	and(in0, A, B); // And
	or(in1, A, B); // or
	
	xor(XB, B, binvert);
	FA fA(.a(A), .b(XB), .cin(cin), .sum(set), .cout(cout)); // ADD SUB
	assign in2 = set;
	assign in3 = less; // less
	
	Mux_alu Mux_alu(.in0(in0), .in1(in1), .in2(in2), .in3(in3), .sel(Signal), .out(dataOut));
	
endmodule


