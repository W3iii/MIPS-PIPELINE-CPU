library verilog;
use verilog.vl_types.all;
entity mux2to1 is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        sel             : in     vl_logic;
        result          : out    vl_logic
    );
end mux2to1;
