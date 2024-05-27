library ieee;
use ieee.std_logic_1164.all;

entity ME is
	port(clk,rst : IN std_logic;
			IR : IN std_logic_vector (7 downto 0);
			CCR_result : IN std_logic_vector(3 downto 0);
			IR_load,Mar_load,PC_inc,PC_load,A_load,B_load,CCR_load,writee : out std_logic;
			ALU_sel : OUT std_logic_vector(7 downto 0);
			BUS1_sel,Bus2_sel : OUT std_logic_vector(1 downto 0));
end entity;


architecture arc of ME is

	type ESTADOS is (Idle,Fetch1,Fetch2,Decode,
	
						  Load_inmA1,Load_inmA2,Load_inmA3,
						  Load_inmB1,Load_inmB2,Load_inmB3, 
						  
						  Load_dir_A1,Load_dir_A2,Load_dir_A3,Load_dir_A4,Load_dir_A5,
						  Load_dir_B1,Load_dir_B2,Load_dir_B3,Load_dir_B4,Load_dir_B5,
						  
						  Store_A1,Store_A2,Store_A3,Store_A4,
						  Store_B1,Store_B2,Store_B3,Store_B4,
						  
						  Jmp1,Jmp2,Jmp3,
						  
						  Add_AB,
						  Sub_AB,
						  AandB,
						  AorB,
						  AxorB,
						  nA,
						  nB,
						  
						  Jcc_n1,Jcc_n2,Jcc_n3,Jcc_n0,
						  Jcc_z1,Jcc_z2,Jcc_z3,Jcc_z0,
						  Jcc_o1,Jcc_o2,Jcc_o3,Jcc_o0,
						  Jcc_c1,Jcc_c2,Jcc_c3,Jcc_c0,
						  Jcc_nn1,Jcc_nn2,Jcc_nn3,Jcc_nn0,
						  Jcc_nz1,Jcc_nz2,Jcc_nz3,Jcc_nz0,
						  Jcc_no1,Jcc_no2,Jcc_no3,Jcc_no0,
						  Jcc_nc1,Jcc_nc2,Jcc_nc3,Jcc_nc0);
	signal edo,edof : ESTADOS;

	BEGIN
	-- Proceso para la máquina de estados
		P1: process (clk, rst) is 
			begin 
				if(rst = '0')then 
					edo <= Idle;
				elsif(clk'event and clk = '1')then 
					edo <= edof;
				end if;
			end process P1;
			
	-- Proceso para decodificar la instrucción actual y cambiar de estado
		P2: process (IR) is 
			begin
				case edo is 
					when idle => edof <= fetch1;
					when Fetch1 => edof <= fetch2;
					when Fetch2 => edof <= decode;
					when Decode => if(IR = X"86")then
											edof <= Load_inmA1;--
										
										elsif (IR = X"87")then
											edof <= Load_inmB1;--
											
										elsif (IR = X"88")then 
											edof <= Load_dir_A1;--
											
										elsif (IR = X"89")then 
											edof <= Load_dir_B1;--
											
										elsif(IR = X"96")then
											edof <= Store_A1;--
											
										elsif(IR = X"97")then
											edof <= Store_B1;--
											
										elsif(IR = X"20")then
											edof <= Jmp1;
											
										elsif(IR = X"40")then
											edof <= Add_AB;
											
										elsif(IR = X"41")then
											edof <= Sub_AB;
											
										elsif(IR = X"42")then
											edof <= AandB;
											
										elsif(IR = X"43")then
											edof <= AorB;
											
										elsif(IR = X"44")then
											edof <= AxorB;
										
										elsif(IR = X"50")then
											edof <= nA;
											
										elsif(IR = X"51")then
											edof <= nB;
											
										elsif(IR = X"21" and ccr_result(0) ='0')then
											edof <= Jcc_n0;
										elsif(IR = X"21" and ccr_result(0) ='1')then
											edof <= Jcc_n1;
										elsif(IR = X"23" and ccr_result(1) ='0')then
											edof <= Jcc_z0;
										elsif(IR = X"23" and ccr_result(1) ='1')then
											edof <= Jcc_z1;
										elsif(IR = X"25" and ccr_result(2) ='0')then
											edof <= Jcc_o0;
										elsif(IR = X"25" and ccr_result(2) ='1')then
											edof <= Jcc_o1;
										elsif(IR = X"27" and ccr_result(3) ='0')then
											edof <= Jcc_c0;
										elsif(IR = X"27" and ccr_result(3) ='1')then
											edof <= Jcc_c1;
											
										elsif(IR = X"22" and ccr_result(0) ='1')then
											edof <= Jcc_nn0;
										elsif(IR = X"22" and ccr_result(0) ='0')then
											edof <= Jcc_nn1;
										elsif(IR = X"24" and ccr_result(1) ='1')then
											edof <= Jcc_nz0;
										elsif(IR = X"24" and ccr_result(1) ='0')then
											edof <= Jcc_nz1;
										elsif(IR = X"26" and ccr_result(2) ='1')then
											edof <= Jcc_no0;
										elsif(IR = X"26" and ccr_result(2) ='0')then
											edof <= Jcc_no1;
										elsif(IR = X"28" and ccr_result(3) ='1')then
											edof <= Jcc_nc0;
										elsif(IR = X"28" and ccr_result(3) ='0')then
											edof <= Jcc_nc1;
											
										else 
											edof <= Idle;
										end if;
										
					when Load_inmA1 => edof <= Load_inmA2;
					when Load_inmA2 => edof <= Load_inmA3;
					when Load_inmA3 => edof <= Idle;
					
					when Load_inmB1 => edof <= Load_inmB2;
					when Load_inmB2 => edof <= Load_inmB3;
					when Load_inmB3 => edof <= Idle;
					
					when Load_dir_A1 => edof <= Load_dir_A2;
					when Load_dir_A2 => edof <= Load_dir_A3;
					when Load_dir_A3 => edof <= Load_dir_A4;
					when Load_dir_A4 => edof <= Load_dir_A5;
					when Load_dir_A5 => edof <= idle;
					
					when Load_dir_B1 => edof <= Load_dir_B2;
					when Load_dir_B2 => edof <= Load_dir_B3;
					when Load_dir_B3 => edof <= Load_dir_B4;
					when Load_dir_B4 => edof <= Load_dir_B5;
					when Load_dir_B5 => edof <= idle;
					
					when Store_A1 => edof <= Store_A2;
					when Store_A2 => edof <= Store_A3;
					when Store_A3 => edof <= Store_A4;
					when Store_A4 => edof <= idle;
					
					when Store_B1 => edof <= Store_B2;
					when Store_B2 => edof <= Store_B3;
					when Store_B3 => edof <= Store_B4;
					when Store_B4 => edof <= idle;
					
					when Jmp1 => edof <= Jmp2;
					when Jmp2 => edof <= Jmp3;
					when Jmp3 => edof <= idle;
					
					when Add_AB => edof <= idle;
					when Sub_AB => edof <= idle;
					when AandB => edof <= idle;
					when AorB => edof <= idle;
					when AxorB => edof <= idle;
					when nA => edof <= idle;
					when nB => edof <= idle;
					
					when Jcc_n0 => edof <= idle;
					when Jcc_n1 => edof <= Jcc_n2;
					when Jcc_n2 => edof <= Jcc_n3;
					when Jcc_n3 => edof <= idle;
					
					when Jcc_z0 => edof <= idle;
					when Jcc_z1 => edof <= Jcc_z2;
					when Jcc_z2 => edof <= Jcc_z3;
					when Jcc_z3 => edof <= idle;
					
					when Jcc_o0 => edof <= idle;
					when Jcc_o1 => edof <= Jcc_o2;
					when Jcc_o2 => edof <= Jcc_o3;
					when Jcc_o3 => edof <= idle;
					
					when Jcc_c0 => edof <= idle;
					when Jcc_c1 => edof <= Jcc_c2;
					when Jcc_c2 => edof <= Jcc_c3;
					when Jcc_c3 => edof <= idle;
					
					when Jcc_nn0 => edof <= idle;
					when Jcc_nn1 => edof <= Jcc_nn2;
					when Jcc_nn2 => edof <= Jcc_nn3;
					when Jcc_nn3 => edof <= idle;
					
					when Jcc_nz0 => edof <= idle;
					when Jcc_nz1 => edof <= Jcc_nz2;
					when Jcc_nz2 => edof <= Jcc_nz3;
					when Jcc_nz3 => edof <= idle;
					
					when Jcc_no0 => edof <= idle;
					when Jcc_no1 => edof <= Jcc_no2;
					when Jcc_no2 => edof <= Jcc_no3;
					when Jcc_no3 => edof <= idle;
					
					when Jcc_nc0 => edof <= idle;
					when Jcc_nc1 => edof <= Jcc_nc2;
					when Jcc_nc2 => edof <= Jcc_nc3;
					when Jcc_nc3 => edof <= idle;
					
					when others => edof <= null;
							
					
					
				end case;
						
			end process P2;
			
		P3: process(edo) is
			begin
				case edo is
					when idle => IR_load <= '0';
									MAR_load <= '1';
									PC_load  <= '0';
									PC_inc   <='0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "01";
									writee <= '0';
									
				 when Fetch1 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '1';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "00";
									writee <= '0';
									
				when Fetch2 => IR_load <= '1';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "10";
									writee <= '0';
									
				when Decode => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "00";
									writee <= '0';
									
				when Load_inmA1 => IR_load <= '0';
									MAR_load <= '1';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "01";
									writee <= '0';
									
				when load_inmA2 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '1';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "00";
									writee <= '0';
									
				when Load_inmA3 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '1';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "10";
									writee <= '0';
									
				--
				when Load_inmB1 => IR_load <= '0';
									MAR_load <= '1';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "01";
									writee <= '0';
									
				when Load_inmB2 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '1';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "00";
									writee <= '0';
									
				when Load_inmB3 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '1';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "10";
									writee <= '0';
-----------------------------------------------------------
				when Load_dir_A1 => IR_load <= '0';
									MAR_load <= '1';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "01";
									writee <= '0'; 
									
				when Load_dir_A2 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '1';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "00";
									writee <= '0';
									
				when Load_dir_A3 => IR_load <= '0';
									MAR_load <= '1';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "10";
									writee <= '0';
									
				when Load_dir_A4 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "00";
									writee <= '0';
									
				when Load_dir_A5 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '1';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "10";
									writee <= '0';
									
				--
				when Load_dir_B1 => IR_load <= '0';
									MAR_load <= '1';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "01";
									writee <= '0'; 
									
				when Load_dir_B2 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '1';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "00";
									writee <= '0';
									
				when Load_dir_B3 => IR_load <= '0';
									MAR_load <= '1';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "10";
									writee <= '0';
									
				when Load_dir_B4 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "00";
									writee <= '0';
									
				when Load_dir_B5 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '1';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "10";
									writee <= '0';
									
-----------------------------------------------------------------

				when Store_A1 => IR_load <= '0';
									MAR_load <= '1';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "01";
									writee <= '0';
									
				when Store_A2 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '1';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "00";
									writee <= '0';
									
				when Store_A3 => IR_load <= '0';
									MAR_load <= '1';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "10";
									writee <= '0';
									
				when Store_A4 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "01";
									Bus2_sel <= "00";
									writee <= '1';
									
				--
				when Store_B1 => IR_load <= '0';
									MAR_load <= '1';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "01";
									writee <= '0';
									
				when Store_B2 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '1';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "00";
									writee <= '0';
									
				when Store_B3 => IR_load <= '0';
									MAR_load <= '1';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "10";
									writee <= '0';
									
				when Store_B4 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "10";
									Bus2_sel <= "00";
									writee <= '1';
									
---------------------------------------------------------------------

				when Jmp1 => IR_load <= '0';
									MAR_load <= '1';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "01";
									writee <= '0';
									
				when Jmp2 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "00";
									writee <= '0';
									
				when Jmp3 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '1';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "10";
									writee <= '0';
									
-----------------------------------------------------------------------

				when Add_AB => IR_load <= '0';
										MAR_load <= '0';
										PC_load  <= '0';
										PC_inc   <= '0';
										A_load   <= '1';
										B_Load   <= '0';
										ALU_sel  <= "00000001";
										CCR_load <= '1';
										Bus1_sel <= "01";
										Bus2_sel <= "00";
										writee <= '0';
										
				--
				when Sub_AB => IR_load <= '0';
										MAR_load <= '0';
										PC_load  <= '0';
										PC_inc   <= '0';
										A_load   <= '1';
										B_Load   <= '0';
										ALU_sel  <= "01000001";
										CCR_load <= '1';
										Bus1_sel <= "01";
										Bus2_sel <= "00";
										writee <= '0';
										
				--
				when AandB => IR_load <= '0';
										MAR_load <= '0';
										PC_load  <= '0';
										PC_inc   <= '0';
										A_load   <= '1';
										B_Load   <= '0';
										ALU_sel  <= "00100000";
										CCR_load <= '1';
										Bus1_sel <= "01";
										Bus2_sel <= "00";
										writee <= '0';
				--
				when AorB => IR_load <= '0';
										MAR_load <= '0';
										PC_load  <= '0';
										PC_inc   <= '0';
										A_load   <= '1';
										B_Load   <= '0';
										ALU_sel  <= "00000010";
										CCR_load <= '1';
										Bus1_sel <= "01";
										Bus2_sel <= "00";
										writee <= '0';
										
				--
				when AxorB => IR_load <= '0';
										MAR_load <= '0';
										PC_load  <= '0';
										PC_inc   <= '0';
										A_load   <= '1';
										B_Load   <= '0';
										ALU_sel  <= "00000100";
										CCR_load <= '1';
										Bus1_sel <= "01";
										Bus2_sel <= "00";
										writee <= '0';
										
				--
				when nA => IR_load <= '0';
										MAR_load <= '0';
										PC_load  <= '0';
										PC_inc   <= '0';
										A_load   <= '1';
										B_Load   <= '0';
										ALU_sel  <= "00001000";
										CCR_load <= '1';
										Bus1_sel <= "01";
										Bus2_sel <= "00";
										writee <= '0';
										
				--
				when nB => IR_load <= '0';
										MAR_load <= '0';
										PC_load  <= '0';
										PC_inc   <= '0';
										A_load   <= '1';
										B_Load   <= '0';
										ALU_sel  <= "00010000";
										CCR_load <= '1';
										Bus1_sel <= "01";
										Bus2_sel <= "00";
										writee <= '0';
------------------------------------------------------------------

				when Jcc_n0 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '1';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "00";
									writee <= '0';
								
				
				when Jcc_n1 => IR_load <= '0';
									MAR_load <= '1';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "01";
									writee <= '0';
									
				when Jcc_n2 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "00";
									writee <= '0';	
									
				when Jcc_n3 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '1';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "10";
									writee <= '0';
									
---------------------------------------------------------------------------

				
				when Jcc_z0 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '1';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "00";
									writee <= '0';
								
				
				when Jcc_z1 => IR_load <= '0';
									MAR_load <= '1';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "01";
									writee <= '0';
									
				when Jcc_z2 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "00";
									writee <= '0';	
									
				when Jcc_z3 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '1';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "10";
									writee <= '0';
									
---------------------------------------------------------------------------			
				when Jcc_o0 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '1';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "00";
									writee <= '0';
								
				when Jcc_o1 => IR_load <= '0';
									MAR_load <= '1';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "01";
									writee <= '0';
									
				when Jcc_o2 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "00";
									writee <= '0';	
									
				when Jcc_o3 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '1';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "10";
									writee <= '0';
									
---------------------------------------------------------------------------			
				when Jcc_c0 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '1';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "00";
									writee <= '0';
								
				when Jcc_c1 => IR_load <= '0';
									MAR_load <= '1';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "01";
									writee <= '0';
									
				when Jcc_c2 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "00";
									writee <= '0';	
									
				when Jcc_c3 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '1';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "10";
									writee <= '0';

				--------------------------------------------------------					
					
				when Jcc_nn0 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '1';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "00";
									writee <= '0';
								
				
				when Jcc_nn1 => IR_load <= '0';
									MAR_load <= '1';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "01";
									writee <= '0';
									
				when Jcc_nn2 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "00";
									writee <= '0';	
									
				when Jcc_nn3 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '1';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "10";
									writee <= '0';
									
---------------------------------------------------------------------------

				
				when Jcc_nz0 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '1';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "00";
									writee <= '0';
								
				
				when Jcc_nz1 => IR_load <= '0';
									MAR_load <= '1';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "01";
									writee <= '0';
									
				when Jcc_nz2 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "00";
									writee <= '0';	
									
				when Jcc_nz3 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '1';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "10";
									writee <= '0';
									
---------------------------------------------------------------------------			
				when Jcc_no0 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '1';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "00";
									writee <= '0';
								
				when Jcc_no1 => IR_load <= '0';
									MAR_load <= '1';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "01";
									writee <= '0';
									
				when Jcc_no2 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "00";
									writee <= '0';	
									
				when Jcc_no3 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '1';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "10";
									writee <= '0';
									
---------------------------------------------------------------------------			
				when Jcc_nc0 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '1';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "00";
									writee <= '0';
								
				when Jcc_nc1 => IR_load <= '0';
									MAR_load <= '1';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "01";
									writee <= '0';
									
				when Jcc_nc2 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '0';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "00";
									writee <= '0';	
									
				when Jcc_nc3 => IR_load <= '0';
									MAR_load <= '0';
									PC_load  <= '0';
									PC_inc   <= '0';
									A_load   <= '1';
									B_Load   <= '0';
									ALU_sel  <= "00000000";
									CCR_load <= '0';
									Bus1_sel <= "00";
									Bus2_sel <= "10";
									writee <= '0';
	
------------------------------------------------------------------------------------------------------
		
				end case;									
			end process P3;
end arc;