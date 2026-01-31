
module compuertaAnd (input a, input b, output y);
assign y = a & b;
endmodule

module compuertaNot (input a, output y);
assign y = ~a;
endmodule

module compuertaNand (input a, input b, output y);
assign y = ~(a & b);
endmodule

module compuertaOr (input a, input b, output y);
assign y = a | b ;
endmodule


module compuertaNor (input a, input b, output y);
assign y = ~ (a | b ) ;
endmodule


module compuertaXor (input a, input b, output y);
assign y = a ^ b ;
endmodule

module compuertaXnor (input a, input b, output y);
assign y = ~(a ^ b) ;
endmodule

module COMPUERTAS (input a1, input b1, output o_And, output o_Not, output o_Nand, output o_Or, output o_Nor , output o_Xor, output o_Xnor);
compuertaAnd u_and(.a(a1), .b(b1), .y(o_And));
compuertaNot u_not(.a(a1), .y(o_Not)); 
compuertaNand u_nand(.a(a1), .b(b1), .y(o_Nand));
compuertaOr u_or(.a(a1), .b(b1), .y(o_Or));
compuertaNor u_nor(.a(a1), .b(b1), .y(o_Nor));
compuertaXor u_xor(.a(a1), .b(b1), .y(o_Xor));
compuertaXnor u_xnor(.a(a1), .b(b1), .y(o_Xnor));

endmodule
