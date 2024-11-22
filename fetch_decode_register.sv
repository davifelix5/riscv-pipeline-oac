module fetch_decode_register(input logic clk, reset,
                    input logic Clear, Enable, 
                    input logic [31:0] InstrF, PCF, PcPlus4F,
                    output logic [31:0] InstrD, PCD, PcPlus4D);

  floprce #(32) pcreg(clk, reset, Clear, Enable, PCF, PCD);
  floprce #(32) instrreg(clk, reset, Clear, Enable, InstrF, InstrD);
  floprce #(32) pcplus4reg(clk, reset, Clear, Enable, PcPlus4F, PcPlus4D);

endmodule