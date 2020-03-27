module BM_if_lab4(y, I);

input [2:0] I;
output y;
reg y;

always @ (I)
	if ((I==3'b000)||(I==3'b001)||(I==3'b010)||(I==3'b100))
		y <= 1'b0;
	else
		y <= 1'b1;

endmodule
