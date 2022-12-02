`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:55:36 04/12/2021
// Design Name:   instructionmemory
// Module Name:   C:/Users/Tr/Xilinx/hw1/jh.v
// Project Name:  hw1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: instructionmemory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module jh;

	// Inputs
	reg [31:0] address;
	reg clk;

	// Outputs
	wire [127:0] dataline;

	// Instantiate the Unit Under Test (UUT)
	instructionmemory uut (
		.address(address), 
		.clk(clk), 
		.dataline(dataline)
	);

	initial begin
		// Initialize Inputs
		address = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always begin
	#200;
	address=address+15;
	end
	
	always begin
	#10;
	clk=~clk;
	end	
      
endmodule

