module addsub32 (a,b,sub,s); 
input [31:0] a, b; 
input sub; 

output [31:0] s; 
wire [31:0] b_xor_sub = b ^ {32{sub}}; 
cla32 as32 (a, b_xor_sub, sub, s); 
endmodule