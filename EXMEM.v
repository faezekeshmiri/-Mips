`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:35:43 12/04/2019 
// Design Name: 
// Module Name:    EXMEM 
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
module EXMEM(
input RegWrite, 
input MemtoReg,
input memRead,
input memWrite,
input branch,
input zero,
input [31:0]AluRes,
input [31:0]writeData,
input [4:0]regDst,
input hit,
input clk,
output reg RegWriteOut, 
output reg MemtoRegOut,
output reg memReadOut,
output reg memWriteOut,
output reg branchOut,
output reg zeroOut,
output reg [31:0]AluResOut,
output reg [31:0]writeDataOut,
output reg [4:0]regDstOut
    );
	 
	 always@(negedge clk)begin
		if (hit == 1) 
		begin
		 RegWriteOut = RegWrite; 
		 MemtoRegOut = MemtoReg;
	    memReadOut = memRead;
		 memWriteOut = memWrite;
		 branchOut = branch;
		 zeroOut = zero;
		 AluResOut = AluRes;
		 writeDataOut = writeData;
		 regDstOut = regDst;
		end
	 end

endmodule
