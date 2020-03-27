module GL_lab5(O, I);

input [3:0] I;
output [3:0] O;

xor G0(O[0], I[1], I[0]);
xor G1(O[1], I[2], I[1]);
xor G2(O[2], I[3], I[2]);
xor G3(O[3], I[3], 0);

endmodule
