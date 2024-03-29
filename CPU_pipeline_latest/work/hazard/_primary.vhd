library verilog;
use verilog.vl_types.all;
entity hazard is
    port(
        clk             : in     vl_logic;
        stall           : in     vl_logic;
        PC_Write        : out    vl_logic;
        IFID_Write      : out    vl_logic
    );
end hazard;
