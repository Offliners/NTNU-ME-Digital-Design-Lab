module TestBench_BF_Dec;

wire [7:0]D;
reg [3:0]I;
reg [1:0]E;

BF_decoder_3_bit D0(D, I, E[0]);

initial 
begin
	for(E = 2'b00; E <= 2'b01; E = E + 2'b01)
		for(I = 4'b0000; I <= 4'b0111; I = I + 4'b0001)
			#50;

end

initial 
	$monitor($time, "\t I=%b D=%b E=%b", I, D, E);
	
endmodule
