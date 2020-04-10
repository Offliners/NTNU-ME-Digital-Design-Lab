module Decoder_4_bit(output[15:0]D, input [3:0]I);

wire w;

GL_decoder_3_bit D0(D[7:0], I[2:0], I[3]);
not G0(w, I[3]);
BF_decoder_3_bit D1(D[15:8], I[2:0], w);

endmodule
