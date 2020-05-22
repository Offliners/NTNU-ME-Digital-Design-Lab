module JK_two_counter(output [1:0]Q, input E, U, clk, rst);

wire [1:0]w;
  
xnor G0(w[0], U, Q[0]);
and G1(w[1], w[0], E);

JK_Flip_Flop_BF_Char_Table JK0(Q[1], w[1], w[1], clk, rst);
JK_Flip_Flop_BF_Char_Table JK1(Q[0], E, E, clk, rst);

endmodule
