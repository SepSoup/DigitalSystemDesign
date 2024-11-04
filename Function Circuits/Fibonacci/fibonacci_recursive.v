module fibonacci(

input [3:0] n,
output reg [31:0] fib_n

);


always @(n) fib_n = fibonacci(n);

function  automatic [31:0] fibonacci( input [3:0] n );
begin 
    fibonacci = 0;
    if (n < 2 )
        fibonacci = 1;
    else
        fibonacci = fibonacci(n-2) + fibonacci(n-1);
end
endfunction



endmodule