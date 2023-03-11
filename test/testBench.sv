/****************************************************************************
 * testBench.sv
 ****************************************************************************/

/**
 * Module: testBench
 * 
 * TODO: Add module documentation
 */
module testBench;

always_ff @(posedge clk or negedge reset_n) begin
	if (!reset_n)  begin
		flop <= 1'b0;
	end
	else begin
		flop <= 1;
	end
end
	
	
endmodule


