LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

entity aluProblem2 is
    port(
        clock: in std_logic;
        A, B : in unsigned(7 downto 0);
        operation : in unsigned(15 downto 0);
        Sign : out std_logic;
        R1 : out unsigned(3 downto 0);
        R2 : out unsigned(3 downto 0)
    );
end aluProblem2;

architecture calculation of aluProblem2 is
    signal register1, register2, output: unsigned(7 downto 0);
begin
    register1 <= A;
    register2 <= B;

    process(clock)
    begin
        if (rising_edge(clock)) then
            case operation is --Function G in problem 2
                when "0000000000000001" => --Invert the bit-significance order of A
                   output(0) <= register1(7);
output(1) <= register1(6);
output(2) <= register1(5);
output(3) <= register1(4);
output(4) <= register1(3);
output(5) <= register1(2);
output(6) <= register1(1);
output(7) <= register1(0);
Sign <= '0';
                when "0000000000000010" => --Shift A to left by 4 bits, input bit = 1 (SHL)
                    output <= (register1(3 downto 0) & "1111");
 Sign <= '0';
                when "0000000000000100" => --Invert upper four bits of B
                    output(7) <= NOT(register2(7));
 output(6) <= NOT(register2(6));
 output(5) <= NOT(register2(5));
 output(4) <= NOT(register2(4));
 output(3) <= register2(3);
 output(2) <= register2(2);
 output(1) <= register2(1);
 output(0) <= register2(0);
 Sign <= '0';
                when "0000000000001000" => --Find the smaller value of A and B and produce the results ( Min(A,B) )
 if (register1 < register2) then
                        output <= register1;
                        Sign <= '0';
                    else
                        output <= register2;
                        Sign <= '0';
                    end if;
                when "0000000000010000" => --Calculate the summation of A and B and increase it by 4
                    output <= (register1 + register2) + "00000100";
 Sign <= '0';
                when "0000000000100000" => --Increment A by 3
                    output <= register1 + "00000011";
 Sign <= '0';
                when "0000000001000000" => --Replace the even bits of A with even bits of B
                      output <= register1;
output(0) <= register2(0);
output(2) <= register2(2);
output(4) <= register2(4);
output(6) <= register2(6);
Sign <= '0';
                when "0000000010000000" => --Produce the result of XNORing A and B
output <= (register1 XNOR register2);
Sign <= '0';
                when others =>
                    -- Do nothing
                    Sign <= '0';
            end case;
        end if;
    end process;

    R1 <= output(3 downto 0); -- last four bits
    R2 <= output(7 downto 4); -- first four bits
end calculation;