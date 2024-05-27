-- DATA PATH

Library IEEE;
Use IEEE.std_logic_1164.all;
Use IEEE.std_logic_arith.all;
Use IEEE.std_logic_unsigned.all;

Entity DATA_PATH is
	Port( CLK, RST										: in std_logic;
			A_Load, B_Load, CCR_Load 				: in std_logic;
			IR_Load, MAR_Load, PC_Load, PC_Inc	: in std_logic;
			ALU_Sel										: in std_logic_vector (7 downto 0);
			Bus1_Sel, Bus2_Sel 						: in std_logic_vector (1 downto 0);
			from_memory 								: in std_logic_vector (7 downto 0);			
			IR, address, to_memory					: out std_logic_vector(7 downto 0);
			CCR_Result 									: out std_logic_vector(3 downto 0));
end DATA_PATH;

Architecture arc of DATA_PATH is 

Component ALU_8BITS is
	port(A,B: in std_logic_vector (7 downto 0);
		  Cin: in std_logic;
		  contROL: in std_logic_vector (7 downto 0);
		  Sal: out std_logic_vector (7 downto 0);
		  Cout: out std_logic;
		  Ban: out std_logic_vector (3 downto 0));
		  
end COMponent;

	Signal BUS1, BUS2, ALU_RESULT				: std_logic_vector (7 downto 0);
	Signal IR_REG, MAR, PC, A_REG, B_REG 	: std_logic_vector (7 downto 0);
	Signal  CCR 						      	: std_logic_vector (3 downto 0); -- registro de banderas
	Signal CCR_IN                          : std_logic_vector (3 downto 0);
	
Begin -- REGISTRO A
	process (CLK, RST)
		begin	
			if (rst = '0') then 
				A_REG <= X"00";
			elsif (CLK'event and CLK = '1') then 
				if(A_Load = '1') then 
					A_REG <= BUS2;
				end if;
			end if;
	end process;

		-- REGISTRO B
	process (CLK, RST)
		begin	
			if (rst = '0') then 
				B_REG <= X"00";
			elsif (CLK'event and CLK = '1') then 
				if(B_Load = '1') then 
					B_REG <= BUS2;
				end if;
			end if;
	end process;	
			
		-- INSTRUCTION REGISTER 
	process (CLK, RST)
		begin	
			if (rst = '0') then 
				IR_REG <= X"00";
			elsif (CLK'event and CLK = '1') then 
				if(IR_Load = '1') then 
					IR_REG <= BUS2;
				end if;
			end if;
	end process;	
			
		-- MAR
	process (CLK, RST)
		begin	
			if (rst = '0') then 
				MAR <= X"00";
			elsif (CLK'event and CLK = '1') then 
				if(MAR_Load = '1') then 
					MAR <= BUS2;
				end if;
			end if;
	end process;	
	
		-- PC
	process (CLK, RST)
		begin	
			if (rst = '0') then 
				PC <= X"00";
			elsif (CLK'event and CLK = '1') then 
				if(PC_Load = '1') then 
					PC <= BUS2;
				elsif (PC_Inc = '1') then
					PC <= PC + X"01";
				end if;
			end if;
	end process;
	
		-- CCR
	process (CLK, RST)
		begin	
			if (rst = '0') then 
				CCR <= X"0";
			elsif (CLK'event and CLK = '1') then 
				if(CCR_Load = '1') then 
					CCR <= CCR_IN;
				end if;
			end if;
	end process;
	
		-- ALU
	ALU_UNIT : ALU_8BITS  port map (B_REG, BUS1, '0', ALU_Sel, ALU_RESULT, open, CCR_IN);
	
	-- Selección de buses según Bus1_Sel y Bus2_Sel
	with bus1_Sel select
		bus1 <= PC when "00",
				  A_rEG when "01",
			     B_rEG when "10",
				  null when others;
				  
	with bus2_Sel select
		bus2 <= Alu_RESULT when "00",
				  bus1 when "01",
			     from_memory when "10",
				  null when others;
			  
	-- Asignación de las salidas de los registros y la ALU a las salidas de la entidad
	IR				<= IR_REG;
	Address		<= 	MAR;
	CCR_Result	<= 	CCR;
	to_memory 	<=	  Bus1;
	
end arc;