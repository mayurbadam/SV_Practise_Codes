/*********************************************************************************************************************************
 * Name                 : 20.sv
 * Creation Date        : 24-03-2022
 * Last Modified        : 24-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishna.b@alpha-numero.tech
 * Description          : A code to randomise a queue qay in such a way that the qay contains only even numbers and must bounded in a range of 50 to 100. 
 **********************************************************************************************************************************/
`include "typedefs.sv"

module xyz;

class xyz;
	rand b7 q [$];

	function void pre_randomize();
		 	
	endfunction

 	constraint cc{	q.size() < 10;
					 }
	constraint ca { foreach(q[i])
						 	 q[i]%2 == 0;
						 foreach(q[i])
						 	q[i] inside {[50:100]};
						}
	function void post_randomize();
		$display("q: %p \t\tsize: %0d ",q, q.size());
	endfunction
endclass

xyz x1 = new();

	initial begin
		repeat(5) begin
			assert(x1.randomize());
		end
	end
endmodule
