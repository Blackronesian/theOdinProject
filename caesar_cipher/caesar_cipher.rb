def caesar_cipher(str, shift)
  shift = shift % 26

  str.chars.map do |char|
    if char =~ /[A-Z]/
      # Uppercase A–Z
      (((char.ord - 'A'.ord + shift) % 26) + 'A'.ord).chr
    elsif char =~ /[a-z]/
      # Lowercase a–z
      (((char.ord - 'a'.ord + shift) % 26) + 'a'.ord).chr
    else
      # Non-letters stay the same
      char
    end
  end.join
end
