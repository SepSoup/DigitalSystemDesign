`timescale 1ns / 1ps

module StopWatch(
    input clk,
    input key1,
    input key2,
	output reg [7:0] sseg,
	output reg[5:0] en
    );

initial sseg =8'b11000000;
initial en = 6'b000000;

reg [3:0] digit = 4'd0;

integer counter1 = 0;
integer counter2 = 0;

reg clk_user = 1'b0;
reg clk_timer = 1'b0;

reg on = 0;
reg [2:0] flag = 3'b000;

reg [9:0] miliseconds = 10'd0;
reg [5:0] seconds = 6'd0;
reg [5:0] minutes = 6'd0;



// Clock :
always @ (posedge clk)
begin
  if(counter1 >= 25000)
	begin
	counter1 <= 0;
	clk_user <= ~clk_user;
	end
  else
	counter1 <= counter1 + 1;
end
// Milisecond Clock :
always @ (posedge clk)
begin
  counter2 <= counter2 + 1;
  if(counter2 >= 25500)
	begin
	counter2 <= 0;
	clk_timer <= ~clk_timer;
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

always @(posedge clk_user)
begin
    
    if (key1 == 0) 
        begin
            // Toggle On or OFF
            on <= ~on;
        end


	if(flag == 3'b000)
	begin
		digit = (miliseconds / 10) % 10;
		en = 6'b111110;
		sseg = mem[digit];
		sseg[7] = 0;
	end
	else if(flag == 3'b001)
	begin
		digit = (miliseconds / 100) % 10; 
		en = 6'b111101;
		sseg = mem[digit];		
	end
	else if(flag == 3'b010)
	begin
		digit = seconds % 10;
		en = 6'b111011;	
		sseg = mem[digit];
		sseg[7] = 0;
	end
	else if(flag == 3'b011)
	begin
		digit = (seconds / 10) % 10;
		en = 6'b110111;
		sseg = mem[digit];
	end
	else if(flag == 3'b100)
	begin
		digit = minutes % 10;
		en = 6'b101111;
		sseg = mem[digit];
		sseg[7] = 0;
	end
	else if(flag == 3'b101)
	begin
		digit = (minutes / 10) % 10;
		en = 6'b011111;
		sseg = mem[digit];
	end
	
	flag <= flag + 1'b1;
	if(flag == 3'b110)
		flag <= 3'b000;
end

// Calculating the number to Show
always @(posedge clk_timer)
begin
if (key2 == 0) 
        begin
            // Reset all counters and the state
            miliseconds <= 10'd0;
            seconds <= 6'd0;
            minutes <= 6'd0;
        end 
if(on == 1'b1)
	begin
		if(miliseconds == 10'd999)
			begin
				miliseconds <= 10'd0;
				if(seconds == 6'd59)
					begin
						seconds <= 6'd0;
						if(minutes == 6'd59)
							minutes <= 6'd0;
						else
							minutes <= minutes + 1;
					end
				else
					seconds <= seconds + 1;
			end
		else
			miliseconds <= miliseconds + 1;
	end
end



endmodule
