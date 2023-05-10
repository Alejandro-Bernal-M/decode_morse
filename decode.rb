class MorseCode
  @morse = { 'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.',
             'F' => '..-.', 'G' => '--.', 'H' => '....', 'I' => '..', 'J' => '.---', 'K' => '-.-',
             'L' => '.-..', 'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.', 'Q' => '--.-',
             'R' => '.-.', 'S' => '...', 'T' => '-', 'U' => '..-', 'V' => '...-', 'W' => '.--',
             'X' => '-..-', 'Y' => '-.--', 'Z' => '--..' }

  def self.decode_char(char)
    return ' ' if char == ' '

    @morse.key(char)
  end

  def self.decode_word(word)
    word.split.map { |char| decode_char(char) }.join
  end
end

puts(MorseCode.decode_char('--'))
puts(MorseCode.decode_word('-- -.--'))
