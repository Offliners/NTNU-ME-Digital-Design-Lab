module carryLookaheadGenerator(output [4:1]C, input [3:0]P, G, input C0);

assign C[1] = G[0]||(P[0]&&C0);
assign C[2] = G[1]||(P[1]&&C[1]);
assign C[3] = G[2]||(P[2]&&C[2]);
assign C[4] = G[3]||(P[3]&&C[3]);

endmodule
