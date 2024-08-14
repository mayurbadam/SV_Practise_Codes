/*********************************************************************************************************************************
 * Name                 : 1.sv
 * Creation Date        : 16-03-2022
 * Last Modified        : 16-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishna.b@alpha-numero.tech
 * Description          : 
**********************************************************************************************************************************/

class a;
	int a=5,b=10,c=15;

	task print();
		$display("a: %0d, b: %0d, c: %0d", a,b,c);
	endtask
endclass 

module xyz;
	a a1;

	initial begin
		a1 = new();
		a1.print();
	end
endmodule

