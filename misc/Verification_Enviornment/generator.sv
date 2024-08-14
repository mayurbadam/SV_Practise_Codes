class generator;
transaction blueprint,tr;
DIN[N:0]
WR_EN
WR_CLK
RD_EN
RD_CLK
clear
FULL

function new();
blueprint =new();

endfunction

task run();

endtask
function transaction clone();
tr = new()
endfunction
endclass
