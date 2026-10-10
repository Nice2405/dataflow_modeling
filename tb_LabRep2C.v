`timescale 1ns / 1ps

module tb_LabRep2C;
    reg A, B, C, D;
    wire y;

    LabRep2C uut (
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .y(y)
    );

    initial begin
        $dumpfile("LabRep2C.vcd");
        $dumpvars(0, tb_LabRep2C);

        A = 0; B = 0; C = 0; D = 0;
        #10;

        A = 0; B = 0; C = 0; D = 1;
        #10;

        A = 1; B = 1; C = 0; D = 0;
        #10;

        A = 0; B = 0; C = 1; D = 0;
        #10;

        $finish;
    end
endmodule