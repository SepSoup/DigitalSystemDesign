module afa(
    input a , b , c,
    output reg cout , s 
);

always @ (a or b or c)
begin
    s = a ^ b ^ c;
    cout = (a&b) | (a&c) | (b&c);
end

endmodule
