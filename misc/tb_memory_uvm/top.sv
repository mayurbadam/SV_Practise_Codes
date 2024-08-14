`include "interface.sv"
`include "testbench.sv"
`include "dut.sv" 
module tbench_top;
   
  //clock and reset signal declaration
  bit clk;
  bit reset;
   
  //clock generation
  always #5 clk = ~clk;
   
  //reset Generation
  initial begin
    reset = 1;
    #5 reset =0;
  end
   
   
  //creatinng instance of interface, inorder to connect DUT and testcase
  intf i_intf(clk,reset);
   
  //Testcase instance, interface handle is passed to test as an argument
  test t1(i_intf);
   
  //DUT instance, interface signals are connected to the DUT ports
  adder dut (
    .clk(i_intf.clk),
    .reset(i_intf.reset),
    .a(i_intf.a),
    .b(i_intf.b),
    .valid(i_intf.valid),
    .c(i_intf.c)
   );
endmodule
