module TestBench_BtoG;

wire [3:0]Y;
reg [4:0]I;

Bin2Gray B(Y[3:0], I[3:0]);

initial
begin
	for (I = 5'b00000; I <= 5'b01111; I = I + 5'b00001)
		#50;
end

initial
	$monitor ($time, "\t I = %b, Y = %b", I, Y);
	
endmodule
