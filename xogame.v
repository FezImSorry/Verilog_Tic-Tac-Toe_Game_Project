module xogame(Xin, Oin, s1, s2, s3, s4, s5, s6, s7, s8, s9, b1, b2, b3, b4, b5, b6, b7, b8, b9, w1, w2, tie, RST);
input Xin, Oin, s1, s2, s3, s4, s5, s6, s7, s8, s9, RST;
output reg[1:0] b1;
output reg[1:0] b2;
output reg[1:0] b3;
output reg[1:0] b4;
output reg[1:0] b5;
output reg[1:0] b6;
output reg[1:0] b7;
output reg[1:0] b8;
output reg[1:0] b9;
output reg w1;
output reg w2;
output reg tie;

always @ (*)
begin
	
	if (Xin == 1 && Oin == 0)
	begin
		if (s1 == 1 && s2 == 0 && s3 == 0 && s4 == 0 && 
			s5 == 0 && s6 == 0 && s7 == 0 && s8 == 0 && s9 == 0) 
			begin b1 = 1; end
		else if (s2 == 1 && s1 == 0 && s3 == 0 && s4 == 0 && 
			s5 == 0 && s6 == 0 && s7 == 0 && s8 == 0 && s9 == 0) 
			begin b2 = 1; end
		else if (s3 == 1 && s2 == 0 && s1 == 0 && s4 == 0 && 
			s5 == 0 && s6 == 0 && s7 == 0 && s8 == 0 && s9 == 0) 
			begin b3 = 1; end
		else if (s4 == 1 && s2 == 0 && s3 == 0 && s1 == 0 && 
			s5 == 0 && s6 == 0 && s7 == 0 && s8 == 0 && s9 == 0) 
			begin b4 = 1; end
		else if (s5 == 1 && s2 == 0 && s3 == 0 && s4 == 0 && 
			s1 == 0 && s6 == 0 && s7 == 0 && s8 == 0 && s9 == 0) 
			begin b5 = 1; end
		else if (s6 == 1 && s2 == 0 && s3 == 0 && s4 == 0 && 
			s5 == 0 && s1 == 0 && s7 == 0 && s8 == 0 && s9 == 0) 
			begin b6 = 1; end
		else if (s7 == 1 && s2 == 0 && s3 == 0 && s4 == 0 && 
			s5 == 0 && s6 == 0 && s1 == 0 && s8 == 0 && s9 == 0) 
			begin b7 = 1; end
		else if (s8 == 1 && s2 == 0 && s3 == 0 && s4 == 0 && 
			s5 == 0 && s6 == 0 && s7 == 0 && s1 == 0 && s9 == 0) 
			begin b8 = 1; end
		else if (s9 == 1 && s2 == 0 && s3 == 0 && s4 == 0 && 
			s5 == 0 && s6 == 0 && s7 == 0 && s8 == 0 && s1 == 0)
			begin b9 = 1; end		
	end
	else if (Oin == 1 && Xin == 0)
	begin
		if (s1 == 1 && s2 == 0 && s3 == 0 && s4 == 0 && 
			s5 == 0 && s6 == 0 && s7 == 0 && s8 == 0 && s9 == 0) 
			begin b1 = 2; end
		else if (s2 == 1 && s1 == 0 && s3 == 0 && s4 == 0 && 
			s5 == 0 && s6 == 0 && s7 == 0 && s8 == 0 && s9 == 0) 
			begin b2 = 2; end
		else if (s3 == 1 && s2 == 0 && s1 == 0 && s4 == 0 && 
			s5 == 0 && s6 == 0 && s7 == 0 && s8 == 0 && s9 == 0) 
			begin b3 = 2; end
		else if (s4 == 1 && s2 == 0 && s3 == 0 && s1 == 0 && 
			s5 == 0 && s6 == 0 && s7 == 0 && s8 == 0 && s9 == 0) 
			begin b4 = 2; end
		else if (s5 == 1 && s2 == 0 && s3 == 0 && s4 == 0 && 
			s1 == 0 && s6 == 0 && s7 == 0 && s8 == 0 && s9 == 0) 
			begin b5 = 2; end
		else if (s6 == 1 && s2 == 0 && s3 == 0 && s4 == 0 && 
			s5 == 0 && s1 == 0 && s7 == 0 && s8 == 0 && s9 == 0) 
			begin b6 = 2; end
		else if (s7 == 1 && s2 == 0 && s3 == 0 && s4 == 0 && 
			s5 == 0 && s6 == 0 && s1 == 0 && s8 == 0 && s9 == 0) 
			begin b7 = 2; end
		else if (s8 == 1 && s2 == 0 && s3 == 0 && s4 == 0 && 
			s5 == 0 && s6 == 0 && s7 == 0 && s1 == 0 && s9 == 0) 
			begin b8 = 2; end
		else if (s9 == 1 && s2 == 0 && s3 == 0 && s4 == 0 && 
			s5 == 0 && s6 == 0 && s7 == 0 && s8 == 0 && s1 == 0)
			begin b9 = 2; end		
	end
	
	if (b1 == 1 && b2 == 1 && b3 == 1 && w2 == 0) begin w1 = 1; end
	else if (b4 == 1 && b5 == 1 && b6 == 1 && w2 == 0) begin w1 = 1; end
	else if (b7 == 1 && b8 == 1 && b9 == 1 && w2 == 0) begin w1 = 1; end
	else if (b1 == 1 && b4 == 1 && b7 == 1 && w2 == 0) begin w1 = 1; end
	else if (b2 == 1 && b5 == 1 && b8 == 1 && w2 == 0) begin w1 = 1; end
	else if (b3 == 1 && b6 == 1 && b9 == 1 && w2 == 0) begin w1 = 1; end
	else if (b1 == 1 && b5 == 1 && b9 == 1 && w2 == 0) begin w1 = 1; end
	else if (b3 == 1 && b5 == 1 && b7 == 1 && w2 == 0) begin w1 = 1; end
	else begin w1 = 0; end

	if (b1 == 2 && b2 == 2 && b3 == 2 && w1 == 0) begin w2 = 1; end
	else if (b4 == 2 && b5 == 2 && b6 == 2 && w1 == 0) begin w2 = 1; end
	else if (b7 == 2 && b8 == 2 && b9 == 2 && w1 == 0) begin w2 = 1; end
	else if (b1 == 2 && b4 == 2 && b7 == 2 && w1 == 0) begin w2 = 1; end
	else if (b2 == 2 && b5 == 2 && b8 == 2 && w1 == 0) begin w2 = 1; end
	else if (b3 == 2 && b6 == 2 && b9 == 2 && w1 == 0) begin w2 = 1; end
	else if (b1 == 2 && b5 == 2 && b9 == 2 && w1 == 0) begin w2 = 1; end
	else if (b3 == 2 && b5 == 2 && b7 == 2 && w1 == 0) begin w2 = 1; end
	else begin w2 = 0; end
	
	if (b1 != 0 && b2 != 0 && b3 != 0 && b4 != 0 && b5 != 0 && b6 != 0 
		&& b7 != 0 && b8 != 0 && b9 != 0 && w1 == 0 && w2 == 0)
		begin tie = 1; end
	
	
	if (RST == 1)
	begin
		b1 = 0; b2 = 0; b3 = 0; b4 = 0; b5 = 0; b6 = 0; b7 = 0; b8 = 0; b9 = 0; w1 = 0; w2 = 0; tie = 0;
	end
	
end
endmodule 