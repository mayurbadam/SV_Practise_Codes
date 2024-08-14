/*********************************************************************************************************************************
 * Name                 : 5.sv
 * Creation Date        : 21-03-2022
 * Last Modified        : 21-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishnamk@gmail.com
 * Description          : a snippet with class having some properties and take values from user through method. 
**********************************************************************************************************************************/
`include "typedefs.sv"
class b;
b4 a,b;

function void write(b4 w1,w2);
	a = w1;
	b = w2;
endfunction

task print;
	$display("a: %0d, b: %0d", a,b);
endtask

endclass

module xyz;
b b1;

initial begin
	b1 = new();
	b1.write(10,15);
	b1.print();
end
endmodule
