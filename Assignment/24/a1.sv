/*********************************************************************************************************************************
 * Name                 : 24.sv
 * Creation Date        : 25-03-2022
 * Last Modified        : 25-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishnamk@gmail.com
 * Description          : Q. Write five time consuming tasks with a condition that all tasks should end at different instances
										 Execute all the above tasks concurrently.
										 Doing using semaphore
**********************************************************************************************************************************/

module xyz1;
semaphore s1 = new(5);
	task t1(int a,b);
		s1.get(a);	
		$display($time, " Task 1 - started");
		#10 $display($time, " Task 1 - done");
		s1.put(b);
	endtask
	
	task t2(int a,b);
		s1.get(a);	
		$display($time, " Task 2 - started");
		#20 $display($time, " Task 2 - done");
		s1.put(b);
	endtask
	
	task t3(int a,b);
		s1.get(a);	
		$display($time, " Task 3 - started");
		#30 $display($time, " Task 3 - done");
		s1.put(b);
	endtask
	
	task t4(int a,b);
		s1.get(a);	
		$display($time, " Task 4 - started");
		#40 $display($time, " Task 4 - done");
		s1.put(b);
	endtask
	
	task t5(int a,b);
		s1.get(a);	
		$display($time, " Task 5 - started");
		#50 $display($time, " Task 5 - done");
		s1.put(b);
	endtask
	
	
	initial begin
		fork
			t1(2,1);
			t2(1,1);
			t3(1,1);
			t4(1,1);
			t5(1,1);
		join
	end
endmodule
