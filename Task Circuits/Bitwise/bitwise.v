module bitwise(
    input [3:0] a,
    input [3:0] b,
    output reg [3:0] aandb,
    output reg [3:0] aorb,
    output reg [3:0] anandb,
    output reg [3:0] anorb,
    output reg [3:0] axorb,
    output reg [3:0] axnorb
);

always @(a or b) bitwise(a , b , aandb , aorb , anandb , anorb , axorb , axnorb);

task bitwise(
    input [3:0] a,
    input [3:0] b,
    output reg [3:0] aandb,
    output reg [3:0] aorb,
    output reg [3:0] anandb,
    output reg [3:0] anorb,
    output reg [3:0] axorb,
    output reg [3:0] axnorb
);
begin
    aandb = a & b;
    aorb = a | b;
    anandb = ~(a & b);
    anorb = ~(a | b);
    axorb = a ^ b;
    axnorb = ~(a ^ b);
end
endtask
endmodule