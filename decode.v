`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:10:48 04/28/2021 
// Design Name: 
// Module Name:    decode 
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
module decode(clk,regwrite,instruction,opcode,read_data1,read_data2,sign_extended_immediate,rt,rd);
	input clk;
	input regwrite;
	input [31:0]instruction;
	output [5:0]opcode;
	output [31:0]read_data1;
	output [31:0]read_data2;
	output [31:0]sign_extended_immediate;
	output [4:0]rt;
	output [4:0]rd;
	
	
	assign opcode=instruction[31:26];
	assign rt=instruction[20:16];
	assign rd=instruction[15:11];
	
	signextend se (
    .value(instruction[15:0]), 
    .outputval(sign_extended_immediate)
    );
	 
	registerfile regfile (
    .clk(clk), 
    .regwrite(regwrite), 
    .read_reg1(instruction[25:21]), 
    .read_reg2(instruction[20:16]), 
    .write_reg(instruction[15:11]), 
    .write_data(write_data), 
    .read_data1(read_data1), 
    .read_data2(read_data2)
    );


endmodule
