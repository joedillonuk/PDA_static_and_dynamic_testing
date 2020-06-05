### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

# class declaration commented out to prevent Superclass mismatch errors
# class CardGame
# end statement missing from class declaration


# snake_case should be used for naming methods
  def checkforAce(card)
    # card.value equality check should use == rather than single =.
    if card.value = 1
      return true
    else
      return false
    end
  end

# def spelled incorrectly as "dif"
# comma is missing from method arguments
# will always return card2 if both card of equal value (ignores card suit hierarchy)
  dif highest_card(card1 card2)
  if card1.value > card2.value
    # returned variable should be card1
    return card
  else
    return card2
  end
end
# one too many ends
end

# Class method not required. 
def self.cards_total(cards)
  # variable total given no value or class
  total
  for card in cards
    total += card.value
    # string should be returned after the loop; current implementation will only return the value of the first card in cards
    # total needs to be converted to string (and correctly spaced in output string)
    return "You have a total of" + total
  end
end

# No end given for Class declaration

```
