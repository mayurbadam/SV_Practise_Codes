/*********************************************************************************************************************************
 * Name                 : 9.sv
 * Creation Date        : 21-03-2022
 * Last Modified        : 21-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishna.b@alpha-numero.tech
 * Description          : Q. Write a class with different properties take an object, copy one object to another object.
**********************************************************************************************************************************/
`include "typedefs.sv"
class x;
	b4 a,b;

	function new(b4 v1,v2);
		a = v1;
		b = v2;
	endfunction
	
	function void copy(x abc);
		this.a = abc.a;
		this.b = abc.b;
	endfunction

endclass

class y;
	x x1;
	b4 c,d;

	function new(b4 a,b,c,d);
		x1 = new(a,b);
		this.c = c;
		this.d = d;
	endfunction

	function void copy(y abc);
		this.c = abc.c;
		this.d = abc.d;
		x1.copy(abc.x1);
	endfunction
endclass 

module xyz;
	x x1,x2;
	y y1,y2;
	
	initial begin
		x1 = new(5,6);
		x2 = new(7,8);
		$display("Shallow copy: \n\tx1.a: %0d, x1.b: %0d,\t\tx2.a: %0d, x2.b: %0d", x1.a,x1.b,x2.a,x2.b);
		x2 = new x1;
		$display("\tx1.a: %0d, x1.b: %0d, \t\tx2.a: %0d, x2.b: %0d", x1.a,x1.b,x2.a,x2.b);
		x1.b=12;
		$display("\tx1.a: %0d, x1.b: %0d, \t\tx2.a: %0d, x2.b: %0d", x1.a,x1.b,x2.a,x2.b);
		x2.a= 15;
		$display("\tx1.a: %0d, x1.b: %0d, \t\tx2.a: %0d, x2.b: %0d", x1.a,x1.b,x2.a,x2.b);

		////

		y1 = new(1,2,3,4);
		y2 = new(0,9,8,7);
		$display("Deep copy:\n\ty1.a: %0d, y1.b: %0d, y1.c: %0d, y1.d: %0d", y1.x1.a,y1.x1.b,y1.c,y1.d);
		$display("\ty2.a: %0d, y2.b: %0d, y2.c: %0d, y2.d: %0d", y2.x1.a,y2.x1.b,y2.c,y2.d);
		y2.copy(y1);
		$display("\ty1.a: %0d, y1.b: %0d, y1.c: %0d, y1.d: %0d", y1.x1.a,y1.x1.b,y1.c,y1.d);
		$display("\ty2.a: %0d, y2.b: %0d, y2.c: %0d, y2.d: %0d", y2.x1.a,y2.x1.b,y2.c,y2.d);
	end
endmodule
