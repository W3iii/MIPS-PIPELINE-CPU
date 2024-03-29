module EXMEM( clk, rst, en_reg, Branch, MemRead, MemWrite, RegWrite, MemtoReg, PC_in, ALUout, RD2, RegisterFile_wn, out_RegWrite, out_MemtoReg, out_MemWrite, out_MemRead, out_Branch, PC_out, out_ALUout, out_wd, out_RegisterFile_wn );
    
    input clk, rst, en_reg;
    input MemtoReg, RegWrite, MemRead, MemWrite, Branch;
    input [31:0] ALUout, RD2, PC_in;
    input [4:0] RegisterFile_wn;

    output reg out_MemtoReg, out_RegWrite, out_MemWrite, out_MemRead, out_Branch;
    output reg [31:0] out_ALUout, PC_out, out_wd;
    output reg [4:0] out_RegisterFile_wn;

     always @( posedge clk ) begin
         if ( rst ) begin
             out_RegWrite <= 1'b0;
             out_MemtoReg <= 1'b0;
             out_MemWrite <= 1'b0;
             out_MemRead  <= 1'b0;
             out_Branch   <= 1'b0;
             out_ALUout   <= 32'b0;
             PC_out       <= 32'b0;
             out_wd       <= 32'b0;
             out_RegisterFile_wn <= 5'bx;
         end
         else if ( en_reg ) begin
             out_RegWrite <= RegWrite;
             out_MemtoReg <= MemtoReg;
             out_MemWrite <= MemWrite;
             out_MemRead  <= MemRead;
             out_Branch   <= Branch;
             out_ALUout   <= ALUout;
             PC_out       <= PC_in;
             out_wd       <= RD2;
             out_RegisterFile_wn = RegisterFile_wn;
         end
     end
endmodule
