module pipeif(pcsrc,pc,bpc,rpc,jpc,npc,pc4,ins); 
input [31:0] pc; 
input [31:0] bpc; 
input [31:0] rpc; 
input [31:0] jpc; 
input [1:0] pcsrc;
output [31:0] npc;
output [31:0] pc4;
output [31:0] ins;
mux4x32 next_pc (pc4,bpc,rpc,jpc,pcsrc,npc); 
cla32 pc_plus4 (pc,32'h4,1'b0,pc4); 
instruction_memory inst_mem (pc,ins); 
endmodule