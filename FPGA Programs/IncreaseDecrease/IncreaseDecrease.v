`timescale 1ns / 1ps

module IncreaseDecrease(
    input clk,
    input key1,
    input key2,
    output reg [3:0] LED,
    output reg [7:0] sseg,
	output reg [5:0] en
    );

integer counter=0;
integer counter1=0;
reg clk_user =1'b0; 
reg clk_sseg =1'b0; 


integer flag = 0;

// Seven Segment :
reg [7:0] mem[0:9];

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


// CLOCK :
always @ (posedge clk)
begin
  if(counter >= 3000000)
	begin
	counter <= 0;
	clk_user <= ~clk_user;
	end
  else
	counter <= counter + 1;
end



// SSEG CLOCK :
always @ (posedge clk)
begin
  if(counter1 >= 25000)
	begin
	counter1 <= 0;
	clk_sseg <= ~clk_sseg;
	end
  else
	counter1 <= counter1 + 1;
end

initial en = 4'b1111111;


reg [7:0] number = 8'd100;
reg [3:0] digit = 4'd0;

// Seven Segment :
always @(posedge clk_sseg)
begin
	if(flag == 3'b000)
	begin
		digit = number%10;
		en = 6'b111110;
		sseg = mem[digit];
        sseg[7] = 0;
	end
	else if(flag == 3'b001)
	begin
		digit = (number/10)%10;
		en = 6'b111101;
		sseg = mem[digit];	
        sseg[7] = 0;	
	end
	else if(flag == 3'b010)
	begin
		digit = (number/100)%10;
		en = 6'b111011;	
		sseg = mem[digit];
        sseg[7] = 0;
	end
	flag <= flag + 1'b1;
	if(flag == 3'b11)
		flag <= 3'b000;
end

// Number :
always @(posedge clk_user)
begin
    if (key1 == 0)
    begin
        number = number + 1;
    end
    if (key2 == 0)
    begin
        number = number - 1;
    end
end




endmodule
