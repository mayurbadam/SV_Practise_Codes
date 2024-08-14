`include <inf.sv>
module dut(inf.dut io);
 
initial begin 
   clk <=0;
   forever #10 clk = ~clk;
end

initial begin

always@(posedge clk) begin
   if (enable == 1) begin 
      if(read ==1) begin
         
      end
      if(write==1) begin
      
      end
   end
end
   
endmodule
