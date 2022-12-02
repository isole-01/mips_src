`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:04:33 04/06/2021 
// Design Name: 
// Module Name:    instructionmemory 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module instructionmemory(clk,address,dataline);
	input wire clk;
	input wire [31:0]address;
	output reg [127:0]dataline;
	reg [31:0]addressreg;
	reg [3:0]counter=0;
	reg [7:0]memory[1023:0];
	reg flag=0;
	
	integer i;
	initial begin
		for(i=0;i<1023;i=i+1)begin
			memory[i]=i%200;
		end
	end	
  
	always @(posedge clk)begin
		if(address[31:4] !== addressreg[31:4])begin
			dataline <= 128'bx;
			counter <= 0;
			flag <= 1;
			addressreg[31:4] <= address[31:4];
		end
		else if(flag == 1)begin
			if(counter < 5)begin
				counter <= counter+1;
			end
			else if(counter == 5) begin
				dataline<={
					
					memory[{addressreg[31:4],4'd15}],
					memory[{addressreg[31:4],4'd14}],
					memory[{addressreg[31:4],4'd13}],
					memory[{addressreg[31:4],4'd12}],
					
					memory[{addressreg[31:4],4'd7}],
					memory[{addressreg[31:4],4'd6}],
					memory[{addressreg[31:4],4'd5}],
					memory[{addressreg[31:4],4'd4}],
					
					memory[{addressreg[31:4],4'd11}],
					memory[{addressreg[31:4],4'd10}],
					memory[{addressreg[31:4],4'd9}],
					memory[{addressreg[31:4],4'd8}],
					
					memory[{addressreg[31:4],4'd3}],
					memory[{addressreg[31:4],4'd2}],
					memory[{addressreg[31:4],4'd1}],
					memory[{addressreg[31:4],4'd0}]
       							
				};
				counter <= 0;
				flag <= 0;
			end
		end
	end
	
endmodule
