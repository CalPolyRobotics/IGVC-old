--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:49:44 11/15/2014
-- Design Name:   
-- Module Name:   C:/Users/Sonia/Documents/IGVC/rateTracker/testRateTracker.vhd
-- Project Name:  rateTracker
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RateTracker
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testRateTracker IS
END testRateTracker;
 
ARCHITECTURE behavior OF testRateTracker IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RateTracker
    PORT(
         Sensor : IN  std_logic;
         CLK : IN  std_logic;
         Rate : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Sensor : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal Rate : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RateTracker PORT MAP (
          Sensor => Sensor,
          CLK => CLK,
          Rate => Rate
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 

		 -- insert stimulus here 
		Sensor <= '1';
		wait for 5 ns; 
		
		Sensor <= '0';
		wait for 5 ns; 

		Sensor <= '1';
		wait for 5 ns; 
		
		Sensor <= '0';
		wait for 5 ns; 
		
		Sensor <= '1';
		wait for 5 ns; 
		
		Sensor <= '0';
		wait for 5 ns; 
		
		Sensor <= '1';
		wait for 5 ns; 
		
		Sensor <= '0';
		wait for 5 ns; 
		
	   Sensor <= '1';
		wait for 5 ns; 
		
		Sensor <= '0';
		wait for 5 ns; 

		Sensor <= '1';
		wait for 5 ns; 
		
		Sensor <= '0';
		wait for 5 ns; 
		
		Sensor <= '1';
		wait for 5 ns; 
		
		Sensor <= '0';
		wait for 5 ns; 
		
		Sensor <= '1';
		wait for 5 ns; 
		
		Sensor <= '0';
		wait for 5 ns;
		
      wait;
   end process;

END;
