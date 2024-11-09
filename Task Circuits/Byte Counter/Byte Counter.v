module counter(

input [7:0] num,
output reg [3:0] ones,
output reg [3:0] zeroes

);

always @(num) counter(num , ones , zeroes);

task counter( 
    input [7:0] num , 
    output reg [3:0] ones ,
    output reg [3:0] zeroes );

integer i;
begin 
    ones = 0;
    zeroes = 0;
    for(i=0;i<=7;i=i+1)
        if (num[i] == 1)
            ones = ones + 1;
    zeroes = 8 - ones;
end
endtask



endmodule