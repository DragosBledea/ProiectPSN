----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/21/2020 04:09:36 PM
-- Design Name: 
-- Module Name: and_gate - Behavioral
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
use IEEE.STD_LOGIC_1164.all;

package	my_types is   
	subtype	digit is integer range 0 to 10;
	type array4digits is array (3 downto 0) of digit;
	subtype BCD is std_logic_vector (6 downto 0);
	type array4BCD is array (3 downto 0) of BCD;
	
end package;


