module Mux_alu(out, in0, in1, in2, in3, sel);

input    in0, in1, in2, in3;
input   [3:0]  sel;
output  out;

wire out;
parameter AND = 4'b0000;
parameter OR  = 4'b0001;
parameter ADD = 4'b0010;
parameter SUB = 4'b0110;
parameter SLT = 4'b0111;
parameter SRL = 4'b0011;

    assign out = (sel == AND) ? in0 : (sel == OR) ? in1 : (sel == SLT) ? in3 : in2;

endmodule
