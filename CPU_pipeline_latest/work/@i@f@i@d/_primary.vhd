library verilog;
use verilog.vl_types.all;
entity IFID is
    port(
        RD_out          : out    vl_logic_vector(31 downto 0);
        PC_out          : out    vl_logic_vector(31 downto 0);
        RD_in           : in     vl_logic_vector(31 downto 0);
        PC_in           : in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        en_reg          : in     vl_logic
    );
end IFID;
