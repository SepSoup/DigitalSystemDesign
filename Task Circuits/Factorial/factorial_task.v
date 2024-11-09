module fact(

input [3:0] n,
output reg [31:0] fact_n

);


always @(n) fact(n,fact_n);

task fact( 
    input [3:0] n,
    output[31:0] fact_n );

integer i;

begin 
    fact_n = 1;
    for(i=1;i<=n;i=i+1)
        fact_n = fact_n * i;
end
endtask



endmodule