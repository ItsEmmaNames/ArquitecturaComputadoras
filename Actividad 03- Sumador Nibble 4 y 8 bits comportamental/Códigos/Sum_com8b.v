module Sum_com8b (input [7:0]a, input [7:0]b, input cin, output [8:0]c);

wire c1;

SUM_com4b s4 ( .a(a[3:0]) , .b(b[3:0]), .cin(0), .c({c1, c[3:0] }) );

SUM_com4b s4_2 ( .a(a[7:4]),.b(b[7:4]),.cin(c1), .c(c[8:4]) );

endmodule 
