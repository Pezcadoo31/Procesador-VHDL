library ieee;
use ieee.std_logic_1164.all;

entity ALU_2BITS is
	port(A,B: in std_logic_vector (1 downto 0);
		  Cin: in std_logic;
		  contROL: in std_logic_vector (7 downto 0);
		  S: out std_logic_vector (1 downto 0);
		  Cout: out std_logic);
		  
end entity;

-- NA NB AnB NOTB NOTA AXB AOB AMASB

architecture arc of ALU_2BITS is

component BIT_SLICE is
	port(A,B,NA,NB,Cin,AnB,notB,notA,AxB,AoB,AmasB: in std_logic;
		  C,S: out std_logic);
end component;

signal C: std_logic;

begin

		I1: BIT_SLICE port map(A(0),B(0),Control(7),Control(6),Cin,Control(5),Control(4),Control(3),Control(2),Control(1),Control(0),C,S(0));
		I2: BIT_SLICE port map(A(1),B(1),Control(7),Control(6),C,Control(5),Control(4),Control(3),Control(2),Control(1),Control(0),Cout,S(1));
		
END ARC;