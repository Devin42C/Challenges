class Card
  #exposes outside class to r/w the rank, suit
  attr_accessor :rank, :suit

  #when i build a card, i will need a rank and suit
  #the constructor of the card
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end 


end

#creating a variable to make a new card
card = Card.new(10, :spades)
card.rank = 9
#outputs card to console
puts card
puts card.rank
puts card.suit