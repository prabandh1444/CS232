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
    signal last_input:std_logic_vector(7 downto 0);
    variable local_count : integer 0 to 255:= 0;
    subtype elements is std_logic_vector(7 downto 0);
    type memory is array (0 to 5) of elements;
    signal arr : memory;
    variable terminal : integer 0 to 255:= 0;

begin
    process(clk,rst)
    begin 
     if(rst='1') then 
            last_input <= '00000000';
            local_count := 0;
     elsif(rising_edge(clk)) then
            if( a = "11111111") then
                if(terminal /= 0) then
                data_valid <= "1";
                z<=arr(0);
                for i in 0 to terminal-2 loop
                    arr(i) <= arr(i+1);
                end loop;
                terminal := terminal - 1;
                end if;
            elsif(last_input = a) then
                local_count <= local_count + 1;
                data_valid <= "0";
                if(terminal /= 0) then
                data_valid <= "1";
                z<=arr(0);
                for i in 0 to terminal-2 loop
                    arr(i) <= arr(i+1);
                end loop;
                terminal := terminal - 1;
                end if;
            elsif(last_input = "00011011") then
                data_valid <='1';
                arr(terminal) <= "00011011";
                arr(terminal+1) <= "00000001";
                arr(terminal+2) <= "00011011";
                terminal := terminal + 2;
                z<=arr(0);
                for i in 0 to terminal-2 loop
                    arr(i) <= arr(i+1);
                end loop;
                 terminal := terminal - 1;
            else
                data_valid <= '1';
                arr(terminal) <= "00011011";
                arr(terminal+1) <= std_logic_vector(to_unsigned(abs(local_count),8));
                arr(terminal+2) <= last_input;
                terminal := terminal + 3;
                z<=arr(0);
                local_count :=1;
                for i in 0 to terminal-2 loop
                    arr(i) <= arr(i+1);
                end loop;
                 terminal := terminal - 1;
            end if;                           
    end if;      
 end process;
end architecture;

