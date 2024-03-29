library verilog;
use verilog.vl_types.all;
entity ALU_bit is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        cin             : in     vl_logic;
        binvert         : in     vl_logic;
        less            : in     vl_logic;
        \Signal\        : in     vl_logic_vector(3 downto 0);
        dataOut         : out    vl_logic;
        set             : out    vl_logic;
        cout            : out    vl_logic
    );
end ALU_bit;
