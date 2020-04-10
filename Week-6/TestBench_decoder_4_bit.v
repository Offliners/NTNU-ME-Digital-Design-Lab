module TestBench_decoder_4_bit;

wire [15:0] Y;
reg [4:0]D;

Decoder_4_bit D0(Y, D[3:0]);

initial 
begin
	for(D = 5'b00000; D <= 5'b01111; D = D + 5'b00001)
		#100;
end

initial
	$monitor($time ,"\t D=%b Y=%b", D[3:0], Y);

endmodule
