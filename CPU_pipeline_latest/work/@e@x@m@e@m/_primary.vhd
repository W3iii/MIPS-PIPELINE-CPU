library verilog;
use verilog.vl_types.all;
entity EXMEM is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        en_reg          : in     vl_logic;
        Branch          : in     vl_logic;
        MemRead         : in     vl_logic;
        MemWrite        : in     vl_logic;
        RegWrite        : in     vl_logic;
        MemtoReg        : in     vl_logic;
        PC_in           : in     vl_logic_vector(31 downto 0);
        ALUout          : in     vl_logic_vector(31 downto 0);
        RD2             : in     vl_logic_vector(31 downto 0);
        RegisterFile_wn : in     vl_logic_vector(4 downto 0);
        out_RegWrite    : out    vl_logic;
        out_MemtoReg    : out    vl_logic;
        out_MemWrite    : out    vl_logic;
        out_MemRead     : out    vl_logic;
        out_Branch      : out    vl_logic;
        PC_out          : out    vl_logic_vector(31 downto 0);
        out_ALUout      : out    vl_logic_vector(31 downto 0);
        out_wd          : out    vl_logic_vector(31 downto 0);
        out_RegisterFile_wn: out    vl_logic_vector(4 downto 0)
    );
end EXMEM;
