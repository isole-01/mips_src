`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:25:30 05/14/2021 
// Design Name: 
// Module Name:    mips 
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
module mips(clk);
	input wire clk;
	
	wire [5:0]opcode;
	wire [31:0]branch_target;
	wire pc_src;
	wire [31:0]next_pc;
	wire [31:0]instruction;
	wire hit;
	
	wire [31:0]instruction_f_d;
	wire [31:0]next_pc_if_id;
	wire hit_if_id;
	
	wire RegWrite;
	
	wire [31:0]sign_extended_immediate;
	wire [31:0]immediate;
	wire [5:0]functOut;
	wire [3:0]ALUOpOut;
	wire ALUSrcOut;
	
	wire [4:0]rd;
	wire [4:0]rt;
	
	fetch fet (
    .clk(clk), 
    .branch_target(branch_target), 
    .pc_src(pc_src), 
    .next_pc(next_pc), 
    .instruction(instruction), 
    .hit(hit)
    );
	 
	 ifid if_id (
    .clk(clk), 
    .next_pc(next_pc), 
    .instruction(instruction), 
    .hit(hit), 
    .instruction_out(instruction_f_d), 
    .next_pc_out(next_pc_if_id), 
    .hit_out(hit_if_id)
    );
	 
	 decode dec(
    .clk(clk), 
    .regwrite(RegWrite), 
    .instruction(instruction_f_d), 
    .opcode(opcode), 
    .read_data1(read_data1), 
    .read_data2(read_data2), 
    .sign_extended_immediate(sign_extended_immediate), 
    .rt(rt), 
    .rd(rd)
    );
	 
	 id_ex idex (
    .clk(clk), 
    .readData1(read_data1), 
    .readData2(read_data2), 
    .signExImmediate(sign_extended_immediate), 
    .RegDst(RegDst), 
    .ALUSrc(ALUSrc), 
    .MemtoReg(MemtoReg), 
    .RegWrite(RegWrite), 
    .MemRead(MemRead), 
    .MemWrite(MemWrite), 
    .Branch(Branch), 
    .ALUOp(ALUOp), 
    .rd(rd), 
    .rt(rt), 
    .funct(sign_extended_immediate[5:0]), 
    .nextPC(next_pc), 
    .hit(hit), 
    .readData1Out(readData1Out), 
    .readData2Out(readData2Out), 
    .signExImmediateOut(immediate), 
    .RegDstOut(RegDstOut), 
    .ALUSrcOut(ALUSrcOut), 
    .MemtoRegOut(MemtoRegOut), 
    .RegWriteOut(RegWriteOut), 
    .MemReadOut(MemReadOut), 
    .MemWriteOut(MemWriteOut), 
    .BranchOut(BranchOut), 
    .ALUOpOut(ALUOpOut), 
    .rdOut(rdOut), 
    .rtOut(rtOut), 
    .functOut(functOut), 
    .nextPCOut(nextPCOut), 
    .hitOut(hitOut)
    );


	 
	 
	 execute exe (
    .clk(clk), 
    .AluReadData1(readData1Out), 
    .AluReadData2(readData2Out), 
    .immediate(immediate), 
    .funct(functOut), 
    .ALUOp(ALUOpOut), 
    .ALUSrc(ALUSrcOut), 
    .ALUResult(ALUResult), 
    .zero(zero)
    );





	
	control control_unit (
    .opcode(opcode), 
    .RegDst(RegDst), 
    .ALUSrc(ALUSrc), 
    .MemtoReg(MemtoReg), 
    .RegWrite(RegWrite), 
    .MemRead(MemRead), 
    .MemWrite(MemWrite), 
    .Branch(Branch), 
    .ALUOp(ALUOp)
    );




endmodule
