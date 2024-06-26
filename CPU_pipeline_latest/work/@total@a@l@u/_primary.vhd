library verilog;
use verilog.vl_types.all;
entity TotalALU is
    generic(
        \AND\           : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        \OR\            : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi1);
        ADD             : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0);
        SUB             : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi0);
        SLT             : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi1);
        \SRL\           : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi1);
        MULTU           : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi1, Hi0);
        MADDU           : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi1, Hi1);
        MFHI            : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi0, Hi1);
        MFLO            : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi0, Hi0)
    );
    port(
        clk             : in     vl_logic;
        dataA           : in     vl_logic_vector(31 downto 0);
        dataB           : in     vl_logic_vector(31 downto 0);
        op              : in     vl_logic_vector(1 downto 0);
        funct           : in     vl_logic_vector(5 downto 0);
        shamt           : in     vl_logic_vector(4 downto 0);
        Output          : out    vl_logic_vector(31 downto 0);
        rst             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of \AND\ : constant is 1;
    attribute mti_svvh_generic_type of \OR\ : constant is 1;
    attribute mti_svvh_generic_type of ADD : constant is 1;
    attribute mti_svvh_generic_type of SUB : constant is 1;
    attribute mti_svvh_generic_type of SLT : constant is 1;
    attribute mti_svvh_generic_type of \SRL\ : constant is 1;
    attribute mti_svvh_generic_type of MULTU : constant is 1;
    attribute mti_svvh_generic_type of MADDU : constant is 1;
    attribute mti_svvh_generic_type of MFHI : constant is 1;
    attribute mti_svvh_generic_type of MFLO : constant is 1;
end TotalALU;
