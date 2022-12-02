`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:11:17 04/28/2021 
// Design Name: 
// Module Name:    registerfile 
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
module registerfile(clk,regwrite,read_reg1,read_reg2,write_reg,write_data,read_data1,read_data2);
	input clk;
	input regwrite;
	input [5:0]read_reg1;
	input [5:0]read_reg2;
	input [5:0]write_reg;
	input [31:0]write_data;
	output [31:0]read_data1;
	output [31:0]read_data2;
	
	reg [31:0]registers[31:0];
	
	integer i;
	initial begin
		for(i=0;i<32;i=i+1)
			registers[i]=i; 
	end
	
	assign read_data1=registers[read_reg1];
	assign read_data2=registers[read_reg2];
	
	always @(posedge clk)begin
		if(regwrite && (write_reg !== 0))begin
			registers[write_reg]=write_data;
		end
	end
	
endmodule
