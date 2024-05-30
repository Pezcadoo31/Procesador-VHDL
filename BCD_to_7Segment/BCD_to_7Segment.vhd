library ieee;
use ieee.std_logic_1164.all;

entity BCD_to_7Segment is
    port(
        BCD : in std_logic_vector(5 downto 0);
        Segments : out std_logic_vector(13 downto 0)
    );
end BCD_to_7Segment;

architecture arc of BCD_to_7Segment is
begin
    process(BCD)
    begin
        case BCD is
            when "000000" => Segments <= "00000001000000"; -- 0
            when "000001" => Segments <= "00000001111001"; -- 1
            when "000010" => Segments <= "00000000100100"; -- 2
            when "000011" => Segments <= "00000000110000"; -- 3
            when "000100" => Segments <= "00000000011001"; -- 4
            when "000101" => Segments <= "00000000010010"; -- 5
            when "000110" => Segments <= "00000000000010"; -- 6
            when "000111" => Segments <= "00000001111000"; -- 7
            when "001000" => Segments <= "00000000000000"; -- 8
            when "001001" => Segments <= "00000000010000"; -- 9
				
            when "001010" => Segments <= "11110011000000"; -- A 	(10)
            when "001011" => Segments <= "11110011111001"; -- B 	(11)
            when "001100" => Segments <= "11110010100100"; -- C 	(12)
            when "001101" => Segments <= "11110010110000"; -- D 	(13)
            when "001110" => Segments <= "11110010011001"; -- E 	(14)
            when "001111" => Segments <= "11110010010010"; -- F 	(15)
				when "010000" => Segments <= "11110010000010"; -- 10	(16)
            when "010001" => Segments <= "11110011111000"; -- 11	(17)
            when "010010" => Segments <= "11110010000000"; -- 12	(18)
            when "010011" => Segments <= "11110010010000"; -- 13	(19)
				
            when "010100" => Segments <= "01001001000000"; -- 14	(20)
            when "010101" => Segments <= "01001001111001"; -- 15	(21)
            when "010110" => Segments <= "01001000100100"; -- 16	(22)
				when "010111" => Segments <= "01001000110000"; -- 17	(23)
            when "011000" => Segments <= "01001000011001"; -- 18	(24)
            when "011001" => Segments <= "01001000010010"; -- 19	(25)
            when "011010" => Segments <= "01001000000010"; -- 1A	(26)
            when "011011" => Segments <= "01001001111000"; -- 1B	(27)
            when "011100" => Segments <= "01001000000000"; -- 1C	(28)
            when "011101" => Segments <= "01001000010000"; -- 1D	(29)
				
				when "011110" => Segments <= "01100001000000"; -- 1E	(30)
            when "011111" => Segments <= "01100001111001"; -- 1F	(31)				
            when "100000" => Segments <= "01100000100100"; -- 20	(32)
				when "100001" => Segments <= "01100000110000"; -- 21	(33)
            when "100010" => Segments <= "01100000011001"; -- 22	(34)
            when "100011" => Segments <= "01100000010010"; -- 23	(35)
            when "100100" => Segments <= "01100000000010"; -- 24	(36)
            when "100101" => Segments <= "01100001111000"; -- 25	(37)
            when "100110" => Segments <= "01100000000000"; -- 26	(38)
            when "100111" => Segments <= "01100000010000"; -- 27	(39)
				
				when "101000" => Segments <= "00100101000000"; -- 28	(40)
				when "101001" => Segments <= "00100101111001"; -- 29	(41)
            when "101010" => Segments <= "00100100100100"; -- 2A	(42)
            when "101011" => Segments <= "00100100110000"; -- 2B	(43)
				when "101100" => Segments <= "00100100011001"; -- 2C	(44)
            when "101101" => Segments <= "00100100010010"; -- 2D	(45)
            when "101110" => Segments <= "00100100000010"; -- 2E	(46)
            when "101111" => Segments <= "00100101111000"; -- 2F	(47)				
            when "110000" => Segments <= "00100100000000"; -- 30	(48)
            when "110001" => Segments <= "00100100010000"; -- 31	(49)
				
				when "110010" => Segments <= "00100101000000"; -- 32	(50)
            when "110011" => Segments <= "00100101111001"; -- 33	(51)
            when "110100" => Segments <= "00100100100100"; -- 34	(52)
				when "110101" => Segments <= "00100100110000"; -- 35	(53)
            when "110110" => Segments <= "00100100011001"; -- 36	(54)
            when "110111" => Segments <= "00100100010010"; -- 37	(55)
            when "111000" => Segments <= "00100100000010"; -- 38	(56)
            when "111001" => Segments <= "00100101111000"; -- 39	(57)
            when "111010" => Segments <= "00100100000000"; -- 3A	(58)
            when "111011" => Segments <= "00100100010000"; -- 3B	(59)
				
				when "111100" => Segments <= "00000101000000"; -- 3C	(60)
				
            when others => Segments <= "11111111111111"; -- Default (all off)
        end case;
    end process;
end arc;
