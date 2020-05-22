module lab10(output [1:0]Y, input E, U, clk, rst);

wire w;

slowclock SC(w, clk);
two_bit_counter TBC(Y, E, U, w, rst);

endmodule
