library ieee;
use ieee.std_logic_1164.all;

entity CPU is 
port(clk, rst: in std_logic; 
	  from_mem: in std_logic_vector (7 downto 0);
	  writee: out std_logic;
	  to_mem, addr: out std_logic_vector(7 downto 0));
	 end entity;
	 

architecture arc of CPU is

component DATA_PATH is
	Port( CLK, RST										: in std_logic;
			A_Load, B_Load, CCR_Load 				: in std_logic;
			IR_Load, MAR_Load, PC_Load, PC_Inc	: in std_logic;
			ALU_Sel										: in std_logic_vector (7 downto 0);
			Bus1_Sel, Bus2_Sel 						: in std_logic_vector (1 downto 0);
			from_memory 								: in std_logic_vector (7 downto 0);			
			IR, address, to_memory					: out std_logic_vector(7 downto 0);
			CCR_Result 									: out std_logic_vector(3 downto 0));
end component;

component ME is
	port(clk,rst : IN std_logic;
			IR : IN std_logic_vector (7 downto 0);
			CCR_result : IN std_logic_vector(3 downto 0);
			IR_load,Mar_load,PC_inc,PC_load,A_load,B_load,CCR_load,writee : out std_logic;
			ALU_sel : OUT std_logic_vector(7 downto 0);
			BUS1_sel,Bus2_sel : OUT std_logic_vector(1 downto 0));
end component;


signal ir_loads: std_logic;
signal irs: std_logic_vector(7 downto 0);
signal mar_loads: std_logic;
signal pc_loads, pc_incs, a_loads, b_loads, ccr_loads: std_logic;
signal alu_selects: std_logic_vector(7 downto 0);
signal ccr_Results: std_logic_vector(3 downto 0);
signal bus1_Sels, bus2_Sels: std_logic_vector(1 downto 0);


begin
I0: DATA_PATH port map(clk,rst, a_loads, b_loads, ccr_loads, ir_loads, mar_loads, pc_loads, pc_incs, alu_selects,bus1_Sels,bus2_Sels,from_mem,irs,addr, to_mem, ccr_Results);
I1: ME port map(clk,rst,irs,ccr_Results,ir_loads,mar_loads,pc_incs,pc_loads,a_loads,b_loads,ccr_loads,writee,alu_selects,bus1_Sels,bus2_Sels);
end arc;