class scoreboard;

mailbox mon2scb;
int no_transactions;

function new(mailbox mon2scb);
   this.mon2scb = mon2scb;
endfunction
task run();
   transaction tr;
   forever begin
      mon2scb.get(tr);
      if((tr.a+tr.b) == tr.c) 
         $display("Result - As expected");
      else
         $error("Wrong result\n Expected: %0d Actual: %0d", (tr.a+tr.b), tr.c);
      no_transactions++;
      tr.display("Scoreboard:");
   end
endtask
endclass
