module decode_execute_register (input logic clock, reset,
                                input logic Clear,
                                input logic [9:0] controlD,
                                input logic [4:0] Rs1D, Rs2D, RdD,
                                input logic [31:0] ImmExtD, PcPlus4D, PCD, RD1D, RD2D,
                                output logic [9:0] controlE,
                                output logic [4:0] Rs1E, Rs2E, RdE,
                                output logic [31:0] ImmExtE, PcPlus4E, PCE, RD1E, RD2E);


  floprc #(10) controlreg(clock, reset, Clear, controlD, controlE);

  floprc #(5) rs1reg(clock, reset, Clear, Rs1D, Rs1E);
  floprc #(5) rs2reg(clock, reset, Clear, Rs2D, Rs2E);
  floprc #(5) rdreg(clock, reset, Clear, RdD, RdE);

  floprc #(32) immextreg(clock, reset, Clear, ImmExtD, ImmExtE);
  floprc #(32) pcplus4reg(clock, reset, Clear, PcPlus4D, PcPlus4E);
  floprc #(32) pcreg(clock, reset, Clear, PCD, PCE);
  floprc #(32) rd1reg(clock, reset, Clear, RD1D, RD1E);
  floprc #(32) rd2reg(clock, reset, Clear, RD2D, RD2E);
endmodule