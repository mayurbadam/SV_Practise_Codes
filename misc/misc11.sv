/*********************************************************************************************************************************
 * Name                 : misc.sv
 * Creation Date        : 28-02-2022
 * Last Modified        : 29-02-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishnamk@gmail.com
 * Description          : Assigning a value from three variables, the assigned value is the one with lowest value. But, the values sent for comparison are sent bit by bit only and the output should be assigned bit by bit. Not like, storing 8 bits in a temperory variable and comparing and then assigning.
**********************************************************************************************************************************/
module misc(a,b,c,y);
input logic [7:0] a,b,c;
input logic  y;

logic a1 [7:0],b1[7:0],c1[7:0];
//
//function get(logic [7:0] in)
//	
//endfunction

initial begin
	a='d22;
	b='d22;
	c='d9;

	$display("a = %0d: %b,\nb = %0d: %b\nc = %0d: %b",a,a,b,b,c,c);
	{<<1{a1}} =a;
	{<<1{b1}} =b;
	{<<1{c1}} =c;

	$display("a1= %p",a1);
	$display("b1= %p",b1);
	$display("c1= %p",c1);

	for(int i=7; i>=0; i--) begin
		/*if(a1[i] == b1[i] && a[i] == c1[i])begin
			y=a[i];
			$display(y);
		end
		else if((a1[i] != b1[i]) || (a1[i] != c1[i]) || (b1[i] != c1[i]))	begin 
			//if((a1[i] < b1[i]) && (a1[i] < c1[i]))begin*/

			if({a1[i], b1[i], c1[i]} == 3'b000 ) begin
				y = a[i];
				$display(y);
			end
			else if({a1[i], b1[i], c1[i]} == 3'b111 ) begin
				y = b[i];
				$display(y);
			end
			else if({a1[i], b1[i], c1[i]} == 3'b001 ) begin
				y = a[i];
				$display(y);
			end
			//else if((b1[i] < a1[i]) && (b1[i] < c1[i]))begin
			else if({a1[i], b1[i], c1[i]} == 3'b010 ) begin
				y = a[i];
				$display(y);
			end
			else if({a1[i], b1[i], c1[i]} == 3'b011 ) begin
				y = a[i];
				$display(y);
			end
			else if({a1[i], b1[i], c1[i]} == 3'b100 ) begin
				y = b[i];
				$display(y);
			end
			//else if ((c1[i] < a1[i]) && (c1[i] < b1[i])) begin
			else if({a1[i], b1[i], c1[i]} == 3'b101 ) begin
				y = b[i]; 
				$display(y);
			end
			else if({a1[i], b1[i], c1[i]} == 3'b110 ) begin
				y = c[i];
				$display(y);
			end
			//else continue;
		//end
	   //y[i] = lowest;
		//$display("loop count: 	%d",i);
	end
	//$display("Lowest y= %0d: %b :%t",y,y,$time);

end
endmodule

