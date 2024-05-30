-- MEMORIA DE PROGRAMA 
--
--Library IEEE;
--Use IEEE.std_logic_1164.all;
--Use IEEE.std_logic_arith.all;
--Use IEEE.std_logic_unsigned.all;
--
--Entity MEM_PROGRAMA is 
--	Port( CLK		: in std_logic;
--			Address	: in std_logic_vector (6 downto 0);
--			Data_out	: out std_logic_vector (7 downto 0)); 
--end MEM_PROGRAMA;
--
--Architecture arc of MEM_PROGRAMA is 
--
---- TRANSFERENCIA DE DATOS 
--Constant LOAD_INM_A	: std_logic_vector (7 downto 0)	:= x"86"; -- Carga inmediata en A 
--Constant LOAD_INM_B	: std_logic_vector (7 downto 0)	:= x"87"; -- Carga inmediata en B 
--Constant LOAD_DIR_A	: std_logic_vector (7 downto 0)	:= x"88"; -- Carga dirección en A 
--Constant LOAD_DIR_B	: std_logic_vector (7 downto 0)	:= x"89"; -- Carga dirección en A 
--Constant STORE_A		: std_logic_vector (7 downto 0)	:= x"96"; -- Guarda A en dirección
--Constant STORE_B		: std_logic_vector (7 downto 0)	:= x"97"; -- Guarda B en dirección  
--
---- OPERACIONES ARITMETICO - LOGICO
--Constant ADD_AB		: std_logic_vector (7 downto 0)	:= x"40"; -- SUMA A + B 
--Constant SUB_AB		: std_logic_vector (7 downto 0)	:= x"41"; -- RESTA A - B 
--Constant AND_AB		: std_logic_vector (7 downto 0)	:= x"42"; -- A and B 
--Constant OR_AB			: std_logic_vector (7 downto 0)	:= x"43"; -- A or B 
--Constant XOR_AB		: std_logic_vector (7 downto 0)	:= x"44"; -- A xor B 
--Constant INC_A			: std_logic_vector (7 downto 0)	:= x"45"; -- INC A ! A = A+1  
--Constant INC_B			: std_logic_vector (7 downto 0)	:= x"46"; -- INC B ! B = B+1
--Constant DEC_A			: std_logic_vector (7 downto 0)	:= x"47"; -- DEC A ! A = A-1
--Constant DEC_B			: std_logic_vector (7 downto 0)	:= x"48"; -- DEC B ! B = B-1
--Constant NOT_A			: std_logic_vector (7 downto 0)	:= x"50"; -- NEG A => COMP1 A
--Constant NOT_B			: std_logic_vector (7 downto 0)	:= x"51"; -- NEG B => COMP1 B
--
---- SALTOS
--Constant JMP			: std_logic_vector (7 downto 0)	:= x"20"; -- SALTO INCONDICIONAL A DIRECCIÓN 
--Constant JN 			: std_logic_vector (7 downto 0)	:= x"21"; -- SALTO A DIRECCION SI N=1
--Constant JNN			: std_logic_vector (7 downto 0)	:= x"22"; -- SALTO A DIRECCION SI N=0
--Constant JZ				: std_logic_vector (7 downto 0)	:= x"23"; -- SALTO A DIRECCION SI Z=1 / JE
--Constant JNZ			: std_logic_vector (7 downto 0)	:= x"24"; -- SALTO A DIRECCION SI Z=0 /JNE
--Constant JOV			: std_logic_vector (7 downto 0)	:= x"25"; -- SALTO A DIRECCION SI V=1
--Constant JNOV			: std_logic_vector (7 downto 0)	:= x"26"; -- SALTO A DIRECCION SI V=0
--Constant JC				: std_logic_vector (7 downto 0)	:= x"27"; -- SALTO A DIRECCION SI C=1
--Constant JNC			: std_logic_vector (7 downto 0)	:= x"28"; -- SALTO A DIRECCION SI C=0
--
--	type INSTMEM is array (0 to 127) of std_logic_vector (7 downto 0); 
--
----Signal ROM: INSTMEM :=(	 0			=> LOAD_DIR_A, -- LOOP INFINITO, LEE EL PUERTO E0 Y ESCRIBE EL DATO EN 
----									1			=> x"E0",
----									2			=> LOAD_INM_B,
----									3			=> "00000011",
----									4			=> ADD_AB,
----									5			=> STORE_A,
----									6			=> X"FF",
----									7			=> JMP,
----									8			=> x"00",
----									others	=> x"00");	-- Las demás posiciones se inicializan a 0.

