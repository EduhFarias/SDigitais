LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY ULA IS
	PORT(	
		A	:	IN STD_LOGIC_VECTOR(32 DOWNTO 0);
		B	:	IN STD_LOGIC_VECTOR(32 DOWNTO 0);
		CON	:	IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		DISPLAY_1, DISPLAY_2, DISPLAY_3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		D_OUT	:	OUT STD_LOGIC_VECTOR(32 DOWNTO 0)    	
	);
END ULA;

---------------------------------------------------

ARCHITECTURE BEHV OF ULA IS
SIGNAL outAdd	: STD_LOGIC_VECTOR(32 DOWNTO 0);
SIGNAL outSub	: STD_LOGIC_VECTOR(32 DOWNTO 0);
SIGNAL outOr	: STD_LOGIC_VECTOR(32 DOWNTO 0);
SIGNAL outAnd	: STD_LOGIC_VECTOR(32 DOWNTO 0);
SIGNAL Res	: STD_LOGIC_VECTOR(32 DOWNTO 0);

BEGIN					   
ADDER	: ENTITY WORK.ADDER PORT MAP (A,B,outAdd);
SUBBER	: ENTITY WORK.SUB PORT MAP (A,B,outSub);
ANDER	: ENTITY WORK.LOGIC_AND PORT MAP (A,B,outAnd);
--DISPLAYER: ENTITY WORK.DISPLAY PORT MAP (A,B, Res);
ORER	: ENTITY WORK.LOGIC_OR PORT MAP (A,B,outOr);
	
PROCESS(A,B,CON)
    BEGIN
	CASE CON IS
	    WHEN "111100" =>  
		Res <= outAdd; -- A+B
	    WHEN "111111" =>						
	      	Res <= outSub; -- B-A
	WHEN "001100" =>
	      	Res <= outAnd; -- A and B
	    WHEN "011100" =>	 
		Res <= outOr; -- A OR B
	    WHEN "011000" => 
		Res <= A;  -- A
	    WHEN "010100" => 
		Res <= B; -- B
	    WHEN "011010" =>
		Res <= not A; -- ~ A
	    WHEN "101100" =>
		Res <= not B; -- ~B
	    WHEN "111101" =>
		Res <= outAdd + 1; -- 1 + A+ B
	    WHEN "111001" =>
		Res <= A + 1; -- A+1
	    WHEN "110101" =>
		Res <= B + 1; -- B+1
	    WHEN "110110" =>
		Res <= B - 1; -- B-1
	    WHEN "111011" =>
		Res <= "0000"-A;-- -A
	    WHEN "010000" =>
		Res <= "0000"; -- 0
	    WHEN "110001" =>
		Res <= "0001"; -- 1
	    WHEN "110010" =>
		Res <= -"0001"; -- -1
	    WHEN others =>	 
		Res <= "0000"; -- 0
        END CASE;
	 D_OUT <= Res;
    END PROCESS;
END BEHV;
