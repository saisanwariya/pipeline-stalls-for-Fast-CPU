module pipeemreg (ewreg,em2reg,ewmem,ealu,eb,ern,clk,clrn,mwreg,mm2reg,mwmem,malu,mb,mrn); 
input clk, clrn; 
input [31:0] ealu; 
input [31:0] eb; 
input [4:0] ern; 
input ewreg,em2reg,ewmem; 
output [31:0] malu; 
output [31:0] mb; 
output [4:0] mrn; 
output mwreg,mm2reg,mwmem; 
reg [31:0] malu,mb;
reg [4:0] mrn;
reg mwreg,mm2reg,mwmem;
always @(negedge clrn or posedge clk)
if (!clrn) begin 
mwreg <= 0; mm2reg <= 0;
mwmem <= 0; malu <= 0;
mb <= 0; mrn <= 0;
end else begin 
mwreg <= ewreg; mm2reg <= em2reg;
mwmem <= ewmem; malu <= ealu;
mb <= eb; mrn <= ern;
end
endmodule