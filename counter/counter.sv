// counter.sv

module counter
  (
    input logic start,
    input logic clk,
    
    output logic ready
  );
  
  logic q, enable, next_value;
  
  always_comb
    begin
      
      if(q==0) begin
        next_value=5'd8;
        ready=1;
        enable=start;
      end
      else begin
        next_value=q-1;
        ready=0;
        enable=1;
      end
      
    end
  
  always@(posedge clk)
    begin
      if(enable)
        q<=next_value;
      else
        q<=q;
    end
  
endmodule
