`timescale 1ns/1ps

module pager_tb();

    reg x, rst;
    wire z;

    pager u1(x, rst, z);

    initial begin
        x = 1;
        rst = 1; #50;
        rst = 0; #500;
        
        // Test 1:
        #20 x = 0;
        #20 x = 0;
        #20 x = 1;
        #20 x = 1;
        
        // Test 2: 
        #20 x = 0;
        #20 x = 0;
        #20 x = 0;

        // Test 3:
        #20 rst = 1; 
        #20 rst = 0;

        // Test 4
        #20 x = 1;
        #20 x = 0;
        #20 x = 0;
        #20 x = 1;
        #20 x = 0;
        #20 x = 0;
        #20 x = 0;


        #1000 $stop;
    end

endmodule
