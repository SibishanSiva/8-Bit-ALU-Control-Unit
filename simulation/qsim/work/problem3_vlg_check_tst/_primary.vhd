library verilog;
use verilog.vl_types.all;
entity problem3_vlg_check_tst is
    port(
        student_ID      : in     vl_logic_vector(0 to 6);
        yesno           : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end problem3_vlg_check_tst;
