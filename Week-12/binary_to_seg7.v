module binary_to_seg7(output reg [6:0]S, input [1:0]I);

always @ (I)
begin
	case(I)
		2'b00 : S = 7'b1111100;
		2'b01 : S = 7'b0110000;
		2'b10 : S = 7'b1101101;
		2'b11 : S = 7'b1111001;
	endcase
end
	
endmodule
