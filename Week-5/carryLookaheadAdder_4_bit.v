module carryLookaheadAdder_4_bit(output [3:0]S, output C4, input [3:0]A, B, input C0);

wire [3:0]P, G;
wire [3:1]C;

halfAdder HA0(P[0], G[0], A[0], B[0]),
	  HA1(P[1], G[1], A[1], B[1]),
	  HA2(P[2], G[2], A[2], B[2]),
	  HA3(P[3], G[3], A[3], B[3]);
			 
carryLookaheadGenerator CLG({C4, C}, P, G, C0);

xor G0(S[0], P[0], C0),
    G1(S[1], P[1], C[1]),
    G2(S[2], P[2], C[2]),
    G3(S[3], P[3], C[3]);
	 
endmodule
