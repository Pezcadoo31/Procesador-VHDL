library ieee;
use ieee.std_logic_1164.all;

entity BIT_SLICE is
	port(A,B,NA,NB,Cin,AnB,notB,notA,AxB,AoB,AmasB: in std_logic;
		  C,S: out std_logic);
end entity;

architecture arc of BIT_SLICE is

component HA IS
port ( a, b : in std_logic;
			s, Cout : out std_logic);
END component;
 
signal XOR1, XOR2, OR1, Cout1, Cout2, Sum1, Sum2, A1, A2, A3, O4, A5, A6, A7, O8 : std_logic;

begin

XOR1 <= A XOR NA;
XOR2 <= B XOR NB;
OR1 <= Cin OR NA OR NB;

I0: HA port map(XOR1,XOR2,Sum1,Cout1);
I1: HA port map(Sum1,OR1,Sum2,Cout2);



A1 <= Cout1 and AnB;
A2 <= not(XOR2) and notB;
A3 <= not(XOR1) and notA;
O4 <= XOR1 OR XOR2;
A5 <= Sum1 and AxB;
A6 <= Sum2 and AmasB;
A7 <= O4 and AoB;

O8 <= A1 OR A2 OR A3 OR A5 OR A6;
S <= O8 OR A7;

C <= (Cout1 or Cout2) AND AmasB; 



end arc;