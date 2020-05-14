module T_Flip_Flop(output Q, input T, clk, rst);

wire w;

assign w = T ^ Q;

D_Flip_Flop_behavior DFF(Q, w, clk, rst);

endmodule
