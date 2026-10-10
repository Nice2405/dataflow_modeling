module LabRep2C (
    input wire A,
    input wire B,
    input wire C,
    input wire D,
    output wire y
);

    wire anda_b;
    wire orc_d;

    assign anda_b = A & B;
    assign orc_d  = C | D;
    assign y      = anda_b | orc_d;

endmodule