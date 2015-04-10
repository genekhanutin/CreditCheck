require 'minitest/autorun'
require './lib/credit_check_oop'

class CreditCheckTest < Minitest::Test

  def test_credit_check_oop_exists
    assert CreditCheck.new
  end

  def test_it_returns_reversed_integers_in_array_from_number_string
    assert_equal [8, 2, 8, 7, 6, 8, 8, 6, 6, 7, 9, 7, 1, 1, 0, 6], CreditCheck.number_to_integer("6011797668867828")
  end

  def test_it_doubles_every_other_number
    assert_equal [8, 4, 8, 14, 6, 16, 8, 12, 6, 14, 9, 14, 1, 2, 0, 12], CreditCheck.double_every_other_number("6011797668867828")
  end

  def test_it_sums_digits_of_numbers_greater_than_nine
    assert_equal [8, 4, 8, 5, 6, 7, 8, 3, 6, 5, 9, 5, 1, 2, 0, 3], CreditCheck.sum_double_digits("6011797668867828")
  end

  def test_it_adds_all_numbers_together
    assert_equal 80, CreditCheck.add_all_numbers("6011797668867828")
  end

  def test_it_validates_card_number
    assert_equal "Card number valid", CreditCheck.validate_card_number("6011797668867828")
    assert_equal "Card number valid", CreditCheck.validate_card_number("4024007136512380")
    assert_equal "Card number invalid", CreditCheck.validate_card_number("5541801923795240")
    assert_equal "Card number invalid", CreditCheck.validate_card_number("4024007106512380")
  end

  def test_it_can_validate_amex_card_numbers
    assert_equal "Card number valid", CreditCheck.validate_card_number("342804633855673")
    assert_equal "Card number invalid", CreditCheck.validate_card_number("342801633855673")
  end
  
end