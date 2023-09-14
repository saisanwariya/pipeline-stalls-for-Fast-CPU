`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2020 02:11:45 PM
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module testbench();
reg Clk;
reg Reset;
wire [31:0] Addr,Inst,Qa,Qb,ALU_R,NEXTADDR;

MAIN uut(
.Clk(Clk),
.Reset(Reset),
.Addr(Addr),
.Inst(Inst),
.Qa(Qa),
.Qb(Qb),
.ALU_R(ALU_R),
.NEXTADDR(NEXTADDR),
.D(D)
);
endmodule