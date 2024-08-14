/*********************************************************************************************************************************
 * Name                 : 20.sv
 * Creation Date        : 24-03-2022
 * Last Modified        : 24-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishna.b@alpha-numero.tech
 * Description          : Piece of code to randomize a 2-diamensional array to generate below pattern: 
                                     1  2  3  4  5
                                     2  3  4  5  6
                                     3  4  5  6  7
                                     4  5  6  7  8
                                     5  6  7  8  9
 **********************************************************************************************************************************/
`include "typedefs.sv"

module xyz;

class xyz;
	rand b4 arr [1:5];
	b4 i = 1, j =0;

	function void pre_randomize();
		 	
	endfunction

	constraint cx { foreach(arr[i])
                    arr[i] == j + i;
                }

	function void post_randomize();
		this.j = j+1;;
		$display("arr: %p",arr);
	endfunction
endclass

xyz x1 = new();

	initial begin
		repeat(5) begin
			assert(x1.randomize());
		end
	end
endmodule
