module D_Latch_behavior(output reg Q, input D, En, rst);

always @ (posedge En, negedge rst)
begin
	if(!rst)
		Q <= 1'b0;
	else
		Q <= D;
end

endmodule
