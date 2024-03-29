`timescale 1ns/1ns
module MPY( clk, dataA, dataB, Signal, dataOut, reset, start );
  input             clk    ;
  input             reset  ;
  input             start  ;
  input      [31:0] dataA  ; // Multiplicand
  input      [31:0] dataB  ; // Multiplier
  input      [3: 0] Signal ;
  output     [63:0] dataOut; // product
  
  
  reg [63:0] multiplicand, product;
  reg [31:0] multiplier;
  reg First = 1'b1 ;
  
  parameter MULTU = 4'b1010;
  parameter MADDU = 4'b1011;
  parameter OUT = 4'b1111;
  
  always@( posedge clk or reset )
  begin
    if ( reset ) begin
        multiplicand = 64'b0 ;
	      multiplier = 32'b0 ;
        product = 64'b0 ;
    end
    
    else
    begin
      if ( Signal == MULTU || Signal == MADDU )
      begin
          if( start )
          begin
              multiplicand = 0;
              multiplicand[31:0] = dataA;
              multiplier = dataB;
              First = 1'b0;
              product = 64'b0;
          end
          
          if(multiplier[0] == 1'b1)
          begin
              product = product + multiplicand;
          end
          
          multiplicand = multiplicand << 1;
          multiplier = multiplier >> 1;
          
      end
          
        //default: dataOut = 0;
    end
  end
  
  assign dataOut = product;
endmodule    
          
        
        
            
            