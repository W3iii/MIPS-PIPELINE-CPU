`timescale 1ns/1ns
module nopControl( clk, instr, stall, delay);

  input clk;
  input [31:0] instr;

  output reg stall, delay;

  reg [6:0] counter;

  parameter MADDU = 6'b011100;
  parameter MULTU = 6'b011001;
  parameter BEQ = 6'b000100;
  parameter JUMP = 6'b000010;

  always @(instr)
  begin
    if (instr[31:26] == BEQ)
    begin
      counter = 0;
      stall = 1'b1;
      delay = 1'b1;
    end
    else if (instr[31:26] == JUMP)
    begin
      counter = 0;
      stall = 1'b1;
      delay = 1'b1;
    end    
    else if (instr[31:26] == MADDU)
    begin
      counter = 32;
      stall = 1'b1;
      delay = 1'b1;
    end
    else if (instr[5:0] == MULTU)
    begin
      counter = 32;
      stall = 1'b1;
      delay = 1'b1;
    end  
    else
    begin
      counter = 0;
      stall = 1'b0;
      delay = 1'b0;
    end  
  end

  always @(posedge clk)
  begin
    if (counter) 
    begin
      stall = 1'b1;
      counter = counter - 7'd1;
    end
    else 
    begin
      stall = 1'b0;
    end


  end
endmodule