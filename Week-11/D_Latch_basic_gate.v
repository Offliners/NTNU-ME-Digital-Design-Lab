module D_Latch_basic_gate(output [1:0]Q, input D, En, rst);

wire [2:0]w;

not G0(w[0], D);
nand G1(w[1], D, En);
nand G2(w[2], w[0], En);
nand G3(Q[0], w[1], Q[1]);
nand G4(Q[1], Q[0], w[2], rst);

endmodule
