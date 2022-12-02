`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:36:19 05/25/2021 
// Design Name: 
// Module Name:    id_ex 
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
module id_ex(input clk, input [31:0]readData1,input [31:0]readData2,input [31:0]signExImmediate,
	input RegDst, input ALUSrc, input MemtoReg, input RegWrite,input MemRead,input MemWrite,
	input Branch, input [2:0]ALUOp,input[4:0] rd,input[4:0] rt,input [5:0]funct, input [31:0]nextPC,
	input hit,
	
	output reg[31:0]readData1Out,output reg [31:0]readData2Out,output reg [31:0]signExImmediateOut,output reg RegDstOut,
	output reg ALUSrcOut, output reg MemtoRegOut, output reg RegWriteOut,output reg MemReadOut,output reg MemWriteOut,
	output reg BranchOut, output reg [2:0]ALUOpOut,output reg[4:0]rdOut,output reg[4:0]rtOut,output reg[5:0]functOut,
	output reg[31:0]nextPCOut, output reg hitOut
);
	always@(negedge clk)
	begin
		if(hit)
		begin
			readData1Out <= readData1;
			readData2Out <= readData2;
			signExImmediateOut <= signExImmediate;
			rdOut <= rd;
			rtOut <= rt;
			functOut <=funct;	
			ALUSrcOut <= ALUSrc;
			RegDstOut <= RegDst;
			MemtoRegOut <= MemtoReg;
			RegWriteOut <= RegWrite;
			MemReadOut <= MemRead;
			MemWriteOut <= MemWrite;
			nextPCOut <= nextPC;
			BranchOut <= Branch;
			ALUOpOut <= ALUOp;
		end
		
	end
	
	always@(hit)
	begin
			hitOut = hit;
	end



endmodule
