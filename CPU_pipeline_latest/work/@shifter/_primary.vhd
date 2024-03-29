library verilog;
use verilog.vl_types.all;
entity Shifter is
    generic(
        \SRL\           : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi1)
    );
    port(
        dataA           : in     vl_logic_vector(31 downto 0);
        dataB           : in     vl_logic_vector(4 downto 0);
        \Signal\        : in     vl_logic_vector(3 downto 0);
        dataOut         : out    vl_logic_vector(31 downto 0);
        reset           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of \SRL\ : constant is 1;
end Shifter;
