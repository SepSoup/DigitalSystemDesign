`timescale 1 ns / 1 ps 
module alu4_tb();

reg [3:0] a;
reg [3:0] b;
reg [1:0] op;
reg add_sub;
wire [3:0] f;
wire zero;
wire overflow;


alu4 alu1(a,b,{add_sub,op},f,zero,overflow);

integer i, j;

initial
begin
    begin
        //AND
        {add_sub,op} = 3'b000;
            for(i=0;i<=15;i=i+1) begin
                for(j=0;j<=15;j=j+1) begin
                    a = i; 
                    b = j; 
                    #5;
                end
            end

        // OR
        {add_sub,op} = 3'b001;
            for(i=0;i<=15;i=i+1) begin
                for(j=0;j<=15;j=j+1) begin
                    a = i; 
                    b = j; 
                    #5;
                end
            end

        //ADD
        {add_sub,op} = 3'b010;
            for(i=0;i<=15;i=i+1) begin
                for(j=0;j<=15;j=j+1) begin
                    a = i; 
                    b = j; 
                    #5;
                end
            end

        //SUB
        {add_sub,op} = 3'b110;
            for(i=0;i<=15;i=i+1) begin
                for(j=0;j<=15;j=j+1) begin
                    a = i; 
                    b = j; 
                    #5;
                end
            end

        //SLT
        {add_sub,op} = 3'b111;
            for(i=0;i<=15;i=i+1) begin
                for(j=0;j<=15;j=j+1) begin
                    a = i; 
                    b = j;
                    #5;
                end
            end
    end
end    

endmodule