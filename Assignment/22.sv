/*********************************************************************************************************************************
 * Name                 : 22.sv
 * Creation Date        : 24-03-2022
 * Last Modified        : 24-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishnamk@gmail.com
 * Description          : Q. Assume that implementer has written a class to randomize the variable with restriction that it always generates the value greater than 50, Now as a testcase writer got a task to override the constraint and generate the value less than 50, Write the code for the above scenario. 
 **********************************************************************************************************************************/
`include "typedefs.sv"

module xyz;

class xyz;
	rand byte a;
	b4 i = 1, j =0;

	function void pre_randomize();
		 	
	endfunction

	constraint cx {soft  a > 50; }

	function void post_randomize();
		this.j = j+1;;
		$display("a: %0d",a);
	endfunction
endclass

xyz x1 = new();

	initial begin
		repeat(5) begin
			assert(x1.randomize() with {a < 50; });
		end
	end
endmodule
