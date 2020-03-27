module DF_lab5(O, I);

input [3:0] I;
output [3:0] O;

assign O[3] = I[3];
assign O[2:0] = I[3:1]^I[2:0];

endmodule
