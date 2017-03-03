require "pry"

class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

  # def self.random_card
  #   Card.new(rand(10), :spades)
  # end
end

class Deck

  RANKS = [:ace, 2,3,4,5,6,7,8,9,10,:jack, :queen, :king]
  SUITS = %i[hearts diamonds spades clubs] 

  def initialize
    @cards = []
    create_cards  
  end

  def create_cards
    SUITS.each do |suit|
      create_cards_for_suit(suit)
    end
  end

  def create_cards_for_suit(suit)
    RANKS.each { |rank| @cards << Card.new(rank, suit) }
  end

  def shuffle
    @cards.shuffle!
  end

  def deal
    @cards.shift
  end

  def output 
   # @cards.each { |card| card.output_card }
    @cards.each(&:output_card)

  end
end

deck = Deck.new
deck.deal
deck.shuffle
deck.output
