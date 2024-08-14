/*********************************************************************************************************************************
 * Name                 : 7.sv
 * Creation Date        : 21-03-2022
 * Last Modified        : 21-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishnamk@gmail.com
 * Description          : Q. Can we access local property of parent class inside child? If yes how can we restrict to access the parent class property from outside the class. 
**********************************************************************************************************************************/
//--We cannot acess parent class local property from child class. It will restrict access of the property even from child class.

//For accessing parent class property from child class only*, we can specify parent class property as protected.

//But still, we can access them using the same class methods

typedef bit[3:0] bit4;

class parent;
	local bit4 a=5;
	protected bit4 b=6;

	function byte retAB();
		return {a,b};
	endfunction
endclass

class child extends parent;
	bit4 c=7;
	function void print();
		//$display("a(local):", super.a); -->Error
		$display("b(protected):", super.b);
	endfunction
endclass

module xyz;
	child c1;
	bit4 c,d;

	initial begin
		c1 = new();
		c1.print();
		{c,d}= c1.retAB();
		$display(c,d);
	end
endmodule
