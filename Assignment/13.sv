/*********************************************************************************************************************************
 * Name                 : 12.sv
 * Creation Date        : 22-03-2022
 * Last Modified        : 22-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishnamk@gmail.com
 * Description          : A generic class with some properties. (Note: Intention behind the generic class, can change the property/can be configured during instantiation). 
 **********************************************************************************************************************************/
`include "typedefs.sv"

module xyz;

class x #(SIZE1 = 3, SIZE2 = 5, parameter type T = int) ;
	bit[SIZE1-1:0] a=5;
	bit[SIZE2-1:0] b=6;
	T c;
	function new(bit[SIZE1-1:0] p1, bit[SIZE2-1:0] p2, T p3);
		a = p1;
		b = p2;
		c = p3;
	endfunction

	function void print();
		$display("a: %0d, b: %0d, c = sum: %0p", a,b,c); // %0d is also working, how is %0d giving "Mayur"-string, how %p works?
	endfunction
endclass

	x #(10) x1= new(1,2,3);
	x #(10,15, string) x2= new(15,52,"Mayur");
	x #(10,2, byte) x3= new(25,51,21);
	
	initial begin
		//x1 = new(1,2,3);
		
		x1.print();
		x2.print();
		x3.print();
	end
endmodule
