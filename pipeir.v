module pipeir(pc4,ins,wir,clk,clrn,dpc4,inst); 
input clk, clrn; 
input wir; 
input [31:0] pc4; 
input [31:0] ins; 
output [31:0] dpc4; 
output [31:0] inst; 
dffe32 pc_plus4 (pc4,clk,clrn,wir,dpc4); 
dffe32 instruction (ins,clk,clrn,wir,inst); 
endmodule