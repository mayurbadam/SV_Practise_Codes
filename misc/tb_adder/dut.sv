/*
module adder(intf io);
 
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
*/
module adder(
  input clk,
  input reset,
  input  [3:0] a,
  input  [3:0] b,
  input  valid,
  output [6:0] c); 
  
  reg [6:0] tmp_c;
  
  //Reset 
  always @(posedge reset) 
    tmp_c <= 0;
   
  // Waddition operation
  always @(posedge clk) 
    if (valid)    tmp_c <= a + b;
  assign c = tmp_c;

endmodule
