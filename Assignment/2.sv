/*********************************************************************************************************************************
 * Name                 : 2.sv
 * Creation Date        : 16-03-2022
 * Last Modified        : 16-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishnamk@gmail.com
 * Description          : 
**********************************************************************************************************************************/

class b;
int a,b;

function new(int a =0 , int b=0);
	this.a = a;
	this.b = b;
endfunction

function void print();
	$display("a: %0d, b: %0d", a,b);
endfunction
endclass

module xyz;
b b1, b2;

initial begin
	b1 = new(10, 15);
	b2 = new(20, 25);
	b1.print();
	b2.print();
	b2 = new(); //new will construct object with default values
//	b2 = null; //null will deallocate memory. By using null there will be no object for that handle.
	b2.print();
end
endmodule
