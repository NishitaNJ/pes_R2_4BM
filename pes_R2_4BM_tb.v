`timescale 1ns/ 1ps

module pes_r2_4bm_tb;
	reg clk;
	reg load;
	reg reset;
	reg [3:0] M;
	reg [3:0] Q;

	wire [7:0] P;

	 pes_r2_4bm dut (
		.clk(clk), 
		.load(load), 
		.reset(reset), 
		.M(M), 
		.Q(Q), 
		.P(P)
	);
	
	always
		#10 clk = ~clk;
  
  initial 
    begin
      	$dumpfile("design.vcd");
	    $dumpvars(0,pes_r2_4bm_tb );
      	$monitor ( $time, " Q = %b, M = %b, P = %b,Q_t = %b, Q-1 = %b, A = %b", Q, M, P, dut.Q_temp, dut.Q_minus_one, dut.A);
    end
	
	initial begin
		// Initialize Inputs
		clk  = 0;
		load = 0;
		reset = 1'b1;
		M = 4'b1010;
		Q = 4'b1011;
		#20;
		load = 1;
		reset = 1'b0;
		#20;
		load = 0;
		#150 $finish;
	end
endmodule