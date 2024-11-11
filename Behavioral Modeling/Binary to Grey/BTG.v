module btg(
    input [3:0] a,
    output reg [3:0] g
);

always @ (a)
begin
    case (a)
    4'b0000 : begin g = 4'b0000; end
    4'b0001 : begin g = 4'b0001; end
    4'b0010 : begin g = 4'b0011; end
    4'b0011 : begin g = 4'b0010; end
    4'b0100 : begin g = 4'b0110; end
    4'b0101 : begin g = 4'b0111; end
    4'b0110 : begin g = 4'b0101; end
    4'b0111 : begin g = 4'b0100; end
    4'b1000 : begin g = 4'b1100; end
    4'b1001 : begin g = 4'b1101; end
    4'b1010 : begin g = 4'b1111; end
    4'b1011 : begin g = 4'b1110; end
    4'b1100 : begin g = 4'b1010; end
    4'b1101 : begin g = 4'b1011; end
    4'b1110 : begin g = 4'b1001; end
    4'b1111 : begin g = 4'b1000; end
    
    endcase

end

endmodule