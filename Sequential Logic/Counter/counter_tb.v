`timescale 1ns/1ps

module counter_tb() ;

reg x , rst ;
wire [3:0] z;

counter counter1(x , rst ,  z);

initial begin
    x = 0 ;
    rst = 1; #50;
    rst = 0; #900;

    #1000 $stop;
end

always #100 x = ~x ;

endmodule