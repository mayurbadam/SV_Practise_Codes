//`include "transaction.sv"
class generator;
   rand transaction tr;
   mailbox gen2driv;
   int repeat_count;
   event ended;

   function new(mailbox gen2driv);
      this.gen2driv = gen2driv;
   endfunction

   task run();
      repeat((repeat_count)) begin
         tr =new();
         if(!tr.randomize()) $fatal("randomization failed");
         gen2driv.put(tr);
      end
         -> ended;
   endtask

endclass
