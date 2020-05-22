module Binary_to_7Seg (output reg [7:0]Y, input [3:0]I);

always @ (I)
begin
	case (I)
		4'b0000 : Y=7'b1111110;
		4'b0001 : Y=7'b0110000;
		4'b0010 : Y=7'b1101101;
		4'b0011 : Y=7'b1111001;
		4'b0100 : Y=7'b0110011;
		4'b0101 : Y=7'b1011011;
		4'b0110 : Y=7'b1011111;
		4'b0111 : Y=7'b1110000;
		4'b1000 : Y=7'b1111111;
		4'b1001 : Y=7'b1110011;
		4'b1010 : Y=7'b1001111;
		4'b1011 : Y=7'b1001111;
		4'b1100 : Y=7'b1001111;
		4'b1101 : Y=7'b1001111;
		4'b1110 : Y=7'b1001111;
		4'b1111 : Y=7'b1001111;
	endcase
end

endmodule
