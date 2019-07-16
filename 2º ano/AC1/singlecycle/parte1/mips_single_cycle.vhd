library ieee;
use ieee.std_logic_1164.all;

library work;
use work.MIPS_pkg.all;
use work.DisplayUnit_pkg.all; 

entity mips_single_cycle is
	port(CLOCK_50 : in std_logic;
	     SW       : in std_logic_vector(7 downto 0);
		  KEY      : in std_logic_vector(3 downto 0);
		  HEX0     : out std_logic_vector(6 downto 0);
		  HEX1     : out std_logic_vector(6 downto 0);
		  HEX2     : out std_logic_vector(6 downto 0);
		  HEX3     : out std_logic_vector(6 downto 0);
		  HEX4     : out std_logic_vector(6 downto 0);
		  HEX5     : out std_logic_vector(6 downto 0);
		  HEX6     : out std_logic_vector(6 downto 0);
		  HEX7     : out std_logic_vector(6 downto 0);
		  LEDR     : out std_logic_vector(2 downto 0));

end mips_single_cycle;

architecture Structural of mips_single_cycle is
	signal s_clk, s_regDst, s_branch, s_memRead, s_zero, s_jump : std_logic;
	signal s_memWrite, s_memToReg, s_ALUsrc, s_regWrite : std_logic;
	signal s_ALUop : std_logic_vector(1 downto 0);
	signal s_offset32, s_readData, s_pc : std_logic_vector(31 downto 0);
	signal s_jAddr26 : std_logic_vector(25 downto 0);
	signal s_imm : std_logic_vector(15 downto 0);
	signal s_funct, s_opcode : std_logic_vector(5 downto 0);
	signal s_Rdata1, s_Rdata2, s_m2Out : std_logic_vector(31 downto 0);
	signal s_m1Out, s_rt, s_rd, s_rs: std_logic_vector(4 downto 0);
	signal s_ALUControl : std_logic_vector(2 downto 0);
	signal s_ALUout, s_m3out, s_DMemoryOut : std_logic_vector(31 downto 0);
	
begin
	pcupdt: entity work.PCupdate(Behavioral)
		port map(clock => s_clk,
				   reset => not KEY(1),
					zero => s_zero,
					branch => s_branch,
					jump => s_jump,
					offset32 => s_offset32,
					jAddr26 => s_jAddr26,
					PC => s_pc);
					
		DU_PC <= s_pc;
					
		
	instmem: entity work.InstructionMemory(Behavioral)
		generic map(ADDR_BUS_SIZE => ROM_ADDR_SIZE)
		
		port map(address => s_pc(7 downto 2),
					readData => s_readData);
					
	
	splitter: entity work.InstrSplitter(Behavioral)
		port map(instruction => s_readData,
					imm => s_imm,
					jAddr => s_jAddr26,
					opcode => s_opcode,
					rs => s_rs,
					rt => s_rt,
					rd => s_rd,
				-- shamt => ,
				   funct => s_funct);
			
					
 
	sign_extend: entity work.SignExtend(Behavioral)
		port map(dataIn => s_imm,
					dataOut => s_offset32);
	
	-- Debouncer
	debnc: entity work.DebounceUnit(Behavioral)
		generic map(mSecMinInWidth => 100,
					inPolarity => '0',
					outPolarity => '1')
					
		port map(refClk => CLOCK_50,
					dirtyIn => KEY(0),
					pulsedOut => s_clk);
			
	-- Display module
	displ: entity work.DisplayUnit(Behavioral)
		generic map(dataPathType => SINGLE_CYCLE_DP,
						IM_ADDR_SIZE => ROM_ADDR_SIZE,
						DM_ADDR_SIZE => RAM_ADDR_SIZE)
							
		port map(RefClk => CLOCK_50,
					InputSel => SW(1 downto 0),
					DispMode => SW(2),
					NextAddr => KEY(3),
					Dir => KEY(2),
					disp0 => HEX0,
					disp1 => HEX1,
					disp2 => HEX2,
					disp3 => HEX3,
					disp4 => HEX4,
					disp5 => HEX5,
					disp6 => HEX6,
					disp7 => HEX7);
				
	-- aula 9	
					
	aluControl: entity work.ALUControlUnit(Behavioral)
			port map(funct => s_funct,
						ALUop => SW(4 downto 3),
						ALUControl => s_ALUControl);
						
	ALU: entity work.ALU32(Behavioral)
			port map(op => s_ALUControl,
						op0 => s_Rdata1,
						op1 => s_m2Out,
						res => s_ALUout,
						zero => s_zero);
						
				DU_DMdata <= s_ALUout;
						
		LEDR(2 downto 0) <= s_ALUControl;
						
	M1: entity work.Mux2N(Behavioral) --mux
			generic map(N_BITS => 5)
			port map(sel => SW(6),
						input0 => s_rt,
						input1 => s_rd,
						muxOut => s_m1Out);
						
	M2: entity work.Mux2N(Behavioral) --mux
			generic map(N_BITS => 32)
			port map(sel => SW(5),
						input0 => s_Rdata2,
						input1 => s_offset32,
						muxOut => s_m2Out);
						
	regFile: entity work.RegFile(Structural)
			port map(clk => s_clk,
						writeEnable => SW(7),
						writeReg => s_m1Out,
						writeData => s_m3out,
						readReg1 => s_rs,
						readReg2 => s_rt,
						readData1 => s_Rdata1,
						readData2 => s_Rdata2);	
						 
			  --DU_FRaddr <= ;
			  
			
	-- aula 10
	
	DMemory : entity work.DataMemory(Behavioral)
				generic map(ADDR_BUS_SIZE => 6,
								DATA_BUS_SIZE => 32)
				port map(clk => CLOCK_50,
							readEn => s_memRead,
							writeEn => s_memWrite,
							address => s_ALUout(7 downto 2),
							writeData => s_Rdata2,
							readData => s_DMemoryOut);
							
	controlUnit : entity work.ControlUnit(Behavioral)
					port map(Opcode => s_opcode,
								RegDst => s_regDst,
								Branch => s_branch,
								MemRead => s_memRead,
								MemWrite => s_memWrite,
								MemToReg => s_memToReg,
								ALUsrc => s_ALUsrc,
								RegWrite => s_regWrite,
								Jump => s_jump,
								ALUop => s_ALUop);
								
	M3 : entity work.Mux2N(Behavioral) -- mux *
					generic map(N_BITS => 32)
					port map(sel => s_memToReg,
							   input0 => s_DMemoryOut,
								input1 => s_ALUout,
								muxOut => s_m3out);
	
end Structural;