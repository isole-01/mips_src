`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:17:10 04/30/2021
// Design Name:   registerfile
// Module Name:   C:/Users/Tr/Xilinx/hw1/regfile_tst.v
// Project Name:  hw1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: registerfile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module regfile_tst;

	// Inputs
	reg clk;
	reg regwrite;
	reg [5:0] read_reg1;
	reg [5:0] read_reg2;
	reg [5:0] write_reg;
	reg [31:0] write_data;

	// Outputs
	wire [31:0] read_data1;
	wire [31:0] read_data2;

	// Instantiate the Unit Under Test (UUT)
	registerfile uut (
		.clk(clk), 
		.regwrite(regwrite), 
		.read_reg1(read_reg1), 
		.read_reg2(read_reg2), 
		.write_reg(write_reg), 
		.write_data(write_data), 
		.read_data1(read_data1), 
		.read_data2(read_data2)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		regwrite = 1;
		read_reg1 = 1;
		read_reg2 = 2;
		write_reg = 0;
		write_data = -1;

		// Wait 100 ns for global reset to finish
		#100;
		write_reg = 4;
		read_reg1 = 4;
		#100;
		write_reg=1;
		#100
		regwrite=0;
		write_reg=5;
		// Add stimulus here

	end
	always begin
		#20;
		clk = ~clk;
	end
      
endmodule

