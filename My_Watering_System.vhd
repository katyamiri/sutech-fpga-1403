-------------------------------------------------------------------------------
--
-- Title       : My_Watering_System
-- Design      : My_Watering_System
-- Author      : Katy
-- Company     : apple
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\mywaternigsystem\My_Watering_System\src\My_Watering_System.vhd
-- Generated   : Fri Jul 12 21:33:04 2024
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--here we imports
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--the entity that we want
entity My_Watering_System is
  Port (
        clock,reset,t_i,l_i: IN std_logic;
        m_i:IN std_logic_vector(2 DOWNTO 0);
        ssd_O: OUT std_logic_vector;
        t_o,l_o: OUT std_logic;
        m_o:OUT std_logic_vector(2 DOWNTO 0);
        water:OUT std_logic
   );
end My_Watering_System;

--the architechture of entity
architecture My_watering_system_architechture OF My_Watering_System IS

    COMPONENT ssd
                PORT(
                    show:IN std_logic;
                    ssd:OUT std_logic_vector(6 DOWNTO 0)
                );
    END COMPONENT;        
    Type state_string is(ST0,ST1);
    ATTRIBUTE enum_encoding:string;
    ATTRIBUTE enum_encoding OF state_string:type is"00 01";
    Signal present_state,next_state:state_string;    
    BEGIN
    --ssd_device : ssd PORT MAP (ssd => water, ssd => ssd_O);
    sequential_process:PROCESS(clock,reset,next_state)
            BEGIN
                IF (reset = '1') THEN
                     present_state <= ST0;
                ELSIF (clock'EVENT and clock = '1') THEN
                     present_state <= next_state;
                END IF;
    END PROCESS sequential_process;
    
    all_process : PROCESS (m_i, l_i, t_i , present_state)
            BEGIN
                  			CASE present_state IS
				WHEN ST0 =>
					IF (t_i = '1' or l_i = '1') and (m_i <= "001") THEN
						 next_state <= ST1; 
					ELSIF (t_i = '0' and l_i = '0') and (m_i <= "011") THEN
						 next_state <= ST1; 
					ELSE 
						next_state <= ST0;
					END IF;

				WHEN ST1 =>
					IF (m_i >= "111") THEN
						 next_state <= ST0; 
					ELSIF (t_i = '1' or l_i = '1') and (m_i >= "011") THEN
						 next_state <= ST0;
					ELSE 
						next_state <= ST1;
					END IF;
				WHEN OTHERS =>
					next_state <= ST1;
			END CASE;
			END PROCESS all_process;
	

	m_o <= m_i;
	t_o <= t_i;
	l_o <= l_i;
        output_process : PROCESS(present_state)
		  BEGIN
                if present_state = ST1 then
                    water <= '1';
                else
                    water <= '0';
                end if;
		END PROCESS output_process;	
    end My_watering_system_architechture;

