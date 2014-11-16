----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:52:37 11/15/2014 
-- Design Name: 
-- Module Name:    RateTracker - Behavioral 
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


entity RateTracker is
    Port ( Sensor : in  STD_LOGIC;
			  CLK : in STD_LOGIC;
           Rate : out  STD_LOGIC_VECTOR(31 downto 0));
end RateTracker;

architecture Behavioral of RateTracker is

component timing is
    Port ( CLK : in  STD_LOGIC;
           timer : out  STD_LOGIC);
end component;

signal tempCount : std_logic_vector(31 downto 0) := (others => '0'); 
signal timer : std_logic := '0';

begin

t1 : timing port map(CLK => CLK,
							timer => timer); 

counter : process(Sensor, timer) begin
	if(timer = '0') then 
		if(rising_edge(Sensor)) then
			tempCount <= tempCount + 1;
		end if; 
	else
		Rate <= tempCount; 
		tempCount <= (others => '0'); 
	end if; 
end process; 

	
end Behavioral;

