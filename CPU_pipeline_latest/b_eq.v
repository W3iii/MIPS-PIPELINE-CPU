module b_eq( op_in, rd1_in, rd2_in, zero );
  
  parameter   BEQ = 6'd4;
  
  input[5:0]  op_in;
  input[31:0] rd1_in, rd2_in;
  output      zero;
  
  assign zero = ( op_in == BEQ && rd1_in == rd2_in ) ? 1'b1 : 1'b0;
  
endmodule
  