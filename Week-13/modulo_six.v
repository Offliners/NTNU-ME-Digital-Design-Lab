module modulo_six(output [3:0]Y, output reg carry, input clk, rst);

parameter S0=4'b0000, S1=4'b0001, S2=4'b0010, S3=4'b0011, S4=4'b0100, S5=4'b0101;
reg [3:0] state, next_state;

always @ (posedge clk, negedge rst)
begin
	if(!rst)
		state = S0;
	else
		state = next_state;
end

always @ (state)
begin
	case(state)
		S0 : next_state <= S1;
		S1 : next_state <= S2;
		S2 : next_state <= S3;
		S3 : next_state <= S4;
		S4 : next_state <= S5;
		S5 : next_state <= S0;
	endcase
end
	
always @ (state)
begin
	case(state)
		S0, S1, S2, S3, S4 : carry = 1'b0;
		S5 : carry = 1'b1;
	endcase
end

assign Y = state;

endmodule
