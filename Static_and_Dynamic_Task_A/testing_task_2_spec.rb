require('minitest/autorun')
require('minitest/rg')
require_relative('./testing_task_2.rb')

class TestCustomer < MiniTest::Test

  def setup
    @game = CardGame.new()
    @aceOfDiamonds = Card.new("Diamonds", 1)
    @twoOfClubs = Card.new("Clubs", 2)
    @threeOfSpades = Card.new("Spades", 3)
    @tenOfHearts = Card.new("Hearts", 10)
  end

  def test_check_for_ace_true
    expected = true
    actual = @game.check_for_ace(@aceOfDiamonds)
    assert_equal(expected, actual)
  end

  def test_check_for_ace_false
    expected = false
    actual = @game.check_for_ace(@twoOfClubs)
    assert_equal(expected, actual)
  end

  def test_highest_card_first_card_is_higher
    expected = @tenOfHearts
    actual = @game.highest_card(@tenOfHearts, @twoOfClubs)
    assert_equal(expected, actual)
  end

  def test_highest_card_second_card_is_higher
    expected = @tenOfHearts
    actual = @game.highest_card(@twoOfClubs, @tenOfHearts)
    assert_equal(expected, actual)
  end

  def test_highest_card_its_a_tie
    expected = "It's a tie!"
    actual = @game.highest_card(@twoOfClubs, @twoOfClubs)
    assert_equal(expected, actual)
  end

  def test_calculate_total
    cards = [@twoOfClubs, @tenOfHearts]
    expected = "You have a total of 12"
    actual = CardGame.cards_total(cards)
    assert_equal(expected, actual)
  end
end
