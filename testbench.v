`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:41:29 02/07/2022
// Design Name:   Stopwatch
// Module Name:   C:/Xilinx/14.7/ISE_DS/ISE/Documents/Group9Lab3/Documents/Group9Lab3/testbench.v
// Project Name:  Group9Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Stopwatch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg pause;
	reg adj;
	reg sel;
	reg rst;
	reg clk;

	// Outputs
	wire [27:0] display;
	wire clk_200hz;
	wire clk_5hz;
	wire clk_2hz;
	wire clk_1hz;

	// Instantiate the Unit Under Test (UUT)
	Stopwatch uut (
		.pause(pause), 
		.adj(adj), 
		.sel(sel), 
		.rst(rst), 
		.clk(clk), 
		.display(display),
		.clk_200hz(clk_200hz),
		.clk_5hz(clk_5hz),
		.clk_2hz(clk_2hz),
		.clk_1hz(clk_1hz)
	);

	initial begin
		// Initialize Inputs
		pause = 0;
		adj = 0;
		sel = 0;
		rst = 1;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
      rst = 0;
		#100000000;
		// Add stimulus here

	end
      always #5 clk = ~clk;
endmodule

