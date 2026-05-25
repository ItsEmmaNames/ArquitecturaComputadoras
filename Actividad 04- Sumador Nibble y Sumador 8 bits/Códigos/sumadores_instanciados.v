//HALF ADDER

module HA (input a, input b, output sum, output carry);
assign sum = a ^ b ; 
assign carry = a & b;
endmodule

//FULL ADDER 

module FA (input a, input b, input c, output sum, output resul);
wire c1;
wire c2;
wire c3;
HA h1 ( .a(a), .b(b), .sum(c1), .carry(c2));
HA h2 ( .a(c1), .b(c), .sum(sum), .carry(c3));
assign resul = c2 | c3;
endmodule

//SUMADOR DE 4 BITS

module Sum_instancia4b (input [3:0]a, input [3:0]b, input c, output [3:0]sum, output resul);
wire c1;
wire c2;
wire c3;

FA F1 ( .a(a[0]), .b(b[0]) , .c(c) , .sum (sum[0]), .resul (c1) );
FA F2 ( .a(a[1]), .b(b[1]) , .c(c1) , .sum (sum[1]), .resul (c2) );
FA F3 ( .a(a[2]), .b(b[2]) , .c(c2) , .sum (sum[2]), .resul (c3) );
FA F4 ( .a(a[3]), .b(b[3]) , .c(c3) , .sum (sum[3]), .resul (resul) );
endmodule

//SUMADOR DE 8 BITS

module Sum_instancia8b (input [7:0]a, input [7:0]b, input c, output [7:0]sum, output resul);

wire c1;
Sum_instancia4b s4   ( .a(a[3:0]) , .b(b[3:0]), .c(c) , .sum(sum[3:0]) , .resul(c1) );
Sum_instancia4b s4_2 ( .a(a[7:4]) , .b(b[7:4]), .c(c1), .sum(sum[7:4]), .resul(resul) );
	
endmodule

