module reg_file_tb;

reg clk;
reg we;
reg [4:0] rs1, rs2, rd;
reg [31:0] wd;

wire [31:0] rd1, rd2;

reg_file uut(
    .clk(clk),
    .we(we),
    .rs1(rs1),
    .rs2(rs2),
    .rd(rd),
    .wd(wd),
    .rd1(rd1),
    .rd2(rd2)
);

always #5 clk = ~clk;

initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0, reg_file_tb);

    clk = 0;

    // Write 100 into register x1
    we = 1;
    rd = 5'd1;
    wd = 32'd100;
    #10;

    // Write 200 into register x2
    rd = 5'd2;
    wd = 32'd200;
    #10;

    // Read registers
    we = 0;
    rs1 = 5'd1;
    rs2 = 5'd2;
    #10;

    $finish;

end

endmodule
