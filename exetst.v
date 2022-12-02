`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:26:24 05/27/2021
// Design Name:   execute
// Module Name:   C:/Users/Tr/Xilinx/hw1/exetst.v
// Project Name:  hw1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: execute
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module exetst;

	// Inputs
	reg clk;
	reg [31:0] AluReadData1;
	reg [31:0] AluReadData2;
	reg [31:0] immediate;
	reg [5:0] funct;
	reg [2:0] ALUOp;
	reg ALUSrc;

	// Outputs
	wire [31:0] ALUResult;
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	execute uut (
		.clk(clk), 
		.AluReadData1(AluReadData1), 
		.AluReadData2(AluReadData2), 
		.immediate(immediate), 
		.funct(funct), 
		.ALUOp(ALUOp), 
		.ALUSrc(ALUSrc), 
		.ALUResult(ALUResult), 
		.zero(zero)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		AluReadData1 = 0;
		AluReadData2 = 0;
		immediate = 0;
		funct = 0;
		ALUOp = 0;
		ALUSrc = 0;

		// Wait 100 ns for global reset to finish
		#100;
		AluReadData1 = 3;
		AluReadData2 = 5;
		immediate = 2;
		immediate[10:6] = 2;
		
		#100;
		funct=1;
		#100;
		funct=4;
		#100;
		funct=5;
		#100;
		ALUSrc=1;
		ALUOp=3;
		
		
        
		// Add stimulus here

	end
      
endmodule

