module DF_lab2(Oand, Onot, Oor, I1, I2);

input I1, I2;
output Oand, Oor, Onot;

assign Onot = !I1;
assign Oand = I1&&I2;
assign Oor = I1||I2;

endmodule
