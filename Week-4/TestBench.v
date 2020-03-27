module TestBench;

reg [3:0] I;
wire [11:0] O;

Lab5 G0(O, I);

initial
	begin 
		for(I = 4'b0000; I < 4'b1111; I = I + 4'b0001)
			#50;
	end
	
 initial
	$monitor($time, "\t Binary : %b, GL_Gray : %b, DF_Gray : %b, BM_Gray : %b", I, O[3:0], O[7:4], O[11:8]);
	
endmodule
