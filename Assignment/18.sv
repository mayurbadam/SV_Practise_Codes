/*********************************************************************************************************************************
 * Name                 : 18.sv
 * Creation Date        : 23-03-2022
 * Last Modified        : 23-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishnamk@gmail.com
 * Description          : a class with two variables ‘x’ and ‘y’, constraint the randomisation of these variables as follows:
										* If the value of x is ranging from 5 to 10 then the value of y should be less than 20.
										* If the value of x is ranging in between 20 to 40 then the value of y should be greater than 30 and less than 70
										* otherwise the value of y should be greater than 70.
 **********************************************************************************************************************************/
`include "typedefs.sv"

module xyz;

class xyz;
	rand b5 x,y;

	constraint cab{ x inside {[0:5]} -> y < 20; 
						 x inside {[20:40]} -> y >20;
						 x inside {[6:19], [40:$]} -> y > 70;
	}
	
	function void pre_randomize();
	endfunction
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
