require_relative './morse_dict'

def decode_char(char)
  @morse_code[char]
end

def decode_word(word)
  chars = word.split.map { |char| decode_char(char) }
  chars.join
end

def decode(msg)
  new_msg = []
  split_msg = msg.split('   ')
  split_msg.each do |word|
    new_msg.push(decode_word(word))
  end
  new_msg.join(' ')
end

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...').upcase