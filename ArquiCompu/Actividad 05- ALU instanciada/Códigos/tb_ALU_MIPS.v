`timescale 1ns/1ns 

module tb_ALU_MIPS;
reg [31:0] R_A;
reg [31:0] R_B;
reg [4:0] R_Sel;
wire[31:0]  R_R;

 ALU_MIPS UUT (.A(R_A), .B(R_B), .Sel(R_Sel), .R(R_R));

initial begin

 
R_A = 32'd20;  R_B = 32'd5;  R_Sel = 4'b0000;
 #100; 

R_A = 32'd20;  R_B = 32'd5;  R_Sel = 4'b0001;
 #100; 

R_A = 32'd20;  R_B = 32'd5;  R_Sel = 4'b0100;
 #100; 

        $finish;
    end
endmodule
