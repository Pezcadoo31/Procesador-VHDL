-- MEMORIA 
Library IEEE;
Use IEEE.std_logic_1164.all;

Entity MEMORIA is 
	PORT( CLK, RST, WR	: in std_logic;
			Address			: in std_logic_vector (7 downto 0);
			Data_in 			: in std_logic_vector (7 downto 0);
			P_in_00, P_in_01, P_in_02, P_in_03	: in std_logic_vector (7 downto 0);
			P_in_04, P_in_05, P_in_06, P_in_07	: in std_logic_vector (7 downto 0);
			P_in_08, P_in_09, P_in_10, P_in_11	: in std_logic_vector (7 downto 0);
			P_in_12, P_in_13, P_in_14, P_in_15	: in std_logic_vector (7 downto 0);
			Data_out			: out std_logic_vector (7 downto 0);
			P_out_00, P_out_01, P_out_02, P_out_03	: out std_logic_vector (7 downto 0);
			P_out_04, P_out_05, P_out_06, P_out_07	: out std_logic_vector (7 downto 0);
			P_out_08, P_out_09, P_out_10, P_out_11	: out std_logic_vector (7 downto 0);
			P_out_12, P_out_13, P_out_14, P_out_15	: out std_logic_vector (7 downto 0));
end MEMORIA;

Architecture arc of MEMORIA is 

Component MEM_PROGRAMA is 
	Port( CLK		: in std_logic;
			Address	: in std_logic_vector (6 downto 0);
			Data_out	: out std_logic_vector (7 downto 0)); 
end component;

Component MEM_DATOS is 
	Port( CLK, WR	: in std_logic; -- wr = WRITE
			Address	: in std_logic_vector (6 downto 0);
			Data_in	: in std_logic_vector (7 downto 0);
			Data_out	: out std_logic_vector (7 downto 0)); 
end component;

Component PUERTOS_SALIDA is 
	Port( CLK, RST, WR	: in std_logic; -- wr = WRITE
			Address			: in std_logic_vector (3 downto 0);
			Data_in			: in std_logic_vector (7 downto 0);
			P_out_00, P_out_01, P_out_02, P_out_03	: out std_logic_vector (7 downto 0);
			P_out_04, P_out_05, P_out_06, P_out_07	: out std_logic_vector (7 downto 0);
			P_out_08, P_out_09, P_out_10, P_out_11	: out std_logic_vector (7 downto 0);
			P_out_12, P_out_13, P_out_14, P_out_15	: out std_logic_vector (7 downto 0));
end component;

	Signal ROM_OUT, RAM_OUT				: std_logic_vector (7 downto 0);
	Signal OUTPUT_PORT_ADDR				: std_logic_vector (3 downto 0);
	Signal RAM_ADDRESS, ROM_ADDRESS	: std_logic_vector (6 downto 0);

Begin 
	ROM_ADDRESS 		<= Address(6 downto 0) when (Address(7) = '0') else "0000000";
	RAM_ADDRESS 		<= Address(6 downto 0) when (Address(7) = '1') else "0000000";
	OUTPUT_PORT_ADDR 	<= Address(3 downto 0) when (Address(7 downto 4) = x"F") else "0000";
	
	MEM_PROG : MEM_PROGRAMA		Port map (CLK, ROM_ADDRESS, ROM_OUT);
	MEM_DATO : MEM_DATOS			Port map (CLK, WR, RAM_ADDRESS, Data_in, RAM_OUT);
	PUERTOS 	: PUERTOS_SALIDA	Port map (CLK, RST, WR, OUTPUT_PORT_ADDR, Data_in, P_out_00, P_out_01, P_out_02,
																	P_out_03, P_out_04, P_out_05, P_out_06, P_out_07, P_out_08,
																	P_out_09, P_out_10, P_out_11, P_out_12, P_out_13, P_out_14,
																																	  P_out_15);
	
	-- MULTIPLEXOR 
	Data_out <= ROM_OUT when Address < x"80" else
					RAM_OUT when Address < x"E0" else
					P_in_00 when Address = x"E0" else
					P_in_01 when Address = x"E1" else
					P_in_02 when Address = x"E2" else
					P_in_03 when Address = x"E3" else
					P_in_04 when Address = x"E4" else
					P_in_05 when Address = x"E5" else
					P_in_06 when Address = x"E6" else
					P_in_07 when Address = x"E7" else
					P_in_08 when Address = x"E8" else
					P_in_09 when Address = x"E9" else
					P_in_10 when Address = x"EA" else
					P_in_11 when Address = x"EB" else
					P_in_12 when Address = x"EC" else
					P_in_13 when Address = x"ED" else
					P_in_14 when Address = x"EE" else
					P_in_15 when Address = x"EF" else
					x"00";
end arc;