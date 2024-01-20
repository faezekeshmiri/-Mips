`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:44:48 11/13/2019 
// Design Name: 
// Module Name:    Main 
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
module Main(
input clk
    );
	 wire [31:0] ins;
	 wire [31:0] pc_out;
	 wire hit;
	 wire [31:0] ins_IfId;
    wire controlUnitSignal;
	 wire [31:0] readData1;
	 wire [31:0] readData2;
	 wire [31:0] immediate;
	 wire [4:0] rt;
	 wire [4:0] rd;
	 wire RegDst;
	 wire AluSrc;
    wire MemtoReg;
	 wire RegWrite;
	 wire MemRead;
	 wire MemWrite;
	 wire Branch;
	 wire [31:0] pc;//moragheb bashim
    wire [1:0] AluOp;
	 wire [31:0] pcOut;
	 wire controlUnitSignalOut;
	 wire [31:0] readData1Out;
	 wire [31:0] readData2Out;
	 wire [31:0] immediateOut;
	 wire [4:0] rtOut;
	 wire [4:0] rdOut;
	 wire RegDstOut;
	 wire AluSrcOut;
	 wire MemtoRegOut;
	 wire RegWriteOut;
	 wire MemReadOut;
	 wire MemWriteOut;
	 wire BranchOut;
	 wire[1:0] AluOpOut;
	 reg [4:0] writeReg=0;
	 reg [31:0] writeData=0;
	 reg regWriteSignal=0;
	 
	 fetch fetch(clk,ins,pc_out,hit);
	 IFID IfId(ins,hit,clk,ins_IfId);
	 Decode decode(clk,ins_IfId,writeReg,writeData,regWriteSignal,controlUnitSignal,readData1,readData2,immediate,rt,rd,RegDst,AluSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,AluOp);
	 IDEX IdEx(hit,clk,pc,controlUnitSignal,readData1,readData2,immediate,rt,rd,RegDst,AluSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,AluOp,pcOut,controlUnitSignalOut,readData1Out,readData2Out,immediateOut,rtOut,rdOut,RegDstOut,AluSrcOut,MemtoRegOut,RegWriteOut,MemReadOut,MemWriteOut,BranchOut,AluOpOut);
	 

endmodule
