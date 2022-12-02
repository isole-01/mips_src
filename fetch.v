`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:50:28 04/16/2021 
// Design Name: 
// Module Name:    fetch 
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
module fetch(clk,branch_target,pc_src,next_pc,instruction,hit);
	input wire clk;
	input [31:0]branch_target;
	input pc_src;
	output [31:0]next_pc;
	output [31:0]instruction;
	output wire hit;
	
	wire [31:0]nextaddress;
	wire [31:0]address;
	wire [127:0]dataline;
	
	
	
	assign next_pc=address+4;	
	
	mux m (
    .i1(next_pc), 
    .i2(branch_target), 
    .sel(pc_src), 
    .o(nextaddress)
    );
	pcreg pc (
    .clk(clk), 
    .hit(hit), 
    .nextpc(nextaddress), 
    .pc(address)
    );
	instructionmemory mem (
    .clk(clk), 
    .address(address), 
    .dataline(dataline)
    );

	cache ch (
    .clk(clk), 
    .dataline(dataline), 
    .address(address), 
    .instruction(instruction), 
    .hit(hit)
    );
	
	

endmodule
