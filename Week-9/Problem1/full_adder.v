module full_adder(output S, Cout, input A, B, Cin);

wire [2:0]w;

half_adder HA1(w[0], w[1], A, B),
           HA2(S, w[2], w[0], Cin);

assign Cout = w[1]||w[2];

endmodule
