`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:50:28 11/16/2019 
// Design Name: 
// Module Name:    IDEX 
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
module IDEX(
input hit,
input clk,
input [31:0] PC,
input controlUnitSignal,
input [31:0] readData1,
input [31:0] readData2,
input [31:0] immediate,
input [4:0] rt,
input [4:0] rd,
input RegDst,
input AluSrc,
input MemtoReg,
input RegWrite,
input MemRead,
input MemWrite,
input Branch,
input [1:0] AluOp,
output reg [31:0] pcOut,
output reg controlUnitSignalOut,
output reg [31:0] readData1Out,
output reg [31:0] readData2Out,
output reg [31:0] immediateOut,
output reg [4:0] rtOut,
output reg [4:0] rdOut,
output reg RegDstOut,
output reg AluSrcOut,
output reg MemtoRegOut,
output reg RegWriteOut,
output reg MemReadOut,
output reg MemWriteOut,
output reg BranchOut,
output reg [1:0] AluOpOut
    );
	 
	 always @(negedge clk)begin
	 if(hit == 1)
	 pcOut = PC;
	 controlUnitSignalOut = controlUnitSignal;
	 readData1Out = readData1;
	 readData2Out = readData2;
	 immediateOut = immediate;
	 rtOut = rt;
	 rdOut = rd;
	 RegDstOut = RegDst;
	 AluSrcOut = AluSrc;
	 MemtoRegOut = MemtoReg;
	 RegWriteOut = RegWrite;
	 MemReadOut = MemRead;
	 MemWriteOut = MemWrite;
	 BranchOut = Branch;
	 AluOpOut = AluOp;
	 
	 end
    


endmodule
