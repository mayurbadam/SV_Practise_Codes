class Animal;
face f;
task display();
f = new();
$display("%0d, %s",f.eyes, f.colour);

endtask
task bark;
$display("bow bow bow");
endtask
endclass

