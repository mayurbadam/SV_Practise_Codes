//`include ""
class monitor;

virtual intf vintf;
mailbox mon2scb;

function new(virtual intf vintf, mailbox mon2scb);
   this.vintf = vintf;
   this.mon2scb = mon2scb;
endfunction

task run();
   forever begin
      transaction tr;
      tr= new();
      @(posedge vintf.clk);
      wait(vintf.valid);
         tr.a = vintf.a;
	 tr.b = vintf.b;
      @(posedge vintf.clk);
         tr.c = vintf.c;
      @(posedge vintf.clk);
         mon2scb.put(tr);
	 tr.display("Monitor:");
   end
endtask
endclass
