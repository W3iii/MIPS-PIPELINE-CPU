library verilog;
use verilog.vl_types.all;
entity nopControl is
    generic(
        MADDU           : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi1, Hi1, Hi0, Hi0);
        MULTU           : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi1, Hi0, Hi0, Hi1);
        BEQ             : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi1, Hi0, Hi0);
        JUMP            : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi0)
    );
    port(
        clk             : in     vl_logic;
        instr           : in     vl_logic_vector(31 downto 0);
        stall           : out    vl_logic;
        delay           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of MADDU : constant is 1;
    attribute mti_svvh_generic_type of MULTU : constant is 1;
    attribute mti_svvh_generic_type of BEQ : constant is 1;
    attribute mti_svvh_generic_type of JUMP : constant is 1;
end nopControl;
