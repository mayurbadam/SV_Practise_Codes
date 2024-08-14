`include "faceclass.sv";
`include "dogclass.sv";

module test;
Animal dog;
initial begin
dog = new();
dog.bark();
dog.display();
end
endmodule

