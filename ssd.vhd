-------------------------------------------------------------------------------
--
-- Title       : ssd
-- Design      : My_Watering_System
-- Author      : Katy
-- Company     : apple
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\mywaternigsystem\My_Watering_System\src\ssd.vhd
-- Generated   : Fri Jul 12 21:34:42 2024
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
--{entity {ssd} architecture {ssd}}

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


--entity of Seven Segment LED
entity ssd is
  Port (
  show: IN std_logic;
  ssd: OUT std_logic_vector(6 DOWNTO 0)
   );
end ssd;

--architecture of Seven Segment LED architecture
architecture Behavioral of ssd is
    begin
            ssd<="1001000" WHEN show='1' ELSE "1111110";



end Behavioral;
