module execute_memory_register (input logic clock, reset,
                                input logic [3:0] controlE,
                                input logic [31:0] AluResultE, WriteDataE,
                                input logic [31:0] PcPlus4E,
                                input logic [4:0] RdE,
                                output logic [3:0] controlM,
                                output logic [31:0] AluResultM, WriteDataM,
                                output logic [31:0] PcPlus4M,
                                output logic [4:0] RdM);


  flopr #(4) controlreg(clock, reset, controlE, controlM);

  flopr #(32) aluresultreg(clock, reset, AluResultE, AluResultM);
  flopr #(32) writedatereg(clock, reset, WriteDataE, WriteDataM);
  flopr #(32) pcplus4reg(clock, reset, PcPlus4E, PcPlus4M);
  flopr #(5) rdreg(clock, reset, RdE, RdM);
endmodule