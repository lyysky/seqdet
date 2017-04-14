
module seqdet(x,z,clk,rst_n);
	input x,clk,rst_n;
	output z;
	
	wire z;
	reg[2:0]state,nstate;

	parameter s0=3'd0,
			  s1=3'd1,
			  s2=3'd2,
			  s3=3'd3,
			  s4=3'd4,
			  s5=3'd5;
always @(x or state)
		case(state)
		s0:
			if(x==1) nstate=s1;
			else	  nstate=s0;
		s1:
			if(x==0)  nstate=s2;
			else	  nstate=s1;
			
		s2:	
			if(x==1)  nstate=s3;
			else	  nstate=s0;
			
		s3:
			if(x==1)  nstate=s4;
			else	  nstate=s2;
		s4:
			if(x==0)  nstate=s5;
			else	  nstate=s1;
module seqdet(x,z,clk,rst_n);
	input x,clk,rst_n;
	output z;
	
	wire z;
	reg[2:0]state,nstate;

	parameter s0=3'd0,
			  s1=3'd1,
			  s2=3'd2,
			  s3=3'd3,
			  s4=3'd4,
			  s5=3'd5;
always @(x or state)
		case(state)
		s0:
			if(x==1) nstate=s1;
			else	  nstate=s0;
		s1:
			if(x==0)  nstate=s2;
			else	  nstate=s1;
			
		s2:	
			if(x==1)  nstate=s3;
			else	  nstate=s0;
			
		s3:
			if(x==1)  nstate=s4;
			else	  nstate=s2;
		s4:
			if(x==0)  nstate=s5;
			else	  nstate=s1;
		s5:
			if(x==1)  nstate=s3;
			else	  nstate=s0;


		default:   nstate=s0;
		endcase

	always @(posedge clk)
module seqdet(x,z,clk,rst_n);
	input x,clk,rst_n;
	output z;
	
	wire z;
	reg[2:0]state,nstate;

	parameter s0=3'd0,
			  s1=3'd1,
			  s2=3'd2,
			  s3=3'd3,
			  s4=3'd4,
			  s5=3'd5;
always @(x or state)
		case(state)
		s0:
			if(x==1) nstate=s1;
			else	  nstate=s0;
		s1:
			if(x==0)  nstate=s2;
			else	  nstate=s1;
			
		s2:	
			if(x==1)  nstate=s3;
			else	  nstate=s0;
			
		s3:
			if(x==1)  nstate=s4;
			else	  nstate=s2;
		s4:
			if(x==0)  nstate=s5;
			else	  nstate=s1;
		s5:
			if(x==1)  nstate=s3;
			else	  nstate=s0;


		default:   nstate=s0;
		endcase

	always @(posedge clk)
		if(!rst_n)	state<=s0;
		else		state<=nstate;
	
    assign		z=(state==s5);
endmodule
		if(!rst_n)	state<=s0;
		else		state<=nstate;
	
    assign		z=(state==s5);
endmodule
		s5:
			if(x==1)  nstate=s3;
			else	  nstate=s0;


		default:   nstate=s0;
		endcase

	always @(posedge clk)
		if(!rst_n)	state<=s0;
		else		state<=nstate;
	
    assign		z=(state==s5);
endmodule
