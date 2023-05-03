library IEEE;
use IEEE.std_logic_1164.all;

entity Testbench_mux is
end entity;

architecture tb of Testbench_mux is

    signal D0:std_logic_vector (3 downto 0);
    signal SEL: std_logic(1 downto 0);
    signal g: std_logic;

    component mux4x2 is
        port(D: in std_logic_vector (3 downto 0);
        S: in std_logic_vector(1 downto 0);
        Y: out std_logic);
    end component;
    
begin
    dut_instance: OR_Gate
    port map(D=>D0 ,S=>SEL ,Y=>g);

    process

    begin

    x1<='0';
    x2<='0' ;

    wait for 1 fs;

    x1<='0';
    x2<='1' ;

    wait for 1 fs;

    x1<='1';
    x2<='0' ;

    wait for 1 fs;

    x1<='1';
    x2<='1' ;

    wait for 1 fs;
    end process;
end architecture;