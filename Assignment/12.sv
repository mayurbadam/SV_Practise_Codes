/*********************************************************************************************************************************
 * Name                 : 12.sv
 * Creation Date        : 21-03-2022
 * Last Modified        : 21-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishnamk@gmail.com
 * Description          : A piece of code with the scenario having multiple child classes and try to override the existing parent method. (Note: Method Overriding means to override a method with same name same argument but different class, overloading is not in practise in sv).
 								  Overloading is not supported. Eventhough for new method looks like we are overloading, it doesnot work like that. Only one copy of the method can be used. If we write new(a,b,c), only that will work. new() will not work.
 **********************************************************************************************************************************/
`include "typedefs.sv"
class x;
	b4 a=5,b=6,c=7;
	function new(b4 v1,v2,v3);
		a = v1;
		b = v2;
		c = v3;
	endfunction 
	function void add();
		c = a + b;
		$display("class x's add will add only its properties - a,b,c");
		$display("a: %0d, b: %0d, c = sum: %0d", a,b,c);
	endfunction
endclass

class xy extends x;
	int x,y,z;
	function new(b4 a1,a2,a3);
		super.new(a1,a2,a3);
	endfunction

	function void add();
		super.c = super.a + super.b;
		z = x + y;
		$display("class xy's add will add parents and its properties both - a,b,c & x,y,z");
		$display("a: %0d, b: %0d, c = sum: %0d", a,b,c);
		$display("x: %0d, y: %0d, z = sum: %0d", a,b,c);
	endfunction
endclass

class xz extends x;
	int x,y,z;
	function new(b4 a1,a2,a3);
		super.new(a1,a2,a3);
	endfunction

	function void add();
		z = x + y; 
		$display("class xz's add will add only its properties - x,y,z");
		$display("x: %0d, y: %0d, z = sum: %0d", a,b,c);
	endfunction
endclass

module xyz;
	x x1;
	xy xy1;
	xz xz1;
	
	initial begin
		x1 = new(1,2,3);
		xy1 = new(5,6,7);
		xz1 = new(8,9,10);
		
		x1.add();
		xy1.add();
		xz1.add();
	end
endmodule
