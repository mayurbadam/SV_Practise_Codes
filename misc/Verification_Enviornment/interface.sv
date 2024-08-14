interface inf;
   bit clk, read, enable,
   logic [8:0] address, data;
   
   modport tb_ports(
      input clk, address, data,
      output read, enable
   )
   modport dut_ports(
      input clk, read, enable,
      output address, data
   )
endinterface
