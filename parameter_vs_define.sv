/*********************************************************************************************************************************
 * Name                 : .sv
 * Creation Date        : --2022
 * Last Modified        : --2022
----------------------------------------------------------------------------------------------------------------------------------
 * Author               : Badam Mayur Krishna
 * Author's Email       : mayurkrishnamk@gmail.com
----------------------------------------------------------------------------------------------------------------------------------
 * Description          : 
**********************************************************************************************************************************/
parameter a=10;
`define c 30
module abc;
  `define d 40
  parameter b = 10;
  //a=15;
  initial begin
    $display(a);
    $display(b);
    $display(`c);
    $display(`d);
  end
endmodule
module def;
  initial begin
    $display(`c);
    $display(`d);
    $display(a);
    //$display(b);
  end
endmodule

