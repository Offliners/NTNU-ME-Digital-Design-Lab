module halfAdder(S, C, A, B);

input A, B;
output S, C;

assign S = A^B;
assign C = A&&B;

endmodule
