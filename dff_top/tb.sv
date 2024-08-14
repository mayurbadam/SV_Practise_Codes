`include "dff.sv"

module tb;
reg d,clk,rstn;
wire q;

dff d1(clk,rstn,d,q);



initial begin
   clk =0;
   forever #5 clk = ~clk;
end

initial begin
    $monitor("d: %b, q: %b", d,q);   
       d=0;
       rstn=1;
    #5 rstn=0;
    #5 rstn=1;
       d=0;
    #5 d=1; 
    #10 d=0;
    #10 $finish;
end
endmodule
