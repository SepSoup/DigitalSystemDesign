`timescale 1ns / 1ps

module sevensegments(
    input clk,
	output reg [7:0] sseg,
	output reg[5:0] en  
    );

initial sseg =8'b11000000;
initial en = 6'b000000;
integer flag = 3'b000;

integer counter;
reg clk_user =1'b0;

always @ (posedge clk)
begin
    counter <= counter + 1;
  if(counter >= 67000 )begin
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
        case (flag)
        3'b000 : begin en = 6'b111110; sseg = mem[1]; end
        3'b001 : begin en = 6'b111101; sseg = mem[2]; end
        3'b010 : begin en = 6'b111011; sseg = mem[3]; end
        3'b011 : begin en = 6'b110111; sseg = mem[4]; end
        3'b100 : begin en = 6'b101111; sseg = mem[5]; end
        3'b101 : begin en = 6'b011111; sseg = mem[6]; end
        endcase 
        if (flag == 3'b101 )
            flag = 0;
        else 
            flag = flag + 1;
    end


endmodule
