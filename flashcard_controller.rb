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

  def get_card_from_deck
    @play.get_next_card
  end


  def show_definition_to_user
  end

  def get_user_answer
  end


  def ask_deck_if_user_answer_is_correct
  end

  def handle_deck_response_to_user_input
  end

  def show_deck_response_to_user
  end

  def show_deck_response_to_user
  end





end 

FlashcardController.new.play_cards
