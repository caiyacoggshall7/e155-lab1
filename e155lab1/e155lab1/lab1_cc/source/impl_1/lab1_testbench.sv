// Name: Caiya Coggshall
// Email: caiyacoggshall@gmail.com
// Date: 8/31/25
// Summary of Purpose: This is the test bench for lab1_cc


module lab1_testbench();
	logic clk, reset;
	logic [3:0] s;
	logic [2:0] led, ledexpected;
	logic [6:0] seg, segexpected;
	logic [31:0] vectornum, errors;
	
	// 14 bits of input and output (s input, not counting the new expected variables)
	logic [13:0] testvectors[10000:0];
	
//instantiating device under test (DUT) , input: s , output: led & seg
lab1_cc dut(reset, s, led, seg);

//generating clock
//always
	//begin 
		 // set clock with period of 10 time units, high(1) for 5 and low(0) for 5
		//clk=1; #5;
		//clk=0; #5;
		
	//end

	//extract clock from lab1_cc module (thank you vikram + google)
	assign clk = dut.clk;

//initial only used in TB simulation
initial
	begin
		// load in vectors stored as binary digits
		$readmemb("./e155lab1.tv", testvectors);
		
		// initialize # of vectors applied and amount of errors detected
		vectornum = 0;
		errors=0;
		//both 0 to start
		
		//// Pulse reset for 22 time units(2.2 cycles) so the reset
		// signal falls after a clk edge.
		reset = 0; #22;
		reset = 1;
		// we have a low reset so flipped from previous e85 TB's
		
	end

always @(posedge clk)
	begin
		#1; // apply testvectors 1 time unit after rising edge of clock to avoid data chnaging w the clk
		
		// split testvectors into input and expected outputs
		{s, ledexpected, segexpected} = testvectors[vectornum];
		
	end
	
always @(negedge clk)
	if (~reset) begin
			if (led[1:0] !== ledexpected[1:0] || seg !== segexpected) begin
				//if error detected then print input & outputs
				$display("Error: inputs = %b", {s});
				$display("Outputs = %b %b (%b %b expected)", led, seg, ledexpected, segexpected);
				
				// increment amount of errors
				errors = errors + 1;
			end
			// increment the count of vectors
			vectornum = vectornum + 1;
			
			//// When the test vector becomes all 'x', that means all the
			// vectors that were initially loaded have been processed, thus
			// the test is complete.
			if (testvectors[vectornum] === 14'bx) begin
			// '==='&'!==' can compare unknown & floating values (X&Z),unlike
			// '=='&'!=', which can only compare 0s and 1s.
			// 14'bx is 14-bit binary of x's or xxxxx.
			// If the current testvector is xxxxx, report the number of
			// vectors applied & errors detected.
				$display("%d tests completed with %d errors", vectornum, errors);
				// then stop sim
				$stop;
			end
	end

endmodule
			

