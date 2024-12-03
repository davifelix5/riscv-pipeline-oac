module forwarding_unit (input logic [4:0] RsE1, RsE2, RdM, RdW,
                        input logic RegWriteM, RegWriteW,
                        output logic [1:0] ForwardAE, ForwardBE);

  always_comb begin
    if (((RsE1 == RdM) & RegWriteM) & RsE1 != 0) ForwardAE = 2'b10;
    else if (((RsE1 == RdW) & RegWriteW) & RsE1 != 0) ForwardAE = 2'b01;
    else ForwardAE = 2'b00;

    if (((RsE2 == RdM) & RegWriteM) & RsE2 != 0) ForwardBE = 2'b10;
    else if (((RsE2 == RdW) & RegWriteW) & RsE2 != 0) ForwardBE = 2'b01;
    else ForwardBE = 2'b00;
  end


endmodule