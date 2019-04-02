// counter.sv

module counter
  (
    input logic start,
    input logic clk,
    
    output logic ready
  );
  
  logic q, enable, data, next_value;
  
  always@(posedge clk)
    begin
      if(enable)
        q<=next_value
      else
        q<=q
    end
  
endmodule
