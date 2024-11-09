module fact(

input [3:0] n,
output reg [31:0] fact_n

);


always @(n) fact(n,fact_n);

task automatic fact( 
    input [3:0] n,
    output[31:0] fact_n );

integer i;

begin 
    fact_n = 1;
    if (n < 2 )
        fact_n = 1;
    else
        fact_n = fact(n-1) * n;
end
endtask



endmodule