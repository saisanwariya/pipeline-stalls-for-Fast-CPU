module pipewb (walu,wmo,wm2reg,wdi); 
input [31:0] walu; 
input [31:0] wmo; 
input wm2reg;
output [31:0] wdi; 
mux2x32 wb (walu,wmo,wm2reg,wdi); 
endmodule