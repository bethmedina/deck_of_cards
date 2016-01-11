class Deck
  attr_accessor :cards
  def initialize
    suits = %w{Hearts Diamonds Spades Clubs}
    values = %w{A 2 3 4 5 6 7 8 9 10 J Q K}
    jokers = %w{Joker Joker}
    deck = []

    suits.each do |s|
      values.each do |v|
        deck << "#{v} of #{s}"
      end
    end

    deck += jokers
    @cards = deck
    deck
  end

  def shuffle_deck
    puts "#{self.cards.shuffle!}"
  end
end
