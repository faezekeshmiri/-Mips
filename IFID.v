`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:29:17 11/13/2019 
// Design Name: 
// Module Name:    IFID 
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
module IFID(
input [31:0] ins,
input hit,
input clk,
output reg [31:0] insOUT
    );
	 always @(negedge clk)begin
	 if(hit == 1)
	 insOUT = ins;
	 
	 end


endmodule
