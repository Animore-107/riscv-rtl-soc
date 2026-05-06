module pc_tb;

reg clk;
reg reset;
reg [31:0] next_pc;

wire [31:0] pc;

pc uut(
    .clk(clk),
    .reset(reset),
    .next_pc(next_pc),
    .pc(pc)
);

// Clock generation
always #5 clk = ~clk;

initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0, pc_tb);

    clk = 0;

    // Reset CPU
    reset = 1;
    next_pc = 0;
    #10;

    // Remove reset
    reset = 0;

    // Increment PC
    next_pc = 32'd4;
    #10;

    next_pc = 32'd8;
    #10;

    next_pc = 32'd12;
    #10;

    next_pc = 32'd16;
    #10;

    $finish;

end

endmodule
