`timescale 1ns/1ps

module pc (
    input x , rst , 
    output reg [3:0] z
);

reg [3:0] z1;

// internal clock :
reg clk = 0;
always #20 clk = ~clk;

always @ (posedge clk or posedge rst)
begin

    if ( rst ) 
            begin z1 = 4'b0000; end
    else 
        case ( x )
        1'b1 : begin z1 = z + 1; end
        1'b0 : begin z1 = z - 1; end
        endcase
    #5 z = z1;
end


endmodule

