module Bin2Gray(output [3:0]Y, input [3:0]I);

wire [15:0]w;

four_bits_decoder_enable D(w, I);

or G0(Y[3], w[8], w[9], w[10], w[11], w[12], w[13], w[14], w[15]);
or G1(Y[2], w[4], w[5], w[6], w[7], w[8], w[9], w[10], w[11]);
or G2(Y[1], w[2], w[3], w[4], w[5], w[10], w[11], w[12], w[13]);
or G3(Y[0], w[1], w[2], w[5], w[6], w[9], w[10], w[13], w[14]);

endmodule
