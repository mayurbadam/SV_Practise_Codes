/*********************************************************************************************************************************
 * Name                 : 3.sv
 * Creation Date        : 21-03-2022
 * Last Modified        : 21-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishnamk@gmail.com
 * Description          : subroutine to add two properties and assign it to third property.
**********************************************************************************************************************************/

class b;
int a,b,c;

function void add();
	$display("Before adding\n\t a: %0d, b: %0d, c: %0d", a,b,c);
	c = a + b;
	$display("After adding\n\t a: %0d, b: %0d, c: %0d", a,b,c);
endfunction
endclass

module xyz;
b b1;

initial begin
	b1 = new();
	b1.a = 10;
	b1.b = 20;
	b1.add();
end
endmodule
