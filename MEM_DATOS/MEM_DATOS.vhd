-- MEMORIA DE DATOS 
Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_arith.all;
Use IEEE.std_logic_unsigned.all;

Entity MEM_DATOS is 
	Port( CLK, WR	: in std_logic;
			Address	: in std_logic_vector (6 downto 0);
			Data_in	: in std_logic_vector (7 downto 0);
			Data_out	: out std_logic_vector (7 downto 0));
end MEM_DATOS;

Architecture arc of MEM_DATOS is 

	Type MEM_DATO is array (0 to 95) of std_logic_vector (7 downto 0);
	Signal RAM: MEM_DATO := (
		x"44", x"22", x"11", x"00",
		x"00", x"00", x"00", x"00",
		x"00", x"00", x"00", x"00",
		x"00", x"00", x"00", x"00",
		x"00", x"00", x"00", x"00",
		x"00", x"00", x"00", x"00",
		x"00", x"00", x"00", x"00",
		x"00", x"00", x"00", x"00",
		x"00", x"00", x"00", x"00",
		x"00", x"00", x"00", x"00",
		x"00", x"00", x"00", x"00",
		x"00", x"00", x"00", x"00",
		x"00", x"00", x"00", x"00",
		x"00", x"00", x"00", x"00",
		x"00", x"00", x"00", x"00",
		x"00", x"00", x"00", x"00",
		x"78", x"4E", x"B7", x"55",
		x"23", x"45", x"88", x"77",
		x"FF", x"AA", x"CC", x"EE",
		x"00", x"00", x"00", x"00",
		x"00", x"00", x"00", x"00",
		x"00", x"00", x"00", x"00",
		x"00", x"00", x"00", x"00",
		x"00", x"00", x"00", x"00"
	);
			
Begin 
-- Proceso para escribir y leer desde la memoria
	Process (CLK)
		Begin	
			if (CLK'event and CLK = '1') then
				if (WR = '1') then	
					RAM(CONV_INTEGER(unsigned(Address))) <= Data_in;
				else
					Data_out <= RAM(CONV_INTEGER(unsigned(Address)));
				end if;
			end if;
	end process;
end arc;