module GL_function_F2(F, I);

input [3:0] I;
output F;
wire [4:0] w;

not G0(w[0], I[2]);
not G1(w[1], I[1]);
not G2(w[2], I[0]);
and G3(w[3], w[0], I[1]);
and G4(w[4], I[2], w[1], w[2]);
or G5(F, w[3], w[4]);
endmodule
