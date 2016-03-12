`timescale 1ns / 1ps

module TestBench_Seleccionar_frecuencia;

	// Inputs
	reg ENf;
	reg rst;
	reg clk;
	reg [1:0] botones;

	// Outputs
	wire [10:0] f;
	wire [7:0] f_deco;

	// Instantiate the Unit Under Test (UUT)
	Seleccion_frecuencia uut (
		.ENf(ENf), 
		.rst(rst), 
		.clk(clk), 
		.botones(botones), 
		.f(f), 
		.f_deco(f_deco)
	);

	always begin
			#5;
			clk=~clk; end
	
	initial begin
		// Initialize Inputs
		ENf = 1;
		rst = 1;
		clk = 0;
		botones = 0;
		#100;
		rst=0;
		#100;
		botones=2'b10;
		#100;
		botones=2'b01;
		#100;
		$finish;

	end
      
endmodule

