module counter(

input [7:0] num,
output [3:0] ones

);

assign ones = counter(num);

function [3:0] counter( input [7:0] num );

integer i;
begin 
    counter = 0;
    for(i=0;i<=7;i=i+1)
        if (num[i] == 1)
            counter = counter + 1;
end
endfunction



endmodule