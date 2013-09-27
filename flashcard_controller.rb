require_relative "flashcard_model.rb"
require_relative "flashcard_view.rb"


class FlashcardController
  attr_reader :current_card

  def initialize
    @play = Deck.new
    @view = FlashcardView.new
  end

  def play_cards
    @view.display_welcome
    until @play.game_over?
      current_card = @play.get_next_card
      @view.display_card_definition(current_card)
      answer = @view.get_user_answer
      if current_card.correct?(answer)
        @view.display_correct_answer
      else
        @view.display_incorrect_answer
        @play.repeat_card(current_card)
      end
    end
    @view.display_game_over
  end
end
  

FlashcardController.new.play_cards
