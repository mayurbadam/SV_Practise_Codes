module fork_join;
   int a,b,c,d,e,f;

   task automatic display(int x,y);       
      x = x+10;
      y = x;
      $display(x,y);
      #1000;
      $display(x,y);
   endtask

   initial begin
      a =10; b=40; c=50; d=12; e=43; f=89;
      fork 
	 display(a,b);
	 display(c,d);
	 display(e,f);
	 //display(a,b);
	 //display(c,d);
	 //display(e,f);
	 //display(a,b);
	 //display(c,d);
	 //display(e,f);
	 //display(a,b);
	 //display(c,d);
	 //display(e,f);
	 //display(a,b);
	 //display(c,d);
	 //display(e,f);
	 //display(a,b);
	 //display(c,d);
	 //display(e,f);
	 //display(a,b);
	 //display(c,d);
	 //display(e,f);
	 //display(a,b);
	 //display(c,d);
	 //display(e,f);
      join
   end
endmodule
