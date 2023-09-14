module dffe32(d,clk,clrn,e,q); 
input [31:0] d; 
input e; 
input clk, clrn; 
output reg [31:0] q; 
always @(negedge clrn or posedge clk)
if (!clrn) q <= 0;
else if (e) q <= d; 
endmodule