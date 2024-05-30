library ieee;
use ieee.std_logic_1164.all;

entity PROCESADOR is
    port(
        clk, rst: in std_logic;
        port_in_00, port_in_01, port_in_02, port_in_03, port_in_04, port_in_05, port_in_06, port_in_07,
        port_in_08, port_in_09, port_in_10, port_in_11, port_in_12, port_in_13, port_in_14, port_in_15: in std_logic_vector(7 downto 0);
        port_out_00, port_out_01, port_out_02, port_out_03, port_out_04, port_out_05, port_out_06, port_out_07,
        port_out_08, port_out_09, port_out_10, port_out_11, port_out_12, port_out_13, port_out_14, port_out_15: out std_logic_vector(7 downto 0);
        segments: out std_logic_vector(13 downto 0) -- Salida para el display de 7 segmentos
    );
end entity;

architecture arc of PROCESADOR is

    component CPU is 
        port(
            clk, rst: in std_logic; 
            from_mem: in std_logic_vector(7 downto 0);
            writee: out std_logic;
            to_mem, addr: out std_logic_vector(7 downto 0)
        );
    end component;
     
    component MEMORIA is 
        port(
            CLK, RST, WR: in std_logic;
            Address: in std_logic_vector(7 downto 0);
            Data_in: in std_logic_vector(7 downto 0);
            P_in_00, P_in_01, P_in_02, P_in_03, P_in_04, P_in_05, P_in_06, P_in_07,
            P_in_08, P_in_09, P_in_10, P_in_11, P_in_12, P_in_13, P_in_14, P_in_15: in std_logic_vector(7 downto 0);
            Data_out: out std_logic_vector(7 downto 0);
            P_out_00, P_out_01, P_out_02, P_out_03, P_out_04, P_out_05, P_out_06, P_out_07,
            P_out_08, P_out_09, P_out_10, P_out_11, P_out_12, P_out_13, P_out_14, P_out_15: out std_logic_vector(7 downto 0)
        );
    end component;

    component BCD_to_7Segment is
        port(
            BCD: in std_logic_vector(5 downto 0);
            Segments: out std_logic_vector(13 downto 0)
        );
    end component;

    component CONT_24OV is
        port (
            clk, rst, start: in std_logic;
            OV: out std_logic
        );
    end component;
	 
	 component DivisorFrecuencia is
    Port (
        clk       : in  STD_LOGIC; -- Reloj de entrada
        reset     : in  STD_LOGIC; -- Señal de reset
        clk_out   : out STD_LOGIC  -- Reloj de salida
    );
	end component;

    signal from_mems, to_mems: std_logic_vector(7 downto 0);
    signal writee: std_logic;
    signal addrs: std_logic_vector(7 downto 0);
    signal port_out_15_internal: std_logic_vector(7 downto 0); -- Señal interna para almacenar el valor de port_out_15
    signal display_value: std_logic_vector(5 downto 0);
    signal divided_clk: std_logic; -- Reloj dividido generado por CONT_24OV

begin
    -- Instanciación del contador CONT_24OV
    --I0: CONT_24OV port map(clk => clk, rst => rst, start => '1', OV => divided_clk);
	 I0: DivisorFrecuencia port map(clk, rst, divided_clk);

    -- Instanciación de la CPU
    I1: CPU port map(clk => divided_clk, rst => rst, from_mem => from_mems, writee => writee, to_mem => to_mems, addr => addrs);

    -- Instanciación de la MEMORIA
    I2: MEMORIA port map(
        CLK => divided_clk, RST => rst, WR => writee, Address => addrs, Data_in => to_mems, 
        P_in_00 => port_in_00, P_in_01 => port_in_01, P_in_02 => port_in_02, P_in_03 => port_in_03, 
        P_in_04 => port_in_04, P_in_05 => port_in_05, P_in_06 => port_in_06, P_in_07 => port_in_07, 
        P_in_08 => port_in_08, P_in_09 => port_in_09, P_in_10 => port_in_10, P_in_11 => port_in_11, 
        P_in_12 => port_in_12, P_in_13 => port_in_13, P_in_14 => port_in_14, P_in_15 => port_in_15, 
        Data_out => from_mems, 
        P_out_00 => port_out_00, P_out_01 => port_out_01, P_out_02 => port_out_02, P_out_03 => port_out_03, 
        P_out_04 => port_out_04, P_out_05 => port_out_05, P_out_06 => port_out_06, P_out_07 => port_out_07, 
        P_out_08 => port_out_08, P_out_09 => port_out_09, P_out_10 => port_out_10, P_out_11 => port_out_11, 
        P_out_12 => port_out_12, P_out_13 => port_out_13, P_out_14 => port_out_14, P_out_15 => port_out_15_internal
    );

    -- Extrayendo los bits necesarios para mostrar en el display desde la señal interna
    display_value <= port_out_15_internal(5 downto 0);

    -- Instanciando el decodificador BCD a 7 segmentos
    I3: BCD_to_7Segment port map(BCD => display_value, Segments => segments);

    -- Asignar las señales internas a los puertos de salida
    port_out_15 <= port_out_15_internal;

end arc;
