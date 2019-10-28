module tb_pr03		;
//-------------------------------
//instances
//-------------------------------

reg	in0	;
reg	in1	;
reg	sel	;

wire 	out0	;
wire 	out1	;
wire 	out2	;


mux2to1_cond dut_1(	.out( out0  ),
			.in0( in0  ),
			.in1( in1 ),
			.sel( sel  ));

mux2to1_if dut_2(	.out( out1  ),
			.in0( in0  ),
			.in1( in1  ),
			.sel( sel  ));

mux2to1_case dut_3(	.out( out2  ),
			.in0( in0  ),
			.in1( in1 ),
			.sel( sel  ));


//----------------------------
//simulus
//----------------------------
initial begin
	$display("Conditional : out");
	$display("if : out");
	$display("case : out");
	$display("=========================================================================");
	$display("sel	in1	in0	out0	out1	out2");
	$display("=========================================================================");
	#(50)	{sel, in1, in0} = 3'b_000;	#(50)	$display("%b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out0, out1, out2);
	#(50)	{sel, in1, in0} = 3'b_001;	#(50)	$display("%b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out0, out1, out2);
	#(50)	{sel, in1, in0} = 3'b_010;	#(50)	$display("%b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out0, out1, out2);
	#(50)	{sel, in1, in0} = 3'b_011;	#(50)	$display("%b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out0, out1, out2);
	#(50)	{sel, in1, in0} = 3'b_100;	#(50)	$display("%b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out0, out1, out2);
	#(50)	{sel, in1, in0} = 3'b_101;	#(50)	$display("%b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out0, out1, out2);
	#(50)	{sel, in1, in0} = 3'b_110;	#(50)	$display("%b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out0, out1, out2);
	#(50)	{sel, in1, in0} = 3'b_111;	#(50)	$display("%b\t%b\t%b\t%b\t%b\t%b", sel, in1, in0, out0, out1, out2);
	#(50)	$finish		    ;
end

endmodule

module tb_pr03_1		;
//------------------------------------

reg		in0	;
reg		in1	;
reg		in2	;
reg		in3	;
reg	[1:0]	sel	;

wire	[1:0]	o_mux2	;
wire		out0	;
wire		out1	;
wire		out2	;


mux4to1_inst 	dut_1(	.out( out0  ),
			.in0( in0  ),
			.in1( in1  ),
			.in2( in2  ),
			.in3( in3  ),
			.sel( sel  ));

mux4to1_if 	dut_2(	.out( out1  ),
			.in0( in0  ),
			.in1( in1  ),
			.in2( in2  ),
			.in3( in3  ),
			.sel( sel  ));

mux4to1_case 	dut_3(	.out( out2  ),
			.in0( in0  ),
			.in1( in1  ),
			.in2( in2  ),
			.in3( in3  ),
			.sel( sel  ));





//----------------------------
//simulus
//----------------------------
initial begin
	$display("inst : out");
	$display("if : out");
	$display("case : out");
	$display("=========================================================================");
	$display("sel[1],	sel[0],	in3,	in2,	in1,	in0,	out0,	out1,	out2");
	$display("=========================================================================");
	#(50)	{sel[1], sel[0], in3, in2, in1, in0} = 6'b_000000;	#(50)	$display("%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel[1], sel[0], in3, in2, in1, in0, out0, out1, out2);
	#(50)	{sel[1], sel[0], in3, in2, in1, in0} = 6'b_000001;	#(50)	$display("%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel[1], sel[0], in3, in2, in1, in0, out0, out1, out2);
	#(50)	{sel[1], sel[0], in3, in2, in1, in0} = 6'b_000010;	#(50)	$display("%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel[1], sel[0], in3, in2, in1, in0, out0, out1, out2);
	#(50)	{sel[1], sel[0], in3, in2, in1, in0} = 6'b_000011;	#(50)	$display("%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel[1], sel[0], in3, in2, in1, in0, out0, out1, out2);
	#(50)	{sel[1], sel[0], in3, in2, in1, in0} = 6'b_000100;	#(50)	$display("%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel[1], sel[0], in3, in2, in1, in0, out0, out1, out2);
	#(50)	{sel[1], sel[0], in3, in2, in1, in0} = 6'b_000110;	#(50)	$display("%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel[1], sel[0], in3, in2, in1, in0, out0, out1, out2);
	#(50)	{sel[1], sel[0], in3, in2, in1, in0} = 6'b_001000;	#(50)	$display("%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel[1], sel[0], in3, in2, in1, in0, out0, out1, out2);
	#(50)	{sel[1], sel[0], in3, in2, in1, in0} = 6'b_001100;	#(50)	$display("%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", sel[1], sel[0], in3, in2, in1, in0, out0, out1, out2);
	#(50)	$finish		    ;
end

endmodule

