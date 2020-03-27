module BM_lab5(O, I);

input [3:0] I;
output [3:0] O;
reg [3:0] O;
integer i;

always @ (I)
begin 
	for(i = 0; i < 3; i = i + 1)
		O[i] = I[i + 1]^I[i];
	O[3] = I[3];
end

endmodule
