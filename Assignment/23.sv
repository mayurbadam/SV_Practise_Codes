/*********************************************************************************************************************************
 * Name                 : 23.sv
 * Creation Date        : 25-03-2022
 * Last Modified        : 25-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishnamk@gmail.com
 * Description          : 23. Assume that there is a property in super class which is of rand type, Now constraint the randomisation of the particular property in the range of 100 to 150, from child.
								  Now take the same property in both parent class and child class and repeat the same scenario as above.
**********************************************************************************************************************************/
`include "typedefs.sv"

module xyz;

class xyz;
	rand byte a;

	function void pre_randomize();
		 	
	endfunction

	constraint cx { a inside {[100:150]}; }

	function void post_randomize();
		$display("a: %0d",a);
	endfunction
endclass

class x extends xyz;
	rand byte a;	

	function void post_randomize();
		$display("super a: %0d, this a: %0d", super.a, this.a);
	endfunction
endclass 

x x1 = new();

	initial begin
		repeat(5) begin
			assert(x1.randomize());
		end
	end
endmodule
