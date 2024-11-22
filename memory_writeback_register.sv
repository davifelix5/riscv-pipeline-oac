module memory_writeback_register (input logic clock, reset,
                                   input logic [2:0] controlM,
                                   input logic [31:0] AluResultM, ReadDataM,
                                   input logic [31:0] PcPlus4M,
                                   input logic [4:0]  RdM,
                                   output logic [2:0] controlW,
                                   output logic [31:0] AluResultW, ReadDataW,
                                   output logic [31:0] PcPlus4W,
                                   output logic [4:0]  RdW);

  flopr #(3) controlreg(clock, reset, controlM, controlW);
  flopr #(32) aluresultreg(clock, reset, AluResultM, AluResultW);
  flopr #(32) readdatareg(clock, reset, ReadDataM, ReadDataW);
  flopr #(32) pcplus4reg(clock, reset, PcPlus4M, PcPlus4W);
  flopr #(5) rdreg(clock, reset, RdM, RdW);
endmodule