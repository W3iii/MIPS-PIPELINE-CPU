library verilog;
use verilog.vl_types.all;
entity Mux_alu is
    generic(
        \AND\           : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        \OR\            : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi1);
        ADD             : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0);
        SUB             : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi0);
        SLT             : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi1);
        \SRL\           : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi1)
    );
    port(
        \out\           : out    vl_logic;
        in0             : in     vl_logic;
        in1             : in     vl_logic;
        in2             : in     vl_logic;
        in3             : in     vl_logic;
        sel             : in     vl_logic_vector(3 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of \AND\ : constant is 1;
    attribute mti_svvh_generic_type of \OR\ : constant is 1;
    attribute mti_svvh_generic_type of ADD : constant is 1;
    attribute mti_svvh_generic_type of SUB : constant is 1;
    attribute mti_svvh_generic_type of SLT : constant is 1;
    attribute mti_svvh_generic_type of \SRL\ : constant is 1;
end Mux_alu;
