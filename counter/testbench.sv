`timescale 1ns/1ps

module testbench ();


   logic  start;
   logic  clk;
   
   logic  ready;

   

   counter dut ( .start(start), .clk(clk), .ready(ready) );

   
   always

     begin 

        #5 clk = !clk;

     end


   initial

     begin

        clk = 0;
        start = 0;

        @(negedge clk);
        
        start = 1;
        
        @(negedge clk);
        @(negedge clk);
        
        start = 0;
        
        @(negedge clk);
        @(negedge clk);

        $stop;

     end

endmodule
