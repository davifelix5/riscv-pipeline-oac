module hazard_detection_unit (
  input logic ResultSrcEb0,
  input logic[4:0] Rs1D, Rs2D, RdE,
  input logic PCSrcE,
  output logic StallF, StallD,
  output logic FlushD, FlushE
);

  logic lwStall;

  assign lwStall = ResultSrcEb0 && (Rs1D == RdE || Rs2D == RdE);

  assign StallF = lwStall;
  assign StallD = lwStall;
  assign FlushE = lwStall | PCSrcE;
  assign FlushD = PCSrcE;
  
endmodule