library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity ULA is



port(	A:	in std_logic_vector(32 downto 0);
	B:	in std_logic_vector(32 downto 0);
	con:	in std_logic_vector(5 downto 0);
	DISPLAY_1, DISPLAY_2, DISPLAY_3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	outtie:	out std_logic_vector(32 downto 0)    	
);

end ULA;

---------------------------------------------------

architecture behv of ULA is
signal outAdd: std_logic_vector(32 downto 0);
signal outSub: std_logic_vector(32 downto 0);
signal outOr: std_logic_vector(32 downto 0);
signal outAnd: std_logic_vector(32 downto 0);
signal Res: std_logic_vector(32 downto 0);
begin					   
ADDER: entity work.doSUM port map (A,B,outAdd);
SUBBER: entity work.doSUB port map (A,B,outSub);
ANDER: entity work.doAND port map (A,B,outAnd);
DISPLAYER: entity work.DISPLAY port map (A,B, Res);
ORER: entity work.doSUM port map (A,B,outOr);
    process(A,B,con)
    begin
	case con is
	    when "111100" =>  
				Res <= outAdd; -- A+B
	    when "111111" =>						
	      Res <= outSub; -- B-A
       when "001100" =>
				Res <= outAnd; -- A and B
	    when "011100" =>	 
				Res <= outOr; -- A OR B
	    when "011000" => 
				Res <= A;  -- A
	    when "010100" => 
				Res <= B; -- B
	    when "011010" =>
				Res <= not A; -- ~ A
	    when "101100" =>
				Res <= not B; -- ~B
	    when "111101" =>
				Res <= outAdd + 1; -- 1 + A+ B
	    when "111001" =>
				Res <= A + 1; -- A+1
	    when "110101" =>
				Res <= B + 1; -- B+1
	    when "110110" =>
				Res <= B - 1; -- B-1
	    when "111011" =>
				Res <= "0000"-A;-- -A
	    when "010000" =>
				Res <= "0000"; -- 0
	    when "110001" =>
				Res <= "0001"; -- 1
	    when "110010" =>
				Res <= -"0001"; -- -1
	    when others =>	 
				Res <= "0000"; -- 0
        end case;
	 outtie<=Res;
    end process;


end behv;
