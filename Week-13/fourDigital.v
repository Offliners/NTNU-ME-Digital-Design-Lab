module fourDigital(output reg [11:0]Y, input [15:0] data, input clk);

parameter S0=2'b00, S1=2'b01, S2=2'b10, S3=2'b11;
reg [1:0]state, next_state;
wire [6:0]ss, s, ts, m;

sevenDecoder SD0(ss, data[3:0]);
sevenDecoder SD1(s, data[7:4]);
sevenDecoder SD2(ts, data[11:8]);
sevenDecoder SD3(m, data[15:12]);

always @ (posedge clk)
	state = next_state;
	
always @ (state)
begin
	case(state)
		S0 : next_state <= S1;
		S1 : next_state <= S2;
		S2 : next_state <= S3;
		S3 : next_state <= S0;
	endcase
end

always @ (state, ss, s, ts, m)
begin
	case(state)
		S0 : Y <= {4'b1110, ss, 1'b0};
		S1 : Y <= {4'b1101, s, 1'b0};
		S2 : Y <= {4'b1011, ts, 1'b0};
		S3 : Y <= {4'b0111, m, 1'b0};
	endcase
end

endmodule
