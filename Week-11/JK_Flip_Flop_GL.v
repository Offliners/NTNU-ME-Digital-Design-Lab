module JK_Flip_Flop_GL(output Q, input J, K, clk, rst);

wire [4:0]w;

not G0(w[0], K);
not G1(w[1], Q);
and G2(w[2], J, w[1]);
and G3(w[3], Q, w[0]);
or G4(w[4], w[2], w[3]);

D_Flip_Flop_behavior DFF(Q, w[4], clk, rst);

endmodule
