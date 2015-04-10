number = "6011797668867828"  # => "6011797668867828"

number_into_integer = number.reverse.chars.map {|num| num.to_i}  # => [8, 2, 8, 7, 6, 8, 8, 6, 6, 7, 9, 7, 1, 1, 0, 6]

double_every_other_number = number_into_integer.map.with_index do |num, index|  # => #<Enumerator: [8, 2, 8, 7, 6, 8, 8, 6, 6, 7, 9, 7, 1, 1, 0, 6]:map>
    if index.odd?                                                               # => false, true, false, true, false, true, false, true, false, true, false, true, false, true, false, true
      num * 2                                                                   # => 4, 14, 16, 12, 14, 14, 2, 12
    else
      num                                                                       # => 8, 8, 6, 8, 6, 9, 1, 0
    end                                                                         # => 8, 4, 8, 14, 6, 16, 8, 12, 6, 14, 9, 14, 1, 2, 0, 12
  end                                                                           # => [8, 4, 8, 14, 6, 16, 8, 12, 6, 14, 9, 14, 1, 2, 0, 12]

sum_double_digits = double_every_other_number.map do |num|  # => [8, 4, 8, 14, 6, 16, 8, 12, 6, 14, 9, 14, 1, 2, 0, 12]
  if num > 9                                                # => false, false, false, true, false, true, false, true, false, true, false, true, false, false, false, true
    num -= 9                                                # => 5, 7, 3, 5, 5, 3
  else
    num                                                     # => 8, 4, 8, 6, 8, 6, 9, 1, 2, 0
  end                                                       # => 8, 4, 8, 5, 6, 7, 8, 3, 6, 5, 9, 5, 1, 2, 0, 3
end                                                         # => [8, 4, 8, 5, 6, 7, 8, 3, 6, 5, 9, 5, 1, 2, 0, 3]

sum_all_numbers = sum_double_digits.reduce(0) {|sum, num| sum + num}  # => 80

check_card_number = if sum_all_numbers % 10 == 0  # => true
  "Card number is valid"                          # => "Card number is valid"
else
  "Invalid card number"
end                                               # => "Card number is valid"
