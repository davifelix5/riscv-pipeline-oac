module floprce #(parameter WIDTH = 8)
                (input  logic             clk, reset,
                 input  logic             clear, enable,
                 input  logic [WIDTH-1:0] d, 
                 output logic [WIDTH-1:0] q);

  always_ff @(posedge clk, posedge reset)
    if (reset) q <= 0;
    else       if (clear) q <= 0;
               else       if (enable) q <= d;
                          else        q <= q;
endmodule