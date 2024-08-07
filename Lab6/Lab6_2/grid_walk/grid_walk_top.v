`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:32:24 03/04/2019 
// Design Name: 
// Module Name:    grid_walk_top 
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
module grid_walk_top( clk, Y, ROT_A, ROT_B, final_x, final_y
    );
	input clk, ROT_A, ROT_B;
	input[3:0] Y;
	
	output[3:0] final_x,final_y;
	wire[3:0] final_x;
	wire[3:0] final_y;
	wire rotation_event;
	
	is_rotation uut0(clk, ROT_A, ROT_B, rotation_event);
	grid_walk uut1(clk, Y, rotation_event, final_x, final_y);

endmodule
