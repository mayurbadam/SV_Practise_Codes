`include "adder.sv"

module tb();

logic a,b,ci,s,co;

adder adder1(a,b,ci,s,co);

initial begin 

#10; a=1'b0; b=1'b0; ci=1'b0;

#10; a=1'b0; b=1'b0; ci=1'b1;

#10; a=1'b0; b=1'b1; ci=1'b0;

#10; a=1'b0; b=1'b1; ci=1'b1;

#10; a=1'b1; b=1'b0; ci=1'b0;

#10; a=1'b1; b=1'b0; ci=1'b1;

#10; a=1'b1; b=1'b1; ci=1'b0;

#10; a=1'b1; b=1'b1; ci=1'b1;

end
endmodule


