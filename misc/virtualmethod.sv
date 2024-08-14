class animal;
int age, eyes;
string colour;
endclass

class mammal extends animal;
bit mammary_gland =1;
virtual function void display();
$display("%0b",mammary_gland);
endfunction
endclass

module virtual1;
animal lizard;
mammal dog;
initial begin
dog = new();
lizard = dog;
dog.display();
//lizard.display();
end
endmodule
