module r32_comp (input [31:0]ro1, input[31:0]ro2, output[31:0]xr);
assign xr = ro1 - ro2;
endmodule
