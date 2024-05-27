library ieee;
use ieee.std_logic_1164.all;

entity ALU_8BITS is
	port(A,B: in std_logic_vector (7 downto 0);
		  Cin: in std_logic;
		  contROL: in std_logic_vector (7 downto 0);
		  Sal: out std_logic_vector (7 downto 0);
		  Cout: out std_logic;
		  Ban: out std_logic_vector (3 downto 0));
		  
end entity;

-- NA NB AnB NOTB NOTA AXB AOB AMASB

architecture arc of ALU_8BITS is

component BIT_SLICE is
	port(A,B,NA,NB,Cin,AnB,notB,notA,AxB,AoB,AmasB: in std_logic;
		  C,S: out std_logic);
end component;

signal C: std_logic_vector (7 downto 1);
signal Co : std_logic;
signal S: std_logic_vector(7 downto 0);

begin

		I1: BIT_SLICE port map(A(0),B(0),Control(7),Control(6),Cin,Control(5),Control(4),Control(3),Control(2),Control(1),Control(0),C(1),S(0));
		I2: BIT_SLICE port map(A(1),B(1),Control(7),Control(6),C(1),Control(5),Control(4),Control(3),Control(2),Control(1),Control(0),C(2),S(1));
		I3: BIT_SLICE port map(A(2),B(2),Control(7),Control(6),C(2),Control(5),Control(4),Control(3),Control(2),Control(1),Control(0),C(3),S(2));
		I4: BIT_SLICE port map(A(3),B(3),Control(7),Control(6),C(3),Control(5),Control(4),Control(3),Control(2),Control(1),Control(0),C(4),S(3));
		I5: BIT_SLICE port map(A(4),B(4),Control(7),Control(6),C(4),Control(5),Control(4),Control(3),Control(2),Control(1),Control(0),C(5),S(4));
		I6: BIT_SLICE port map(A(5),B(5),Control(7),Control(6),C(5),Control(5),Control(4),Control(3),Control(2),Control(1),Control(0),C(6),S(5));
		I7: BIT_SLICE port map(A(6),B(6),Control(7),Control(6),C(6),Control(5),Control(4),Control(3),Control(2),Control(1),Control(0),C(7),S(6));
		I8: BIT_SLICE port map(A(7),B(7),Control(7),Control(6),C(7),Control(5),Control(4),Control(3),Control(2),Control(1),Control(0),Co,S(7));
		
		Cout <= Co;
		
		Sal <= S;
		
	-- Cálculo de la salida de banderas
		Ban(3) <= Co;
		Ban(2) <= C(7) XOR Co;
		
		with S select
			Ban(1) <= '1' when x"00",
					'0' when others;
					
				
		Ban(0) <= Co AND (Control(7) OR Control(6));	-- Bit de cero
		
	
end arc;