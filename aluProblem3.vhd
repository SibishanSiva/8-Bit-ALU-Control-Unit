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
        Result : out unsigned(3 downto 0)
    );
end aluProblem3;

architecture calculation of aluProblem3 is
	signal R1, R2 : unsigned(3 downto 0);
begin
	 R2 <= A(7 downto 4);
	 R1 <= A(3 downto 0);
    process(clock)
    begin
		--Function A
		--if(student_ID(0) = '1') then
			--Result <= "1111";
		--else
			--Result <= "0000";
		--end if;
		
		--Function G
		if(R2 = student_ID) then
			Result <= "1111";
		elsif(R1 = student_ID) then
			Result <= "1111";
		else
			Result <= "0000";
		end if;
    end process;
end calculation;