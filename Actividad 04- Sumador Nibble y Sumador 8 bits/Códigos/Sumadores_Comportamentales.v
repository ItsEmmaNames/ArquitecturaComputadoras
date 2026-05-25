//SUMADOR 4 BIT INSTANCIADO

module SUM_com4b (input [3:0]a, input [3:0]b, input cin, output [4:0]c );
assign c = a + b + cin ;
endmodule

//SUMADOR 8 BIT INSTANCIADO

module Sum_com8b (input [7:0]a, input [7:0]b, input cin, output [8:0]c);
wire c1;
SUM_com4b s4 ( .a(a[3:0]) , .b(b[3:0]), .cin(0), .c({c1, c[3:0] }) );
SUM_com4b s4_2 ( .a(a[7:4]),.b(b[7:4]),.cin(c1), .c(c[8:4]) );
endmodule 

// TESTBENCH 4BIT

`timescale 1ns/1ns 

module Tb_Sum4b;

    reg [3:0] r_a;
    reg [3:0] r_b;
    reg r_cin;
    wire [4:0] w_c;

    SUM_com4b tb_suma4bit (
        .a(r_a),
        .b(r_b),
        .cin(r_cin),
        .c(w_c)
    );


    initial begin

 
        r_a = 5;  r_b = 5;  r_cin = 0;
        #100; 

        r_a = 10;  r_b = 4;  r_cin = 1; 
  
        #100;

 
        r_a = 0; r_b = 0;  r_cin = 0;
        #100;


        r_a = 15; r_b = 1; r_cin = 0;
        #100;

        r_a = 8; r_b = 3; r_cin = 0;
        #100;

        $finish;
    end

endmodule

//TESTBENCH 8 BIT

`timescale 1ns/1ns 

module Tb_Sum8b;

    reg [7:0] r_a;
    reg [7:0] r_b;
    reg r_cin;
    wire [8:0] w_c;

    Sum_com8b tb_suma8bit (
        .a(r_a),
        .b(r_b),
        .cin(r_cin),
        .c(w_c)
    );


    initial begin

 
        r_a = 100;  r_b = 50;  r_cin = 0;
        #100; 

        r_a = 255;  r_b = 1;  r_cin = 0; 
  
        #100;

 
        r_a = 128; r_b = 128;  r_cin = 1;
        #100;


        r_a = 100; r_b = 100; r_cin = 0;
        #100;

        r_a = 5; r_b = 5; r_cin = 0;
        #100;

        $finish;
    end

endmodule
