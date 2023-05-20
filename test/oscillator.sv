/****************************************************************************
 * oscillator.sv
 ****************************************************************************/

/**
 * Module: oscillator
 * 
 * TODO: Add module documentation
 */

module  oscillator #(HALF_PERIOD) (
		input wire power,
		output reg clock
		);
	
	`include "defines.v"
	
	//`define True = 1
	
	`define HALF_PERIOD = 50 // 1 MHz Clock 
	
	reg osc;


	initial begin 

		osc = 1'b0;
		
		forever begin
			
			osc = #HALF_PERIOD ~osc;
		end
	end
	
	always @(*) begin
		
		if (power == `ActiveLow) begin
		
			clock = osc; end
		else begin
			clock = 1'bx;
		end
	
	end
		
endmodule


