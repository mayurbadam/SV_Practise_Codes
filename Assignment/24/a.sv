/*********************************************************************************************************************************
 * Name                 : a.sv
 * Creation Date        : 25-03-2022
 * Last Modified        : 25-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishna.b@alpha-numero.tech
 * Description          : Q. Write five time consuming tasks with a condition that all tasks should end at different instances
										 Execute all the above tasks concurrently.
 										 Execute any three tasks concurrently and remaining two tasks should execute after the execution of first three tasks (note: these tasks run concurrently).
										 Execute any three tasks concurrently and remaining two tasks should start after completion of any task that consumes least time.
										 Execute any three tasks concurrently and the remaining two tasks also should run concurrently irrespective of the status of those three tasks.
										 Execute all 5 tasks sequentially but task 3 should run in background.
										 Execute task 1,2,3 concurrently, Now the task 4 should start to execute if any one of the tasks above started completed its execution, And task 5 should execute only after the completion of task 1,2, and 3.
**********************************************************************************************************************************/
module xyz;
	task t1();
		$display($time, " Task 1 - started");
		#10 $display($time, " Task 1 - done");
	endtask
	
	task t2();
		$display($time, " Task 2 - started");
		#20 $display($time, " Task 2 - done");
	endtask
	
	task t3();
		$display($time, " Task 3 - started");
		#30 $display($time, " Task 3 - done");
	endtask
	
	task t4();
		$display($time, " Task 4 - started");
		#40 $display($time, " Task 4 - done");
	endtask
	
	task t5();
		$display($time, " Task 5 - started");
		#50 $display($time, " Task 5 - done");
	endtask
	
	
	initial begin
		fork
			t1();
			t2();
			t3();
			t4();
			t5();
		join
	end
endmodule
