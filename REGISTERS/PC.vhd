-- Program Counter: This register serves as the program counter and holds 
-- the address of the next byte in the instruction stream.

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY PC IS
	port(	
		DATA_INPUT :	IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		CLK :	IN STD_LOGIC;
		LOAD :	IN STD_LOGIC;
		CLEAR :	IN STD_LOGIC;
		DATA_OUTPUT :	OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END PC;


ARCHITECTURE EXEC OF PC IS

BEGIN
	
    PROCESS(DATA_INPUT, CLK, LOAD, CLEAR)
    BEGIN

	IF RISING_EDGE(CLK) THEN
	    IF LOAD = '0' THEN
		    DATA_OUTPUT <= DATA_INPUT;
	    ELSE
		    DATA_OUTPUT <= DATA_INPUT << 2;
	    END IF;
	END IF;

    END PROCESS;
    
END EXEC;
