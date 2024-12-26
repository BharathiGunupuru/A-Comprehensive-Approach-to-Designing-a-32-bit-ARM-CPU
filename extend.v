module extend(
    input [23:0] Instr,
    input [1:0] ImmSrc,
    output reg [32:0] ExtImm
);

always @(*) begin
    case (ImmSrc)
        2'b00: ExtImm = {24'b0, Instr[7:0]};   // Zero-extend lower 8 bits of Instr
        2'b01: ExtImm = {20'b0, Instr[11:0]};  // Zero-extend lower 12 bits of Instr
        2'b10: ExtImm = {{6{Instr[23]}}, Instr[23:0], 2'b00};  // Sign-extend with shifting
        default: ExtImm = 33'bx;  // Invalid state
    endcase
end

endmodule
