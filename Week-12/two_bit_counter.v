module two_bit_counter(output reg [1:0]state, input E, U, clk, rst);

reg [1:0]next_state;
parameter S0=2'b00, S1=2'b01, S2=2'b10, S3=2'b11;

always @ (posedge clk, negedge rst)
begin
	if(!rst)
		state <= S0;
	else
		state <= next_state;
end

always @ (state, E, U)
begin
	case(state)
		S0 : 
			casez({E, U})
				2'b0? : next_state = S0;
				2'b10 : next_state = S3;
				2'b11 : next_state = S1;
			endcase
		S1 : 
			casez({E, U})
				2'b0? : next_state = S1;
				2'b10 : next_state = S0;
				2'b11 : next_state = S2;
			endcase
		S2 : 
			casez({E, U})
				2'b0? : next_state = S2;
				2'b10 : next_state = S1;
				2'b11 : next_state = S3;
			endcase
		S3 : 
			casez({E, U})
				2'b0? : next_state = S3;
				2'b10 : next_state = S2;
				2'b11 : next_state = S0;
			endcase
	endcase
end

endmodule
