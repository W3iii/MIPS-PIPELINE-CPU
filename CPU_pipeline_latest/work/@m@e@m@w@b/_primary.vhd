library verilog;
use verilog.vl_types.all;
entity MEMWB is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        en_reg          : in     vl_logic;
        RegWrite        : in     vl_logic;
        MemtoReg        : in     vl_logic;
        ALUout          : in     vl_logic_vector(31 downto 0);
        RD              : in     vl_logic_vector(31 downto 0);
        Rfile_wn        : in     vl_logic_vector(4 downto 0);
        out_MemtoReg    : out    vl_logic;
        out_RegWrite    : out    vl_logic;
        out_RD          : out    vl_logic_vector(31 downto 0);
        out_ALUout      : out    vl_logic_vector(31 downto 0);
        out_Rfile_wn    : out    vl_logic_vector(4 downto 0)
    );
end MEMWB;
