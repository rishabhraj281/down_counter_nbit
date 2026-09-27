module down_counter#(parameter N=4)(clk, rst, count);
  input clk;
  input rst;
  output reg [N-1:0]count;

always @(posedge clk) begin
    if(rst)begin
        count <= 'b0;
end 
    else begin
     count <= count - 1'b1;
end
end

endmodule
