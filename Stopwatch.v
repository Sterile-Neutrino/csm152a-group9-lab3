`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:13:24 02/07/2022 
// Design Name: 
// Module Name:    Stopwatch 
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
module Stopwatch(
	input pause,
	input adj,
	input sel,
	input rst,
	input clk,
	output [27:0] display,
	output clk_200hz,
	output clk_5hz,
	output clk_2hz,
	output clk_1hz
	);
	
//	wire clk_1hz;
//	wire clk_2hz;
//	//wire clk_200hz;
//	wire clk_5hz;
	
	Clock Clock(.clk(clk), .rst(rst), .clk_200hz(clk_200hz),
					.clk_5hz(clk_5hz), .clk_2hz(clk_2hz), .clk_1hz(clk_1hz));


endmodule
