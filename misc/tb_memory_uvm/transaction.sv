class transaction;
   rand bit [3:0] a,b;
        bit [6:0] c;
  function void display(string name);
    $display("- %s ",name);
    $display("- a = %0d, b = %0d",a,b);
    $display("- c = %0d",c);
  endfunction
endclass
