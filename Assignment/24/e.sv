/*********************************************************************************************************************************
 * Name                 : d.sv
 * Creation Date        : 25-03-2022
 * Last Modified        : 25-03-2022
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishnamk@gmail.com
 * Description          : Q. Write five time consuming tasks with a condition that all tasks should end at different instances
 										Execute task 1,2,3 concurrently, Now the task 4 should start to execute if any one of the tasks above started completed its execution, And task 5 should execute only after the completion of task 1,2, and 3.
********************************************************************************************************************************/
module xyz;
	event e1;
	task t1();
		$display($time, " Task 1 - started");
		#70 $display($time, " Task 1 - done");
	endtask
	
	task t2();
		$display($time, " Task 2 - started");
		#40 $display($time, " Task 2 - done");
	endtask
	
	task t3();
		$display($time, " Task 3 - started");
		#150 $display($time, " Task 3 - done");
		->e1;
	endtask
	
	task t4();
		$display($time, " Task 4 - started");
		#60 $display($time, " Task 4 - done");
	endtask
	
	task t5();
		$display($time, " Task 5 - started");
		#50 $display($time, " Task 5 - done");
	endtask
	
	
	initial begin
		begin
				t1();
				t2();
			fork : F1
				t3();
				 ;//this will be the leat timed task in the fork. So, after execution of this only, t4() starts
			join_any//If join_none is used, first t4() is starting rather than t3(). So, used join_any and written empty statement.
				t4();
				t5();
		end
	end
endmodule
