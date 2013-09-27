class FlashcardController

  def initialize
    @play = Deck.new
  end

  def play_cards
    get_card_from_deck
    show_definition_to_user
    get_user_answer
    ask_deck_if_user_answer_is_correct
    handle_deck_response_to_user_input
    show_deck_response_to_user
  end

  def get_card_from_deck
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
