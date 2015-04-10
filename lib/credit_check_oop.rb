class CreditCheck
  def self.number_to_integer(card_number)
    card_number.reverse.chars.map {|num| num.to_i}
  end

  def self.double_every_other_number(card_number)
    CreditCheck.number_to_integer(card_number).map.with_index do |num, index|
      if index.odd?
        num * 2
      else
        num
      end
    end
  end

  def self.sum_double_digits(card_number)
    CreditCheck.double_every_other_number(card_number).map do |num|
      if num > 9
        num -= 9
      else
        num
      end
    end
  end

  def self.add_all_numbers(card_number)
    CreditCheck.sum_double_digits(card_number).reduce(0) {|sum, num| sum + num}
  end

  def self.validate_card_number(card_number)
    if CreditCheck.add_all_numbers(card_number) % 10 == 0
      "Card number valid"
    else
      "Card number invalid" 
    end
  end
end