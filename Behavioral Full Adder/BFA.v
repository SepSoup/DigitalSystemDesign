module bfa(
    input a , b , c,
    output reg~ cout , s 
    // we use reg because cout and s are valued based on behavoioral modeling
    // wires are used for structual modeling.
);


// sensetive list checks for change in it's arguements
// case is used to implement a truth table of a module
always @ (a or b or c)
begin
    case ({a,b,c})
    3'b000 : begin cout = 0; s = 0; end
    3'b001 : begin cout = 0; s = 1; end
    3'b010 : begin cout = 0; s = 1; end
    3'b011 : begin cout = 1; s = 0; end
    3'b100 : begin cout = 0; s = 1; end
    3'b101 : begin cout = 1; s = 0; end
    3'b110 : begin cout = 1; s = 0; end
    3'b111 : begin cout = 1; s = 1; end
    endcase

end

endmodule
