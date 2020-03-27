module Lab5(O, I);

input [3:0] I;
output [11:0] O;

GL_lab5 G0(O[3:0], I);
DF_lab5 G1(O[7:4], I);
BM_lab5 G2(O[11:8], I);

endmodule
