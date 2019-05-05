

//Improve coverage testbench
`timescale 1ns/1ps



module testbench ();





   logic  start,clk,rst,ready;
   logic [4:0] q;

   counter DUT ( .clk(clk), .start(start), .ready(ready), .rst(rst), .q(q) );

   always



     begin 



        #5 clk = !clk;



     end





   initial



     begin



        clk = 1'd0;

        start = 1'd0;

	rst = 1'd1;

        #7 rst = 1'd0;

	@(negedge clk);
	start = 1'd1;
	@(negedge clk);
	
	@(negedge clk);
	@(negedge clk);
	@(negedge clk);
	start = 1'd0;
	@(negedge clk);
	@(negedge clk);
	@(negedge clk);
	@(negedge clk);
	@(negedge clk);
	@(negedge clk);
	@(negedge clk);
	@(negedge clk);
	@(negedge clk);
	@(negedge clk);
	@(negedge clk);
	@(negedge clk);
	@(negedge clk);
	@(negedge clk);
	@(negedge clk);
	@(negedge clk);
	@(negedge clk);
	@(negedge clk);
	@(negedge clk);
	@(negedge clk);
	start = 1'd1;
	@(negedge clk);
	@(negedge clk);
	@(negedge clk);
	@(negedge clk);

	$stop;


     end
endmodule
