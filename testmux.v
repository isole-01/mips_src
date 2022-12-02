`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:35:00 04/02/2021
// Design Name:   mux
// Module Name:   C:/Users/Tr/Xilinx/hw1/testmux.v
// Project Name:  hw1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testmux;

	// Inputs
	reg [31:0] i1;
	reg [31:0] i2;
	reg sel;

	// Outputs
	wire [31:0] o;

	// Instantiate the Unit Under Test (UUT)
	mux uut (
		.i1(i1), 
		.i2(i2), 
		.sel(sel), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		i1 = 0;
		i2 = 0;
		sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
      i1=128;
		// Add stimulus here
		#100;
		sel=1;
	end
      
endmodule

