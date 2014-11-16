----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:47:34 11/01/2014 
-- Design Name: 
-- Module Name:    hallEffectCounter - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity hallEffectCounter is
    Port ( Sensor : in  STD_LOGIC;
           HallEffectCount : out  STD_LOGIC_VECTOR(31 downto 0));
end hallEffectCounter;
	
architecture Behavioral of hallEffectCounter is

signal count : std_logic_vector(31 downto 0) := "00000000000000000000000000000000"; 

begin

	countTime : process (Sensor) begin
		count <= count + 1; 
	end process; 
	
	HallEffectCount <= count; 

end Behavioral;