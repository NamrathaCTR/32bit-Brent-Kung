`timescale 10ns/1ps

module testBench;
reg [31:0] inputA;
reg [31:0] inputB;
reg carryin;
wire [31:0] sum;
wire  carryOut;

BrentKung DUT(inputA,inputB,carryin,sum,carryOut);
initial 
begin
#5 inputA=32'h89028902; inputB=32'h11111111; carryin=1'b1;
#30 inputA=32'hffffffff; inputB=32'hffffffff; carryin=1'b1;
#30 inputA=32'hffff; inputB=32'h1111; carryin=1'b1;
#30 inputA=32'hffff; inputB=32'h1110; carryin=1'b0;


#100 $finish;
end


endmodule


