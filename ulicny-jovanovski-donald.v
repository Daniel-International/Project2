//Behavioral circuit description
//Michael Ulicny, Filip Jovanovski, Christopher Donald
//Last modified date:10/25/2018
//Compilation Status: TODO
//Elaborations Status: TODO
//Simulation Status: TODO

//==================== 3 to 8 bit decoder ====================
module decoder(G, C, B, A, decoder_out);
	input A, B, C, G;	// individual bit inputs
	output [7:0] decoder_out;	// 8-bit output
	always @(G, A, B, C) 		//re-evaluate if these change
		begin 
			if (G == 0) begin
				case ({C, B, A})
					3'b000 : decoder_out = 8'b01111111;
					3'b001 : decoder_out = 8'b10111111;
					3'b010 : decoder_out = 8'b11011111;
					3'b011 : decoder_out = 8'b11101111;
					3'b100 : decoder_out = 8'b11110111;
					3'b101 : decoder_out = 8'b11111011;
					3'b110 : decoder_out = 8'b11111101;
					3'b111 : decoder_out = 8'b11111110;  
			  endcase
			else if (G == 0)
				begin
				decoder_out = 8'b11111111;	// output if G is set
				end
			end
			
		end
endmodule

//================== Combinational Circuit ==================
module comb_circuit(x, y, z, F1, F2, F3);
	input x, y, z;
	output [7:0] F1, F2, F3;	// 3, 8 bit outputs

	//F1 = TODO
	//F2 = TODO
	//F3 = TODO




endmodule 
