/*********************************************************************************************************************************
 * Name                 : 8.sv
 * Creation Date        : 21-03-2022
 * Last Modified        : 21-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishna.b@alpha-numero.tech
 * Description          : Q. Write a code with two objects of same class and perform the object assignment of one class object handle to another handle.
									  Update the property using both handles and observe the changes accordingly.
									  Deallocate the assigned object
**********************************************************************************************************************************/
`include "typedefs.sv"
class x;
	b4 a,b;

	function new(b4 v1,v2);
		a = v1;
		b = v2;
	endfunction

	function byte retAB();
		return {a,b};
	endfunction
endclass

module xyz;
	x x1,x2;
	
	initial begin
		x1 = new(5,6);
		x2 = new(7,8);
		$display("x1.a: %0d, x1.b: %0d, x2.a: %0d, x2.b: %0d", x1.a,x1.b,x2.a,x2.b);
		x2 = x1;
		$display("x1.a: %0d, x1.b: %0d, x2.a: %0d, x2.b: %0d", x1.a,x1.b,x2.a,x2.b);
		x2.a= 15;
		$display("x1.a: %0d, x1.b: %0d, x2.a: %0d, x2.b: %0d", x1.a,x1.b,x2.a,x2.b);
		x1.b=25;
		$display("x1.a: %0d, x1.b: %0d, x2.a: %0d, x2.b: %0d", x1.a,x1.b,x2.a,x2.b);
		x2 = null;
		//$display("x1.a: %0d, x1.b: %0d, x2.a: %0d, x2.b: %0d", x1.a,x1.b,x2.a,x2.b);--> will not work because x2 is deallocated
	end
endmodule
