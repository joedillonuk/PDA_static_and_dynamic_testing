require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../card_game.rb')
require_relative('../card.rb')

class TestCardGame < MiniTest::Test

  def setup

    @card1 = Card.new("club", 1)
    @card2 = Card.new("heart", 2)
    @card3 = Card.new("spade", 3)
    @card4 = Card.new("diamond", 4)
    @card5 = Card.new("heart", 1)

    @all_cards = [@card1, @card2, @card3, @card4, @card5]

  end

  def test_check_for_ace__true()
    expected_value = true
    actual_value = check_for_ace(@card1)
    assert_equal(expected_value, actual_value)
  end

  def test_check_for_ace__false()
    expected_value = false
    actual_value = check_for_ace(@card2)
    assert_equal(expected_value, actual_value)
  end

  def test_highest_card__card2()
    expected_value = @card2
    actual_value = highest_card(@card1, @card2)
    assert_equal(expected_value, actual_value)
  end

  def test_highest_card__values_equal()
    expected_value = @card5 #returns second card if both equal
    actual_value = highest_card(@card1, @card5)
    assert_equal(expected_value, actual_value)
  end


  def test_cards_total
    expected_value = "You have a total of 11"
    actual_value = cards_total(@all_cards)
    assert_equal(expected_value, actual_value)
  end


end
