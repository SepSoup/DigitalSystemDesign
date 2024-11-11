module alu( 
    input a,
    input b,
    input i3,               // SLT
    input add_sub,          // ADD/SUB
    input cin,
    input [1:0] op,         // Operation
    output reg co, r        // Carry out , result
);


// Operations :
always @(*) 
begin

    case({add_sub,op})
    // AND :
    3'b000 : 
    begin r = a & b; co = 0; end
    // OR :
    3'b001 :
    begin r = a | b; co = 0; end
    // ADD :
    3'b010 :
    begin {co,r} = a + b + cin ; end
    // SUB :
    3'b110 :
    begin {co,r} = a + (~b) + cin ; end
    // SLT :
    3'b111 :
    begin r = (a < b) ? 1'b1 : 1'b0; end
    endcase  

end

endmodule
