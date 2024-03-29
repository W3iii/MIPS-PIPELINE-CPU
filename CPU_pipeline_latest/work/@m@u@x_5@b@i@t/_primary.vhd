library verilog;
use verilog.vl_types.all;
entity MUX_5BIT is
    port(
        sel             : in     vl_logic;
        a               : in     vl_logic_vector(4 downto 0);
        b               : in     vl_logic_vector(4 downto 0);
        y               : out    vl_logic_vector(4 downto 0)
    );
end MUX_5BIT;
