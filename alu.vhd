LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

entity alu is
    port(
        clock: in std_logic;
        A, B : in unsigned(7 downto 0);
        operation : in unsigned(15 downto 0);
        Sign : out std_logic;
        R1 : out unsigned(3 downto 0);
        R2 : out unsigned(3 downto 0)
    );
end alu;

architecture calculation of alu is
    signal register1, register2, output: unsigned(7 downto 0);
begin
    register1 <= A;
    register2 <= B;

    process(clock)
    begin
            case operation is
                when "0000000000000001" =>
                    output <= (register1 + register2);
                    Sign <= '0';
                when "0000000000000010" =>
                    if (register2 > register1) then
                        output <= (register1 + (NOT register2 + 1)); -- subtraction
                        Sign <= '1';
                    else
                        output <= (register1 - register2);
                        Sign <= '0';
                    end if;
                when "0000000000000100" =>
                    output <= NOT register1;
                    Sign <= '0';
                when "0000000000001000" =>
                    output <= register1 NAND register2;
                    Sign <= '0';
                when "0000000000010000" =>
                    output <= register1 NOR register2;
                    Sign <= '0';
                when "0000000000100000" =>
                    output <= register1 AND register2;
                    Sign <= '0';
                when "0000000001000000" =>
                    output <= register1 XOR register2;
                    Sign <= '0';    
                when "0000000010000000" =>
                    output <= register1 OR register2;
                    Sign <= '0';
                when others =>
                    -- Do nothing
                    Sign <= '0';
            end case;
    end process;

    R1 <= output(3 downto 0); -- last four bits
    R2 <= output(7 downto 4); -- first four bits
end calculation;

