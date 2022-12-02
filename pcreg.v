`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:45:55 04/03/2021 
// Design Name: 
// Module Name:    pcreg 
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
module pcreg(clk,hit,nextpc,pc);
	input wire clk;
	input wire [31:0] nextpc;
	output reg [31:0]pc;
	input wire hit;
	initial begin
		pc=0;
	end
	
	always @(negedge clk)begin
		if(hit == 1)begin
			pc=nextpc;
		end
	end
	

endmodule
