library verilog;
use verilog.vl_types.all;
entity problem3 is
    port(
        student_ID      : out    vl_logic_vector(0 to 6);
        Clock           : in     vl_logic;
        FSM_reset       : in     vl_logic;
        yesno           : out    vl_logic_vector(0 to 6);
        latchReset      : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0)
    );
end problem3;
