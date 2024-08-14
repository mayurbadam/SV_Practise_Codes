module dff (clk, reset, d, q);

input clk, d, reset;
output reg q;

always @ (posedge clk) begin

if(reset == 1)  q <= 1'b0;

else  q <= d;

$display("reset = %d, d=%d => q = %d", reset, d, q);


#100 $finish;
end

endmodule



