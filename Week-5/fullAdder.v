module fullAdder(S, C, A, B, C0);

input A, B, C0;
output S, C;
wire [2:0]w;

halfAdder HA1(w[0], w[1], A, B);
halfAdder HA2(S, w[2], w[0], C0);

assign C = w[1]||w[2];

endmodule
