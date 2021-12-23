require_relative './morse_dict'

def decode_char(char)
  @morse_code[char].upcase
end

def decode_word(word)
  chars = word.split.map { |char| decode_char(char) }
  chars.join
end

puts decode_word('-- -.--')
