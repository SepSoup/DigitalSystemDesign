module afa(
    input a , b , c,
    output reg cout , s 
);

always @ (a or b or c)
begin
    {cout,s} = a + b + c;
end

endmodule
