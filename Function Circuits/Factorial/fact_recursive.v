module rec_fact(

input [3:0] n,
output reg [31:0] fact_n

);


always @(n) fact_n = fact(n);

// automatic is used to create recursive functions
function  automatic [31:0] fact( input [3:0] n );
begin 
    fact = 1;
    if (n < 2 )
        fact = 1;
    else
        fact = fact(n-1) * n;
end
endfunction



endmodule