--Begin
---- Proceso para la lectura de la memoria de programa
--	Process (CLK)
--		begin 
--			If (CLK'event and CLK = '1') then 
--				Data_out <= ROM(CONV_INTEGER(unsigned(Address)));
--			end if; 
--	end process;
--	
--end arc;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MEM_PROGRAMA is
    port (
        CLK     : in std_logic;
        Address : in std_logic_vector (6 downto 0);
        Data_out: out std_logic_vector (7 downto 0)
    );
end entity;

architecture arc of MEM_PROGRAMA is

    -- TRANSFERENCIA DE DATOS
    constant LOAD_INM_A : std_logic_vector (7 downto 0) := x"86"; -- Carga inmediata en A 
    constant LOAD_INM_B : std_logic_vector (7 downto 0) := x"87"; -- Carga inmediata en B 
    constant LOAD_DIR_A : std_logic_vector (7 downto 0) := x"88"; -- Carga dirección en A 
    constant LOAD_DIR_B : std_logic_vector (7 downto 0) := x"89"; -- Carga dirección en B 
    constant STORE_A    : std_logic_vector (7 downto 0) := x"96"; -- Guarda A en dirección
    constant STORE_B    : std_logic_vector (7 downto 0) := x"97"; -- Guarda B en dirección  

    -- OPERACIONES ARITMETICO - LOGICO
    constant ADD_AB     : std_logic_vector (7 downto 0) := x"40"; -- SUMA A + B 
    constant SUB_AB     : std_logic_vector (7 downto 0) := x"41"; -- RESTA A - B 
    constant AND_AB     : std_logic_vector (7 downto 0) := x"42"; -- A and B 
    constant OR_AB      : std_logic_vector (7 downto 0) := x"43"; -- A or B 
    constant XOR_AB     : std_logic_vector (7 downto 0) := x"44"; -- A xor B 
    constant INC_A      : std_logic_vector (7 downto 0) := x"45"; -- INC A ! A = A+1  
    constant INC_B      : std_logic_vector (7 downto 0) := x"46"; -- INC B ! B = B+1
    constant DEC_A      : std_logic_vector (7 downto 0) := x"47"; -- DEC A ! A = A-1
    constant DEC_B      : std_logic_vector (7 downto 0) := x"48"; -- DEC B ! B = B-1
    constant NOT_A      : std_logic_vector (7 downto 0) := x"50"; -- NEG A => COMP1 A
    constant NOT_B      : std_logic_vector (7 downto 0) := x"51"; -- NEG B => COMP1 B

    -- SALTOS
    constant JMP        : std_logic_vector (7 downto 0) := x"20"; -- SALTO INCONDICIONAL A DIRECCIÓN 
    constant JN         : std_logic_vector (7 downto 0) := x"21"; -- SALTO A DIRECCION SI N=1
    constant JNN        : std_logic_vector (7 downto 0) := x"22"; -- SALTO A DIRECCION SI N=0
    constant JZ         : std_logic_vector (7 downto 0) := x"23"; -- SALTO A DIRECCION SI Z=1 / JE
    constant JNZ        : std_logic_vector (7 downto 0) := x"24"; -- SALTO A DIRECCION SI Z=0 /JNE
    constant JOV        : std_logic_vector (7 downto 0) := x"25"; -- SALTO A DIRECCION SI V=1
    constant JNOV       : std_logic_vector (7 downto 0) := x"26"; -- SALTO A DIRECCION SI V=0
    constant JC         : std_logic_vector (7 downto 0) := x"27"; -- SALTO A DIRECCION SI C=1
    constant JNC        : std_logic_vector (7 downto 0) := x"28"; -- SALTO A DIRECCION SI C=0

    type INSTMEM is array (0 to 127) of std_logic_vector (7 downto 0); 

    signal ROM: INSTMEM := (
		  0  => LOAD_INM_A,  -- Inicializar A con 0
        1  => "00000000",       -- Valor inmediato 0
		  2  => STORE_A,     -- Guardar A en la dirección X"FF"
        3  => x"FF",       -- Dirección de memoria X"FF" 				#0
		  
        4  => LOAD_INM_B,  -- Inicializar B con 1
        5  => "00000001",  -- Valor inmediato 1
		  6  => ADD_AB,      -- A = A + B (Segundo número Fibonacci)
        7  => STORE_A,     -- Guardar A en la dirección X"FF"
        8  => x"FF",       -- Dirección de memoria X"FF"             -- #1
		 
        9  => LOAD_INM_A,  -- Inicializar A con 0
        10  => "00000001",       -- Valor inmediato 0
		  11 => ADD_AB,      -- A = A + B (TERCERO número Fibonacci)
        12 => STORE_A,     -- Guardar B en la dirección X"FF"
        13 => x"FF",       -- Dirección de memoria X"FF"             -- #2
		  
        14 => LOAD_INM_B,  -- Inicializar B con 1
        15 => "00000001",  -- Valor inmediato 1
		  16 => ADD_AB,      -- A = A + B (CUARTO número Fibonacci)
        17 => STORE_A,     -- Guardar A en la dirección X"FF"
        18 => x"FF",       -- Dirección de memoria X"FF"             -- #3
	  
        19 => LOAD_INM_B,  -- Inicializar A con 0
        20 => "00000010",  -- Valor inmediato 0
		  21 => ADD_AB,      -- A = A + B (QUINTO número Fibonacci)
        22 => STORE_A,     -- Guardar B en la dirección X"FF"
        23 => x"FF",       -- Dirección de memoria X"FF"             -- #5
	  
        24 => LOAD_INM_B,  -- Inicializar B con 1
        25 => "00000011",  -- Valor inmediato 1
		  26 => ADD_AB,      -- A = A + B (SEXTO número Fibonacci)
        27 => STORE_A,     -- Guardar A en la dirección X"FF"
        28 => x"FF",       -- Dirección de memoria X"FF"             -- #8
		  
        29 => LOAD_INM_B,  -- Inicializar B con 1
        30 => "00000101",  -- Valor inmediato 1
		  31 => ADD_AB,      -- A = A + B (SEPTIMO número Fibonacci)
        32 => STORE_A,     -- Guardar B en la dirección X"FF"
        33 => x"FF",       -- Dirección de memoria X"FF"             -- #13
  
        34 => LOAD_INM_B,  -- Inicializar B con 1
        35 => "00001000",  -- Valor inmediato 1
		  36 => ADD_AB,      -- A = A + B (OCTAVO número Fibonacci)
        37 => STORE_A,     -- Guardar A en la dirección X"FF"
        38 => x"FF",       -- Dirección de memoria X"FF"             -- #21
		  
        39 => LOAD_INM_B,  -- Inicializar B con 1
        40 => "00001101",  -- Valor inmediato 1
		  41 => ADD_AB,      -- A = A + B (NOVENO número Fibonacci)
        42 => STORE_A,     -- Guardar B en la dirección X"FF"
        43 => x"FF",       -- Dirección de memoria X"FF"             -- #34
		  
        44 => LOAD_INM_B,  -- Inicializar B con 1
        45 => "00010101",  -- Valor inmediato 1
		  46 => ADD_AB,      -- A = A + B (DECIMO número Fibonacci)
        47 => STORE_A,     -- Guardar A en la dirección X"FF"
        48 => x"FF",       -- Dirección de memoria X"FF"             -- #55
		  
        49 => LOAD_INM_B,  -- Inicializar B con 1
        50 => "00100010",  -- Valor inmediato 1
		  51 => ADD_AB,      -- A = A + B (onceavo número Fibonacci)
        52 => STORE_A,     -- Guardar B en la dirección X"FF"
        53 => x"FF",       -- Dirección de memoria X"FF"             -- #89
		  
        54 => JMP,         -- Salto incondicional
        55 => x"00",       -- Dirección para saltar al inicio
        others => x"00"    -- Las demás posiciones se inicializan a 0.
		  );

begin
    -- Proceso para la lectura de la memoria de programa
    process (CLK)
    begin
        if (CLK'event and CLK = '1') then 
            Data_out <= ROM(to_integer(unsigned(Address)));
        end if;
    end process;

end arc;
