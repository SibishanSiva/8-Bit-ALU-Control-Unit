LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY seg7Mod IS
    PORT (
        bcd  : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        leds1 : OUT STD_LOGIC_VECTOR(0 TO 6)
    );
END seg7Mod;

ARCHITECTURE Behavior OF seg7Mod IS
BEGIN
    PROCESS (bcd)
    BEGIN
        CASE bcd IS
            WHEN "1111"  => leds1 <= NOT "0111011"; -- Y 
            WHEN "0000"  => leds1 <= NOT "1110110"; -- N
            WHEN OTHERS  => leds1 <= "0000000";  
        END CASE;
 END PROCESS;
END Behavior;