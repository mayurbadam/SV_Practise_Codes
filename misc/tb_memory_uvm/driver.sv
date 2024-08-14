//`include "interface.sv"
//`include "transaction.sv"
class driver;
virtual intf vintf;
mailbox gen2driv;
int no_transactions;

function new(virtual intf vintf, mailbox gen2driv);
   this.vintf = vintf;
   this.gen2driv = gen2driv;
endfunction

task reset; // for resetting interface signals to default values
   wait(vintf.reset);
   $display("Driver Reset Started");
   vintf.a <= 0;
   vintf.b <= 0;
   vintf.valid <= 0;
   wait(!vintf.reset);
   $display("Driver Reset Ended");
endtask

task run();// for driving transaction items to interface signals
  forever begin  
   transaction tr;
   gen2driv.get(tr);
   @(posedge vintf.clk);
   vintf.valid <=1;
   vintf.a <= tr.a;
   vintf.b <= tr.b;
   @(posedge vintf.clk);
   vintf.valid <=0;
   tr.c =vintf.c;
   @(posedge vintf.clk);
   tr.display("Driver:");
   no_transactions++;
  end
endtask

endclass
