### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby
### Testing task 2 code:

# Carry out dynamic testing on the code below.
# Correct the errors below that you spotted in task 1.

require_relative('card.rb')
class CardGame

  # naming inconsistent; should be check_for_ace
  # camelCase wrong, nonetheless. Should be checkForAce
  def checkforAce(card)
    # this should be card.value == 1
    if card.value = 1
      return true
    else
      return false
    end
  end

  # this should be def, not dif
  # missing comma, should be highest_card(card1, card2)
  dif highest_card(card1 card2)
  # indentation incorrect
  if card1.value > card2.value
  # card class does not have a name property
  # no card variable initiated. should be card1
    return card.name
  else
  # syntax is inconsistent. should be return card2, but not necessary
    card2
  end
end
# this is an extra end, and should be removed
end

# this is an extra end, and should be removed
def self.cards_total(cards)
# variable total is not initiated, should be = 0
  total
  for card in cards
    total += card.value
    #this form of concatenation does not work. String interpolation does, however
    return "You have a total of" + total
  end
  # the return total is inside the iteration, therefore will be returned once
  # return total should be here
end

# class is not ended. missing end here
```
