module alu4(
    input [3:0] a,
    input [3:0] b,
    input [2:0] op,

    output reg [3:0] f,
    output reg zero,
    output reg overflow
);


always @ (*) 
begin
  overflow = 0;
  case(op)
  // AND :  
  3'b000 : 
  begin f = a & b; end
  // OR :
  3'b001 : 
  begin f = a | b; end
  // ADD :
  3'b010 : 
  begin {overflow, f} = a + b; end
  // SUB :
  3'b110:  
  begin {overflow, f} = a - b; end
  // SLT
  3'b111: 
  begin f = (a < b) ? 4'b0001 : 4'b0000; end

  endcase
  begin zero = (f == 4'b0000) ? 1 : 0; end

end

endmodule