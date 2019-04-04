module counter
(
	input logic start,
	input logic clk,
	input logic rst,

	output logic ready,
	output logic [4:0] q
);

logic [4:0] next_value;
logic enable;

always@(posedge clk) begin
	if(rst) begin
		q<=5'd0;
		next_value<=5'd8;
		enable<=1'd1;
	end
	else begin
		if(enable)
			q<=next_value;
		else
			q<=q;
	end

	if(q==0) begin
		next_value=5'd8;
		ready=1'd1;
		enable=start;
	end
	else begin
		next_value=q-5'd1;
		ready=1'd0;
		enable=1'd1;
	end
end

endmodule
