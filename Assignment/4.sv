/*********************************************************************************************************************************
 * Name                 : 4.sv
 * Creation Date        : 21-03-2022
 * Last Modified        : 21-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishnamk@gmail.com
 * Description          : a snippet to track the number of times class object has been created.
**********************************************************************************************************************************/

class b;
int a,b;
static int countobj=0;

function new(int a1,a2);
	a = a1;
	b = a2;
	++countobj;
endfunction

endclass

module xyz;
b b1,b2,b3,b4;

initial begin
	b1 = new(1,2);
	b2 = new(3,4);
	b3 = new(5,6);
	b4 = new(7,8);
	$display("no.of objects created: %0d",b::countobj);
end
endmodule
