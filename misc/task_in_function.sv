class abc;
  byte a,b,c;
  task aaa;
    #10ms b=100;
    c = 50; 
  endtask
  function abb; 
    a = 10;
    fork
      aaa();
    join_none
  endfunction
endclass
 
module Abc;
abc ABC;

initial begin
  
  ABC = new();
  ABC.abb();
  $display("a,b,c: %0d, %0d, %0d", ABC.a,ABC.b,ABC.c);
  #20ms;
  $display("a,b,c: %0d, %0d, %0d", ABC.a,ABC.b,ABC.c);
end
endmodule
