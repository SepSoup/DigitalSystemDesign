`timescale 1ns/1ps

module pager_tb();

    reg x, rst;
    wire z;

    pager u1(x, rst, z);

    initial begin
        x = 0;
        rst = 1;
        #50;
        rst = 0;
        
        // Test 1: ]
        #10 x = 0;
        #10 x = 0;
        #10 x = 1;
        #10 x = 1;
        
        // Test 2: 
        #10 x = 0;
        #10 x = 0;
        #10 x = 0;

        // Test 3:
        #20 rst = 1; 
        #10 rst = 0;

        // Test 4
        #10 x = 1;
        #10 x = 0;
        #10 x = 0;
        #10 x = 1;
        #10 x = 0;
        #10 x = 0;
        #10 x = 0;


        #1000 $stop;
    end

endmodule
