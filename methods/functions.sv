module functions;
   int a,b,c,d,sum,m;

   function int add(int x=1,y);
      add = x+y;//local variable with method name is created automatically.
      //return add; --> this line is not needed because function naturally returns the local variable with same name as function name
   endfunction

   function void disp(int x);
      $display("%0d",x);
   endfunction

   //void function can also have o/ps:
   function void mul2(input int x, output int y);
      y = x*2;
   endfunction

   initial begin
      a='d23;
      b='d47;
      //c='d234;
      d='d466;

      //the values sent can have different names to that of arguments
      sum = add(a,b);
      disp(sum);

      //We can give default values to arguments. We must send values to arguments compulsory only if there is no default value to the arguments. 
      sum = add( ,d);
      disp(sum);

      mul2(a,m);
      disp(m);
   end
endmodule
