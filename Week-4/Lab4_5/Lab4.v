module Lab4(y, I);

input [2:0] I;
output [3:0] y;

GL_lab4 G0(y[3], I);
DF_lab4 G1(y[2], I);
BM_if_lab4 G2(y[1], I);
BM_case_lab4 G3(y[0], I);

endmodule
