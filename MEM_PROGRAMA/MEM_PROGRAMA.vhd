-- MEMORIA DE PROGRAMA 

Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_arith.all;
Use IEEE.std_logic_unsigned.all;

Entity MEM_PROGRAMA is 
	Port( CLK		: in std_logic;
			Address	: in std_logic_vector (6 downto 0);
			Data_out	: out std_logic_vector (7 downto 0)); 
end MEM_PROGRAMA;

Architecture arc of MEM_PROGRAMA is 

-- TRANSFERENCIA DE DATOS 
Constant LOAD_INM_A	: std_logic_vector (7 downto 0)	:= x"86"; -- Carga inmediata en A 
Constant LOAD_INM_B	: std_logic_vector (7 downto 0)	:= x"87"; -- Carga inmediata en B 
Constant LOAD_DIR_A	: std_logic_vector (7 downto 0)	:= x"88"; -- Carga dirección en A 
Constant LOAD_DIR_B	: std_logic_vector (7 downto 0)	:= x"89"; -- Carga dirección en A 
Constant STORE_A		: std_logic_vector (7 downto 0)	:= x"96"; -- Guarda A en dirección
Constant STORE_B		: std_logic_vector (7 downto 0)	:= x"97"; -- Guarda B en dirección  

-- OPERACIONES ARITMETICO - LOGICO
Constant ADD_AB		: std_logic_vector (7 downto 0)	:= x"40"; -- SUMA A + B 
Constant SUB_AB		: std_logic_vector (7 downto 0)	:= x"41"; -- RESTA A - B 
Constant AND_AB		: std_logic_vector (7 downto 0)	:= x"42"; -- A and B 
Constant OR_AB			: std_logic_vector (7 downto 0)	:= x"43"; -- A or B 
Constant XOR_AB		: std_logic_vector (7 downto 0)	:= x"44"; -- A xor B 
Constant INC_A			: std_logic_vector (7 downto 0)	:= x"45"; -- INC A ! A = A+1  
Constant INC_B			: std_logic_vector (7 downto 0)	:= x"46"; -- INC B ! B = B+1
Constant DEC_A			: std_logic_vector (7 downto 0)	:= x"47"; -- DEC A ! A = A-1
Constant DEC_B			: std_logic_vector (7 downto 0)	:= x"48"; -- DEC B ! B = B-1
Constant NOT_A			: std_logic_vector (7 downto 0)	:= x"50"; -- NEG A => COMP1 A
Constant NOT_B			: std_logic_vector (7 downto 0)	:= x"51"; -- NEG B => COMP1 B

-- SALTOS
Constant JMP			: std_logic_vector (7 downto 0)	:= x"20"; -- SALTO INCONDICIONAL A DIRECCIÓN 
Constant JN 			: std_logic_vector (7 downto 0)	:= x"21"; -- SALTO A DIRECCION SI N=1
Constant JNN			: std_logic_vector (7 downto 0)	:= x"22"; -- SALTO A DIRECCION SI N=0
Constant JZ				: std_logic_vector (7 downto 0)	:= x"23"; -- SALTO A DIRECCION SI Z=1 / JE
Constant JNZ			: std_logic_vector (7 downto 0)	:= x"24"; -- SALTO A DIRECCION SI Z=0 /JNE
Constant JOV			: std_logic_vector (7 downto 0)	:= x"25"; -- SALTO A DIRECCION SI V=1
Constant JNOV			: std_logic_vector (7 downto 0)	:= x"26"; -- SALTO A DIRECCION SI V=0
Constant JC				: std_logic_vector (7 downto 0)	:= x"27"; -- SALTO A DIRECCION SI C=1
Constant JNC			: std_logic_vector (7 downto 0)	:= x"28"; -- SALTO A DIRECCION SI C=0

	type INSTMEM is array (0 to 127) of std_logic_vector (7 downto 0); 

--Signal ROM: INSTMEM :=(	0			=> LOAD_DIR_A, -- LOOP INFINITO, LEE EL PUERTO E0 Y ESCRIBE EL DATO EN 
--									1			=> x"E0",
--									2			=> LOAD_INM_B,
--									3			=> "00000011",
--									4			=> ADD_AB,
--									5			=> STORE_A,
--									6			=> X"FF",
--									7			=> JMP,
--									8			=> x"00",
--									others	=> x"00");	-- Las demás posiciones se inicializan a 0.

signal ROM: INSTMEM := (
    0     => LOAD_DIR_A,  -- Inicializar A con 0
    1     => X"00",        -- Dirección de inicio de la serie Fibonacci
    2     => LOAD_DIR_B,   -- Inicializar B con 1
    3     => X"01",        -- Valor 1 para comenzar la serie Fibonacci
    4     => ADD_AB,       -- Sumar A y B
    5     => STORE_A,      -- Almacenar el resultado en A
    6     => X"00",        -- Dirección de inicio de la serie Fibonacci
    7     => LOAD_INM_B,   -- Cargar el valor 1 en B para la siguiente iteración
    8     => X"01",        -- Valor 1 para cargar en B
    9     => JMP,          -- Saltar de nuevo al inicio de la serie Fibonacci
    10    => X"FF",        -- Dirección de memoria para mostrar resultados
    11    => LOAD_OUT_A,   -- Cargar el resultado desde la dirección de memoria
    12    => X"FF",        -- Dirección de memoria X"FF"
    others => X"00"
);

Begin
-- Proceso para la lectura de la memoria de programa
	Process (CLK)
		begin 
			If (CLK'event and CLK = '1') then 
				Data_out <= ROM(CONV_INTEGER(unsigned(Address)));
			end if; 
	end process;
	
end arc;