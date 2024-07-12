library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity my_watering_system_TestBench is
end my_watering_system_TestBench;

architecture TB_ARCHITECTURE of my_watering_system_TestBench is
	-- Component declaration of the tested unit
	component my_watering_system
	port(
		clock : in STD_LOGIC;
		reset : in STD_LOGIC;
		t_i : in STD_LOGIC;
		l_i : in STD_LOGIC;
		m_i : in STD_LOGIC_VECTOR(2 downto 0);
		ssd_O : out STD_LOGIC_VECTOR;
		t_o : out STD_LOGIC;
		l_o : out STD_LOGIC;
		m_o : out STD_LOGIC_VECTOR(2 downto 0);
		water : out STD_LOGIC );
	end component;

	 Signal t_i: std_logic:='0';
     Signal l_i:std_logic:='0';
     Signal clock:std_logic:='0';
     Signal reset:std_logic:='0';
     Signal m_i:std_logic_vector(2 downto 0):="000";
     Signal water: std_logic:='0';
     Signal ssd_O:std_logic_vector(6 downto 0):="0000000";
     Signal t_o:std_logic:='0';
     Signal m_o:std_logic_vector(2 downto 0);
     Signal l_o:std_logic:='0';

	-- Add your code here ...
 begin
 testbench:My_Watering_System Port map(
    t_i=>t_i,
    l_i=>l_i,
    clock=>clock,
    reset=>reset,
    m_i=>m_i,
    water=>water,
    t_o=>t_o,
    m_o=>m_o,
    l_o=>l_o,
    ssd_O=>ssd_O);
process
begin
    clock<='0';
    wait for 5 ns;
    clock<='1';
    wait for 5 ns;
end process;
    
    process
    begin
            
            wait until falling_edge(clock);
            t_i<='0';
            l_i<='0';
            m_i<="000";
            
            wait until falling_edge(clock);
            t_i<='1';
            l_i<='0';
            m_i<="000";
          
            wait until falling_edge(clock);
            t_i<='0';
            l_i<='1';
            m_i<="000";
            
            wait until falling_edge(clock);
            t_i<='1';
            l_i<='1';
            m_i<="000";
            
            wait until falling_edge(clock);
            t_i<='0';
            l_i<='0';
            m_i<="001";
            
            wait until falling_edge(clock);
            t_i<='0';
            l_i<='1';
            m_i<="001";
            
            wait until falling_edge(clock);
            t_i<='1';
            l_i<='1';
            m_i<="001";
            
            wait until falling_edge(clock);
            t_i<='0';
            l_i<='0';
            m_i<="010";
            
            wait until falling_edge(clock);
            t_i<='0';
            l_i<='1';
            m_i<="010";
            
            wait until falling_edge(clock);
            t_i<='1';
            l_i<='0';
            m_i<="010";
            
            wait until falling_edge(clock);
            t_i<='1';
            l_i<='1';
            m_i<="010";
            
            wait until falling_edge(clock);
            t_i<='0';
            l_i<='0';
            m_i<="011";
            
            wait until falling_edge(clock);
            t_i<='0';
            l_i<='1';
            m_i<="011";
            
            wait until falling_edge(clock);
            t_i<='1';
            l_i<='0';
            m_i<="011";
            
            wait until falling_edge(clock);
            t_i<='1';
            l_i<='1';
            m_i<="011";
            
            wait until falling_edge(clock);
            t_i<='0';
            l_i<='0';
            m_i<="100";
            
            wait until falling_edge(clock);
            t_i<='0';
            l_i<='1';
            m_i<="100";
            
            wait until falling_edge(clock);
            t_i<='1';
            l_i<='0';
            m_i<="100";
            
            wait until falling_edge(clock);
            t_i<='1';
            l_i<='1';
            m_i<="100";
            
            wait until falling_edge(clock);
            t_i<='0';
            l_i<='0';
            m_i<="101";
            
            wait until falling_edge(clock);
            t_i<='0';
            l_i<='1';
            m_i<="101";
            
            wait until falling_edge(clock);
            t_i<='1';
            l_i<='0';
            m_i<="101";
            
            wait until falling_edge(clock);
            t_i<='1';
            l_i<='1';
            m_i<="101";
            
            wait until falling_edge(clock);
            t_i<='0';
            l_i<='0';
            m_i<="110";
            
            wait until falling_edge(clock);
            t_i<='0';
            l_i<='1';
            m_i<="110";
            
            wait until falling_edge(clock);
            t_i<='1';
            l_i<='0';
            m_i<="110";
            
            wait until falling_edge(clock);
            t_i<='1';
            l_i<='1';
            m_i<="110";
            
            wait until falling_edge(clock);
            t_i<='0';
            l_i<='0';
            m_i<="111";
            
            wait until falling_edge(clock);
            t_i<='0';
            l_i<='1';
            m_i<="111";
            
            wait until falling_edge(clock);
            t_i<='1';
            l_i<='0';
            m_i<="111";
            
            wait until falling_edge(clock);
            t_i<='1';
            l_i<='1';
            m_i<="111";
           
            
            wait until falling_edge(clock);
      end process;      
                             
end TB_ARCHITECTURE;

