module fact(

input [3:0] n,
output reg [31:0] fact_n

);

integer i;

always @(n) begin
    fact_n = 1;
    i = n ;
    while ( i >= 1 )
    begin
      fact_n = fact_n * i;
      i = i -1;
    end
end


endmodule