`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:53:28 12/04/2019 
// Design Name: 
// Module Name:    MEMWB 
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
module MEMWB(
  input clk,
  input hit,
  input [31:0] ALUResult,
  input [4:0] writeReg,
  input [31:0] readData,
  input memToReg,
  input regWrite,
  output reg [31:0] ALUResultOut,
  output reg [4:0] writeRegOut,
  output reg [31:0] readDataOut,
  output reg memToRegOut,
  output reg regWriteOut
    );
   
   always@(negedge clk)
   begin
   if(hit==1)
		begin
		 ALUResultOut=ALUResult;
		 writeRegOut=writeReg;
		 readDataOut=readDataOut;
		 memToRegOut=memToReg;
		 regWriteOut=regWriteOut;
		end
   end


endmodule
