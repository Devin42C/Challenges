class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end
end

class Deck
  def initialize

    @card_rank = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
    @card_suit = ["S", "H", "C", "D"]
    @cards = []
    
    @card_suit.each do |suit|
        @card_rank.each do |rank|
             @cards << Card.new(rank, suit)
        end    
    end

  def deal
    cards.shuffle!
    @cards.shift
    p @cards.shift
  end

  end
end
  

deck=Deck.new
deck.deal
