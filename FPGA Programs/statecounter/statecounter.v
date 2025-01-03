`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// 
// Create Date:    08:32:01 01/01/2025 
// Name: Sepehr Bazmi
// student number : 400405019 
// Module Name:    midterm 
// 
// 
//////////////////////////////////////////////////////////////////////////////////

module sseg(
    input clk,
    output reg [7:0] sseg,
	output reg[5:0] en
    );

reg [7:0] mem[0:10];

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

integer a = 0;
integer b = 0;
integer c = 7;
integer c1 = 0;
integer c2 = 0;
reg clock1 = 1'b0;
reg clock2 = 1'b0;

always @ (posedge clk)
begin
if(c1 >= 1000000)
begin
c1 <= 0;
clock1 <= ~clock1;
end
else
c1 <= c1 + 1;
end

always @ (posedge clk)
begin
c2 <= c2 + 1;
if(c2 >= 49000)
begin
c2 <= 0;
clock2 <= ~clock2;
end    
end

// Seven Segment :
reg [7:0] mem[0:10];

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

// state ha :
parameter s0= 6'b111111;
parameter s1= 6'b111110;
parameter s2= 6'b111100;
parameter s3= 6'b111000;
parameter s4= 6'b110001;
parameter s5= 6'b100011;
parameter s6= 6'b000111;
parameter s7= 6'b001111;
parameter s8= 6'b011111;

reg [5:0] current_state = s0;
reg [5:0] next_state;

reg [2:0]  active = 3'b000;
always @(posedge clock2)
begin
  if(active == 5)
      active <= 0;
    else
      active <= active + 1;
end

always @(posedge clock1)
begin
    case (current_state)
        s0: begin next_state = s1; end
        s1: begin next_state = s2; end
        s2: begin next_state = s3; end
        s3: begin next_state = s4; end
        s4: begin next_state = s5; end
        s5: begin next_state = s6; end
        s6: begin next_state = s7; end
        s7: begin next_state = s8; end
        s8: begin next_state = s0; end
    endcase

    current_state = next_state;
end



always @(active)
begin
    if (active == 3'b000:)
    begin
      en <= 6'b111110 | current_state;
	case (current_state)
    s1 : sseg <= mem[a];
    s2 : sseg <= mem[b];
    s3 : sseg <= mem[c];
	endcase
    end
    if ( active == 3'b001)
    begin
	en <= 6'b111101 | current_state;
    case (current_state)
    s2 : sseg <= mem[a];
    s3 : sseg <= mem[b];
    s4 : sseg <= mem[c];
	endcase
    end
    if (active == 3'b010: )
    begin
    en <= 6'b111011 | current_state;
	case (current_state)
    s3 : sseg <= mem[a];
    s4 : sseg <= mem[b];
    s5 : sseg <= mem[c];
	endcase
    end
    if (active == 3'b011)
    begin
        en <= 6'b110111 | current_state;
    case (current_state)
    s4 : sseg <= mem[a];
    s5 : sseg <= mem[b];
    s6 : sseg <= mem[c];
	endcase
    end
    if (active = 3'b100)
    begin
        en <= 6'b101111 | current_state;
             case (current_state)
    s5 : sseg <= mem[a];
    s6 : sseg <= mem[b];
    s7 : sseg <= mem[c];
	endcase
    end
    if (active == 3'b101)
    begin
        en <= 6'b011111 | current_state;
             case (current_state)
    s6 : sseg <= mem[a];
    s7 : sseg <= mem[b];
    s8 : sseg <= mem[c];
	endcase
    end

reg [2:0]  active = 3'b000;
always @(posedge clock2)
begin
  if(active == 5)
      active <= 0;
    else
      active <= active + 1;
end


end


endmodule


