`timescale 1ns/1ns
module mux2to1( a, b, sel, result);

output result ;
input a, b, sel ;
          
assign result = ( sel ) ? b : a ;

endmodule