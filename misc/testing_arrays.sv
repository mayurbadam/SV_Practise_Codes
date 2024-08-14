/*********************************************************************************************************************************
 * Name                 : .sv
 * Creation Date        : 01-03-2022
 * Last Modified        : 01-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishna.b@alpha-numero.tech
 * Description          : testing of arrays functionality - if assigned from lsb to msb or ... 
**********************************************************************************************************************************/

module test;
	logic [6:0] p1;
	logic [0:6] p2;
	initial begin
	p1= 'd55;
	p2= 'd55;
 
	$display("p1: %b", p1);
	$display("p2: %b", p2);

	$write(p1[0]);
	$write(p1[1]);
	$write(p1[2]);
	$write(p1[3]);
	$write(p1[4]);
	$write(p1[5]);
	$display(p1[6]);
	$write(p2[0]);
	$write(p2[1]);
	$write(p2[2]);
	$write(p2[3]);
	$write(p2[4]);
	$write(p2[5]);
	$write(p2[6]);

	$display("\nConclusion: 0 is MSB, ");
	end
endmodule
