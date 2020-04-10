module GL_decoder_3_bit(output [7:0]D, input [2:0]I, input E);

wire [3:0]w;

not G0(w[0], I[0]);
not G1(w[1], I[1]);
not G2(w[2], I[2]);
not G3(w[3], E);
and D0(D[0], w[2], w[1], w[0], w[3]);
and D1(D[1], w[2], w[1], I[0], w[3]);
and D2(D[2], w[2], I[1], w[0], w[3]);
and D3(D[3], w[2], I[1], I[0], w[3]);
and D4(D[4], I[2], w[1], w[0], w[3]);
and D5(D[5], I[2], w[1], I[0], w[3]);
and D6(D[6], I[2], I[1], w[0], w[3]);
and D7(D[7], I[2], I[1], I[0], w[3]);

endmodule
