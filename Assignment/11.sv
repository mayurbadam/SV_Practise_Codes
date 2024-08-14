/*********************************************************************************************************************************
 * Name                 : 11.sv
 * Creation Date        : 21-03-2022
 * Last Modified        : 21-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishna.b@alpha-numero.tech
 * Description          : Snippet constituting a super class with three properties and take a subroutine to perform the addition of two properties and assign it to the third one. 
**********************************************************************************************************************************/
`include "typedefs.sv"
class x;
	b4 a,b,c;
	function new(b4 v1,v2,v3);
		a = v1;
		b = v2;
		c = v3;
	endfunction
endclass

class xy extends x;
	function new(b4 a1,a2,a3);
		super.new(a1,a2,a3);
	endfunction

	function void add();
		super.c = super.a + super.b;
		$display("a: %0d, b: %0d, c = sum: %0d", a,b,c);
	endfunction
endclass

module xyz;
	xy xy1;
	
	initial begin
		xy1 = new(5,6,7);
		xy1.add();
	end
endmodule
