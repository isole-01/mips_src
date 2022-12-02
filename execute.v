`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:13:28 05/25/2021 
// Design Name: 
// Module Name:    execute 
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
module execute(input clk,input [31:0]AluReadData1,input [31:0]AluReadData2,input [31:0] immediate,
	input [5:0]funct, input [2:0]ALUOp,input ALUSrc, output [31:0]ALUResult,output zero);

	wire [31:0]operand2;
	wire [3:0]ALUCnt;
	
	alucontrol alu_cont (
    .ALUOp(ALUOp), 
    .funct(funct), 
    .ALUCnt(ALUCnt)
    );
	 
	 
	 mux m2 (
    .i1(AluReadData2), 
    .i2(immediate), 
    .sel(ALUSrc), 
    .o(operand2)
    );



	 
	alu a_l_u (
    .ALUCnt(ALUCnt), 
    .shamt(immediate[10:6]), 
    .input1(AluReadData1), 
    .input2(operand2), 
    .zero(zero), 
    .result(ALUResult)
    );







	

endmodule

