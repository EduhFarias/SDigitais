LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY DECODER IS
	PORT(
		READ_REG : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		R_MDR, R_IR, R_AC, R_PC, R_RS : OUT STD_LOGIC
		);
	);
END DECODER;

ARCHITECTURE DECODER OF DECODER IS
	BEGIN
		R_MDR <= '1' WHEN READ_REG = "001" OR READ_REG = "110" OR READ_REG = "111" ELSE '0'; --Mudar instruçoes para o mic
		R_IR	<= '1' WHEN READ_REG = "010" 														ELSE '0';
		R_PC	<= '1' WHEN READ_REG = "011" OR READ_REG = "111" 							ELSE '0';
		R_AC	<= '1' WHEN READ_REG = "100" OR READ_REG = "110" 							ELSE '0';
		R_RS	<= '1' WHEN READ_REG = "101" 														ELSE '0';
	END;
END DECODER;
