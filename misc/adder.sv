module adder(a,b,ci,s,co);
input a,b,ci;
output reg s,co;

always @ (*) begin

s = a ^ b ^ ci;
co = (a & b) + (b & ci) + (ci & a);

$display("s = %d, cout = %d ", s,co);
end
endmodule
