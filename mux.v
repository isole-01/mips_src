`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:24:12 04/02/2021 
// Design Name: 
// Module Name:    mux 
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
module mux(i1,i2,sel,o);
	input [31:0] i1;
	input [31:0] i2;
	input sel;
	output [31:0] o;
	
	
	
	assign o = (sel == 0) ? i1 : 
	sel == 1 ? i2 : 0;

		
endmodule
