library verilog;
use verilog.vl_types.all;
entity b_eq is
    generic(
        BEQ             : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi1, Hi0, Hi0)
    );
    port(
        op_in           : in     vl_logic_vector(5 downto 0);
        rd1_in          : in     vl_logic_vector(31 downto 0);
        rd2_in          : in     vl_logic_vector(31 downto 0);
        zero            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of BEQ : constant is 1;
end b_eq;
