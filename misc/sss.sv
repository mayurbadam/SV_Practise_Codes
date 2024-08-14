module Mailbox;

class packet;
   rand byte address, data;
   constraint c1 {
      address>100;
      data inside {[0:100]};
   }
endclass

class generator extends packet;
  // packet p1=new();
  packet p1;
   mailbox #(packet) mbx;
   //  mailbox #(packet) mbx =new();
      function new( mailbox #(packet) mbx );
   this.mbx=mbx;
  
   endfunction
  task t1;
  mbx.put(p1);
  endtask
endclass

class driver extends packet;
   //
  // packet p1 = new();
   mailbox #(packet) mbx;
function new( mailbox #(packet) mbx );
   this.mbx=mbx;
     endfunction
task t;
   mbx.get(p1);
   endtask
endclass
mailbox mbx;
 packet p1=new();
 generator g=new(mbx);
 driver d=new(mbx);
initial begin
 p1.randomize();
$display("address=%b,data=%b \n",g.address,g.data);
$display("address=%b,data=%b \n",d.address,d.data);


end
endmodule
