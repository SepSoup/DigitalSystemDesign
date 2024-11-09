`timescale 1 ns / 1 ps 

module bitwise_tb();

reg [3:0] a; 
reg [3:0] b;
wire [3:0] aandb;
wire [3:0] aorb;
wire [3:0] anandb;
wire [3:0] anorb;
wire [3:0] axorb;
wire [3:0] axnorb; 

bitwise u1(a,b,aandb,aorb,anandb,anorb,axorb,axnorb);

integer i , j;
initial 
begin
for( i = 0 ; i <= 15 ; i = i + 1)
    for ( j = 0 ; j <= 15 ; j = j + 1)
    begin
        a = i;
        b = j;
        #5;
    end

end

endmodule