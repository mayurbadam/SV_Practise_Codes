class parent1;
   //signals
   rand bit [7:0] data;
   
   //Constructor
   function new (string name = "cntr_trans");
     $display("%m");
   endfunction
endclass


class child extends parent1;
   //Constructor
   function new (string name = "cntr_trans");
     super.new();
   endfunction
endclass

module abc;
parent1 p;
child c;

initial begin
  p = new();
  c = new();

  $display("%p", c);
  //c.display_parent();
end

endmodule
