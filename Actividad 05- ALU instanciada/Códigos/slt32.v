module slt32 (input[31:0]slto1,input[31:0]slto2, output[31:0]rslt);
assign rslt = slto1<slto2? 1:0;
endmodule