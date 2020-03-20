module Lab3(F, I);

input [3:0] I;
output [2:0] F;

UDP_function_F1 G0(F[0], I[3], I[2], I[1], I[0]);
GL_function_F2 G1(F[1], I);

assign F[2] = F[0]||F[1]||((~F[0]&&F[1]));

endmodule
