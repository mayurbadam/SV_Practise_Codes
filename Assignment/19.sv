/*********************************************************************************************************************************
 * Name                 : 19.sv
 * Creation Date        : 23-03-2022
 * Last Modified        : 23-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishna.b@alpha-numero.tech
 * Description          : A piece of code to constraint a variable in such a way that the value of the variable must not contain 10,20 and it should not fall in the range of 50 and 65. 
 **********************************************************************************************************************************/
`include "typedefs.sv"

module xyz;

class xyz;
	randc b7 x,y;

	constraint cx { !( x inside {10,20,[50:65]});}
	
	function void post_randomize();
		$display("x: %0d, y: %0d",x,y);
	endfunction
endclass

xyz x1 = new();

	initial begin
		repeat(20) begin
			assert(x1.randomize());
		end
	end
endmodule
