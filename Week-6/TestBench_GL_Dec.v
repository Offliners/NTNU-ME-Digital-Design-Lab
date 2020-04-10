module TestBench_GL_Dec;

wire [7:0]D;
reg [2:0]I;
reg [1:0]E;

GL_decoder_3_bit D0(D, I, E);

initial 
begin
	for(E = 2'b00; E <= 2'b01; E = E + 2'b01)
		for(I = 3'b000; I <= 3'b110; I = I + 3'b001)
			#50;

end

initial 
	$monitor($time, "\t I=%b D=%b E=%b", I, D, E);
	
endmodule
