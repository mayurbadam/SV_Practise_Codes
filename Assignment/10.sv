/*********************************************************************************************************************************
 * Name                 : 10.sv
 * Creation Date        : 21-03-2022
 * Last Modified        : 21-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishna.b@alpha-numero.tech
 * Description          : Q. Write a snippet constituting a parent class, a child class with set of different properties with a scenario of having one property as in common to both the classes.
									  Following above scenario, now write a method inside child class, to access the parent property i.e. the property which is common to both the classes. 
									  Can we give value to parent property via child handle????...If yes then how?
**********************************************************************************************************************************/
`include "typedefs.sv"
class x;
	b4 a,b;
	function new(b4 v1,v2);
		a = v1;
		b = v2;
	endfunction
endclass

class xy extends x;
	b4 a,c;
	function new(b4 a1,a2,a3,a4);
		//Using super.new() we can give values to parent class properties from child
		super.new(a1,a2);
		this.a = a3;
		this.c = a4;
	endfunction

	function void print();
		//using super keyword we can access property of parent class 
		$display("a from parent: %0d", super.a);
		$display("a from child: %0d", this.a);
	endfunction
endclass

module xyz;
	xy xy1;
	
	initial begin
		xy1 = new(5,6,7,8);
		xy1.print();
	end
endmodule
