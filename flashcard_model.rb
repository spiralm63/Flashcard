require_relative "flashcard_parser"

class Flashcard
  attr_reader :definition, :answer

  def initialize(definition, answer)
    @definition = definition
    @answer = answer
  end

  def correct?(input)
    input == @answer
  end

end


class Deck
  attr_reader :cards
  def initialize
    @cards = FlashCardParser.load("flashcard_data.txt") # array
    @cards.shuffle!
  end

  def get_next_card
    @cards.pop
  end

end

deck = Deck.new
card = deck.get_next_card
puts card.definition
answer = gets.chomp
puts card.correct?(answer)
