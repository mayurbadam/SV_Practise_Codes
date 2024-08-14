/*********************************************************************************************************************************
 * Name                 : 6.sv
 * Creation Date        : 21-03-2022
 * Last Modified        : 21-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishnamk@gmail.com
 * Description          : a code to access the local property of a class from outside the class. 
**********************************************************************************************************************************/

class b;
local int a,b;

function void assignLocal(int a1,a2);
	this.a = a1;
	this.b = a2;
endfunction

function void printLocal();
	$display("a: %0d, b: %0d",a,b);
endfunction

endclass

module xyz;
b b1;

initial begin
	b1 = new();
	b1.assignLocal(1,2);
	b1.printLocal();
end
endmodule
