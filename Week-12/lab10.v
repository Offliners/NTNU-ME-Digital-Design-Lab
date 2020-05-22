module lab10(output [6:0]Y, input E, U, clk, rst);

wire w;
wire [1:0]Q;

slowclock SC(w, clk);
two_bit_counter TBC(Q, E, U, w, rst);
binary_to_seg7 B(Y, Q);

endmodule
