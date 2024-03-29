`timescale 1ns/1ns
module HiLo( clk, MultuAns, HiOut, LoOut, reset, HL );
input clk ;
input reset ;
input HL;
input [63:0] MultuAns ;
output [31:0] HiOut ;
output [31:0] LoOut ;

reg [63:0] HiLo ;

always@( negedge clk or reset )
begin
  if ( reset )
  begin
    HiLo = 64'b0 ;
  end
 
  else
  begin
    if ( HL == 1'b0 )
      HiLo = MultuAns ; 
    else if ( HL == 1'b1 )
      HiLo = HiLo + MultuAns;
  end
 
end

assign HiOut = HiLo[63:32] ;
assign LoOut = HiLo[31:0] ;
 
endmodule