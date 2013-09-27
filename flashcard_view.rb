class FlashcardView

  ANSWER

  def initialize
  end

  def display_welcome
    puts "Welcome to Flashcards"
    puts "You'll get a definition: try and provide a matching term"
    puts "Type 'next' if you want to move on to the next card question"
    puts "Type 'quit' when you want to stop playing"
  end

  def display_card_definition
    puts "Here's the definition: "
    puts "(NEED DEFINITION HERE)"
  end

  def get_user_answer
    user_answer = gets.chomp
  end

  def display_answer_feedback
    if ANSWER = true
      puts "Correct! Answer is #{correct_answer}"
    else
      puts "Sorry, you provided an incorrect answer, #{incorrect answer}, please try again,"
      puts "Or, type 'Next' to go to the next card."
  end



end
