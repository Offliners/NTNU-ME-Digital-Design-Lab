module BM_case_lab4(y, I);

input [2:0] I;
output y;
reg y;

always @ (I)
	case (I)
	3'b000, 3'b001, 3'b010, 3'b100:
		y <= 1'b0;
	3'b011, 3'b101, 3'b110, 3'b111:
		y <= 1'b1;
	endcase

endmodule
