module four_bits_decoder_enable(output [15:0] Y, input [3:0] I);

wire w;

not G0(w, I[3]);
three_bits_decoder_enable D0(Y[7:0], I[2:0], w);
three_bits_decoder_enable D1(Y[15:8], I[2:0], I[3]);

endmodule
