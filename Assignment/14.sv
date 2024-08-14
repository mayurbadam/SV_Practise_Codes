/*********************************************************************************************************************************
 * Name                 : 14.sv
 * Creation Date        : 22-03-2022
 * Last Modified        : 22-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishna.b@alpha-numero.tech
 * Description          : Q. Write a super class having a method where user will ask the testcase writer to mandatorily indulge the behaviour of the method from the user itself.
 **********************************************************************************************************************************/
`include "typedefs.sv"

module xyz;

virtual class x;
	b4 a=2,b=3;
	pure virtual function byte sendDefault();

endclass

class y extends x;
	b4 c=10,d=11;
	//If we donot override 'sendDefault' method -> ERROR:Sub-class 'y' does not override all virtual methods of abstract superclass 'x'.
	virtual function byte sendDefault();
		return {c,d};
	endfunction
	function void print();
		$display("c: %0d, d: %0d", c,d);
	endfunction
endclass

	y y1= new();
	//x x1 = new();
	b4 u,v;
	initial begin
		y1.print();
		{u,v} = y1.sendDefault();
		$display("u: %0d, v: %0d",u,v);
	end
endmodule
