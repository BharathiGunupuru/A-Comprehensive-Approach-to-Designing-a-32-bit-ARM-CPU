`include "controller.v"
`include "Datapath.v"

module cpu(input clk, reset,
			output  [31:0] PC,
			input  [31:0] Instr,
			output  MemWrite,
			output [31:0] ALUResult, WriteData,
			input  [31:0] ReadData);
  
//internal wires
wire [3:0] ALUFlags;
wire RegWrite,ALUSrc, MemtoReg, PCSrc;
wire [1:0] RegSrc, ImmSrc, ALUControl;
  
//integrate controller
controller c(clk, reset, Instr[31:12], ALUFlags,
			RegSrc, RegWrite, ImmSrc,
			ALUSrc, ALUControl,
			MemWrite, MemtoReg, PCSrc);


  
//integrate datapath
datapath dp(clk, reset,RegSrc, RegWrite, ImmSrc,
			ALUSrc, ALUControl,MemtoReg, PCSrc,
			ALUFlags, PC, Instr,ALUResult, WriteData, ReadData);
  
endmodule
