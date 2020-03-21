module GL_lab2(Onot, Oor, Oand, I1, I2);

input I1, I2;
output Oand, Onot, Oor;

not G1(Onot, I1);
and G2(Oand, I1, I2);
or G3(Oor, I1, I2);

endmodule
