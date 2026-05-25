module _spi ();
wire c1;
wire c2;
wire c3;

Master chief (.clk(CLK), .miso(c3), .mosi(c1), .ss(c2));
Slave s1 (.clk(CLK), .mosi(c1), .ss(c2), ,.miso(c3) );
endmodule
