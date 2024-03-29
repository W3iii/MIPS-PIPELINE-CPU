`timescale 1ns/1ns
module hazard( clk, stall, PC_Write, IFID_Write );
  input clk, stall;
  output PC_Write, IFID_Write;

assign PC_Write = (stall) ? 0 : 1;
assign IFID_Write = (stall) ? 0 : 1;

endmodule