library IEEE;
use IEEE.std_logic_1164.all;

entity Testbench3 is
end entity;

architecture tb of Testbench3 is

    signal x1: std_logic;
    signal g: std_logic;

    component NOT_Gate is
        port(x: in std_logic;
    y: out std_logic);
    end component;
    
begin
    dut_instance: NOT_Gate
    port map(x=>x1 ,y=>g);

    process

    begin

    x1<='0';

    wait for 1 fs;

    x1<='1';

    wait for 1 fs;

    end process;
end architecture;
