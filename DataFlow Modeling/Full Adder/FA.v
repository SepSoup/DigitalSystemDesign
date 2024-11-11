module fa(
    input a , b , c,
    output cout , s 
);

begin
    // assign s = a ^ b ^ c;
    // assign cout = (a&b) | (a&c) | (b&c);
    assign {count,s} = a + b + c;
end

endmodule
