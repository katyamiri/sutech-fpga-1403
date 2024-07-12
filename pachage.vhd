-------------------------------------------------------------------------------
--
-- Title       : pachage
-- Design      : My_Watering_System
-- Author      : Katy
-- Company     : apple
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\mywaternigsystem\My_Watering_System\src\pachage.vhd
-- Generated   : Fri Jul 12 21:36:02 2024
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {pachage} architecture {pachage}}
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

PACKAGE My_Watering_System_package IS
	Type state_string is (ST0, ST1);
	FUNCTION all_circuit (Signal m_i : std_logic_vector( 2 downto 0); SIGNAL l_i, t_i : std_logic; SIGNAL present_state: state_string) RETURN state_string;
	FUNCTION ssd_behavior (SIGNAL show : std_logic) RETURN std_logic_vector;
END PACKAGE;

PACKAGE BODY My_Watering_System_package IS
    
    FUNCTION all_circuit (Signal m_i : std_logic_vector( 2 downto 0); SIGNAL l_i, t_i : std_logic; SIGNAL present_state: state_string) RETURN state_string is
    begin
    case present_state is
                    when ST0=>
                             IF(t_i='1' or l_i='1') and (m_i<="001") then
                                    return ST1;
                             ELSIF (t_i = '0' and l_i = '0') and (m_i <= "011") then
                                    return ST1; 
                             ELSE
                                    return ST0;
                             END IF;
                             
                    when ST1 =>
                            IF (m_i >= "111") then
                                 return ST0; 
                            ELSIF (t_i = '0' or l_i = '0') and (m_i >= "011") then
                                 return ST0;
                            ELSE 
                                return ST1;
                            END IF;
                   when OTHERS=>
                                return ST1;
                   end case;
            end FUNCTION;
            
            FUNCTION ssd_behavior (SIGNAL show : std_logic) RETURN std_logic_vector is
                begin
                       IF show='1' then
                                return "1001000";
                       ELSE
                                return "1111110";
                                                        
                        end IF;
               end FUNCTION;                                              
                                    
    
end My_Watering_System_package;