module Multiplexer_16_to_1(output Y, input [15:0]I, input [3:0]S);

wire [3:0]w;

Multiplexer_4_to_1 Mul0(w[0], I[3:0], S[1:0]),
                   Mul1(w[1], I[7:4], S[1:0]),
                   Mul2(w[2], I[11:8], S[1:0]),
                   Mul3(w[3], I[15:12], S[1:0]),
                   Mul4(Y, w, S[3:2]);
						 
endmodule
