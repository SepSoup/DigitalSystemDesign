`timescale 1ns / 1ps

module shift(
    input clk,
	output reg [7:0] sseg,
	output reg[5:0] en
    );


integer counter1 = 0;
integer counter2 = 0;

reg clk_user = 1'b0;
reg clk_sseg = 1'b0;

reg [2:0] flag = 3'b000;

integer a = 4 ;
integer b = 5 ;
integer c = 6 ;
integer d = 7 ;
integer e = 8 ;
integer f = 9 ;



// user Clock :
always @ (posedge clk)
begin
  if(counter1 >= 25000000)
	begin
	counter1 <= 0;
	clk_user <= ~clk_user;
	end
  else
	counter1 <= counter1 + 1;
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
always @(posedge clk_sseg)
begin

	if(flag == 3'b000)
	begin
		en = 6'b111110;
		sseg = mem[a];
		sseg[7] = 0;
	end
	else if(flag == 3'b001)
	begin
		en = 6'b111101;
		sseg = mem[b];		
	end
	else if(flag == 3'b010)
	begin
		en = 6'b111011;	
		sseg = mem[c];
		sseg[7] = 0;
	end
	else if(flag == 3'b011)
	begin
		en = 6'b110111;
		sseg = mem[d];
	end
	else if(flag == 3'b100)
	begin
		en = 6'b101111;
		sseg = mem[e];
		sseg[7] = 0;
	end
	else if(flag == 3'b101)
	begin
		en = 6'b011111;
		sseg = mem[f];
	end
	
	flag <= flag + 1'b1;
	if(flag == 3'b110)
		flag <= 3'b000;
end


always @(posedge clk_user)
begin
    a = a + 1;
    if ( a > 9 )
        a = 4;
    b = b + 1;
    if ( b > 9 )
        b = 4;
    c = c + 1;
    if ( c > 9 )
        c = 4;
    d = d + 1;
    if ( d > 9 )
        d = 4;
    e = e + 1;
    if ( e > 9 )
        e = 4;
    f = f + 1;
    if ( f > 9 )
        f = 4;
    
end

endmodule
