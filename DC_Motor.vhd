----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Nabil Hesham Hassan
-- 
-- Create Date: 12/21/2022 04:42:27 PM
-- Design Name: 
-- Module Name: DC_Motor - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DC_Motor is
    Port (clk : in STD_LOGIC ;Enable, three , four : out STD_LOGIC);
end DC_Motor;

architecture Behavioral of DC_Motor is
signal clk_counter : natural range 0 to 1000000 := 0;
--signal counter: integer range 0 to 3:=0;
--signal counter2: integer range 0 to 3:=3;
signal E : STD_LOGIC:= '0';
--signal ccw: STD_LOGIC:= '1';
begin
process(clk)
begin 
    if(clk'event and clk = '1') then clk_counter <= clk_counter +1;
        if(clk_counter <= 600000) then E<= '1' ; three <='1' ; four <= '0';
        elsif (clk_counter> 600000 and clk_counter< 1000000) then E<='0';three <='0' ; four <= '0';
        end if;
    end if;
end process;
    Enable <=E;
end Behavioral;
