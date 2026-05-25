
module and32_comp (input [31:0]ao1, input[31:0]ao2, output[31:0]ar);
assign ar= ao1 && ao2;
endmodule