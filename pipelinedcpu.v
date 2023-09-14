module pipelinedcpu(clk,clrn,pc,inst,ealu,malu,wdi); 
input clk, clrn; 
output [31:0] pc;
output [31:0] inst; 
output [31:0] ealu; 
output [31:0] malu; 
output [31:0] wdi; 

wire [31:0] pc4; 
wire [31:0] ins; 
wire [31:0] npc; 

wire [31:0] dpc4; 
wire [31:0] bpc; 
wire [31:0] jpc; 
wire [31:0] da,db;
wire [31:0] dimm; 
wire [4:0] drn; 
wire [3:0] daluc; 
wire [1:0] pcsrc; 
wire wpcir; 
wire dwreg; 
wire dm2reg;
wire dwmem; 
wire daluimm;
wire dshift; 
wire djal; 

wire [31:0] epc4; 
wire [31:0] ea,eb;
wire [31:0] eimm; 
wire [4:0] ern0; 
wire [4:0] ern;
wire [3:0] ealuc; 
wire ewreg; 
wire em2reg;
wire ewmem; 
wire ealuimm; 
wire eshift; 
wire ejal; 

wire [31:0] mb; 
wire [31:0] mmo;
wire [4:0] mrn; 
wire mwreg; 
wire mm2reg;
wire mwmem; 

wire [31:0] wmo; 
wire [31:0] walu; 
wire [4:0] wrn;
wire wwreg; 
wire wm2reg; 

pipepc prog_cnt (npc,wpcir,clk,clrn,pc);
pipeif if_stage (pcsrc,pc,bpc,da,jpc,npc,pc4,ins); 

pipeir fd_reg (pc4,ins,wpcir,clk,clrn,dpc4,inst);
pipeid id_stage (mwreg,mrn,ern,ewreg,em2reg,mm2reg,dpc4,inst,wrn,wdi,ealu,malu,mmo,wwreg,clk,clrn,bpc,jpc,pcsrc,wpcir,dwreg,dm2reg,dwmem,daluc,daluimm,da,db,dimm,drn,dshift,djal); 

pipedereg de_reg (dwreg,dm2reg,dwmem,daluc,daluimm,da,db,dimm,drn, dshift,djal,dpc4,clk,clrn,ewreg,em2reg,ewmem, ealuc,ealuimm,ea,eb,eimm,ern0,eshift,ejal,epc4);
pipeexe exe_stage (ealuc,ealuimm,ea,eb,eimm,eshift,ern0,epc4,ejal,ern,ealu); 

pipeemreg em_reg (ewreg,em2reg,ewmem,ealu,eb,ern,clk,clrn,mwreg,mm2reg,mwmem,malu,mb,mrn);
pipemem mem_stage (mwmem,malu,mb,clk,mmo); 

pipemwreg mw_reg (mwreg,mm2reg,mmo,malu,mrn,clk,clrn,wwreg,wm2reg,wmo,walu,wrn);
pipewb wb_stage (walu,wmo,wm2reg,wdi); 

endmodule
