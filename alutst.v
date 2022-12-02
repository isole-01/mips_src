`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:08:42 05/27/2021
// Design Name:   alu
// Module Name:   C:/Users/Tr/Xilinx/hw1/alutst.v
// Project Name:  hw1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alutst;

	// Inputs
	reg [3:0] ALUCnt;
	reg [4:0] shamt;
	reg [31:0] input1;
	reg [31:0] input2;

	// Outputs
	wire zero;
	wire [31:0] result;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.ALUCnt(ALUCnt), 
		.shamt(shamt), 
		.input1(input1), 
		.input2(input2), 
		.zero(zero), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		ALUCnt = 0;
		shamt = 0;
		input1 = 0;
		input2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		input1=5;
		input2=3;
		#100;
		ALUCnt=1;
		#100;
		ALUCnt=2;
		#100;
		shamt=1;
		ALUCnt=3;
		
		
        
		// Add stimulus here

	end
      
endmodule

