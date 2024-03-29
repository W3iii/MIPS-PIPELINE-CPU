library verilog;
use verilog.vl_types.all;
entity MPY is
    generic(
        MULTU           : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi1, Hi0);
        MADDU           : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi1, Hi1);
        \OUT\           : vl_logic_vector(0 to 3) := (Hi1, Hi1, Hi1, Hi1)
    );
    port(
        clk             : in     vl_logic;
        dataA           : in     vl_logic_vector(31 downto 0);
        dataB           : in     vl_logic_vector(31 downto 0);
        \Signal\        : in     vl_logic_vector(3 downto 0);
        dataOut         : out    vl_logic_vector(63 downto 0);
        reset           : in     vl_logic;
        start           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of MULTU : constant is 1;
    attribute mti_svvh_generic_type of MADDU : constant is 1;
    attribute mti_svvh_generic_type of \OUT\ : constant is 1;
end MPY;
