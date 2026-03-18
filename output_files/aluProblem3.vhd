LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

entity aluProblem3 is
    port(
        clock: in std_logic;
        A, B : in unsigned(7 downto 0);
		  student_ID : in unsigned(3 downto 0);
        operation : in unsigned(15 downto 0);
        Result : out unsigned(3 downto 0);
    );
end aluProblem3;

architecture calculation of aluProblem2 is
    signal register1, register2, output: unsigned(7 downto 0);
begin
    register1 <= A;
    register2 <= B;

    process(clock)
    begin
        if (rising_edge(clock)) then
            case operation is --Function A in problem 3
                when "0000000000000001" => 
                   if(student_ID(0) = 1) then
							output <= "1111"
						 elsif
							output <= "0000";
						 end if;
                when "0000000000000010" => 
						if(student_ID(0) = 1) then
							output <= "1111"
						 elsif
							output <= "0000";
						 end if;
                when "0000000000000100" => 
                  if(student_ID(0) = 1) then
							output <= "1111"
						 elsif
							output <= "0000";
						 end if;  
                when "0000000000001000" => 
						if(student_ID(0) = 1) then
							output <= "1111"
						 elsif
							output <= "0000";
						 end if;
                when "0000000000010000" => 
                    if(student_ID(0) = 1) then
							output <= "1111"
						 elsif
							output <= "0000";
						 end if;
                when "0000000000100000" => 
                   if(student_ID(0) = 1) then
							output <= "1111"
						 elsif
							output <= "0000";
						 end if;
                when "0000000001000000" => 
                    if(student_ID(0) = 1) then
							output <= "1111"
						 elsif
							output <= "0000";
						 end if;  
                when "0000000010000000" => 
						if(student_ID(0) = 1) then
							output <= "1111"
						 elsif
							output <= "0000";
						 end if;
                when others =>
                    -- Do nothing
                    Sign <= '0';
            end case;
        end if;
    end process;

    Result <= output; 
end calculation;