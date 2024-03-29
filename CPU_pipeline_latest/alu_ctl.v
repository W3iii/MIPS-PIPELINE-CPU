module alu_ctl(clk, ALUOp, Funct, ALUOperation, SignaltoMULT, SignaltoMUX, HL, startMULT);
	
	input clk;
  input [1:0] ALUOp;
  input [5:0] Funct;
  output[3:0] ALUOperation, SignaltoMULT, SignaltoMUX;
  output reg HL;
  reg[3:0] ALUOperation;
	reg[6:0] counter ;
	reg first;
	output startMULT;
  // symbolic constants for instruction function code
  parameter F_add = 6'd32;
  parameter F_sub = 6'd34;
  parameter F_and = 6'd36;
  parameter F_or  = 6'd37;
  parameter F_slt = 6'd42;
  parameter F_srl = 6'd2;
	parameter F_mfhi = 6'd16 ;
  parameter F_mflo = 6'd18 ;
  parameter F_multu = 6'd25 ;
	parameter F_maddu = 6'd1 ;

    // symbolic constants for ALU Operations
  parameter ALU_and = 4'b0000;
  parameter ALU_or  = 4'b0001;
  parameter ALU_add = 4'b0010;
  parameter ALU_srl = 4'b0011;
  parameter ALU_sub = 4'b0110;
  parameter ALU_slt = 4'b0111;
  parameter ALU_mfhi = 4'b1001;
  parameter ALU_mflo = 4'b1000;
  parameter ALU_multu = 4'b1010;
  parameter ALU_maddu = 4'b1011;

    always @(ALUOp or Funct)
    begin
        case (ALUOp) 
            2'b00 : ALUOperation = ALU_add;
            2'b01 : ALUOperation = ALU_sub;
            2'b10 : case (Funct) 
                        F_add : ALUOperation = ALU_add;
                        F_sub : ALUOperation = ALU_sub;
                        F_and : ALUOperation = ALU_and;
                        F_or  : ALUOperation = ALU_or;
                        F_slt : ALUOperation = ALU_slt;
                        F_srl : ALUOperation = ALU_srl;
                        F_mfhi : ALUOperation = ALU_mfhi;
                        F_mflo : ALUOperation = ALU_mflo;
                        F_multu :
                        begin 
                          ALUOperation = ALU_multu;
      
                          //#(320)HL = 1'b0;
                          //#(10) HL = 1'bx;
                          
                        end
                        F_maddu:
                        begin
                          ALUOperation = ALU_maddu;
                          
                          //#(320)HL = 1'b1;
                          //#(10) HL = 1'bx;
                          
                        end
                        default
                        begin 
                          ALUOperation = 4'bxxx;
                          HL = 1'bx;
                        end
                    endcase
            default ALUOperation = 4'bxxx;
        endcase
    end

    always@( ALUOperation )
    begin
      if ( ALUOperation == ALU_multu || ALUOperation == ALU_maddu )
      begin
        counter = 0 ;
      end
    /*
    ????????? ??counter?0
    */
    end
    
    always@( posedge clk )
    begin
      
      HL = 1'bx;
      if ( ALUOperation == ALU_multu )
      begin
        if ( counter == 0 )
          first = 1'b1;
        else
          first = 1'b0;
        counter = counter + 1 ;
        if ( counter == 32 )
        begin
          HL = 1'b0;
          ALUOperation = 4'b1111 ; // Open HiLo reg for Div
          counter = 0 ;
        end
      end
      else if ( ALUOperation == ALU_maddu ) 
      begin
        if ( counter == 0 )
          first = 1'b1;
        else
          first = 1'b0;
        counter = counter + 1 ;
        if ( counter == 32 )
        begin
          HL = 1'b1;
          ALUOperation = 4'b1111 ; // Open HiLo reg for Div
          counter = 0 ;
        end
      end
    /*
    ?32?clk????HiLo???????????
    */
    end

assign SignaltoMULT = ALUOperation ;
assign SignaltoMUX = ALUOperation ;
assign startMULT = first;
endmodule

