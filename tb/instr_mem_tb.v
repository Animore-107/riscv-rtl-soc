module instr_mem_tb;

reg [31:0] addr;
wire [31:0] instr;

instr_mem uut(
    .addr(addr),
    .instr(instr)
);

initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0, instr_mem_tb);

    addr = 0;
    #10;

    addr = 4;
    #10;

    addr = 8;
    #10;

    $finish;

end

endmodule
