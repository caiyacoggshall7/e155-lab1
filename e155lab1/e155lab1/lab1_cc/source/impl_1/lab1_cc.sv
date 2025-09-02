// Name: Caiya Coggshall
// Email: caiyacoggshall@gmail.com
// Date: 8/31/25
// Summary of Purpose: This is the top level module for all LED logic


module lab1_cc(
     input   logic reset, 
	 input	 logic [3:0] s,
     output  logic [2:0] led, 
	 output  logic [6:0] seg
);

   logic [31:0] counter;
   logic clk;
  
   // Internal high-speed oscillator
   HSOSC #(.CLKHF_DIV(2'b01)) 
         hf_osc (.CLKHFPU(1'b1), .CLKHFEN(1'b1), .CLKHF(clk));
  
   // Counter
   always_ff @(posedge clk, negedge reset) begin
     if(reset  == 0)  begin 
		counter <= 0;
		led[2] <= 0;
		end
     else if (counter == 10000000) // calculated number
		begin 
		led[2] <= ~led[2];
		counter <= 0;
		end
     else	counter <= counter + 1;
	
   end
   
   seven_seg_display ssd(s, seg);
  
   // Assign LED output
   // assign led[2] = counter[24];
   // and gate
   assign led[1] = s[2]& s[3];
   //xor gate
   assign led[0] = s[0] ^ s[1];
   
  
endmodule
