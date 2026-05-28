def caesar_cipher(str, shift)
  # Normalize the shift so values like 27, 52, etc. wrap correctly
  shift = shift % 26

  # Convert the string into an array of characters and transform each one
  str.chars.map do |char|

    # Check if the character is an uppercase letter (A–Z)
    if char =~ /[A-Z]/
      # Convert char to its ASCII number, shift it, wrap with modulo,
      # then convert back to a character
      (((char.ord - 'A'.ord + shift) % 26) + 'A'.ord).chr

    # Check if the character is a lowercase letter (a–z)
    elsif char =~ /[a-z]/
      # Same logic as above but using lowercase ASCII range
      (((char.ord - 'a'.ord + shift) % 26) + 'a'.ord).chr

    else
      # Non‑alphabetic characters (spaces, punctuation, numbers)
      # are returned unchanged
      char
    end

  end.join  # Reassemble the transformed characters back into a string
end

puts caesar_cipher("What a string!", 5)  # => "Bmfy f xywnsl!"
puts caesar_cipher("Hello World!", 13)  # => "Uryyb Jbeyq!"
puts caesar_cipher("xyz", 3)  # => "abc"
puts caesar_cipher("I am the Blackronesian", 7) # => "P ht aol Ihtjvuyvbpv"