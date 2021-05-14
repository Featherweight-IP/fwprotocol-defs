
`ifndef INCLUDED_WISHBONE_AMO_DEFINES_SVH
`define INCLUDED_WISHBONE_AMO_DEFINES_SVH
	
`define WB_AMO_NOP  4'b0000
`define WB_AMO_SWAP 4'b0001
`define WB_AMO_ADD  4'b0010
`define WB_AMO_AND  4'b0011
`define WB_AMO_OR   4'b0100
`define WB_AMO_XOR  4'b0101
`define WB_AMO_MAXS 4'b0110
`define WB_AMO_MAXU 4'b0111
`define WB_AMO_MINS 4'b1000
`define WB_AMO_MINU 4'b1001
`define WB_AMO_LR   4'b1010
`define WB_AMO_SC   4'b1011
	
`endif /* INCLUDED_WISHBONE_AMO_DEFINES_SVH */