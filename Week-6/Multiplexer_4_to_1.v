module Multiplexer_4_to_1(output Y, input [0:3]I, input [1:0]S);

wire [5:0]w;

not G0(w[0], S[0]);
not G1(w[1], S[1]);
and G2(w[2], I[0], S[0], S[1]);
and G3(w[3], I[1], w[0], S[1]);
and G4(w[4], I[2], S[0], w[1]);
and G5(w[5], I[3], w[0], w[1]);
or G6(Y, w[2], w[3], w[4], w[5]);

endmodule
