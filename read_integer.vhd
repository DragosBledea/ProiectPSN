library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use work.my_types.all;


entity read_integer is
  Port ( 
  clk: in std_logic;
  sw: in switch;
  numar: out number);
end read_integer;

architecture a_read_integer of read_integer is

begin
    process(clk)
    variable y: array4digits;
    begin
    if clk= '1'and clk'event then
        for I in 0 to 3 loop 
			if sw(I)= '1' then 
	            if y(I)=9 then
	                y(I):=0; 
				else 
					y(I):=y(I)+1;
	            end if;
            end if; 
        end loop;  
	numar<=(y(0)+y(1)*10+y(2)*100+y(3)*1000);
    end if;
    end process;  
	

end a_read_integer;
