`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:11:46 05/23/2021 
// Design Name: 
// Module Name:    control 
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
module control(opcode, RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, ALUOp);
	
	input [5:0] opcode;
	output RegDst;
	output ALUSrc;
	output MemtoReg;
	output RegWrite;
	output MemRead;
	output MemWrite;
	output Branch;
	output [2:0] ALUOp;
	
	assign RegDst = (opcode == 6'b000000) ? 1'b1 : 1'b0;
	assign ALUSrc = (opcode == 6'b000000 || opcode == 6'b000110) ? 1'b0 : 1'b1;
	assign MemtoReg = (opcode == 6'b000100) ? 1'b1 : 1'b0;
	assign RegWrite = (opcode == 6'b000101 || opcode == 6'b000110) ? 1'b0 : 1'b1;
	assign MemRead = (opcode == 6'b000100) ? 1'b1 : 1'b0;
	assign MemWrite = (opcode == 6'b000101) ? 1'b1 : 1'b0;
	assign Branch = (opcode == 6'b000110) ? 1'b1 : 1'b0;
	assign ALUOp = (opcode == 6'b000100 || opcode == 6'b000101 || opcode == 6'b000111) ? 3'b011 : (opcode == 6'b000000) ? 3'b000 : (opcode == 6'b000110) ? 3'b001 : 3'b010;
	
	
endmodule
