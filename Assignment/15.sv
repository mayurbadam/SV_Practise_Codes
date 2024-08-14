/*********************************************************************************************************************************
 * Name                 : 15.sv
 * Creation Date        : 22-03-2022
 * Last Modified        : 22-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishnamk@gmail.com
 * Description          : A piece of code with class having some properties of rand type (Note: some of the properties to be randc type and some properties to be of non-rand type). Display these properties using some built in methods (what are those built-in methods).
 **********************************************************************************************************************************/
`include "typedefs.sv"

module xyz;

class x;
	b4 a,b;
	rand b4 c,d;
	randc b4 e,f;
	function void printColumn;
		$display("a\tb\tc\td\te\tf");
	endfunction
	function void pre_randomize();
		this.a = 10; 
		this.b = 5; 
	endfunction

	function void post_randomize();
		$display("%0d\t%0d\t%0d\t%0d\t%0d\t%0d",a,b,c,d,e,f);
	endfunction

endclass

x x1 = new();

	initial begin
		x1.printColumn();
		repeat(16)
		assert(randomize(x1));
	end
endmodule
