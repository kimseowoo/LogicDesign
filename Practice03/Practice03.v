module mux2to1_cond(	out,
			in0,
			in1,
			sel);


output		out	;
input		in0	;
input		in1	;
input		sel	;

assign	out = (sel)? in1 : in0	;

endmodule


//-------------------------------------

module	mux2to1_if( out, in0, in1, sel);

output		out	;

input		in0	;
input		in1	;
input		sel	;

reg		out 	;


always @(out, in0, in1, sel) begin
	if(sel == 1'b0) begin
		out = in0 ;
	end else begin	
		out = in1 ;
	end
end
endmodule

//----------------------------------------

module mux2to1_case(	out,
			in0,
			in1,
			sel);

output		out	;	
input		in0	;	
input 		in1	;	
input		sel	;	

reg		out	;

always @(out, in0, in1, sel)begin
	case (sel)
		1'b0 : out = in0	;
		1'b1 : out = in1	;
		
	endcase

end
endmodule

//---------------------------------------------
module mux4to1_inst(	out,
			in0,
			in1,
			in2,
			in3,
			sel);

output		out	;
input		in0	;
input		in1	;
input		in2	;
input		in3	;
input	[1:0]	sel	;

wire	[1:0]	o_mux2	; // o_mux[1]~o_mux[0]

mux2to1_case	mux2_u0(	.out(o_mux2[0]),
				.in0( in0     ),
				.in1( in1     ),
				.sel( sel[0]  ));

mux2to1_case	mux2_u1(	.out(o_mux2[1]),
				.in0( in0     ),
				.in1( in1     ),
				.sel( sel[0]  ));

mux2to1_case	mux2_u2(	.out( out      ),
				.in0( o_mux2[0]),
				.in1( o_mux2[1]),
				.sel( sel[0]  ));
endmodule

//-------------------------------------------



module	mux4to1_if( out, in0, in1, in2, in3,sel);

output		out	;

input		in0	;
input		in1	;
input		in2	;
input		in3	;
input		sel	;

reg		out 	;


always @(out, in0, in1, in2, in3, sel) begin
	if(sel == 2'b00) begin
		out = in0 ;
	end else if(sel == 2'b01) begin	
		out = in1 ;
	end else if(sel == 2'b10) begin	
		out = in2 ;
	end else begin	
		out = in3 ;
	end
end
endmodule

//----------------------------------------

module mux4to1_case(	out,
			in0,
			in1,
			in2,
			in3,
			sel);

output		out	;	
input		in0	;	
input 		in1	;	
input		in2	;
input		in3	;
input	[1:0]	sel	;	

reg		out	;
always @(*)begin
	case (sel)		//case({sel[1], sel[0]})
		2'b00 : out = in0	;
		2'b01 : out = in1	;
		2'b10 : out = in2	;
		2'b11 : out = in3	;

	endcase

end

endmodule

