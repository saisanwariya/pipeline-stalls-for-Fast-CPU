module pipemem (we,addr,datain,clk,dataout); 
input clk; 
input [31:0] addr; 
input [31:0] datain; 
input we; 
output [31:0] dataout; 
data_memory dmem (clk,dataout,datain,addr,we); 
endmodule