----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:24:38 11/15/2014 
-- Design Name: 
-- Module Name:    timer - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity timing is
    Port ( CLK : in  STD_LOGIC;
           timer : out  STD_LOGIC);
end timing;

architecture Behavioral of timing is

signal tempTime : STD_LOGIC_VECTOR(3 downto 0) := "0000"; 

begin

countTime : process (CLK, tempTime) begin 
	if(rising_edge(CLK)) then 
		if(tempTime = "1010") then 
			timer <= '1'; 
			tempTime <= "0000";        			
		else 
			timer <= '0';
			tempTime <= tempTime + 1; 		 
		end if; 
	end if; 
end process;

end Behavioral;

