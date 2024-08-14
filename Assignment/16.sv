/*********************************************************************************************************************************
 * Name                 : 16.sv
 * Creation Date        : 23-03-2022
 * Last Modified        : 23-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishnamk@gmail.com
 * Description          : Q. Randomize a class property without using rand or randc. (try std::randomize() and argument to randomize method) **********************************************************************************************************************************/
`include "typedefs.sv"

module xyz;

class x;
	b4 a=7,b=4;
	function void print();
		if (!(std::randomize(a,b) with { a inside {[1:10]}; b < 8; })) $display("Randomization error");
		$display("a: %0d, b: %0d",a,b);
	endfunction
endclass

x x1 = new();

	initial begin
		repeat(16) begin
			x1.print();
		end
	end
endmodule
