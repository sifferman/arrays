
module registerfile #(
    parameter DataWidth = 8,
    parameter NumEntries = 4,
    localparam AddressWidth = (NumEntries>2) ? $clog2(NumEntries) : 1
) (
    input   logic                       clk,

    input   logic                       wen_i,
    input   logic [AddressWidth-1:0]    waddr_i,
    input   logic [DataWidth-1:0]       wdata_i,

    input   logic [AddressWidth-1:0]    raddr_i,
    output  logic [DataWidth-1:0]       rdata_o
);

(* mem2reg *)
logic [DataWidth-1:0] mem [NumEntries];

always_ff @(posedge clk) begin
    if (wen_i) begin
        mem[waddr_i] <= wdata_i;
    end
end

assign rdata_o = mem[raddr_i];

endmodule
