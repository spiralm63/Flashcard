require_relative 'flashcard_model'

class FlashCardParser

  def self.load(file)
    all_cards = []
    File.open(file,'r').each_slice(3) do |flashcard|
      all_cards << Flashcard.new(flashcard[0].chomp, flashcard[1].chomp)
    end
    all_cards
  end
end

