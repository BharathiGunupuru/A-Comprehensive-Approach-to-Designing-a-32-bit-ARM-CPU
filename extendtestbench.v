`include "extend.v"  // Include the extend module

module test;
    reg [23:0] Instr;   // 24-bit instruction input
    reg [1:0] ImmSrc;   // 2-bit control input for immediate source selection
    wire [32:0] ExtImm; // Extended immediate output
    reg clk;
   
    extend f(
        .Instr(Instr), 
        .ImmSrc(ImmSrc), 
        .ExtImm(ExtImm)
    );
  
  initial begin
    clk = 1'b0;
    #300 $finish;
  end
  always #5clk= ~clk;

    
    initial begin
   
        Instr = 24'h000009;  // Example instruction
        ImmSrc = 2'b00;       // Zero-extend
        #10;

        // Test Case 2: Zero-extend lower 12 bits of Instr
        Instr = 24'h000009;
        ImmSrc = 2'b01;       // Zero-extend
        #10;

        // Test Case 3: Sign-extend with shifting
        Instr = 24'hFFFFFF;  // Example instruction for sign extension
        ImmSrc = 2'b10;       // Sign-extend
        #10;
      
      #20

       $finish;  
    end

    // Generate waveform for viewing
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, test);
    end
endmodule
