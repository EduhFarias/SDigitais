-- Shifter

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY SHFT IS
	port(	
		DATA_INPUT :	IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		CLK :	IN STD_LOGIC;
		LOAD :	IN STD_LOGIC;
		CLEAR :	IN STD_LOGIC;
		DATA_OUTPUT :	OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END SHFT;


ARCHITECTURE EXEC OF SHFT IS
BEGIN
    PROCESS(DATA_INPUT, CLK, LOAD, CLEAR)
    BEGIN
	  IF CLEAR = '1' THEN
            DATA_OUTPUT <= "0000";
	  ELSIF RISING_EDGE(CLK) THEN
	    IF LOAD = '1' THEN
		    DATA_OUTPUT <= DATA_INPUT;
	    END IF;
	  END IF;
    END PROCESS;
END EXEC;
