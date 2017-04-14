
module tb_seqdet;

  reg  clk;
  reg  tst_n;
  reg  x;
  initial begin
    clk   <=0;
    tst_n <=0;
    #120 tst_n <=1;
    #30000 $finish;
  end

  always  #50 clk <= ~clk;
  always #100 x<={$random}%2;
initial
  begin
    $fsdbDumpfile("tb_seqdet.fsdb");
    $fsdbDumpvars(0, tb_seqdet, "+mda");
  end

  wire z;

  seqdet u_seqdet(
	.x  (x),
    .z    (z    ),
	.clk  (clk  ),
	.tst_n(tst_n)
    );

endmodule
