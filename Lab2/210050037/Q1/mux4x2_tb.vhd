library IEEE;
use IEEE.std_logic_1164.all;

entity Testbench_mux is
end entity;


architecture tb of Testbench_mux is

    signal det: std_logic_vector(3 downto 0);
    signal set: std_logic_vector(1 downto 0);
    signal y: std_logic;

    component mux4x2 is
    port(D: in std_logic_vector (3 downto 0);
    S: in std_logic_vector(1 downto 0);
    Y: out std_logic);
    end component;

begin

    dut_instance: mux4x2
    port map(D => det, S => set, Y => y);
        
    process
    begin

        det <= "0000";
        set <= "00";

        wait for 1 fs;

        det <= "0000";
        set <= "01";

        wait for 1 fs;

        det <= "0000";
        set <= "10";

        wait for 1 fs;

        det <= "0000";
        set <= "11";

        wait for 1 fs;

        det <= "0001";
        set <= "00";

        wait for 1 fs;

        det <= "0001";
        set <= "01";

        wait for 1 fs;

        det <= "0001";
        set <= "10";

        wait for 1 fs;

        det <= "0001";
        set <= "11";

        wait for 1 fs;

        det <= "0010";
        set <= "00";

        wait for 1 fs;

        det <= "0010";
        set <= "01";

        wait for 1 fs;

        det <= "0010";
        set <= "10";

        wait for 1 fs;

        det <= "0010";
        set <= "11";

        wait for 1 fs;

        det <= "0100";
        set <= "00";

        wait for 1 fs;

        det <= "0100";
        set <= "01";

        wait for 1 fs;

        det <= "0100";
        set <= "10";

        wait for 1 fs;

        det <= "0100";
        set <= "11";

        wait for 1 fs;
        
        det <= "1000";
        set <= "00";

        wait for 1 fs;

        det <= "1000";
        set <= "01";

        wait for 1 fs;

        det <= "1000";
        set <= "10";

        wait for 1 fs;

        det <= "1000";
        set <= "11";

        wait for 1 fs;

        det <= "0111";
        set <= "00";

        wait for 1 fs;

        det <= "0111";
        set <= "01";

        wait for 1 fs;

        det <= "0111";
        set <= "10";

        wait for 1 fs;

        det <= "0111";
        set <= "11";

        wait for 1 fs;

        det <= "1011";
        set <= "00";

        wait for 1 fs;

        det <= "1011";
        set <= "01";

        wait for 1 fs;

        det <= "1011";
        set <= "10";

        wait for 1 fs;

        det <= "1011";
        set <= "11";

        wait for 1 fs;

        det <= "1101";
        set <= "00";

        wait for 1 fs;

        det <= "1101";
        set <= "01";

        wait for 1 fs;

        det <= "1101";
        set <= "10";

        wait for 1 fs;

        det <= "1101";
        set <= "11";

        wait for 1 fs;

        det <= "1110";
        set <= "00";

        wait for 1 fs;

        det <= "1110";
        set <= "01";

        wait for 1 fs;

        det <= "1110";
        set <= "10";

        wait for 1 fs;

        det <= "1110";
        set <= "11";

        wait for 1 fs;

        det <= "1111";
        set <= "00";

        wait for 1 fs;

        det <= "1111";
        set <= "01";

        wait for 1 fs;

        det <= "1111";
        set <= "10";

        wait for 1 fs;

        det <= "1111";
        set <= "11";

        wait for 1 fs;

        det <= "1100";
        set <= "00";

        wait for 1 fs;

        det <= "1100";
        set <= "01";

        wait for 1 fs;

        det <= "1100";
        set <= "10";

        wait for 1 fs;

        det <= "1100";
        set <= "11";

        wait for 1 fs;

        det <= "0011";
        set <= "00";

        wait for 1 fs;

        det <= "0011";
        set <= "01";

        wait for 1 fs;

        det <= "0011";
        set <= "10";

        wait for 1 fs;

        det <= "0011";
        set <= "11";

        wait for 1 fs;

        det <= "1010";
        set <= "00";

        wait for 1 fs;

        det <= "1010";
        set <= "01";

        wait for 1 fs;

        det <= "1010";
        set <= "10";

        wait for 1 fs;

        det <= "1010";
        set <= "11";

        wait for 1 fs;

        det <= "1001";
        set <= "00";

        wait for 1 fs;

        det <= "1001";
        set <= "01";

        wait for 1 fs;

        det <= "1001";
        set <= "10";

        wait for 1 fs;

        det <= "1001";
        set <= "11";

        wait for 1 fs;

        det <= "0110";
        set <= "00";

        wait for 1 fs;

        det <= "0110";
        set <= "01";

        wait for 1 fs;

        det <= "0110";
        set <= "10";

        wait for 1 fs;

        det <= "0110";
        set <= "11";

        wait for 1 fs;

        det <= "0101";
        set <= "00";

        wait for 1 fs;

        det <= "0101";
        set <= "01";

        wait for 1 fs;

        det <= "0101";
        set <= "10";

        wait for 1 fs;

        det <= "0101";
        set <= "11";

        wait for 1 fs;

    end process;

end architecture;
