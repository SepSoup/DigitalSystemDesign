module fact(

input [3:0] n,
output reg [31:0] fact_n

);


always @(n) fact(n,fact_n);

task automatic fact( 
    input [3:0] n,
    output[31:0] fact_n );

reg [31:0] fact0;

begin 
    if (n < 2 )
        fact_n = 1;
    else
    begin
        fact(n-1,fact0);
        fact_n = fact0 * n;
    end
end
endtask



endmodule