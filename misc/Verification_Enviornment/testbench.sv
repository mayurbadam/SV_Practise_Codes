`include <inf.sv>
module testbench(inf.tb_ports io);
     initial begin 
      clk <=0;
      forever #10 clk = ~clk;
   end

   initial begin
   @(posedge clk) begin
      enable = 1;

 
   end
 
endmodule
