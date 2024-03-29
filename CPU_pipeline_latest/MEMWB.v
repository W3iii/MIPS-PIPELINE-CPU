module MEMWB( clk, rst, en_reg, RegWrite, MemtoReg, ALUout, RD, Rfile_wn, out_MemtoReg, out_RegWrite, out_RD, out_ALUout, out_Rfile_wn);

    input clk, rst, en_reg;
    input MemtoReg, RegWrite; // Write-back control signal
    input [31:0] ALUout, RD; // result of ALU and Data Memory RD
    input [4:0] Rfile_wn; // rt/rd that will write back to the R-File

    output reg out_MemtoReg, out_RegWrite;
    output reg [31:0] out_RD, out_ALUout;
    output reg [4:0] out_Rfile_wn;

    always @( posedge clk ) begin
      if ( rst ) begin
        out_MemtoReg <= 1'b0 ;  
			  out_RegWrite <= 1'b0 ;  
			  out_ALUout <= 32'b0 ; 
			  out_RD <= 32'b0 ;
			  out_Rfile_wn <= 32'b0 ; 
		  end
      else if ( en_reg ) begin
			  out_MemtoReg <= MemtoReg ;  
			  out_RegWrite <= RegWrite ;  
			  out_ALUout <= ALUout ; 
			  out_RD <= RD ;
			  out_Rfile_wn <= Rfile_wn ; 
		  end
    end

endmodule