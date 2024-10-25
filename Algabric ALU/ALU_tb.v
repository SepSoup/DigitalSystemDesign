`timescale 1 ns / 1 ps 
module alu_tb();

reg a , b;
reg i3;
reg add_sub;
reg cin;
reg [1:0] op;

wire co,r; 

alu alu1(a,b,i3,add_sub,cin,op,co,r);

integer i;


initial
begin
    i3 = 1'b1;
    begin
        //AND
        cin = 1'b0;
        {add_sub,op} = 3'b000;
        {a, b} = 2'b00; #5;
        {a, b} = 2'b01; #5;
        {a, b} = 2'b10; #5;
        {a, b} = 2'b11; #5;

        // OR
        cin = 1'b0;
        {add_sub,op} = 3'b001;
        {a, b} = 2'b00; #5;
        {a, b} = 2'b01; #5;
        {a, b} = 2'b10; #5;
        {a, b} = 2'b11; #5;

        //ADD
        for(i=0;i<=1;i=i+1) 
        begin
        cin = i;
        {add_sub,op} = 3'b010;
        {a, b} = 2'b00; #5;
        {a, b} = 2'b01; #5;
        {a, b} = 2'b10; #5;
        {a, b} = 2'b11; #5;
        end

        //SUB
        for(i=0;i<=1;i=i+1) 
        begin
        cin = i;
        {add_sub,op} = 3'b110;
        {a, b} = 2'b00; #5;
        {a, b} = 2'b01; #5;
        {a, b} = 2'b10; #5;
        {a, b} = 2'b11; #5;
        end

        //SLT
        cin = 1'b1;
        {add_sub,op} = 3'b111;
        {a, b} = 2'b00; #5;
        {a, b} = 2'b01; #5;
        {a, b} = 2'b10; #5;
        {a, b} = 2'b11; #5;
    end
end    

endmodule