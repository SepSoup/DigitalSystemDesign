`timescale 1ns / 1ps

module sevensegments(
    input clk,
	output reg [7:0] sseg1,
	output reg[5:0] en  
    );

initial sseg1 =8'b11000000;
initial en = 6'b111100;

integer counter;
reg clk_user =1'b0;

always @ (posedge clk)
begin
    counter <= counter + 1;
  if(counter >= 30000000 )begin
  counter <=0;
  clk_user <= ~clk_user;
  end    
end

reg [7:0] mem[0:9];

// h , g , f , e , d , c , b , a
// 1 , 1 , 0 , 0 , 0 , 0 , 0 , 0 -> 0
// 1 , 1 , 1 , 1 , 1 , 0 , 0 , 1 -> 1

initial 
begin
mem[0] = 8'b11000000;
mem[1] = 8'b11111001;
mem[2] = 8'b10100100;
mem[3] = 8'b10110000;
mem[4] = 8'b10011001;
mem[5] = 8'b10010010;
mem[6] = 8'b10000010;
mem[7] = 8'b11111000;
mem[8] = 8'b10000000;
mem[9] = 8'b10010000;
end


always @(posedge clk_user)
	begin 
            en[0] = ~en[0];
            en[1] = ~en[1];
	        sseg1 = mem[5];
    end


endmodule
