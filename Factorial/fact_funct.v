module fact(

input [3:0] n,
output reg [31:0] fact_n

);


always @(n) fact_n = fact(n);

function  [31:0] fact( input [3:0] n );
integer i;
begin 
    fact = 1;
    for(i=1;i<=n;i=i+1)
        fact = fact * i;
end
endfunction



endmodule