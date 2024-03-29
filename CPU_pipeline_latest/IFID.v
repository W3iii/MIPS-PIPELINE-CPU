module IFID( RD_out, PC_out, RD_in, PC_in, clk, rst, en_reg );
  
  input clk, rst, en_reg;
  input[31:0]	RD_in, PC_in;
  output[31:0] RD_out, PC_out;
  reg [31:0] RD_out, PC_out;
  reg [31:0] last;
   
  always @( posedge clk ) begin
      if ( rst ) begin
		    RD_out <= 32'b0;
		    PC_out <= 32'b0;
		  end  
      else if ( en_reg ) begin
		    RD_out <= RD_in;
		    PC_out <= PC_in;
		  end
      else if ( en_reg == 1'b0 ) begin
		    RD_out <= last;
		    PC_out <= PC_in;
		  end
  end

  always @(RD_in)
  begin
      last <= RD_in;
  end
endmodule
  