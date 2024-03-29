module IDEX( RegDst_out, aluOp_out, aluSrc_out, bh_out, mRead_out, mWrite_out, rWrite_out, Mem2Reg_out, pc_out, RD1_out, RD2_out, EXTND_out, rs_out, rt_out, 
             rd_out, funct_out, shamt_out, RegDst_in, aluOp_in, aluSrc_in, bh_in, mRead_in, mWrite_in, rWrite_in, Mem2Reg_in, pc_in, RD1_in, RD2_in, EXTND_in, 
             rs_in, rt_in, rd_in, funct_in, shamt_in, clk, rst, en_reg );
         
  input             clk, rst, en_reg, RegDst_in, aluSrc_in, bh_in, mRead_in, mWrite_in, rWrite_in, Mem2Reg_in;
  input[1:0]        aluOp_in;
  input[4:0]        rs_in, rt_in, rd_in, shamt_in;
  input[5:0]        funct_in;
  input[31:0]       pc_in, RD1_in, RD2_in, EXTND_in;
  output reg        RegDst_out, aluSrc_out, bh_out, mRead_out, mWrite_out, rWrite_out, Mem2Reg_out;
  output reg[1:0]   aluOp_out;
  output reg[4:0]   rs_out, rt_out, rd_out, shamt_out;
  output reg[5:0]   funct_out;
  output reg[31:0]  pc_out, RD1_out, RD2_out, EXTND_out;
      
  always @( posedge clk ) begin
    if ( rst ) begin
		  RegDst_out <= 1'b0;
		  aluOp_out <= 2'b0;
		  aluSrc_out <= 1'b0;
		  bh_out <= 1'b0;
		  mRead_out <= 1'b0;
		  mWrite_out <= 1'b0;
		  rWrite_out <= 1'b0;
		  Mem2Reg_out <= 1'b0;
		  rs_out <= 5'b0;
		  rt_out <= 5'b0;
		  rd_out <= 5'b0;
		  shamt_out <= 5'b0;
		  funct_out <= 6'b0;
		  pc_out <= 32'b0;
		  RD1_out <= 32'b0;
		  RD2_out <= 32'b0;
		  EXTND_out <= 32'b0;
		end  
    else if ( en_reg ) begin
		  RegDst_out <= RegDst_in;
		  aluOp_out <= aluOp_in;
		  aluSrc_out <= aluSrc_in;
		  bh_out <= bh_in;
		  mRead_out <= mRead_in;
		  mWrite_out <= mWrite_in;
		  rWrite_out <= rWrite_in;
		  Mem2Reg_out <= Mem2Reg_in;
		  rs_out <= rs_in;
		  rt_out <= rt_in;
		  rd_out <= rd_in;
		  shamt_out <= shamt_in;
		  funct_out <= funct_in;
		  pc_out <= pc_in;
		  RD1_out <= RD1_in;
		  RD2_out <= RD2_in;
		  EXTND_out <= EXTND_in;
		end
  end
  
endmodule