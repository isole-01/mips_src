`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:26:17 05/14/2021 
// Design Name: 
// Module Name:    ifid 
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
module ifid(clk,next_pc,instruction,hit,instruction_out,next_pc_out,hit_out);
	input clk;
	input [31:0]next_pc;
	input [31:0]instruction;
	input hit;
	output reg [31:0]instruction_out;
	output reg [31:0]next_pc_out;
	output reg hit_out;
	
	
	always @(negedge clk)begin
		instruction_out <= instruction;
		hit_out <= hit;
		next_pc_out <= next_pc;
	end


endmodule
