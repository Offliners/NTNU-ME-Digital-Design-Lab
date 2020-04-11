module Multiplexer_three_state_gate(output Y, input [15:0]D, input [3:0]S);

wire [15:0]w;

Decoder_4_bit Dec(w, S);

bufif1 T0(Y, D[0], w[0]),
       T1(Y, D[1], w[1]),
		 T2(Y, D[2], w[2]),
		 T3(Y, D[3], w[3]),
		 T4(Y, D[4], w[4]),
		 T5(Y, D[5], w[5]),
		 T6(Y, D[6], w[6]),
		 T7(Y, D[7], w[7]),
		 T8(Y, D[8], w[8]),
		 T9(Y, D[9], w[9]),
		 T10(Y, D[10], w[10]),
		 T11(Y, D[11], w[11]),
		 T12(Y, D[12], w[12]),
		 T13(Y, D[13], w[13]),
		 T14(Y, D[14], w[14]),
		 T15(Y, D[15], w[15]);
		 
endmodule
