module fibonacci(

input [3:0] n,
output reg [15:0] fib_n

);

integer i;
integer a , b , c;

always @(n) 
begin
    a = 1;
    b = 1;
    if ( n > 2 )
        for( i=3 ; i<=n ; i=i+1 )
        begin
            c = a + b;
            a = b;
            b = c;
        end
    else 
        c = 1;

    fib_n = c;
end


endmodule
