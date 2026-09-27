module tb_down_counter;
    parameter N = 4;

    reg clk;
    reg rst;
    wire [N-1:0] count;

   
    down_counter #(
        .N(N)
    ) uut (
        .clk(clk),
        .rst(rst),
        .count(count)
    );

    always #5 clk = ~clk;
    initial begin
    
        clk = 0;
        rst = 1;

        
        #20;
        rst = 0; 

      
        #200;

   
        rst = 1;
        #10;
        rst = 0;

        #50;

     
        $display("Simulation completed successfully.");
        $finish;
    end
    initial begin
        $monitor("Time = %0t | rst = %b | count = %d (%b)", $time, rst, count, count);
    end

endmodule
