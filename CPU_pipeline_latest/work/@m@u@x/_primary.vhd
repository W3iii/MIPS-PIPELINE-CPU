library verilog;
use verilog.vl_types.all;
entity MUX is
    port(
        sel             : in     vl_logic;
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        y               : out    vl_logic_vector(31 downto 0)
    );
end MUX;
