`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:07:45 04/23/2021
// Design Name:   fetch
// Module Name:   C:/Users/Tr/Xilinx/hw1/lkaslkdfasd.v
// Project Name:  hw1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fetch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module lkaslkdfasd;

	// Inputs
	reg clk;
	reg [31:0] branch_target;
	reg pc_src;

	// Outputs
	wire [31:0] next_pc;
	wire [31:0] instruction;
	wire hit;

	// Instantiate the Unit Under Test (UUT)
	fetch uut (
		.clk(clk), 
		.branch_target(branch_target), 
		.pc_src(pc_src), 
		.next_pc(next_pc), 
		.instruction(instruction), 
		.hit(hit)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		branch_target = 0;
		pc_src = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always begin
	#10;
	clk=~clk;
	end	
      
      
endmodule

