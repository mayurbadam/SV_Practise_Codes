/*********************************************************************************************************************************
 * Name                 : 17.sv
 * Creation Date        : 23-03-2022
 * Last Modified        : 23-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishnamk@gmail.com
 * Description          : Q. Perform the randomisation of a variable in such a way that it always generates odd members with a condition having difference between current value and previous value is equal to 4.
 **********************************************************************************************************************************/
`include "typedefs.sv"

module xyz;

class x;
	rand b10 a;
	local b10 b= 2*($urandom) + 1;

	constraint ca{(a == b+4); 
						(a%2==1);}
	
	function void pre_randomize();
	endfunction
	function void post_randomize();
		b = a;
		//$display("a: %0d",a);
	endfunction
endclass

x x1 = new();

	initial begin
    //x1.a.rand_mode(0);
		repeat(20) begin
			assert(x1.randomize());
      $display("a: %0d", x1.a);
      #1ps;
		end
	end
endmodule
