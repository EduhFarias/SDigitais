-- General register

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

PACKAGE CLEO IS	--Package teste para criar uma memoria
	CONSTANT BUS_SIZE : INTEGER := 4;
	SUBTYPE OPCODE IS STD_LOGIC_VECTOR(2 DOWNTO 0);
	SUBTYPE INTERNAL_BUS IS STD_LOGIC_VECTOR(BUS_SIZE-1 DOWNTO 0);
	TYPE RAM IS ARRAY(0 TO 255) OF INTERNAL_BUS;
	
	TYPE MICROINSTRUCTION IS RECORD
		W, R, U : OPCODE;
		CE, RW, LNZ, LCV : STD_LOGIC;
	END RECORD;
END CLEO;

ENTITY REG IS
	port(	
		DATA_INPUT :	IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		CLK :	IN STD_LOGIC;
		LOAD :	IN STD_LOGIC;
		CLEAR :	IN STD_LOGIC;
		DATA_OUTPUT :	OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END REG;


ARCHITECTURE EXEC OF REG IS

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
