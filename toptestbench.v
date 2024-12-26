`include "top.v"

module testbench();
	reg clk;
	reg reset;
	//reg [31:0] WriteData, DataAdr;
	//reg MemWrite;
  
// instantiate device to be tested
top dut(clk, reset);
  
// initialize test
initial begin
	reset <= 1; 
  	#10 reset <= 0;
  	clk <= 1;
   
end
  
  
// generate clock to sequence tests
always #5 clk=~clk;
  
  
/*initial begin 
  #10000
  if (dut.dmem.RAM[21] === 32'd7) begin
    $display("Test Passed: Memory[84] contains 7");
        end else begin
          $display("Test Failed: Memory[84] = %d, expected 7",dut.dmem.RAM[21]);
          
          
        end
$finish;
end*/
  
  
  initial begin 
  #10000
    if (dut.cpu.dp.rf.rf[5] === 32'd11) begin
      $display("Test Passed: R5 contains 11");
        end else begin
          $display("Test Failed: R5 = %d, expected 7",dut.cpu.dp.rf.rf[5]);
          
          
        end
$finish;
end
 
  
endmodule
