def hexadecimal(hexadecimal_number)

  hex_letters = { 
    "a" => 10, 
    "b" => 11,
    "c" => 12,
    "d" => 13,
    "e" => 14,
    "f" => 15,
  } 

  decimal = 0

  hexadecimal_numbers = hexadecimal_number.split("")
  hexadecimal_numbers.reverse!
  hexadecimal_numbers.each_with_index do |digit, index|
    if hex_letters.include?(digit)
      decimal += hex_letters[digit] * (16 ** index)
    end
    decimal += digit.to_i * (16 ** index)
  end
  print decimal
  decimal
end

hexadecimal("fbc7e88a1a")
