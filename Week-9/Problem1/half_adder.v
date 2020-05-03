module half_adder(output S, C, input A, B);

assign S = A^B;
assign C = A&&B;

endmodule
