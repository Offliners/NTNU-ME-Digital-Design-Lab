module binaryAdderSubtractor_4_bit(output [3:0]S, output C4, V, input [3:0]A, B, input M);

wire [3:1]C;
wire [3:0]W;

assign W = B ^ M;

fullAdder FA0(S[0], C[1], A[0], W[0], M),
          FA1(S[1], C[2], A[1], W[1], C[1]),
			 FA2(S[2], C[3], A[2], W[2], C[2]),
			 FA3(S[3], C4, A[3], W[3], C[3]);
			 
assign V = C4 ^ C[3];

endmodule
