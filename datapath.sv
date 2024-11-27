module datapath(input  logic        clk, reset,
                input  logic [1:0]  ResultSrcD, 
                input  logic        ALUSrcD,
                input  logic        RegWriteD,
                input  logic        MemWriteD,
                input  logic [1:0]  ImmSrcD,
                input  logic [2:0]  ALUControlD,
                input  logic        JumpD,
                input  logic        BranchD,
                output logic [31:0] PCF,
                input  logic [31:0] InstrF,
                output logic [31:0] InstrD,
                output logic [31:0] ALUResultM, WriteDataM,
                output logic        MemWriteM,
                input  logic [31:0] ReadDataM);

    logic FlushD, StallD, StallF, FlushE;

  // 1.Fetch
  logic PCSrcE;
  logic [31:0] PCTargetE, PCNextF;
  logic [31:0] PCPlus4F;
  flopre #(32) pcreg(clk, reset, 
                     ~StallF,
                     PCNextF, PCF); 
  adder       pcadd4(PCF, 32'd4, PCPlus4F);
  mux2 #(32)  pcmux(PCPlus4F, PCTargetE, PCSrcE, PCNextF);

  // FE/ID
  logic [31:0] PCD, PcPlus4D;
  fetch_decode_register F_ID(clk, reset,
                             FlushD, ~StallD,
                             InstrF, PCF, PCPlus4F,
                             InstrD, PCD, PcPlus4D); 
  // 2.Decode
  logic RegWriteW;
  logic [4:0] RdW;
  logic [31:0] RD1D, RD2D, ResultW, ImmExtD;
  logic [4:0]  RdD, Rs1D, Rs2D;
  assign Rs1D = InstrD[19:15];
  assign Rs2D = InstrD[24:20];
  assign RdD = InstrD[11:7];
  regfile     rf(~clk, RegWriteW, Rs1D, Rs2D, 
                 RdW, ResultW, RD1D, RD2D);
  extend      ext(InstrD[31:7], ImmSrcD, ImmExtD);


  //ID/EX
  logic [4:0] Rs1E, Rs2E, RdE;
  logic [31:0] ImmExtE, PcPlus4E, PCE, RD1E, RD2E;
  logic [9:0] controlE;
  logic RegWriteE, MemWriteE, JumpE, BranchE, ALUSrcE;
  logic [2:0] ALUControlE;
  logic [1:0] ResultSrcE;
  assign {
    RegWriteE, ResultSrcE, MemWriteE, JumpE, BranchE, ALUControlE, ALUSrcE 
  } = controlE;
  decode_execute_register ID_EX(clk, reset, 
                                FlushE,
                                {RegWriteD, ResultSrcD, MemWriteD, JumpD, BranchD, ALUControlD, ALUSrcD},
                                Rs1D, Rs2D, RdD, 
                                ImmExtD, PcPlus4D, PCD, RD1D, RD2D,
                                controlE,
                                Rs1E, Rs2E, RdE,
                                ImmExtE, PcPlus4E, PCE, RD1E, RD2E);
  // 3.Execute
  logic [1:0] ForwardAE, ForwardBE;
  logic ZeroE;
  logic [31:0] SrcAE, RD2E_f, SrcBE, ALUResultE, WriteDataE;

  mux3 #(32) forwardA(RD1E, ResultW, ALUResultM, ForwardAE, SrcAE);
  mux3 #(32) forwardB(RD2E, ResultW, ALUResultM, ForwardBE, RD2E_f);

  mux2 #(32)  srcbmux(RD2E_f, ImmExtE, ALUSrcE, SrcBE);
  alu         alu(SrcAE, SrcBE, ALUControlE, ALUResultE, ZeroE);
  adder       pcaddbranch(PCE, ImmExtE, PCTargetE);
  
  assign WriteDataE = RD2E_f;
  assign PCSrcE = BranchE & ZeroE | JumpE;

  //EX/MEM
  logic [3:0] controlM;
  logic [31:0] PcPlus4M;
  logic [4:0] RdM;
  logic RegWriteM;
  logic [1:0] ResultSrcM;
  assign {
    RegWriteM, ResultSrcM, MemWriteM
  } = controlM;
  execute_memory_register EX_MEM(clk, reset, 
                                 {RegWriteE, ResultSrcE, MemWriteE}, 
                                 ALUResultE, WriteDataE, 
                                 PcPlus4E, 
                                 RdE, 
                                 controlM,
                                 ALUResultM, WriteDataM, 
                                 PcPlus4M, 
                                 RdM);
  // 4. Memory

  //ME/WB
  logic [2:0] controlW;
  logic [31:0] PcPlus4W, ReadDataW, ALUResultW;
  logic [1:0] ResultSrcW;
  assign {
    RegWriteW, ResultSrcW
  } = controlW;
  memory_writeback_register ME_WB(clk, reset, 
                                   {RegWriteM, ResultSrcM}, 
                                   ALUResultM, ReadDataM,
                                   PcPlus4M, 
                                   RdM, 
                                   controlW, 
                                   ALUResultW, ReadDataW,
                                   PcPlus4W, 
                                   RdW);

  // 5. Write Back
  mux3 #(32)  resultmux(ALUResultW, ReadDataW, PcPlus4W, ResultSrcW, ResultW);

  // Hazard Detection
  forwarding_unit fwd(Rs1E, Rs2E, RdM, RdW,
                      RegWriteM, RegWriteW,
                      ForwardAE, ForwardBE);

  hazard_detection_unit hd(ResultSrcE[0], Rs1D,Rs2D, RdE, PCSrcE,
                           StallF, StallD, FlushD, FlushE);
endmodule
