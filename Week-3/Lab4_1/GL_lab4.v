module GL_lab4 (y, I);

input [2:0] I;
output y;
wire [2:0] w;

and G0(w[2], I[2], I[0]);
and G1(w[1], I[2], I[1]);
and G2(w[0], I[1], I[0]);
or G3(y, w[2], w[1], w[0]);

endmodule
