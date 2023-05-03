library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
library ieee, std;
use ieee.std_logic_1164.all;
use ieee.std_logic_textio.all;
use std.textio.all;


entity RLE_Encoder is
    port(clk, rst: in std_logic;
    a: in std_logic_vector(7 downto 0);
    data_valid: out std_logic;
    z: out std_logic_vector(7 downto 0));
end entity;

architecture behaviour of RLE_Encoder is
    signal last_input:std_logic_vector(7 downto 0):="00000000";
    signal esc:std_logic_vector(7 downto 0):="00011011";
begin
    process(clk)
    file output_file: text open write_mode is "out.txt";
    variable input_line, output_line: line;	
    variable local_count : integer :=0;
    begin 
    if rising_edge(clk) then
            if(last_input = "00000000") then
            local_count := 1;
            last_input <=a;
            elsif(last_input = a ) then
                    local_count := local_count + 1;
                    if(local_count = 16) then
                        write (output_line,esc);
			           writeline (output_file, output_line);
				   write (output_line,std_logic_vector(to_unsigned(15,8)));
			       writeline (output_file, output_line);
                   write (output_line, a);
			       writeline (output_file, output_line);
                    last_input<=a;
                    local_count := 1;
                    else
                        last_input<= a;
            
                        end if;

            elsif(last_input = "00011011" and last_input /= a) then
                if(local_count = 1) then
                    write (output_line,esc);
			       writeline (output_file, output_line);
				   write (output_line,std_logic_vector(to_unsigned(1,8)));
			       writeline (output_file, output_line);
                   write (output_line, esc);
			       writeline (output_file, output_line);
                else 
                write (output_line,esc);
                writeline (output_file, output_line);
                write (output_line,std_logic_vector(to_unsigned(local_count,8)));
                writeline (output_file, output_line);
                write (output_line, esc);
                writeline (output_file, output_line);
                end if;
                    last_input<=a;
                    local_count:=1;
            elsif(last_input /= a ) then
                if(local_count /= 1) then
                    report("0");
                    write (output_line,esc);
			       writeline (output_file, output_line);
				   write (output_line,std_logic_vector(to_unsigned(local_count,8)));
			       writeline (output_file, output_line);
                   write (output_line, last_input);
			       writeline (output_file, output_line);
                else
                    write (output_line, last_input);
                    writeline (output_file, output_line);
                end if;
                last_input <=a;
                local_count:=1;
            end if;                           
    end if;      
 end process;
end architecture;

