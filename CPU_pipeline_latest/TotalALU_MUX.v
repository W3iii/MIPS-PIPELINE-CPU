`timescale 1ns/1ns
module TotalALU_MUX( ALUOut, HiOut, LoOut, Signal, dataOut );
input [31:0] ALUOut ;
input [31:0] HiOut ;
input [31:0] LoOut ;
input [3:0] Signal ;
output [31:0] dataOut ;


reg [31:0] temp ;

parameter AND = 4'b0000;
parameter OR  = 4'b0001;
parameter ADD = 4'b0010;
parameter SUB = 4'b0110;
parameter SLT = 4'b0111;
parameter SRL = 4'b0011;  

parameter MULTU = 4'b1010;
parameter MFHI= 4'b1001;
parameter MFLO= 4'b1000;
/*
??????
*/
/*
=====================================================
??????????????????????????
=====================================================
*/
always@( ALUOut or HiOut or LoOut or Signal )
begin

	case ( Signal )
	AND:
	begin
		temp = ALUOut ;
	end
	OR:
	begin
		temp = ALUOut ;
	end
	ADD:
	begin
		temp = ALUOut ;
	end
	SUB:
	begin
		temp = ALUOut ;
	end
	SLT:
	begin
		temp = ALUOut ;
	end	
  SRL:
	begin
		temp = ALUOut ;
	end
	MFHI:
	begin
		temp = HiOut ;
	end
	MFLO:
	begin
		temp = LoOut ;
	end

	default: temp = 32'b0 ;	
	
	endcase
/*
????case???????
????????signal??????????
??????????
*/
end
assign dataOut = temp ;
/*
=====================================================
??????????????????????????
=====================================================
*/

endmodule