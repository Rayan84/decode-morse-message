def decode_char(code)
  return code.split(' ').map { |char| MORSE_CODE[char]}
end 


decode_char("-- -.--   -. .- -- .")