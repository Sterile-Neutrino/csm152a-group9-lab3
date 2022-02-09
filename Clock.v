`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:27:14 02/07/2022 
// Design Name: 
// Module Name:    Clock 
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
module Clock(	
	input clk,
	input rst,
	output reg clk_1hz,
	output reg clk_2hz,
	output reg clk_200hz,
	output reg clk_5hz
    );
	 
	
	reg [18:0] counter250K;
	always@(posedge clk) begin
		if (rst) begin
			counter250K <= 0;
			clk_200hz <= 0;
		end else if (counter250K == 249999) begin
			counter250K <= 0;
			clk_200hz <= ~clk_200hz;
		end else begin
			counter250K <= counter250K + 1;
		end
	end
	reg [23:0] counter10M;
	always@(posedge clk) begin
		if (rst) begin
			counter10M <= 0;
			clk_5hz <= 0;
		end else if (counter10M == 9999999) begin
			counter10M <= 0;
			clk_5hz <= ~clk_5hz;
		end else begin
			counter10M <= counter10M + 1;
		end
	end
	reg [25:0] counter25M;
	always@(posedge clk) begin
		if (rst) begin
			counter25M <= 0;
			clk_2hz <= 0;
		end else if (counter25M == 24999999) begin
			counter25M <= 0;
			clk_2hz <= ~clk_2hz;
		end else begin
			counter25M <= counter25M + 1;
		end
	end

	reg [26:0] counter50M;
	always@(posedge clk) begin
		if (rst) begin
			counter50M <= 0;
			clk_1hz <= 0;
		end else if (counter50M == 49999999) begin
			counter50M <= 0;
			clk_1hz <= ~clk_1hz;
		end else begin
			counter50M <= counter50M + 1;
		end
	end

endmodule
