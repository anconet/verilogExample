/****************************************************************************
 * testBench.sv
 ****************************************************************************/

/**
 * Module: testBench
 * 
 * TODO: Add module documentation
 */
//`timescale 1ns/100ps

module testBench(
);

reg  something;

   initial
   begin
     $dumpfile("testBench.vcd");
     $dumpvars(0,testBench);
   end

initial begin 
	$display("Hello World from the begining of %m");

	something = 1'b0;
	#50 something = 1'b1;
	#100 something = 1'b0;

		forever begin
			
			something = #50 ~something;
		end
	end

initial begin
	forever begin
		#100_000;
		$display("Hello:", $time);
	end
end

initial begin
	#1_000_000;
	$stop;	
	end

reg powerRail3P3V;

initial begin
	powerRail3P3V = 1'b0;
	#1_000 powerRail3P3V = 1'b1;
end
oscillator osc(
	.power(powerRail3P3V),
	.clock(clock)
);

/*
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
*/
	
endmodule


