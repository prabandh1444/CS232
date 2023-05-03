library IEEE;
use IEEE.std_logic_1164.all;

entity Testbench_RCA8 is
end entity;

architecture tb of Testbench_RCA8 is


    component RCA8 is
        port(a, b: in std_logic_vector(7 downto 0);
        sum: out std_logic_vector(7 downto 0);
        cout: out std_logic);
    end component;
    
        signal a, b: std_logic_vector(7 downto 0);
        signal sum: std_logic_vector(7 downto 0);
        signal cout: std_logic;

begin
    dut_instance: RCA8
    port map(a=>a,b=>b,sum=>sum,cout=>cout);

    process

    begin

        a<="01010011";
        b<="00110011";

    wait for 1 fs;

        a<="10110111";
        b<="00010111";

    wait for 1 fs;

    end process;
end architecture;