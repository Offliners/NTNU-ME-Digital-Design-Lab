module DF_lab4(y, I);

input [2:0] I;
output y;

assign y = (I[0]&&I[1])||(I[1]&&I[2])||(I[0]&&I[2]);

endmodule
