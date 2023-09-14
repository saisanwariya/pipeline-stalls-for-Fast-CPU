module pipepc(npc,wpc,clk,clrn,pc); 
input clk, clrn; 
input wpc; 
input [31:0] npc; 
output [31:0] pc; 
dffe32 prog_cntr (npc,clk,clrn,wpc,pc); 
endmodule