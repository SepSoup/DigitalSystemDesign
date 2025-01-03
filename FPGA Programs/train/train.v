`timescale 1ns / 1ps

module train(
    input clk,
	output reg [7:0] sseg,
	output reg[5:0] en,
    input key1,
    input key2
    );

integer counter1 = 0;
integer counter2 = 0;
integer counter3 = 0;

reg clk_user = 1'b0;
reg clk_sseg = 1'b0;
reg clk_button = 1'b0;

reg [2:0] flag = 3'b000;

integer forward = 1;
integer xclock = 5000000;

// user Clock :
always @ (posedge clk)
begin
  if(counter1 >= xclock)
	begin
	counter1 <= 0;
	clk_user <= ~clk_user;
	end
  else
	counter1 <= counter1 + 1;
end

// Clock Button :
always @ (posedge clk)
begin
  if(counter3 >= 5000000)
	begin
	counter3 <= 0;
	clk_button <= ~clk_button;
	end
  else
	counter3 <= counter3 + 1;
end

// sseg clock :
always @ (posedge clk)
begin
  counter2 <= counter2 + 1;
  if(counter2 >= 49000)
	begin
	counter2 <= 0;
	clk_sseg <= ~clk_sseg;
	end    
end

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

// sseg represent
always @(posedge clk_user)
begin

	if(flag == 3'b000)
	begin
		en = 6'b111100;
		sseg = mem[1];
		sseg[7] = 0;
	end
	else if(flag == 3'b001)
	begin
		en = 6'b111001;
		sseg = mem[1];		
	end
	else if(flag == 3'b010)
	begin
		en = 6'b110011;	
		sseg = mem[1];
		sseg[7] = 0;
	end
	else if(flag == 3'b011)
	begin
		en = 6'b100111;
		sseg = mem[1];
	end
	else if(flag == 3'b100)
	begin
		en = 6'b001111;
		sseg = mem[1];
		sseg[7] = 0;
	end
	
	if (forward)
        flag = flag + 1;
    else 
        flag = flag - 1;
	if(flag >= 3'b101)
        forward = 0;
    else if (flag <= 3'b000)
        forward = 1;
		
end

always @(posedge clk_button)
begin
    if (key1 == 0)
        xclock = xclock + 100000;
    if (key2 == 0)
        xclock = xclock - 100000;
end


endmodule
