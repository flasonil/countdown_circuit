module counter
(
	input logic start,
	input logic clk,
	input logic rst,

	output logic ready,
	output logic [4:0] q
);

logic enable;

always@(posedge clk) begin
	if(rst) begin
		q<=5'd0;
		enable<=1'd1;
	end
	else begin
		if(enable==1 && q==0) begin
			q<=5'd8;
			ready=1'd1;
			enable<=start;
		end
		else if(enable==1 && q!=0) begin
			q<=q - 1'd1;
			ready=1'd0;
			enable=1'd1;
		end
		else if(enable ==0) begin
			enable <= start;
		end
	end
end
endmodule
