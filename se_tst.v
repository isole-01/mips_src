`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:13:57 04/30/2021
// Design Name:   signextend
// Module Name:   C:/Users/Tr/Xilinx/hw1/se_tst.v
// Project Name:  hw1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: signextend
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module se_tst;

	// Inputs
	reg [15:0] value;

	// Outputs
	wire [31:0] outputval;

	// Instantiate the Unit Under Test (UUT)
	signextend uut (
		.value(value), 
		.outputval(outputval)
	);

	initial begin
		// Initialize Inputs
		value = 0;

		// Wait 100 ns for global reset to finish
		#100;
		value=1;
		#50
		value=-1;
        
		// Add stimulus here

	end
      
endmodule

