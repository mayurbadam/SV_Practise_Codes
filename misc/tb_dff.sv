`include "dff.sv"
module tb();
reg clk, d, reset;
wire q;

dff dff1( clk, d,reset, q);

always #5 clk <= ~clk;

initial begin
reset <=1; d<= 0; #5; d<=1;

#10; reset <=0; d<= 1;
#5; d<=0;
#4; d<=1;
#8; d<=0;
#10; d<=1;
#100 $finish;
end 
endmodule

