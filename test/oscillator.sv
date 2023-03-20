/****************************************************************************
 * oscillator.sv
 ****************************************************************************/

/**
 * Module: oscillator
 * 
 * TODO: Add module documentation
 */
module  oscillator #(PERIOD) (
		input wire power,
		output reg clock
		);
	
	`include "defines.v"
	
	//`define True = 1
	
	`define PERIOD = 100 // 1 MHz Clock 
	
	initial begin 

		osc = 1'b0;
		
		forever begin
			
			osc = #PERIOD ~osc;
		end
	end
	
	always @(*) begin
		
		if (power == `True) begin
		
			clock = osc; end
		else begin
			clock = 1'bx;
		end
	
	end
		
endmodule


