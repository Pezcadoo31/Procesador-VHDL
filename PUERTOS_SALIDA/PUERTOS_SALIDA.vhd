-- PUERTOS DE SALIDA

Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_arith.all;
Use IEEE.std_logic_unsigned.all;

Entity PUERTOS_SALIDA is
	Port( CLK, RST, WR		:	in std_logic;
			Address				:	in std_logic_vector (3 downto 0);
			Data_in				: 	in std_logic_vector (7 downto 0);
			P_out_00, P_out_01, P_out_02, P_out_03	:	out std_logic_vector (7 downto 0);
			P_out_04, P_out_05, P_out_06, P_out_07	:	out std_logic_vector (7 downto 0);
			P_out_08, P_out_09, P_out_10, P_out_11	:	out std_logic_vector (7 downto 0);
			P_out_12, P_out_13, P_out_14, P_out_15	:	out std_logic_vector (7 downto 0));
end PUERTOS_SALIDA;

Architecture arc of PUERTOS_SALIDA is
	Type mem_datos is array (0 to 15) of std_logic_vector (7 downto 0);
	Signal RAM: mem_datos := (	x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",	
										x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00"); -- Se inicializa la memoria RAM con valores 0.
	
	Begin
		Process (CLK, RST)
			Begin 
				If (RST = '0') then 
					RAM(0) <= x"00";
					RAM(1) <= x"00";
					RAM(2) <= x"00";
					RAM(3) <= x"00";
					RAM(4) <= x"00";
					RAM(5) <= x"00";
					RAM(6) <= x"00";
					RAM(7) <= x"00";
					RAM(8) <= x"00";
					RAM(9) <= x"00";
					RAM(10) <= x"00";
					RAM(11) <= x"00";
					RAM(12) <= x"00";
					RAM(13) <= x"00";
					RAM(14) <= x"00";
					RAM(15) <= x"00";
				elsif (CLK'event and CLK = '1') then 
					if(WR = '1') then 
						RAM(conv_integer(unsigned(Address))) <= Data_in;
					end if; 
				end if ;
		end process;
		
	P_out_00 <= RAM(0);
	P_out_01 <= RAM(1);
	P_out_02 <= RAM(2);
	P_out_03 <= RAM(3);
	P_out_04 <= RAM(4);
	P_out_05 <= RAM(5);
	P_out_06 <= RAM(6);
	P_out_07 <= RAM(7);
	P_out_08 <= RAM(8);
	P_out_09 <= RAM(9);
	P_out_10 <= RAM(10);
	P_out_11 <= RAM(11);
	P_out_12 <= RAM(12);
	P_out_13 <= RAM(13);
	P_out_14 <= RAM(14);
	P_out_15 <= RAM(15);
	
End arc;