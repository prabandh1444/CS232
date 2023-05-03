library IEEE;
use IEEE.std_logic_1164.all;

entity Testbench_enc is
end entity;

architecture tb of Testbench_enc is


    component encoder4x2 is
        port(I: in std_logic_vector (3 downto 0);
        Y: out std_logic_vector(1 downto 0));
    end component;
    
    signal I:std_logic_vector (3 downto 0);
    signal Y: std_logic_vector(1 downto 0);

begin
    dut_instance: encoder4x2
    port map(I=>I,Y=>Y);

    process

    begin

        I<="0001";

    wait for 1 fs;

        I<="0010";

    wait for 1 fs;

        I<="0100";

    wait for 1 fs;

        I<="1000";

    wait for 1 fs;
    end process;
end architecture;