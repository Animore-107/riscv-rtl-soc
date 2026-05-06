module alu_tb;
reg [31:0] a, b;
reg [2:0] sel;
wire [31:0] out;

alu uut(a, b, sel, out);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, alu_tb);

    a = 10; b = 5;

    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;

    $finish;
end
endmodule
