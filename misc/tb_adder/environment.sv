`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"

class environment;
generator gen;
driver driv;
monitor mon;
scoreboard scb;

mailbox gen2driv;
mailbox mon2scb;

virtual intf vintf;

function new(virtual intf vintf);
   this.vintf = vintf;
   gen2driv = new();
   mon2scb = new();

   gen = new(gen2driv);
   driv = new(vintf, gen2driv);
   mon = new(vintf, mon2scb);
   scb = new(mon2scb);
endfunction

task pre_test();
  driv.reset();
endtask
 
task test();
  fork
    gen.run();
    driv.run();

    mon.run();
    scb.run();
  join_any
endtask
 
task post_test();
  wait(gen.ended.triggered);
  wait(gen.repeat_count == driv.no_transactions);
  wait(gen.repeat_count == scb.no_transactions);
endtask

task run();
  pre_test();
  test();
  post_test();
  $finish;
endtask
endclass
