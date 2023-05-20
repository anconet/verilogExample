/****************************************************************************
 * testBench.sv
 ****************************************************************************/

/**
 * Module: testBench
 * 
 * TODO: Add module documentation
 */
module testBench(
);

oscillator osc(
	.power(1'b1),
	.clock(clock)
);

assign reset_n = 1'b1;

reg flop;

always_ff @(posedge clock or negedge reset_n) begin
	if (!reset_n)  begin
		flop <= 1'b0;
	end
	else begin
		flop <= 1;
	end
end
	
	
endmodule


