module TestBench_SEG;

wire [7:0]Y;
reg [4:0]I;

Binary_to_7Seg S0(Y[6:0], I[3:0]);

initial
begin 
	for(I = 5'b00000; I < 5'b01111; I = I + 5'b00001)
		#50;
end

initial
	$monitor($time, "\t I=%b Y=%b", I[3:0], Y[6:0]);
	
endmodule
